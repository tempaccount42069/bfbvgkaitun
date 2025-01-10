-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local big = Instance.new("TextLabel")
local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
local yes = Instance.new("TextLabel")
local UITextSizeConstraint_2 = Instance.new("UITextSizeConstraint")

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
yes.Text = "Kaitun | KitKat Hub"
yes.TextColor3 = Color3.fromRGB(255, 255, 255)
yes.TextScaled = true
yes.TextSize = 14.000
yes.TextWrapped = true

UITextSizeConstraint_2.Parent = yes
UITextSizeConstraint_2.MaxTextSize = 50

-- Scripts:

local function GRXV_fake_script() -- Frame.ChestFire 
	local script = Instance.new('LocalScript', Frame)

	local Players = game:GetService("Players")
	local localPlayer = Players.LocalPlayer
	local npc = game.Workspace:WaitForChild("Characters")
	local Remote = game:GetService("ReplicatedStorage"):WaitForChild("ALLREMBINDS"):WaitForChild("MainRemoteEvent")
	local fruits = localPlayer.PlayerStats.Tools
	local chest = game.Workspace.World.Chests
	
	-- Wait for the character and HumanoidRootPart to be loaded
	local function waitForCharacter()
		while not localPlayer.Character or not localPlayer.Character:FindFirstChild("HumanoidRootPart") do
			wait(0.1) -- Wait for the character to load
		end
	end
	
	waitForCharacter()  -- Wait for the player character to be available
	
	local character = localPlayer.Character
	local humanoidRootPart = character.HumanoidRootPart
	
	while true do
		-- Make sure the character and HumanoidRootPart are still available
		if character and character:FindFirstChild("HumanoidRootPart") then
			-- Iterate through all chests
			for _, chestInstance in ipairs(chest:GetChildren()) do
				-- Fire touch events on the chests
				firetouchinterest(humanoidRootPart, chestInstance, 0)
				firetouchinterest(humanoidRootPart, chestInstance, 1)
			end
		end
		wait(0.1)  -- Adjust the wait time as needed (in seconds)
	end
	
end
coroutine.wrap(GRXV_fake_script)()
local function YUPEYAH_fake_script() -- Frame.antiafk 
	local script = Instance.new('LocalScript', Frame)

	loadstring(game:HttpGet("https://raw.githubusercontent.com/NoTwistedHere/Roblox/main/AntiAFK.lua"))()
end
coroutine.wrap(YUPEYAH_fake_script)()
local function TVNWK_fake_script() -- Frame.fpsboost 
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
coroutine.wrap(TVNWK_fake_script)()
local function YQXXC_fake_script() -- Frame.givemastery 
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
coroutine.wrap(YQXXC_fake_script)()
local function ZZDV_fake_script() -- Frame.FastAttack 
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
		wait(0.45)  -- Adjust the wait time as needed (in seconds)
	end
end
coroutine.wrap(ZZDV_fake_script)()
local function UNOOCS_fake_script() -- Frame.AutoBuso 
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
coroutine.wrap(UNOOCS_fake_script)()
local function YUGTCVT_fake_script() -- Frame.NPCTeleport 
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
			local dummyName = "dummey" .. i  -- Using "dummey" as specified
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
				local humanoidRootPart = player.Character.HumanoidRootPart
	
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
					elseif dummyHumanoid.Health > 0 then
						-- If the dummy is alive, teleport the player directly to the dummy's HumanoidRootPart
						player.Character:SetPrimaryPartCFrame(dummyHumanoidRootPart.CFrame)
						wait(0.5)  -- Allow time for the teleportation
					end
				end
			end
	
			-- Move to the next dummy, cycling back to the first if at the end
			currentIndex = (currentIndex % #dummyModels) + 1
	
			-- Add a delay between teleports
			wait(0.5) -- Adjust the time as needed (increase delay between teleportations)
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
coroutine.wrap(YUGTCVT_fake_script)()
local function AMHEP_fake_script() -- Frame.autoequip 
	local script = Instance.new('LocalScript', Frame)

	local Players = game:GetService("Players")
	local player = Players.LocalPlayer
	local backpack = player.Backpack
	
	-- Function to auto-equip the first item in the player's inventory
	local function autoEquipFirstItem()
		-- Wait for the player's character to be fully loaded
		player.CharacterAdded:Wait()
	
		-- Ensure the player's character is loaded
		local character = player.Character
		while not character or not character:FindFirstChild("Humanoid") do
			wait(0.1)
			character = player.Character
		end
	
		while true do
			-- Wait until the player has items in their backpack
			if #backpack:GetChildren() > 0 then
				-- Get the first item in the backpack
				local items = backpack:GetChildren()
				table.sort(items, function(a, b) return a.Name < b.Name end) -- Optionally sort to get a consistent order
				local firstItem = items[1]  -- Get the first item after sorting
	
				-- Check if the first item is a valid tool (assuming tools are used as items)
				if firstItem:IsA("Tool") and not character:FindFirstChild(firstItem.Name) then
					-- Equip the tool to the player's character
					local humanoid = character:FindFirstChild("Humanoid")
					if humanoid then
						humanoid:EquipTool(firstItem)
					end
				end
			end
	
			wait(0.1) -- Loop every 0.1 seconds (you can adjust this as needed)
		end
	end
	
	-- Start auto-equipping when the script runs
	autoEquipFirstItem()
	
end
coroutine.wrap(AMHEP_fake_script)()
