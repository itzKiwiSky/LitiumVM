settings = {}

maxY = 80
cursorY = 80
selectionID = 1

settingsOptions = languages[item].settings

cursor = {
    {1,1,4,1,1},
    {1,1,1,4,1},
    {1,1,1,1,4},
    {1,1,1,4,1},
    {1,1,4,1,1}
}

function renderLines()
    litgraphics.rect(0, 70, 1280, 3, 4, "fill")
    litgraphics.rect(900, 70, 3, 720, 4, "fill")
    litgraphics.rect(850, 70, 3, 720, 4, "fill")
end

function renderOption()
    y = 80
    for i = 1, #settingsOptions do
        if settingsOptions[i].value ~= "exit" then
            litgraphics.newText(settingsOptions[i].optionDesc, 20, y, 3, 3, 1)
            litgraphics.newText(settingsOptions[i].value, 1060, y, 3, 6, 4)
        else
            litgraphics.newText(settingsOptions[i].optionDesc, 20, y, 3, 3, 1)
        end

        i = i + 1
        y = y + 30
    end
    maxY = y - 30
end

function settings.draw()
    litgraphics.rect(0, 0, 1280, 720, 7, "fill")
    litgraphics.newText("Luna settings", 10, 10, 3, 3, 1)
    renderOption()
    --renderLines()
    litgraphics.newSprite(cursor, 4, -10, cursorY)
end

function settings.update(dt)
    if cursorY < 80 then
        cursorY = 80
        selectionID = 1
    end
    if cursorY > maxY then
        cursorY = maxY
        selectionID = #settingsOptions
    end
end

function settings.keydown(k)
    if  k == "up" then
        cursorY = cursorY - 30
        selectionID = selectionID - 1
    end
    if  k == "down" then
        cursorY = cursorY + 30
        selectionID = selectionID + 1
    end
    if k == "return" then
        switch(selectionID, {
            [2] = function()
                print("test1")
            end,
            [3] = function()
                print("test2")
            end,
            [4] = function()
                litgraphics.clearScreen()
                statemngr.changeState("bootloader") 
            end
        })
    end
end

return settings