diskcheck = {}

utils = require 'src/native/engine/resources/utils'

function diskcheck.init()
    --diskspath = "disk"
    
    if utils.exist("directory", "disk") then
        disks = love.filesystem.getDirectoryItems("disk")

        if disks == 0 then
            return false
        else  
            return disks
        end
    end
end

return diskcheck