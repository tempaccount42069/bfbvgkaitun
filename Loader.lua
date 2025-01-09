-- Define the specific Game ID to check
local targetGameID = 118109254120801 -- Replace this with the desired game ID

-- Get the current game ID
local currentGameID = game.PlaceId

-- Check if the current game ID matches the target ID
if currentGameID == targetGameID then
loadstring(game:HttpGet("https://raw.githubusercontent.com/tempaccount42069/bfbvgkaitun/refs/heads/main/BloxFruitsButVeryGood.lua"))()
else
-- Send a notification if the game ID doesn't match
game:GetService("StarterGui"):SetCore("SendNotification", {
Title = "KitKat Hub";
Text = "Game not supported D:";
Duration = 5;
})
end

