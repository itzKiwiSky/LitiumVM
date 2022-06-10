litfilesystem = {}

function litfilesystem.createFile(filename)
    return love.filesystem.newFile(filename)
end

function litfilesystem.newDir(dirname)
    return love.filesystem.createDirectory(dirname)
end

function litfilesystem.readFile(file)
    return love.filesystem.read(file)
end

return litfilesystem