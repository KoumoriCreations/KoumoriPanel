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
frame.BackgroundTransparency = 0.7
frame.BorderSizePixel = 0
frame.Parent = screenGui

local UIStroke2 = Instance.new("UIStroke")
UIStroke2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke2.Thickness = 2
UIStroke2.Parent = frame

-- // Create Frame2
local frame2 = Instance.new("Frame")
frame2.Position = UDim2.fromScale(0, 0)
frame2.Size = UDim2.fromScale(0.3, 1)
frame2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
frame2.BackgroundTransparency = 0.7
frame2.BorderSizePixel = 0
frame2.Parent = frame

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
title.Size = UDim2.fromScale(1, 0.15)
title.Font = Enum.Font.FredokaOne
title.TextScaled = true
title.Text = " " .. player.Name .. "'s Exploit Panel "
title.Parent = frame2

local UIStroke = Instance.new("UIStroke")
UIStroke.Thickness = 2
UIStroke.Parent = title

-- // Create Close Text
local closeText = Instance.new("TextLabel")
closeText.AnchorPoint = Vector2.new(0.5, 0)
closeText.Position = UDim2.fromScale(0.5, 0.16)
closeText.BackgroundTransparency = 1
closeText.TextColor3 = Color3.fromRGB(255, 255, 255)
closeText.Size = UDim2.fromScale(0.98, 0.08)
closeText.Font = Enum.Font.FredokaOne
closeText.TextScaled = true
closeText.Text = "Right Shift To Open/Close Panel. Del to end script."
closeText.Parent = frame2

-- // >>>>>>>>>>>>>>>>>>>>>>>>>>>><|[CREATE BUTTONS]|><<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< \\
-- // Create Teleport Menu Button
local teleportMenuButton = Instance.new("TextButton")
teleportMenuButton.Text = "Teleport"
teleportMenuButton.Size = UDim2.fromScale(0.9, 0.12)
teleportMenuButton.AnchorPoint = Vector2.new(0.5, 0)
teleportMenuButton.Position = UDim2.fromScale(0.5, 0.26)
teleportMenuButton.BackgroundColor3 = Color3.fromRGB(100,100,100)
teleportMenuButton.TextColor3 = Color3.fromRGB(255, 255, 255)
teleportMenuButton.Font = Enum.Font.FredokaOne
teleportMenuButton.TextScaled = true

local UIStroke = Instance.new("UIStroke")
UIStroke.Thickness = 2
UIStroke.Parent = teleportMenuButton

local UIStroke2 = Instance.new("UIStroke")
UIStroke2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke2.Thickness = 2
UIStroke2.Parent = teleportMenuButton

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0.2, 0)
UICorner.Parent = teleportMenuButton

teleportMenuButton.Parent = frame2

-- // Create Counterblox Menu Button
local counterbloxMenuButton = Instance.new("TextButton")
counterbloxMenuButton.Text = "Counterblox"
counterbloxMenuButton.Size = UDim2.fromScale(0.9, 0.12)
counterbloxMenuButton.AnchorPoint = Vector2.new(0.5, 0)
counterbloxMenuButton.Position = UDim2.fromScale(0.5, 0.4)
counterbloxMenuButton.BackgroundColor3 = Color3.fromRGB(100,100,100)
counterbloxMenuButton.TextColor3 = Color3.fromRGB(255, 255, 255)
counterbloxMenuButton.Font = Enum.Font.FredokaOne
counterbloxMenuButton.TextScaled = true

local UIStroke = Instance.new("UIStroke")
UIStroke.Thickness = 2
UIStroke.Parent = counterbloxMenuButton

local UIStroke2 = Instance.new("UIStroke")
UIStroke2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke2.Thickness = 2
UIStroke2.Parent = counterbloxMenuButton

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0.2, 0)
UICorner.Parent = counterbloxMenuButton

counterbloxMenuButton.Parent = frame2

-- // Create Blindshot Menu Button
local blindshotMenuButton = Instance.new("TextButton")
blindshotMenuButton.Text = "Blindshot"
blindshotMenuButton.Size = UDim2.fromScale(0.9, 0.12)
blindshotMenuButton.AnchorPoint = Vector2.new(0.5, 0)
blindshotMenuButton.Position = UDim2.fromScale(0.5, 0.54)
blindshotMenuButton.BackgroundColor3 = Color3.fromRGB(100,100,100)
blindshotMenuButton.TextColor3 = Color3.fromRGB(255, 255, 255)
blindshotMenuButton.Font = Enum.Font.FredokaOne
blindshotMenuButton.TextScaled = true

local UIStroke = Instance.new("UIStroke")
UIStroke.Thickness = 2
UIStroke.Parent = blindshotMenuButton

local UIStroke2 = Instance.new("UIStroke")
UIStroke2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke2.Thickness = 2
UIStroke2.Parent = blindshotMenuButton

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0.2, 0)
UICorner.Parent = blindshotMenuButton

blindshotMenuButton.Parent = frame2

