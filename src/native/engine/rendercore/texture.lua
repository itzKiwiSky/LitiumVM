texture = {}

json = require 'src/thirdparty/json'

function texture.loadfile(path)
    file = io.open(path, "r")
    return json.decode(file:read())
end

--[[
    function texture.newSpriteFile(spritename, spriteTable)
        jsonOutput = json.encode(spriteTable)
        io.write(jsonOutput)
        io.output("export/" .. spritename .. ".json")
    end
]]--



return texture