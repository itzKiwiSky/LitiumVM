 function love.load()
    chan = require 'src/native/engine/chan/decode'
    imageloader = require 'src/native/engine/loader/imageloader'

    
    --=[: API Stuff :]=--
    litgraphics         =       require 'API/sprite/litgraphics'
    litsound            =       require 'API/sound/litsound'
    litgame             =       require 'API/game/litgame'
    litdata             =       require 'API/data/litdata'

    initLogoTimer = 0


    --diskcheck.init()
    imagedata = imageloader.getImage()
    pcall(imagedata(), start())
end

function love.draw()
    lunagraphics.clearScreen()
    pcall(imagedata(), render())
end

function love.update(dt)
    pcall(imagedata(), update())
end

function love.keypressed(k)
    pcall(imagedata(), keydown(k))
end

function love.keyrelease(k)
    pcall(imagedata(), keyup(k))
end