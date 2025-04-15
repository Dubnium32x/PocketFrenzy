-- input_handler.lua
-- This file handles input events and updates the game state accordingly.

-- import necessary libraries
import "CoreLibs/object"
import "CoreLibs/graphics"
import "CoreLibs/sprites"
import "CoreLibs/timer"

-- import necessary modules
local WorldState = import "world_state"
local Settings = import "settings"

-- set up local variables
local pd <const> = playdate
local gfx <const> = pd.graphics

local buttonA <const> = pd.kButtonA
local buttonB <const> = pd.kButtonB
local buttonU <const> = pd.kButtonUp
local buttonD <const> = pd.kButtonDown
local buttonL <const> = pd.kButtonLeft
local buttonR <const> = pd.kButtonRight
local buttonMenu <const> = pd.kButtonMenu

-- Stack to store button states
local buttonStack = {}

-- set up the input handler class
class('InputHandler').extends()
function InputHandler:init()
    -- Initialize the input handler
    self.buttonState = 0000000
end

-- Function to get the current button state as a binary number
local function getButtonState()
    local state = 0000000
    if pd.buttonIsPressed(buttonA) then state = state | 32 end
    if pd.buttonIsPressed(buttonB) then state = state | 16 end
    if pd.buttonIsPressed(buttonU) then state = state | 8 end
    if pd.buttonIsPressed(buttonD) then state = state | 4 end
    if pd.buttonIsPressed(buttonL) then state = state | 2 end
    if pd.buttonIsPressed(buttonR) then state = state | 1 end
    return state
end

-- Function to update the button stack
local function updateButtonStack()
    local currentState = getButtonState()
    table.insert(buttonStack, currentState)
    -- Limit stack size to avoid memory issues
    if #buttonStack > 60 then
        table.remove(buttonStack, 1)
    end
end

-- Call updateButtonStack in the update loop
function InputHandler:update()
    -- Update the button stack
    updateButtonStack()

    -- Check for button presses
    if pd.buttonJustPressed(buttonA) then
        print("Button A pressed")
        -- Handle button A press
    end

    if pd.buttonJustPressed(buttonB) then
        print("Button B pressed")
        -- Handle button B press
    end

    if pd.buttonJustPressed(buttonU) then
        print("Button Up pressed")
        -- Handle button Up press
    end

    if pd.buttonJustPressed(buttonD) then
        print("Button Down pressed")
        -- Handle button Down press
    end

    if pd.buttonJustPressed(buttonL) then
        print("Button Left pressed")
        -- Handle button Left press
    end

    if pd.buttonJustPressed(buttonR) then
        print("Button Right pressed")
        -- Handle button Right press
    end

    if pd.buttonJustPressed(buttonMenu) then
        print("Menu Button pressed")
        -- Handle menu button press
    end

    -- Check if button A or B has been pressed for eight consecutive frames
    if #buttonStack >= 14 then
        local lastFourteenStates = {}
        for i = #buttonStack - 13, #buttonStack do
            table.insert(lastFourteenStates, buttonStack[i])
        end

        local isHeavyAttack = true

        for _, state in ipairs(lastFourteenStates) do
            if not (state & 32 == 32 or state & 16 == 16) then
                isHeavyAttack = false
                break
            end
        end

        if isHeavyAttack then
            print("Heavy attack")
        end
    end
end

-- clear the button stack, any state after 20 frames
local function clearButtonStack()
    for i = 1, 20 do
        table.remove(buttonStack, 1)
    end
end