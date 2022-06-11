litwindow = {}
--- Return screen width and height
function litwindow.screenMode()
    return love.window.getMode()
end

--- func desc
--- @param title | Popup title
--- @param message | Popup message content
--- @param type | Popup type String
--- @param attach | lock popup pos to window positions
function litwindow.popup(title, message, type, attach)
    return love.window.showMessageBox(title, message, type, attach)
end


return litwindow