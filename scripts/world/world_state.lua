-- world_state.lua
-- -- This file is responsible for managing the screen states in the game.

-- import necessary libraries
import "CoreLibs/object"

-- init local variables
local pd <const> = playdate
local gfx <const> = pd.graphics

-- init screen states
local screenState = {
    INTRO = "INTRO",
    TITLE = "TITLE",
    MAIN_MENU = "MAIN_MENU",
    CHARACTER_SELECT = "CHARACTER_SELECT",
    ORDER_SELECT = "ORDER_SELECT",
    GAMEPLAY = "GAMEPLAY",
    WINNER_SCREEN = "WINNER_SCREEN",
    GAME_OVER = "GAME_OVER"
}

-- init gameplay states
local gameplayState = {
    STAGE_INTRO = "STAGE_INTRO",
    FIGHTER_INTRO = "FIGHTER_INTRO",
    STARTING = "STARTING",
    PLAYING = "PLAYING",
    PAUSED = "PAUSED",
    NULL = "NULL"
}

-- init game modes
local gameplayMode = {
    ARCADE = "ARCADE",
    TEAM = "TEAM",
    SINGLE = "SINGLE",
    CHALLENGE = "CHALLENGE",
    SURVIVAL = "SURVIVAL",
    TRAINING = "TRAINING",
    ONLINE = "ONLINE",
    NULL = "NULL"
}

-- init online modes
local onlineMode = {
    RANKED = "RANKED",
    CASUAL = "CASUAL",
    TOURNAMENT = "TOURNAMENT",
    NULL = "NULL"
}

-- init options
local options = {
    SOUND = 3,
    MUSIC = 3,
    DIFFICULTY = "NORMAL",
    LANGUAGE = "ENGLISH",
    DAMAGE = "NORMAL",
    SPEED = "NORMAL",
    TIME = "60"
}

-- get screen state
function getScreenState()
    return screenState
end
-- get gameplay state
function getGameplayState()
    return gameplayState
end
-- get gameplay mode
function getGameplayMode()
    return gameplayMode
end
-- get online mode
function getOnlineMode()
    return onlineMode
end
-- get options
function getOptions()
    return options
end

-- set screen state
function setScreenState(state)
    if screenState[state] then
        screenState = state
    else
        error("Invalid screen state: " .. tostring(state))
    end
end
-- set gameplay state
function setGameplayState(state)
    if gameplayState[state] then
        gameplayState = state
    else
        error("Invalid gameplay state: " .. tostring(state))
    end
end
-- set gameplay mode
function setGameplayMode(mode)
    if gameplayMode[mode] then
        gameplayMode = mode
    else
        error("Invalid gameplay mode: " .. tostring(mode))
    end
end
-- set online mode
function setOnlineMode(mode)
    if onlineMode[mode] then
        onlineMode = mode
    else
        error("Invalid online mode: " .. tostring(mode))
    end
end
-- set options
function setOptions(newOptions)
    for key, value in pairs(newOptions) do
        if options[key] ~= nil then
            options[key] = value
        else
            error("Invalid option: " .. tostring(key))
        end
    end
end
