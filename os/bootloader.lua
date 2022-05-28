bootloader = {}

progress = 0

function bootloader.load()
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

    watermark = chan.decode("bios", "BIOS_BOOTLOGO")
    --chan.edit("test", "BIOS_WATERMARK", "true")
    print(watermark)
end

function bootloader.draw()
    --[[ initialize all objects to screen ]]--
    if watermark == "true" then
        litgraphics.clearScreen()
        litgraphics.newSprite(logo, 16, 580, 170, 2)
        litgraphics.newText("Loading components", 320, 490, 6, 3, 1)
        litgraphics.rect(0, 708, progress, 12, 4, "fill")
    end
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

function bootloader.keydown(k)
    if k == "delete" then
        statemngr.changeState("settings")
    end
end

return bootloader