-- // Create Bloxfruit Menu Button
local bloxfruitMenuButton = Instance.new("TextButton")
bloxfruitMenuButton.Text = "Bloxfruit"
bloxfruitMenuButton.Size = UDim2.fromScale(0.9, 0.12)
bloxfruitMenuButton.AnchorPoint = Vector2.new(0.5, 0)
bloxfruitMenuButton.Position = UDim2.fromScale(0.5, 0.68)
bloxfruitMenuButton.BackgroundColor3 = Color3.fromRGB(100,100,100)
bloxfruitMenuButton.TextColor3 = Color3.fromRGB(255, 255, 255)
bloxfruitMenuButton.Font = Enum.Font.FredokaOne
bloxfruitMenuButton.TextScaled = true

local UIStroke = Instance.new("UIStroke")
UIStroke.Thickness = 2
UIStroke.Parent = bloxfruitMenuButton

local UIStroke2 = Instance.new("UIStroke")
UIStroke2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke2.Thickness = 2
UIStroke2.Parent = bloxfruitMenuButton

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0.2, 0)
UICorner.Parent = bloxfruitMenuButton

bloxfruitMenuButton.Parent = frame2

-- // >>>>>>>>>>>>>>>>>>>>>>>>>>>><|[TELEPORT MENU]|><<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< \\
-- // Create Frame
local teleportFrame = Instance.new("Frame")
teleportFrame.Position = UDim2.fromScale(0.3, 0)
teleportFrame.Size = UDim2.fromScale(0.7, 1)
teleportFrame.BackgroundTransparency = 1
teleportFrame.Parent = frame

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
title.Text = " Teleporting (WIP) "
title.Parent = teleportFrame

local UIStroke = Instance.new("UIStroke")
UIStroke.Thickness = 2
UIStroke.Parent = title

-- // Create Logo Image
local logo = Instance.new("ImageLabel")
logo.AnchorPoint = Vector2.new(0.5, 0.5)
logo.Size = UDim2.fromScale(1, 1)
logo.BackgroundTransparency = 1
logo.Image = "rbxassetid://136167448958896"
logo.Position = UDim2.fromScale(0.5, 0.5)
logo.ImageTransparency = 0.9
logo.Parent = teleportFrame

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
textBox.Parent = teleportFrame

local UIStroke2 = Instance.new("UIStroke")
UIStroke2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke2.Thickness = 2
UIStroke2.Parent = textBox

-- // Create Suggestion Frame
local suggestionFrame = Instance.new("Frame")
suggestionFrame.AnchorPoint = Vector2.new(0.5, 1)
suggestionFrame.Position = UDim2.fromScale(0.5, 0.42)
suggestionFrame.Size = UDim2.fromScale(0.7, 0.1)
suggestionFrame.BackgroundTransparency = 1
suggestionFrame.Parent = teleportFrame

-- // UIListLayout For Suggestions
local suggestionLayout = Instance.new("UIListLayout")
suggestionLayout.SortOrder = Enum.SortOrder.LayoutOrder
suggestionLayout.VerticalAlignment = "Bottom"
suggestionLayout.Parent = suggestionFrame

-- // Function To Update Suggestions
local function updateSuggestions(input)
	-- // Clear Previous Suggestions
	for _, child in pairs(suggestionFrame:GetChildren()) do
		if child:IsA("TextButton") then
			child:Destroy()
		end
	end

	-- // Require At Least 2 Letters To Start Suggestions
	if #input < 2 then 
		return 
	end

	-- // Lower Input
	local lowerInput = string.lower(input)

	-- // Loop
	for _, plr in ipairs(Players:GetPlayers()) do
		local name = plr.Name
		if string.sub(string.lower(name), 1, #input) == lowerInput then
			local suggestionBtn = Instance.new("TextButton")
			suggestionBtn.Size = UDim2.fromScale(1, 0.5)
			suggestionBtn.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
			suggestionBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
			suggestionBtn.Font = Enum.Font.FredokaOne
			suggestionBtn.TextScaled = true
			suggestionBtn.Text = name
			suggestionBtn.Parent = suggestionFrame

			-- // Click Fills Textbox
			suggestionBtn.MouseButton1Click:Connect(function()
				textBox.Text = name

				-- // Clear Suggestions After Click
				for _, child in pairs(suggestionFrame:GetChildren()) do
					if child:IsA("TextButton") then
						child:Destroy()
					end
				end
			end)
		end
	end
end

-- // Connect textbox changes to suggestions
textBox:GetPropertyChangedSignal("Text"):Connect(function()
	updateSuggestions(textBox.Text)
end)

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

teleportButton.Parent = teleportFrame

-- // Button Click
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

	-- // Enable Noclip
	for _, part in pairs(localChar:GetDescendants()) do
		if part:IsA("BasePart") then
			part.CanCollide = false
		end
	end

	-- // Target CFrame
	local targetCFrame = targetPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0, 3, 0)

	-- // Distance ? Duration
	local distance = (localChar.HumanoidRootPart.Position - targetCFrame.Position).Magnitude
	local speedFactor = 35 -- // Higher = Faster
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

	-- // Done ? Restore Normal Physics
	tween.Completed:Connect(function()
		connection:Disconnect()
	end)
end)

