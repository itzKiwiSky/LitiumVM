fileReader = {}

function settingsreader.getvalue(filename, valuename)
	engineConfigFile = load(filename)
    data = engineConfigFile()
	return data[valuename]
end

return fileReader