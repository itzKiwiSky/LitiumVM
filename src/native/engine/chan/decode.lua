chan_decode = {VERSION = "1.0.0"}

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
	

return chan_decode