-- // Button Hover
teleportButton.InputBegan:Connect(function(inputObject)
	local random = Random.new()
	hoverSfx.PlaybackSpeed = random:NextNumber(0.5, 3)
	hoverSfx:Play()
end)

-- // >>>>>>>>>>>>>>>>>>>>>>>>>>>><|[COUNTERBLOX MENU]|><<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< \\
-- // Create Frame
local counterbloxFrame = Instance.new("Frame")
counterbloxFrame.Position = UDim2.fromScale(0.3, 0)
counterbloxFrame.Size = UDim2.fromScale(0.7, 1)
counterbloxFrame.BackgroundTransparency = 1
counterbloxFrame.Visible = false
counterbloxFrame.Parent = frame

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
title.Text = " Counterblox Menu (WIP) "
title.Parent = counterbloxFrame

local UIStroke = Instance.new("UIStroke")
UIStroke.Thickness = 2
UIStroke.Parent = title

-- // Create Logo Image
local logo = Instance.new("ImageLabel")
logo.AnchorPoint = Vector2.new(0.5, 0.5)
logo.Size = UDim2.fromScale(1, 1)
logo.BackgroundTransparency = 1
logo.Image = "rbxassetid://136167448958896"
logo.Position = UDim2.fromScale(0.5, 0.5)
logo.ImageTransparency = 0.9
logo.Parent = counterbloxFrame

-- // Create RatioConstraint (keeps logo from stretching)
local RatioConstraint = Instance.new("UIAspectRatioConstraint")
RatioConstraint.Parent = logo

-- // Create Button
local injectCounterbloxButton = Instance.new("TextButton")
injectCounterbloxButton.Text = "Inject Aim Cheats"
injectCounterbloxButton.Size = UDim2.fromScale(0.5, 0.2)
injectCounterbloxButton.AnchorPoint = Vector2.new(0.5, 0.5)
injectCounterbloxButton.Position = UDim2.fromScale(0.5, 0.75)
injectCounterbloxButton.BackgroundColor3 = Color3.fromRGB(0, 200, 255)
injectCounterbloxButton.TextColor3 = Color3.fromRGB(255, 255, 255)
injectCounterbloxButton.Font = Enum.Font.FredokaOne
injectCounterbloxButton.TextScaled = true

local UIStroke = Instance.new("UIStroke")
UIStroke.Thickness = 2
UIStroke.Parent = injectCounterbloxButton

local UIStroke2 = Instance.new("UIStroke")
UIStroke2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke2.Thickness = 2
UIStroke2.Parent = injectCounterbloxButton

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0.2, 0)
UICorner.Parent = injectCounterbloxButton

injectCounterbloxButton.Parent = counterbloxFrame

