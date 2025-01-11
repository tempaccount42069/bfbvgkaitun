-- Gui to Lua
-- Version: 3.2

-- Instances:

local kaitun = Instance.new("ScreenGui")
local main = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")
local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
local TextLabel_2 = Instance.new("TextLabel")
local UITextSizeConstraint_2 = Instance.new("UITextSizeConstraint")
local bluebar = Instance.new("Frame")
local Scripts = Instance.new("Folder")
local ToggleMusic = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local UITextSizeConstraint_3 = Instance.new("UITextSizeConstraint")

--Properties:

kaitun.Name = "kaitun"
kaitun.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
kaitun.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

main.Name = "main"
main.Parent = kaitun
main.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
main.BorderColor3 = Color3.fromRGB(0, 0, 0)
main.BorderSizePixel = 0
main.Position = UDim2.new(0.155844152, 0, 0.0415647924, 0)
main.Size = UDim2.new(0.687445879, 0, 0.129584357, 0)

UICorner.Parent = main

TextLabel.Parent = main
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Size = UDim2.new(1, 0, 0.471698076, 0)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "KitKat Hub"
TextLabel.TextColor3 = Color3.fromRGB(168, 251, 252)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

UITextSizeConstraint.Parent = TextLabel
UITextSizeConstraint.MaxTextSize = 50

TextLabel_2.Parent = main
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Position = UDim2.new(0, 0, 0.528301895, 0)
TextLabel_2.Size = UDim2.new(1, 0, 0.471698076, 0)
TextLabel_2.Font = Enum.Font.SourceSans
TextLabel_2.Text = "Blox Fruits But Very Good | Kaitun"
TextLabel_2.TextColor3 = Color3.fromRGB(168, 251, 252)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 14.000
TextLabel_2.TextWrapped = true

UITextSizeConstraint_2.Parent = TextLabel_2
UITextSizeConstraint_2.MaxTextSize = 50

bluebar.Name = "bluebar"
bluebar.Parent = main
bluebar.BackgroundColor3 = Color3.fromRGB(170, 255, 255)
bluebar.BorderColor3 = Color3.fromRGB(0, 0, 0)
bluebar.BorderSizePixel = 0
bluebar.Position = UDim2.new(0, 0, 0.471698105, 0)
bluebar.Size = UDim2.new(1, 0, 0.0566037707, 0)

Scripts.Name = "Scripts"
Scripts.Parent = main

ToggleMusic.Name = "ToggleMusic"
ToggleMusic.Parent = main
ToggleMusic.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ToggleMusic.BorderColor3 = Color3.fromRGB(0, 0, 0)
ToggleMusic.BorderSizePixel = 0
ToggleMusic.Position = UDim2.new(0, 0, 5.86792469, 0)
ToggleMusic.Size = UDim2.new(1, 0, 0.452830166, 0)
ToggleMusic.Font = Enum.Font.SourceSans
ToggleMusic.Text = "Toggle Music"
ToggleMusic.TextColor3 = Color3.fromRGB(168, 251, 252)
ToggleMusic.TextScaled = true
ToggleMusic.TextSize = 14.000
ToggleMusic.TextWrapped = true

UICorner_2.Parent = ToggleMusic

UITextSizeConstraint_3.Parent = ToggleMusic
UITextSizeConstraint_3.MaxTextSize = 48

-- Scripts:

local function EDXVK_fake_script() -- Scripts.AntiAFK 
	local script = Instance.new('LocalScript', Scripts)

	loadstring(game:HttpGet("https://raw.githubusercontent.com/NoTwistedHere/Roblox/main/AntiAFK.lua"))()
end
coroutine.wrap(EDXVK_fake_script)()
local function UCIWIG_fake_script() -- Scripts.FPSBoost 
	local script = Instance.new('LocalScript', Scripts)

	loadstring(game:HttpGet("https://pastebin.com/raw/4Zcpfp32"))()
