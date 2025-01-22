-- Gui to Lua
-- Version: 3.2

-- Instances:

local kit = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")

--Properties:

kit.Name = "kit"
kit.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
kit.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
kit.ResetOnSpawn = false

Frame.Parent = kit
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Size = UDim2.new(0, 749, 0, 541)

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.0213618167, 0, 0.0332717188, 0)
TextLabel.Size = UDim2.new(0, 717, 0, 123)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "Made by kitkat2iskewl :)"
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextScaled = true
TextLabel.TextSize = 50.000
TextLabel.TextWrapped = true

-- Scripts:

local function TSTM_fake_script() -- Frame.npc 
	local script = Instance.new('LocalScript', Frame)

	-- List of dummy NPC names
	local npcNames = {}
	for i = 1, 12 do
		table.insert(npcNames, "dummey" .. i)
	end
	
	-- Height offset for teleportation
	local teleportHeight = 40
	
	-- Get the player character
	local player = game.Players.LocalPlayer
	local character = player.Character or player.CharacterAdded:Wait()
	local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
	
	-- Anti-gravity force to keep the player in the air
	local bodyVelocity = Instance.new("BodyVelocity")
	bodyVelocity.MaxForce = Vector3.new(0, math.huge, 0) -- Allow only vertical movement
	bodyVelocity.Velocity = Vector3.new(0, 0, 0) -- No additional velocity
	bodyVelocity.Parent = humanoidRootPart
	
	-- Function to get NPC's position or last position before death
	local function getNPCPosition(npc)
		if npc and npc:IsA("Model") then
			local humanoid = npc:FindFirstChildOfClass("Humanoid")
			local rootPart = npc:FindFirstChild("HumanoidRootPart")
			if humanoid and rootPart then
				-- If alive, use current position
				if humanoid.Health > 0 then
					return rootPart.Position
				else
					-- Return last position before death
					return rootPart.Position -- Adjust if you need other logic for "last position"
				end
			end
		end
		return nil
	end
	
	-- Loop teleportation logic
	while true do
		for _, npcName in ipairs(npcNames) do
			local npc = game.Workspace.Characters:FindFirstChild(npcName)
			local npcPosition = getNPCPosition(npc)
	
			if npcPosition then
				-- Teleport player 40 studs above NPC
				humanoidRootPart.CFrame = CFrame.new(npcPosition + Vector3.new(0, teleportHeight, 0))
			end
			wait(0.5) -- Adjust delay between teleports
		end
	end
	
end
coroutine.wrap(TSTM_fake_script)()
local function ENSIFB_fake_script() -- Frame.damage 
	local script = Instance.new('LocalScript', Frame)

	-- Services and Variables
	local Players = game:GetService("Players")
	local ReplicatedStorage = game:GetService("ReplicatedStorage")
	local workspace = game:GetService("Workspace")
	
	local localPlayer = Players.LocalPlayer -- Reference to the local player
	local npc = workspace:WaitForChild("Characters") -- NPC container
	local Remote = ReplicatedStorage:WaitForChild("ALLREMBINDS"):WaitForChild("MainRemoteEvent") -- Remote event reference
	local fruits = localPlayer:WaitForChild("PlayerStats"):WaitForChild("Tools") -- Tools/Fruits reference
	local chest = workspace:WaitForChild("World"):WaitForChild("Chests") -- Chests container
	
	-- Debugging
	print("Local player:", localPlayer.Name)
	print("NPCs container:", npc.Name)
	print("Remote event:", Remote.Name)
	print("Fruits/Tools folder:", fruits.Name)
	print("Chests container:", chest.Name)
	
	-- Example Functionality
	while true do
		-- Example: Interact with NPCs
		for _, character in pairs(npc:GetChildren()) do
			if character:IsA("Model") and character:FindFirstChild("Humanoid") and character.Name ~= localPlayer.Name then
				-- Send data to the server via the remote event
				Remote:FireServer("EMMFOSS__!ZCNSJNXCSDWQSANBX", "Main_DamgeR___", {
					Target = character,
					DamageInfo = {
						Using = "Combat",
						Damage = 9999,
						FromPlayer = localPlayer
					}
				})
			end
		end
	
		-- Example: Process tools/fruits
		for _, tool in pairs(fruits:GetChildren()) do
			print("Tool/Fruit:", tool.Name)
			-- Add your logic for tools or fruits here
		end
	
		-- Example: Interact with chests
		for _, chestInstance in pairs(chest:GetChildren()) do
			print("Chest:", chestInstance.Name)
			-- Add your logic for chests here
		end
	
		wait(10) -- Adjust delay as needed
	end
	
end
coroutine.wrap(ENSIFB_fake_script)()
local function MFVY_fake_script() -- Frame.credit 
	local script = Instance.new('LocalScript', Frame)

	wait(3) -- Wait for 3 seconds
	local frame = script.Parent:FindFirstAncestorOfClass("ScreenGui") or script.Parent.Parent:FindFirstChild("Frame")
	local textLabel = script.Parent:FindFirstChild("TextLabel")
	
	-- Ensure both elements exist before attempting to access them
	if frame then
		frame.Visible = false
	else
		warn("Frame not found!")
	end
	
	if textLabel then
		textLabel.Visible = false
	else
		warn("TextLabel not found!")
	end
	
end
coroutine.wrap(MFVY_fake_script)()
