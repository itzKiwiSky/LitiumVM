litwindow = {}
--- Return screen width and height
function litwindow.screenMode()
    return love.window.getMode()
end


--- Display message box
--- @param title string
--- @param message string
--- @param type string
--- @param attach boolean
function litwindow.popup(title, message, type, attach)
    return love.window.showMessageBox(title, message, type, attach)
end


return litwindow