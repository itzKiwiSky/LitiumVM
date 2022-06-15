pluginmnger = {}

settings = require 'src/native/engine/core/file_reader'

function pluginmnger.loadPlugins()
    plugins = settings.getvalue("engine.lua", "bios_pluginsActive")
    if plugins ~= nil or plugins ~= {} then
        for pluginName, value in pairs(plugins) do
            if value == true then
                plugincode, err = love.filesystem.load("plugins/" .. pluginName .. "/plugin.lua")
                pcall(plugincode(), plugin())
            else
                print("plugin disabled")
            end
        end
    else
        print("no plugins installed yet...")
    end
end

return pluginmnger