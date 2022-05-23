shutdown = {}

function shutdown.load()

end

function shutdown.draw()
    litgraphics.newText("Shutting down", 0, 0, 4, 3, 1)
end

function shutdown.update(dt)
    timer = timer + 1
    if timer > 100 then
        love.event.quit()
    end
end

return shutdown