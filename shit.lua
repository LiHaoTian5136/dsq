--by 74235 against skids
local player = game.Players.LocalPlayer
local mouse = player:GetMouse()
local UIS = game:GetService("UserInputService")

local gui = player:WaitForChild("PlayerGui")
local function write(text, object)
    if object:IsA("TextLabel") then
        local count = object:FindFirstChild("Count")
        if count == nil then
            count = Instance.new("NumberValue")
            count.Parent = object
            count.Name = "Count"
            count.Value = 1
        else
            count.Value = count.Value + 1
        end

        local startcount = count.Value
        for i = 1, #text do
            if count.Value == startcount then
                -- Append the new character to the existing text
                local letter = string.sub(text, i, i)
                object.Text = object.Text .. letter  -- Append the new letter
                
                -- Play sound (for typing effect)
                local sound = Instance.new("Sound")
                sound.Parent = object
                sound.Name = "Tick"
                sound.PlaybackSpeed = 1.5
                sound.SoundId = "rbxassetid://151715959"
                sound.Playing = true
                sound.TimePosition = 0
                sound:Play()
                game:GetService("Debris"):AddItem(sound, sound.TimeLength)
                wait(0.01)  -- Slow down typing speed
            else
                break
            end
        end
    end
end

local starter = Instance.new("ScreenGui")
starter.Parent = gui
starter.Name = "DogeGui"
starter.ResetOnSpawn = true
starter.Enabled = true
local label = Instance.new("TextLabel")
label.Parent = starter
label.BackgroundTransparency = 1
label.BorderSizePixel = 0
label.Font = Enum.Font.SciFi
label.TextColor3 = Color3.fromRGB(255,255,255)
label.TextStrokeColor3 = Color3.fromRGB(0,0,0)
label.TextStrokeTransparency = 1
label.TextWrapped = true
label.TextSize = 16
label.Visible = true
label.Text = ""
label.Size = UDim2.new(0.3,0,0.05,0)
label.Position = UDim2.new(-0.3,0,0.05,0)
label:TweenPosition(UDim2.new(0.35,0,0.05,0),"InOut","Quint",0.5,true,nil)
local tag = Instance.new("TextLabel")
tag.Parent = starter
tag.BackgroundTransparency = 1
tag.BorderSizePixel = 0
tag.Font = Enum.Font.SciFi
tag.TextColor3 = Color3.fromRGB(255,255,255)
tag.TextStrokeColor3 = Color3.fromRGB(0,0,0)
tag.TextStrokeTransparency = 1
tag.TextWrapped = true
tag.TextSize = 15
tag.Visible = true
tag.Text = ""
tag.Size = UDim2.new(0.3,0,0.05,0)
tag.Position = UDim2.new(0.35,0,0.1,0)
local find = Instance.new("TextLabel")
find.Parent = starter
find.BackgroundTransparency = 1
find.BorderSizePixel = 0
find.Font = Enum.Font.SciFi
find.TextColor3 = Color3.fromRGB(255,255,255)
find.TextStrokeColor3 = Color3.fromRGB(0,0,0)
find.TextStrokeTransparency = 1
find.TextWrapped = true
find.TextSize = 15
find.Visible = true
find.Text = ""
find.Size = UDim2.new(0.3,0,0.05,0)
find.Position = UDim2.new(0.35,0,0.15,0)
delay(0,function()
	while wait() do
		for change = 1,255 do
			label.TextColor3 = Color3.fromHSV(change/255,1,1)
			tag.TextColor3 = Color3.fromHSV(change/255,1,1)
			find.TextColor3 = Color3.fromHSV(change/255,1,1)
			wait()
		end
	end
end)
delay(0.1, function()
    write("PRESS Q TO SUMMON A DOGE || Z TO CYCLE TYPE \n \nCURRENT STATUS || MOVE TO || CLICK TO JUMP", label)
end)




