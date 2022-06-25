save = {}

utils = require 'src/native/engine/resources/utils'
base64 = require 'src/thirdparty/base64'
json = require 'src/thirdparty/json'

saveDir = love.filesystem.getSaveDirectory()

function save.loadSave(id)
    -- open file
    if utils.exist("file", "/save/slot-" .. id .. ".sav") then
        -- open file
        file = io.open(saveDir .. "/save/slot-" .. id .. ".sav", "r")
        -- read it
        gameData = file:read()
        -- run decode algorythm
        decodedJsonData = base64.decode(gameData)
        -- run json decoder
        saveData = json.decode(decodedJsonData)
        return saveData, true
    else
        return false
    end
end

function save.createSave(table, slot)
    if slot < 3 or slot > 1 then
        -- get table content and encode to json
        saveJsonContent = json.encode(table)
        -- encrypt 
        cryptedData = base64.encode(saveJsonContent)
        -- write to file
        file = love.filesystem.newFile("save/slot-" .. slot .. ".sav")
        file:open("w")
        file:write(cryptedData)
        file:close()
        return true
    else
        error("[:ERROR:] - Invalid save slot ID")
        return false
    end
end

--[[
    disabled for debugging

    function checkSaveFolder()
        if utils.exist("folder", "save") then
            folderContent = love.filesystem.getDirectoryItems("save")
        else
            return
        end
    end
]]--


return save