-- // Button Click
injectCounterbloxButton.Activated:Connect(function()
	local random = Random.new()
	clickSfx.PlaybackSpeed = random:NextNumber(0.5, 2.5)
	clickSfx:Play()

	-- Local ESP + Names + Aimlock (Camera-Based) + Head Visibility Alert
	local Players = game:GetService("Players")
	local LocalPlayer = Players.LocalPlayer
	local RunService = game:GetService("RunService")
	local UserInputService = game:GetService("UserInputService")
	local Camera = workspace.CurrentCamera
	local SoundService = game:GetService("SoundService")

	-- ESP Settings
	local FILL_TRANSPARENCY = 0.7
	local OUTLINE_TRANSPARENCY = 0
	local ALWAYS_ON_TOP = true
	local TEAM_COLOR = Color3.fromRGB(0, 255, 0)   -- green for teammates
	local ENEMY_COLOR = Color3.fromRGB(255, 0, 0)  -- red for enemies
	local VISIBLE_COLOR = Color3.fromRGB(255, 255, 0) -- yellow when head is visible

	-- Aimlock Settings
	local AIM_KEY = Enum.KeyCode.C 
	local AIM_ENABLED = false
	local AIM_SMOOTHNESS = 0.2 -- smaller = faster snap

	-- Optional alert sound
	local alertSound = Instance.new("Sound")
	alertSound.SoundId = "rbxassetid://2865227039" -- ping sound
	alertSound.Volume = 2
	alertSound.Parent = SoundService

	-- ===========================================
	-- ESP FUNCTIONS
	-- ===========================================
	local function getColorForPlayer(player)
		if LocalPlayer.Team and player.Team and player.Team == LocalPlayer.Team then
			return TEAM_COLOR
		else
			return ENEMY_COLOR
		end
	end

	local function applyHighlight(player, character)
		if not character then return end
		local highlight = character:FindFirstChild("ESP_Highlight")
		if not highlight then
			highlight = Instance.new("Highlight")
			highlight.Name = "ESP_Highlight"
			highlight.Adornee = character
			highlight.OutlineTransparency = OUTLINE_TRANSPARENCY
			highlight.FillTransparency = FILL_TRANSPARENCY
			highlight.DepthMode = ALWAYS_ON_TOP and Enum.HighlightDepthMode.AlwaysOnTop or Enum.HighlightDepthMode.Occluded
			highlight.Parent = character
		end
		local color = getColorForPlayer(player)
		highlight.FillColor = color
		highlight.OutlineColor = color
	end

	local function applyNameTag(player, character)
		if not character then return end
		local head = character:WaitForChild("Head", 5)
		if not head then return end
		local tag = head:FindFirstChild("ESP_NameTag")
		if not tag then
			local billboard = Instance.new("BillboardGui")
			billboard.Name = "ESP_NameTag"
			billboard.Size = UDim2.new(0, 150, 0, 50)
			billboard.StudsOffset = Vector3.new(0, 2.5, 0)
			billboard.AlwaysOnTop = true
			billboard.Parent = head

			local label = Instance.new("TextLabel")
			label.Name = "Label"
			label.Size = UDim2.fromScale(1, 1)
			label.BackgroundTransparency = 1
			label.TextScaled = true
			label.Font = Enum.Font.GothamBold
			label.TextStrokeTransparency = 0.2
			label.Parent = billboard
		end
		local label = head:FindFirstChild("ESP_NameTag"):FindFirstChild("Label")
		if label then
			label.Text = player.Name
			label.TextColor3 = getColorForPlayer(player)
		end
	end

	local function setupCharacter(player, character)
		applyHighlight(player, character)
		applyNameTag(player, character)
	end

	local function setupPlayer(player)
		if player.Character then
			setupCharacter(player, player.Character)
		end
		player.CharacterAdded:Connect(function(char)
			setupCharacter(player, char)
		end)
		player:GetPropertyChangedSignal("Team"):Connect(function()
			if player.Character then
				applyHighlight(player, player.Character)
				applyNameTag(player, player.Character)
			end
		end)
	end

	for _, p in ipairs(Players:GetPlayers()) do
		setupPlayer(p)
	end

	Players.PlayerAdded:Connect(setupPlayer)

	LocalPlayer:GetPropertyChangedSignal("Team"):Connect(function()
		for _, p in ipairs(Players:GetPlayers()) do
			if p.Character then
				applyHighlight(p, p.Character)
				applyNameTag(p, p.Character)
			end
		end
	end)

	-- ===========================================
	-- AIMLOCK FUNCTIONS
	-- ===========================================
	UserInputService.InputBegan:Connect(function(input, gameProcessed)
		if gameProcessed then return end
		if input.KeyCode == AIM_KEY then
			AIM_ENABLED = true
		end
	end)

	UserInputService.InputEnded:Connect(function(input, gameProcessed)
		if input.KeyCode == AIM_KEY then
			AIM_ENABLED = false
		end
	end)

	local function getClosestEnemy()
		local closestDist = math.huge
		local closestPlayer = nil
		for _, player in pairs(Players:GetPlayers()) do
			if player ~= LocalPlayer and player.Character and player.Character:FindFirstChild("Head") then
				-- skip teammates
				if not (LocalPlayer.Team and player.Team and player.Team == LocalPlayer.Team) then
					local headPos = Camera:WorldToViewportPoint(player.Character.Head.Position)
					local mousePos = UserInputService:GetMouseLocation()
					local dist = (Vector2.new(headPos.X, headPos.Y) - Vector2.new(mousePos.X, mousePos.Y)).Magnitude
					if dist < closestDist then
						closestDist = dist
						closestPlayer = player
					end
				end
			end
		end
		return closestPlayer
	end

	RunService.RenderStepped:Connect(function()
		if AIM_ENABLED then
			local target = getClosestEnemy()
			if target and target.Character and target.Character:FindFirstChild("Head") then
				local headPos = target.Character.Head.Position
				local camCF = Camera.CFrame
				-- smooth camera rotation toward target
				Camera.CFrame = camCF:Lerp(CFrame.lookAt(camCF.Position, headPos), AIM_SMOOTHNESS)

				-- === NEW: HEAD VISIBILITY ALERT ===
				local raycastParams = RaycastParams.new()
				raycastParams.FilterDescendantsInstances = {LocalPlayer.Character}
				raycastParams.FilterType = Enum.RaycastFilterType.Blacklist

				local result = workspace:Raycast(camCF.Position, (headPos - camCF.Position), raycastParams)
				local headVisible = result == nil or result.Instance:IsDescendantOf(target.Character)

				-- Change name tag color if visible
				local label = target.Character:FindFirstChild("Head"):FindFirstChild("ESP_NameTag")
				if label and label:FindFirstChild("Label") then
					label.Label.TextColor3 = headVisible and VISIBLE_COLOR or getColorForPlayer(target)
				end

				-- Play sound once when head first becomes visible
				if headVisible and not target.Character.Head:FindFirstChild("HeadSeenFlag") then
					local flag = Instance.new("BoolValue")
					flag.Name = "HeadSeenFlag"
					flag.Parent = target.Character.Head
					alertSound:Play()
				elseif not headVisible and target.Character.Head:FindFirstChild("HeadSeenFlag") then
					target.Character.Head:FindFirstChild("HeadSeenFlag"):Destroy()
				end
			end
		end
	end)
end)

-- // Button Hover
injectCounterbloxButton.InputBegan:Connect(function(inputObject)
	local random = Random.new()
	hoverSfx.PlaybackSpeed = random:NextNumber(0.5, 3)
	hoverSfx:Play()
end)

