litsystem = {}

function litsystem.setName(string)
    love.window.setTitle(string)
end

function litsystem.getFPS()
    return love.timer.getFPS()
end

return litsystem