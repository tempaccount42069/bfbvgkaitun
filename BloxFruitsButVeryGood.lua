local VLib = loadstring(game:HttpGet("https://pastebin.com/raw/dHb0XcV4"))()

MAINTTL = "KitKat Hub"

local win = VLib:Window("BFBVG", Color3.fromRGB(196, 40, 28))

local ss1 = win:Tab("INFO")
local ss = win:Tab("MAIN")
local sss = win:Tab("MISC")
local cred = win:Tab("CREDITS")

-- Define the Remote (ensure this is correct)
local Remote = game:GetService("ReplicatedStorage"):WaitForChild("ALLREMBINDS"):WaitForChild("MainRemoteEvent")

-- Label for the info section
ss1:Label("Auto Chest Farm may lag your game (if it does use slower version)")

-- Add a "Destroy GUI" button
ss1:Button("Destroy GUI", function()
    game.CoreGui["Library"]:Destroy()
end)

-- Fruits list for the dropdown
local fruits = {"Dragon (West) Fruit", "Dragon (East) Fruit", "Flame Fruit", "Kitsune Fruit", "Leopard Fruit", "Dough Fruit", "Magma Fruit", "Venom Fruit", "Light Fruit", "Ice Fruit", "Hito Fruit", "Control Fruit"}

-- Create the dropdown for selecting fruits
ss:CreateDropdown("Select Fruit", fruits, 1, function(selectedFruit)
    print("Selected Fruit: " .. selectedFruit)  -- Debugging the selected fruit
    local args = {
        [1] = "EMMFOSS__!ZCNSJNXCSDWQSANBX",
        [2] = "AddToolToBackpackKKK",
        [3] = {
            [1] = selectedFruit,
            [2] = game.Players.LocalPlayer.Backpack,
            [3] = true,
            [4] = true
        }
    }

    -- Fire the server remote event with the selected fruit
    Remote:FireServer(unpack(args))
end)

-- Auto Chest Farm Setup (Keeping this intact)
local AutoFarmActive = false  -- Global flag to control the Auto Chest Farm loop

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

-- Other UI elements like buttons, toggles, and labels can go below, using the same pattern

cred:Button("Copy Discord Server", function()
    setclipboard("https://discord.gg/RFnU82Jxgn")
end)

cred:Label("MADE BY kitkat2iskewl")
