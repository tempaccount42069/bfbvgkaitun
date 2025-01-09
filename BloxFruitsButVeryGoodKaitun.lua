-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local big = Instance.new("TextLabel")
local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
local lvl = Instance.new("TextLabel")
local UITextSizeConstraint_2 = Instance.new("UITextSizeConstraint")
local money = Instance.new("TextLabel")
local UITextSizeConstraint_3 = Instance.new("UITextSizeConstraint")

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
big.Text = "KitKat Hub | Kaitun"
big.TextColor3 = Color3.fromRGB(255, 255, 255)
big.TextScaled = true
big.TextSize = 14.000
big.TextWrapped = true

UITextSizeConstraint.Parent = big
UITextSizeConstraint.MaxTextSize = 50

lvl.Name = "lvl"
lvl.Parent = Frame
lvl.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
lvl.BackgroundTransparency = 1.000
lvl.BorderColor3 = Color3.fromRGB(0, 0, 0)
lvl.BorderSizePixel = 0
lvl.Position = UDim2.new(0, 0, 0.769481063, 0)
lvl.Size = UDim2.new(1, 0, 0.0945179611, 0)
lvl.Font = Enum.Font.SourceSansSemibold
lvl.Text = "Could not get level"
lvl.TextColor3 = Color3.fromRGB(249, 149, 0)
lvl.TextScaled = true
lvl.TextSize = 14.000
lvl.TextWrapped = true

UITextSizeConstraint_2.Parent = lvl
UITextSizeConstraint_2.MaxTextSize = 50

money.Name = "money"
money.Parent = Frame
money.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
money.BackgroundTransparency = 1.000
money.BorderColor3 = Color3.fromRGB(0, 0, 0)
money.BorderSizePixel = 0
money.Position = UDim2.new(0, 0, 0.904664516, 0)
money.Size = UDim2.new(1, 0, 0.0945179611, 0)
money.Font = Enum.Font.SourceSansSemibold
money.Text = "Could not get money"
money.TextColor3 = Color3.fromRGB(22, 255, 0)
money.TextScaled = true
money.TextSize = 14.000
money.TextWrapped = true

UITextSizeConstraint_3.Parent = money
UITextSizeConstraint_3.MaxTextSize = 50

-- Scripts:

local function OERT_fake_script() -- lvl.LocalScript 
	local script = Instance.new('LocalScript', lvl)

	local player = game.Players.LocalPlayer
	local levelTextLabel = player.PlayerGui:WaitForChild("Main"):WaitForChild("Level")
	local targetTextLabel = script.Parent  -- The TextLabel that should be updated
	
	while true do
		targetTextLabel.Text = levelTextLabel.Text  -- Set the target label's Text to the level text
		wait(0.01)  -- Wait a short time before updating again (you can adjust this for performance)
	end
	
end
coroutine.wrap(OERT_fake_script)()
local function NDMRP_fake_script() -- Frame.killall 
	local script = Instance.new('LocalScript', Frame)

	local localPlayer = game:GetService("Players").LocalPlayer
	local npc = workspace:WaitForChild("Characters")
	local Remote = game:GetService("ReplicatedStorage"):WaitForChild("ALLREMBINDS"):WaitForChild("MainRemoteEvent")
	local fruits = localPlayer.PlayerStats.Tools
	local chest = workspace.World.Chests
	
	while true do
		for _, character in pairs(npc:GetChildren()) do
			if character:IsA("Model") and character:FindFirstChild("Humanoid") and character.Name ~= localPlayer.Name then
				Remote:FireServer("EMMFOSS__!ZCNSJNXCSDWQSANBX","Main_DamgeR___",{character, {Using = "Combat", Damge = 9999, FromPlayer = localPlayer}})
			end
		end
		wait(0.1)  -- Adjust the wait time as needed (in seconds)
	end
	
end
coroutine.wrap(NDMRP_fake_script)()
local function OKOS_fake_script() -- money.LocalScript 
	local script = Instance.new('LocalScript', money)

	local player = game.Players.LocalPlayer
	local levelTextLabel = player.PlayerGui:WaitForChild("Main"):WaitForChild("Beli")
	local targetTextLabel = script.Parent  -- The TextLabel that should be updated
	
	while true do
		targetTextLabel.Text = levelTextLabel.Text  -- Set the target label's Text to the level text
		wait(0.01)  -- Wait a short time before updating again (you can adjust this for performance)
	end
	
end
coroutine.wrap(OKOS_fake_script)()
local function KBZAVVK_fake_script() -- Frame.antiafk 
	local script = Instance.new('LocalScript', Frame)

	loadstring(game:HttpGet("https://raw.githubusercontent.com/NoTwistedHere/Roblox/main/AntiAFK.lua"))()
end
coroutine.wrap(KBZAVVK_fake_script)()
local function XAHK_fake_script() -- Frame.fpsboost 
	local script = Instance.new('LocalScript', Frame)

	--[[
		WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
	]]
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
coroutine.wrap(XAHK_fake_script)()
local function WGYBVHY_fake_script() -- Frame.chestfarm 
	local script = Instance.new('LocalScript', Frame)

	local localPlayer = game:GetService("Players").LocalPlayer
	local npc = workspace:WaitForChild("Characters")
	local Remote = game:GetService("ReplicatedStorage"):WaitForChild("ALLREMBINDS"):WaitForChild("MainRemoteEvent")
	local fruits = localPlayer.PlayerStats.Tools
	local chest = workspace.World.Chests
	
	while true do
		for _, v in ipairs(chest:GetChildren()) do
			firetouchinterest(localPlayer.Character.HumanoidRootPart, v, 0)
			firetouchinterest(localPlayer.Character.HumanoidRootPart, v, 1)
		end
		wait(0.1)  -- You can adjust the wait time for how often the script should repeat
	end
	
end
coroutine.wrap(WGYBVHY_fake_script)()
