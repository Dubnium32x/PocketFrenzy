-- intro.lua
-- -- This file is responsible for displaying the intro animation.

-- import necessary libraries
import "CoreLibs/graphics"
import "CoreLibs/object"
import "CoreLibs/sprites"
import "CoreLibs/timer"
import "CoreLibs/frameTimer"


-- import necessary modules
local ScreenManager = import "scripts/world/screen_manager"
local InputHandler = import "scripts/world/input_handler"

-- set up local variables
local pd <const> = playdate
local gfx <const> = pd.graphics

-- variables for animation
local introTable = gfx.imagetable.new("assets/images/intro/kof_xi_intro")
local frame = 1
local totalFrames = introTable:getLength()
local frameRate = 24 -- adjust this to control the speed of the animation (frames per second)
local frameDuration = 1000 / frameRate -- duration of each frame in milliseconds
local lastFrameTime = 0

local inputHandler = InputHandler()

local buttonPressed = false
-- setup the class
class('Intro').extends()

function Intro:update()
    -- get the current button state
    gfx.clear()
    local buttonState = inputHandler:getButtonState()

    if buttonState ~= 0 then
        buttonPressed = true
    end

    -- check if the intro animation is finished or if A or B is pressed
    if frame == totalFrames or buttonPressed then
        -- load the title screen
        Intro:skipIntro()
    else
        local fps = 24
        local frame = math.floor((playdate.getCurrentTimeMilliseconds() / (1000 / fps)) % totalFrames) + 1
    
        introTable:drawImage(frame, 0, 0)
    end

    -- update the frame based on the elapsed time
    pd.timer.updateTimers()
end

function Intro:skipIntro()
    -- skip the intro and load the title screen
    pd.display.setRefreshRate(50)
    local circle
    local x, y = 200, 120
    local radius = 0
    local maxRadius = 200
    local duration = 1000 -- duration in milliseconds
    if not self.startTime then
        self.startTime = pd.getCurrentTimeMilliseconds()
    end
    local elapsedTime = pd.getCurrentTimeMilliseconds() - self.startTime
    gfx.setColor(gfx.kColorWhite)
    local t = pd.easingFunctions.inOutQuad(elapsedTime, 0, 1, duration)
    radius = maxRadius * math.min(t, 1) -- ensure radius does not exceed maxRadius
    -- draw the circle
    gfx.fillCircleAtPoint(x, y, radius)
    
    -- ScreenManager:loadScreen("TITLE")
end

function Intro:draw()
    -- draw the current frame of the intro animation
    pd.drawFPS(0, 0)
end