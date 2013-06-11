s = "IOS 400"
print(string.sub(s, 5))

function log2(number)
    return math.log(number/100) / math.log(2)
end

arr = {100, 125, 200, 250, 400, 500, 640, 800, 1600, 3200, 6400, 12800, 25600}

for i, v in ipairs(arr) do
	-- print(log2(v))
end


local min_ls = 0
local max_ls = 100
local ev_gain = 2.5
ev = 0.11

for i, v in ipairs(arr) do
	ls = math.floor((max_ls - min_ls) / 8 * log2(v) + ev_gain * ev + 0.5)
	print(v, ls)
end


