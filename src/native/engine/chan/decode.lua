chan_decode = {}

stringx = require 'pl.stringx'

function chan_decode.decode(filepath, chunk)
    file = io.open(filepath .. ".chan", "r")
    lines = file:lines()
	for line in lines do
		if string.find(line, chunk) then
			chunkResult = stringx.split(line)
			return chunkResult[2]
		end
	end

end


return chan_decode