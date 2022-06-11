soundgen = {}

oldtones = {
    --261.63,         -- C
    277.18,
    --293.66,         -- D
    311.13,
    --329.63,         -- E
    349.23,         -- F
    369.99,
    --392.00,         -- G
    415.30,
    440,00,         -- A
    --466.16,
    493.88          -- B
}

tones = {
    264,
    297,
    330,
    352,
    396,
    440,
    495
}

function soundgen.newWave(waveLength, tone, waveType)
    local rate          =       44100 -- samples per second
    local length        =       waveLength / 32  -- 0.03125 seconds
    local Tone          =       tones[tone] -- Hz
    local p             =       math.floor(rate / Tone) -- 100 (wave length in samples)
    local soundData     =       love.sound.newSoundData(math.floor(length * rate), rate, 16, 1)


    for i = 0, soundData:getSampleCount() - 1 do
        if waveType == "square" then
            soundData:setSample(i, i % p < p / 2 and 1 or -1)     -- square wave; the first half of the wave is 1, the second half is -1.
        end
        if waveType == "sine" then
            soundData:setSample(i, math.sin(2 * math.pi * i / p)) -- sine wave.
        end
    end
    local source = love.audio.newSource(soundData)
    source:play()
end

function soundgen.newWaveFrequency(waveLength, frequency, waveType)
    local rate          =       44100 -- samples per second
    local length        =       waveLength / 32  -- 0.03125 seconds
    local Tone          =       frequency    -- Hz
    local p             =       math.floor(rate / Tone) -- 100 (wave length in samples)
    local soundData     =       love.sound.newSoundData(math.floor(length * rate), rate, 16, 1)


    for i = 0, soundData:getSampleCount() - 1 do
        if waveType == "square" then
            soundData:setSample(i, i % p < p / 2 and 1 or -1)     -- square wave; the first half of the wave is 1, the second half is -1.
        end
        if waveType == "sine" then
            soundData:setSample(i, math.sin(2 * math.pi * i / p)) -- sine wave.
        end
    end
    local source = love.audio.newSource(soundData)
    source:play()
end

return soundgen
