chan_decode = {VERSION = "0.0.1"}

stringx = require 'pl/stringx'

function chan_decode.decode(filepath, chunkName)
	return read(filepath, chunkName)
end

function read(filepath, chunkName, returnID)
	i = 0
	file = io.open(filepath .. ".chan", "r")
	assert(file ~= nil, "[:ERROR:] | File not found, may is corrupted, moved or deleted.")
	lines = file:lines()
	for line in lines do
		i = i + 1                --debug stuff
		if string.find(line, chunkName) then
			outStr = stringx.split(line, "::")
			return outStr[returnID]
		end
	end
end

function checkValueExist(filepath, chunkName)
	content = read(filepath, chunkName, 1)
	if content == chunkName then
		return true
	else
		return false
	end
end

function chan_decode.append(filepath, chunkName, value)
	boolValueExist = checkValueExist(filepath, chunkName)
	file = io.open(filepath .. ".chan", "a")
	print(boolValueExist)
	if not boolValueExist or boolValueExist == nil then
		file:write(chunkName .. "::" .. value .. "\n")
		file:close()
	end
end
	

return chan_decode