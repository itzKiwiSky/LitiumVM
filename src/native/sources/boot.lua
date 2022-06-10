function start()

    settings = require 'src/native/engine/core/settingsreader'
    lang = settings.getvalue("bios_language")

    litsystem.setName("Litium Engine v0.1 - Titanium [NO GAME LOADED]")

    sprPallete = {
        {0,0,0,0},      -- transparent color
        {0,0,0},
        {0.1,0.1,0.1},
        {0.2,0.2,0.2},
        {0.3,0.3,0.3},
        {0.4,0.4,0.4},
        {0.5,0.5,0.5},
        {0.6,0.6,0.6},
        {0.7,0.7,0.7},
        {0.8,0.8,0.8},
        {0.9,0.9,0.9},
        {1,1,1}
    }

    heartPallete = {
        {0,0,0,0},
        {1,0,0},
        {1,1,1}
    }

    logo = {
        {2,2,2,2,2,2,2,2},
        {2,7,7,7,7,7,7,2},
        {2,6,6,12,6,6,6,2},
        {2,6,6,12,6,6,6,2},
        {2,6,6,12,6,6,6,2},
        {2,6,6,12,12,12,6,2},
        {2,5,5,5,5,5,5,2},
        {2,2,2,2,2,2,2,2},
    }

    Heart = {
        {1,1,1,1,1,1,1,1,1},
        {1,2,2,1,1,1,2,2,1},
        {2,2,2,2,1,2,3,2,2},
        {2,2,2,2,2,3,2,2,2},
        {2,2,2,2,2,2,2,2,2},
        {1,2,2,2,2,2,2,2,1},
        {1,1,2,2,2,2,2,1,1},
        {1,1,1,2,2,2,1,1,1},
        {1,1,1,1,2,1,1,1,1},
    }

    shine = {
        {
            {1,1,1},
            {1,12,1},
            {1,1,1}
        },
        {
            {1,12,1},
            {12,12,12},
            {1,12,1}
        },
        {
            {12,1,12},
            {1,12,1},
            {12,1,12}
        },
    }

    frame = 1
    Timer = 0
    
    litgraphics.loadPallete(sprPallete)
    heart = settingsreader.getvalue("bios_heart")
end

function render()

    litgraphics.rect(0, 0, 1280, 768, 3, "fill")
    litgraphics.rect(0, 0, 1280, 18, 23, "fill")
        
    if not heart or heart == nil then
        litgraphics.newSprite(logo, 16, 60, 60)
    else
        litgraphics.newSprite(Heart, 16, 60, 60, heartPallete)
    end

    litgraphics.newText(language[lang].noDisk.line1, 230, 306, 6, 1, 1)
    litgraphics.newText(language[lang].noDisk.line1, 230, 300, 6, 3, 1)
    litgraphics.newText(language[lang].noDisk.line2, 230, 394, 4, 1, 1)
    litgraphics.newText(language[lang].noDisk.line2, 230, 390, 4, 3, 1)
    litgraphics.newSprite(shine[frame], 8, 290, 190)
    litgraphics.newSprite(shine[frame], 8, 340, 70)
    litgraphics.newSprite(shine[frame], 8, 20, 50)
    litgraphics.newSprite(shine[frame], 8, 190, 40)
    litgraphics.newSprite(shine[frame], 8, 180, 290)
end

function update(dt)
    Timer = Timer + 1
    if Timer > 10 then
        Timer = 0
        frame = frame + 1
        if frame > #shine then
            frame = 1
        end
    end
end

function keydown(k)end

function keyup(k)end