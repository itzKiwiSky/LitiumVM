lunamenu = {}

lunagraph           =       require         'src/api/sprite/lunagraphics'
lunasound           =       require         'src/api/sound/lunasound'

isDown              =       love.keyboard.isDown

lunalogo = {
    {15,15,3,3,3,3,15,15},
    {15,3,3,3,3,2,3,15},
    {3,3,2,3,3,3,3,3},
    {3,2,2,2,3,3,3,3},
    {3,3,2,3,3,3,3,3},
    {3,3,3,3,3,2,3,3},
    {15,3,3,3,2,2,3,15},
    {15,15,3,3,3,3,15,15}
}

cursor = {
    {3,3,1,1,3,3},
    {3,1,1,1,1,3},
    {1,1,1,1,1,1},
    {1,1,1,1,1,1},
    {3,1,1,1,1,3},
    {3,3,1,1,3,3}
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
    lunagraph.newSprite(background, 16, 0, 0)
    lunagraph.rect(0, 0, 1280, 64, 15, "fill")
    lunagraph.rect(0, 0, 1280, 16, 9, "fill")
    lunagraph.newSprite(lunalogo, 4, 16, 12)

    -- need be in front--
    lunagraph.newSprite(cursor, 8, cursorX, cursorY)
    ---------------------
end

function lunamenu.update(dt)
    if isDown("right") then
        cursorX = cursorX + 5
    end
    if isDown("left") then
        cursorX = cursorX - 5
    end
    if isDown("up") then
        cursorY = cursorY - 5
    end
    if isDown("down") then
        cursorY = cursorY + 5
    end
end

return lunamenu