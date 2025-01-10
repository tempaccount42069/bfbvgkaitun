local VLib = loadstring(game:HttpGet("https://pastebin.com/raw/dHb0XcV4"))()

MAINTTL = "KitKat Hub" 

local win = VLib:Window("BFBVG", Color3.fromRGB(196, 40, 28))
local Remote = game:GetService("ReplicatedStorage"):WaitForChild("ALLREMBINDS"):WaitForChild("MainRemoteEvent")
local ss1 = win:Tab("INFO")
local ss = win:Tab("MAIN")
local sss = win:Tab("MISC")
local cred = win:Tab("CREDITS")

ss1:Button("Destroy GUI", function()
    game.CoreGui["Library"]:Destroy()
end)

local Npc_Table = {}     
for i, v in pairs(game:GetService("Workspace"):GetChildren()) do 
    if v:IsA("Model") and v:FindFirstChild("NPC") and v:FindFirstChild("AttackScript") and not table.find(Npc_Table, v.Name) then
        table.insert(Npc_Table, v.Name)
    end 
end 

local tool_table = {}
for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
    if v:IsA("Tool") then
        table.insert(tool_table, v.Name)
    end
end

local distance = 5 

ss1:Label("Auto Chest Farm may lag your game (if it does use slower version)")

local AutoFarmActive = false  -- Global flag to control the Auto Chest Farm loop
local autofarm = false
local mobs = "Npc" -- Default mob to farm
local distance = 5 -- Adjust the distance as necessary

-- Function to teleport the player cyclically through all chests
local function teleportToChestsInCycle(waitTime)
    local Players = game:GetService("Players")
    local player = Players.LocalPlayer

    -- Ensure "World.Chests" exists
    local worldFolder = game.Workspace:FindFirstChild("World")
    if not worldFolder then
        warn("World folder not found in Workspace")
        return
    end

    local chestsFolder = worldFolder:FindFirstChild("Chests")
    if not chestsFolder then
        warn("Chests folder not found in Workspace.World")
        return
    end

    -- Collect all chest parts
    local chestParts = {}
    for _, child in ipairs(chestsFolder:GetChildren()) do
        if child:IsA("BasePart") and (child.Name == "Chest1" or child.Name == "Chest2" or child.Name == "Chest3") then
            table.insert(chestParts, child)
        end
    end

    if #chestParts == 0 then
        warn("No valid chests (Chest1, Chest2, Chest3) found in 'World.Chests'")
        return
    end

    -- Start cycling through chests
    local currentIndex = 1
    while AutoFarmActive do  -- Check if AutoFarmActive is still true
        -- Wait until the player has a valid character
        while not player.Character or not player.Character.PrimaryPart do
            wait()
        end

        local chest = chestParts[currentIndex]
        if player.Character and player.Character.PrimaryPart then
            local primaryPart = player.Character.PrimaryPart

            -- Calculate offset above the chest
            local offset = Vector3.new(0, primaryPart.Size.Y / 2 + 2, 0) -- Add half the height of the character + 2 studs
            local targetPosition = chest.Position + offset
            player.Character:SetPrimaryPartCFrame(CFrame.new(targetPosition))
        else
            warn("Player's character or PrimaryPart is missing")
        end

        -- Move to the next chest, cycling back to the first if at the end
        currentIndex = (currentIndex % #chestParts) + 1

        -- Add a delay between teleports
        wait(waitTime)  -- Adjust the time as needed
    end
end

-- Add the toggles for both "Auto Chest Farm" options
ss:Toggle("Auto Chest Farm (faster but may lag)", function(t)
    AutoFarmActive = t  -- Set AutoFarmActive to the toggle state
    if t then
        teleportToChestsInCycle(0.01)  -- Faster teleportation
    else
        AutoFarmActive = false
    end
end)

ss:Toggle("Slower Auto Chest Farm (use if you lag)", function(t)
    AutoFarmActive = t  -- Set AutoFarmActive to the toggle state
    if t then
        teleportToChestsInCycle(0.92)  -- Slower teleportation
    else
        AutoFarmActive = false
    end
end)

ss:Dropdown("Mobs To Farm", Npc_Table, function(t)
    mobs = t  -- Set the mobs variable from the dropdown
end)

ss:Button("Autofarm Mastery (All Items)", function()
    for _, v in ipairs(game:GetService("Workspace").fruits:GetChildren()) do
        -- Fire the server with the Mastery EXP for each fruit item
        Remote:FireServer("EMMFOSS__!ZCNSJNXCSDWQSANBX", "GiveMasteryEXPTO__Smthh", {localPlayer, v.Name, 99999999, true})
    end
end)

ss:Slider("Distance", -9, 10, 3, function(t)
    distance = t     
end)

ss:Toggle("AutoFarm Fruits", function(t)
    fruits = t 
    while fruits do wait() 
        pcall(function()
            for i, v in pairs(game:GetService("Workspace"):GetDescendants()) do
                if v:IsA("Tool") and v:FindFirstChild("EatScript") then 
                    firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Handle.TouchInterest.Parent, 0)
                end 
            end 
        end)  
    end 
end)

sss:Toggle("Spam C Skill", function(t)
    skillsC = t 
    while skillsC do wait() 
        pcall(function()
            local LP = game:GetService("Players").LocalPlayer
            local VIM = game:GetService("VirtualInputManager")
            VIM:SendKeyEvent(true, Enum.KeyCode.C, false, game)
        end) 
    end
end)

sss:Toggle("Spam X Skill", function(t)
    skillsX = t 
    while skillsX do wait() 
        pcall(function()
            local LP = game:GetService("Players").LocalPlayer
            local VIM = game:GetService("VirtualInputManager")
            VIM:SendKeyEvent(true, Enum.KeyCode.X, false, game)
        end)
    end
end)

sss:Toggle("Spam V Skill", function(t)
    skillsV = t 
    pcall(function()
        while skillsV do wait() 
            local LP = game:GetService("Players").LocalPlayer
            local VIM = game:GetService("VirtualInputManager")
            VIM:SendKeyEvent(true, Enum.KeyCode.V, false, game)
        end 
    end)
end)

sss:Toggle("Spam E Skill", function(t)
    skills = t 
    while skills do wait() 
        pcall(function()
            local LP = game:GetService("Players").LocalPlayer
            local VIM = game:GetService("VirtualInputManager")
            VIM:SendKeyEvent(true, Enum.KeyCode.E, false, game)
        end)
    end
end)

sss:Toggle("Spam Z Skill", function(t)
    skillsZ = t 
    while skillsZ do wait() 
        pcall(function()
            local LP = game:GetService("Players").LocalPlayer
            local VIM = game:GetService("VirtualInputManager")
            VIM:SendKeyEvent(true, Enum.KeyCode.Z, false, game)
        end)
    end
end)

cred:Button("Copy Discord Server", function()
    setclipboard("https://discord.gg/RFnU82Jxgn")
end) 

cred:Label("MADE BY kitkat2iskewl")
