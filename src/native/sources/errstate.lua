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
end

function render()
    litgraphics.rect(0, 0, 1280, 768, 5, "fill")
    litgraphics.rect(0, 0, 1280, 32, 4, "fill")
    litgraphics.newText("Invalid boot image", 0, 0, 4, 4, 1)
    litgraphics.newText("please insert a valid bootable game", 50, 90, 4, 3, 1)
    litgraphics.newText("error code 0x000001", 50, 290, 4, 3, 1)
    litgraphics.newText("press enter to shutdown", 50, 350, 4, 3, 1)
    litgraphics.newSprite(icon, 4, 10, 40)
end

function update(dt)
    
end

function keydown(k)
    if k == "return" then
        imageloader.changeImageName("native")
        love.event.quit()
    end
end

function keyup(k)
    
end
