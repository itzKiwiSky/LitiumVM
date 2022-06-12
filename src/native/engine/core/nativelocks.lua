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
end



return nativelocks