end
coroutine.wrap(UCIWIG_fake_script)()
local function PDCRMTE_fake_script() -- Scripts.ChestFarm 
	local script = Instance.new('LocalScript', Scripts)

	local Players = game:GetService("Players")
	local player = Players.LocalPlayer
	local localPlayer = game:GetService("Players").LocalPlayer
	local npc = workspace:WaitForChild("Characters")
	local Remote = game:GetService("ReplicatedStorage"):WaitForChild("ALLREMBINDS"):WaitForChild("MainRemoteEvent")
	local fruits = localPlayer.PlayerStats.Tools
	local chest = workspace.World.Chests
	
	-- Function to teleport the player cyclically through all chests indefinitely
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
		while true do
			local chest = chestParts[currentIndex]
	
			if player.Character and player.Character.PrimaryPart then
				local primaryPart = player.Character.PrimaryPart
	
				-- Calculate offset above the chest
				local offset = Vector3.new(0, primaryPart.Size.Y / 2 + 2, 0) -- Add half the height of the character + 2 studs
				local targetPosition = chest.Position + offset
	
				-- Use pcall to handle potential errors during teleportation
				local success, errorMessage = pcall(function()
					player.Character:SetPrimaryPartCFrame(CFrame.new(targetPosition))
				end)
	
				if not success then
					warn("Error teleporting player: " .. errorMessage)
					return
				end
			else
				warn("Player's character or PrimaryPart is missing")
				return
			end
	
			-- Move to the next chest, cycling back to the first if at the end
			currentIndex = (currentIndex % #chestParts) + 1
	
			-- Add a delay between teleports
			wait(0.55) -- Adjust the time as needed
		end
	end
	
	-- Start teleporting when the script runs
	teleportToChestsInCycle()
	
end
coroutine.wrap(PDCRMTE_fake_script)()
local function DCZBKL_fake_script() -- Scripts.KillNPCS 
	local script = Instance.new('LocalScript', Scripts)

	local Players = game:GetService("Players")
	local localPlayer = Players.LocalPlayer
	local npc = workspace:WaitForChild("Characters")
	local Remote = game:GetService("ReplicatedStorage"):WaitForChild("ALLREMBINDS"):WaitForChild("MainRemoteEvent")
	local fruits = localPlayer.PlayerStats.Tools
	local chest = workspace.World.Chests
	
	for _, character in pairs(npc:GetChildren()) do
		if character:IsA("Model") and character:FindFirstChild("Humanoid") and character.Name ~= localPlayer.Name then
			Remote:FireServer("EMMFOSS__!ZCNSJNXCSDWQSANBX", "Main_DamgeR___", {character, {Using = "Combat", Damge = 9999, FromPlayer = localPlayer}})
		end
	end
	
end
coroutine.wrap(DCZBKL_fake_script)()
local function BBGR_fake_script() -- Scripts.MasteryFarm 
	local script = Instance.new('LocalScript', Scripts)

	local localPlayer = game:GetService("Players").LocalPlayer
	local npc = workspace:WaitForChild("Characters")
	local Remote = game:GetService("ReplicatedStorage"):WaitForChild("ALLREMBINDS"):WaitForChild("MainRemoteEvent")
	local fruits = localPlayer.PlayerStats.Tools
	local chest = workspace.World.Chests
	
	while true do
		for _, v in ipairs(fruits:GetChildren()) do
			Remote:FireServer("EMMFOSS__!ZCNSJNXCSDWQSANBX", "GiveMasteryEXPTO__Smthh", {localPlayer, v.Name, 99999999, true})
		end
		wait(10) -- Add a slight delay to prevent excessive strain on the server
	end
end
coroutine.wrap(BBGR_fake_script)()
local function BZILI_fake_script() -- Scripts.Music 
	local script = Instance.new('LocalScript', Scripts)

	-- Reference to the TextButton and Sound
	local button = script.Parent.Parent.ToggleMusic -- Adjust path if needed
	local sound = nil
	
	-- Function to create and play the sound if it doesn't exist
	local function createSound()
		sound = Instance.new("Sound")
		sound.SoundId = "rbxassetid://1848354536"  -- Replace with the actual sound asset ID
		sound.Parent = workspace
		sound.Looped = true
		sound.Volume = 2
	end
	
	-- Function to toggle the sound
	local function toggleSound()
		if sound == nil then
			createSound()  -- Create the sound if it doesn't exist
			sound:Play()
			button.Text = "Toggle Music"
		elseif sound.IsPlaying then
			sound:Stop()
			button.Text = "Toggle Music"
		else
			sound:Play()
			button.Text = "Toggle Music"
		end
	end
	
	-- Check if sound already exists before creating
	if sound == nil then
		createSound()
		sound:Stop()  -- Start in "OFF" state
		button.Text = "Toggle Music"
	end
	
	-- Connect the toggle function to the button click event
	button.MouseButton1Click:Connect(toggleSound)
	
end
coroutine.wrap(BZILI_fake_script)()
local function VOQFLZ_fake_script() -- Scripts.DestroySounds 
	local script = Instance.new('LocalScript', Scripts)

	local soundsFolder = game.ReplicatedStorage:FindFirstChild("Sounds")
	if soundsFolder then
		soundsFolder:Destroy()
	else
		warn("Sounds folder not found in ReplicatedStorage")
	end
	
end
coroutine.wrap(VOQFLZ_fake_script)()
