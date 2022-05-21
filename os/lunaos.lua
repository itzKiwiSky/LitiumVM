function start()
    litgraphics     =       require 'API/sprite/litgraphics'
    litsound        =       require 'API/sound/litsound'
    litinput        =       require 'API/input/litinput'
    litgame         =       require 'API/game/litgame'
    bootloader      =       require 'os/bootloader'
    debugstate      =       require 'os/debugstate'
    lunamenu        =       require 'os/lunamenu'
    statemngr       =       require 'os/statemngr'
    statemngr.changeState("bootloader")
end

function render()
    statemngr.stateDraw()
end

function update(dt)
    statemngr.stateUpdate(dt)
end


function keydown(k)
    
end

function keyup(k)
    
end