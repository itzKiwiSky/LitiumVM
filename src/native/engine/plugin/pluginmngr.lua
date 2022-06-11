pluginmnger = {}

settings = require 'src/native/engine/core/settingsreader'

function pluginmnger.loadPlugins()
    plugins = settings.getvalue("bios_pluginsActive")
    if plugins ~= nil then
        for i = 1, #plugins do
            plugincode, err = love.filesystem.load("plugins/" .. plugins[i] .. "/plugin.lua")
            pcall(plugincode(), plugin())
        end
    end
end

return pluginmnger