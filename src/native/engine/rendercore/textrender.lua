text = {}

setColor                =               love.graphics.setColor

font = require 'src/native/engine/resources/font'

-- rendercore callback to generate string

function text.drawStr(Textstr, x, y, FontSize, txtColor, bgColorId)
    --textStr = text.splitLetters(str)

    textOutput = string.lower(Textstr)

    letters = "abcdefghijklmnopqrstuvwxyz0123456789 !%*(),.:;"

    letterSize = font.FontLetterSize

    textX = x
    textY = y

    for i = 1, #Textstr do

        char = textOutput:sub(i, i) -- this gets the current letter of whatever number we are in the loop
        num = letters:find(char) -- this returns the position of char in our letters string.

        drawCall(font[num], FontSize, textX, textY, txtColor, bgColorId)

        textX = textX + (FontSize * letterSize)
    end
end

function drawCall(spriteData, pixelSize, Xpos, Ypos, TextColorID, BackgroundColorID)
    colorsBG = {
        {0,0,0,0},
        {0,0,0},
        {0.5,0.5,0.5},
        {1,1,1},
        {1,0,0},
        {0,1,0},
        {0,0,1},
        {1,1,0},
        {0,1,1},
        {1,0,1},
        {0.5,0,0},
        {0,0.5,0},
        {0,0,0.5},
        {0.5,0.5,0},
        {0,0.5,0.5},
        {0.5,0,0.5},
        {0.8,0,0},
        {0,0.8,0},
        {0,0,0.8},
        {0.8,0.8,0},
        {0,0.8,0.8},
        {0.8,0,0.8}
    }
    
    colorsText = {
        {0,0,0},
        {0.5,0.5,0.5},
        {1,1,1},
        {1,0,0},
        {0,1,0},
        {0,0,1},
        {1,1,0},
        {0,1,1},
        {1,0,1},
        {0.5,0,0},
        {0,0.5,0},
        {0,0,0.5},
        {0.5,0.5,0},
        {0,0.5,0.5},
        {0.5,0,0.5},
        {0.8,0,0},
        {0,0.8,0},
        {0,0,0.8},
        {0.8,0.8,0},
        {0,0.8,0.8},
        {0.8,0,0.8}
    }

    for y=1, #spriteData do
		for x=1, #spriteData[1] do
            if spriteData[y][x] == 0 then
                if BackgroundColorID == nil then
                    setColor(0, 0, 0)
                else
                    setColor(colorsBG[BackgroundColorID])
                end
            else
                setColor(colorsText[TextColorID])
            end
            rect("fill", Xpos + (x * pixelSize), Ypos + (y * pixelSize), pixelSize, pixelSize)
		end
	end
end

return text