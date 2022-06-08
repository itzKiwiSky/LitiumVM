imageloader = {}

load = love.filesystem.load

defaultSettings = [[
function settings()

end
]]

function createSettingsFile()
    file = love.filesystem.newFile("engine.lua")
    file:open("w")
    file:write(defaultSettings)
    file:close()
end

function fileExist(filename)
    if love.filesystem.getInfo(filename) ~= nil then
        return true
    else
        return false
    end
end

function imageloader.getImage()     --get operating system name image (folder)
    exist = fileExist("engine.lua")
    if not exist then
        print(exist)
        createSettingsFile()
    end
end
 
return imageloader