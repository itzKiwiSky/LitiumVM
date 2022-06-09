function firstFile()
    first = litfilesystem.createFile("firstboot.txt")
    first:open("w")
    first:write("true")
    first:close()
end

function start()

    settings = require 'src/native/engine/core/settingsreader'
    litsystem.setName("Litium Engine v0.1 - Titanium")

    Timer = 0
    frame = 1
    state = 0

    pallete = {
        {0,0,0,0},
        {1,1,1}
    }

    shine = {
        {
            {1,1,1},
            {1,2,1},
            {1,1,1}
        },
        {
            {1,2,1},
            {2,2,2},
            {1,2,1}
        },
        {
            {2,1,2},
            {1,2,1},
            {2,1,2}
        },
    }

end

function render()
    litgraphics.newSprite(shine[frame], 8, 290, 190, pallete)
    litgraphics.newSprite(shine[frame], 8, 340, 70, pallete)
    litgraphics.newSprite(shine[frame], 8, 20, 50, pallete)
    litgraphics.newSprite(shine[frame], 8, 190, 40, pallete)
    litgraphics.newSprite(shine[frame], 8, 180, 290, pallete)
    litgraphics.newText("Welcome", 464, 305, 8, 2, 1)
    litgraphics.newText("Welcome", 464, 300, 8, 3, 1)
    if state > 200 then
        litgraphics.newText("to litium", 460, 362, 4, 2, 1)
        litgraphics.newText("to litium", 460, 360, 4, 3, 1)
    end
    if state > 400 then
        litgraphics.newText("shutting down sequence", 0, 0, 2, 2, 1)
    end
end

function update(dt)
    Timer = Timer + 1
    state = state + 1
    print(state)
    if Timer > 10 then
        Timer = 0
        frame = frame + 1
        if frame > #shine then
            frame = 1
        end
    end
    if state > 450 then
        firstFile()
        litgame.quit()
    end
end

function keydown(k)end

function keyup(k)end