-- // >>>>>>>>>>>>>>>>>>>>>>>>>>>><|[BLINDSHOT MENU]|><<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< \\
-- // Create Frame
local blindshotFrame = Instance.new("Frame")
blindshotFrame.Position = UDim2.fromScale(0.3, 0)
blindshotFrame.Size = UDim2.fromScale(0.7, 1)
blindshotFrame.BackgroundTransparency = 1
blindshotFrame.Visible = false
blindshotFrame.Parent = frame

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
title.Text = " Blindshot Menu (WIP) "
title.Parent = blindshotFrame

local UIStroke = Instance.new("UIStroke")
UIStroke.Thickness = 2
UIStroke.Parent = title

-- // Create Logo Image
local logo = Instance.new("ImageLabel")
logo.AnchorPoint = Vector2.new(0.5, 0.5)
logo.Size = UDim2.fromScale(1, 1)
logo.BackgroundTransparency = 1
logo.Image = "rbxassetid://136167448958896"
logo.Position = UDim2.fromScale(0.5, 0.5)
logo.ImageTransparency = 0.9
logo.Parent = blindshotFrame

-- // Create RatioConstraint (keeps logo from stretching)
local RatioConstraint = Instance.new("UIAspectRatioConstraint")
RatioConstraint.Parent = logo

-- // Create Button
local injectESPBSButton = Instance.new("TextButton")
injectESPBSButton.Text = "Inject ESP"
injectESPBSButton.Size = UDim2.fromScale(0.5, 0.2)
injectESPBSButton.AnchorPoint = Vector2.new(0.5, 0.5)
injectESPBSButton.Position = UDim2.fromScale(0.5, 0.75)
injectESPBSButton.BackgroundColor3 = Color3.fromRGB(0, 200, 255)
injectESPBSButton.TextColor3 = Color3.fromRGB(255, 255, 255)
injectESPBSButton.Font = Enum.Font.FredokaOne
injectESPBSButton.TextScaled = true

local UIStroke = Instance.new("UIStroke")
UIStroke.Thickness = 2
UIStroke.Parent = injectESPBSButton

local UIStroke2 = Instance.new("UIStroke")
UIStroke2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke2.Thickness = 2
UIStroke2.Parent = injectESPBSButton

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0.2, 0)
UICorner.Parent = injectESPBSButton

injectESPBSButton.Parent = blindshotFrame

-- // Button Click
injectESPBSButton.Activated:Connect(function()
	local random = Random.new()
	clickSfx.PlaybackSpeed = random:NextNumber(0.5, 2.5)
	clickSfx:Play()
	
	-- LocalScript (StarterPlayerScripts)

	local Players = game:GetService("Players")
	local LocalPlayer = Players.LocalPlayer

	-- Force all parts on a character to be visible (client-only)
	local function forceVisible(character)
		for _, obj in ipairs(character:GetDescendants()) do
			if obj:IsA("BasePart") then
				obj.LocalTransparencyModifier = 0
				obj.CanCollide = obj.CanCollide -- noop but prevents weird replication bugs
			elseif obj:IsA("Decal") or obj:IsA("Texture") then
				obj.Transparency = 0
			end
		end
	end

	-- Add the blue outline
	local function addOutline(character)
		local existing = character:FindFirstChild("ESP_Box")
		if existing then
			existing:Destroy()
		end

		local box = Instance.new("SelectionBox")
		box.Name = "ESP_Box"
		box.LineThickness = 0.02
		box.SurfaceTransparency = 0.8
		box.Color3 = Color3.fromRGB(0, 120, 255) -- blue
		box.Adornee = character
		box.Parent = character
	end

	local function setupCharacter(character)
		forceVisible(character)
		addOutline(character)

		-- Keep it updated if new parts are added later
		character.DescendantAdded:Connect(function(obj)
			if obj:IsA("BasePart") then
				obj.LocalTransparencyModifier = 0
			elseif obj:IsA("Decal") or obj:IsA("Texture") then
				obj.Transparency = 0
			end
		end)
	end

	local function onPlayerAdded(player)
		local function onCharacterAdded(character)
			setupCharacter(character)
		end

		player.CharacterAdded:Connect(onCharacterAdded)

		if player.Character then
			onCharacterAdded(player.Character)
		end
	end

	for _, player in ipairs(Players:GetPlayers()) do
		if player ~= LocalPlayer then
			onPlayerAdded(player)
		end
	end

	Players.PlayerAdded:Connect(function(player)
		if player ~= LocalPlayer then
			onPlayerAdded(player)
		end
	end)
end)

-- // Button Hover
injectESPBSButton.InputBegan:Connect(function(inputObject)
	local random = Random.new()
	hoverSfx.PlaybackSpeed = random:NextNumber(0.5, 3)
	hoverSfx:Play()
end)

-- // >>>>>>>>>>>>>>>>>>>>>>>>>>>><|[BLOXFRUIT MENU]|><<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< \\
-- // Create Frame
local bloxfruitFrame = Instance.new("Frame")
bloxfruitFrame.Position = UDim2.fromScale(0.3, 0)
bloxfruitFrame.Size = UDim2.fromScale(0.7, 1)
bloxfruitFrame.BackgroundTransparency = 1
bloxfruitFrame.Visible = false
bloxfruitFrame.Parent = frame

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
title.Text = " Bloxfruit Menu (WIP) "
title.Parent = bloxfruitFrame

