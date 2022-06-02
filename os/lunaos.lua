function start()
    --==[: API Stuff :]==--
    litgraphics     =       require 'API/sprite/litgraphics'
    litsound        =       require 'API/sound/litsound'
    litinput        =       require 'API/input/litinput'
    litgame         =       require 'API/game/litgame'
    litsystem       =       require 'API/system/litsystem'
    ------------------------------------------------------
    --==[: States and other stuff :]==--
    Timer           =       require 'src/thirdparty/timer'
    bootloader      =       require 'os/bootloader'
    shutdownstate   =       require 'os/shutdownstate'
    lunamenu        =       require 'os/lunamenu'
    statemngr       =       require 'os/statemngr'
    settings        =       require 'os/settingsState'
    ------------------------------------------------------

    statemngr.changeState("rungame")
    statemngr.load()


end

function render()
    statemngr.stateDraw()
end

function update(dt)
    statemngr.stateUpdate(dt)
end


function keydown(k)
    statemngr.keydown(k)
end

function keyup(k)
    
end