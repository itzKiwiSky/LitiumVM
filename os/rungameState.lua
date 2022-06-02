rungame = {}

id = 2

languages = require 'os/resources/languages'
diskcheck = require 'src/native/engine/loader/diskcheck'

diskList = diskcheck.init()

y = 40

print(#diskcheck)

function rungame.draw()
    if not diskList then
        for item = 1, #diskList do
            litgraphics.newText(diskList[item], 40, y, 4, 3, 1)
            item = item + 1
            y = y + 40
        end
    else
        litgraphics.newText(languages[id].run.nodisk, 40, 40, 4, 3, 1)
    end
end

function rungame.update(dt)
    
end

function rungame.keydown(k)
    
end

return rungame