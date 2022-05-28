settings = {}

insert = table.insert

currentOS = chan.decode("bios", "BIOS_DEFAULTIMAGE")

maxY = 80
cursorY = 80
selectionPosList = {}

settingsOptions = {
    {
        optionDesc = "current operating system",
        value = currentOS
    },
    {
        optionDesc = "Booloader Logo",
        value = "true"
    },
    {
        optionDesc = "Luna watermark",
        value = "false"
    }
}

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
        litgraphics.newText(settingsOptions[i].optionDesc, 20, y, 3, 3, 1)
        litgraphics.newText(settingsOptions[i].value, 1060, y, 3, 6, 4)
        insert()
        --litgraphics.rect(0, y + 25, 1280, 3, 4, "fill")
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
    litgraphics.newSprite(cursor, 4, -5, cursorY)
end

function settings.update()
    if cursorY < 80 then
        cursorY = 80
    end
    if cursorY > maxY then
        cursorY = maxY
    end
end

function settings.keydown(k)
    if  k == "up" then
        cursorY = cursorY - 30
        print(cursorY)
    end
    if  k == "down" then
        cursorY = cursorY + 30
        print(cursorY)
    end
end

function renderPage(id)
    if id == 1 then
        
    end
end

return settings