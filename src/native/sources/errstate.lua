function start()
    sprPallete = {
        {0,0,0,0},
        {255,255,255}
    }

    litgraphics.loadPallete(sprPallete)

    icon = {
        {1,1,2,2,2,2,1,1},
        {1,2,1,1,1,1,2,1},
        {2,1,2,1,1,2,1,2},
        {2,1,1,2,2,1,1,2},
        {2,1,1,2,2,1,1,2},
        {2,1,2,1,1,2,1,2},
        {1,2,1,1,1,1,2,1},
        {1,1,2,2,2,2,1,1},
    }

    litsystem.setName("Litium Engine - [LITIUM BOOT SYSTEM ERROR] : 0x000001")
end

function render()
    litgraphics.rect(0, 0, 1280, 768, 5, "fill")
    litgraphics.rect(0, 0, 1280, 32, 4, "fill")
    litgraphics.rect(0, 740, 1280, 32, 4, "fill")
    litgraphics.newText("Litium Boot system", 400, 0, 4, 4, 1)
    litgraphics.newText("An error has found during initialization process", 50, 90, 3, 3, 1)
    litgraphics.newText("not found a valid bootable image", 50, 190, 3, 3, 1)
    litgraphics.newText("error code 0x000001", 50, 290, 4, 3, 1)
    litgraphics.newText("press enter to restart", 0, 738, 4, 4, 1)
    litgraphics.newSprite(icon, 4, 10, 40)
end

function update(dt)
    
end

function keydown(k)
    if k == "return" then
        imageloader.changeImageName("native")
        love.event.quit("restart")
    end
end

function keyup(k)
    
end
