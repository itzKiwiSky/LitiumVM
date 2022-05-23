bootloader = {}

progress = 0

function bootloader.load()
    chan.append("test", "test", "3")
end

function bootloader.draw()
    --[[ initialize all objects to screen ]]--

    -- logo
    logo = {
        {1,1,4,4,4,4,1,1},
        {1,4,4,4,4,3,4,1},
        {4,4,3,4,4,4,4,4},
        {4,3,3,3,4,4,4,4},
        {4,4,3,3,4,4,4,4},
        {4,4,4,4,4,3,4,4},
        {1,4,4,4,3,3,4,1},
        {1,1,4,4,4,4,1,1}
    }

    litgraphics.clearScreen()
    litgraphics.newSprite(logo, 16, 580, 170, 2)
    --litgraphics.newSprite(loadingIcon[frame])
    litgraphics.newText("Loading components", 320, 490, 6, 3, 1)
    litgraphics.rect(0, 708, progress, 12, 4, "fill")
end

function bootloader.update()

    -- progress loading stuff
    
    math.randomseed(os.clock())
    progress = progress + math.random(1, 15)

    if progress > 1400 then
        litgraphics.clearScreen()
        statemngr.changeState("lunamenu")
    end
end

return bootloader