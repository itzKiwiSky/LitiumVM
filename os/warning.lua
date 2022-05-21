warning = {}

warnMessage = 1
nonce = false


function warning.draw()
    warnMessage()
end

function warnMessage()
    litgraphics.newText("Hey!", 90, 90, 8, 6, 1)
    litgraphics.newText("Thank you for using my little Engine", 90, 180, 3, 1, 1)
    litgraphics.newText("Is a side project and I put a lot of effort on this", 90, 220, 3, 1, 1)
    litgraphics.newText("hope you like developing with it", 90, 260, 3, 1, 1)
    litgraphics.newText("Stability Warning!", 90, 300, 8, 3, 1)
    litgraphics.newText("This engine is constant development so", 90, 390, 3, 1, 1)
    litgraphics.newText("Any bug you find, please report on Github page or", 90, 440, 3, 1, 1)
    litgraphics.newText("Discord server", 90, 490, 3, 1, 1)
    litgraphics.newText("Press enter to continue", 240, 630, 5, 1, 1)
end

function dedications()
    litgraphics.newText("!Dedications lol!", 90, 90, 8, 6, 1)
    litgraphics.newText("IK", 90, 180, 3, 1, 1)
    litgraphics.newText("ArcherTheBest", 90, 220, 3, 1, 1)
    litgraphics.newText("yThzin", 90, 260, 3, 1, 1)
    litgraphics.newText("NGS", 90, 300, 3, 1, 1)
end

function warning.update(dt)

end

return warning