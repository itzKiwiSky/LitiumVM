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
--- @return nil
function litgraphics.newSprite(table, spriteSize, xpos, ypos, tablePallete)
    rendercore.drawCall(table, spriteSize, xpos, ypos, tablePallete)
end


--- Create a new text.
--- @param textStr string
--- @param textPosX number
--- @param textPosY number
--- @param FontSize number
--- @param textColor number
--- @param bgColor number
--- @return nil
function litgraphics.newText(textStr, textPosX, textPosY, fontSize, textColor, bgcolor)
    textrender.drawStr(textStr, textPosX, textPosY, fontSize, textColor, bgcolor)
end

--- Create primitive rectangle
---@param xp number
---@param yp number
---@param wt number
---@param ht number
---@param color number
---@param fill string
---@param tblPallete table
---@return nil
function litgraphics.rect(xp, yp, wt, ht, color, fill)
    rendercore.rect(xp, yp, wt, ht, color, fill)
end

--- Clear screen content
---@return nil
function litgraphics.clearScreen()
    love.graphics.clear()
end

--- Import json files with sprite codes
--- @param path string
function litgraphics.loadSpriteFile(path)
    return textureFile.loadfile(path)
end

--- load a table pallete for sprites
--- @param tablePallete table
function litgraphics.loadPallete(tablePallete)
    rendercore.loadPallete(tablePallete)
end


return litgraphics