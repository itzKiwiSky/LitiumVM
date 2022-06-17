imageloader = {}

load                = love.filesystem.load
getInfo             = love.filesystem.getInfo
newFile             = love.filesystem.newFile
createDirectory     = love.filesystem.createDirectory

saveDir             = love.filesystem.getSaveDirectory()

defaultSettings = [[
return {
    -- Litium Engine configuration script --
    -- Version 0.1 --
    bios_version = "0.0.1",
    bios_language = "en",
    bios_pluginsActive = {}
}
]]


function createSettingsFile()
    file = newFile("engine.lua")
    file:open("w")
    file:write(defaultSettings)
    file:close()
end

function createImageFile()
    file = newFile("image.txt")
    file:open("w")
    file:write("native")
    file:close()
end

function createEngineFolders()
    diskSucess = createDirectory("disk")
    pluginsSucess = createDirectory("plugins")
    projectSucess = createDirectory("projects")
end

function exist(type, filename)
    if type == "file" then
        if getInfo(filename) ~= nil then
            return true
        else
            return false
        end
    end

    if type == "directory" or type == "folder" or type == "dir" then
        if getInfo(filename) ~= nil then
            return true
        else
            return false
        end
    end
end

function imageloader.init()
    fileExist = exist("file", "engine.lua")
    imageExist = exist("file", "image.txt")
    dirExist = exist("folder", "disk")
    pluginExist = exist("folder", "plugins")
    projects = exist("folder", "projects")
    if not fileExist or not dirExist or not pluginExist or not projects or not imageExist then
        createSettingsFile()
        createImageFile()
        createEngineFolders()
    end
end


function imageloader.getImage()     --get operating system name image (folder)

    -- get file datas
    engineConfigFile = load("engine.lua")
    imageFileName = io.open(saveDir .. "/image.txt", "r")
    gameName = imageFileName:read()
    data = engineConfigFile()

    -- old
    if gameName == "nil" or gameName == nil or gameName == "" or gameName == "native" then
        if exist("file", "firstboot.txt") then
            imagedata, err = load("src/native/sources/boot.lua")

            if imagedata == nil then
                
                error(err, 2)
            end
        else
            imagedata, err = load("src/native/sources/firstboot.lua")

            if imagedata == nil then
                
                error(err, 2)
            end
        end
    else
        imagedata, err = load("disk/" .. gameName .. "/main.lua")

        if imagedata == nil then
            
            imagedata, err = load("src/native/sources/errstate.lua")
        end
    end
    return imagedata
end
 
function imageloader.changeImageName(image)
    gameTxTFile = io.open(saveDir .. "/image.txt", "w")
    gameTxTFile:write(image)
    gameTxTFile:close()
end

return imageloader