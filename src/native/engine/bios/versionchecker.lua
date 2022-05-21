versionchecker = {}

chan = require 'src/native/engine/chan/decode'
stringx = require 'pl/stringx'

function versionchecker.checkFileVersion()
    bool = checkVersionData()

    if bool then
        error("This image require a version")
    end
end



function checkVersionData()
    imageNameFile   =       chan.decode("bios", "BIOS_DEFAULTIMAGE") 
    fileString      =       stringx.split(chan.decode("disk/" .. imageNameFile .. "/image", "IMAGE_COMPATIBILITY_VERSION"), ".")
    chanVersion     =       stringx.split(chan.decode("bios", "BIOS_VERSION"), ".")

    FSminor         =       tonumber(fileString[1])
    FSmajor         =       tonumber(fileString[2])
    FSpatch         =       tonumber(fileString[3])

    CHminor         =       tonumber(chanVersion[1])
    CHmajor         =       tonumber(chanVersion[2])
    CHpatch         =       tonumber(chanVersion[3])


    if CHminor < FSmajor then
        if CHmajor < FSmajor then
            if CHpatch < FSpatch then
                return true
            end
        else
            return false
        end
    else
        return false
    end


end

return versionchecker