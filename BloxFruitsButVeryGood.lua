local VLib = loadstring(game:HttpGet("https://pastebin.com/raw/dHb0XcV4"))()
local MAINTTL = "KitKat Hub" 
local win = VLib:Window("BFBVG", Color3.fromRGB(196, 40, 28))
local ss1 = win:Tab("HOW TO USE")
local ss = win:Tab("MAIN")
local sss = win:Tab("MISC")
local cred = win:Tab("CREDITS")

local player = game.Players.LocalPlayer
local Remote = game.ReplicatedStorage:WaitForChild("Remote") -- Ensure Remote is defined
local distance = 5
local AutoFarm = false
local fruits = false
local skillsC, skillsX, skillsV, skillsZ = false, false, false, false

-- Utility function to teleport to chests
local function teleportToChestsInCycle()
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

    local chestParts = {}
    for _, child in ipairs(chestsFolder:GetChildren()) do
        if child:IsA("BasePart") and (child.Name == "Chest1" or child.Name == "Chest2" or child.Name == "Chest3") then
            table.insert(chestParts, child)
        end
    end

    if #chestParts == 0 then
        warn("No valid chests found in 'World.Chests'")
        return
    end

    local currentIndex = 1
    while AutoFarm do
        while not player.Character or not player.Character.PrimaryPart do
            wait()
        end

        local chest = chestParts[currentIndex]
        if player.Character and player.Character.PrimaryPart then
            local primaryPart = player.Character.PrimaryPart
            local offset = Vector3.new(0, primaryPart.Size.Y / 2 + 2, 0)
            local targetPosition = chest.Position + offset
            player.Character:SetPrimaryPartCFrame(CFrame.new(targetPosition))
        end

        currentIndex = (currentIndex % #chestParts) + 1
        wait(0.01) -- Adjust the delay as needed
    end
end

-- Main Toggle for Auto Chest Farm
ss:Toggle("Auto Chest Farm (may lag)", function(t)
    AutoFarm = t
    if AutoFarm then
        spawn(teleportToChestsInCycle)
    end
end)

-- Slower Auto Chest Farm
ss:Toggle("Slower Chest Farm (less laggy)", function(t)
    AutoFarm = t
    if AutoFarm then
        spawn(teleportToChestsInCycle)
    end
end)

-- Autofarm Fruits
ss:Toggle("AutoFarm Fruits", function(t)
    fruits = t
    while fruits do
        wait()
        for i, v in pairs(game:GetService("Workspace"):GetDescendants()) do
            if v:IsA("Tool") and v:FindFirstChild("EatScript") then
                pcall(function()
                    firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Handle.TouchInterest.Parent, 0)
                end)
            end
        end
    end
end)

-- Autofarm Mastery
ss:Toggle("Autofarm Mastery (all items)", function(t)
    local autofarm = t
    local fruitsFolder = game.Workspace:FindFirstChild("Fruits")
    if not fruitsFolder then
        warn("Fruits folder not found")
        return
    end

    while autofarm do
        wait()
        for _, v in ipairs(fruitsFolder:GetChildren()) do
            pcall(function()
                Remote:FireServer("EMMFOSS__!ZCNSJNXCSDWQSANBX", "GiveMasteryEXPTO__Smthh", {game.Players.LocalPlayer, v.Name, 99999999, true})
            end)
        end
    end
end)

-- Distance Slider
ss:Slider("Distance", -9, 10, 3, function(t)
    distance = t
end)

-- Spam Skills
local function spamSkill(keyCode)
    return function(t)
        local skillsActive = t
        while skillsActive do
            wait()
            pcall(function()
                local VIM = game:GetService("VirtualInputManager")
                VIM:SendKeyEvent(true, keyCode, false, game)
            end)
        end
    end
end

sss:Toggle("Spam C Skill", spamSkill(Enum.KeyCode.C))
sss:Toggle("Spam X Skill", spamSkill(Enum.KeyCode.X))
sss:Toggle("Spam V Skill", spamSkill(Enum.KeyCode.V))
sss:Toggle("Spam E Skill", spamSkill(Enum.KeyCode.E))
sss:Toggle("Spam Z Skill", spamSkill(Enum.KeyCode.Z))

-- "HOW TO USE" Tab elements
ss1:Button("Destroy Gui", function()
    game.CoreGui["Library"]:Destroy()
end)

ss1:Label("Auto level farm may lag your game, if it does use slower version")
ss1:Label("Use the toggles to enable various autofarm options")
ss1:Label("Make sure you select a fruit to autofarm")

-- Credits
cred:Button("Copy Discord Server", function()
    setclipboard("https://discord.gg/RFnU82Jxgn")
end)
cred:Label("MADE BY kitkat2iskewl")
