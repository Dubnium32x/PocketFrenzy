-- screen_manager.lua
-- This file is responsible for managing the screen states in the game.

-- import necessary libraries
import "CoreLibs/object"
import "CoreLibs/graphics"
import "CoreLibs/sprites"
import "CoreLibs/timer"

-- import necessary modules
import "../screens/intro"
import "../screens/title"
import "../screens/menu"
import "../screens/char_select"
import "../screens/order_select"
import "../screens/gameplay"
import "../screens/winner_screen"
import "../screens/game_over"

-- asign local variables
local pd <const> = playdate
local gfx <const> = pd.graphics

local WorldState = import "../world/world_state"
local Settings = import "../world/settings"

-- ScreenManager class
class('ScreenManager').extends()

function ScreenManager:init()
    -- Initialize the screen manager
    self.currentScreen = nil
    self.screenState = "INTRO"
    self.gameplayState = "NULL"
    self.gameplayMode = "NULL"
    self.onlineMode = "NULL"
    self.options = {
        SOUND = 3,
        MUSIC = 3,
        DIFFICULTY = "NORMAL",
        LANGUAGE = "ENGLISH",
        DAMAGE = "NORMAL",
        SPEED = "NORMAL"
    }
end

function ScreenManager:loadScreen(screenName)
    -- Unload the current screen if it exists
    -- if self.currentScreen then
    --     self:unloadScreen()
    -- end
    -- Load the new screen
    if screenName == "INTRO" then
        self.currentScreen = Intro()
    elseif screenName == "TITLE" then
        self.currentScreen = Title()
    elseif screenName == "MAIN_MENU" then
        self.currentScreen = Menu()
    elseif screenName == "CHARACTER_SELECT" then
        self.currentScreen = CharSelect()
    elseif screenName == "ORDER_SELECT" then
        self.currentScreen = OrderSelect()
    elseif screenName == "GAMEPLAY" then
        self.currentScreen = Gameplay()
    elseif screenName == "WINNER_SCREEN" then
        self.currentScreen = WinnerScreen()
    elseif screenName == "GAME_OVER" then
        self.currentScreen = GameOver()
    else
        print("Unknown screen: " .. screenName)
        return
    end

    -- print the current screen name
    print("Current screen: " .. tostring(screenName))
end

function ScreenManager:update()
    -- Update the current screen
    if self.currentScreen then
        self.currentScreen:update()
    end
end

function ScreenManager:draw()
    -- Draw the current screen
    if self.currentScreen then
        self.currentScreen:draw()
    end
end