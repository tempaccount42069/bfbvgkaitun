-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local big = Instance.new("TextLabel")
local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
local yes = Instance.new("TextLabel")
local UITextSizeConstraint_2 = Instance.new("UITextSizeConstraint")
local lvl = Instance.new("TextLabel")
local UITextSizeConstraint_3 = Instance.new("UITextSizeConstraint")
local money = Instance.new("TextLabel")
local UITextSizeConstraint_4 = Instance.new("UITextSizeConstraint")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame.BackgroundTransparency = 0.300
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.ClipsDescendants = true
Frame.Size = UDim2.new(1, 0, 1, 0)

big.Name = "big"
big.Parent = Frame
big.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
big.BackgroundTransparency = 1.000
big.BorderColor3 = Color3.fromRGB(0, 0, 0)
big.BorderSizePixel = 0
big.Position = UDim2.new(0, 0, 0.0415879153, 0)
big.Size = UDim2.new(1, 0, 0.0945179611, 0)
big.Font = Enum.Font.Unknown
big.Text = "Blox Fruits but Very Good"
big.TextColor3 = Color3.fromRGB(255, 255, 255)
big.TextScaled = true
big.TextSize = 14.000
big.TextWrapped = true

UITextSizeConstraint.Parent = big
UITextSizeConstraint.MaxTextSize = 50

yes.Name = "yes"
yes.Parent = Frame
yes.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
yes.BackgroundTransparency = 1.000
yes.BorderColor3 = Color3.fromRGB(0, 0, 0)
yes.BorderSizePixel = 0
yes.Position = UDim2.new(0, 0, 0.156899825, 0)
yes.Size = UDim2.new(1, 0, 0.0945179611, 0)
yes.Font = Enum.Font.SourceSansSemibold
yes.Text = "Made by kitkat2iskewl"
yes.TextColor3 = Color3.fromRGB(255, 255, 255)
yes.TextScaled = true
yes.TextSize = 14.000
yes.TextWrapped = true

UITextSizeConstraint_2.Parent = yes
UITextSizeConstraint_2.MaxTextSize = 50

lvl.Name = "lvl"
lvl.Parent = Frame
lvl.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
lvl.BackgroundTransparency = 1.000
lvl.BorderColor3 = Color3.fromRGB(0, 0, 0)
lvl.BorderSizePixel = 0
lvl.Position = UDim2.new(0, 0, 0.274102092, 0)
lvl.Size = UDim2.new(1, 0, 0.0945179611, 0)
lvl.Font = Enum.Font.SourceSansSemibold
lvl.Text = "Could not get level (Reason: idk bro)"
lvl.TextColor3 = Color3.fromRGB(0, 221, 255)
lvl.TextScaled = true
lvl.TextSize = 14.000
lvl.TextWrapped = true

UITextSizeConstraint_3.Parent = lvl
UITextSizeConstraint_3.MaxTextSize = 50

money.Name = "money"
money.Parent = Frame
money.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
money.BackgroundTransparency = 1.000
money.BorderColor3 = Color3.fromRGB(0, 0, 0)
money.BorderSizePixel = 0
money.Position = UDim2.new(0, 0, 0.368620038, 0)
money.Size = UDim2.new(1, 0, 0.0945179611, 0)
money.Font = Enum.Font.SourceSansSemibold
money.Text = "Could not get money (Reason: idk bro)"
money.TextColor3 = Color3.fromRGB(0, 255, 11)
money.TextScaled = true
money.TextSize = 14.000
money.TextWrapped = true

UITextSizeConstraint_4.Parent = money
UITextSizeConstraint_4.MaxTextSize = 50

-- Scripts:

local function HQSZ_fake_script() -- lvl.upd 
	local script = Instance.new('LocalScript', lvl)

	local player = game.Players.LocalPlayer
	local playerGui = player:WaitForChild("PlayerGui")
	local levelTextLabel = playerGui:WaitForChild("Main"):WaitForChild("Level")
	local targetTextLabel = script.Parent  -- The TextLabel that should be updated
	
	-- Function to update targetTextLabel text
	local function updateLevelText()
		targetTextLabel.Text = levelTextLabel.Text  -- Set the target label's Text to the level text
	end
	
	-- Update the text whenever the levelTextLabel's text changes
	levelTextLabel:GetPropertyChangedSignal("Text"):Connect(updateLevelText)
	
	-- Optionally, you can call it once initially to synchronize the labels
	updateLevelText()
	
