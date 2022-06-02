json_file = {}

json = require 'src/thirdparty/json'

function json_file.loadfile(path)
    file = io.open(path, "r")
    return json.decode(file:read())
end

function json_file.create(filename, contentEncode)
	jsonOutput = json.encode(contentEncode)
	io.write(jsonOutput)
	io.output("export/" .. filename .. ".json")
end

return json_file