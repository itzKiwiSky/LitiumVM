bootloader = {}

-- render core --
litgraphics = require 'src/api/sprite/litgraphics'

progress = 0

function bootloader.draw()
    --[[ initialize all objects to screen ]]--

    -- logo
    logo = {
        {1,1,3,3,3,3,1,1},
        {1,3,3,3,3,2,3,1},
        {3,3,2,3,3,3,3,3},
        {3,2,2,2,3,3,3,3},
        {3,3,2,3,3,3,3,3},
        {3,3,3,3,3,2,3,3},
        {1,3,3,3,2,2,3,1},
        {1,1,3,3,3,3,1,1}
    }

    litgraphics.clearScreen()
    litgraphics.newSprite(logo, 16, 580, 170, 2)
    litgraphics.newSprite(loadingIcon[frame])
    litgraphics.newText("Loading components", 320, 490, 6, 1)
    litgraphics.rect(0, 708, progress, 8, 3, "fill")
end

function bootloader.update()

    -- progress loading stuff
    
    math.randomseed(os.clock())
    progress = progress + math.random(1, 15)
end

return bootloader