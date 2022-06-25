litfilesystem = {}

--- Create a new file based with a name and extension
---@param filename string
function litfilesystem.createFile(filename)
    return love.filesystem.newFile(filename)
end

--- Create a new directory
---@param dirname string
function litfilesystem.newDir(dirname)
    return love.filesystem.createDirectory(dirname)
end

--- read a content from a file
---@param file string
function litfilesystem.readFile(file)
    return love.filesystem.read(file)
end

return litfilesystem