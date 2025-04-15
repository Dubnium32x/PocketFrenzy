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
local frame = "assets/images/intro/intro1.png"
local introFrames = {}
local frameRate = 24 -- adjust this to control the speed of the animation (frames per second)
local frameDuration = 1000 / frameRate -- duration of each frame in milliseconds
local lastFrameTime = 0

-- setup the class
class('Intro').extends()
function Intro:init() 
    -- set the refresh rate
    pd.display.setRefreshRate(24)
    for i = 1, 777 do
        local imagePath = "assets/images/intro/intro" .. i .. ".png"
        -- load the image to table
        introFrames[i] = imagePath
    end
end

function Intro:update()
    if pd.buttonIsPressed(pd.kButtonA) or pd.buttonIsPressed(pd.kButtonB) then
        self:skipIntro()
    end
    -- update timers
    pd.timer.updateTimers()
end

function Intro:draw()
    -- clear the screen
    gfx.clear(gfx.kColorWhite)

    -- load the images
    for i = 1, #introFrames do
        pd.timer.performAfterDelay(frameDuration * i, function()
            print("Loading image: " .. introFrames[i])
            frame = gfx.image.new(introFrames[i])   
            -- check if the image is loaded successfully
            if frame then
                -- draw the current frame
                frame:draw(0, 0)
            else
                print("Failed to load image: " .. introFrames[i])
            end
            -- update the screen
            pd.display.flush()
            -- set a timer for the duration of the frame
        end)
    end

end

function Intro:skipIntro()
    -- skip the intro and load the title screen
    ScreenManager:loadScreen("TITLE")
end