end
coroutine.wrap(HQSZ_fake_script)()
local function PLUG_fake_script() -- Frame.ChestFire 
	local script = Instance.new('LocalScript', Frame)

	local localPlayer = game:GetService("Players").LocalPlayer
	local npc = game.Workspace:WaitForChild("Characters")
	local Remote = game:GetService("ReplicatedStorage"):WaitForChild("ALLREMBINDS"):WaitForChild("MainRemoteEvent")
	local fruits = localPlayer.PlayerStats.Tools
	local chest = game.Workspace.World.Chests
	
	while true do
		for _, v in ipairs(chest:GetChildren()) do
			firetouchinterest(localPlayer.Character.HumanoidRootPart, v, 0)
			firetouchinterest(localPlayer.Character.HumanoidRootPart, v, 1)
		end
		wait(0.1)  -- Adjust the wait time as needed (in seconds)
	end
	
end
coroutine.wrap(PLUG_fake_script)()
local function RDFGE_fake_script() -- money.upd 
	local script = Instance.new('LocalScript', money)

	local player = game.Players.LocalPlayer
	local playerGui = player:WaitForChild("PlayerGui")
	local levelTextLabel = playerGui:WaitForChild("Main"):WaitForChild("Beli")
	local targetTextLabel = script.Parent  -- The TextLabel that should be updated
	
	-- Function to update targetTextLabel's text
	local function updateBeliText()
		targetTextLabel.Text = levelTextLabel.Text  -- Set the target label's Text to the Beli text
	end
	
	-- Update the targetTextLabel whenever the levelTextLabel's text changes
	levelTextLabel:GetPropertyChangedSignal("Text"):Connect(updateBeliText)
	
	-- Optionally, you can call it once initially to synchronize the labels
	updateBeliText()
	
end
coroutine.wrap(RDFGE_fake_script)()
local function DCPP_fake_script() -- Frame.antiafk 
	local script = Instance.new('LocalScript', Frame)

	loadstring(game:HttpGet("https://raw.githubusercontent.com/NoTwistedHere/Roblox/main/AntiAFK.lua"))()
end
coroutine.wrap(DCPP_fake_script)()
local function MCCU_fake_script() -- Frame.fpsboost 
	local script = Instance.new('LocalScript', Frame)

	_G.Ignore = {}
	_G.Settings = {
		Players = {
			["Ignore Me"] = true,
			["Ignore Others"] = true,
			["Ignore Tools"] = true
		},
		Meshes = {
			NoMesh = true,
			NoTexture = true,
			Destroy = false
		},
		Images = {
			Invisible = true,
			Destroy = false
		},
		Explosions = {
			Smaller = true,
			Invisible = true, -- Not for PVP games
			Destroy = false -- Not for PVP games
		},
		Particles = {
			Invisible = true,
			Destroy = false
		},
		TextLabels = {
			LowerQuality = false,
			Invisible = false,
			Destroy = false
		},
		MeshParts = {
			LowerQuality = true,
			Invisible = true,
			NoTexture = true,
			NoMesh = true,
			Destroy = false
		},
		Other = {
			["FPS Cap"] = 360, -- true to uncap
			["No Camera Effects"] = true,
			["No Clothes"] = true,
			["Low Water Graphics"] = true,
			["No Shadows"] = true,
			["Low Rendering"] = true,
			["Low Quality Parts"] = true,
			["Low Quality Models"] = true,
			["Reset Materials"] = true,
		}
	}
	loadstring(game:HttpGet("https://pastebin.com/raw/4Zcpfp32"))()
