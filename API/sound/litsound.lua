litsound = {}

sounddriver = require 'src/native/engine/sound/soundgen'
json = require 'src/thirdparty/json'

isPlayingTrack = false
isPaused = false
timer = 0
arraySection = 1



--- Generate simple tone
--- @param waveLength number
--- @param frequency number
--- @param waveType string
function litsound.newWave(waveLength, frequency, waveType)
    sounddriver.newWave(waveLength, frequency, waveType)
end

--- Play your table song
--- @param trackTable table
function litsound.playTrack(trackTable)
    WaveLength      =       trackTable[arraySection][1]
    freque          =       trackTable[arraySection][2]
    noteType        =       trackTable[arraySection][3]
    waitMS          =       trackTable[arraySection][4]

    isPlayingTrack = true

    if isPlayingTrack then
        if arraySection < #trackTable then
            timer = timer + 1
            if timer > waitMS then
                arraySection = arraySection + 1
                print(WaveLength, freque, noteType, waitMS)
                sounddriver.newWaveFrequency(WaveLength, freque, noteType)
                timer = 0
            end
        end
    else
        isPlayingTrack = false
        return
    end
end

return litsound