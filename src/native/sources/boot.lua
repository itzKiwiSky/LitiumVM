function start()

    settings = require 'src.native.engine.core.settingsreader'

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

    Heart = {
        {1,1,1,1,1,1,1,1,1},
        {1,5,5,1,1,1,5,5,1},
        {5,5,5,5,1,5,4,5,5},
        {5,5,5,5,5,4,5,5,5},
        {5,5,5,5,5,5,5,5,5},
        {1,5,5,5,5,5,5,5,1},
        {1,1,5,5,5,5,5,1,1},
        {1,1,1,5,5,5,1,1,1},
        {1,1,1,1,5,1,1,1,1},
    }
    
    heart = settingsreader.getvalue("bios_heart")
end

function render()
    if not heart or heart == nil then
        litgraphics.rect(0, 0, 1280, 768, 3, "fill")
        litgraphics.rect(0, 0, 1280, 18, 23, "fill")
        litgraphics.newSprite(logo, 16, 60, 60)
        litgraphics.newText("no game has been loaded", 300, 300, 6, 3, 1)
    else
        litgraphics.rect(0, 0, 1280, 768, 3, "fill")
        litgraphics.rect(0, 0, 1280, 18, 23, "fill")
        litgraphics.newSprite(Heart, 16, 60, 60)
        litgraphics.newText("no game has been loaded", 300, 300, 6, 3, 1)
        litgraphics.newText("i love you", 0, 0, 2, 2, 1)
    end
end

function update(dt)

end

function keydown(k)end

function keyup(k)end