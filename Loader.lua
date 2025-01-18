-- Define a table of target Game IDs and their respective actions
local targetGameIDs = {
    [118109254120801] = function()
        -- Code for Game 1
        loadstring(game:HttpGet("https://raw.githubusercontent.com/tempaccount42069/bfbvgkaitun/refs/heads/main/BloxFruitsButVeryGood.lua"))()
    end,
    [110392240864059] = function()
        -- Code for Game 2
        loadstring(game:HttpGet("https://raw.githubusercontent.com/tempaccount42069/PrisonwareX/refs/heads/main/message.lua"))()
    end,
    [121603480401765] = function()
        -- Code for Game 3
        loadstring(game:HttpGet("https://raw.githubusercontent.com/tempaccount42069/bfbvgkaitun/refs/heads/main/BloxFruitsButVeryGood.lua"))()
    end,
    [74996439416357] = function()
        -- Code for Game 3
        loadstring(game:HttpGet("https://raw.githubusercontent.com/tempaccount42069/bfbvgkaitun/refs/heads/main/BloxFruitsButVeryGood.lua"))()
    end,
    [125355177832974] = function()
        -- Code for Game 2
        loadstring(game:HttpGet("https://raw.githubusercontent.com/tempaccount42069/bfbvgkaitun/refs/heads/main/BloxFruitsButVeryGood.lua"))()
    end,
    [80711432533334] = function()
        -- Code for Game 2
        loadstring(game:HttpGet("https://raw.githubusercontent.com/tempaccount42069/bfbvgkaitun/refs/heads/main/BloxFruitsButVeryGood.lua"))()
    end,
    [2753915549] = function()
        -- Code for Game 2
        loadstring(game:HttpGet("https://raw.githubusercontent.com/tempaccount42069/bfbvgkaitun/refs/heads/main/BloxFruits.lua"))()
    end
    
}

-- Get the current game ID
local currentGameID = game.PlaceId

-- Check if the current game ID matches any of the target Game IDs
if targetGameIDs[currentGameID] then
    -- Run the corresponding function for the matched game ID
    targetGameIDs[currentGameID]()
else
    -- Send a notification if the game ID doesn't match any of the target IDs
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "KitKat Hub";
        Text = "Game not supported";
        Duration = 5;
    })
end