--instances
local function definedog()
local doggo=Instance.new("Model",workspace)
doggo.Name = "Doge"
local torso=Instance.new("Part",doggo)
torso.Name = "Torso"
local head=Instance.new("Part",doggo)
head.Name = "Head"
local leftthing=Instance.new("Part",doggo)
leftthing.Name = "Left Arm"
local rightthing=Instance.new("Part",doggo)
rightthing.Name = "Right Arm"
local rightleg=Instance.new("Part",doggo)
rightleg.Name = "Right Leg"
local leftleg=Instance.new("Part",doggo)
leftleg.Name = "Left Leg"
local tail=Instance.new("Part",doggo)
tail.Name = "Tail"
head.Transparency = 1
head.Size = Vector3.new(1, 0.2, 1)
torso.Size = Vector3.new(1, 1.5, 3.75)
tail.Size = Vector3.new(0.75, 1, 0.75)
rightleg.Size = Vector3.new(0.5, 1.9, 0.5)
leftleg.Size = Vector3.new(0.5, 1.9, 0.5)
leftthing.Size = Vector3.new(0.5, 1.9, 0.5)
rightthing.Size = Vector3.new(0.5, 1.9, 0.5)
local headPosition = player.Character.Head.Position
headPosition = headPosition + Vector3.new(0, 9, 9)
doggo.Parent = workspace
doggo:MoveTo(headPosition)


local hum=Instance.new("Humanoid",doggo)

local barksound=Instance.new("Sound",head)
barksound.Name = "Bark"
local wowsound=Instance.new("Sound",head)
wowsound.Name = "Wow"
wowsound.SoundId = "http://www.roblox.com/asset/?id=257361046" 
wowsound:Play()

local leftamesh=Instance.new("SpecialMesh",leftthing)
local rightamesh=Instance.new("SpecialMesh",rightthing)
local leftlmesh=Instance.new("SpecialMesh",leftleg)
local rightlmesh=Instance.new("SpecialMesh",rightleg)
local torsomesh=Instance.new("SpecialMesh",torso)
local tailmesh=Instance.new("SpecialMesh",tail)

--so doggo doesnt wear sum hat from some random nigga skid
local nohatinitialization=Instance.new("Hat",doggo)
nohatinitialization.Name = "NoHat"

--moving all humanoid data from original model2script
hum.DisplayName = ""

--meshing
leftamesh.MeshId = "http://www.roblox.com/asset/?id=257307555";
leftamesh.TextureId = "http://www.roblox.com/asset/?id=255486143";
leftamesh.Offset = Vector3.new(0.025, 0.2, 0.75)
rightamesh.MeshId = "http://www.roblox.com/asset/?id=255485626";
rightamesh.TextureId = "http://www.roblox.com/asset/?id=255486143";
rightamesh.Offset = Vector3.new(-0.05, -0.05, 0)
leftlmesh.MeshId = "http://www.roblox.com/asset/?id=257316977";
leftlmesh.TextureId = "http://www.roblox.com/asset/?id=255486143";
leftlmesh.Offset = Vector3.new(-0.075, -0.1, 0)
rightlmesh.MeshId = "http://www.roblox.com/asset/?id=257317035";
rightlmesh.TextureId = "http://www.roblox.com/asset/?id=255486143";
rightlmesh.Offset = Vector3.new(0.075, -0.1, 0)
torsomesh.MeshId = "http://www.roblox.com/asset/?id=257307222";
torsomesh.TextureId = "http://www.roblox.com/asset/?id=255486143";
torsomesh.Offset = Vector3.new(0, 0, 0)
torsomesh.Scale = Vector3.new(1.1,1,1)
tailmesh.MeshId = "http://www.roblox.com/asset/?id=255485601";
tailmesh.TextureId = "http://www.roblox.com/asset/?id=255486143";
tailmesh.Offset = Vector3.new(0, 0, 0)

--important stuff
local Neck=Instance.new("Weld",torso)
Neck.Name = "Neck"
Neck.C0 = CFrame.new(-0, -49.979, -0)
Neck.C1 = CFrame.new(-0, -50.829, 1.375)
Neck.Part0 = torso;
Neck.Part1  = head;
Neck.Enabled = true;

local lhipmotor = Instance.new("Motor6D",torso)
lhipmotor.Name = "Left Hip"
local rhipmotor = Instance.new("Motor6D",torso)
rhipmotor.Name = "Right Hip"
local lshouldermotor = Instance.new("Motor6D",torso)
lshouldermotor.Name = "Left Shoulder"
local rshouldermotor = Instance.new("Motor6D",torso)
rshouldermotor.Name = "Right Shoulder"
local tailmotor = Instance.new("Motor6D",torso)
tailmotor.Name = "Tail"

lhipmotor.C0 = CFrame.new(-0.227, -1.012, 1.204)
lhipmotor.C1 = CFrame.new(0.125, 0.375, -0.2)
lhipmotor.MaxVelocity = 0.15
lhipmotor.Part0 = torso
lhipmotor.Part1 = leftleg
lhipmotor.Enabled = true

