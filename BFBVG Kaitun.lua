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
local quote = Instance.new("TextLabel")
local UITextSizeConstraint_4 = Instance.new("UITextSizeConstraint")
local money = Instance.new("TextLabel")
local UITextSizeConstraint_5 = Instance.new("UITextSizeConstraint")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.ResetOnSpawn = false

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
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
yes.Text = "Farm levels while going outside :)"
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
lvl.TextColor3 = Color3.fromRGB(255, 255, 255)
lvl.TextScaled = true
lvl.TextSize = 14.000
lvl.TextWrapped = true

UITextSizeConstraint_3.Parent = lvl
UITextSizeConstraint_3.MaxTextSize = 50

quote.Name = "quote"
quote.Parent = Frame
quote.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
quote.BackgroundTransparency = 1.000
quote.BorderColor3 = Color3.fromRGB(0, 0, 0)
quote.BorderSizePixel = 0
quote.Position = UDim2.new(0, 0, 0.882797718, 0)
quote.Size = UDim2.new(1, 0, 0.0945179611, 0)
quote.Font = Enum.Font.SourceSansSemibold
quote.Text = ""
quote.TextColor3 = Color3.fromRGB(255, 255, 255)
quote.TextScaled = true
quote.TextSize = 14.000
quote.TextWrapped = true

UITextSizeConstraint_4.Parent = quote
UITextSizeConstraint_4.MaxTextSize = 50

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
money.TextColor3 = Color3.fromRGB(255, 255, 255)
money.TextScaled = true
money.TextSize = 14.000
money.TextWrapped = true

UITextSizeConstraint_5.Parent = money
UITextSizeConstraint_5.MaxTextSize = 50

-- Scripts:

local function HCKQS_fake_script() -- lvl.LocalScript 
	local script = Instance.new('LocalScript', lvl)

	local player = game.Players.LocalPlayer
	local levelTextLabel = player.PlayerGui:WaitForChild("Main"):WaitForChild("Level")
	local targetTextLabel = script.Parent  -- The TextLabel that should be updated
	
	while true do
		targetTextLabel.Text = levelTextLabel.Text  -- Set the target label's Text to the level text
		wait(0.01)  -- Wait a short time before updating again (you can adjust this for performance)
	end
	
end
coroutine.wrap(HCKQS_fake_script)()
local function NFBAHLR_fake_script() -- quote.cycle 
	local script = Instance.new('LocalScript', quote)

	local textLabel = script.Parent  -- Reference to the TextLabel
	local texts = {"“Talent is a pursued interest. Anything that you're willing to practice, you can do.” - Bob Ross", "“Be yourself; everyone else is already taken.” - Oscar Wilde", "“A room without books is like a body without a soul.” - Marcus Tullius Cicero ", "“Be who you are and say what you feel, because those who mind don't matter, and those who matter don't mind.” - Bernard M. Baruch "}  -- List of texts to cycle through
	local textIndex = 1  -- Start with the first text
	local waitTime = 60  -- Time to wait between changing text (in seconds)
	
	while true do
		textLabel.Text = texts[textIndex]  -- Set the TextLabel's text to the current text in the list
		textIndex = textIndex + 1  -- Move to the next text in the list
	
		-- If we've reached the end of the list, start over from the first text
		if textIndex > #texts then
			textIndex = 1
		end
	
		wait(waitTime)  -- Wait before changing the text again
	end
	
end
coroutine.wrap(NFBAHLR_fake_script)()
local function DKSHJY_fake_script() -- Frame.lvlfarm 
	local script = Instance.new('LocalScript', Frame)

	local Players = game:GetService("Players")
	local player = Players.LocalPlayer
	
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
		while true do
			local chest = chestParts[currentIndex]
	
			if player.Character and player.Character.PrimaryPart then
				local primaryPart = player.Character.PrimaryPart
	
				-- Calculate offset above the chest
				local offset = Vector3.new(0, primaryPart.Size.Y / 2 + 2, 0) -- Add half the height of the character + 2 studs
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
	
	-- Start the teleportation cycle when the script runs
	teleportToChestsInCycle()
	
end
coroutine.wrap(DKSHJY_fake_script)()
local function NAYMJ_fake_script() -- Frame.fpsboost 
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
coroutine.wrap(NAYMJ_fake_script)()
local function SSURSX_fake_script() -- Frame.antiafk 
	local script = Instance.new('LocalScript', Frame)

	loadstring(game:HttpGet("https://raw.githubusercontent.com/NoTwistedHere/Roblox/main/AntiAFK.lua"))()
end
coroutine.wrap(SSURSX_fake_script)()
local function ZBNDQKL_fake_script() -- money.LocalScript 
	local script = Instance.new('LocalScript', money)

	local player = game.Players.LocalPlayer
	local levelTextLabel = player.PlayerGui:WaitForChild("Main"):WaitForChild("Beli")
	local targetTextLabel = script.Parent  -- The TextLabel that should be updated
	
	while true do
		targetTextLabel.Text = levelTextLabel.Text  -- Set the target label's Text to the level text
		wait(0.01)  -- Wait a short time before updating again (you can adjust this for performance)
	end
	
end
coroutine.wrap(ZBNDQKL_fake_script)()
