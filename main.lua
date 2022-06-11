
function love.load()
    nativelocks = require 'src/native/engine/plugin/nativelocks'
    imageloader = require 'src/native/engine/loader/imageloader'
    pluginmanager = require 'src/native/engine/plugin/pluginmngr'
    language = require 'src/native/engine/resources/language'

    nativelocks.lock()

    
    --=[: API Stuff :]=--
    litgraphics         =       require 'API/sprite/litgraphics'
    litsound            =       require 'API/sound/litsound'
    litgame             =       require 'API/game/litgame'
    litsystem           =       require 'API/system/litsystem'
    litfilesystem       =       require 'API/filesystem/litfilesystem'
    litwindow           =       require 'API/window/litwindow'
    switch              =       require 'src/native/sources/switch'

    initLogoTimer = 0

    imageloader.init()
    imagedata = imageloader.getImage()

    pluginmanager.loadPlugins()

    pcall(imagedata(), start())
end

function love.draw()
    litgraphics.clearScreen()
    pcall(imagedata(), render())
end

function love.update(dt)
    pcall(imagedata(), update(dt))
end

function love.keypressed(k)
    pcall(imagedata(), keydown(k))
end

function love.keyrelease(k)
    pcall(imagedata(), keyup(k))
end