rhipmotor.C0 = CFrame.new(0.483, -1.012, 1.204)
rhipmotor.C1 = CFrame.new(0.125, 0.375, -0.2)
rhipmotor.MaxVelocity = 0.15
rhipmotor.Part0 = torso
rhipmotor.Part1 = rightleg
rhipmotor.Enabled = true


lshouldermotor.C0 = CFrame.new(-0.265, -0.725, -0.655)
lshouldermotor.C1 = CFrame.new(0.125, 0.775, 0.025)
lshouldermotor.MaxVelocity = 0.15
lshouldermotor.Part0 = torso
lshouldermotor.Part1 = leftthing
lshouldermotor.Enabled = true

rshouldermotor.C0 = CFrame.new(0.525, -0.725, -0.655)
rshouldermotor.C1 = CFrame.new(0.125, 0.775, 0.025)
rshouldermotor.MaxVelocity = 0.15
rshouldermotor.Part0 = torso
rshouldermotor.Part1 = rightthing
rshouldermotor.Enabled = true

tailmotor.C0 = CFrame.new(-0.052, -0.07, 1.72)
tailmotor.C1 = CFrame.new(0.144, -0.173, 0.234)
tailmotor.MaxVelocity = 0.15
tailmotor.Part0 = torso
tailmotor.Part1 = tail
tailmotor.Enabled = true
	
	
	local particle = Instance.new("ParticleEmitter")
	particle.Parent = doggo:WaitForChild("Torso")
	particle.Enabled = true
	particle.ZOffset = 2
	particle.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(0.2,0),NumberSequenceKeypoint.new(1,1)})
	particle.Speed = NumberRange.new(3)
	particle.LightEmission = 1
	particle.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(math.random(0,255),math.random(0,255),math.random(0,255))),ColorSequenceKeypoint.new(1,Color3.fromRGB(math.random(0,255),math.random(0,255),math.random(0,255)))})
	particle.SpreadAngle = Vector2.new(360,360)
	particle.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,2),NumberSequenceKeypoint.new(1,0)})
	particle.Rate = 500
	particle.Rotation = NumberRange.new(-360,360)
	particle.Lifetime = NumberRange.new(1)
	delay(0.2,function()
		particle.Enabled = false
	end)
	game:GetService("Debris"):AddItem(particle,1.2)
	
	torso.Touched:connect(function(Hit)
		if Hit.Parent:IsA("Model") then
			if Hit.Parent.Name == "xc_bm" then
				
			else
			Hit.Parent.Humanoid.Health = Hit.Parent.Humanoid.Health - 20;
				local blood = Instance.new("ParticleEmitter")
				blood.Parent = Hit.Parent.Torso
				blood.Texture = "rbxassetid://709137722"
				blood.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(0.1,0),NumberSequenceKeypoint.new(0.8,0),NumberSequenceKeypoint.new(1,1)})
				blood.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(85,0,0)),ColorSequenceKeypoint.new(1,Color3.fromRGB(85,0,0))})
				blood.Name = "Blood"
				blood.Enabled = true
				blood.Lifetime = NumberRange.new(1)
				blood.Speed = NumberRange.new(10)
				blood.LightEmission = 0.8
				blood.LightInfluence = 0
				blood.Rate = 500
				blood.Rotation = NumberRange.new(-360,360)
				blood.RotSpeed = NumberRange.new(-100,100)
				blood.SpreadAngle = Vector2.new(360,360)
				blood.Acceleration = Vector3.new(0,-10,0)
				blood.Drag = 1
			blood.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,2.87),NumberSequenceKeypoint.new(0.104,2.06),NumberSequenceKeypoint.new(1,0)})
			local sound = Instance.new("Sound")
			sound.SoundId = "rbxassetid://220833976"
			sound.Parent = Hit.Parent.Torso
			sound:Play()
			local sound2 = Instance.new("Sound")
			sound2.SoundId = "http://www.roblox.com/asset/?id=144016898"
			sound2.Parent = torso
			sound2:Play()
			game:GetService("Debris"):AddItem(sound,1)
			game:GetService("Debris"):AddItem(sound2,0.3)
				game:GetService("Debris"):AddItem(blood,2)
				delay(0.4,function()
					blood.Enabled = false
				end)
				end
		end
	end)
	
end

Pose = "None"
LastPose = Pose
PoseTime = tick()

ToolAnimTime = 0

