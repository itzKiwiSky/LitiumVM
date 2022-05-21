imageloader = {}

load = love.filesystem.load

chan = require 'src/native/engine/chan/decode'

function imageloader.getImage()     --get operating system name image (folder)
    defaultimage = chan.decode("bios", "BIOS_DEFAULTIMAGE")
    --love.filesystem.createDirectory("disk")

    if defaultimage == "nil" or defaultimage == nil or defaultimage == "native" then
        imagedata, err = load("os/lunaos.lua")

        if imagedata == nil then
            
            error(err, 2)
        end
    else
        imagedata, err = load("disk/" .. defaultimage .. "/main.lua")

        if imagedata == nil then
            
            error(err, 2)
        end
    end
    return imagedata
end
 
return imageloader