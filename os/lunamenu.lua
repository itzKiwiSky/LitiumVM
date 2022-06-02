lunamenu = {}

languages = require 'os/resources/languages'

lang = 1

-----------------------------------
lunalogo = {
    {1,1,4,4,4,4,1,1},
    {1,4,4,4,4,3,4,1},
    {4,4,3,4,4,4,4,4},
    {4,3,3,3,4,4,4,4},
    {4,4,3,4,4,4,4,4},
    {4,4,4,4,4,3,4,4},
    {1,4,4,4,3,3,4,1},
    {1,1,4,4,4,4,1,1}
}

-----------------------------------

selection = 1

function lunamenu.draw()
    litgraphics.rect(0, 0, 1280, 720, 15, "fill")
    litgraphics.rect(0, 0, 1280, 64, 21, "fill")
    litgraphics.rect(0, 0, 1280, 16, 9, "fill")
    litgraphics.newSprite(lunalogo, 4, 16, 16)
    litgraphics.newText("lunamenu", 1080, 16, 4, 3, 1)

    -- cursor system --
    if selection == 1 then
        litgraphics.newText(languages[lang].menu.rungame, 30, 130, 6, 1, 4)
    else
        litgraphics.newText(languages[lang].menu.rungame, 30, 130, 6, 3, 1)
    end
    if selection == 2 then
        litgraphics.newText(languages[lang].menu.setup, 30, 190, 6, 1, 4)
    else
        litgraphics.newText(languages[lang].menu.setup, 30, 190, 6, 3, 1)
    end
    if selection == 3 then
        litgraphics.newText(languages[lang].menu.turnoff, 30, 260, 6, 1, 4)
    else
        litgraphics.newText(languages[lang].menu.turnoff, 30, 260, 6, 3, 1)
    end
end

function lunamenu.update(dt)
    if selection > 3 then
        selection = 1
    end
    if selection < 1 then
        selection = 3
    end 
end

function lunamenu.keydown(k)
    if k == "up" then
        selection = selection - 1
    end
    if k == "down" then
        selection = selection + 1
    end
    if k == "return" then
        switch(selection, {
            [1] = function()
                
            end,
            [2] = function()
                litgraphics.clearScreen()
                statemngr.changeState("settings") 
            end,
            [3] = function()
                litgraphics.clearScreen()
                statemngr.changeState("shutdown") 
            end
        })
    end
end

return lunamenu