local UIStroke = Instance.new("UIStroke")
UIStroke.Thickness = 2
UIStroke.Parent = title

-- // Create Logo Image
local logo = Instance.new("ImageLabel")
logo.AnchorPoint = Vector2.new(0.5, 0.5)
logo.Size = UDim2.fromScale(1, 1)
logo.BackgroundTransparency = 1
logo.Image = "rbxassetid://136167448958896"
logo.Position = UDim2.fromScale(0.5, 0.5)
logo.ImageTransparency = 0.9
logo.Parent = bloxfruitFrame

-- // Create RatioConstraint (keeps logo from stretching)
local RatioConstraint = Instance.new("UIAspectRatioConstraint")
RatioConstraint.Parent = logo

-- // Create Button
local injectBFButton = Instance.new("TextButton")
injectBFButton.Text = "Aim Cheats+ESP (Off)"
injectBFButton.Size = UDim2.fromScale(0.5, 0.2)
injectBFButton.AnchorPoint = Vector2.new(0.5, 0.5)
injectBFButton.Position = UDim2.fromScale(0.5, 0.75)
injectBFButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
injectBFButton.TextColor3 = Color3.fromRGB(255, 255, 255)
injectBFButton.Font = Enum.Font.FredokaOne
injectBFButton.TextScaled = true

local UIStroke = Instance.new("UIStroke")
UIStroke.Thickness = 2
UIStroke.Parent = injectBFButton

local UIStroke2 = Instance.new("UIStroke")
UIStroke2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke2.Thickness = 2
UIStroke2.Parent = injectBFButton

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0.2, 0)
UICorner.Parent = injectBFButton

injectBFButton.Parent = bloxfruitFrame

-- // Settings
local FEATURES_ENABLED = false
local connections = {}
local screenGui

