-- ALLEYWAY TEAM 2025

-- THE KING OF FIGHTERS: POCKET FRENZY
-- Copyright (C) 2025 Alleyway Team, SNK
-- This program is free software: you can redistribute it and/or modify

-- This is a fan game based on the KOF series.
-- It is developed in the Lua programming language for the Panic Playdate.
-- This game is not affiliated with or endorsed by SNK or any other company.

-- main.lua 
-- This file contains the main game loop and initialization code.

-- import necessary libraries
import "CoreLibs/graphics"
import "CoreLibs/object"
import "CoreLibs/timer"
import "CoreLibs/sprites"

-- import neccessary modules
import "scripts/world/world_state"
import "scripts/world/screen_manager"
import "scripts/world/input_handler"
import "scripts/world/audio_manager"
import "scripts/world/settings"

-- set up local variables
local pd <const> = playdate
local gfx <const> = pd.graphics

function pd.init()
    -- initialize the game
    pd.display.setRefreshRate(50)
    gfx.setBackgroundColor(gfx.kColorBlack)

    -- initialize the screen manager
    ScreenManager:init()

    -- initialize the audio manager
    AudioManager:init()

    -- initialize the input handler
    InputHandler:init()

    -- load the initial screen
    ScreenManager:loadScreen("INTRO")
end

pd:init();

function pd.update()
    -- update the current screen
    if ScreenManager.currentScreen then
        ScreenManager.currentScreen:update()
    end

    -- update the input handler
    InputHandler:update()
end

function pd.draw()
    -- clear the screen
    gfx.clear(gfx.kColorBlack)

    -- draw the current screen
    ScreenManager.currentScreen:draw()
end

pd:draw();