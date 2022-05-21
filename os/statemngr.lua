state = {}

bootloader = require 'os/bootloader'
warning = require 'os/warning'
lunamenu = require 'os/lunamenu'

statename = nil



function state.changeState(string)
    statename = string
end

function state.stateDraw()
    if statename == "bootloader" then
        bootloader.draw()
    end
    if statename == "warning" then
        warning.draw()
    end
    if statename == "lunamenu" then
        lunamenu.draw()
    end
end

function state.stateUpdate()
    if statename == "bootloader" then
        bootloader.update()
    end
    if statename == "warning" then
        warning.update()
    end
    if statename == "lunamenu" then
        lunamenu.update()
    end
end

return state