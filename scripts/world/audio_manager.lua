-- audio_manager.lua
-- This file is responsible for managing the audio system in the game.

-- import necessary libraries
import "CoreLibs/object"
import "CoreLibs/graphics"
import "CoreLibs/sprites"
import "CoreLibs/timer"

-- asign local variables
local pd <const> = playdate
local gfx <const> = pd.graphics

local audioVol = 3; -- out of a maximum of 5
local musicVol = 3; -- out of a maximum of 5

-- AudioManager class
class('AudioManager').extends()
function AudioManager:init()
    -- Initialize the audio manager
    self.sounds = {}
    self.music = nil
end

function AudioManager:loadSound(name, filePath)
    -- Load a sound file
    local sound = pd.sound.new(filePath)
    self.sounds[name] = sound
end

function AudioManager:playSound(name)
    -- Play a sound
    if self.sounds[name] then
        self.sounds[name]:play()
    else
        print("Sound not found: " .. name)
    end
end

function AudioManager:stopSound(name)
    -- Stop a sound
    if self.sounds[name] then
        self.sounds[name]:stop()
    else
        print("Sound not found: " .. name)
    end
end

function AudioManager:loadMusic(filePath)
    -- Load a music file
    self.music = pd.sound.new(filePath)
end

function AudioManager:playMusic()
    -- Play the music
    if self.music then
        self.music:play()
    else
        print("Music not loaded")
    end
end

function AudioManager:pauseMusic()
    -- Pause the music
    if self.music then
        self.music:pause()
    else
        print("Music not loaded")
    end
end

function AudioManager:stopMusic()
    -- Stop the music
    if self.music then
        self.music:stop()
    else
        print("Music not loaded")
    end
end

function AudioManager:setGameVolume(volume)
    -- Set the volume for all sounds
    audioVol = volume
    for _, sound in pairs(self.sounds) do
        sound:setVolume(audioVol)
    end
end

function AudioManager:setMusicVolume(volume)
    -- Set the volume for music
    musicVol = volume
    if self.music then
        self.music:setVolume(musicVol)
    else
        print("Music not loaded")
    end
end
