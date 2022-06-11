nativelocks = {}

function nativelocks.lock()

    --[[: OS Lib :]]--
    os.execute = nil
    os.difftime = nil
    os.getenv = nil
    os.remove = nil
    os.rename = nil
    os.setlocale = nil
    os.time = nil

    --[[: IO Lib :]]--
    io.flush = nil
    io.popen = nil
end



return nativelocks