-- // Button Click
injectBFButton.Activated:Connect(function()
	local random = Random.new()
	clickSfx.PlaybackSpeed = random:NextNumber(0.5, 2.5)
	clickSfx:Play()

	FEATURES_ENABLED = not FEATURES_ENABLED

	if FEATURES_ENABLED then
		injectBFButton.Text = "Aim Cheats+ESP (On)"
		injectBFButton.BackgroundColor3 = Color3.fromRGB(0, 255, 0)

		-- Local ESP + Names + Aimlock (Camera-Based) + Head Visibility Alert
		local Players = game:GetService("Players")
		local LocalPlayer = Players.LocalPlayer
		local RunService = game:GetService("RunService")
		local UserInputService = game:GetService("UserInputService")
		local Camera = workspace.CurrentCamera
		local SoundService = game:GetService("SoundService")

		-- ESP Settings
		local FILL_TRANSPARENCY = 0.7
		local OUTLINE_TRANSPARENCY = 0
		local ALWAYS_ON_TOP = true
		local PLAYER_COLORS = Color3.fromRGB(255, 0, 0)
		local VISIBLE_COLOR = Color3.fromRGB(255, 255, 0)

		-- Aimlock Settings
		local AIM_ENABLED = false
		local AIM_SMOOTHNESS = 0.2 -- smaller = faster snap

		-- FOV Settings
		local FOV_RADIUS = 360
		local FOV_VISIBLE_ONLY = true

		-- ===========================================
		-- ESP FUNCTIONS
		-- ===========================================
		local function applyHighlight(player, character)
			if player ~= LocalPlayer then
				if not character then return end
				local highlight = character:FindFirstChild("ESP_Highlight")
				if not highlight then
					highlight = Instance.new("Highlight")
					highlight.Name = "ESP_Highlight"
					highlight.Adornee = character
					highlight.OutlineTransparency = OUTLINE_TRANSPARENCY
					highlight.FillTransparency = FILL_TRANSPARENCY
					highlight.DepthMode = ALWAYS_ON_TOP and Enum.HighlightDepthMode.AlwaysOnTop or Enum.HighlightDepthMode.Occluded
					highlight.Parent = character
				end
				highlight.FillColor = PLAYER_COLORS
				highlight.OutlineColor = PLAYER_COLORS
			end
		end

		local function applyNameTag(player, character)
			if player ~= LocalPlayer then
				if not character then return end
				local head = character:WaitForChild("Head", 5)
				if not head then return end
				local tag = head:FindFirstChild("ESP_NameTag")
				if not tag then
					local billboard = Instance.new("BillboardGui")
					billboard.Name = "ESP_NameTag"
					billboard.Size = UDim2.new(0, 150, 0, 50)
					billboard.StudsOffset = Vector3.new(0, 2.5, 0)
					billboard.AlwaysOnTop = true
					billboard.Parent = head

					local label = Instance.new("TextLabel")
					label.Name = "Label"
					label.Size = UDim2.fromScale(1, 1)
					label.BackgroundTransparency = 1
					label.TextScaled = true
					label.Font = Enum.Font.GothamBold
					label.TextStrokeTransparency = 0.2
					label.Parent = billboard
				end
				local label = head:FindFirstChild("ESP_NameTag"):FindFirstChild("Label")
				if label then
					label.Text = player.Name
					label.TextColor3 = PLAYER_COLORS
				end
			end
		end

		local function setupCharacter(player, character)
			applyHighlight(player, character)
			applyNameTag(player, character)
		end

		local function setupPlayer(player)
			if player.Character then
				setupCharacter(player, player.Character)
			end

			table.insert(connections,
				player.CharacterAdded:Connect(function(char)
					setupCharacter(player, char)
				end)
			)

			table.insert(connections,
				player:GetPropertyChangedSignal("Team"):Connect(function()
					if player.Character then
						applyHighlight(player, player.Character)
						applyNameTag(player, player.Character)
					end
				end)
			)
		end

		for _, p in ipairs(Players:GetPlayers()) do
			setupPlayer(p)
		end

		table.insert(connections, Players.PlayerAdded:Connect(setupPlayer))

		table.insert(connections,
			LocalPlayer:GetPropertyChangedSignal("Team"):Connect(function()
				for _, p in ipairs(Players:GetPlayers()) do
					if p.Character then
						applyHighlight(p, p.Character)
						applyNameTag(p, p.Character)
					end
				end
			end)
		)

		-- ===========================================
		-- AIMLOCK INPUT (Right-Click Hold)
		-- ===========================================
		table.insert(connections,
			UserInputService.InputBegan:Connect(function(input, gameProcessed)
				if gameProcessed then return end
				if input.UserInputType == Enum.UserInputType.MouseButton2 then
					AIM_ENABLED = true
				end
			end)
		)

		table.insert(connections,
			UserInputService.InputEnded:Connect(function(input, gameProcessed)
				if input.UserInputType == Enum.UserInputType.MouseButton2 then
					AIM_ENABLED = false
				end
			end)
		)

		-- ===========================================
		-- FOV CIRCLE
		-- ===========================================
		screenGui = LocalPlayer:FindFirstChildOfClass("PlayerGui"):FindFirstChild("AimAssistGui")
		if not screenGui then
			screenGui = Instance.new("ScreenGui")
			screenGui.Name = "AimAssistGui"
			screenGui.ResetOnSpawn = false
			screenGui.Parent = LocalPlayer:WaitForChild("PlayerGui")
		end

		local fovCircle = Instance.new("Frame")
		fovCircle.Size = UDim2.fromOffset(FOV_RADIUS * 2, FOV_RADIUS * 2)
		fovCircle.AnchorPoint = Vector2.new(0.5, 0.5)
		fovCircle.BackgroundTransparency = 1
		fovCircle.BorderSizePixel = 2
		fovCircle.BorderColor3 = Color3.fromRGB(255, 255, 255)
		fovCircle.Parent = screenGui

		table.insert(connections,
			RunService.RenderStepped:Connect(function()
				local mousePos = UserInputService:GetMouseLocation()
				fovCircle.Position = UDim2.fromOffset(mousePos.X, mousePos.Y)
			end)
		)

		-- ===========================================
		-- TARGET SELECTION
		-- ===========================================
		local function getClosestEnemy()
			local closestDist = FOV_RADIUS
			local closestPlayer = nil
			local mousePos = UserInputService:GetMouseLocation()

			for _, player in pairs(Players:GetPlayers()) do
				if player ~= LocalPlayer and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
					local hrp = player.Character.HumanoidRootPart
					local screenPos, onScreen = Camera:WorldToViewportPoint(hrp.Position)

					if onScreen then
						local dist = (Vector2.new(screenPos.X, screenPos.Y) - Vector2.new(mousePos.X, mousePos.Y)).Magnitude

						if dist <= closestDist then
							if FOV_VISIBLE_ONLY then
								local params = RaycastParams.new()
								params.FilterDescendantsInstances = {LocalPlayer.Character}
								params.FilterType = Enum.RaycastFilterType.Blacklist

								local result = workspace:Raycast(Camera.CFrame.Position, (hrp.Position - Camera.CFrame.Position), params)

								if result and not result.Instance:IsDescendantOf(player.Character) then
									continue
								end
							end

							closestDist = dist
							closestPlayer = player
						end
					end
				end
			end

			return closestPlayer
		end

		-- ===========================================
		-- AIMLOCK LOOP
		-- ===========================================
		table.insert(connections,
			RunService.RenderStepped:Connect(function()
				if AIM_ENABLED then
					local target = getClosestEnemy()
					if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
						local hrpPos = target.Character.HumanoidRootPart.Position
						local camCF = Camera.CFrame

						Camera.CFrame = camCF:Lerp(CFrame.lookAt(camCF.Position, hrpPos), AIM_SMOOTHNESS)

						local raycastParams = RaycastParams.new()
						raycastParams.FilterDescendantsInstances = {LocalPlayer.Character}
						raycastParams.FilterType = Enum.RaycastFilterType.Blacklist

						local result = workspace:Raycast(camCF.Position, (hrpPos - camCF.Position), raycastParams)
						local hrpVisible = result == nil or result.Instance:IsDescendantOf(target.Character)

						local labelHolder = target.Character:FindFirstChild("Head")
						local tag = labelHolder and labelHolder:FindFirstChild("ESP_NameTag")
						local label = tag and tag:FindFirstChild("Label")
						if label then
							label.TextColor3 = hrpVisible and VISIBLE_COLOR or PLAYER_COLORS
						end

						if hrpVisible and not target.Character.HumanoidRootPart:FindFirstChild("HumanoidRootPartSeenFlag") then
							local flag = Instance.new("BoolValue")
							flag.Name = "HumanoidRootPartSeenFlag"
							flag.Parent = target.Character.HumanoidRootPart
						elseif not hrpVisible and target.Character.HumanoidRootPart:FindFirstChild("HumanoidRootPartSeenFlag") then
							target.Character.HumanoidRootPart:FindFirstChild("HumanoidRootPartSeenFlag"):Destroy()
						end
					end
				end
			end)
		)

	else
		injectBFButton.Text = "Aim Cheats+ESP (Off)"
		injectBFButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
		
		-- disconnect all events
		for _, c in ipairs(connections) do
			if c and c.Disconnect then
				c:Disconnect()
			end
		end

		table.clear(connections)

		-- remove FOV GUI
		if screenGui then
			screenGui:Destroy()
			screenGui = nil
		end

		-- remove ESP highlights & name tags
		for _, p in ipairs(game:GetService("Players"):GetPlayers()) do
			if p.Character then
				for _, inst in ipairs(p.Character:GetChildren()) do
					if inst.Name == "ESP_Highlight" then inst:Destroy() end
				end
				local head = p.Character:FindFirstChild("Head")
				if head and head:FindFirstChild("ESP_NameTag") then
					head.ESP_NameTag:Destroy()
				end
			end
		end
	end
end)

