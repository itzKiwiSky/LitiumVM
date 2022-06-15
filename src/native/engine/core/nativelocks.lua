nativelocks = {}

function nativelocks.lock()

    --[[: OS Lib :]]--
    os.execute      = false
    os.difftime     = false
    os.getenv       = false
    os.remove       = false
    os.rename       = false
    os.setlocale    = false

    --[[: IO Lib :]]--
    io.flush        = false
    io.popen        = false

    --[[: LOVE Functions :]]--

    -- graphics --
    love.graphics.applyTransform = false
    love.graphics.arc = false
    love.graphics.captureScreenshot = false
    love.graphics.circle = false
    love.graphics.discard = false
    love.graphics.draw = false
    love.graphics.drawInstanced = false
    love.graphics.drawLayer = false
    love.graphics.ellipse = false
    love.graphics.flushBatch = false
    love.graphics.newArrayImage = false
    love.graphics.newCanvas = false
    love.graphics.newCubeImage = false
    love.graphics.newFont = false
    love.graphics.newImage = false
    love.graphics.newImageFont = false
    love.graphics.newMesh = false
    love.graphics.newParticleSystem = false
    love.graphics.newQuad = false
    love.graphics.newShader = false
    love.graphics.newText = false
    love.graphics.newVideo = false
    love.graphics.newVolumeImage = false
    love.graphics.setNewFont = false

    -- Audio --

    love.audio.getActiveEffects = false
    love.audio.getActiveSourceCount = false
    love.audio.getDistanceModel = false
    love.audio.getDopplerScale = false
    love.audio.getEffect = false
    love.audio.getMaxSceneEffects = false
    love.audio.getMaxSourceEffects = false
    love.audio.getOrientation = false
    love.audio.getPosition = false
    love.audio.getRecordingDevices = false
    love.audio.getVelocity = false
    love.audio.getVolume = false
    love.audio.isEffectsSupported = false
    love.audio.newQueueableSource = false
    love.audio.newSource = false
    love.audio.pause = false
    love.audio.play = false
    love.audio.setActiveEffects = false
    love.audio.setActiveSourceCount = false
    love.audio.setDistanceModel = false
    love.audio.setDopplerScale = false
    love.audio.setEffect = false
    love.audio.setMaxSceneEffects = false
    love.audio.setMaxSourceEffects = false
    love.audio.setOrientation = false
    love.audio.setPosition = false
    love.audio.setRecordingDevices = false
    love.audio.setVelocity = false
    love.audio.setVolume = false

    -- sound --

    love.sound.newDecoder = false
end

return nativelocks