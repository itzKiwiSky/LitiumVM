litsystem = {}

--- set window title
---@param title string
function litsystem.setName(name)
    love.window.setTitle(name)
end

--- returns current getFPS
---@return number
function litsystem.getFPS()
    return love.timer.getFPS()
end

return litsystem