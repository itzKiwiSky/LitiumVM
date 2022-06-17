function start()

    ettings = require 'src/native/engine/core/file_reader'
    lang = settings.getvalue("engine.lua", "bios_language")

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
    litgraphics.newText(language[lang].bootError.title, 400, 0, 4, 4, 1)
    litgraphics.newText(language[lang].bootError.description, 50, 90, 3, 3, 1)
    litgraphics.newText(language[lang].bootError.info, 50, 190, 3, 3, 1)
    litgraphics.newText("error code 0x000001", 50, 290, 4, 3, 1)
    litgraphics.newText(language[lang].bootError.backStr, 0, 738, 4, 4, 1)
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
