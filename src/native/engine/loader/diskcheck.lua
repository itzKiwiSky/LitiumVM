diskcheck = {}

function diskcheck.init()
    --diskspath = "disk"

    disks = love.filesystem.getDirectoryItems("disk")
    
    if disks == 0 then
        return false
    else  
        return disks
    end
end

return diskcheck