local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wizard"))()

local PhantomForcesWindow = Library:NewWindow("Blox Fruits But Very Good")

local KillingCheats = PhantomForcesWindow:NewSection("Main")

KillingCheats:CreateButton("Button", function()
    print("HI")
end)

KillingCheats:CreateTextbox("TextBox", function(text)
    print(text)
end)

-- Toggle: Auto Farm Chest
local isCollectChestActive = false -- Initial toggle state

-- Function to start chest collection (you'll need to define it properly)
local function startChestCollection()
    print("Chest collection started.") -- Replace with actual logic for chest collection
end

KillingCheats:CreateToggle("Auto Farm Chest", function(value)
    isCollectChestActive = value -- Update toggle state
    if isCollectChestActive then
        print("Auto Farm Chest activated.")
        startChestCollection()
    else
        print("Auto Farm Chest deactivated.")
    end
end)

KillingCheats:CreateDropdown("DropDown", {"Hello", "World", "Hello World"}, 2, function(text)
    print(text)
end)

KillingCheats:CreateSlider("Slider", 0, 100, 15, false, function(value)
    print(value)
end)

KillingCheats:CreateColorPicker("Picker", Color3.fromRGB(255, 255, 255), function(value)
    print(value)
end)
