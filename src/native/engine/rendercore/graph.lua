rendercore = {}

rect                    =               love.graphics.rectangle
setColor                =               love.graphics.setColor
setBackgroundcolor      =               love.graphics.setBackgroundColor

fonts = require 'src/native/engine/resources/font'


function rendercore.drawCall(tablespr, pixelSize, Xpos, Ypos)
    colors = {
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

    for y=1, #tablespr do
		for x=1, #tablespr[1] do
            color = colors[tablespr[y][x]]
            if y > 50 or x > 50 then
                error("Sprite size, higher than 50 pixels")
            else
                setColor(color[1], color[2], color[3], color[4])
                rect("fill", Xpos + (x * pixelSize), Ypos + (y * pixelSize), pixelSize, pixelSize)
            end
		end
	end
end

function rendercore.windowColor(colorid)
    WindowColors = {
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

    setBackgroundcolor(WindowColors[colorid])
end

function rendercore.rect(x, y, w, h, colorid, fillType)
    RectColor = {
        {0,0,0,0},
        {0,0,0},        -- 1
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

    setColor(RectColor[colorid])

    rect(fillType, x, y, w, h)
end

return rendercore