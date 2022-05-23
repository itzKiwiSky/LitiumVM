state = {}

bootloader = require 'os.bootloader'
warning = require 'os.warning'
lunamenu = require 'os.lunamenu'

statename = "bootloader"



function state.changeState(string)
    statename = string
end

function state.load()
    if statename == "shutdown" then
        shutdownstate.load()
    end
    if statename == "settings" then
        settings.load()
    end
    if statename == "bootloader" then
        bootloader.load()
    end
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
    if statename == "shutdown" then
        shutdownstate.draw()
    end
    if statename == "settings" then
        settings.draw()
    end
end

function state.stateUpdate(dt)
    if statename == "bootloader" then
        bootloader.update(dt)
    end
    if statename == "warning" then
        warning.update(dt)
    end
    if statename == "lunamenu" then
        lunamenu.update(dt)
    end
    if statename == "shutdown" then
        shutdownstate.update(dt)
    end
    if statename == "settings" then
        settings.draw()
    end
end

function state.keydown(k)
    if statename == "lunamenu" then
        lunamenu.keydown(k)
    end
end

return state