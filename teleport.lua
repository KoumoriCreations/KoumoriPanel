-- // Services
local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")

-- // Player & PlayerGui
local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

-- // Create GUI
local screenGui = Instance.new("ScreenGui")
screenGui.ResetOnSpawn = false
screenGui.Parent = playerGui

-- // Create Frame
local frame = Instance.new("Frame")
frame.AnchorPoint = Vector2.new(0.5, 0.5)
frame.Position = UDim2.fromScale(0.5, 0.5)
frame.Size = UDim2.fromScale(0.5, 0.5)
frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
frame.BackgroundTransparency = 0.5
frame.BorderSizePixel = 0
frame.Parent = screenGui

local UIStroke2 = Instance.new("UIStroke")
UIStroke2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke2.Thickness = 2
UIStroke2.Parent = frame

-- // Click SFX
local clickSfx = Instance.new("Sound")
clickSfx.SoundId = "rbxassetid://452267918"
clickSfx.Parent = frame

-- // Hover SFX
local hoverSfx = Instance.new("Sound")
hoverSfx.SoundId = "rbxassetid://3199281218"
hoverSfx.Parent = frame

-- // Draggable
local drag = Instance.new("UIDragDetector")
drag.ActivatedCursorIcon = "rbxasset://SystemCursors/Arrow"
drag.CursorIcon = "rbxasset://SystemCursors/Arrow"
drag.Parent = frame

-- // Create Title
local title = Instance.new("TextLabel")
title.AnchorPoint = Vector2.new(0.5, 0)
title.Position = UDim2.fromScale(0.5, 0)
title.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
title.BackgroundTransparency = 0.8
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.Size = UDim2.fromScale(1, 0.2)
title.Font = Enum.Font.FredokaOne
title.TextScaled = true
title.Text = " " .. player.Name .. "'s Exploit Panel "
title.Parent = frame

local UIStroke = Instance.new("UIStroke")
UIStroke.Thickness = 2
UIStroke.Parent = title

-- // Create Close Text
local closeText = Instance.new("TextLabel")
closeText.AnchorPoint = Vector2.new(0.5, 0)
closeText.Position = UDim2.fromScale(0.5, 0.22)
closeText.BackgroundTransparency = 1
closeText.TextColor3 = Color3.fromRGB(255, 255, 255)
closeText.Size = UDim2.fromScale(0.8, 0.08)
closeText.Font = Enum.Font.FredokaOne
closeText.TextScaled = true
closeText.Text = "Right Shift To Open/Close Panel. Del to end script."
closeText.Parent = frame

-- // Create Logo Image
local logo = Instance.new("ImageLabel")
logo.AnchorPoint = Vector2.new(0.5, 0.5)
logo.Size = UDim2.fromScale(1, 1)
logo.BackgroundTransparency = 1
logo.Image = "rbxassetid://136167448958896"
logo.Position = UDim2.fromScale(0.5, 0.5)
logo.ImageTransparency = 0.9
logo.Parent = frame

-- // Create RatioConstraint (keeps logo from stretching)
local RatioConstraint = Instance.new("UIAspectRatioConstraint")
RatioConstraint.Parent = logo

-- // Create TextBox
local textBox = Instance.new("TextBox")
textBox.AnchorPoint = Vector2.new(0.5, 0.5)
textBox.Position = UDim2.fromScale(0.5, 0.5)
textBox.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
textBox.TextColor3 = Color3.fromRGB(255, 255, 255)
textBox.PlaceholderColor3 = Color3.fromRGB(212, 212, 212)
textBox.Size = UDim2.fromScale(0.7, 0.12)
textBox.BorderSizePixel = 0
textBox.Font = Enum.Font.FredokaOne
textBox.TextScaled = true
textBox.Text = ""
textBox.PlaceholderText = " Type Player's Username "
textBox.Parent = frame

local UIStroke2 = Instance.new("UIStroke")
UIStroke2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke2.Thickness = 2
UIStroke2.Parent = textBox

