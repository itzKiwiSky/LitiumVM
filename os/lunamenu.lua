lunamenu = {}

lunalogo = {
    {15,15,4,4,4,4,15,15},
    {15,4,4,4,4,2,4,15},
    {4,4,2,4,4,4,4,4},
    {4,2,2,2,4,4,4,4},
    {4,4,2,4,4,4,4,4},
    {4,4,4,4,4,2,4,4},
    {15,4,4,4,2,2,4,15},
    {15,15,4,4,4,4,15,15}
}

cursor = {
    {4,4,1,1,4,4},
    {4,1,1,1,1,4},
    {1,1,1,1,1,1},
    {1,1,1,1,1,1},
    {4,1,1,1,1,4},
    {4,4,1,1,4,4}
}

cursorX = 640
cursorY = 256

background = {
    {9,21,9,15,9,15},
    {15,9,15,9,15,9},
    {9,15,9,15,9,15},
    {15,9,15,9,15,9},
    {9,15,9,15,9,15},
    {15,9,15,9,15,9}
}

backgroundList = {}

function lunamenu.draw()
    litgraphics.newSprite(background, 16, 0, 0)
    litgraphics.rect(0, 0, 1280, 64, 15, "fill")
    litgraphics.rect(0, 0, 1280, 16, 9, "fill")
    litgraphics.newSprite(lunalogo, 4, 16, 12)

    -- need be in front--
    litgraphics.newSprite(cursor, 8, cursorX, cursorY)
    ---------------------
end

function lunamenu.update(dt)
    if litinput.isKeyDown("right") then
        cursorX = cursorX + 5
    end
    if litinput.isKeyDown("left") then
        cursorX = cursorX - 5
    end
    if litinput.isKeyDown("up") then
        cursorY = cursorY - 5
    end
    if litinput.isKeyDown("down") then
        cursorY = cursorY + 5
    end
end

return lunamenu