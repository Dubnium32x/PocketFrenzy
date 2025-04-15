-- character_attr.lua
-- -- This file contains the attributes and properties of characters in the game.

local characters = {
    -- Celestial Team
    { name = "Ash Crimson", width = 50, height = 180, speed = 7, jump_height = 15, isEvil = false, fighterNumber = 1, isPlayable = false },
    { name = "Shen Woo", width = 55, height = 185, speed = 6, jump_height = 14, isEvil = false, fighterNumber = 2, isPlayable = false },
    { name = "Duo Lon", width = 50, height = 190, speed = 8, jump_height = 16, isEvil = false, fighterNumber = 3, isPlayable = false },

    -- Dark Enforcers
    { name = "Eclipse", width = 60, height = 200, speed = 5, jump_height = 12, isEvil = true, fighterNumber = 4, isPlayable = false },
    { name = "Mukai", width = 70, height = 210, speed = 4, jump_height = 10, isEvil = true, fighterNumber = 5, isPlayable = false },
    { name = "Gai Tendo", width = 65, height = 195, speed = 6, jump_height = 13, isEvil = true, fighterNumber = 6, isPlayable = false },
    { name = "Shion", width = 55, height = 185, speed = 7, jump_height = 14, isEvil = true, fighterNumber = 7, isPlayable = false },

    -- Art of Fighting Team
    { name = "Ryo Sakazaki", width = 60, height = 185, speed = 6, jump_height = 14, isEvil = false, fighterNumber = 8, isPlayable = false },
    { name = "Robert Garcia", width = 60, height = 190, speed = 7, jump_height = 15, isEvil = false, fighterNumber = 9, isPlayable = false },
    { name = "Yuri Sakazaki", width = 50, height = 170, speed = 8, jump_height = 16, isEvil = false, fighterNumber = 10, isPlayable = false },

    -- Fatal Fury Team
    { name = "Terry Bogard", width = 60, height = 185, speed = 7, jump_height = 15, isEvil = false, fighterNumber = 11, isPlayable = false },
    { name = "Andy Bogard", width = 55, height = 180, speed = 7, jump_height = 15, isEvil = false, fighterNumber = 12, isPlayable = false },
    { name = "Mai Shiranui", width = 50, height = 170, speed = 8, jump_height = 16, isEvil = false, fighterNumber = 13, isPlayable = false },

    -- South Town Team
    { name = "Geese Howard", width = 65, height = 200, speed = 6, jump_height = 13, isEvil = true, fighterNumber = 14, isPlayable = false },
    { name = "Billy Kane", width = 60, height = 190, speed = 6, jump_height = 13, isEvil = true, fighterNumber = 15, isPlayable = false },
    { name = "Yamazaki", width = 65, height = 195, speed = 6, jump_height = 13, isEvil = true, fighterNumber = 16, isPlayable = false },

    -- Garou Team
    { name = "Rock Howard", width = 60, height = 185, speed = 7, jump_height = 15, isEvil = false, fighterNumber = 17, isPlayable = false },
    { name = "Gato", width = 55, height = 180, speed = 7, jump_height = 15, isEvil = false, fighterNumber = 18, isPlayable = false },
    { name = "Tizoc (The Griffon)", width = 80, height = 220, speed = 4, jump_height = 10, isEvil = false, fighterNumber = 19, isPlayable = false },

    -- Taekwondo Team
    { name = "Kim Kaphwan", width = 55, height = 180, speed = 8, jump_height = 16, isEvil = false, fighterNumber = 20, isPlayable = false },
    { name = "Jhun Hoon", width = 55, height = 180, speed = 7, jump_height = 15, isEvil = false, fighterNumber = 21, isPlayable = false },
    { name = "May Lee", width = 55, height = 175, speed = 8, jump_height = 16, isEvil = false, fighterNumber = 22, isPlayable = false },

    -- Kusanagi Team
    { name = "Kyo Kusanagi", width = 60, height = 185, speed = 7, jump_height = 15, isEvil = false, fighterNumber = 23, isPlayable = false },
    { name = "Saisyu Kusanagi", width = 60, height = 190, speed = 6, jump_height = 14, isEvil = false, fighterNumber = 24, isPlayable = false },
    { name = "Shingo Yabuki", width = 55, height = 180, speed = 7, jump_height = 15, isEvil = false, fighterNumber = 25, isPlayable = false },

    -- NESTS Team
    { name = "Kula Diamond", width = 50, height = 170, speed = 8, jump_height = 16, isEvil = false, fighterNumber = 26, isPlayable = false },
    { name = "Angel", width = 55, height = 175, speed = 7, jump_height = 15, isEvil = true, fighterNumber = 27, isPlayable = false },
    { name = "Krohnen", width = 60, height = 185, speed = 6, jump_height = 14, isEvil = true, fighterNumber = 28, isPlayable = false },

    -- K' Team
    { name = "K'", width = 60, height = 185, speed = 7, jump_height = 15, isEvil = false, fighterNumber = 29, isPlayable = false },
    { name = "Maxima", width = 70, height = 200, speed = 5, jump_height = 12, isEvil = false, fighterNumber = 30, isPlayable = false },
    { name = "Whip", width = 55, height = 175, speed = 7, jump_height = 15, isEvil = false, fighterNumber = 31, isPlayable = false },

    -- Psycho Soldiers Team
    { name = "Athena Asamiya", width = 50, height = 170, speed = 8, jump_height = 16, isEvil = false, fighterNumber = 32, isPlayable = false },
    { name = "Kensou", width = 55, height = 180, speed = 7, jump_height = 15, isEvil = false, fighterNumber = 33, isPlayable = false },
    { name = "Momoko", width = 50, height = 165, speed = 8, jump_height = 16, isEvil = false, fighterNumber = 34, isPlayable = false },

    -- Ikari Warriors Team
    { name = "Ralf Jones", width = 65, height = 190, speed = 6, jump_height = 14, isEvil = false, fighterNumber = 35, isPlayable = false },
    { name = "Clark Steel", width = 65, height = 190, speed = 6, jump_height = 14, isEvil = false, fighterNumber = 36, isPlayable = false },
    { name = "Leona Heidern", width = 55, height = 175, speed = 7, jump_height = 15, isEvil = false, fighterNumber = 37, isPlayable = false },

    -- Cartoons Team
    { name = "Rowdy", width = 60, height = 185, speed = 7, jump_height = 15, isEvil = false, fighterNumber = 38, isPlayable = false },
    { name = "Oneki", width = 55, height = 180, speed = 7, jump_height = 15, isEvil = false, fighterNumber = 39, isPlayable = false },
    { name = "Yuyake", width = 50, height = 170, speed = 8, jump_height = 16, isEvil = false, fighterNumber = 40, isPlayable = false },

    -- Demolition Team
    { name = "Iori Yagami", width = 60, height = 185, speed = 7, jump_height = 15, isEvil = true, fighterNumber = 41, isPlayable = false },
    { name = "Oswald", width = 55, height = 180, speed = 7, jump_height = 15, isEvil = true, fighterNumber = 42, isPlayable = false },
    { name = "Adelheid Bernstein", width = 60, height = 190, speed = 6, jump_height = 14, isEvil = true, fighterNumber = 43, isPlayable = false },

    -- Agents Team
    { name = "Blue Mary", width = 55, height = 175, speed = 7, jump_height = 15, isEvil = false, fighterNumber = 44, isPlayable = false },
    { name = "Vanessa", width = 55, height = 175, speed = 7, jump_height = 15, isEvil = false, fighterNumber = 45, isPlayable = false },
    { name = "Ramon", width = 55, height = 175, speed = 7, jump_height = 15, isEvil = false, fighterNumber = 46, isPlayable = false },
}

return characters