-- // Create Teleport Button
local teleportButton = Instance.new("TextButton")
teleportButton.Text = "Teleport"
teleportButton.Size = UDim2.fromScale(0.5, 0.2)
teleportButton.AnchorPoint = Vector2.new(0.5, 0.5)
teleportButton.Position = UDim2.fromScale(0.5, 0.75)
teleportButton.BackgroundColor3 = Color3.fromRGB(0, 200, 255)
teleportButton.TextColor3 = Color3.fromRGB(255, 255, 255)
teleportButton.Font = Enum.Font.FredokaOne
teleportButton.TextScaled = true

local UIStroke = Instance.new("UIStroke")
UIStroke.Thickness = 2
UIStroke.Parent = teleportButton

local UIStroke2 = Instance.new("UIStroke")
UIStroke2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke2.Thickness = 2
UIStroke2.Parent = teleportButton

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0.2, 0)
UICorner.Parent = teleportButton

teleportButton.Parent = frame

-- // Toggle Frame Function
local function toggleFrame()
	frame.Visible = not frame.Visible
end

-- // Listen for Right Shift
UserInputService.InputBegan:Connect(function(input, gameProcessed)
	if gameProcessed then return end
	
	if input.KeyCode == Enum.KeyCode.RightShift then
		toggleFrame()
	elseif input.KeyCode == Enum.KeyCode.Delete then
		screenGui:Destroy()
	end
end)

-- // Teleport Button Click
teleportButton.Activated:Connect(function()
	local random = Random.new()
	clickSfx.PlaybackSpeed = random:NextNumber(0.5, 2.5)
	clickSfx:Play()
	
	-- // Target Name
	local targetName = textBox.Text
	
	-- // Check If Nothing Was Typed
	if targetName == "" then
		textBox.Text = " Type a player's name! "
		return
	end
	
	-- // Target Player
	local targetPlayer = Players:FindFirstChild(targetName)
	
	-- // Check If Player Exists
	if not targetPlayer or not targetPlayer.Character or not targetPlayer.Character:FindFirstChild("HumanoidRootPart") then
		textBox.Text = " " .. targetName .. " Does Not Exist or Has No Character "
		return
	end
	
	-- // Character + Check
	local localChar = player.Character
	
	if not localChar or not localChar:FindFirstChild("HumanoidRootPart") then
		textBox.Text = " Your character is missing! "
		return
	end
	
	-- // Humanoid
	local humanoid = localChar:FindFirstChild("Humanoid")
	
	-- // Enable Noclip
	for _, part in pairs(localChar:GetDescendants()) do
		if part:IsA("BasePart") then
			part.CanCollide = false
		end
	end
	
	-- // Disable Physics & Anchor
	if humanoid then
		humanoid:ChangeState(Enum.HumanoidStateType.Physics)
		humanoid.AutoRotate = false
	end
	
	localChar.HumanoidRootPart.Anchored = true

	-- // Target CFrame
	local targetCFrame = targetPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0, 3, 0)

	-- // Distance → Duration
	local distance = (localChar.HumanoidRootPart.Position - targetCFrame.Position).Magnitude
	local speedFactor = 20
	local tweenDuration = math.clamp(distance / speedFactor, 2, 60)

	-- // Tween
	local tweenInfo = TweenInfo.new(tweenDuration, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
	local tween = TweenService:Create(localChar.HumanoidRootPart, tweenInfo, { CFrame = targetCFrame })
	tween:Play()

	-- // Keep Noclipping During Tween
	local connection
	connection = RunService.Stepped:Connect(function()
		if not localChar or not localChar.Parent then
			connection:Disconnect()
			return
		end
		
		for _, part in pairs(localChar:GetDescendants()) do
			if part:IsA("BasePart") then
				part.CanCollide = false
			end
		end
	end)

	-- // Done → Restore Normal Physics
	tween.Completed:Connect(function()
		connection:Disconnect()

		localChar.HumanoidRootPart.Anchored = false

		if humanoid then
			humanoid.AutoRotate = true
			humanoid:ChangeState(Enum.HumanoidStateType.RunningNoPhysics)
		end
	end)
end)

-- // Teleport Button Hover
teleportButton.InputBegan:Connect(function(inputObject)
	local random = Random.new()
	hoverSfx.PlaybackSpeed = random:NextNumber(0.5, 3)
	hoverSfx:Play()
end)
