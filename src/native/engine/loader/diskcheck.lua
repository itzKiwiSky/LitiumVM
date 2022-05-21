diskcheck = {}

function diskcheck.init()
    diskspath = "disk"

    disks = love.filesystem.getDirectoryItems(diskspath)
    return disks
end

return diskcheck