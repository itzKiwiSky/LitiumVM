litgame = {}

--- Check for collision based on two sprite tables
---@param collisionType string
---@param sprite1 table
---@param sprite2 table
function litgame.collision(collisionType, sprite1, sprite2)
    if string.lower(collisionType) == "rect" then
        return sprite1.x < sprite2.x + sprite2.w and
        sprite1.x + sprite1.w > sprite2.x and
        sprite1.y < sprite1.y + sprite2.h and
        sprite1.y + sprite1.h > sprite2.y
    end

    if string.lower(collisionType) == "circle" then

        assert(sprite1.radius == nil or sprite2.radius == nil, "[:ERROR:] | Sprite table propertie not found : 'radius'")
        assert(sprite1.x == nil or sprite2.x == nil, "[:ERROR:] | Sprite table propertie not found : 'x'")
        assert(sprite1.y == nil or sprite2.y == nil, "[:ERROR:] | Sprite table propertie not found : 'y'")

        dx = sprite1.x - sprite2.x
        dy = sprite1.y - sprite2.y

        dist = math.sqrt(dx * dx + dY * dy)
        
        if dist < sprite1.radius + sprite2.radius then
            return true
        else
            return false
        end
    end
end

function litgame.quit(type)
    love.event.quit(type)
end

return litgame