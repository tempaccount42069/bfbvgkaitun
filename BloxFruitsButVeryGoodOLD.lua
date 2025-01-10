-- Gui to Lua
-- Version: 3.2

-- Instances:

local CF = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Frame_2 = Instance.new("Frame")
local Toggles = Instance.new("ScrollingFrame")
local Frame_3 = Instance.new("Frame")
local TextButton = Instance.new("TextButton")
local ImageButton = Instance.new("ImageButton")
local TextButton_2 = Instance.new("TextButton")
local ImageButton_2 = Instance.new("ImageButton")
local TextLabel = Instance.new("TextLabel")
local TextButton_3 = Instance.new("TextButton")

--Properties:

CF.Name = "CF"
CF.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
CF.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = CF
Frame.BackgroundColor3 = Color3.fromRGB(75, 75, 75)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.137516633, 0, 0.153119087, 0)
Frame.Size = UDim2.new(0, 505, 0, 280)

UICorner.Parent = Frame

Frame_2.Parent = Frame
Frame_2.BackgroundColor3 = Color3.fromRGB(125, 125, 125)
Frame_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame_2.BorderSizePixel = 0
Frame_2.Position = UDim2.new(-3.02154248e-08, 0, 0.267379642, 0)
Frame_2.Size = UDim2.new(0, 505, 0, 7)

Toggles.Name = "Toggles"
Toggles.Parent = Frame
Toggles.Active = true
Toggles.BackgroundColor3 = Color3.fromRGB(75, 75, 75)
Toggles.BackgroundTransparency = 1.000
Toggles.BorderColor3 = Color3.fromRGB(0, 0, 0)
Toggles.BorderSizePixel = 0
Toggles.Position = UDim2.new(-3.02154248e-08, 0, 0.289285719, 0)
Toggles.Size = UDim2.new(0, 505, 0, 199)

Frame_3.Parent = Toggles
Frame_3.BackgroundColor3 = Color3.fromRGB(75, 75, 75)
Frame_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame_3.BorderSizePixel = 0
Frame_3.Position = UDim2.new(0.137516633, 0, 0.153119087, 0)
Frame_3.Size = UDim2.new(0, 505, 0, 280)

TextButton.Parent = Frame_3
TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton.BackgroundTransparency = 1.000
TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(-0.140594065, 0, -0.127505377, 0)
TextButton.Size = UDim2.new(0, 342, 0, 50)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "Slower Beli/Level Farm (use if you lag):"
TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton.TextScaled = true
TextButton.TextSize = 1.000
TextButton.TextWrapped = true

ImageButton.Parent = Frame_3
ImageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageButton.BackgroundTransparency = 1.000
ImageButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageButton.BorderSizePixel = 0
ImageButton.Position = UDim2.new(0.538613796, 0, -0.128724024, 0)
ImageButton.Size = UDim2.new(0, 77, 0, 58)
ImageButton.Image = "http://www.roblox.com/asset/?id=6790887263"

TextButton_2.Parent = Frame_3
TextButton_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton_2.BackgroundTransparency = 1.000
TextButton_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_2.BorderSizePixel = 0
TextButton_2.Position = UDim2.new(-0.138613865, 0, -0.306076825, 0)
TextButton_2.Size = UDim2.new(0, 342, 0, 50)
TextButton_2.Font = Enum.Font.SourceSans
TextButton_2.Text = "Beli/Level Farm (May lag):"
TextButton_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_2.TextScaled = true
TextButton_2.TextSize = 14.000
TextButton_2.TextWrapped = true

ImageButton_2.Parent = Frame_3
ImageButton_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageButton_2.BackgroundTransparency = 1.000
ImageButton_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageButton_2.BorderSizePixel = 0
ImageButton_2.Position = UDim2.new(0.538613796, 0, -0.303724021, 0)
ImageButton_2.Size = UDim2.new(0, 77, 0, 58)
ImageButton_2.Image = "http://www.roblox.com/asset/?id=6790887263"

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Size = UDim2.new(0, 418, 0, 74)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "Kitkat Hub | BFBVG"
TextLabel.TextColor3 = Color3.fromRGB(0, 249, 68)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

TextButton_3.Parent = Frame
TextButton_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton_3.BackgroundTransparency = 1.000
TextButton_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_3.BorderSizePixel = 0
TextButton_3.Position = UDim2.new(0.828605652, 0, 0, 0)
TextButton_3.Size = UDim2.new(0, 86, 0, 74)
TextButton_3.Font = Enum.Font.SourceSans
TextButton_3.Text = "X"
TextButton_3.TextColor3 = Color3.fromRGB(255, 0, 0)
TextButton_3.TextScaled = true
TextButton_3.TextSize = 14.000
TextButton_3.TextWrapped = true

-- Scripts:

local function EPOWY_fake_script() -- Frame_2.LocalScript 
	local script = Instance.new('LocalScript', Frame_2)

	function zigzag(X) return math.acos(math.cos(X*math.pi))/math.pi end
	
	counter = 0
	
	while wait(0.01)do
		script.Parent.BackgroundColor3 = Color3.fromHSV(zigzag(counter),1,1)
	
		counter = counter + 0.001
	end