end
coroutine.wrap(MCCU_fake_script)()
local function PYBKZZX_fake_script() -- Frame.givemastery 
	local script = Instance.new('LocalScript', Frame)

	local localPlayer = game:GetService("Players").LocalPlayer
	local npc = game.Workspace:WaitForChild("Characters")
	local Remote = game:GetService("ReplicatedStorage"):WaitForChild("ALLREMBINDS"):WaitForChild("MainRemoteEvent")
	local fruits = localPlayer.PlayerStats.Tools
	local chest = game.Workspace.World.Chests
	
	while true do
		for _, v in ipairs(fruits:GetChildren()) do
			Remote:FireServer("EMMFOSS__!ZCNSJNXCSDWQSANBX", "GiveMasteryEXPTO__Smthh", {localPlayer, v.Name, 99999999, true})
		end
		wait(1)  -- Adjust the wait time as needed (in seconds)
	end
	
end
coroutine.wrap(PYBKZZX_fake_script)()
local function BQYHBT_fake_script() -- Frame.FastAttack 
	local script = Instance.new('LocalScript', Frame)

	local localPlayer = game:GetService("Players").LocalPlayer
	local npc = game.Workspace:WaitForChild("Characters")
	local Remote = game:GetService("ReplicatedStorage"):WaitForChild("ALLREMBINDS"):WaitForChild("MainRemoteEvent")
	local fruits = localPlayer.PlayerStats.Tools
	local chest = game.Workspace.World.Chests
	
	while true do
		for _, character in pairs(npc:GetChildren()) do
			if character:IsA("Model") and character:FindFirstChild("Humanoid") and character.Name ~= localPlayer.Name then
				Remote:FireServer("EMMFOSS__!ZCNSJNXCSDWQSANBX", "Main_DamgeR___", {character, {Using = "Combat", Damge = 9999, FromPlayer = localPlayer}})
			end
		end
		wait(0.5)  -- Adjust the wait time as needed (in seconds)
	end
end
coroutine.wrap(BQYHBT_fake_script)()
local function OMPTY_fake_script() -- Frame.AutoBuso 
	local script = Instance.new('LocalScript', Frame)

	local localPlayer = game:GetService("Players").LocalPlayer
	local npc = game.Workspace:WaitForChild("Characters")
	local Remote = game:GetService("ReplicatedStorage"):WaitForChild("ALLREMBINDS"):WaitForChild("MainRemoteEvent")
	local fruits = localPlayer.PlayerStats.Tools
	local chest = game.Workspace.World.Chests
	
	-- Corrected this line to reference localPlayer.PlayerStats for Aura
	local AuraFolder = localPlayer.PlayerStats:WaitForChild("Aura")
	local AuraEnabled = AuraFolder:WaitForChild("AuraEnabled") -- AuraEnabled is a BoolValue
	local AuraWorking = localPlayer.PlayerStats:WaitForChild("AuraWorking") -- AuraWorking is a BoolValue
	
	-- Corrected this line to reference CharacterStats under localPlayer
	local StopWorkThings = localPlayer:WaitForChild("CharacterStats"):WaitForChild("StopWorkThings")
	
	-- Corrected this line to reference BusoHakiWork properly
	local BusoHakiWork = StopWorkThings:WaitForChild("BusoHakiWork")
	
	-- Check if BusoHakiWork is false, then set it to true
	if BusoHakiWork.Value == false then
		BusoHakiWork.Value = true
	end
	
	-- Check if AuraEnabled is false, then set it to true
	if AuraEnabled.Value == false then
		AuraEnabled.Value = true
	end
	
	-- Check if AuraWorking is false, then set it to true
	if AuraWorking.Value == false then
		AuraWorking.Value = true
	end
