--[[----------------------------------------------------------------------------
Info.lua

Licensed under MIT license. Copyright by Yang Song.  Al

Summary information for AutoNoiseReduction plug-in.

Adds menu items to Lightroom.
------------------------------------------------------------------------------]]

return {

	LrSdkVersion = 3.0,
	LrSdkMinimumVersion = 1.3, -- minimum SDK version required by this plug-in

	LrToolkitIdentifier = 'info.starsy.and',

	LrPluginName = LOC "$$$/AutoNoiseReduction/PluginName=Auto Noise Reduction",

	-- Add the menu item to the File menu.

	LrExportMenuItems = {
		title = "Auto Noise Reduction",
		file = "ANR.lua",
	},

	-- Add the menu item to the Library menu.

	LrLibraryMenuItems = {
	    {
		    title = LOC "$$$/AutoNoiseReduction/PluginName=Auto Noise Reduction",
		    file = "ANR.lua",
		},
	},
	VERSION = { major=1, minor=1, revision=0, build=20130611, },
}



