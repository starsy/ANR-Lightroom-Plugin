--[[-------------------------------------------------------------------------
ANR.lua

Copyright Yang Song. All rights reserved.
------------------------------------------------------------------------------]]

-- Create the logger and enable the print function.
local LrLogger = import 'LrLogger'
local myLogger = LrLogger( 'ANRLogger' )
myLogger:enable( "logfile" ) -- Pass either a string or a table of actions.

local function log( message )
	myLogger:error( message )
end

local LrTasks = import 'LrTasks'
local app = import "LrApplication"
local catalog = app.activeCatalog()

local function ptable(t, s)
    if s == nil then
        s = ""
    end

    for k, v in pairs(t) do
        if type(v) == "table" then
            log(s .. k .. " :" )
            ptable(v, s .. "\t")
        else
            log(s .. k .. " -> " .. tostring(v))
        end
    end
end

local function log2(number)
    return math.log(number) / math.log(2)
end

local min_ls = 0
local max_ls = 100
local ev_gain_ls = 2.5

function preparePresets(iso, ev)
	niso = tonumber(string.sub(iso, 5))
	ls = math.floor((max_ls - min_ls) / 8 * log2(niso / 100) + ev_gain_ls * ev + 0.5)
	preset = app.addDevelopPresetForPlugin(_PLUGIN, iso, {LuminanceSmoothing = ls})
	return preset
end

function updateLuminanceSmoothingValues()
	LrTasks.startAsyncTask(function()
		catalog:withWriteAccessDo( "Filename to title", function()
			local cat_photos = catalog.targetPhotos
			-- loop through each of the photos
			for i, photo in ipairs(cat_photos) do
                -- ptable(photo:getDevelopSettings())
				iso = photo:getFormattedMetadata('isoSpeedRating')
				ev = photo:getDevelopSettings()["Exposure"]
				preset = preparePresets(iso, ev)
				photo:applyDevelopPreset(preset, _PLUGIN)

			end
		end)
	end)
end

updateLuminanceSmoothingValues()