function SetPose(pose)
	LastPose = Pose
	Pose = pose
	PoseTime = tick()
end

function OnRunning(Speed)
	if Speed > 0 then
		SetPose("Running")
	else
		SetPose("Standing")
	end
end

function OnDied()
	SetPose("Dead")
end

function OnJumping()
	SetPose("Jumping")
end

function OnClimbing()
	SetPose("Climbing")
end

function OnGettingUp()
	SetPose("GettingUp")
end

function OnFreeFall()
	SetPose("FreeFall")
end

function OnFallingDown()
	SetPose("FallingDown")
end

function OnSeated()
	SetPose("Seated")
end

function OnPlatformStanding()
	SetPose("PlatformStanding")
end

function OnSwimming(Speed)
	return OnRunning(Speed)
end

function MoveJump(RightShoulder, LeftShoulder, RightHip, LeftHip)
	RightShoulder.MaxVelocity = 0.15
	LeftShoulder.MaxVelocity = 0.15
	RightShoulder.DesiredAngle = 0.5
	LeftShoulder.DesiredAngle = -0.5
	RightHip.DesiredAngle = -0.5
	LeftHip.DesiredAngle = 0.5
end

function MoveFreeFall(RightShoulder, LeftShoulder, RightHip, LeftHip)
	RightShoulder.MaxVelocity = 0.15
	LeftShoulder.MaxVelocity = 0.15
	RightShoulder.DesiredAngle = 0.5
	LeftShoulder.DesiredAngle = -0.5
	RightHip.DesiredAngle = -0.5
	LeftHip.DesiredAngle = 0.5
end

function MoveSit(RightShoulder, LeftShoulder, RightHip, LeftHip)
	RightShoulder.MaxVelocity = 0.15
	LeftShoulder.MaxVelocity = 0.15
	RightShoulder.DesiredAngle = (math.pi / 2)
	LeftShoulder.DesiredAngle = -(math.pi / 2)
	RightHip.DesiredAngle = 1
	LeftHip.DesiredAngle = -1
end

function GetTool(Figure)	
	for i, v in pairs(Figure:GetChildren()) do
		if v:IsA("Tool") then
			return v
		end
	end
end

function GetToolAnim(Tool)
	for i, v in pairs(Tool:GetChildren()) do
		if v:IsA("StringValue") and v.Name == "ToolAnim" then
			return v
		end
	end
	return nil
end

function AnimateTool(RightShoulder, LeftShoulder, RightHip, LeftHip)

	if (ToolAnim == "None") then
		return
	end

	if (ToolAnim == "Slash") then
		RightShoulder.MaxVelocity = 0.5
		RightShoulder.DesiredAngle = 0
		return
	end

	if (ToolAnim == "Lunge") then
		RightShoulder.MaxVelocity = 0.5
		LeftShoulder.MaxVelocity = 0.5
		RightHip.MaxVelocity = 0.5
		LeftHip.MaxVelocity = 0.5
		RightShoulder.DesiredAngle = (math.pi / 2)
		LeftShoulder.DesiredAngle = 0 
		RightHip.DesiredAngle = (math.pi / 2)
		LeftHip.DesiredAngle = 1
		return
	end

end

