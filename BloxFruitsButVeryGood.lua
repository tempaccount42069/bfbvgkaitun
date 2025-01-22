local localPlayer = game:GetService("Players").LocalPlayer
local npc = workspace:WaitForChild("Characters")
local Remote = game:GetService("ReplicatedStorage"):WaitForChild("ALLREMBINDS"):WaitForChild("MainRemoteEvent")
local Library = loadstring(Game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wizard"))()

local PhantomForcesWindow = Library:NewWindow("KitKat Hub")
local KillingCheats = PhantomForcesWindow:NewSection("BFBVG")

local autoAttackEnabled = false

-- Function to handle the auto attack
local function autoAttack()
    while autoAttackEnabled do
        for _, character in pairs(npc:GetChildren()) do
            if character:IsA("Model") and character:FindFirstChild("Humanoid") and character.Name ~= localPlayer.Name then
                Remote:FireServer(
                    "EMMFOSS__!ZCNSJNXCSDWQSANBX", 
                    "Main_DamgeR___", 
                    {character, {Using = "Combat", Damge = 9999, FromPlayer = localPlayer}}
                )
            end
        end
        task.wait(0.5) -- Prevents overloading the server with requests
    end
end

-- UI Toggle for Auto Attack
KillingCheats:CreateToggle("Auto Ez", function(value)
    autoAttackEnabled = value
    if autoAttackEnabled then
        task.spawn(autoAttack) -- Starts auto attack in a separate thread
    end
end)
