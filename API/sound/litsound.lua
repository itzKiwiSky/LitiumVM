litsound = {}

sounddriver = require 'src/native/engine/sound/soundgen'
json = require 'src/thirdparty/json'

isPlayingTrack = false
isPaused = false
timer = 0
arraySection = 1



--- Generate simple tone
--- @param waveLength | wave holding
--- @param ToneID |ID of tone
--- @param waveType | define the wave type. Can be square or wave
---@
function litsound.newWave(waveLength, ToneID, waveType)
    sounddriver.newWave(waveLength, ToneID, waveType)
end

--- Play your table song
--- @param trackTable | load your table and play song
function litsound.playTrack(trackTable)
    WaveLength      =       trackTable[arraySection][1]
    NoteID          =       trackTable[arraySection][2]
    noteType        =       trackTable[arraySection][3]
    waitMS          =       trackTable[arraySection][4]

    isPlayingTrack = true

    if isPlayingTrack then
        if arraySection < #trackTable then
            timer = timer + 1
            if timer > waitMS then
                arraySection = arraySection + 1
                print(WaveLength, NoteID, noteType, waitMS)
                sounddriver.newWave(WaveLength, NoteID, noteType)
                timer = 0
            end
        end
    else
        isPlayingTrack = false
        return
    end
end

--- Play your song  from file .json
--- @param path | load json file with song content and play it

function litsound.loadFile(path)
    file = io.open(path, "r")
    --assert(file == nil, "[:ERROR:] | Can't load file with path " .. path)
    return json.decode(file:read())
end

return litsound