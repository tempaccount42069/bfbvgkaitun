local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wizard"))()

local PhantomForcesWindow = Library:NewWindow("Blox Fruits But Very Good")

local KillingCheats = PhantomForcesWindow:NewSection("Main")

-- Button
KillingCheats:CreateButton("Button", function()
    print("HI")
end)

-- Textbox
KillingCheats:CreateTextbox("TextBox", function(text)
    print(text)
end)

-- Toggle: Auto Farm Chest
local isCollectChestActive = false -- Initial toggle state

KillingCheats:CreateToggle("Auto Farm Chest", function(value)
    isCollectChestActive = value -- Update toggle state
    if isCollectChestActive then
        print("Auto Farm Chest activated.")
        startChestCollection()
    else
        print("Auto Farm Chest deactivated.")
    end
end)

-- Function to start chest collection
function startChestCollection()
    local Players = game:GetService("Players")
    local player = Players.LocalPlayer

    -- Validate World and Chests folders
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
    while isCollectChestActive do
        local chest = chestParts[currentIndex]

        if player.Character and player.Character.PrimaryPart then
            local primaryPart = player.Character.PrimaryPart

            -- Calculate offset above the chest
            local offset = Vector3.new(0, primaryPart.Size.Y / 2 + 2, 0)
            local targetPosition = chest.Position + offset
            player.Character:SetPrimaryPartCFrame(CFrame.new(targetPosition))
        else
            warn("Player's character or PrimaryPart is missing")
            return
        end

        -- Move to the next chest, cycling back to the first if at the end
        currentIndex = (currentIndex % #chestParts) + 1

        -- Add a delay between teleports
        wait(0.01) -- Adjust the time as needed
    end
end

-- Dropdown
KillingCheats:CreateDropdown("DropDown", {"Dragon (East) Fruit", "Dragon (West) Fruit", "Kitsune Fruit"}, 2, function(selected)
    local Players = game:GetService("Players")
    local player = Players.LocalPlayer
    local fruitModelsFolder = game.ServerStorage:FindFirstChild("Fruit Models")

    if not fruitModelsFolder then
        warn("Fruit Models folder not found in ServerStorage")
        return
    end

    if player and player:FindFirstChild("Backpack") then
        -- Look for the selected fruit in the Fruit Models folder
        local selectedFruit = fruitModelsFolder:FindFirstChild(selected)
        if selectedFruit and selectedFruit:IsA("Tool") then
            -- Clone the selected fruit and move it to the player's backpack
            local clonedFruit = selectedFruit:Clone()
            clonedFruit.Parent = player.Backpack
            print(selected .. " has been added to your Backpack.")
        else
            warn("Selected fruit (" .. selected .. ") not found or is not a Tool.")
        end
    else
        warn("Player or Backpack not found.")
    end
end)


-- Slider
KillingCheats:CreateSlider("Slider", 0, 100, 15, false, function(value)
    print(value)
end)

-- Color Picker
KillingCheats:CreateColorPicker("Picker", Color3.fromRGB(255, 255, 255), function(color)
    print(color)
end)
