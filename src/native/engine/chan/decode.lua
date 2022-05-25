chan_decode = {VERSION = "0.0.1"}

stringx = require 'pl/stringx'

function chan_decode.decode(filepath, chunkName)
	i = 0
	file = io.open(filepath .. ".chan", "r")
	assert(file ~= nil, "[:ERROR:] | File not found, may is corrupted, moved or deleted.")
	lines = file:lines()
	for line in lines do
		i = i + 1                --debug stuff
		if string.find(line, chunkName) then
			outStr = stringx.split(line, "::")
			return outStr[2]
		end
	end
end

function valueExist(filepath, chunkName)
	j = 0
	file = io.open(filepath .. ".chan", "r")
	lines = file:lines()
	for line in lines do
		j = j + 1
		stringContent = string.find(line, chunkName)
		if stringContent  then	--chekc if not null <3
			return true
		else
			return false
		end
	end
end

function chan_decode.append(filepath, chunkName, value)
	file = io.open(filepath .. ".chan", "a")
	boolValueExist = valueExist(filepath, chunkName)
	print(boolValueExist)
	if not boolValueExist or boolValueExist == nil then
		file:write(chunkName .. "::" .. value .. "\n")
		file:close()
	end
end
	

return chan_decode