-- // Button Hover
injectBFButton.InputBegan:Connect(function(inputObject)
	local random = Random.new()
	hoverSfx.PlaybackSpeed = random:NextNumber(0.5, 3)
	hoverSfx:Play()
end)

-- // >>>>>>>>>>>>>>>>>>>>>>>>>>>><|[MENU CONTROLS]|><<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< \\
-- // Toggle Frame Function
local function toggleFrame()
	frame.Visible = not frame.Visible
end

-- // Listen for Right Shift
UserInputService.InputBegan:Connect(function(input, gameProcessed)
	if gameProcessed then return end

	if input.KeyCode == Enum.KeyCode.P then
		toggleFrame()
	elseif input.KeyCode == Enum.KeyCode.Delete then
		screenGui:Destroy()
	end
end)

-- // Close All Menus
local function closeAll()
	teleportFrame.Visible = false
	counterbloxFrame.Visible = false
	blindshotFrame.Visible = false
	bloxfruitFrame.Visible = false
end

-- // Teleport Menu Button Click
teleportMenuButton.Activated:Connect(function()
	local random = Random.new()
	clickSfx.PlaybackSpeed = random:NextNumber(0.5, 2.5)
	clickSfx:Play()
	
	if teleportFrame.Visible == false then
		closeAll()
		
		teleportFrame.Visible = true
	end
end)

-- // Teleport Menu Button Hover
teleportMenuButton.InputBegan:Connect(function(inputObject)
	local random = Random.new()
	hoverSfx.PlaybackSpeed = random:NextNumber(0.5, 3)
	hoverSfx:Play()
end)

-- // Counterblox Menu Button Click
counterbloxMenuButton.Activated:Connect(function()
	local random = Random.new()
	clickSfx.PlaybackSpeed = random:NextNumber(0.5, 2.5)
	clickSfx:Play()

	if counterbloxFrame.Visible == false then
		closeAll()

		counterbloxFrame.Visible = true
	end
end)

-- // Counterblox Menu Button Hover
counterbloxMenuButton.InputBegan:Connect(function(inputObject)
	local random = Random.new()
	hoverSfx.PlaybackSpeed = random:NextNumber(0.5, 3)
	hoverSfx:Play()
end)

-- // Blindshot Menu Button Click
blindshotMenuButton.Activated:Connect(function()
	local random = Random.new()
	clickSfx.PlaybackSpeed = random:NextNumber(0.5, 2.5)
	clickSfx:Play()

	if blindshotFrame.Visible == false then
		closeAll()

		blindshotFrame.Visible = true
	end
end)

-- // Blindshot Menu Button Hover
blindshotMenuButton.InputBegan:Connect(function(inputObject)
	local random = Random.new()
	hoverSfx.PlaybackSpeed = random:NextNumber(0.5, 3)
	hoverSfx:Play()
end)

-- // Bloxfruit Menu Button Click
bloxfruitMenuButton.Activated:Connect(function()
	local random = Random.new()
	clickSfx.PlaybackSpeed = random:NextNumber(0.5, 2.5)
	clickSfx:Play()

	if bloxfruitFrame.Visible == false then
		closeAll()

		bloxfruitFrame.Visible = true
	end
end)

-- // Bloxfruit Menu Button Hover
bloxfruitMenuButton.InputBegan:Connect(function(inputObject)
	local random = Random.new()
	hoverSfx.PlaybackSpeed = random:NextNumber(0.5, 3)
	hoverSfx:Play()
end)
