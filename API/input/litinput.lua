litinput = {}

--- Get keyboard input based on key
---@param key string
function litinput.isKeyDown(key, ...)
    return love.keyboard.isDown(key, ...)
end

return litinput