pluginmnger = {}

settings = require 'src/native/engine/core/settingsreader'

function pluginmnger.loadPlugins()
    plugins = settings.getvalue("bios_pluginsActive")
    if plugins ~= nil then
        for i = 1, #plugins do
            print(plugins[i])
        end
    end
end

function pluginmnger.setActive()
    
end

return pluginmnger