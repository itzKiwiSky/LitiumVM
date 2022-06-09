litfilesystem = {}

function litfilesystem.createFile(filename)
    return love.filesystem.newFile(filename)
end

function litfilesystem.newDir(dirname)
    return love.filesystem.createDirectory(dirname)
end

return litfilesystem