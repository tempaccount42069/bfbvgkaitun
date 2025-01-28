local UILibrary = loadstring(game:HttpGet('https://pastebin.com/raw/j9sSVhdF'))()
local MainUI = UILibrary:Load("KitKat Hub | BFBVG")
local AutoFarm = MainUI:CreatePage("Farming",true,true)
local Teleport = MainUI:CreatePage("Teleport",true,false)
local localPlayer = game:GetService("Players").LocalPlayer
local npc = workspace:WaitForChild("Characters")
local Remote = game:GetService("ReplicatedStorage"):WaitForChild("ALLREMBINDS"):WaitForChild("MainRemoteEvent")
local fruits = localPlayer.PlayerStats.Tools
local chest = workspace.World.Chests

-- Ensure this is a LocalScript placed in the PlayerScripts or StarterPlayerScripts
local player = game.Players.LocalPlayer

-- Wait for the GUI hierarchy to load
local guiButton = player:WaitForChild("PlayerGui")
    :WaitForChild("Main")
    :WaitForChild("ChooseTeam")
    :WaitForChild("Container")
    :WaitForChild("Pirates")

-- Function to simulate clicks
local function simulateClick()
    guiButton.MouseButton1Click:Fire()
end

-- Loop to repeatedly simulate clicks
while true do
    simulateClick() -- Simulate a click
    task.wait(0.5) -- Wait for 1 second (adjust the delay as needed)
end


local Count = 0
local Player = game:GetService("Players").LocalPlayer

AutoFarm:CreateToggle("Auto Farm Levels", function(v)
    getgenv().CollectChests = v
end)

spawn(function()
    while true do
        if getgenv().CollectChests then
            for _, v in ipairs(chest:GetChildren()) do
                if v:IsA("Part") then
                    firetouchinterest(localPlayer.Character.HumanoidRootPart, v, 0)
                    firetouchinterest(localPlayer.Character.HumanoidRootPart, v, 1)
                end
            end
        end
        wait(0.1)
    end
end)
