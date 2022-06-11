litgraphics = {}

rendercore = require 'src/native/engine/render/graph'
textrender = require 'src/native/engine/render/textrender'
textureFile = require 'src/native/engine/render/texture'

--- Create a new Sprite.
--- @param table | Parse the sprite table
--- @param spriteSize | Change the sprite size
--- @param xpos | X position to create sprite
--- @param ypos | Y Position to create sprite
--- @param tablePallete | Import pallete for specific sprite (if nil got the default pallete)
function litgraphics.newSprite(table, spriteSize, xpos, ypos, tablePallete)
    rendercore.drawCall(table, spriteSize, xpos, ypos, tablePallete)
end


--- Create a new text.
--- @param textStr | Parse the sprite table
--- @param textPosX | X position to create sprite
--- @param textPosY | Y Position to create sprite
--- @param FontSize | Set the font size
--- @param textColor | Set font color
--- @param bgColor | set font background colors
function litgraphics.newText(textStr, textPosX, textPosY, fontSize, textColor, bgcolor)
    textrender.drawStr(textStr, textPosX, textPosY, fontSize, textColor, bgcolor)
end

--- Change scene background color
--- @param id | Color id (1-9)
function litgraphics.sceneColor(id)
    rendercore.windowColor(id)
end

--- Create primitive rectangle
--- @param xp | x position
--- @param yp | y position
--- @param wt | width of rectangle
--- @param ht | height of rectangle
--- @param color | color id
--- @param fill | fill mode ("fill" or "line")
function litgraphics.rect(xp, yp, wt, ht, color, fill)
    rendercore.rect(xp, yp, wt, ht, color, fill)
end

--- Clear screen content
--- return nothing
function litgraphics.clearScreen()
    love.graphics.clear()
end

--- Import json files with sprite codes
--- @param path | file path
function litgraphics.loadSpriteFile(path)
    return textureFile.loadfile(path)
end

--- load a table pallete for sprites
--- @param tablePallete | Pallete table
function litgraphics.loadPallete(tablePallete)
    rendercore.loadPallete(tablePallete)
end

--- Import a json file with pallete code
--- @param path | file path
function litgraphics.importPallete(path)
    texture.loadfile(path)
end

return litgraphics