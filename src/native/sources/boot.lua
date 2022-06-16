function start()

    state = 1

scriptContent = [[
function start()
    
end

function render()
    
end

function update(dt)
    
end

function keydown(k)
    
end

function keyup(k)
    
end
]]

    settings = require 'src/native/engine/core/file_reader'
    lang = settings.getvalue("engine.lua", "bios_language")

    litsystem.setName("Litium Engine v0.1 - Titanium [NO GAME LOADED]")

    sprPallete = {
        {0,0,0,0},      -- transparent color
        {0,0,0},
        {10,10,10},
        {20,20,20},
        {30,30,30},
        {40,40,40},
        {50,50,50},
        {60,60,60},
        {70,70,70},
        {80,80,80},
        {90,90,90},
        {255,255,255}
    }

    heartPallete = {
        {0,0,0,0},
        {255,0,0},
        {255,255,255}
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
            {1,3,1},
            {1,1,1}
        },
        {
            {1,3,1},
            {3,3,3},
            {1,3,1}
        },
        {
            {3,1,3},
            {1,3,1},
            {3,1,3}
        },
    }

    frame = 1
    Timer = 0
    
    litgraphics.loadPallete(sprPallete)
    heart = settings.getvalue("engine.lua", "bios_heart")
end

function render()
    if state == 1 then
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
        litgraphics.newSprite(shine[frame], 8, 290, 190, heartPallete)
        litgraphics.newSprite(shine[frame], 8, 340, 70, heartPallete)
        litgraphics.newSprite(shine[frame], 8, 20, 50, heartPallete)
        litgraphics.newSprite(shine[frame], 8, 190, 40, heartPallete)
        litgraphics.newSprite(shine[frame], 8, 180, 290, heartPallete)
    end

    if state == 2 then
        litgraphics.newText(language[lang].bootSelection.title, 30, 30, 8, 3, 1)
    end
end

function update(dt)
    if state == 1 then
        Timer = Timer + 1
        if Timer > 10 then
            Timer = 0
            frame = frame + 1
            if frame > #shine then
                frame = 1
            end
        end
    end
    if state == 2 then
        
    end
end

function keydown(k)
    if state == 1 then
        if k == "1" then
            litfilesystem.newDir("projects/newGame")
            file = litfilesystem.createFile("projects/newGame/main.lua")
            file:open("w")
            file:write(scriptContent)
            file:close()
        end
        if k == "delete" then
            state = 2
        end
    end
end

function keyup(k)end