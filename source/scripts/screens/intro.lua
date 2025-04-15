-- intro.lua
-- -- This file is responsible for displaying the intro animation.

-- import necessary libraries
import "CoreLibs/graphics"
import "CoreLibs/object"
import "CoreLibs/sprites"
import "CoreLibs/timer"

local pd <const> = playdate
local gfx <const> = pd.graphics

-- variables for animation
local introTable = gfx.imagetable.new("assets/images/intro/kof_xi_intro")
local frame = 1
local totalFrames = introTable:getLength()
local frameRate = 24 -- adjust this to control the speed of the animation (frames per second)
local frameDuration = 1000 / frameRate -- duration of each frame in milliseconds
local lastFrameTime = 0

-- setup the class
class('Intro').extends()

function Intro:update()
    gfx.clear()

    local totalFrames = introTable:getLength()
    local fps = 24
    local frame = math.floor((playdate.getCurrentTimeMilliseconds() / (1000 / fps)) % totalFrames) + 1

    introTable:drawImage(frame, 0, 0)
end

function Intro:skipIntro()
    -- skip the intro and load the title screen
    ScreenManager:loadScreen("TITLE")
end

function Intro:draw()
    -- draw the current frame of the intro animation
    pd.drawFPS(0, 0)
end