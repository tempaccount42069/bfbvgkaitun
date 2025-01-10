local VLib = loadstring(game:HttpGet("https://pastebin.com/raw/dHb0XcV4"))()


		MAINTTL = "KitKat Hub" 

local win = VLib:Window("BFBVG", Color3.fromRGB(196, 40, 28))

local ss1 = win:Tab("HOW TO USE")
local ss = win:Tab("MAIN")
local sss = win:Tab("MISC")
local cred = win:Tab("CREDITS")

ss1:Button("Destroy Gui",function()
game.CoreGui["Library"]:Destroy()
end)

local Npc_Table = {}     
for i, v in pairs(game.Workspace.Characters:GetChildren()) do 
    if v:IsA("Model") and string.match(v.Name, "^dummey%d+$") and not table.find(Npc_Table, v.Name) then
        table.insert(Npc_Table, v.Name)
    end 
end

-- Define tool_table to store tools found in the backpack
local tool_table = {}

-- Populate tool_table with tools in the player's backpack
local player = game.Players.LocalPlayer
for i, v in pairs(player.Backpack:GetChildren()) do
    if v:IsA("Tool") then
        table.insert(tool_table, v.Name) -- Add tool name to the table
    end
end

-- Adding default fruit options
local fruit_options = {
    "Dragon (West) Fruit", "Dragon (East) Fruit", "Flame Fruit", 
    "Kitsune Fruit", "Leopard Fruit", "Dough Fruit", 
    "Magma Fruit", "Venom Fruit", "Light Fruit", 
    "Ice Fruit", "Hito Fruit", "Control Fruit"
}

-- Combine both tool_table and fruit_options
for _, fruit in ipairs(fruit_options) do
    table.insert(tool_table, fruit)
end

-- Create Dropdown menu with combined options
Section:CreateDropdown("Select Fruit", tool_table, 1, function(selected_item)
    -- Prepare arguments for the remote event
    local args = {
        [1] = "EMMFOSS__!ZCNSJNXCSDWQSANBX",
        [2] = "AddToolToBackpackKKK",
        [3] = {
            [1] = selected_item,       -- The selected item from the dropdown
            [2] = player.Backpack,     -- Reference to the player's backpack
            [3] = true,
            [4] = true
        }
    }

    -- Fire the remote event
    Remote:FireServer(unpack(args))
end)

    
    distance = 5 
    
    
     ss1:Label("Auto level farm may lag your game, if it does use slower version")

    
local Players = game:GetService("Players")
local player = Players.LocalPlayer
local AutoFarm = false -- Controls the Auto Chest Farm loop

-- UI Library Toggle
ss:Toggle("Auto Chest Farm (may lag)", function(t)
    AutoFarm = t

    -- Function to teleport the player cyclically through all chests
    local function teleportToChestsInCycle()
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

        while AutoFarm do
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
            wait(0.01) -- Adjust the time as needed
        end
    end

    -- Stop the loop when toggled off
    if AutoFarm then
        spawn(teleportToChestsInCycle) -- Start the teleportation loop in a coroutine
    end
end)

local Players = game:GetService("Players")
local player = Players.LocalPlayer
local AutoFarm = false -- Controls the Auto Chest Farm loop

-- UI Library Toggle
ss:Toggle("Slower Chest Farm (less laggy)", function(t)
    AutoFarm = t

    -- Function to teleport the player cyclically through all chests
    local function teleportToChestsInCycle()
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

        while AutoFarm do
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
            wait(0.92) -- Adjust the time as needed
        end
    end

    -- Stop the loop when toggled off
    if AutoFarm then
        spawn(teleportToChestsInCycle) -- Start the teleportation loop in a coroutine
    end
end)

local Section = ss:Section("Give Mastery")

ss:Toggle("Autofarm Mastery (all items)", function(t)
    local autofarm = t

    if autofarm then
        local fruits = game.Workspace:FindFirstChild("Fruits") -- Make sure fruits folder exists
        if not fruits then
            warn("Fruits folder not found in Workspace")
            return
        end

        -- Loop through each fruit and give mastery
        while autofarm do
            wait() -- Ensure it runs in a loop while the toggle is on

            for _, v in ipairs(fruits:GetChildren()) do
                pcall(function()
                    -- Fire the server to give mastery for each fruit item
                    Remote:FireServer("EMMFOSS__!ZCNSJNXCSDWQSANBX", "GiveMasteryEXPTO__Smthh", {game.Players.LocalPlayer, v.Name, 99999999, true})
                end)
            end
        end
    end
end)

 ss:Slider("Distance",-9,10,3,function(t)
 distance = t     
 end)
 
 ss:Toggle("AutoFarm Fruits",function(t)
fruits = t 
 while fruits do wait() 
     pcall(function()
for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
    if v:IsA("Tool") and v:FindFirstChild("EatScript") then 
         firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Handle.TouchInterest.Parent, 0)
            end 
        end 
     end)  
  end 
end) 
 

sss:Toggle("Spam C Skill",function(t)
skillsC = t 
while skillsC do wait() 
    pcall(function()
            local LP = game:GetService("Players").LocalPlayer
            local VIM = game:GetService("VirtualInputManager")
         VIM:SendKeyEvent(true, Enum.KeyCode.C, false, game)
        end) 
    end
end)
            
sss:Toggle("Spam X Skill",function(t)
skillsX = t 
while skillsX do wait() 
    pcall(function()
            local LP = game:GetService("Players").LocalPlayer
            local VIM = game:GetService("VirtualInputManager")
         VIM:SendKeyEvent(true, Enum.KeyCode.X, false, game)
        end)
    end
end)
            
sss:Toggle("Spam V Skill",function(t)
skillsV = t 
    pcall(function()
while skillsV do wait() 
            local LP = game:GetService("Players").LocalPlayer
            local VIM = game:GetService("VirtualInputManager")
         VIM:SendKeyEvent(true, Enum.KeyCode.V, false, game)
        end 
    end)
end)
        
sss:Toggle("Spam E Skill",function(t)
skills = t 
while skills do wait() 
    pcall(function()
            local LP = game:GetService("Players").LocalPlayer
            local VIM = game:GetService("VirtualInputManager")
         VIM:SendKeyEvent(true, Enum.KeyCode.E, false, game)
       end)
    end
end)
          
sss:Toggle("Spam Z Skill",function(t)
skillsZ = t 
while skillsZ do wait() 
    pcall(function()
            local LP = game:GetService("Players").LocalPlayer
            local VIM = game:GetService("VirtualInputManager")
         VIM:SendKeyEvent(true, Enum.KeyCode.Z, false, game)
        end)
     end
end)

cred:Button("Copy Discord Server",function()
setclipboard("https://discord.gg/RFnU82Jxgn")
end) 

cred:Label("MADE BY kitkat2iskewl")
