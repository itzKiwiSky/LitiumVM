settingsreader = {}

function settingsreader.getvalue(valuename)
	engineConfigFile = load("engine.lua")
    data = engineConfigFile()
	return data[valuename]
end

return settingsreader