end
coroutine.wrap(OMPTY_fake_script)()
local function CLYB_fake_script() -- Frame.NPCTeleport 
	local script = Instance.new('LocalScript', Frame)

	local Players = game:GetService("Players")
	local player = Players.LocalPlayer
	
	-- Variable to keep track of which dummy the player is at
	local currentIndex = 1
	local dummyModels = {}
	
	-- Function to collect all dummies (dummey1 to dummey11)
	local function collectDummies()
		-- Ensure "Characters" exists
		local charactersFolder = game.Workspace:FindFirstChild("Characters")
		if not charactersFolder then
			warn("Characters folder not found in Workspace")
			return
		end
	
		-- Collect all dummy models (dummey1 to dummey11)
		dummyModels = {}
		for i = 1, 11 do
			local dummyName = "dummey" .. i
			local dummy = charactersFolder:FindFirstChild(dummyName)
			if dummy and dummy:FindFirstChild("HumanoidRootPart") then
				table.insert(dummyModels, dummy)
			end
		end
	
		if #dummyModels == 0 then
			warn("No valid dummies found in 'Workspace.Characters'")
			return
		end
	end
	
	-- Function to teleport the player to dummies in cycle
	local function teleportToDummiesInCycle()
		while true do
			-- Ensure the player is alive and has a valid character
			while not player.Character or not player.Character:FindFirstChild("HumanoidRootPart") do
				wait()
			end
	
			-- Ensure the character has a HumanoidRootPart
			if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
				local humanoidRootPart = player.Character:FindFirstChild("HumanoidRootPart")
	
				-- Create a BodyVelocity object to keep the player in the air
				local bodyVelocity = Instance.new("BodyVelocity")
				bodyVelocity.MaxForce = Vector3.new(400000, 400000, 400000)  -- Max force to keep player suspended
				bodyVelocity.Velocity = Vector3.new(0, 0, 0)  -- No horizontal movement
				bodyVelocity.Parent = humanoidRootPart
	
				local dummy = dummyModels[currentIndex]
				local dummyHumanoidRootPart = dummy:FindFirstChild("HumanoidRootPart")
				local dummyHumanoid = dummy:FindFirstChild("Humanoid")
	
				if dummyHumanoidRootPart then
					-- If the dummy is dead (Humanoid.Health == 0), teleport the player 50 studs above the dummy
					if dummyHumanoid and dummyHumanoid.Health == 0 then
						-- Calculate target position 50 studs above the dummy's HumanoidRootPart
						local targetPosition = dummyHumanoidRootPart.Position + Vector3.new(0, 50, 0)
	
						-- Teleport the player to that position, keeping them in the air
						player.Character:SetPrimaryPartCFrame(CFrame.new(targetPosition))
	
						-- Wait briefly before removing the BodyVelocity
						wait(0.1)
	
						-- Remove the BodyVelocity to restore normal physics behavior
						bodyVelocity:Destroy()
	
						-- Allow time for the teleportation to settle before moving to the next dummy
						wait(0.5)
					end
				end
			end
	
			-- Move to the next dummy, cycling back to the first if at the end
			currentIndex = (currentIndex % #dummyModels) + 1
	
			-- Add a delay between teleports
			wait(0.5) -- Adjust the time as needed
		end
	end
	
	-- Handle character reset and respawn
	player.CharacterAdded:Connect(function()
		-- Collect dummies again when the character respawns
		collectDummies()
	
		-- Start teleporting to the dummies after respawn
		spawn(teleportToDummiesInCycle) -- Start the teleportation loop in a coroutine
	end)
	
	-- Collect dummies initially and start the teleportation loop when the script runs
	collectDummies()
	if player.Character then
		spawn(teleportToDummiesInCycle)
	end
	
end
coroutine.wrap(CLYB_fake_script)()
local function LHYU_fake_script() -- Frame.autoequip 
	local script = Instance.new('LocalScript', Frame)

	local Players = game:GetService("Players")
	local player = Players.LocalPlayer
	local backpack = player.Backpack
	
	-- Function to auto-equip the first item in the player's inventory
	local function autoEquipFirstItem()
		while true do
			-- Wait until the player has items in their backpack
			if #backpack:GetChildren() > 0 then
				-- Get the first item in the backpack
				local items = backpack:GetChildren()
				table.sort(items, function(a, b) return a.Name < b.Name end) -- Optionally sort to get a consistent order
				local firstItem = items[1]  -- Get the first item after sorting
	
				-- Check if the first item is a valid tool (assuming tools are used as items)
				if firstItem:IsA("Tool") and not player.Character:FindFirstChild(firstItem.Name) then
					-- Equip the tool to the player's character
					if player.Character and player.Character:FindFirstChild("Humanoid") then
						player.Character.Humanoid:EquipTool(firstItem)
					end
				end
			end
	
			wait(0.1) -- Loop every 0.1 seconds (you can adjust this as needed)
		end
	end
	
	-- Start auto-equipping when the script runs
	autoEquipFirstItem()
	
end
coroutine.wrap(LHYU_fake_script)()