function Move(Time, RightShoulder, LeftShoulder, RightHip, LeftHip, Figure)
	local LimbAmplitude
	local LimbFrequency
	local NeckAmplitude
	local NeckFrequency
	local NeckDesiredAngle

	if (Pose == "Jumping") then
		MoveJump(RightShoulder, LeftShoulder, RightHip, LeftHip)
		return
	elseif (Pose == "FreeFall") then
		MoveFreeFall(RightShoulder, LeftShoulder, RightHip, LeftHip)
		return
	elseif (Pose == "Seated") then
		MoveSit(RightShoulder, LeftShoulder, RightHip, LeftHip)
		return
	end

	local ClimbFudge = 0

	if (Pose == "Running") then
		RightShoulder.MaxVelocity = 0.15
		LeftShoulder.MaxVelocity = 0.15
		LimbAmplitude = 1
		LimbFrequency = 9
		NeckAmplitude = 0
		NeckFrequency = 0
		NeckDesiredAngle = 0
		--[[if Creator and Creator.Value and Creator.Value:IsA("Player") and Creator.Value.Character then
			local CreatorCharacter = Creator.Value.Character
			local CreatorHead = CreatorCharacter:FindFirstChild("Head")
			if CreatorHead then
				local TargetPosition = CreatorHead.Position
				local Direction = Torso.CFrame.lookVector
				local HeadPosition = Head.Position
				NeckDesiredAngle = ((((HeadPosition - TargetPosition).Unit):Cross(Direction)).Y / 4)
			end
		end]]
	elseif (Pose == "Climbing") then
		RightShoulder.MaxVelocity = 0.5
		LeftShoulder.MaxVelocity = 0.5
		LimbAmplitude = 1
		LimbFrequency = 9
		NeckAmplitude = 0
		NeckFrequency = 0
		NeckDesiredAngle = 0
		ClimbFudge = math.pi
	else
		LimbAmplitude = 0.1
		LimbFrequency = 1
		NeckAmplitude = 0.25
		NeckFrequency = 1.25
	end

	NeckDesiredAngle = ((not NeckDesiredAngle and (NeckAmplitude * math.sin(Time * NeckFrequency))) or NeckDesiredAngle)
	LimbDesiredAngle = (LimbAmplitude * math.sin(Time * LimbFrequency))

	--Neck.DesiredAngle = NeckDesiredAngle
	RightShoulder.DesiredAngle = (LimbDesiredAngle + ClimbFudge)
	LeftShoulder.DesiredAngle = (LimbDesiredAngle - ClimbFudge)
	RightHip.DesiredAngle = -LimbDesiredAngle
	LeftHip.DesiredAngle = -LimbDesiredAngle

	local Tool = GetTool(Figure)

	if Tool then

		AnimStringValueObject = GetToolAnim(Tool)

		if AnimStringValueObject then
			ToolAnim = AnimStringValueObject.Value
			if AnimStringValueObject and AnimStringValueObject.Parent then
				AnimStringValueObject:Destroy()
			end
			ToolAnimTime = (Time + 0.3)
		end

		if Time > ToolAnimTime then
			ToolAnimTime = 0
			ToolAnim = "None"
		end

		AnimateTool(RightShoulder, LeftShoulder, RightHip, LeftHip)

	else
		ToolAnim = "None"
		ToolAnimTime = 0
	end

end


function dogfunctions()
   local Figure = workspace:WaitForChild("Doge")

	local RunService = game:GetService("RunService")

	local Creator = Figure:FindFirstChild("Creator")

	local Humanoid = Figure:WaitForChild("Humanoid")
	local Head = Figure:WaitForChild("Head")
	local Torso = Figure:WaitForChild("Torso")

	local Neck = Torso:WaitForChild("Neck")
	local LeftShoulder = Torso:WaitForChild("Left Shoulder")
	local RightShoulder = Torso:WaitForChild("Right Shoulder")
	local LeftHip = Torso:WaitForChild("Left Hip")
	local RightHip = Torso:WaitForChild("Right Hip")


for i, v in pairs({--[[Neck, ]]LeftShoulder, RightShoulder, LeftHip, RightHip}) do
	if v and v.Parent then
		v.DesiredAngle = 0
		v.CurrentAngle = 0
	end
end


Humanoid.Died:connect(OnDied)
Humanoid.Running:connect(OnRunning)
Humanoid.Jumping:connect(OnJumping)
Humanoid.Climbing:connect(OnClimbing)
Humanoid.GettingUp:connect(OnGettingUp)
Humanoid.FreeFalling:connect(OnFreeFall)
Humanoid.FallingDown:connect(OnFallingDown)
Humanoid.Seated:connect(OnSeated)
Humanoid.PlatformStanding:connect(OnPlatformStanding)
Humanoid.Swimming:connect(OnSwimming)

	Humanoid:ChangeState(Enum.HumanoidStateType.None)
	game:GetService("RunService").Stepped:connect(function()
		Humanoid:MoveTo(mouse.hit.p)
		local _, Time = wait(0.1)
		Move(Time, RightShoulder, LeftShoulder, RightHip, LeftHip, Figure)
	end) 
end

local KeyBind = "Q"
UIS.InputBegan:Connect(function(input,Chatting)
	if Chatting then return end
	if input.KeyCode == Enum.KeyCode[KeyBind] then
		definedog()
		dogfunctions()
	end
end)

UIS.InputBegan:Connect(function(input,Chatting)
	if Chatting then return end
	if input.KeyCode == Enum.KeyCode[KeyBind] then
		definedog()
		dogfunctions()
	end
end)

local UIS = game:GetService("UserInputService")

UIS.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
workspace.Doge.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
    end
end)