end
coroutine.wrap(EPOWY_fake_script)()
local function AGGPT_fake_script() -- ImageButton.level farm 
	local script = Instance.new('LocalScript', ImageButton)

	local Players = game:GetService("Players")
	local player = Players.LocalPlayer
	
	-- Initial toggle state
	local isCollectChestActive = false
	
	-- Decal IDs for the ON and OFF states
	local ON_IMAGE_ID = "rbxassetid://11242915823" -- Replace with your ON image decal ID
	local OFF_IMAGE_ID = "rbxassetid://6790887263" -- Replace with your OFF image decal ID
	
	-- Function to update the button's image based on toggle state
	local function updateButtonImage(button)
		if isCollectChestActive then
			button.Image = ON_IMAGE_ID
		else
			button.Image = OFF_IMAGE_ID
		end
	end
	
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
		while isCollectChestActive do
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
			wait(0.55) -- Adjust the time as needed
		end
	end
	
	-- Connect the button click event to toggle and teleport functionality
	script.Parent.MouseButton1Down:Connect(function()
		-- Toggle the state
		isCollectChestActive = not isCollectChestActive
	
		-- Update the button image
		updateButtonImage(script.Parent)
	
		-- If toggling ON, start the teleportation cycle
		if isCollectChestActive then
			teleportToChestsInCycle()
		end
	end)
	
	-- Initialize the button image
	updateButtonImage(script.Parent)
	
end
coroutine.wrap(AGGPT_fake_script)()
local function OECSM_fake_script() -- ImageButton_2.level farm 
	local script = Instance.new('LocalScript', ImageButton_2)

	local Players = game:GetService("Players")
	local player = Players.LocalPlayer
	
	-- Initial toggle state
	local isCollectChestActive = false
	
	-- Decal IDs for the ON and OFF states
	local ON_IMAGE_ID = "rbxassetid://11242915823" -- Replace with your ON image decal ID
	local OFF_IMAGE_ID = "rbxassetid://6790887263" -- Replace with your OFF image decal ID
	
	-- Function to update the button's image based on toggle state
	local function updateButtonImage(button)
		if isCollectChestActive then
			button.Image = ON_IMAGE_ID
		else
			button.Image = OFF_IMAGE_ID
		end
	end
	
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
		while isCollectChestActive do
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
	
	-- Connect the button click event to toggle and teleport functionality
	script.Parent.MouseButton1Down:Connect(function()
		-- Toggle the state
		isCollectChestActive = not isCollectChestActive
	
		-- Update the button image
		updateButtonImage(script.Parent)
	
		-- If toggling ON, start the teleportation cycle
		if isCollectChestActive then
			teleportToChestsInCycle()
		end
	end)
	
	-- Initialize the button image
	updateButtonImage(script.Parent)
	
end
coroutine.wrap(OECSM_fake_script)()
local function BWQGQ_fake_script() -- TextButton_3.close 
	local script = Instance.new('LocalScript', TextButton_3)

	script.Parent.MouseButton1Click:Connect(function()
		local frame = script.Parent.Parent.Parent:FindFirstChild("Frame") -- Checks if the Frame exists
		if frame then
			for _, child in pairs(frame:GetChildren()) do
				child:Destroy() -- Destroys each child of the frame
			end
			frame:Destroy() -- Destroys the frame itself
		else
			warn("Frame not found!") -- Warns if the frame doesn't exist
		end
	end)
	
end
coroutine.wrap(BWQGQ_fake_script)()
local function JXAVC_fake_script() -- TextButton_3.notif 
	local script = Instance.new('LocalScript', TextButton_3)

	local player = game.Players.LocalPlayer -- Get the local player
	
	function onButtonClicked()
		-- Create a notification for the player
		game:GetService("StarterGui"):SetCore("SendNotification", {
			Title = "KitKat Hub",
			Text = "Re-execute the script to open the gui again!",
			Icon = "http://www.roblox.com/asset/?id=12938437348",
			Duration = 5
		})
	end
	
	script.Parent.MouseButton1Down:Connect(onButtonClicked)
end
coroutine.wrap(JXAVC_fake_script)()
local function ETHHB_fake_script() -- Frame.UIDrag 
	local script = Instance.new('LocalScript', Frame)

	-- Made by Real_IceyDev (@lceyDex) --
	-- Simple UI dragger (PC Only/Any device that has a mouse) --
	
	local UIS = game:GetService('UserInputService')
	local frame = script.Parent
	local dragToggle = nil
	local dragSpeed = 0.25
	local dragStart = nil
	local startPos = nil
	
	local function updateInput(input)
		local delta = input.Position - dragStart
		local position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X,
			startPos.Y.Scale, startPos.Y.Offset + delta.Y)
		game:GetService('TweenService'):Create(frame, TweenInfo.new(dragSpeed), {Position = position}):Play()
	end
	
	frame.InputBegan:Connect(function(input)
		if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then 
			dragToggle = true
			dragStart = input.Position
			startPos = frame.Position
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragToggle = false
				end
			end)
		end
	end)
	
	UIS.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			if dragToggle then
				updateInput(input)
			end
		end
	end)
end
coroutine.wrap(ETHHB_fake_script)()
