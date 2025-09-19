--NOTE: these script lines are made for studio testing only
require(11007181783)()
local owner = game:GetService("Players"):GetPlayerFromCharacter(script.Parent)
local NLS = require(13482937602)
local LoadAssets = require
local LoadLibrary = require(4676947833)
local Create = LoadLibrary("RbxUtility").Create
--NOTE: up here these are script lines for studio testing only


--Dragon's Dawn (Ryujin-no-Yoake) Moveset by Hiko Zukusanagi
--I'm currently missing Sol Badguy's voiceclips (the ones from Guilty Gear to Guilty Gear XX), so you won't hear them in game until they get uploaded.
local Player = owner
local char = Player.Character
--animation disabler
if char:FindFirstChild("Animate") ~= nil then
	Anim = char:FindFirstChild("Animate")
	Anim.Disabled = true
	Anim.Parent = nil
	--fake animate
	Instance.new("LocalScript",char).Name = "Animate"
end	
local hum = char:FindFirstChildOfClass("Humanoid")
NLS([==[local model = owner.Character
local humanoid = model:FindFirstChildOfClass("Humanoid") or model:FindFirstChildOfClass("AnimationController")
local animator = humanoid:FindFirstChildOfClass("Animator")
for i,v in ipairs(animator:GetPlayingAnimationTracks()) do
	v:Stop()
end
--disables script so it will be automanically destroyed when script is disabled and automanically stop scripts are on (Lua Sandbox only)
script.Disabled = true]==])
if hum.RigType == Enum.HumanoidRigType.R15 then
	error([[You cannot run this script while using R15.
	Switch to the R6 avatar type to get this script to work.
	]])
end
local head = char.Head
local torso = char.Torso
local rarm = char["Right Arm"]
local larm = char["Left Arm"]
local rleg = char["Right Leg"]
local lleg = char["Left Leg"]
local root = char.HumanoidRootPart
local rjoint = root:FindFirstChild("Root Hip") or root:FindFirstChild("RootJoint")
local neck = torso.Neck
local lhip = torso["Left Hip"]
local rhip = torso["Right Hip"]
local lshoulder = torso["Left Shoulder"]
local rshoulder = torso["Right Shoulder"]

--local function stuff so it can save time
local cframe = CFrame.new
local angles = CFrame.Angles
local rad = math.rad
local new = Instance.new
local brickcolor = BrickColor.new
local cos = math.cos
local acos = math.acos
local sin = math.sin
local random = math.random
local vect2 = Vector2.new
local vect3 = Vector3.new
local runservice = game:GetService("RunService")
local debris = game:GetService("Debris")
local tweens = game:GetService("TweenService")
local color = Color3.new

--animation stuff
local anim = "idle"
local frame = 1
local sine = tick()*60

--setup rig C0s to prevent weird limb stuff
local rjC0 = cframe(0, 0, 0) * angles(rad(-90), rad(0), rad(180))
local nkC0 = cframe(0, 1, 0) * angles(rad(-90), rad(0), rad(180))
local rsC0 = cframe(-0.5, 0, 0) * angles(rad(0), rad(90), rad(0))
local lsC0 = cframe(0.5, 0, 0) * angles(rad(0), rad(-90), rad(0))

--mouse stuff
local mouse = Player:GetMouse()
local keycombo = ""
local keycombotime = 0
local keycombobreaktime = 0.5
local keycount = 0
local keytime = 0

--adventure game type stuff
local running = false
local sitting = false
local attack = char:FindFirstChild("CSAttack")
if attack == nil then
	attackv = new("BoolValue")
	attackv.Name = "CSAttack"
	attackv.Parent = char
	attack = attackv.Value
else
	attack = char:FindFirstChild("CSAttack").Value
end

local hurt = char:FindFirstChild("CSHurt")
if hurt == nil then
	hurtv = new("BoolValue")
	hurtv.Name = "CSHurt"
	hurtv.Parent = char
	hurt = hurtv.Value
else
	hurt = char:FindFirstChild("CSHurt").Value
end

--fighting game type stuff
local ducking = false
local inair = false
local guarding = char:FindFirstChild("CSGuarding")
if guarding == nil then
	guardingv = new("BoolValue")
	guardingv.Name = "CSGuarding"
	guardingv.Parent = char
	guarding = guardingv.Value
else
	guarding = char:FindFirstChild("CSGuarding").Value
end

--other stuff
local waitin = false
local moving = false
local overdrive = false
local voices = true
local dead = false
local dmult = 1

--weapon
local Weapon = char:FindFirstChild("RyujinWeapon")
local WeaponWeld = nil
local WeaponTrail = nil
local WeaponTrail2 = nil
if Weapon ~= nil then
	WeaponWeld = Weapon:FindFirstChild("WeaponWeld")
	WeaponTrail = Weapon:FindFirstChild("WeaponTrail")
	WeaponTrail2 = Weapon:FindFirstChild("WeaponTrail2")
	Trail = WeaponTrail
	Trail2 = WeaponTrail2
end
if Weapon == nil then
	Weapon = new("Part")
	Weapon.Name = "RyujinWeapon"
	Weapon.Parent = char
	Weapon.Size = vect3(1, 0.8, 4)
	Weapon.BottomSurface = Enum.SurfaceType.Smooth
	Weapon.CanCollide = false
	Weapon.Locked = true
	Weapon.TopSurface = Enum.SurfaceType.Smooth
	WeaponMesh = new("SpecialMesh")
	WeaponMesh.Name = "WeaponMesh"
	WeaponMesh.Parent = Weapon
	WeaponMesh.MeshId = "rbxassetid://7233631828"
	WeaponMesh.Scale = vect3(-0.175, 0.175, -0.175)
	WeaponMesh.Offset = vect3(0, 0, 0.625)
	WeaponMesh.TextureId = "rbxassetid://7233634005"
	WeaponMesh.MeshType = Enum.MeshType.FileMesh
	WeaponWeld = new("Weld")
	WeaponWeld.Name = "WeaponWeld"
	WeaponWeld.Parent = Weapon
	WeaponWeld.C0 = cframe(-1, 0, -1.5) * angles(rad(0),rad(0),rad(90))
	WeaponWeld.Part0 = Weapon
	WeaponWeld.Part1 = larm
	local attachment = new("Attachment",Weapon)
	attachment.Position = vect3(0.25, 0, -0.5)
	attachment.Name = "TA"
	local attachment2 = new("Attachment",Weapon)
	attachment2.Position = vect3(0, 0, 3.25)
	attachment2.Name = "TA2"
	Trail0 = new("Trail")
	Trail1 = new("Trail")
	Trail0.Name = "WeaponTrail"
	Trail0.Parent = Weapon
	Trail0.Attachment0 = attachment
	Trail0.Attachment1 = attachment2
	Trail0.Color = ColorSequence.new(color(0.552941, 0.0431373, 0.027451),color(0.552941, 0.0431373, 0.027451))
	Trail0.Texture = "http://www.roblox.com/asset/?id=2443461141"
	Trail0.Transparency = NumberSequence.new(0,0)
	Trail0.Lifetime = 0.15000000596046448
	Trail0.WidthScale = NumberSequence.new(0,1,1)
	local attachment0 = new("Attachment",Weapon)
	attachment0.Position = vect3(0.25, 0, -0.5)
	attachment0.Name = "TA0"
	local attachment1 = new("Attachment",Weapon)
	attachment1.Position = vect3(0, 0, 3.25)
	attachment1.Name = "TA1"
	Trail1.Name = "WeaponTrail2"
	Trail1.Parent = Weapon
	Trail1.Attachment0 = attachment0
	Trail1.Attachment1 = attachment1
	Trail1.Color = ColorSequence.new(color(1, 0.145098, 0.0666667),color(1, 0.145098, 0.0666667))
	Trail1.Texture = "http://www.roblox.com/asset/?id=6091329339"
	Trail1.Transparency = NumberSequence.new(0,0)
	Trail1.Lifetime = 0.10000000149011612
	Trail1.WidthScale = NumberSequence.new(0,1,1)
	Trail0.Enabled = false 
	Trail1.Enabled = false
	Trail = Trail0
	Trail2 = Trail1
end

--humanoid stuff
hum.WalkSpeed = 17
hum.BreakJointsOnDeath = false
local originalwalkspeed = hum.WalkSpeed
local originaljumppower = hum.JumpPower
local originaljumpheight = hum.JumpHeight
local maxhp = hum.MaxHealth


--gui stuff
local playergui = Player:FindFirstChild("PlayerGui")
local statsu = playergui:FindFirstChild("CSStats")
local statstext = nil
if statsu ~= nil then
	if statsu:FindFirstChild("CSProfile") then
		statstext = statsu:FindFirstChild("CSProfile"):FindFirstChild("KeyComboText")
	else
		statstext = statsu:FindFirstChild("KeyComboText")
	end
end
if statsu == nil then
	ScreenGui0 = new("ScreenGui")
	TextLabel1 = new("TextLabel")
	Frame2 = new("Frame")
	TextBox3 = new("TextBox")
	TextBox3 = new("TextBox")
	TextBox4 = new("TextBox")
	ScreenGui0.Name = "CSStats"
	ScreenGui0.Parent = playergui
	ScreenGui0.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	TextLabel1.Name = "KeyComboText"
	TextLabel1.Parent = ScreenGui0
	TextLabel1.Position = UDim2.new(0, 0, 0.550000012, 0)
	TextLabel1.Size = UDim2.new(0, 115, 0, 45)
	TextLabel1.BackgroundColor = brickcolor("Institutional white")
	TextLabel1.BackgroundColor3 = color(1, 1, 1)
	TextLabel1.BorderColor = brickcolor("Really black")
	TextLabel1.BorderColor3 = color(0, 0, 0)
	TextLabel1.BorderSizePixel = 0
	TextLabel1.Font = Enum.Font.Highway
	TextLabel1.FontSize = Enum.FontSize.Size18
	TextLabel1.Text = ""
	TextLabel1.TextColor = brickcolor("Really black")
	TextLabel1.TextColor3 = color(0, 0, 0)
	TextLabel1.TextScaled = true
	TextLabel1.TextSize = 17
	TextLabel1.TextWrap = true
	TextLabel1.TextWrapped = true
	TextLabel1.Name = "KeyComboText"
	TextLabel1.Parent = ScreenGui0
	TextLabel1.Position = UDim2.new(0, 0, 0.550000012, 0)
	TextLabel1.Size = UDim2.new(0, 115, 0, 45)
	TextLabel1.BackgroundColor = brickcolor("Institutional white")
	TextLabel1.BackgroundColor3 = color(1, 1, 1)
	TextLabel1.BorderColor = brickcolor("Really black")
	TextLabel1.BorderColor3 = color(0, 0, 0)
	TextLabel1.BorderSizePixel = 0
	TextLabel1.Font = Enum.Font.Highway
	TextLabel1.FontSize = Enum.FontSize.Size18
	TextLabel1.Text = ""
	TextLabel1.TextColor = brickcolor("Really black")
	TextLabel1.TextColor3 = color(0, 0, 0)
	TextLabel1.TextScaled = true
	TextLabel1.TextSize = 17
	TextLabel1.TextWrap = true
	TextLabel1.TextWrapped = true
	Frame2.Name = "Music"
	Frame2.Parent = ScreenGui0
	Frame2.Position = UDim2.new(0, 0, 0.5, 100)
	Frame2.Size = UDim2.new(0, 115, 0, 100)
	Frame2.BackgroundColor = brickcolor("Toothpaste")
	Frame2.BackgroundColor3 = color(0.333333, 1, 1)
	Frame2.BorderColor = brickcolor("Toothpaste")
	Frame2.BorderColor3 = color(0.333333, 1, 1)
	Frame2.Style = Enum.FrameStyle.RobloxRound
	TextBox3.Name = "MusicBox"
	TextBox3.Parent = Frame2
	TextBox3.Position = UDim2.new(-0.00445238175, 0, -0.0095996093, 0)
	TextBox3.Size = UDim2.new(1, 0, 0.5, 0)
	TextBox3.BackgroundColor = brickcolor("Institutional white")
	TextBox3.BackgroundColor3 = color(1, 1, 1)
	TextBox3.BorderColor = brickcolor("Ghost grey")
	TextBox3.BorderColor3 = color(0.780392, 0.780392, 0.780392)
	TextBox3.BorderSizePixel = 2
	TextBox3.Font = Enum.Font.SourceSansBold
	TextBox3.FontSize = Enum.FontSize.Size14
	TextBox3.Text = "Set Song ID Here"
	TextBox3.TextColor3 = color(0.196078, 0.196078, 0.196078)
	TextBox3.TextSize = 14
	TextBox3.TextWrap = true
	TextBox3.TextWrapped = true
	TextBox4.Name = "VolumeBox"
	TextBox4.Parent = Frame2
	TextBox4.Position = UDim2.new(0, 0, 0, 43)
	TextBox4.Size = UDim2.new(1, 0, 0.5, 0)
	TextBox4.BackgroundColor = brickcolor("Institutional white")
	TextBox4.BackgroundColor3 = color(1, 1, 1)
	TextBox4.BorderColor = brickcolor("Ghost grey")
	TextBox4.BorderColor3 = color(0.780392, 0.780392, 0.780392)
	TextBox4.BorderSizePixel = 2
	TextBox4.Font = Enum.Font.SourceSansBold
	TextBox4.FontSize = Enum.FontSize.Size14
	TextBox4.Text = "Set Volume ID Here"
	TextBox4.TextColor3 = color(0.196078, 0.196078, 0.196078)
	TextBox4.TextSize = 14
	TextBox4.TextWrap = true
	TextBox4.TextWrapped = true
	--I will regret porting this from Superior-sama (:sob:)
	NLS([==[local Player = game:GetService("Players").LocalPlayer
local Humanoid = Player.Character:FindFirstChildOfClass("Humanoid")
local playergui = Player:FindFirstChild("PlayerGui")
local textbox = playergui:WaitForChild("CSStats"):WaitForChild("Music")
local music = Instance.new("Sound", playergui)
music.Name = "CSUFMusic"
music.Looped = true
local id = "132046898251409"
music.SoundId = "rbxassetid://" .. id
if Player.Name == "ninjakaiden1" then
	music.SoundId = "rbxasset://sounds/shooting star.mp3"
end
music:Play()
wait()
textbox.MusicBox.FocusLost:Connect(function()
	local id = textbox.MusicBox.Text
	music.SoundId = "rbxassetid://" .. id
	music:Play()
end)
textbox.VolumeBox.FocusLost:Connect(function()
	music.Volume = tonumber(textbox.VolumeBox.Text)
end)
Humanoid.Died:Connect(function()
	music:Destroy()
end)
Player.CharacterAdded:Connect(function()
	music:Destroy()
	end)]==],char)
	statsu = ScreenGui0
	statstext = TextLabel1
end

--functions. I hate reusing stuff from premade scripts.
function raycast(pos, dir, ran, ignore)
	return workspace:FindPartOnRay(Ray.new(pos, dir.unit * ran), ignore)
end

function sound(id, volume, pitch, parent, tpos, looped, debree, dtime)
	local sound = new("Sound")
	sound.SoundId = "rbxassetid://"..id
	sound.Volume = volume
	sound.Pitch = pitch
	sound.Parent = parent
	sound.TimePosition = tpos or 0
	sound.Looped = looped or false
	sound:Play()
	sound.Ended:connect(function()
		sound:Destroy()
	end)
	if debree == true then
		debris:AddItem(sound,dtime)
	end
end


function sound1(id, volume, pitch, parent, tpos, looped)
	local sound = new("Sound")
	sound.SoundId = "rbxasset://sounds/"..id
	sound.Volume = volume
	sound.Pitch = pitch
	sound.Parent = parent
	sound.TimePosition = tpos or 0
	sound.Looped = looped or false
	sound:Play()
	sound.Ended:connect(function()
		sound:Destroy()
	end)
	debris:AddItem(sound,11.5)
end

function sound2(id, volume, pitch, parent, tpos)
	local sound = new("Sound")
	sound.SoundId = "rbxassetid://"..id
	sound.Volume = volume
	sound.Pitch = pitch
	sound.Parent = parent
	sound.TimePosition = tpos or 0
	sound.PlayOnRemove = true
	sound:Destroy()
end

function damage(humanoid, damage, hitsfx, hitvol, hitpitch, hitpart, hittpos, effect)
	local huma = humanoid
	local damage = damage or 10
	--creator value
	local creator = new("ObjectValue")
	creator.Name = "creator"
	creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
	creator.Parent = huma
	debris:AddItem(creator, 2)
	--Damage the humanoid. I really hate it when people don't get damaged by :TakeDamage() function when they have forcefields.
	sound(hitsfx, hitvol, hitpitch, hitpart, hittpos, false)
	--Give me a break...
	if huma.Parent:IsA("Model") and huma.Parent.Name ~= "ninjakaiden1" then
		if huma.MaxHealth >= 1000000 then
			huma.MaxHealth = 100
			huma.Health = 100
		end
	end
	huma.Health = huma.Health - damage * dmult
	hiteffect(effect,hitpart)
end

function magnitudedamage(dmg, effect, hitpos, hitarea, hitsfx, hitvol, hitpitch, part, move, typa)
	for i,v in pairs(workspace:GetDescendants()) do
		if v:FindFirstChildOfClass("Humanoid") and v ~= char then
			local vhum = v:FindFirstChildOfClass("Humanoid")
			local vtorso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso") or v:FindFirstChild("HumanoidRootPart")
			if vtorso then
				local vdistance = (vtorso.Position - part.CFrame*cframe(0,0,-1.5).p).magnitude
				if vdistance <= hitarea and vhum.Health > 0 then
					damage(vhum, dmg, hitsfx, hitvol, hitpitch, vtorso, hitpos, effect)
					if anim == "viperkick" then
						local BV = new("BodyVelocity", vtorso)
						BV.maxForce = vect3(math.huge,math.huge,math.huge)
						BV.P = 100000
						BV.Velocity = part.CFrame.LookVector * 75
						debris:AddItem(BV,0.1)
						vhum.PlatformStand = true
						coroutine.wrap(function()
							wait(3)
							vhum.PlatformStand = false
						end)()
					elseif anim == "sidewinder" then
						local BV = new("BodyVelocity", vtorso)
						BV.maxForce = vect3(math.huge,math.huge,math.huge)
						BV.P = 100000
						BV.Velocity = part.CFrame.LookVector * 125
						debris:AddItem(BV,0.1)
						hiteffect("fire", vtorso)
					elseif anim == "gunflame" then
						if typa ~= "gunflame" then
							local BV = new("BodyVelocity", vtorso)
							BV.maxForce = vect3(math.huge,math.huge,math.huge)
							BV.P = 100000
							BV.Velocity = part.CFrame.LookVector * 64
							debris:AddItem(BV,0.1)
						end
					elseif anim == "matou" then
						local BV = new("BodyVelocity", vtorso)
						BV.maxForce = vect3(math.huge,math.huge,math.huge)
						BV.P = 100000
						BV.Velocity = part.CFrame.LookVector * 50
						debris:AddItem(BV,0.1)
						vhum.PlatformStand = true
						coroutine.wrap(function()
							wait(3)
							vhum.PlatformStand = false
						end)()
						local boom = new("Explosion")
						boom.Position = vtorso.Position
						boom.Parent = workspace 
						boom.BlastRadius = 10 
						boom.BlastPressure = 0 
						sound2(2814354338,4.5,1,vtorso,0)
					elseif anim == "tyrant" then
						if move == false then
							local BV = new("BodyVelocity", vtorso)
							BV.maxForce = vect3(math.huge,math.huge,math.huge)
							BV.P = 100000
							BV.Velocity = part.CFrame.lookVector * 25 + part.CFrame.upVector * 75
							debris:AddItem(BV,0.1)
						elseif move == true then
							local BV = new("BodyVelocity", vtorso)
							BV.maxForce = vect3(math.huge,math.huge,math.huge)
							BV.P = 100000
							BV.Velocity = part.CFrame.LookVector * 165
							debris:AddItem(BV,0.1)
							local boom = new("Explosion")
							boom.Position = vtorso.Position
							boom.Parent = workspace 
							boom.BlastRadius = 10 
							boom.BlastPressure = 0 
							sound2(2814354338,4.5,1,vtorso,0)
							if Player.Name == "ninjakaiden1" then
								--Instant Kill (only if I'm using the weapon)
								local vhead = v:FindFirstChild("Head")
								if not game:GetService("Players"):GetPlayerFromCharacter(v) or v:FindFirstChild("CSDeathByHiko") then
									new("BoolValue",v).Name = "CSDeathByHiko"
									local scream = random(0,20)
									sound(8659358224,7.5,1,vhead,0,false)
									ragdoll(v)
									hiteffect("blood",vtorso)
									sound(5951833277, 4.5, 1, vtorso, 0,false)
									vtorso.Velocity = root.CFrame.lookVector*500
									vhum.BreakJointsOnDeath = false
									for i,v in pairs(v:GetDescendants()) do
										if v:IsA("BasePart") then
											v.CanCollide = true
										end
									end
									if scream == 1 then
										sound(2898498516,4.5,1,vhead,0,false)
									elseif scream == 2 then
										sound(4602905960,4.5,1,vhead,0.155,false)
									elseif scream == 3 then
										sound(566988981,4.5,1,vhead,0,false)
									elseif scream == 4 then
										sound(887549084,4.5,1,vhead,0,false)
									elseif scream == 5 then
										sound(884348443,4.5,1,vhead,0,false)
									elseif scream == 6 then
										sound(884348070,4.5,1,vhead,0,false)
									elseif scream == 7 then
										sound(2898498606,4.5,1,vhead,0,false)
									elseif scream == 8 then
										sound(6108565657,4.5,1,vhead,0,false)
									elseif scream == 9 then
										sound(6108540937,4.5,1,vhead,0,false)
									elseif scream == 10 then
										sound(6108566293,4.5,1,vhead,0,false)
									elseif scream == 11 then
										sound(5986548269,4.5,1,vhead,0,false)
									elseif scream == 12 then
										sound(8399859908,7.5,1,vhead,0,false)
									elseif scream == 13 then
										sound(5538532722,4.5,1,vhead,0,false)
									elseif scream == 14 then
										sound(5538517651,4.5,1,vhead,0,false)
									elseif scream == 15 then
										sound(5965159676,5.5,1,vhead,0,false)
									elseif scream == 16 then
										sound(8327314343,4.5,1,vhead,0,false)
									elseif scream == 17 then
										sound(481775819,4.5,1,vhead,0,false)
									elseif scream == 18 then
										sound(6472521644,4.5,1,vhead,0,false)
									elseif scream == 19 then
										sound(6006696349,4.5,1,vhead,0,false)
									else
										sound(1354972481,4.5,1,vhead,0,false)
									end					
									vhum:TakeDamage(math.huge)
									vhum:TakeDamage(math.huge)
									vhum.Health = 0
									vhum:SetStateEnabled(Enum.HumanoidStateType.Dead, true)
									vhum:ChangeState(Enum.HumanoidStateType.Dead)
									if vhum.Health >= vhum.MaxHealth then
										v:BreakJoints()
									end
								end
							end
						end
					elseif anim == "deathknee" then
						if Player.Name == "ninjakaiden1" then
							local vhead = v:FindFirstChild("Head")
							if v:FindFirstChild("CSDeathByHiko") then return end
							local BV = new("BodyVelocity", vtorso)
							BV.maxForce = vect3(math.huge,math.huge,math.huge)
							BV.P = 100000
							BV.Velocity = root.CFrame.LookVector * 225 + root.CFrame.upVector * 100
							debris:AddItem(BV,0.1)
							hiteffect("fire", vtorso)
							local boom = new("Explosion")
							boom.Position = vtorso.Position
							boom.Parent = workspace 
							boom.BlastRadius = 10 
							boom.BlastPressure = 0 
							sound2(2814354338,4.5,1,vtorso,0)
							--Instant Kill (only if I'm using the weapon)
							if not v:FindFirstChild("CSDeathByHiko") then
								new("BoolValue",v).Name = "CSDeathByHiko"
								local fire = new("Fire")
								fire.Parent = vtorso
								fire.Size = 10
								fire.Heat = 25
								local firesound = new("Sound")
								firesound.SoundId = "rbxassetid://303632290"
								firesound.Volume = 5
								firesound.Looped = true
								firesound.Parent = vtorso
								firesound:Play()
								local scream = random(0,20)
								sound(128195213295128,6,1,vtorso,0,false)
								sound(8588542238,5,0.2,vhead,0,false)
								ragdoll(v)
								hiteffect("blood",vtorso)
								sound2(5951833277, 4.5, 1, vtorso, 0,false)
								vhum.BreakJointsOnDeath = false
								for i,v in pairs(v:GetDescendants()) do
									if v:IsA("BasePart") then
										v.CanCollide = true
									end
								end
								if scream == 1 then
									sound(2898498516,4.5,1,vhead,0,false)
								elseif scream == 2 then
									sound(4602905960,4.5,1,vhead,0.155,false)
								elseif scream == 3 then
									sound(566988981,4.5,1,vhead,0,false)
								elseif scream == 4 then
									sound(887549084,4.5,1,vhead,0,false)
								elseif scream == 5 then
									sound(884348443,4.5,1,vhead,0,false)
								elseif scream == 6 then
									sound(884348070,4.5,1,vhead,0,false)
								elseif scream == 7 then
									sound(2898498606,4.5,1,vhead,0,false)
								elseif scream == 8 then
									sound(6108565657,4.5,1,vhead,0,false)
								elseif scream == 9 then
									sound(6108540937,4.5,1,vhead,0,false)
								elseif scream == 10 then
									sound(6108566293,4.5,1,vhead,0,false)
								elseif scream == 11 then
									sound(5986548269,4.5,1,vhead,0,false)
								elseif scream == 12 then
									sound(8399859908,7.5,1,vhead,0,false)
								elseif scream == 13 then
									sound(5538532722,4.5,1,vhead,0,false)
								elseif scream == 14 then
									sound(5538517651,4.5,1,vhead,0,false)
								elseif scream == 15 then
									sound(5965159676,5.5,1,vhead,0,false)
								elseif scream == 16 then
									sound(8327314343,4.5,1,vhead,0,false)
								elseif scream == 17 then
									sound(481775819,4.5,1,vhead,0,false)
								elseif scream == 18 then
									sound(6472521644,4.5,1,vhead,0,false)
								elseif scream == 19 then
									sound(6006696349,4.5,1,vhead,0,false)
								else
									sound(1354972481,4.5,1,vhead,0,false)
								end					
								vhum:TakeDamage(math.huge)
								vhum:TakeDamage(math.huge)
								vhum.Health = 0
								vhum:SetStateEnabled(Enum.HumanoidStateType.Dead, true)
								vhum:ChangeState(Enum.HumanoidStateType.Dead)
								if vhum.Health >= vhum.MaxHealth then
									v:BreakJoints()
								end
							end
						else
							damage(vhum, 420, 1058693352, 6.5, 0.7, vtorso, 0, "sphere")
							vhum.PlatformStand = true
							coroutine.wrap(function()
								wait(10)
								vhum.PlatformStand = false
							end)()
							local BV = new("BodyVelocity", vtorso)
							BV.maxForce = vect3(math.huge,math.huge,math.huge)
							BV.P = 100000
							BV.Velocity = root.CFrame.LookVector * 225 + root.CFrame.upVector * 100
							debris:AddItem(BV,0.1)
							local boom = new("Explosion")
							boom.Position = vtorso.Position
							boom.Parent = workspace 
							boom.BlastRadius = 10 
							boom.BlastPressure = 0 
							sound2(2814354338,4.5,1,vtorso,0)
							hiteffect("fire", vtorso)
						end
					end
					if move == true then
						if typa == "gunflame" then
							if vtorso:FindFirstChild("BodyVelocity") then vtorso:FindFirstChild("BodyVelocity"):Destroy() end
							local BV = new("BodyVelocity", vtorso)
							BV.maxForce = vect3(math.huge,math.huge,math.huge)
							BV.P = 100000
							BV.Velocity = root.CFrame.LookVector * 75
							debris:AddItem(BV,0.1)
						elseif typa == "gunflame2" then
							if vtorso:FindFirstChild("BodyVelocity") then vtorso:FindFirstChild("BodyVelocity"):Destroy() end
							local vel = new("BodyVelocity",vtorso)
							vel.MaxForce = vect3(math.huge,math.huge,math.huge)
							vel.Velocity = root.CFrame.LookVector * 40 + root.CFrame.upVector * 65 
							debris:AddItem(vel,.25)
						elseif typa == "viper" then
							if vtorso:FindFirstChild("BodyPosition") then vtorso:FindFirstChild("BodyPosition"):Destroy() end
							local bpos = new("BodyPosition")
							bpos.Parent = vtorso
							bpos.MaxForce = vect3(39999,39999,39999)
							bpos.D = 1500
							bpos.Position = root.CFrame * cframe(0,45,-15).Position
							debris:AddItem(bpos,0.1)
						elseif typa == "dust1" then
							local BV = new("BodyVelocity", vtorso)
							BV.maxForce = vect3(math.huge,math.huge,math.huge)
							BV.P = 100000
							BV.Velocity = root.CFrame.LookVector * 75
							debris:AddItem(BV,0.1)
						elseif typa == "dust2" then
							local BV = new("BodyVelocity", vtorso)
							BV.maxForce = vect3(math.huge,math.huge,math.huge)
							BV.P = 100000
							BV.Velocity = root.CFrame.LookVector * 35 + root.CFrame.upVector * 22.5 
							debris:AddItem(BV,0.1)	
						elseif typa == "grand1" then
							if vtorso:FindFirstChild("BodyVelocity") then vtorso:FindFirstChild("BodyVelocity"):Destroy() end
							local bv = new("BodyVelocity")
							bv.P = 99999
							bv.MaxForce = vect3(math.huge,math.huge,math.huge)
							bv.Velocity = root.CFrame.lookVector * 45 + vect3(0,10,0)
							bv.Parent = vtorso
							debris:AddItem(bv,0.415)
						elseif typa == "grand2" then
							if vtorso:FindFirstChild("BodyVelocity") then vtorso:FindFirstChild("BodyVelocity"):Destroy() end
							local bv = new("BodyVelocity")
							bv.P = 99999
							bv.MaxForce = vect3(math.huge,math.huge,math.huge)
							bv.Velocity = root.CFrame.lookVector * 75 + root.CFrame.upVector * -25
							bv.Parent = vtorso
							debris:AddItem(bv,0.05)
							vhum.PlatformStand = true
							coroutine.wrap(function()
								wait(3)
								vhum.PlatformStand = false
							end)()
						elseif typa == "grand" then
							if vtorso:FindFirstChild("BodyVelocity") then vtorso:FindFirstChild("BodyVelocity"):Destroy() end
							local bv = new("BodyVelocity")
							bv.P = 99999
							bv.MaxForce = vect3(math.huge,math.huge,math.huge)
							bv.Velocity = root.CFrame.lookVector * 40 + vect3(0,10,0)
							bv.Parent = vtorso
							debris:AddItem(bv,0.415)
						elseif typa == "bringer1" then
							if vtorso:FindFirstChild("BodyVelocity") then vtorso:FindFirstChild("BodyVelocity"):Destroy() end
							local bv = new("BodyVelocity")
							bv.P = 99999
							bv.MaxForce = vect3(math.huge,math.huge,math.huge)
							bv.Velocity = root.CFrame.lookVector * 55 + vect3(0,15,0)
							bv.Parent = vtorso
							debris:AddItem(bv,0.415)
						elseif typa == "bringer2" then
							if vtorso:FindFirstChild("BodyVelocity") then vtorso:FindFirstChild("BodyVelocity"):Destroy() end
							local bv = new("BodyVelocity")
							bv.P = 99999
							bv.MaxForce = vect3(math.huge,math.huge,math.huge)
							bv.Velocity = root.CFrame.lookVector * 100 + root.CFrame.upVector * -45
							bv.Parent = vtorso
							debris:AddItem(bv,0.05)
							vhum.PlatformStand = true
							coroutine.wrap(function()
								wait(3)
								vhum.PlatformStand = false
							end)()
						else
							local BV = new("BodyVelocity", vtorso)
							BV.maxForce = vect3(math.huge,math.huge,math.huge)
							BV.P = 100000
							BV.Velocity = part.CFrame.LookVector * 35
							debris:AddItem(BV,0.1)
						end
					end
				end
			end
		end
	end
end

function hiteffect(effect,hitpart)
	if effect == nil then return end
	if effect == "none" then return end
	if effect == "fire" then
		local fire = new("Fire")
		fire.Parent = hitpart
		fire.Size = 10
		fire.Heat = 25
		local firesound = new("Sound")
		firesound.SoundId = "rbxassetid://9068935533"
		firesound.Volume = 2.5
		firesound.Looped = true
		firesound.Parent = hitpart
		firesound:Play()
		coroutine.wrap(function()
			wait(1)
			fire.Enabled = false
			firesound:Destroy()
			wait(2.5)
			fire:Destroy()
		end)()
		debris:AddItem(fire, 5)
	end
	if effect == "blood" then
		coroutine.wrap(function()
			for i = 1,5 do
				local blood = new("Part")
				blood.Parent = workspace
				blood.Name = "Blood"
				blood.BrickColor = brickcolor("Really red")
				blood.Material = "Glass"
				blood.Size = vect3(0.5,0.5,0.5)
				blood.CFrame = hitpart.CFrame * cframe(random(-1,1),random(-1,1),random(-1,1))
				debris:AddItem(blood,5)
			end
		end)()
	end
	if effect == "sphere" then
		local sphere = new("Part")
		sphere.Parent = script
		sphere.Name = "HitSphere"
		sphere.Shape = "Ball"
		sphere.Size = vect3(1,1,1)
		sphere.Transparency = 0.5
		sphere.BrickColor = brickcolor("Really red")
		sphere.Material = "Neon"
		sphere.CanCollide = false
		sphere.Anchored = true
		sphere.CFrame = hitpart.CFrame
		local tween = tweens:Create(sphere, TweenInfo.new(0.5), {Size = vect3(10,10,10), Transparency = 1})
		tween:Play()
		debris:AddItem(sphere,1.5)
	end
	if effect == "slam" then
		local slam = new("Part")
		slam.Parent = script
		slam.Name = "HitSlam"
		slam.Shape = "Ball"
		slam.Size = vect3(1,1,1)
		slam.Transparency = 0.5
		slam.BrickColor = brickcolor("Really red")
		slam.Material = "Neon"
		slam.CanCollide = false
		slam.Anchored = true
		slam.CFrame = hitpart.CFrame * cframe(0,-1,0)
		local tween = tweens:Create(slam, TweenInfo.new(0.5), {Size = vect3(25,25,2.5), Transparency = 1})
		tween:Play()
		debris:AddItem(slam,1.5)
	end
end

function super()
	if random(0,9) <= 4 then
		sound(6892632909,2.5,1,root,0,false)
	else
		sound(9088738552,2,1,root,0.4625,false)
	end
	local insert = game:GetService("InsertService")
	coroutine.wrap(function()
		local sphere = new("Part")
		sphere.Parent = script
		sphere.Name = "SuperSphere"
		sphere.Shape = "Ball"
		sphere.Size = vect3(15,15,15)
		sphere.Transparency = 1
		sphere.BrickColor = brickcolor("Electric blue")
		sphere.Material = "Neon"
		sphere.CanCollide = false
		sphere.Anchored = true
		sphere.CFrame = root.CFrame
		local tween = tweens:Create(sphere, TweenInfo.new(0.5), {Size = vect3(0.015,0.015,0.015), Transparency = 0})
		tween:Play()
		wait(0.5)
		coroutine.wrap(function()  
			for i = 1,5 do
				local ClonedBall = insert:CreateMeshPartAsync("rbxassetid://4580753051", Enum.CollisionFidelity.Default, Enum.RenderFidelity.Automatic)
				ClonedBall.Name = "Thing"
				ClonedBall.Size = vect3(0.275, 0.22, 3.254)
				ClonedBall.Anchored = true
				ClonedBall.BrickColor = brickcolor("Electric blue")
				ClonedBall.CanCollide = false
				ClonedBall.Material = Enum.Material.Neon
				ClonedBall.Parent = script
				ClonedBall.CFrame = sphere.CFrame * cframe(random(-2,2),random(-2,2),random(-2,2))
				ClonedBall.CFrame = cframe(ClonedBall.Position, sphere.Position)
				ClonedBall.Transparency = 0
				debris:AddItem(ClonedBall,1)
				tweens:Create(ClonedBall,TweenInfo.new(0.5,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut),{CFrame = ClonedBall.CFrame + ClonedBall.CFrame.lookVector * -7,Transparency = 1,Size = vect3(0.087, 0.08, 3.35)}):Play()
			end
		end)()
		local tween = tweens:Create(sphere, TweenInfo.new(1), {Size = vect3(25,25,25), Transparency = 1})
		tween:Play()
		debris:AddItem(sphere,4.5)
	end)()
end

function ragdoll(victim)
	for i,v in pairs(victim:GetDescendants()) do
		if v:IsA("Motor6D") then
			local socket = new("BallSocketConstraint")
			local a1 = new("Attachment")
			local a2 = new("Attachment")
			a1.Parent = v.Part0
			a2.Parent = v.Part1
			socket.Parent = v.Parent
			socket.Attachment0 = a1
			socket.Attachment1 = a2
			a1.CFrame = v.C0
			a2.CFrame = v.C1
			socket.LimitsEnabled = true
			socket.TwistLimitsEnabled = true
			v:Destroy()
		end
	end
end

function grounddebris(parta,amount,timu,size)
	for i = 1,amount do
		local part = new("Part")
		part.Parent = workspace
		part.Name = "Debris"
		part.BrickColor = brickcolor("Dark stone grey")
		part.Size = vect3(size,size,size)
		part.CFrame = parta.CFrame
		part.Velocity = vect3(random(-85, 85), random(130, 260), random(-85, 85))
		part.RotVelocity = vect3(random(-45, 45), random(-45, 45), random(-45, 45))
		debris:AddItem(part,timu)
	end
end

--chat stuff
local canchat = true

function chatter(message)
	if not canchat then return end
	local chattext = coroutine.wrap(function()
		if char:FindFirstChild("CSChatboard") then
			char:FindFirstChild("CSChatboard"):Destroy()
		end
		local BillboardGui0 = new("BillboardGui")
		local TextLabel1 = new("TextLabel")
		BillboardGui0.Parent = char
		BillboardGui0.LightInfluence = 1
		BillboardGui0.Size = UDim2.new(9, 0, 3, 0)
		BillboardGui0.Active = true
		BillboardGui0.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
		BillboardGui0.Adornee = head
		BillboardGui0.AlwaysOnTop = true
		BillboardGui0.StudsOffset = vect3(0, 2.5, 0)
		BillboardGui0.Name = "CSChatboard"
		TextLabel1.Parent = BillboardGui0
		TextLabel1.Size = UDim2.new(1, 0, 1, 0)
		TextLabel1.Active = true
		TextLabel1.BackgroundColor = brickcolor("Institutional white")
		TextLabel1.BackgroundColor3 = color(1, 1, 1)
		TextLabel1.BackgroundTransparency = 1
		TextLabel1.BorderColor = brickcolor("Really black")
		TextLabel1.BorderColor3 = color(0, 0, 0)
		TextLabel1.BorderSizePixel = 0
		TextLabel1.Font = Enum.Font.DenkOne
		TextLabel1.FontSize = Enum.FontSize.Size36
		TextLabel1.Text = ""
		TextLabel1.TextColor = brickcolor("Bright red")
		TextLabel1.TextColor3 = color(0.690196, 0.12549, 0.12549)
		TextLabel1.TextSize = 35
		TextLabel1.TextStrokeTransparency = 0
		TextLabel1.TextScaled = true
		TextLabel1.TextWrap = true
		TextLabel1.TextWrapped = true
		for i = 1,string.len(message),1 do
			TextLabel1.Text = string.sub(message,1,i)
			wait(0.025)
		end
		wait(1)
		for i = 1,5 do
			wait(0.01)
			TextLabel1.TextStrokeTransparency = TextLabel1.TextStrokeTransparency + .25
			TextLabel1.TextTransparency = TextLabel1.TextTransparency + .25
		end
		BillboardGui0:Destroy()
	end)
	chattext()
end

--emote and chat stuff
function emote(emotetype)
	keycombo = ""
	if emotetype == "Taunt" then
		attack = true
		hum.WalkSpeed = 0
		hum.JumpPower = 0
		hum.JumpHeight = 0
		local randomanim = random(0,3)
		if randomanim <= 1 then
			anim = "taunt"
			frame = 1
			wait(0.12)
			frame = 2
			wait(0.12)
			frame = 3
			sound(5835032207,3,1,torso,0,false)	
			sound(9105467029,4.5,1,torso,0.182,false)	
			local randomquote = random(0,3)
			if randomquote == 0 then
				if Player.Name == "ninjakaiden1" then
					chatter("What the hell are you doing?")
					if voices then
						sound1("saul/yusuke06.wav",2.5,1.05,head,0,false)
					end
				else
					chatter("You want a piece of me?")
					if voices then
						sound(646549347,3.25,1,head,0,false)
					end
				end
			elseif randomquote == 1 then
				if Player.Name == "ninjakaiden1" then
					chatter("The hell are you doing?")
					if voices then
						sound1("saul2/SAUL_1-8.WAV",2.5,1.05,head,0,false)
					end
				else
					chatter("Come on!")
					if voices then
						sound(4399524919,3.5,1,head,0.075,false)
					end
				end
			elseif randomquote == 2 then
				if Player.Name == "ninjakaiden1" then
					chatter("Come on, fight me!")
					if voices then
						sound1("saul2/SAUL_1-29.WAV",2.5,1.05,head,0,false)
					end
				else
					chatter("Yeah, come get some you freaking wimp.")
					if voices then
						sound(9050715323,3.25,1,head,0,false)
					end
				end
			else
				if Player.Name == "ninjakaiden1" then
					chatter("Bring it on!")
					if voices then
						sound1("saul2/SAUL_1-57.WAV",2.5,1.05,head,0,false)
					end
				else
					chatter("You! Stupid!")
					if voices then
						sound(1156770062,3.25,1,head,0.425,false)
					end
				end
			end
			wait(0.12)
			frame = 4
			wait(1.75)
			frame = 2
			wait(0.12)
			frame = 1
		else
			anim = "taunt2"
			frame = 1
			wait(0.125)
			frame = 2
			wait(0.125)
			sound(2599401908,3,1,torso,0.175,false)	
			frame = 3
			wait(0.45)
			frame = 4
			wait(0.15)
			if Player.Name == "ninjakaiden1" then
				chatter("Get out of my face.")
				if voices then
					sound1("saul/yusuke07.WAV",2.5,1.05,head,0,false)
				end
			else
				chatter("Too slow!")
				if voices then
					sound(646548872,3.25,1,head,0,false)
				end
			end
			frame = 5
			wait(0.3)
			sound(541909763,4,1,torso,0,false)	
			frame = 6
			wait(0.15)
			frame = 7
			wait(0.75)
			frame = 8
			wait(0.1)
			sound(2599401908,3,1,torso,0.175,false)	
		end
		hum.WalkSpeed = originalwalkspeed
		hum.JumpPower = originaljumppower
		hum.JumpHeight = originaljumpheight
		attack = false
	elseif emotetype == "Lose" then
		attack = true
		hum.WalkSpeed = 0
		hum.JumpPower = 0
		hum.JumpHeight = 0
		anim = "lose"
		frame = 1
		wait(0.1)
		if Player.Name == "ninjakaiden1" then
			chatter("Ugh...")
			if voices then
				sound1("saul/yusuke39.WAV",2.5,1.05,head,0,false)
			end
		else
			chatter("Darn it...")
			if voices then
				sound(6539227475,4.5,1.05,head,0,false)
			end
		end
		frame = 2
		wait(2.5)
		hum.WalkSpeed = originalwalkspeed
		hum.JumpPower = originaljumppower
		hum.JumpHeight = originaljumpheight
		attack = false
	elseif emotetype == "Win" then
		attack = true
		hum.WalkSpeed = 0
		hum.JumpPower = 0
		hum.JumpHeight = 0
		local randomanim = random(0,3)
		if randomanim <= 1 then
			anim = "win"
			frame = 1
			wait(0.125)
			if Player.Name == "ninjakaiden1" then
				chatter("Give me a break...")
				if voices then
					sound1("saul/yusuke18.WAV",2.5,1.05,head,0,false)
				end
			else
				chatter("Good grief...")
				if voices then
					sound(6670645219,3.5,1.05,head,0,false)
				end
			end
			frame = 2
			wait(0.125)
			frame = 3
			wait(0.15)
			frame = 4
			wait(0.125)
			frame = 5
		else
			anim = "win2"
			frame = 1
			wait(0.1)
			frame = 2
			wait(0.25)
			frame = 3
			wait(0.075)
			frame = 4
			sound(5951798845,4.5,1,Weapon,0,false)
			sound(4471648128,3,1,Weapon,0,false)	
			wait(0.035)
			frame = 5
			wait(0.325)
			if Player.Name == "ninjakaiden1" then
				chatter("Is that all you have to show me?")
				if voices then
					sound1("saul/yusuke19.WAV",2.5,1.05,head,0,false)
				end
			else
				chatter("Gee, thanks.")
				if voices then
					sound(7538547975,4,1,head,0,false)
				end
			end
			frame = 6
			wait(0.1)
			frame = 7
		end
		wait(2)
		hum.WalkSpeed = originalwalkspeed
		hum.JumpPower = originaljumppower
		hum.JumpHeight = originaljumpheight
		attack = false
	elseif emotetype == "Intro" then
		attack = true
		hum.WalkSpeed = 0
		hum.JumpPower = 0
		hum.JumpHeight = 0
		local randomanim = random(0,3)
		if randomanim <= 1 then
			anim = "spawn"
			frame = 1
			wait(0.35)
			frame = 2
			wait(0.1)
			sound(3041192327,3.5,1,torso,0,false)
			frame = 3
			wait(0.275)
			sound(1499494641,2.5,1,head,0.15,false)
			frame = 4
			wait(0.075)
			frame = 3
			wait(0.075)
			frame = 5
			wait(0.075)
			frame = 3
			wait(0.075)
			sound(1499494641,2.5,1,head,0.15,false)
			frame = 4
			wait(0.075)
			frame = 3
			wait(0.075)
			frame = 5
			wait(0.075)
			frame = 3	
			wait(0.5)
			if Player.Name == "ninjakaiden1" then
				chatter("Are you ready to die?")
				if voices then
					sound1("saul/yusuke00.WAV",2.5,1.05,head,0,false)
				end
			else
				chatter("You want a fight? I'll give you one.")
				if voices then
					sound(5152815749,4,1,head,0,false)
				end
			end
			wait(2)
			sound(935843979,3.5,1,Weapon,0.1,false)	
			frame = 6
			wait(0.1)
			frame = 7
			wait(0.1)
		else
			anim = "spawn2"
			frame = 1
			wait(0.35)
			sound(8956218288,3.5,1,Weapon,0,false)	
			local weaponclone = Weapon:Clone()
			weaponclone.Parent = script
			weaponclone.WeaponWeld.C0  = cframe(0,0,0) * angles(rad(-90),rad(0),rad(90))
			weaponclone.Name = "WeaponClone"
			if weaponclone:FindFirstChild("WeaponWeld") then
				weaponclone.WeaponWeld:Destroy()
			end
			weaponclone:BreakJoints()
			coroutine.wrap(function()
				weaponclone.Velocity = root.CFrame.upVector * 82.5
				while weaponclone ~= nil do
					weaponclone.CFrame = weaponclone.CFrame * CFrame.fromEulerAnglesXYZ(0,(50),(50))
					wait()
				end
			end)()
			Weapon.Transparency = 1
			frame = 2
			wait(0.5)
			frame = 3
			wait(0.12)
			frame = 4
			wait(0.12)
			frame = 5
			wait(0.12)
			weaponclone:Destroy()
			Weapon.Transparency = 0
			weaponclone = nil
			sound(9105467029,3,1,Weapon,0.182,false)	
			frame = 6
			wait(0.06)
			frame = 7
			if Player.Name == "ninjakaiden1" then
				chatter("I'll finish you off with my weapon!")
				if voices then
					sound1("saul/yusuke01.WAV",2.5,1.05,head,0,false)
				end
			else
				chatter("I won't let you run away!")
				if voices then
					sound(8195395913,4,1,head,0,false)
				end
			end
			wait(1.5)
			frame = 8
			wait(0.1)
		end
		hum.WalkSpeed = originalwalkspeed
		hum.JumpPower = originaljumppower
		hum.JumpHeight = originaljumpheight
		attack = false
	elseif emotetype == "Wave" then
		attack = true
		hum.WalkSpeed = 0
		hum.JumpPower = 0
		hum.JumpHeight = 0
		anim = "wave"
		frame = 1
		wait(1)
		hum.WalkSpeed = originalwalkspeed
		hum.JumpPower = originaljumppower
		hum.JumpHeight = originaljumpheight
		attack = false
	elseif emotetype == "Laugh" then
		attack = true
		hum.WalkSpeed = 0
		hum.JumpPower = 0
		hum.JumpHeight = 0
		anim = "laugh"
		frame = 1
		local randomquote = random(0,4)
		if voices then
			if randomquote == 0 then
				sound(2397128106,2,1,head,0,false)
			elseif randomquote == 1 then
				sound(7022949295,2,1,head,0,false)
			elseif randomquote == 2 then
				sound(1238240145,2,1,head,0.1,false)
			elseif randomquote == 3 then
				sound(2553928644,2,1,head,0,false)
			else
				sound(7269543118,2.5,1,head,0,false)
			end
		end
		wait(2)
		hum.WalkSpeed = originalwalkspeed
		hum.JumpPower = originaljumppower
		hum.JumpHeight = originaljumpheight
		attack = false	
	elseif emotetype == "Yes" then
		attack = true
		hum.WalkSpeed = 0
		hum.JumpPower = 0
		hum.JumpHeight = 0
		anim = "yes"
		frame = 1
		wait(1)
		hum.WalkSpeed = originalwalkspeed
		hum.JumpPower = originaljumppower
		hum.JumpHeight = originaljumpheight
		attack = false	
	elseif emotetype == "No" then
		attack = true
		hum.WalkSpeed = 0
		hum.JumpPower = 0
		hum.JumpHeight = 0
		anim = "no"
		frame = 1
		wait(1)
		hum.WalkSpeed = originalwalkspeed
		hum.JumpPower = originaljumppower
		hum.JumpHeight = originaljumpheight
		attack = false
	elseif emotetype == "Respect" then
		attack = true
		hum.WalkSpeed = 0
		hum.JumpPower = 0
		hum.JumpHeight = 0
		anim = "respect"
		frame = 1
		wait(0.1)
		frame = 2
		wait(0.1)
		frame = 3
		wait(0.25)
		local randomquote = random(0,2)
		if Player.Name == "ninjakaiden1" then
			if randomquote == 0 then
				chatter("You're pretty good!")
				if voices then
					sound1("saul/yusuke08.WAV",2.5,1.05,head,0,false)
				end
			elseif randomquote == 1 then
				chatter("What a good job!")
				if voices then
					sound1("saul2/saul_1-30.wav",2.5,1.05,head,0,false)
				end
			else
				chatter("That's cool!")
				if voices then
					sound1("saul2/saul_1-58.wav",2.5,1.05,head,0,false)
				end
			end
		else
			if randomquote == 0 then
				chatter("Hmph.")
				if voices then
					sound(4580049740,4,1,head,0,false)
				end
			elseif randomquote == 1 then
				chatter("Not bad...")
				if voices then
					sound(159972558,4,1,head,0,false)
				end
			else
				chatter("That was a good fight!")
				if voices then
					sound(1622254391,4,1,head,0,false)
				end
			end
		end
		wait(1)
		frame = 4
		wait(0.075)
		hum.WalkSpeed = originalwalkspeed
		hum.JumpPower = originaljumppower
		hum.JumpHeight = originaljumpheight
		attack = false
	elseif emotetype == "Sit" then
		sitting = true
		attack = true
		hum.WalkSpeed = 0
		hum.JumpPower = 0
		hum.JumpHeight = 0
		repeat 
			wait()
			anim = "sitground"
		until sitting == false
		attack = false
		hum.WalkSpeed = originalwalkspeed
		hum.JumpPower = originaljumppower
		hum.JumpHeight = originaljumpheight
	elseif emotetype == "Waiting" then
		waitin = true
		attack = true
		hum.WalkSpeed = 0
		hum.JumpPower = 0
		hum.JumpHeight = 0
		--menaeffect.Enabled = true
		local randomframe = random(0,3)
		anim = "waiting"
		frame = 1
		wait(0.05)
		frame = 2
		wait(0.065)
		frame = 3
		wait(0.05)
		frame = 4
		repeat 
			wait()
			anim = "waiting"
		until waitin == false
		frame = 3
		wait(0.07)
		frame = 2
		wait(0.065)
		frame = 1
		wait(0.045)
		attack = false
		--menaeffect.Enabled = false
		hum.WalkSpeed = originalwalkspeed
		hum.JumpPower = originaljumppower
		hum.JumpHeight = originaljumpheight
	elseif emotetype == "Idle Thing" then
		attack = true
		hum.WalkSpeed = 0
		hum.JumpPower = 0
		hum.JumpHeight = 0
		anim = "idleneck"
		frame = 1
		wait(0.075)
		frame = 2
		wait(0.075)
		frame = 3
		wait(0.075)
		sound(1499494641,2.5,1,head,0.15,false)
		frame = 4
		wait(0.075)
		frame = 5
		wait(0.075)
		frame = 6
		wait(0.075)
		frame = 3
		wait(0.075)
		sound(1499494641,2.5,1,head,0.15,false)
		frame = 4
		wait(0.075)
		frame = 5
		wait(0.075)
		frame = 6
		wait(0.075)
		frame = 3
		wait(0.075)
		frame = 2
		wait(0.075)
		frame = 1
		wait(0.075)
		hum.WalkSpeed = originalwalkspeed
		hum.JumpPower = originaljumppower
		hum.JumpHeight = originaljumpheight
		attack = false
	end
end

Player.Chatted:connect(function(message)
	if message:sub(1,2) ~= "/e" then
		chatter(message)
	else
		if message:sub(1,7) == "/e chat" then
			canchat = not canchat
		end
		if message:sub(1,7) == "/e lose" and not attack and not guarding and not hurt and hum.Sit == false and not sitting and not waitin then
			emote("Lose")
		end
		if message:sub(1,6) == "/e win" and not attack and not guarding and not hurt and hum.Sit == false and not sitting and not waitin then
			emote("Win")
		end
		if message:sub(1,10) == "/e intro" and not attack and not guarding and not hurt and hum.Sit == false and not sitting and not waitin then
			emote("Intro")
		end
		if message:sub(1,10) == "/e wave" and not attack and not guarding and not hurt and hum.Sit == false and not sitting and not waitin then
			emote("Wave")
		end
		if message:sub(1,10) == "/e laugh" and not attack and not guarding and not hurt and hum.Sit == false and not sitting and not waitin then
			emote("Laugh")
		end
		if message:sub(1,10) == "/e taunt" and not attack and not guarding and not hurt and hum.Sit == false and not sitting and not waitin then
			emote("Taunt")
		end
		if message:sub(1,12) == "/e respect" and not attack and not guarding and not hurt and hum.Sit == false and not sitting and not waitin then
			emote("Respect")
		end
		if message:sub(1,10) == "/e yes" and not attack and not guarding and not hurt and hum.Sit == false and not sitting and not waitin then
			emote("Yes")
		end
		if message:sub(1,10) == "/e no" and not attack and not guarding and not hurt and hum.Sit == false and not sitting and not waitin then
			emote("No")
		end
		if message:sub(1,9) == "/e voices" then
			voices = not voices
		end
		if message:sub(1,9) == "/e fix" then
			hum.WalkSpeed = originalwalkspeed
			hum.JumpPower = originaljumppower
			hum.JumpHeight = originaljumpheight
			root.Anchored = false
			attack = false
		end
	end
end)

--Combat Moves.

local combatMoves = {
	--Sunset's Flame
	["sdc"] = function()
		if not attack  and not guarding and not hurt and hum.Sit == false and not sitting and not waitin then
			keycombo = ""
			attack = true
			hum.WalkSpeed = 0
			hum.JumpPower = 0
			hum.JumpHeight = 0
			anim = "gunflame"
			frame = 1
			coroutine.wrap(function()
				wait(0.1)
				if Player.Name == "ninjakaiden1" then
					chatter("Sunset's Flame!")
					if voices then
						sound1("saul/yusuke23.wav",3,1.05,head,0,false)
					end
				else
					chatter("Take this!")
					if voices then
						sound(6181673736,3.5,1,head,0,false)
					end
				end
				frame = 2
				wait(0.1)
				frame = 3
				wait(0.065)
				frame = 4
				sound(4808823796,4.5,1,Weapon,0,false)
				wait(0.065)
				if Player.Name == "ninjakaiden1" then
					if random(0,7) <= 2 then
						frame = 5
					else
						frame = 9
					end
				else
					frame = 5
				end
				wait(0.5)
				frame = 6
				wait(0.075)
				frame = 7
				wait(0.075)
				frame = 8
				wait(0.1)
				anim = "idle"
				frame = 1
			end)()
			coroutine.wrap(function()
				wait(0.325)
				local pos = root.CFrame
				local direction = pos.lookVector
				for i=1, 15 do
					local posit = pos+(direction*i*8)
					local Part0 = new("Part")
					local SpecialMesh1 = new("SpecialMesh")
					local Part2 = new("Part")
					local SpecialMesh3 = new("SpecialMesh")
					local Part4 = new("Part")
					local SpecialMesh5 = new("SpecialMesh")
					local Part6 = new("Part")
					local SpecialMesh7 = new("SpecialMesh")
					Part6.Parent = script
					Part6.Transparency = 0.05
					Part6.Size = vect3(1, 1, 1)
					Part6.Anchored = true
					Part6.BottomSurface = Enum.SurfaceType.Smooth
					Part6.BrickColor = brickcolor("Br. yellowish orange")
					Part6.CanCollide = false
					Part6.TopSurface = Enum.SurfaceType.Smooth
					SpecialMesh7.Parent = Part6
					SpecialMesh7.MeshId = "rbxassetid://20329976"
					SpecialMesh7.Scale = vect3(3, 3, 3)
					SpecialMesh7.MeshType = Enum.MeshType.FileMesh
					Part0.Name = "Part1"
					Part0.Parent = Part6
					Part0.Transparency = 0.25
					Part0.Size = vect3(1, 1, 1)
					Part0.Anchored = true
					Part0.BottomSurface = Enum.SurfaceType.Smooth
					Part0.BrickColor = brickcolor("Bright red")
					Part0.CanCollide = false
					Part0.TopSurface = Enum.SurfaceType.Smooth
					SpecialMesh1.Parent = Part0
					SpecialMesh1.MeshId = "rbxassetid://20329976"
					SpecialMesh1.Scale = vect3(3.5, 3.5, 3.5)
					SpecialMesh1.MeshType = Enum.MeshType.FileMesh
					Part2.Name = "Part2"
					Part2.Parent = Part6
					Part2.Transparency = 0.25
					Part2.Size = vect3(2.5, 5, 2.5)
					Part2.Anchored = true
					Part2.BottomSurface = Enum.SurfaceType.Smooth
					Part2.BrickColor = brickcolor("Maroon")
					Part2.CanCollide = false
					Part2.TopSurface = Enum.SurfaceType.Smooth
					SpecialMesh3.Parent = Part2
					SpecialMesh3.MeshType = Enum.MeshType.Sphere
					Part4.Name = "Part3"
					Part4.Parent = Part6
					Part4.Transparency = 0.05
					Part4.Size = vect3(2, 2.5, 2)
					Part4.Anchored = true
					Part4.BottomSurface = Enum.SurfaceType.Smooth
					Part4.BrickColor = brickcolor("Neon orange")
					Part4.CanCollide = false
					Part4.TopSurface = Enum.SurfaceType.Smooth
					SpecialMesh5.Parent = Part4
					SpecialMesh5.MeshType = Enum.MeshType.Sphere
					Part0.Material = "Neon"
					Part6.Material = "Neon"
					Part2.Material = "Neon"
					Part4.Material = "Neon"
					Part6.CFrame = cframe(posit.x,posit.y-1.5,posit.z-1.5)
					Part0.CFrame = cframe(posit.x,posit.y-1.5,posit.z-1.5)
					Part2.CFrame = cframe(posit.x,posit.y-1.5,posit.z-1.5)
					Part4.CFrame = cframe(posit.x,posit.y-1.5,posit.z-1.5)
					if Player.Name == "ninjakaiden1" then
						magnitudedamage(15,"sphere", 0.125, 10, 9089368508, 6.5, 1, Part2,true,"gunflame")
					else
						magnitudedamage(6.5,"sphere", 0.125, 10, 9089368508, 6.5, 1, Part2,true,"gunflame")
					end
					sound(3802269741,1,1,Part2,0,false)
					local tween = tweens:Create(Part6,TweenInfo.new(1,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Transparency = 1})
					tween:Play()
					local tweenM = tweens:Create(SpecialMesh7,TweenInfo.new(1,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Scale = vect3(15,0.05,15),Offset = vect3(0,-1.5,-1)})
					tweenM:Play()
					local tween1 = tweens:Create(Part0,TweenInfo.new(1,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Transparency = 1})
					tween1:Play()
					local tweenM1 = tweens:Create(SpecialMesh1,TweenInfo.new(1,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Scale = vect3(17.5,0.025,17.5),Offset = vect3(0,-1.5,-1)})
					tweenM1:Play()
					local tween2 = tweens:Create(Part2,TweenInfo.new(1,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{CFrame = Part2.CFrame * CFrame.Angles(0,math.rad(180),0),Size = vect3(3,45,3),Transparency = 1})
					tween2:Play()
					local tween3 = tweens:Create(Part4,TweenInfo.new(1,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{CFrame = Part2.CFrame * CFrame.Angles(0,math.rad(180),0),Size = vect3(2.75,35,2.75),Transparency = 1})
					tween3:Play()
					tween.Completed:Connect(function() Part6:Destroy()end)
					tweenM.Completed:Connect(function() SpecialMesh7=nil end)
					tween1.Completed:Connect(function() Part0:Destroy() end)
					tweenM1.Completed:Connect(function() SpecialMesh1=nil end)
					tween2.Completed:Connect(function() Part2:Destroy()end)
					tween3.Completed:Connect(function() Part4:Destroy() end)
					wait(.1)
				end
			end)()
			wait(1.25)
			hum.WalkSpeed = originalwalkspeed
			hum.JumpPower = originaljumppower
			hum.JumpHeight = originaljumpheight
			root.Anchored = false
			attack = false
		end
	end,
	--Shimura Flame
	["sdv"] = function()
		if not attack  and not guarding and not hurt and hum.Sit == false and not sitting and not waitin then
			keycombo = ""
			if not inair then
				attack = true
				hum.WalkSpeed = 0
				hum.JumpPower = 0
				hum.JumpHeight = 0
				anim = "fslash"
				frame = 1
				local vel = new("BodyVelocity")
				vel.Parent = root
				vel.MaxForce = vect3(math.huge,math.huge,math.huge)
				vel.Velocity = root.CFrame.lookVector * 45
				debris:AddItem(vel,0.25)
				wait(0.035)
				frame = 2
				wait(0.035)
				anim = "sidewinder"
				frame = 1
				wait(0.045)
				frame = 2
				local Fire = new("Fire")
				Fire.Parent = rarm
				Fire.Color = color(1, 0.501961, 0)
				Fire.SecondaryColor = color(1, 0, 0)
				Fire.Size = 8
				Fire.Heat = 11
				debris:AddItem(Fire,2.5)
				sound(3518146972,3.5,1.55,rarm,0.375,false)
				local randomsound = random(0,9)
				if Player.Name == "ninjakaiden1" then
					if voices then
						if randomsound <= 2 then
							sound1("saul/yusuke11.wav",3,1.05,head,0,false)
						elseif randomsound >= 7 then
							sound1("saul/yusuke12.wav",3,1.05,head,0,false)
						end
					end
				else
					if voices then
						if randomsound <= 2 then
							sound(8429465299,4,1,head,0,false)
						elseif randomsound >= 7 then
							sound(8429477961,4,1,head,0,false)
						end
					end
				end
				wait(0.06)
				frame = 3
				sound(8011766312,5,1,torso,0,false)
				magnitudedamage(15,"sphere", 0.125, 10, 9089368508, 5, 1, root)
				wait(0.2)
				Fire.Enabled = false
				frame = 4
				wait(0.1)
				frame = 5
				wait(0.1)
				frame = 1
				wait(0.035)
				hum.WalkSpeed = originalwalkspeed
				hum.JumpPower = originaljumppower
				hum.JumpHeight = originaljumpheight
				attack = false
			else
				attack = true
				anim = "dawn"
				frame = 1
				local hit = false
				local vel = new("BodyVelocity")
				vel.Parent = root
				vel.MaxForce = vect3(math.huge,math.huge,math.huge)
				vel.Velocity = root.CFrame.lookVector * 75  + root.CFrame.upVector * -45
				debris:AddItem(vel,0.225)
				if Player.Name == "ninjakaiden1" then
					if voices then
						sound1("saul/yusuke31.wav",3.5,1.05,head,0,false)
					end
				else
					if voices then
						sound(5178191235,4,1,head,0,false)
					end
				end
				wait(0.15)
				local Fire = new("Fire")
				Fire.Parent = rarm
				Fire.Color = color(1, 0.501961, 0)
				Fire.SecondaryColor = color(1, 0, 0)
				Fire.Size = 8
				Fire.Heat = 11
				debris:AddItem(Fire,2.5)
				sound(3518146972,3.5,1.55,rarm,0.375,false)
				local Part = new("Part",script)
				Part.Name = "HitboxThing"
				Part.Transparency = 1
				Part.Size = vect3(2.5, 7.5, 3)
				Part.CanCollide = false
				debris:AddItem(Part,0.15)
				local Weld = new("Weld",Part)
				Weld.Part0 = root
				Weld.Part1 = Part
				Weld.C0 = Weld.C0 * cframe(0,0,-2.5)
				Part.Touched:Connect(function(persona)
					if persona:IsA("BasePart") or persona:IsA("MeshPart") then
						if persona.Parent ~= nil and not persona.Parent:IsDescendantOf(char) then
							if persona.Parent:FindFirstChildOfClass("Humanoid") and persona.Parent ~= char and not hit then
								local humi = persona.Parent:FindFirstChildOfClass("Humanoid")
								local torsou = persona.Parent:FindFirstChild("Torso") or persona.Parent:FindFirstChild("UpperTorso")
								if torsou then
									hit = true
									damage(humi, 18, 9089368508, 6.5, 1, torsou, 0.125, "sphere")
									local BV = new("BodyVelocity", torsou)
									BV.maxForce = vect3(math.huge,math.huge,math.huge)
									BV.P = 100000
									BV.Velocity = root.CFrame.LookVector * 150
									debris:AddItem(BV,0.1)
									hiteffect("fire", torsou)
								end
							end
						end	
					end
				end)
				frame = 2
				wait(0.125)
				frame = 3
				wait(0.125)
				Fire.Enabled = false
				frame = 4
				wait(0.1)
				attack = false
			end
		end
	end,
	--Sekibanki
	["sdt"] = function()
		if not attack  and not guarding and not hurt and hum.Sit == false and not sitting and not waitin then
			keycombo = ""
			attack = true
			hum.WalkSpeed = 0
			hum.JumpPower = 0
			hum.JumpHeight = 0
			anim = "gunflame"
			frame = 1
			coroutine.wrap(function()
				wait(0.1)
				if Player.Name == "ninjakaiden1" then
					chatter("Sunset's Flame!")
					if voices then
						sound1("saul/yusuke23.wav",3,1.05,head,0,false)
					end
				else
					chatter("Take this!")
					if voices then
						sound(6181673736,3.5,1,head,0,false)
					end
				end
				frame = 2
				wait(0.1)
				frame = 3
				wait(0.065)
				frame = 4
				sound(4808823796,4.5,1,Weapon,0,false)
				wait(0.065)
				if Player.Name == "ninjakaiden1" then
					if random(0,7) <= 2 then
						frame = 5
					else
						frame = 9
					end
				else
					frame = 5
				end
				wait(0.5)
				frame = 6
				wait(0.075)
				frame = 7
				wait(0.075)
				frame = 8
				wait(0.1)
				anim = "idle"
				frame = 1
			end)()
			coroutine.wrap(function()
				wait(0.325)
				local pos = root.CFrame
				local direction = pos.lookVector
				local posit = pos+(direction*7.5)
				local Part0 = new("Part")
				local SpecialMesh1 = new("SpecialMesh")
				local Part2 = new("Part")
				local SpecialMesh3 = new("SpecialMesh")
				local Part4 = new("Part")
				local SpecialMesh5 = new("SpecialMesh")
				local Part6 = new("Part")
				local SpecialMesh7 = new("SpecialMesh")
				Part6.Parent = script
				Part6.Transparency = 0.05
				Part6.Size = vect3(1, 1, 1)
				Part6.Anchored = true
				Part6.BottomSurface = Enum.SurfaceType.Smooth
				Part6.BrickColor = brickcolor("Br. yellowish orange")
				Part6.CanCollide = false
				Part6.TopSurface = Enum.SurfaceType.Smooth
				SpecialMesh7.Parent = Part6
				SpecialMesh7.MeshId = "rbxassetid://20329976"
				SpecialMesh7.Scale = vect3(3, 3, 3)
				SpecialMesh7.MeshType = Enum.MeshType.FileMesh
				Part0.Name = "Part1"
				Part0.Parent = Part6
				Part0.Color = Color3.new(0.768627, 0.156863, 0.109804)
				Part0.Transparency = 0.25
				Part0.Size = vect3(1, 1, 1)
				Part0.Anchored = true
				Part0.BottomSurface = Enum.SurfaceType.Smooth
				Part0.BrickColor = brickcolor("Bright red")
				Part0.CanCollide = false
				Part0.TopSurface = Enum.SurfaceType.Smooth
				SpecialMesh1.Parent = Part0
				SpecialMesh1.MeshId = "rbxassetid://20329976"
				SpecialMesh1.Scale = vect3(3.5, 3.5, 3.5)
				SpecialMesh1.MeshType = Enum.MeshType.FileMesh
				Part2.Name = "Part2"
				Part2.Parent = Part6
				Part2.Transparency = 0.25
				Part2.Size = vect3(2.5, 5, 2.5)
				Part2.Anchored = true
				Part2.BottomSurface = Enum.SurfaceType.Smooth
				Part2.BrickColor = brickcolor("Maroon")
				Part2.CanCollide = false
				Part2.TopSurface = Enum.SurfaceType.Smooth
				SpecialMesh3.Parent = Part2
				SpecialMesh3.MeshType = Enum.MeshType.Sphere
				Part4.Name = "Part3"
				Part4.Parent = Part6
				Part4.Transparency = 0.05
				Part4.Size = vect3(2, 2.5, 2)
				Part4.Anchored = true
				Part4.BottomSurface = Enum.SurfaceType.Smooth
				Part4.BrickColor = brickcolor("Neon orange")
				Part4.CanCollide = false
				Part4.TopSurface = Enum.SurfaceType.Smooth
				SpecialMesh5.Parent = Part4
				SpecialMesh5.MeshType = Enum.MeshType.Sphere
				Part0.Material = "Neon"
				Part6.Material = "Neon"
				Part2.Material = "Neon"
				Part4.Material = "Neon"
				Part6.CFrame = cframe(posit.x,posit.y-1.5,posit.z-1.5)
				Part0.CFrame = cframe(posit.x,posit.y-1.5,posit.z-1.5)
				Part2.CFrame = cframe(posit.x,posit.y-1.5,posit.z-1.5)
				Part4.CFrame = cframe(posit.x,posit.y-1.5,posit.z-1.5)
				magnitudedamage(25,"sphere", 0.125, 10, 9089368508, 7.5, 0.7, Part2,true,"gunflame2")
				sound(3802269741,1,0.7,Part2,0,false)
				local tween = tweens:Create(Part6,TweenInfo.new(2,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Transparency = 1})
				tween:Play()
				local tweenM = tweens:Create(SpecialMesh7,TweenInfo.new(2,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Scale = vect3(15,0.025,15),Offset = vect3(0,-1.5,-1)})
				tweenM:Play()
				local tween1 = tweens:Create(Part0,TweenInfo.new(2,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Transparency = 1})
				tween1:Play()
				local tweenM1 = tweens:Create(SpecialMesh1,TweenInfo.new(2,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Scale = vect3(17.5,0.015,17.5),Offset = vect3(0,-1.5,-1)})
				tweenM1:Play()
				local tween2 = tweens:Create(Part2,TweenInfo.new(2,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{CFrame = Part2.CFrame * CFrame.Angles(0,math.rad(180),0),Size = vect3(7.5,60,7.5),Transparency = 1})
				tween2:Play()
				local tween3 = tweens:Create(Part4,TweenInfo.new(2,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{CFrame = Part2.CFrame * CFrame.Angles(0,math.rad(180),0),Size = vect3(5,45,5),Transparency = 1})
				tween3:Play()
				tween.Completed:Connect(function() Part6:Destroy()end)
				tweenM.Completed:Connect(function() SpecialMesh7=nil end)
				tween1.Completed:Connect(function() Part0:Destroy() end)
				tweenM1.Completed:Connect(function() SpecialMesh1=nil end)
				tween2.Completed:Connect(function() Part2:Destroy()end)
				tween3.Completed:Connect(function() Part4:Destroy() end)
				wait(.1)
			end)()
			wait(1.25)
			hum.WalkSpeed = originalwalkspeed
			hum.JumpPower = originaljumppower
			hum.JumpHeight = originaljumpheight
			root.Anchored = false
			attack = false
		end
	end,
	--Renki-Goho
	["asdwv"] = function()
		if not attack  and not guarding and not hurt and hum.Sit == false and not sitting and not waitin then
			keycombo = ""
			attack = true
			hum.WalkSpeed = 0
			hum.JumpPower = 0
			hum.JumpHeight = 0
			anim = "fslash"
			frame = 1
			local mul = 1
			local vel = new("BodyVelocity")
			vel.Parent = root
			vel.MaxForce = vect3(math.huge,math.huge,math.huge)
			vel.Velocity = root.CFrame.lookVector * 45
			debris:AddItem(vel,0.25)
			wait(0.035)
			frame = 2
			wait(0.035)
			anim = "sidewinder"
			frame = 1
			wait(0.045)
			frame = 2
			local Fire = new("Fire")
			Fire.Parent = rarm
			Fire.Color = color(1, 0.501961, 0)
			Fire.SecondaryColor = color(1, 0, 0)
			Fire.Size = 8
			Fire.Heat = 11
			debris:AddItem(Fire,2.5)
			sound(3518146972,3.5,1.55,rarm,0.375,false)
			local randomsound = random(0,9)
			if Player.Name == "ninjakaiden1" then
				if voices then
					if randomsound <= 2 then
						sound1("saul/yusuke11.wav",3,1.05,head,0,false)
					elseif randomsound >= 7 then
						sound1("saul/yusuke12.wav",3,1.05,head,0,false)
					end
				end
			else
				if voices then
					if randomsound <= 2 then
						sound(8429465299,4,1,head,0,false)
					elseif randomsound >= 7 then
						sound(8429477961,4,1,head,0,false)
					end
				end
			end
			wait(0.06)
			frame = 3
			sound(8011766312,5,1,torso,0,false)
			magnitudedamage(15,"sphere", 0.125, 10, 9089368508, 5, 1, root)
			wait(0.15)
			Fire.Enabled = false
			frame = 4
			super()
			wait(0.5)
			frame = 5
			wait(0.1)
			anim = "whirlpool"
			frame = 1
			if Player.Name == "ninjakaiden1" then
				chatter("Despair Wave!")
				if voices then
					if voices then
						sound1("saul/yusuke35.wav",2.5,1.05,head,0,false)
					end
				end
			else
				chatter("Take the Dragon's Blade!")
				if voices then
					if voices then
						sound(695296619,4,1,head,0.175,false)
					end
				end
			end
			wait(0.1)
			frame = 2
			sound(6892640563,5,1,root,0,false)
			local effect = new("Part")
			effect.Name = "Fire Ring"
			effect.Parent = script
			effect.Shape = "Ball"
			effect.Material = "Neon"
			effect.Transparency = 0.75
			effect.Anchored = true
			effect.CastShadow = false
			effect.CanCollide = false
			effect.Color = color(1, 0.501961, 0)
			effect.Size = vect3(1,1,1)
			effect.CFrame = root.CFrame * cframe(0,0,-1)
			local tween = tweens:Create(effect,TweenInfo.new(0.5,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{CFrame = effect.CFrame * CFrame.Angles(0,math.rad(180),0),Size = vect3(12.5,12.5,12.5),Transparency = 1})
			tween:Play()
			debris:AddItem(effect,2)
			coroutine.wrap(function()
				local firering = new("Part")
				sound(5868574236,4,1,firering,0.285,false)
				firering.Name = "Fire Ring"
				local Decal1 = new("Decal")
				local Decal2 = new("Decal")
				firering.Parent = script
				firering.Transparency = 1
				firering.Size = vect3(4.5, 5.2, 1)
				firering.Anchored = true
				firering.CanCollide = false
				firering.Locked = true
				firering.CFrame = root.CFrame
				Decal1.Parent = firering
				Decal1.Texture = "http://www.roblox.com/asset/?id=22570852"
				Decal1.Face = Enum.NormalId.Back
				Decal2.Parent = firering
				Decal2.Texture = "http://www.roblox.com/asset/?id=22570852"
				sound(260131404,4.5,1,firering,0,true)
				local wheel = new("Part")
				local wheelm = new("SpecialMesh")
				local wheelw = new("Weld")
				wheel.Name = "Handle"
				wheel.Parent = firering
				wheel.Size = vect3(0.025,0.025,0.025)
				wheel.BottomSurface = Enum.SurfaceType.Smooth
				wheel.TopSurface = Enum.SurfaceType.Smooth
				wheel.Anchored = false
				wheel.CanCollide = false
				wheel.Locked = true
				wheelm.Parent = wheel
				wheelm.MeshId = "http://www.roblox.com/asset/?id=19251107"
				wheelm.Scale = vect3(1.2, 1.2, 1.2)
				wheelm.VertexColor = vect3(1,0.5,0)
				wheelm.TextureId = "http://www.roblox.com/asset/?id=19251094"
				wheelm.MeshType = Enum.MeshType.FileMesh
				wheelw.Parent = wheel
				wheelw.C0 = cframe(0, 0, 0, 1, 0, 0, 0, -4.37113883e-08, -1, 0, 1, -4.37113883e-08)
				wheelw.Part0 = wheel
				wheelw.Part1 = firering
				local boom = new("Explosion")
				boom.Position = firering.Position
				boom.Parent = workspace 
				boom.BlastRadius = 10 
				boom.BlastPressure = 0 
				sound2(2814354338,4.5,1,firering,0)
				while firering ~= nil do
					mul = mul + 0.15
					if wheel.Transparency >= 1 then
						if firering == nil then
							break
						end
						firering:Destroy()
						wheel:Destroy()
						firering = nil
					end
					if firering == nil then
						break
					else
						firering.CFrame = firering.CFrame * CFrame.fromEulerAnglesXYZ(0,0,0.05)
						magnitudedamage(7.5,"sphere", 0.125, 5*mul, 9089368508, 10, 1, firering, true)
						firering.Size = firering.Size + vect3(0.85, 0.85, 0)
						firering.CFrame = firering.CFrame * cframe(0,0,-2)
						wheelm.Scale = wheelm.Scale + vect3(0.25,0.25,0.25)
						wheel.Transparency = wheel.Transparency + 0.015
						firering.Transparency = firering.Transparency + 0.015
						Decal1.Transparency = Decal1.Transparency + 0.015
						Decal2.Transparency = Decal2.Transparency + 0.015
					end
					wait(0.005)
				end
			end)()
			wait(1.5)
			frame = 3
			wait(0.125)
			hum.WalkSpeed = originalwalkspeed
			hum.JumpPower = originaljumppower
			hum.JumpHeight = originaljumpheight
			attack = false
		end
	end,
	--Fake Sunset's Flame
	["wsz"] = function()
		if not attack  and not guarding and not hurt and hum.Sit == false and not sitting and not waitin then
			keycombo = ""
			attack = true
			hum.WalkSpeed = 0
			hum.JumpPower = 0
			hum.JumpHeight = 0
			anim = "gunflame"
			chatter("Sun!")
			if Player.Name == "ninjakaiden1" then
				if voices then
					sound1("saul/yusuke24.wav",3,1.05,head,0,false)
				end
			else
				if voices then
					sound(862484466,4,1,head,2.4,false,true,0.55)
				end
			end
			frame = 1
			coroutine.wrap(function()
				wait(0.05)
				frame = 2
				wait(0.05)
				frame = 3
				wait(0.05)
				frame = 4
				magnitudedamage(10,"sphere", 0.125, 6.5, 9089368508, 5, 1, root)
				sound(4808823796,4.5,1,Weapon,0,false)
				wait(0.05)
				if Player.Name == "ninjakaiden1" then
					if random(0,7) <= 2 then
						frame = 5
					else
						frame = 9
					end
				else
					frame = 5
				end
				wait(0.25)
				frame = 6
				wait(0.075)
				chatter("Tricked ya!")
				if Player.Name == "ninjakaiden1" then
					if voices then
						sound1("saul/yusuke25.wav",3,1.05,head,0,false)
					end
				else
					if voices then
						sound(7199647512,4,1,head,0.9,false)
					end
				end
				frame = 7
				wait(0.075)
				frame = 8
				wait(0.1)
				anim = "idle"
				frame = 1
			end)()
			wait(1)
			hum.WalkSpeed = originalwalkspeed
			hum.JumpPower = originaljumppower
			hum.JumpHeight = originaljumpheight
			root.Anchored = false
			attack = false
		end
	end,
	--Maiden Viper
	["ddsc"] = function()
		if not attack  and not guarding and not hurt and hum.Sit == false and not sitting and not waitin then
			keycombo = ""
			attack = true
			hum.WalkSpeed = 0
			hum.JumpPower = 0
			hum.JumpHeight = 0
			anim = "viper"
			frame = 1
			local randoma = random(0,9)
			if Player.Name == "ninjakaiden1" then
				if randoma <= 3 then
					chatter("Maiden Viper!")
					if voices then
						if random(0,15) == 0 then
							sound1("konachan.wav",3,0.7,head,0,false)
						else
							sound1("saul/yusuke26.wav",3,1.05,head,0,false)
						end
					end
				elseif randoma >= 6 then
					chatter("Meteor!")
					if voices then
						if random(0,15) == 0 then
							sound1("konachan.wav",3,0.7,head,0,false)
						else
							sound1("saul2/saul2_302-1.wav",3,1.1,head,0,false)
						end
					end
				else
					chatter("OCHIROU!")
					if voices then
						if random(0,15) == 0 then
							sound1("konachan.wav",3,0.7,head,0,false)
						else
							sound1("saul2/saul2_302-2.wav",3,1.05,head,0,false)
						end
					end
				end
			else
				chatter("Maiden Viper!")
				if voices then
					sound(7845054355,4,1,head,0.15,false)
				end
			end
			coroutine.wrap(function()
				wait(0.05)
				frame = 2
				wait(0.05)
				frame = 3
				wait(0.5)
				frame = 4
				wait(0.1)
				frame = 5
				wait(0.1)
				frame = 6
			end)()
			wait(0.1)
			if not inair then
				local jumppart = new("Part")
				local jumpmesh = new("SpecialMesh")
				jumppart.Parent = script
				jumppart.Transparency = 0
				jumppart.Size = vect3(1, 1, 1)
				jumppart.Anchored = true
				jumppart.BottomSurface = Enum.SurfaceType.Smooth
				jumppart.BrickColor = brickcolor("Neon orange")
				jumppart.CanCollide = false
				jumppart.TopSurface = Enum.SurfaceType.Smooth
				jumpmesh.Parent = jumppart
				jumpmesh.MeshId = "rbxassetid://20329976"
				jumpmesh.Scale = vect3(3, 3, 3)
				jumpmesh.MeshType = Enum.MeshType.FileMesh
				jumppart.CFrame = root.CFrame * cframe(0,-1.5,0)
				local tween = tweens:Create(jumppart,TweenInfo.new(1,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Transparency = 1})
				tween:Play()
				local tweenM = tweens:Create(jumpmesh,TweenInfo.new(1,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Scale = vect3(15,0.05,15),Offset = vect3(0,-1.5,-1)})
				tweenM:Play()
				tween.Completed:Connect(function() jumppart:Destroy()end)
				tweenM.Completed:Connect(function() jumpmesh=nil end)
			end
			local bpos = new("BodyPosition")
			bpos.Parent = root
			bpos.MaxForce = vect3(math.huge,math.huge,math.huge)
			bpos.D = 1499
			bpos.Position = root.CFrame * cframe(0,60,-22.5).Position
			sound(2697431,2.5,0.315,Weapon,0,false)
			spawn(function()
				wait(0.2)
				sound(28257433,2.5,0.55,Weapon,0,false)
				sound(28144425,2.5,0.275,Weapon,0,false)
			end)
			coroutine.wrap(function()
				sound(8021447194,2.25,0.75,Weapon,0,false)
				sound(1598682218,2.25,0.45,Weapon,0,false)
				spawn(function()
					for i = 1,10 do
						wait(0.05)
						local randomcolor = random(0,3)
						local firepart = new("Part")
						firepart.Parent = script
						firepart.Size = vect3(7.5,7.5,7.5)
						firepart.BottomSurface = Enum.SurfaceType.Smooth
						firepart.Anchored = true
						firepart.CanCollide = false
						firepart.CanTouch = false
						if randomcolor == 0 then
							firepart.BrickColor = brickcolor("Crimson")
						elseif randomcolor == 1 then
							firepart.BrickColor = brickcolor("Neon orange")
						elseif randomcolor == 2 then
							firepart.BrickColor = brickcolor("Bright orange")
						elseif randomcolor == 3 then
							firepart.BrickColor = brickcolor("Bright red")
						end
						firepart.Material = Enum.Material.Neon
						firepart.TopSurface = Enum.SurfaceType.Smooth
						firepart.CFrame = Weapon.CFrame * cframe(0,0,0.25) * angles(rad(random(-360,360)),rad(random(-360,360)),rad(random(-360,360)))
						local fire = new("Fire")
						fire.Parent = firepart
						fire.Size = 10
						fire.Heat = 25
						if randomcolor == 0 then
							fire.Color = Color3.fromRGB(117,0,0)
							fire.SecondaryColor = Color3.fromRGB(196, 40, 28)
						elseif randomcolor == 1 then
							fire.Color = Color3.fromRGB(213, 115, 61)
							fire.SecondaryColor = Color3.fromRGB(255,170,0)
						elseif randomcolor == 2 then
							fire.Color = Color3.fromRGB(218, 133, 65)
							fire.SecondaryColor = Color3.fromRGB(255, 200, 0)
						elseif randomcolor == 3 then
							fire.Color = Color3.fromRGB(196, 40, 28)
							fire.SecondaryColor = Color3.fromRGB(255, 0, 0)
						end
						local smoke = new("Smoke")
						smoke.Parent = firepart
						smoke.Color = fire.Color
						smoke.Opacity = 0.5
						smoke.RiseVelocity = 10
						smoke.Size = 5
						spawn(function()
							for i = 1,25 do
								wait()
								firepart.CFrame = firepart.CFrame * angles(rad(7.5),rad(7.5),rad(7.5))
								firepart.Transparency = firepart.Transparency + 0.05
								firepart.Size = firepart.Size - vect3(0.45,0.45,0.45)
							end
						end)
						spawn(function()
							wait(0.5)
							fire.Enabled = false
							smoke.Enabled = false
							debris:AddItem(firepart,2)
						end)	
					end
				end)
				for i = 1,10 do
					magnitudedamage(5, "sphere", 0, 10, 9089368508, 6.5, 1, root,true,"viper")
					wait(0.06)
				end
			end)()
			wait(0.75)
			bpos:Destroy()
			hum.WalkSpeed = originalwalkspeed
			hum.JumpPower = originaljumppower
			hum.JumpHeight = originaljumpheight
			attack = false
		end
	end,
	--Strong Maiden Viper
	["ddsv"] = function()
		if not attack  and not guarding and not hurt and hum.Sit == false and not sitting and not waitin then
			keycombo = ""
			attack = true
			hum.WalkSpeed = 0
			hum.JumpPower = 0
			hum.JumpHeight = 0
			anim = "viper"
			frame = 1
			local randoma = random(0,9)
			if Player.Name == "ninjakaiden1" then
				if randoma <= 3 then
					chatter("Maiden Viper!")
					if voices then
						if random(0,15) == 0 then
							sound1("konachan.wav",3,0.7,head,0,false)
						else
							sound1("saul/yusuke26.wav",3,1.05,head,0,false)
						end
					end
				elseif randoma >= 6 then
					chatter("Meteor!")
					if voices then
						if random(0,15) == 0 then
							sound1("konachan.wav",3,0.7,head,0,false)
						else
							sound1("saul2/saul2_302-1.wav",3,1.1,head,0,false)
						end
					end
				else
					chatter("OCHIROU!")
					if voices then
						if random(0,15) == 0 then
							sound1("konachan.wav",3,0.7,head,0,false)
						else
							sound1("saul2/saul2_302-2.wav",3,1.05,head,0,false)
						end
					end
				end
			else
				chatter("Maiden Viper!")
				if voices then
					sound(7845054355,4,1,head,0.15,false)
				end
			end
			coroutine.wrap(function()
				wait(0.05)
				frame = 2
				wait(0.05)
				frame = 3
				wait(0.5)
				frame = 4
				wait(0.05)
				frame = 5
				wait(0.05)
				frame = 6
				wait(0.05)
				anim = "viperkick"
				frame = 1
				wait(0.06)
				sound(8679732323,2.5,1,torso,0,false)
				frame = 2
				wait(0.06)
				root.Anchored = true
				magnitudedamage(21, "sphere", 0, 12.5, 4766120024, 5, 0.95, root)
				frame = 3
				wait(0.06)
				root.Anchored = false
				frame = 4
				wait(0.06)
				frame = 5
				wait(0.06)
				frame = 6
			end)()
			wait(0.1)
			if not inair then
				local jumppart = new("Part")
				local jumpmesh = new("SpecialMesh")
				jumppart.Parent = script
				jumppart.Transparency = 0
				jumppart.Size = vect3(1, 1, 1)
				jumppart.Anchored = true
				jumppart.BottomSurface = Enum.SurfaceType.Smooth
				jumppart.BrickColor = brickcolor("Neon orange")
				jumppart.CanCollide = false
				jumppart.TopSurface = Enum.SurfaceType.Smooth
				jumpmesh.Parent = jumppart
				jumpmesh.MeshId = "rbxassetid://20329976"
				jumpmesh.Scale = vect3(3, 3, 3)
				jumpmesh.MeshType = Enum.MeshType.FileMesh
				jumppart.CFrame = root.CFrame * cframe(0,-1.5,0)
				local tween = tweens:Create(jumppart,TweenInfo.new(1,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Transparency = 1})
				tween:Play()
				local tweenM = tweens:Create(jumpmesh,TweenInfo.new(1,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Scale = vect3(15,0.05,15),Offset = vect3(0,-1.5,-1)})
				tweenM:Play()
				tween.Completed:Connect(function() jumppart:Destroy()end)
				tweenM.Completed:Connect(function() jumpmesh=nil end)
			end
			local bpos = new("BodyPosition")
			bpos.Parent = root
			bpos.MaxForce = vect3(math.huge,math.huge,math.huge)
			bpos.D = 1499
			bpos.Position = root.CFrame * cframe(0,60,-22.5).Position
			sound(2697431,2.5,0.315,Weapon,0,false)
			spawn(function()
				wait(0.2)
				sound(28257433,2.5,0.55,Weapon,0,false)
				sound(28144425,2.5,0.275,Weapon,0,false)
			end)
			coroutine.wrap(function()
				sound(8021447194,2.25,0.75,Weapon,0,false)
				sound(1598682218,2.25,0.45,Weapon,0,false)
				spawn(function()
					for i = 1,10 do
						wait(0.05)
						local randomcolor = random(0,3)
						local firepart = new("Part")
						firepart.Parent = script
						firepart.Size = vect3(7.5,7.5,7.5)
						firepart.BottomSurface = Enum.SurfaceType.Smooth
						firepart.Anchored = true
						firepart.CanCollide = false
						firepart.CanTouch = false
						if randomcolor == 0 then
							firepart.BrickColor = brickcolor("Crimson")
						elseif randomcolor == 1 then
							firepart.BrickColor = brickcolor("Neon orange")
						elseif randomcolor == 2 then
							firepart.BrickColor = brickcolor("Bright orange")
						elseif randomcolor == 3 then
							firepart.BrickColor = brickcolor("Bright red")
						end
						firepart.Material = Enum.Material.Neon
						firepart.TopSurface = Enum.SurfaceType.Smooth
						firepart.CFrame = Weapon.CFrame * cframe(0,0,0.25) * angles(rad(random(-360,360)),rad(random(-360,360)),rad(random(-360,360)))
						local fire = new("Fire")
						fire.Parent = firepart
						fire.Size = 10
						fire.Heat = 25
						if randomcolor == 0 then
							fire.Color = Color3.fromRGB(117,0,0)
							fire.SecondaryColor = Color3.fromRGB(196, 40, 28)
						elseif randomcolor == 1 then
							fire.Color = Color3.fromRGB(213, 115, 61)
							fire.SecondaryColor = Color3.fromRGB(255,170,0)
						elseif randomcolor == 2 then
							fire.Color = Color3.fromRGB(218, 133, 65)
							fire.SecondaryColor = Color3.fromRGB(255, 200, 0)
						elseif randomcolor == 3 then
							fire.Color = Color3.fromRGB(196, 40, 28)
							fire.SecondaryColor = Color3.fromRGB(255, 0, 0)
						end
						local smoke = new("Smoke")
						smoke.Parent = firepart
						smoke.Color = fire.Color
						smoke.Opacity = 0.5
						smoke.RiseVelocity = 10
						smoke.Size = 5
						spawn(function()
							for i = 1,25 do
								wait()
								firepart.CFrame = firepart.CFrame * angles(rad(7.5),rad(7.5),rad(7.5))
								firepart.Transparency = firepart.Transparency + 0.05
								firepart.Size = firepart.Size - vect3(0.45,0.45,0.45)
							end
						end)
						spawn(function()
							wait(0.5)
							fire.Enabled = false
							smoke.Enabled = false
							debris:AddItem(firepart,2)
						end)	
					end
				end)
				for i = 1,10 do
					magnitudedamage(5, "sphere", 0, 10, 9089368508, 6.5, 1, root,true,"viper")
					wait(0.06)
				end
			end)()
			wait(1.15)
			bpos:Destroy()
			hum.WalkSpeed = originalwalkspeed
			hum.JumpPower = originaljumppower
			hum.JumpHeight = originaljumpheight
			attack = false
		end
	end,
	--Dust Viper
	["sdwc"] = function()
		if not attack  and not guarding and not hurt and hum.Sit == false and not sitting and not waitin then
			keycombo = ""
			attack = true
			hum.WalkSpeed = 0
			hum.JumpPower = 0
			hum.JumpHeight = 0
			anim = "gviper"
			frame = 1
			if Player.Name == "ninjakaiden1" then
				chatter("Dust Viper!")
				if voices then
					sound1("saul/yusuke27.wav",3,1.05,head,0,false)
				end
			else
				chatter("Bite the dust!")
				if voices then
					sound(6995653196,4,1,head,0,false)
				end
			end
			local dustpart = new("Part")
			local dust = new("ParticleEmitter")
			dustpart.Name = "Dust"
			dustpart.Parent = script
			dustpart.Transparency = 1
			dustpart.Locked = true
			dustpart.Size = vect3(1, 1, 1)
			dustpart.CanCollide = false
			dust.Parent = dustpart
			dust.Speed = NumberRange.new(20, 20)
			dust.Color = ColorSequence.new(Color3.new(0.666667, 0.666667, 0.498039),Color3.new(0.666667, 0.666667, 0.498039))
			dust.Texture = "rbxassetid://292289455"
			dust.Transparency = NumberSequence.new(0.6875,1)
			dust.Size = NumberSequence.new(3,3)
			dust.Lifetime = NumberRange.new(2.5, 3.2)
			dust.Rate = 500
			dust.RotSpeed = NumberRange.new(15, 15)
			dust.Speed = NumberRange.new(20, 20)
			dust.SpreadAngle = vect2(15, 15)
			dust.VelocitySpread = 15
			dust.EmissionDirection = "Back"
			local dustweld = new("Weld")
			dustweld.Part0 = dustpart
			dustweld.Part1 = root
			dustweld.Parent = dustpart
			dustweld.C0 = dustweld.C0 * cframe(0, 2.5, 0)
			debris:AddItem(dustpart,5)
			coroutine.wrap(function()
				wait(0.075)
				frame = 2
				wait(0.075)
				spawn(function()
					for i = 1,7 do
						magnitudedamage(4.5, "sphere", 0, 12.5, 4810748111, 4.5, 1.05, root,true,"dust1")
						wait(0.075)
					end
				end)
				frame = 3
				wait(0.3)
				frame = 4
				wait(0.075)
				frame = 5
				wait(0.075)
				frame = 6
				magnitudedamage(13, "sphere", 0, 10, 4766120024, 5, 0.95, root,true,"dust2")
				wait(0.175)
				anim = "viper"
				frame = 1
				wait(0.05)
				frame = 2
				wait(0.05)
				frame = 3
				wait(0.5)
				frame = 4
				wait(0.1)
				frame = 5
				wait(0.1)
				frame = 6
				wait(0.1)
			end)()
			wait(0.15)
			sound(1598682218,4,0.675,dustpart,0,false)
			local MoveVel1 =  new("BodyVelocity")
			MoveVel1.MaxForce =  vect3(math.huge,math.huge,math.huge)
			MoveVel1.Parent =  root
			MoveVel1.Name = "MoveRoot"
			debris:AddItem(MoveVel1,.5)
			MoveVel1.Velocity = root.CFrame.LookVector * 100
			wait(0.3)
			sound(3084314259,4.5,1,torso,0,false)
			dust.Enabled = false
			MoveVel1:Destroy()
			local leap = new("BodyVelocity")
			leap.MaxForce = Vector3.new(1,1,1)*math.huge
			leap.Velocity = root.CFrame.lookVector*25 + root.CFrame.UpVector*15
			leap.Parent = root
			debris:AddItem(leap,.4)
			wait(0.5)
			if not inair then
				local jumppart = new("Part")
				local jumpmesh = new("SpecialMesh")
				jumppart.Parent = script
				jumppart.Transparency = 0
				jumppart.Size = vect3(1, 1, 1)
				jumppart.Anchored = true
				jumppart.BottomSurface = Enum.SurfaceType.Smooth
				jumppart.BrickColor = brickcolor("Neon orange")
				jumppart.CanCollide = false
				jumppart.TopSurface = Enum.SurfaceType.Smooth
				jumpmesh.Parent = jumppart
				jumpmesh.MeshId = "rbxassetid://20329976"
				jumpmesh.Scale = vect3(3, 3, 3)
				jumpmesh.MeshType = Enum.MeshType.FileMesh
				jumppart.CFrame = root.CFrame * cframe(0,-1.5,0)
				local tween = tweens:Create(jumppart,TweenInfo.new(1,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Transparency = 1})
				tween:Play()
				local tweenM = tweens:Create(jumpmesh,TweenInfo.new(1,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Scale = vect3(15,0.05,15),Offset = vect3(0,-1.5,-1)})
				tweenM:Play()
				tween.Completed:Connect(function() jumppart:Destroy()end)
				tweenM.Completed:Connect(function() jumpmesh=nil end)
			end
			local bpos = new("BodyPosition")
			bpos.Parent = root
			bpos.MaxForce = vect3(math.huge,math.huge,math.huge)
			bpos.D = 1499
			bpos.Position = root.CFrame * cframe(0,60,-22.5).Position
			sound(2697431,2.5,0.315,Weapon,0,false)
			spawn(function()
				wait(0.2)
				sound(28257433,2.5,0.55,Weapon,0,false)
				sound(28144425,2.5,0.275,Weapon,0,false)
			end)
			coroutine.wrap(function()
				sound(8021447194,2.25,0.75,Weapon,0,false)
				sound(1598682218,2.25,0.45,Weapon,0,false)
				spawn(function()
					for i = 1,10 do
						wait(0.05)
						local randomcolor = random(0,3)
						local firepart = new("Part")
						firepart.Parent = script
						firepart.Size = vect3(7.5,7.5,7.5)
						firepart.BottomSurface = Enum.SurfaceType.Smooth
						firepart.Anchored = true
						firepart.CanCollide = false
						firepart.CanTouch = false
						if randomcolor == 0 then
							firepart.BrickColor = brickcolor("Crimson")
						elseif randomcolor == 1 then
							firepart.BrickColor = brickcolor("Neon orange")
						elseif randomcolor == 2 then
							firepart.BrickColor = brickcolor("Bright orange")
						elseif randomcolor == 3 then
							firepart.BrickColor = brickcolor("Bright red")
						end
						firepart.Material = Enum.Material.Neon
						firepart.TopSurface = Enum.SurfaceType.Smooth
						firepart.CFrame = Weapon.CFrame * cframe(0,0,0.25) * angles(rad(random(-360,360)),rad(random(-360,360)),rad(random(-360,360)))
						local fire = new("Fire")
						fire.Parent = firepart
						fire.Size = 10
						fire.Heat = 25
						if randomcolor == 0 then
							fire.Color = Color3.fromRGB(117,0,0)
							fire.SecondaryColor = Color3.fromRGB(196, 40, 28)
						elseif randomcolor == 1 then
							fire.Color = Color3.fromRGB(213, 115, 61)
							fire.SecondaryColor = Color3.fromRGB(255,170,0)
						elseif randomcolor == 2 then
							fire.Color = Color3.fromRGB(218, 133, 65)
							fire.SecondaryColor = Color3.fromRGB(255, 200, 0)
						elseif randomcolor == 3 then
							fire.Color = Color3.fromRGB(196, 40, 28)
							fire.SecondaryColor = Color3.fromRGB(255, 0, 0)
						end
						local smoke = new("Smoke")
						smoke.Parent = firepart
						smoke.Color = fire.Color
						smoke.Opacity = 0.5
						smoke.RiseVelocity = 10
						smoke.Size = 5
						spawn(function()
							for i = 1,25 do
								wait()
								firepart.CFrame = firepart.CFrame * angles(rad(7.5),rad(7.5),rad(7.5))
								firepart.Transparency = firepart.Transparency + 0.05
								firepart.Size = firepart.Size - vect3(0.45,0.45,0.45)
							end
						end)
						spawn(function()
							wait(0.5)
							fire.Enabled = false
							smoke.Enabled = false
							debris:AddItem(firepart,2)
						end)	
					end
				end)
				for i = 1,10 do
					magnitudedamage(5, "sphere", 0, 10, 9089368508, 6.5, 1, root,true,"viper")
					wait(0.06)
				end
			end)()
			wait(0.8)
			bpos:Destroy()
			hum.WalkSpeed = originalwalkspeed
			hum.JumpPower = originaljumppower
			hum.JumpHeight = originaljumpheight
			attack = false
		end
	end,
	--Grand Revolver
	["sax"] = function()
		if not attack  and not guarding and not hurt and hum.Sit == false and not sitting and not waitin then
			keycombo = ""
			attack = true
			hum.WalkSpeed = 0
			hum.JumpPower = 0
			hum.JumpHeight = 0
			anim = "gviper"
			frame = 1
			if Player.Name == "ninjakaiden1" then
				chatter("Grand...")
				if voices then
					sound1("saul2/saul2_303-0.wav",3,1.15,head,0,false)
				end
			else
				chatter("Grand...")
				if voices then
					sound(5002748505,3,1.05,head,0,false)
				end
			end
			coroutine.wrap(function()
				wait(0.1)
				frame = 2
				wait(0.1)
				frame = 5
				wait(0.1)
				frame = 6
				wait(0.15)
				anim = "revolver"
				frame = 1
				wait(0.1)
				frame = 2
				wait(0.1)
				frame = 3
				wait(0.1)
				frame = 4
				wait(0.1)
				frame = 5
				wait(0.1)
				frame = 6
				wait(0.1)
				frame = 7
			end)()
			wait(0.15)
			local bv = new("BodyVelocity")
			bv.maxForce = vect3(math.huge,math.huge,math.huge)
			bv.P = 7999
			bv.velocity = root.CFrame.lookVector * 35 + vect3(0,15,0)
			bv.Parent = root
			magnitudedamage(12,"sphere", 0.125, 7.15, 9089368508, 6.5, 1, root,true,"grand1")
			wait(0.5)
			chatter("Revolver!")
			bv.velocity = root.CFrame.lookVector * 35 + vect3(0,-12.5,0)
			magnitudedamage(10.5,"sphere", 0.125, 9.25, 9089368508, 6.5, 0.7, root,true,"grand2")
			wait(0.75)
			bv:Destroy()
			hum.WalkSpeed = originalwalkspeed
			hum.JumpPower = originaljumppower
			hum.JumpHeight = originaljumpheight
			attack = false
		end
	end,
	--Grand Revolver ver. Beta
	["dax"] = function()
		if not attack  and not guarding and not hurt and hum.Sit == false and not sitting and not waitin then
			keycombo = ""
			attack = true
			hum.WalkSpeed = 0
			hum.JumpPower = 0
			hum.JumpHeight = 0
			anim = "blazingrun"
			frame = 5
			if Player.Name == "ninjakaiden1" then
				chatter("Grand...")
				if voices then
					sound1("saul/yusuke28.wav",3,1.05,head,0,false)
				end
			else
				chatter("Grand...")
				if voices then
					sound(7143576307,4,1,head,0,false)
				end
			end
			coroutine.wrap(function()
				wait(0.1)
				anim = "betarevolver"
				frame = 1
				magnitudedamage(12,"sphere", 0.125, 7.5, 9089368508, 6.5, 1, root,true,"grand")
				wait(0.25)
				frame = 2
				magnitudedamage(12,"sphere", 0.125, 7.5, 9089368508, 6.5, 1, root,true,"grand")
				wait(0.15)
				frame = 3
				magnitudedamage(12,"sphere", 0.125, 7.5, 9089368508, 6.5, 1, root,true,"grand")
				wait(0.15)
				magnitudedamage(12,"sphere", 0.125, 7.5, 9089368508, 6.5, 1, root,true,"grand")
				frame = 4
			end)()
			wait(0.15)
			local bv = new("BodyVelocity")
			bv.maxForce = vect3(math.huge,math.huge,math.huge)
			bv.P = 7999
			bv.velocity = root.CFrame.lookVector * 35 + vect3(0,12.5,0)
			bv.Parent = root
			wait(.465)
			if Player.Name == "ninjakaiden1" then
				chatter("Revolver!")
				if voices then
					sound1("saul/yusuke29.wav",3,1.05,head,0,false)
				end
			else
				chatter("Revolver!")
				if voices then
					sound(4323235687,4,1,head,0,false)
				end
			end
			bv.velocity = root.CFrame.lookVector * 35 + vect3(0,-15,0)
			wait(0.5)
			bv:Destroy()
			hum.WalkSpeed = originalwalkspeed
			hum.JumpPower = originaljumppower
			hum.JumpHeight = originaljumpheight
			attack = false
		end
	end,	
	--Grand Bringer
	["sawx"] = function()
		if not attack  and not guarding and not hurt and hum.Sit == false and not sitting and not waitin then
			keycombo = ""
			attack = true
			hum.WalkSpeed = 0
			hum.JumpPower = 0
			hum.JumpHeight = 0
			anim = "gviper"
			frame = 1
			if Player.Name == "ninjakaiden1" then
				chatter("Grand...")
				if voices then
					sound1("saul/yusuke28.wav",3,1.05,head,0,false)
				end
			else
				chatter("Grand...")
				if voices then
					sound(6977630508,4,1,head,0,false)
				end
			end
			coroutine.wrap(function()
				wait(0.1)
				frame = 2
				wait(0.1)
				frame = 5
				wait(0.1)
				frame = 6
				wait(0.1)
				anim = "bringer"
				frame = 1
				wait(0.25)
				frame = 2
				wait(0.25)
				frame = 3
			end)()
			wait(0.15)
			local bv = new("BodyVelocity")
			bv.maxForce = vect3(math.huge,math.huge,math.huge)
			bv.P = 8000
			bv.velocity = root.CFrame.lookVector * 45 + vect3(0,17.5,0)
			bv.Parent = root
			magnitudedamage(12,"sphere", 0.125, 8.5, 9089368508, 6.5, 1, root,true,"bringer1")
			wait(.475)
			local Fire = new("Fire")
			Fire.Parent = rarm
			Fire.Color = color(1, 0.501961, 0)
			Fire.SecondaryColor = color(1, 0, 0)
			Fire.Size = 8
			Fire.Heat = 11
			debris:AddItem(Fire,2.5)
			sound(3518146972,3.5,1,rarm,0.375,false)
			chatter("Bringer!")
			bv.velocity = root.CFrame.lookVector * 55 + vect3(0,-15,0)
			magnitudedamage(12,"sphere", 0.125, 10, 9089368508, 6.5, 1, root,true,"bringer2")
			if Player.Name == "ninjakaiden1" then
				if voices then
					sound1("saul/yusuke30.wav",3,1.05,head,0,false)
				end
			end
			spawn(function()
				wait(0.15)
				Fire.Enabled = false
			end)
			wait(.6)
			Fire.Enabled = false
			bv:Destroy()
			hum.WalkSpeed = originalwalkspeed
			hum.JumpPower = originaljumppower
			hum.JumpHeight = originaljumpheight
			attack = false
		end
	end,
	--Diving Star
	["dasx"] = function()
		if not attack  and not guarding and not hurt and hum.Sit == false and not sitting and not waitin then
			keycombo = ""
			attack = true
			hum.WalkSpeed = 0
			hum.JumpPower = 0
			hum.JumpHeight = 0
			anim = "skykick"
			frame = 3
			local hit = false
			local vel = new("BodyVelocity")
			vel.MaxForce = vect3(math.huge,math.huge,math.huge)
			vel.Parent = root
			vel.Velocity = root.CFrame.LookVector * -75 + root.CFrame.upVector * 50
			vel.Name  =  "SmallMover"
			sound(1295417556,3.5,1,torso,0,false)
			if Player.Name == "ninjakaiden1" then
				if voices then
					sound1("saul2/saul2_200-0.wav",3,1.05,head,0,false)
				end
			else
				if voices then
					sound(161619979,4,1,head,0,false)
				end
			end
			wait(0.45)
			vel:Destroy()
			root.Anchored = true
			frame = 1
			wait(0.25)
			local randomsound = random(0,9)
			if Player.Name == "ninjakaiden1" then
				if voices then
					if randomsound <= 2 then
						sound1("saul2/saul2_200-1.wav",3,1.1,head,0,false)
					elseif randomsound >= 7 then
						sound1("saul2/saul2_200-2.wav",3,1.05,head,0,false)
					end
				end
			else
				if voices then
					if randomsound <= 2 then
						sound(8429465299,4,1,head,0,false)
					elseif randomsound >= 7 then
						sound(8429477961,4,1,head,0,false)
					end
				end
			end
			root.Anchored = false
			frame = 2
			local vel = new("BodyVelocity")
			vel.MaxForce = vect3(math.huge,math.huge,math.huge)
			vel.Parent = root
			vel.Velocity = root.CFrame.LookVector * 75 + root.CFrame.upVector * -45
			vel.Name  =  "SmallMover"
			debris:AddItem(vel,.5)
			sound(6792185800,3.5,1,torso,0,false)
			local Part = new("Part",script)
			Part.Name = "HitboxThing"
			Part.Transparency = 1
			Part.Size = vect3(5, 7.5, 5)
			Part.CanCollide = false
			local Weld = new("Weld",Part)
			Weld.Part0 = root
			Weld.Part1 = Part
			Weld.C0 = Weld.C0 * cframe(0,0,-4)
			Part.Touched:Connect(function(persona)
				if persona:IsA("BasePart") or persona:IsA("MeshPart") then
					if persona.Parent ~= nil and not persona.Parent:IsDescendantOf(char) then
						if persona.Parent:FindFirstChildOfClass("Humanoid") and persona.Parent ~= char and hit == false then
							local humi = persona.Parent:FindFirstChildOfClass("Humanoid")
							local torsou = persona.Parent:FindFirstChild("Torso") or persona.Parent:FindFirstChild("UpperTorso") or persona.Parent:FindFirstChild("HumanoidRootPart")
							if torsou then
								hit = true
								damage(humi, 16, 9089368508, 6.5, 0.7, torsou, 0.125, "sphere")
								local BV = new("BodyVelocity", torsou)
								BV.maxForce = vect3(math.huge,math.huge,math.huge)
								BV.P = 100000
								BV.Velocity = root.CFrame.LookVector * 115
								debris:AddItem(BV,0.1)
								humi.PlatformStand = true
								coroutine.wrap(function()
									wait(3)
									humi.PlatformStand = false
								end)()
								Part:Destroy()
							end
						end
					end	
				end
			end)
			local hitfloor = nil
			repeat 
				wait()
				hitfloor = raycast(root.Position, (cframe(root.Position, root.Position + vect3(0, -1, 0))).lookVector, 4+hum.HipHeight, char)
			until hitfloor or hit
			if Part ~= nil then
				Part:Destroy()
			end
			vel:Destroy()
			wait(0.05)
			hum.WalkSpeed = originalwalkspeed
			hum.JumpPower = originaljumppower
			hum.JumpHeight = originaljumpheight
			attack = false
		end
	end,
	--Star Throw
	["asdwah"] = function()
		if not attack  and not guarding and not hurt and hum.Sit == false and not sitting and not waitin then
			keycombo = ""
			attack = true
			hum.WalkSpeed = 0
			hum.JumpPower = 0
			hum.JumpHeight = 0
			anim = "wildthrow"
			frame = 1
			local grabbed = false
			local grabvictim = nil
			local grabvictimhum = nil
			local grabvictimhead = nil
			local grabvictimtorso = nil
			local function grab()
				for i,v in pairs(workspace:GetDescendants()) do
					if v:FindFirstChildOfClass("Humanoid") and v ~= char and not grabbed then
						local vhum = v:FindFirstChildOfClass("Humanoid")
						local vtorso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso") or v:FindFirstChild("HumanoidRootPart")
						local vhead = v:FindFirstChild("Head")
						if vtorso then
							local vdistance = (root.Position - vtorso.Position).magnitude
							if vdistance <= 8.5 and vhum.Health > 0 then
								sound(9105467029,3,1,torso,0.182,false)
								grabbed = true
								grabvictim = v
								grabvictimhum = vhum
								grabvictimhead = vhead
								grabvictimtorso = vtorso
							end
						end
					end
				end
			end
			grab()
			wait(0.025)
			if not grabbed then
				frame = 1
				wait(0.05)
				sound(3755636638,2.5,1.8,rarm,0,false)
				local rng = random(0,5)
				if rng <= 3 then
					chatter("What?!")
					if voices then
						sound(948494432,4.5,1,head,0,false)
					end
				end
				frame = 2
				wait(0.425)
			else
				local grabpart = new("Part")
				grabpart.Parent = grabvictim
				grabpart.Transparency = 1
				grabpart.CanCollide = false
				grabpart.CFrame = root.CFrame * cframe(0,0,-2.5) * angles(0,rad(180),0)
				grabpart.Anchored = false
				grabpart.CFrame = root.CFrame * cframe(0,0,-2.5) * angles(0,rad(180),0)
				root.Anchored = true
				local Gweld = new("Weld")
				Gweld.Parent = rarm
				Gweld.Part0 = rarm
				Gweld.Name = "GRABWELD"
				Gweld.Part1 = grabpart
				Gweld.C0 = Gweld.C0 * cframe(0.5, -1.25, 0.5) * angles(0,rad(180),0)
				local weld = new("Weld")
				weld.Parent = grabpart
				weld.Part0 = grabpart
				weld.Part1 = grabvictimtorso
				weld.C0 = weld.C0 * cframe(0.5, 0, 0)
				frame = 1
				Gweld.C0 = Gweld.C0:Lerp(cframe(0.5, -1.25, 0.25) * angles(rad(-75), rad(180), rad(0)), 1)
				wait(0.05)
				frame = 2
				Gweld.C0 = Gweld.C0:Lerp(cframe(0.5, -1.25, 0.5) * angles(rad(-90), rad(180), rad(0)), 1)
				wait(1.35)
				if voices then
					sound(565208983,4.5,1,head,0,false)
				end
				frame = 3
				Gweld.C0 = Gweld.C0:Lerp(cframe(0.5, -1.25, 0.5) * angles(rad(-90), rad(165), rad(0)), 1)
				wait(0.075)
				frame = 4
				Gweld.C0 = Gweld.C0:Lerp(cframe(0.35, -1.25, 0.5) * angles(rad(-90), rad(180), rad(0)), 1)
				wait(0.075)
				frame = 5
				Gweld.C0 = Gweld.C0:Lerp(cframe(0.4, -1.25, 0.5) * angles(rad(-90), rad(180), rad(0)), 1)
				wait(0.075)
				frame = 6
				Gweld.C0 = Gweld.C0:Lerp(cframe(0.5, -0.5, 0.5) * angles(rad(-160), rad(180), rad(0)), 1)
				sound(9076453292,7.5,1,torso,0,false)
				wait(0.01)
				coroutine.wrap(function()
					hiteffect("slam",grabvictimtorso)
					sound2(97522871949213,6.5,1,grabvictimtorso,0)
					grounddebris(grabvictimtorso,15,12.5,1.75)
				end)()
				debris:AddItem(Gweld,0.01)
				debris:AddItem(weld,0.01)
				wait(0.005)
				frame = 6
				grabpart:Destroy()
				grabvictimhum.PlatformStand = true
				coroutine.wrap(function()
					wait(4.5)
					grabvictimhum.PlatformStand = false
				end)()
				damage(grabvictimhum, 35, 8659358224, 5, 1, grabvictimhead, 0.057, "none")
				local vel = new("BodyVelocity")
				vel.MaxForce = vect3(math.huge,math.huge,math.huge)
				vel.Parent = grabvictimtorso
				vel.Velocity = grabvictimtorso.CFrame.LookVector * -50 + grabvictimtorso.CFrame.upVector * 100
				vel.Name  =  "SmallMover"
				debris:AddItem(vel,0.01)
				if Player.Name == "ninjakaiden1" then
					--Instant Kill (only if I'm using the weapon)
					if not game:GetService("Players"):GetPlayerFromCharacter(grabvictim) or grabvictim:FindFirstChild("CSDeathByHiko") then
						new("BoolValue",grabvictim).Name = "CSDeathByHiko"
						local scream = random(0,20)
						sound(128195213295128,6,1,grabvictimtorso,0,false)
						sound(8588542238,5,0.2,grabvictimhead,0,false)
						ragdoll(grabvictim)
						hiteffect("blood",grabvictimtorso)
						sound2(5951833277, 4.5, 1, grabvictimtorso, 0,false)
						grabvictimhum.BreakJointsOnDeath = false
						for i,v in pairs(grabvictim:GetDescendants()) do
							if v:IsA("BasePart") then
								v.CanCollide = true
							end
						end
						if scream == 1 then
							sound(2898498516,4.5,1,grabvictimhead,0,false)
						elseif scream == 2 then
							sound(4602905960,4.5,1,grabvictimhead,0.155,false)
						elseif scream == 3 then
							sound(566988981,4.5,1,grabvictimhead,0,false)
						elseif scream == 4 then
							sound(887549084,4.5,1,grabvictimhead,0,false)
						elseif scream == 5 then
							sound(884348443,4.5,1,grabvictimhead,0,false)
						elseif scream == 6 then
							sound(884348070,4.5,1,grabvictimhead,0,false)
						elseif scream == 7 then
							sound(2898498606,4.5,1,grabvictimhead,0,false)
						elseif scream == 8 then
							sound(6108565657,4.5,1,grabvictimhead,0,false)
						elseif scream == 9 then
							sound(6108540937,4.5,1,grabvictimhead,0,false)
						elseif scream == 10 then
							sound(6108566293,4.5,1,grabvictimhead,0,false)
						elseif scream == 11 then
							sound(5986548269,4.5,1,grabvictimhead,0,false)
						elseif scream == 12 then
							sound(8399859908,7.5,1,grabvictimhead,0,false)
						elseif scream == 13 then
							sound(5538532722,4.5,1,grabvictimhead,0,false)
						elseif scream == 14 then
							sound(5538517651,4.5,1,grabvictimhead,0,false)
						elseif scream == 15 then
							sound(5965159676,5.5,1,grabvictimhead,0,false)
						elseif scream == 16 then
							sound(8327314343,4.5,1,grabvictimhead,0,false)
						elseif scream == 17 then
							sound(481775819,4.5,1,grabvictimhead,0,false)
						elseif scream == 18 then
							sound(6472521644,4.5,1,grabvictimhead,0,false)
						elseif scream == 19 then
							sound(6006696349,4.5,1,grabvictimhead,0,false)
						else
							sound(1354972481,4.5,1,grabvictimhead,0,false)
						end					
						grabvictimhum:TakeDamage(math.huge)
						grabvictimhum:TakeDamage(math.huge)
						grabvictimhum.Health = 0
						grabvictimhum:SetStateEnabled(Enum.HumanoidStateType.Dead, true)
						grabvictimhum:ChangeState(Enum.HumanoidStateType.Dead)
						if grabvictimhum.Health >= grabvictimhum.MaxHealth then
							grabvictim:BreakJoints()
						end
					end
				end
				wait(0.1)
				frame = 7
				wait(0.1)
				frame = 8
				root.Anchored = false
				wait(0.05)
				root.CFrame = root.CFrame * angles(0,rad(180),0)
				wait(0.005)
			end
			hum.WalkSpeed = originalwalkspeed
			hum.JumpPower = originaljumppower
			hum.JumpHeight = originaljumpheight
			attack = false
		end
	end,
	--dash forward
	["ww"] = function()
		if not attack  and not guarding and not hurt and hum.Sit == false and not sitting and not waitin then
			keycombo = ""
			attack = true
			anim = "dashforward"
			frame = 1
			wait(0.125)
			frame = 2
			sound(4909206080,2.5,1,torso,0,false)
			local dash = new("BodyVelocity")
			dash.Parent = root
			dash.MaxForce = vect3(math.huge,math.huge,math.huge)
			dash.Velocity = root.CFrame.lookVector * 100
			wait(0.4)
			dash:Destroy()
			attack = false
		end
	end,
	--dash backwards
	["ss"] = function()
		if not attack  and not guarding and not hurt and hum.Sit == false and not sitting and not waitin then
			keycombo = ""
			attack = true
			anim = "dashback"
			frame = 1
			local randomframe = random(0,3)
			wait(0.125)
			if randomframe <= 1 then
				frame = 3
			else
				frame = 2
			end
			sound(4909206080,2.5,1,torso,0,false)
			local dash = new("BodyVelocity")
			dash.Parent = root
			dash.MaxForce = vect3(math.huge,math.huge,math.huge)
			dash.Velocity = root.CFrame.lookVector * -100
			wait(0.375)
			dash:Destroy()
			local dash = new("BodyVelocity")
			dash.Parent = root
			dash.MaxForce = vect3(math.huge,math.huge,math.huge)
			dash.Velocity = root.CFrame.lookVector * -50
			wait(0.15)
			dash:Destroy()
			attack = false
		end
	end,
	--grab, air grab
	["h"] = function()
		if not attack  and not guarding and not hurt and hum.Sit == false and not sitting and not waitin then
			keycombo = ""
			if not inair then
				attack = true
				hum.WalkSpeed = 0
				hum.JumpPower = 0
				hum.JumpHeight = 0
				anim = "grab"
				frame = 1
				local grabbed = false
				local grabvictim = nil
				local grabvictimhum = nil
				local grabvictimhead = nil
				local grabvictimtorso = nil
				local function grab()
					for i,v in pairs(workspace:GetDescendants()) do
						if v:FindFirstChildOfClass("Humanoid") and v ~= char and not grabbed then
							local vhum = v:FindFirstChildOfClass("Humanoid")
							local vtorso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso") or v:FindFirstChild("HumanoidRootPart")
							local vhead = v:FindFirstChild("Head")
							if vtorso then
								local vdistance = (root.Position - vtorso.Position).magnitude
								if vdistance <= 8.5 and vhum.Health > 0 then
									sound(9105467029,3,1,torso,0.182,false)
									grabbed = true
									grabvictim = v
									grabvictimhum = vhum
									grabvictimhead = vhead
									grabvictimtorso = vtorso
								end
							end
						end
					end
				end
				grab()
				wait(0.025)
				if not grabbed then
					sound(3755636638,2.5,1.8,rarm,0,false)
					local rng = random(0,5)
					if rng <= 3 then
						chatter("What?!")
						if voices then
							sound(948494432,4.5,1,head,0,false)
						end
					end
					frame = 2
					wait(0.425)
				else
					local grabpart = new("Part")
					grabpart.Parent = grabvictim
					grabpart.Transparency = 1
					grabpart.CanCollide = false
					grabpart.CFrame = root.CFrame * cframe(0,0,-2.5) * angles(0,rad(180),0)
					grabpart.Anchored = true
					grabpart.CFrame = root.CFrame * cframe(0,0,-2.5) * angles(0,rad(180),0)
					root.Anchored = true
					local weld = new("Weld")
					weld.Parent = grabpart
					weld.Part0 = grabpart
					weld.Part1 = grabvictimtorso
					weld.C0 = weld.C0 * cframe(-0.4, 0, 0)
					chatter("Get out of my face!")
					if voices then
						sound(5472423948,4.5,1.05,head,1.575,false)
					end
					frame = 1
					wait(0.05)
					frame = 2
					wait(1.25)
					anim = "headbutt"
					if voices then
						sound(566988626,4.5,1,head,0,false)
					end
					sound(8679732323,5,1,torso,0,false)
					frame = 1
					weld.C0 = weld.C0:Lerp(cframe(-0.4, 0, 0.25) * angles(rad(-0), rad(0), rad(0)), 1)
					wait(0.15)
					frame = 2
					weld.C0 = weld.C0:Lerp(cframe(0.15, -0.25, -0.85) * angles(rad(-0), rad(0), rad(0)), 1)
					debris:AddItem(weld,0.01)
					wait(0.005)
					grabpart:Destroy()
					grabvictimhum.PlatformStand = true
					coroutine.wrap(function()
						wait(3)
						grabvictimhum.PlatformStand = false
					end)()
					damage(grabvictimhum, 22, 1058693352, 5, 1, grabvictimhead, 0, "slam")
					grabvictimtorso.Velocity = root.CFrame.lookVector*75
					if Player.Name == "ninjakaiden1" then
						--Instant Kill (only if I'm using the weapon)
						if not game:GetService("Players"):GetPlayerFromCharacter(grabvictim) or grabvictim:FindFirstChild("CSDeathByHiko") then
							new("BoolValue",grabvictim).Name = "CSDeathByHiko"
							local scream = random(0,20)
							sound(6934375050,6,1,grabvictimhead,0,false)
							sound(8659358224,7.5,1,grabvictimhead,0,false)
							ragdoll(grabvictim)
							hiteffect("blood",grabvictimtorso)
							sound(5951833277, 4.5, 1, grabvictimtorso, 0,false)
							grabvictimtorso.Velocity = root.CFrame.lookVector*450
							grabvictimhum.BreakJointsOnDeath = false
							for i,v in pairs(grabvictim:GetDescendants()) do
								if v:IsA("BasePart") then
									v.CanCollide = true
								end
							end
							if scream == 1 then
								sound(2898498516,4.5,1,grabvictimhead,0,false)
							elseif scream == 2 then
								sound(4602905960,4.5,1,grabvictimhead,0.155,false)
							elseif scream == 3 then
								sound(566988981,4.5,1,grabvictimhead,0,false)
							elseif scream == 4 then
								sound(887549084,4.5,1,grabvictimhead,0,false)
							elseif scream == 5 then
								sound(884348443,4.5,1,grabvictimhead,0,false)
							elseif scream == 6 then
								sound(884348070,4.5,1,grabvictimhead,0,false)
							elseif scream == 7 then
								sound(2898498606,4.5,1,grabvictimhead,0,false)
							elseif scream == 8 then
								sound(6108565657,4.5,1,grabvictimhead,0,false)
							elseif scream == 9 then
								sound(6108540937,4.5,1,grabvictimhead,0,false)
							elseif scream == 10 then
								sound(6108566293,4.5,1,grabvictimhead,0,false)
							elseif scream == 11 then
								sound(5986548269,4.5,1,grabvictimhead,0,false)
							elseif scream == 12 then
								sound(8399859908,7.5,1,grabvictimhead,0,false)
							elseif scream == 13 then
								sound(5538532722,4.5,1,grabvictimhead,0,false)
							elseif scream == 14 then
								sound(5538517651,4.5,1,grabvictimhead,0,false)
							elseif scream == 15 then
								sound(5965159676,5.5,1,grabvictimhead,0,false)
							elseif scream == 16 then
								sound(8327314343,4.5,1,grabvictimhead,0,false)
							elseif scream == 17 then
								sound(481775819,4.5,1,grabvictimhead,0,false)
							elseif scream == 18 then
								sound(6472521644,4.5,1,grabvictimhead,0,false)
							elseif scream == 19 then
								sound(6006696349,4.5,1,grabvictimhead,0,false)
							else
								sound(1354972481,4.5,1,grabvictimhead,0,false)
							end					
							grabvictimhum:TakeDamage(math.huge)
							grabvictimhum:TakeDamage(math.huge)
							grabvictimhum.Health = 0
							grabvictimhum:SetStateEnabled(Enum.HumanoidStateType.Dead, true)
							grabvictimhum:ChangeState(Enum.HumanoidStateType.Dead)
							if grabvictimhum.Health >= grabvictimhum.MaxHealth then
								grabvictim:BreakJoints()
							end
						end
					end
					wait(0.05)
					frame = 3
					wait(0.45)
					frame = 4
					root.Anchored = false
					wait(0.045)
				end
				hum.WalkSpeed = originalwalkspeed
				hum.JumpPower = originaljumppower
				hum.JumpHeight = originaljumpheight
				attack = false
			else
				attack = true
				anim = "agrab"
				frame = 1
				local grabbed = false
				local grabvictim = nil
				local grabvictimhum = nil
				local grabvictimhead = nil
				local grabvictimtorso = nil
				local Part = new("Part",script)
				Part.Name = "HitboxThing"
				Part.Transparency = 1
				Part.Size = vect3(2.5, 7.5, 3)
				Part.CanCollide = false
				debris:AddItem(Part,0.125)
				local Weld = new("Weld",Part)
				Weld.Part0 = root
				Weld.Part1 = Part
				Weld.C0 = Weld.C0 * cframe(0,0,-2.5)
				Part.Touched:Connect(function(persona)
					if persona:IsA("BasePart") or persona:IsA("MeshPart") then
						if persona.Parent ~= nil and not persona.Parent:IsDescendantOf(char) then
							if persona.Parent:FindFirstChildOfClass("Humanoid") and persona.Parent ~= char and not grabbed then
								local humi = persona.Parent:FindFirstChildOfClass("Humanoid")
								local torsou = persona.Parent:FindFirstChild("Torso") or persona.Parent:FindFirstChild("UpperTorso")
								local headu = persona.Parent:FindFirstChild("Head")
								if torsou then
									grabbed = true
									sound(9105467029,3,1,torso,0.182,false)
									grabbed = true
									grabvictim = persona.Parent
									grabvictimhum = humi
									grabvictimhead = headu
									grabvictimtorso = torsou
								end
							end
						end	
					end
				end)
				local vel = new("BodyVelocity")
				vel.MaxForce = vect3(math.huge,math.huge,math.huge)
				vel.Parent = root
				vel.Velocity = root.CFrame.LookVector * 25 + root.CFrame.upVector * 75
				vel.Name  =  "SmallMover"
				debris:AddItem(vel,.1)
				sound(1295417556,3,1,torso,0,false)
				wait(0.175)
				if not grabbed then
					sound(3755636638,2.5,1.8,rarm,0,false)
					frame = 1
					wait(0.425)
				else
					Part:Destroy()
					local weld = new("Weld")
					weld.Parent = root
					weld.Part0 = root
					weld.Part1 = grabvictimtorso
					weld.Name = "GrabWELD"
					weld.C0 = cframe(0, 1, -2.5) * angles(0,rad(-180),0)
					root.Anchored = true
					anim = "agrab"
					frame = 1
					wait(0.1)
					frame = 2
					wait(0.125)
					frame = 3
					wait(0.5)
					debris:AddItem(weld,0.01)
					wait(0.005)
					grabvictimhum.PlatformStand = true
					coroutine.wrap(function()
						wait(3)
						grabvictimhum.PlatformStand = false
					end)()
					local boom = new("Explosion")
					boom.Position = grabvictimtorso.Position
					boom.Parent = workspace 
					boom.BlastRadius = 10 
					boom.BlastPressure = 0 
					local BV = new("BodyVelocity", grabvictimtorso)
					BV.maxForce = vect3(math.huge,math.huge,math.huge)
					BV.P = 100000
					BV.Velocity = root.CFrame.LookVector * 25 + root.CFrame.upVector * 25
					debris:AddItem(BV,0.3)
					chatter("BUUUURRRNNNN!!")
					if voices then
						sound(5437622703,4.5,1.05,head,0,false)
					end
					sound2(2814354338,4.5,1,grabvictimtorso,0)
					damage(grabvictimhum, 26, 8021447194, 5, 1, grabvictimhead, 0, "fire")
					grabvictimtorso.Velocity = root.CFrame.lookVector*125
					if Player.Name == "ninjakaiden1" then
						--Instant Kill (only if I'm using the weapon)
						if not game:GetService("Players"):GetPlayerFromCharacter(grabvictim) or grabvictim:FindFirstChild("CSDeathByHiko") then
							if game:GetService("Players"):GetPlayerFromCharacter(grabvictim) or grabvictim:FindFirstChild("CSDeathByHiko") then return end
							new("BoolValue",grabvictim).Name = "CSDeathByHiko"
							local scream = random(0,20)
							local fire = new("Fire")
							fire.Parent = grabvictimtorso
							fire.Size = 10
							fire.Heat = 25
							local firesound = new("Sound")
							firesound.SoundId = "rbxassetid://303632290"
							firesound.Volume = 5
							firesound.Looped = true
							firesound.Parent = grabvictimtorso
							firesound:Play()
							ragdoll(grabvictim)
							hiteffect("blood",grabvictimtorso)
							sound(5951833277, 4.5, 1, grabvictimtorso, 0,false)
							BV.Velocity = root.CFrame.LookVector * 450 + root.CFrame.upVector * 50
							debris:AddItem(BV,0.009)
							grabvictimhum.BreakJointsOnDeath = false
							for i,v in pairs(grabvictim:GetDescendants()) do
								if v:IsA("BasePart") then
									v.CanCollide = true
								end
							end
							if scream == 1 then
								sound(2898498516,4.5,1,grabvictimhead,0,false)
							elseif scream == 2 then
								sound(4602905960,4.5,1,grabvictimhead,0.155,false)
							elseif scream == 3 then
								sound(566988981,4.5,1,grabvictimhead,0,false)
							elseif scream == 4 then
								sound(887549084,4.5,1,grabvictimhead,0,false)
							elseif scream == 5 then
								sound(884348443,4.5,1,grabvictimhead,0,false)
							elseif scream == 6 then
								sound(884348070,4.5,1,grabvictimhead,0,false)
							elseif scream == 7 then
								sound(2898498606,4.5,1,grabvictimhead,0,false)
							elseif scream == 8 then
								sound(6108565657,4.5,1,grabvictimhead,0,false)
							elseif scream == 9 then
								sound(6108540937,4.5,1,grabvictimhead,0,false)
							elseif scream == 10 then
								sound(6108566293,4.5,1,grabvictimhead,0,false)
							elseif scream == 11 then
								sound(5986548269,4.5,1,grabvictimhead,0,false)
							elseif scream == 12 then
								sound(8399859908,7.5,1,grabvictimhead,0,false)
							elseif scream == 13 then
								sound(5538532722,4.5,1,grabvictimhead,0,false)
							elseif scream == 14 then
								sound(5538517651,4.5,1,grabvictimhead,0,false)
							elseif scream == 15 then
								sound(5965159676,5.5,1,grabvictimhead,0,false)
							elseif scream == 16 then
								sound(8327314343,4.5,1,grabvictimhead,0,false)
							elseif scream == 17 then
								sound(481775819,4.5,1,grabvictimhead,0,false)
							elseif scream == 18 then
								sound(6472521644,4.5,1,grabvictimhead,0,false)
							elseif scream == 19 then
								sound(6006696349,4.5,1,grabvictimhead,0,false)
							else
								sound(1354972481,4.5,1,grabvictimhead,0,false)
							end					
							grabvictimhum:TakeDamage(math.huge)
							grabvictimhum:TakeDamage(math.huge)
							grabvictimhum.Health = 0
							grabvictimhum:SetStateEnabled(Enum.HumanoidStateType.Dead, true)
							grabvictimhum:ChangeState(Enum.HumanoidStateType.Dead)
							if grabvictimhum.Health >= grabvictimhum.MaxHealth then
								grabvictim:BreakJoints()
							end
						end
					end
					wait(0.05)
					frame = 3
					wait(0.45)
					frame = 4
					root.Anchored = false
					wait(0.045)
				end
				attack = false
			end
		end
	end,
	--slash
	["c"] = function()
		if not attack  and not guarding and not hurt and hum.Sit == false and not sitting and not waitin then
			keycombo = ""
			local damagearea = function(dmg,dtype)
				local hashit = false
				if dtype == "range" then
					for index, persona in pairs(workspace:GetDescendants()) do
						if persona:FindFirstChildOfClass("Humanoid") and persona ~= char then
							local humi = persona:FindFirstChildOfClass("Humanoid")
							local torsou = persona:FindFirstChild("Torso") or persona:FindFirstChild("UpperTorso") or persona:FindFirstChild("HumanoidRootPart")
							if torsou then
								if (torsou.Position - root.CFrame*cframe(0,0,-1.5).p).Magnitude <= 8 then
									hashit = true
									damage(humi, dmg, 9089387904, 7.5, 1, torsou, 0.057, "sphere")
									sound(7441099080,4.5,1,torsou,0,false)
									hiteffect("blood",torsou)
									local vel = new("BodyVelocity")
									vel.Parent = torsou
									vel.MaxForce = vect3(math.huge,math.huge,math.huge)
									vel.Velocity = root.CFrame.lookVector * 5
									debris:AddItem(vel,0.5)
								end
							end
						end
					end
				elseif dtype == "part" then
					local Part = new("Part",script)
					Part.Name = "HitboxThing"
					Part.Transparency = 1
					Part.Size = vect3(5, 7.5, 5)
					Part.CanCollide = false
					debris:AddItem(Part,0.25)
					local Weld = new("Weld",Part)
					Weld.Part0 = root
					Weld.Part1 = Part
					Weld.C0 = Weld.C0 * cframe(0,0,-4)
					Part.Touched:Connect(function(persona)
						if persona:IsA("BasePart") or persona:IsA("MeshPart") then
							if persona.Parent ~= nil and not persona.Parent:IsDescendantOf(char) then
								if persona.Parent:FindFirstChildOfClass("Humanoid") and persona.Parent ~= char and hashit == false then
									local humi = persona.Parent:FindFirstChildOfClass("Humanoid")
									local torsou = persona.Parent:FindFirstChild("Torso") or persona.Parent:FindFirstChild("UpperTorso") or persona.Parent:FindFirstChild("HumanoidRootPart")
									if torsou then
										hashit = true
										damage(humi, dmg, 9089387904, 7.5, 1, torsou, 0.057, "sphere")
										sound(7441099080,4.5,1,torsou,0,false)
										hiteffect("blood",torsou)
										local vel = new("BodyVelocity")
										vel.Parent = torsou
										vel.MaxForce = vect3(math.huge,math.huge,math.huge)
										vel.Velocity = root.CFrame.lookVector * 5
										debris:AddItem(vel,0.5)
									end
								end
							end	
						end
					end)
				end
			end
			if not inair then
				if not ducking then
					attack = true
					hum.WalkSpeed = 0
					hum.JumpPower = 0
					hum.JumpHeight = 0
					Trail.Enabled = true 
					Trail2.Enabled = true
					if moving == false then
						anim = "slash"
						frame = 1
						wait(0.1)
						frame = 2
						wait(0.1)
						local randomsound = random(0,9)
						if Player.Name == "ninjakaiden1" then
							if voices then
								if randomsound <= 2 then
									sound1("saul/yusuke10.wav",3,1.05,head,0,false)
								elseif randomsound >= 7 then
									sound1("saul/yusuke11.wav",3,1.05,head,0,false)
								end
							end
						else
							if voices then
								if randomsound <= 2 then
									sound(8429464088,4,1,head,0,false)
								elseif randomsound >= 7 then
									sound(8429465299,4,1,head,0,false)
								end
							end
						end
						sound(158037267, 3.5, 1, Weapon, 0, false)
						frame = 3
						damagearea(12,"range")
						wait(0.1)
						frame = 1
						wait(0.1)
						Trail.Enabled = false 
						Trail2.Enabled = false
					else
						anim = "fslash"
						frame = 1
						local vel = new("BodyVelocity")
						vel.Parent = root
						vel.MaxForce = vect3(math.huge,math.huge,math.huge)
						vel.Velocity = root.CFrame.lookVector * 45
						debris:AddItem(vel,0.125)
						wait(0.05)
						frame = 2
						wait(0.05)
						local randomsound = random(0,9)
						if Player.Name == "ninjakaiden1" then
							if voices then
								if randomsound <= 2 then
									sound1("saul/yusuke11.wav",3,1.05,head,0,false)
								elseif randomsound >= 7 then
									sound1("saul/yusuke12.wav",3,1.05,head,0,false)
								end
							end
						else
							if voices then
								if randomsound <= 2 then
									sound(8429465299,4,1,head,0,false)
								elseif randomsound >= 7 then
									sound(8429477961,4,1,head,0,false)
								end
							end
						end
						sound(158037267, 3.5, 1, Weapon, 0, false)
						frame = 3
						damagearea(14,"range")
						wait(0.25)
						Trail.Enabled = false 
						Trail2.Enabled = false
						frame = 4
						wait(0.1)
						frame = 5
						wait(0.1)
						frame = 6
						wait(0.1)
					end
					hum.WalkSpeed = originalwalkspeed
					hum.JumpPower = originaljumppower
					hum.JumpHeight = originaljumpheight
					attack = false	
					Trail.Enabled = false 
					Trail2.Enabled = false
				else
					attack = true
					hum.WalkSpeed = 0
					hum.JumpPower = 0
					hum.JumpHeight = 0
					Trail.Enabled = true 
					Trail2.Enabled = true
					anim = "dslash"
					frame = 1
					wait(0.1)
					frame = 2
					wait(0.05)
					local randomsound = random(0,9)
					if Player.Name == "ninjakaiden1" then
						if voices then
							if randomsound <= 2 then
								sound1("saul/yusuke10.wav",3,1.05,head,0,false)
							elseif randomsound >= 7 then
								sound1("saul/yusuke11.wav",3,1.05,head,0,false)
							end
						end
					else
						if voices then
							if randomsound <= 2 then
								sound(8429464088,4,1,head,0,false)
							elseif randomsound >= 7 then
								sound(8429465299,4,1,head,0,false)
							end
						end
					end
					sound(158037267, 3.5, 1, Weapon, 0, false)
					frame = 3
					damagearea(14,"range")
					wait(0.25)
					frame = 4
					Trail.Enabled = false 
					Trail2.Enabled = false
					wait(0.075)
					hum.WalkSpeed = originalwalkspeed
					hum.JumpPower = originaljumppower
					hum.JumpHeight = originaljumpheight
					attack = false	
					Trail.Enabled = false 
					Trail2.Enabled = false
				end
			else
				attack = true
				anim = "aslash"
				frame = 1
				Trail.Enabled = true 
				Trail2.Enabled = true
				wait(0.05)
				frame = 2
				wait(0.05)
				local randomsound = random(0,9)
				if Player.Name == "ninjakaiden1" then
					if voices then
						if randomsound <= 2 then
							sound1("saul/yusuke11.wav",3,1.05,head,0,false)
						elseif randomsound >= 7 then
							sound1("saul/yusuke12.wav",3,1.05,head,0,false)
						end
					end
				else
					if voices then
						if randomsound <= 2 then
							sound(8429465299,4,1,head,0,false)
						elseif randomsound >= 7 then
							sound(8429477961,4,1,head,0,false)
						end
					end
				end
				sound(158037267, 3.5, 1, Weapon, 0, false)
				frame = 3
				damagearea(15,"part")
				wait(0.25)
				attack = false
				Trail.Enabled = false 
				Trail2.Enabled = false
				frame = 1
			end
		end
	end,
	--punch
	["z"] = function()
		if not attack  and not guarding and not hurt and hum.Sit == false and not sitting and not waitin then
			keycombo = ""
			local damagearea = function(dmg,dtype)
				local hashit = false
				if dtype == "range" then
					for index, persona in pairs(workspace:GetDescendants()) do
						if persona:FindFirstChildOfClass("Humanoid") and persona ~= char then
							local humi = persona:FindFirstChildOfClass("Humanoid")
							local torsou = persona:FindFirstChild("Torso") or persona:FindFirstChild("UpperTorso") or persona:FindFirstChild("HumanoidRootPart")
							if torsou then
								if (torsou.Position - root.CFrame*cframe(0,0,-1.5).p).Magnitude <= 5 then
									hashit = true
									damage(humi, dmg, 6459218582, 4.5, 1, torsou, 0, "sphere")
									local vel = new("BodyVelocity")
									vel.Parent = torsou
									vel.MaxForce = vect3(math.huge,math.huge,math.huge)
									vel.Velocity = root.CFrame.lookVector * 5
									debris:AddItem(vel,0.5)
								end
							end
						end
					end
				elseif dtype == "part" then
					local Part = new("Part",script)
					Part.Name = "HitboxThing"
					Part.Transparency = 1
					Part.Size = vect3(2.5, 4.75, 3)
					Part.CanCollide = false
					debris:AddItem(Part,0.25)
					local Weld = new("Weld",Part)
					Weld.Part0 = root
					Weld.Part1 = Part
					Weld.C0 = Weld.C0 * cframe(0,0,-2.5)
					Part.Touched:Connect(function(persona)
						if persona:IsA("BasePart") or persona:IsA("MeshPart") then
							if persona.Parent ~= nil and not persona.Parent:IsDescendantOf(char) then
								if persona.Parent:FindFirstChildOfClass("Humanoid") and persona.Parent ~= char and hashit == false then
									local humi = persona.Parent:FindFirstChildOfClass("Humanoid")
									local torsou = persona.Parent:FindFirstChild("Torso") or persona.Parent:FindFirstChild("UpperTorso") or persona.Parent:FindFirstChild("HumanoidRootPart")
									if torsou then
										hashit = true
										damage(humi, dmg, 6459218582, 4.5, 1, torsou, 0, "sphere")
										local vel = new("BodyVelocity")
										vel.Parent = torsou
										vel.MaxForce = vect3(math.huge,math.huge,math.huge)
										vel.Velocity = root.CFrame.lookVector * 5
										debris:AddItem(vel,0.5)
									end
								end
							end	
						end
					end)
				end
			end
			if not inair then
				if not ducking then
					attack = true
					hum.WalkSpeed = 0
					hum.JumpPower = 0
					hum.JumpHeight = 0
					if moving == false then
						anim = "punch"
						frame = 1
						wait(0.05)
						frame = 2
						wait(0.05)
						local randomsound = random(0,9)
						if Player.Name == "ninjakaiden1" then
							if voices then
								if randomsound <= 2 then
									sound1("saul/yusuke10.wav",3,1.05,head,0,false)
								elseif randomsound >= 7 then
									sound1("saul/yusuke10.wav",3,1.05,head,0,false)
								end
							end
						else
							if voices then
								if randomsound <= 2 then
									sound(8429464088,4,1,head,0,false)
								elseif randomsound >= 7 then
									sound(8429464088,4,1,head,0,false)
								end
							end
						end
						sound(7122602098, 3, 1, torso, 0, false)
						frame = 3
						damagearea(8,"range")
						wait(0.1)
						frame = 1
						wait(0.1)
					else
						anim = "fpunch"
						frame = 1
						local vel = new("BodyVelocity")
						vel.Parent = root
						vel.MaxForce = vect3(math.huge,math.huge,math.huge)
						vel.Velocity = root.CFrame.lookVector * 45
						debris:AddItem(vel,0.15)
						wait(0.075)
						frame = 2
						wait(0.075)
						frame = 3
						wait(0.05)
						local randomsound = random(0,9)
						if Player.Name == "ninjakaiden1" then
							if voices then
								if randomsound <= 2 then
									sound1("saul/yusuke10.wav",3,1.05,head,0,false)
								elseif randomsound >= 7 then
									sound1("saul/yusuke11.wav",3,1.05,head,0,false)
								end
							end
						else
							if voices then
								if randomsound <= 2 then
									sound(8429464088,4,1,head,0,false)
								elseif randomsound >= 7 then
									sound(8429465299,4,1,head,0,false)
								end
							end
						end
						sound(7122602098, 3, 1, torso, 0, false)
						frame = 4
						damagearea(14,"range")
						wait(0.25)
						frame = 5
						wait(0.1)
						frame = 6
						wait(0.1)
						frame = 7
						wait(0.1)
					end
					hum.WalkSpeed = originalwalkspeed
					hum.JumpPower = originaljumppower
					hum.JumpHeight = originaljumpheight
					attack = false	
				else
					attack = true
					hum.WalkSpeed = 0
					hum.JumpPower = 0
					hum.JumpHeight = 0
					anim = "dpunch"
					frame = 1
					wait(0.1)
					local randomsound = random(0,9)
					if Player.Name == "ninjakaiden1" then
						if voices then
							if randomsound <= 2 then
								sound1("saul/yusuke10.wav",3,1.05,head,0,false)
							elseif randomsound >= 7 then
								sound1("saul/yusuke10.wav",3,1.05,head,0,false)
							end
						end
					else
						if voices then
							if randomsound <= 2 then
								sound(8429464088,4,1,head,0,false)
							elseif randomsound >= 7 then
								sound(8429464088,4,1,head,0,false)
							end
						end
					end
					sound(7122602098, 3, 1, torso, 0, false)
					frame = 2
					damagearea(8,"range")
					wait(0.1)
					frame = 1
					wait(0.1)
					hum.WalkSpeed = originalwalkspeed
					hum.JumpPower = originaljumppower
					hum.JumpHeight = originaljumpheight
					attack = false	
				end
			else
				attack = true
				anim = "apunch"
				frame = 1
				wait(0.05)
				frame = 2
				wait(0.05)
				local randomsound = random(0,9)
				if Player.Name == "ninjakaiden1" then
					if voices then
						if randomsound <= 2 then
							sound1("saul/yusuke10.wav",3,1.05,head,0,false)
						elseif randomsound >= 7 then
							sound1("saul/yusuke11.wav",3,1.05,head,0,false)
						end
					end
				else
					if voices then
						if randomsound <= 2 then
							sound(8429464088,4,1,head,0,false)
						elseif randomsound >= 7 then
							sound(8429465299,4,1,head,0,false)
						end
					end
				end
				sound(7122602098, 3, 1, torso, 0, false)
				frame = 3
				damagearea(5,"part")
				wait(0.2)
				attack = false
				frame = 1
			end
		end
	end,
	--kick
	["x"] = function()
		if not attack  and not guarding and not hurt and hum.Sit == false and not sitting and not waitin then
			keycombo = ""
			local damagearea = function(dmg,dtype)
				local hashit = false
				if dtype == "range" then
					for index, persona in pairs(workspace:GetDescendants()) do
						if persona:FindFirstChildOfClass("Humanoid") and persona ~= char then
							local humi = persona:FindFirstChildOfClass("Humanoid")
							local torsou = persona:FindFirstChild("Torso") or persona:FindFirstChild("UpperTorso") or persona:FindFirstChild("HumanoidRootPart")
							if torsou then
								if (torsou.Position - root.CFrame*cframe(0,0,-1.5).p).Magnitude <= 5 then
									hashit = true
									damage(humi, dmg, 9089368508, 6.5, 1, torsou, 0.125, "sphere")
									local vel = new("BodyVelocity")
									vel.Parent = torsou
									vel.MaxForce = vect3(math.huge,math.huge,math.huge)
									vel.Velocity = root.CFrame.lookVector * 5
									debris:AddItem(vel,0.5)
								end
							end
						end
					end
				elseif dtype == "part" then
					local Part = new("Part",script)
					Part.Name = "HitboxThing"
					Part.Transparency = 1
					Part.Size = vect3(2.5, 4.75, 3)
					Part.CanCollide = false
					debris:AddItem(Part,0.25)
					local Weld = new("Weld",Part)
					Weld.Part0 = root
					Weld.Part1 = Part
					Weld.C0 = Weld.C0 * cframe(0,0,-2.5)
					Part.Touched:Connect(function(persona)
						if persona:IsA("BasePart") or persona:IsA("MeshPart") then
							if persona.Parent ~= nil and not persona.Parent:IsDescendantOf(char) then
								if persona.Parent:FindFirstChildOfClass("Humanoid") and persona.Parent ~= char and hashit == false then
									local humi = persona.Parent:FindFirstChildOfClass("Humanoid")
									local torsou = persona.Parent:FindFirstChild("Torso") or persona.Parent:FindFirstChild("UpperTorso") or persona.Parent:FindFirstChild("HumanoidRootPart")
									if torsou then
										hashit = true
										damage(humi, dmg, 9089368508, 6.5, 1, torsou, 0.125, "sphere")
										local vel = new("BodyVelocity")
										vel.Parent = torsou
										vel.MaxForce = vect3(math.huge,math.huge,math.huge)
										vel.Velocity = root.CFrame.lookVector * 5
										debris:AddItem(vel,0.5)
									end
								end
							end	
						end
					end)
				end
			end
			if not inair then
				if not ducking then
					attack = true
					hum.WalkSpeed = 0
					hum.JumpPower = 0
					hum.JumpHeight = 0
					anim = "kick"
					frame = 1
					wait(0.05)
					frame = 2
					wait(0.05)
					local randomsound = random(0,9)
					if Player.Name == "ninjakaiden1" then
						if voices then
							if randomsound <= 2 then
								sound1("saul/yusuke10.wav",3,1.05,head,0,false)
							elseif randomsound >= 7 then
								sound1("saul/yusuke11.wav",3,1.05,head,0,false)
							end
						end
					else
						if voices then
							if randomsound <= 2 then
								sound(8429464088,4,1,head,0,false)
							elseif randomsound >= 7 then
								sound(8429465299,4,1,head,0,false)
							end
						end
					end
					sound(7122602098, 3, 1, torso, 0, false)
					frame = 3
					damagearea(13,"range")
					wait(0.1)
					frame = 1
					wait(0.1)
					hum.WalkSpeed = originalwalkspeed
					hum.JumpPower = originaljumppower
					hum.JumpHeight = originaljumpheight
					attack = false	
				else
					attack = true
					hum.WalkSpeed = 0
					hum.JumpPower = 0
					hum.JumpHeight = 0
					anim = "dkick"
					frame = 1
					wait(0.1)
					local randomsound = random(0,9)
					if Player.Name == "ninjakaiden1" then
						if voices then
							if randomsound <= 2 then
								sound1("saul/yusuke10.wav",3,1.05,head,0,false)
							elseif randomsound >= 7 then
								sound1("saul/yusuke11.wav",3,1.05,head,0,false)
							end
						end
					else
						if voices then
							if randomsound <= 2 then
								sound(8429464088,4,1,head,0,false)
							elseif randomsound >= 7 then
								sound(8429465299,4,1,head,0,false)
							end
						end
					end
					sound(7122602098, 3, 1, torso, 0, false)
					frame = 2
					damagearea(13,"range")
					wait(0.1)
					frame = 1
					wait(0.1)
					hum.WalkSpeed = originalwalkspeed
					hum.JumpPower = originaljumppower
					hum.JumpHeight = originaljumpheight
					attack = false	
				end
			else
				attack = true
				anim = "akick"
				frame = 1
				wait(0.1)
				local randomsound = random(0,9)
				if Player.Name == "ninjakaiden1" then
					if voices then
						if randomsound <= 2 then
							sound1("saul/yusuke10.wav",3,1.05,head,0,false)
						elseif randomsound >= 7 then
							sound1("saul/yusuke11.wav",3,1.05,head,0,false)
						end
					end
				else
					if voices then
						if randomsound <= 2 then
							sound(8429464088,4,1,head,0,false)
						elseif randomsound >= 7 then
							sound(8429465299,4,1,head,0,false)
						end
					end
				end
				sound(7122602098, 3, 1, torso, 0, false)
				frame = 2
				damagearea(13,"part")
				wait(0.2)
				frame = 1
				attack = false	
			end
		end
	end,
	--heavy slash
	["v"] = function()
		if not attack  and not guarding and not hurt and hum.Sit == false and not sitting and not waitin then
			keycombo = ""
			local damagearea = function(dmg,dtype)
				local hashit = false
				if dtype == "range" then
					for index, persona in pairs(workspace:GetDescendants()) do
						if persona:FindFirstChildOfClass("Humanoid") and persona ~= char then
							local humi = persona:FindFirstChildOfClass("Humanoid")
							local torsou = persona:FindFirstChild("Torso") or persona:FindFirstChild("UpperTorso") or persona:FindFirstChild("HumanoidRootPart")
							if torsou then
								if (torsou.Position - root.CFrame*cframe(0,0,-1.5).p).Magnitude <= 8 then
									hashit = true
									damage(humi, dmg, 9089387904, 7.5, 1, torsou, 0.057, "sphere")
									sound(7441099080,4.5,1,torsou,0,false)
									hiteffect("blood",torsou)
									local vel = new("BodyVelocity")
									vel.Parent = torsou
									vel.MaxForce = vect3(math.huge,math.huge,math.huge)
									vel.Velocity = root.CFrame.lookVector * 5
									debris:AddItem(vel,0.5)
								end
							end
						end
					end
				elseif dtype == "part" then
					local Part = new("Part",script)
					Part.Name = "HitboxThing"
					Part.Transparency = 1
					Part.Size = vect3(2.5, 7.5, 5)
					Part.CanCollide = false
					debris:AddItem(Part,0.15)
					local Weld = new("Weld",Part)
					Weld.Part0 = root
					Weld.Part1 = Part
					Weld.C0 = Weld.C0 * cframe(0,0,-3.5)
					Part.Touched:Connect(function(persona)
						if persona:IsA("BasePart") or persona:IsA("MeshPart") then
							if persona.Parent ~= nil and not persona.Parent:IsDescendantOf(char) then
								if persona.Parent:FindFirstChildOfClass("Humanoid") and persona.Parent ~= char and hashit == false then
									local humi = persona.Parent:FindFirstChildOfClass("Humanoid")
									local torsou = persona.Parent:FindFirstChild("Torso") or persona.Parent:FindFirstChild("UpperTorso") or persona.Parent:FindFirstChild("HumanoidRootPart")
									if torsou then
										hashit = true
										damage(humi, dmg, 9089387904, 7.5, 1, torsou, 0.057, "sphere")
										sound(7441099080,4.5,1,torsou,0,false)
										hiteffect("blood",torsou)
										local vel = new("BodyVelocity")
										vel.Parent = torsou
										vel.MaxForce = vect3(math.huge,math.huge,math.huge)
										vel.Velocity = root.CFrame.lookVector * 5
										debris:AddItem(vel,0.5)
									end
								end
							end	
						end
					end)
				end
			end
			if not inair then
				if not ducking then
					attack = true
					hum.WalkSpeed = 0
					hum.JumpPower = 0
					hum.JumpHeight = 0
					Trail.Enabled = true 
					Trail2.Enabled = true
					if moving == false then
						anim = "hslash"
						frame = 1
						wait(0.1)
						local randomsound = random(0,9)
						if Player.Name == "ninjakaiden1" then
							if voices then
								if randomsound <= 2 then
									sound1("saul/yusuke10.wav",3,1.05,head,0,false)
								elseif randomsound >= 7 then
									sound1("saul/yusuke11.wav",3,1.05,head,0,false)
								end
							end
						else
							if voices then
								if randomsound <= 2 then
									sound(8429464088,4,1,head,0,false)
								elseif randomsound >= 7 then
									sound(8429465299,4,1,head,0,false)
								end
							end
						end
						sound(158037267, 3.5, 1, Weapon, 0, false)
						frame = 2
						damagearea(15,"range")
						wait(0.1)
						Trail.Enabled = false 
						Trail2.Enabled = false
						frame = 3
						wait(0.1)
						frame = 4
						wait(0.1)
					else
						anim = "fhslash"
						frame = 1
						local vel = new("BodyVelocity")
						vel.Parent = root
						vel.MaxForce = vect3(math.huge,math.huge,math.huge)
						vel.Velocity = root.CFrame.lookVector * 45
						debris:AddItem(vel,0.125)
						wait(0.05)
						frame = 2
						wait(0.05)
						frame = 3
						wait(0.05)
						frame = 4
						wait(0.05)
						local randomsound = random(0,9)
						if Player.Name == "ninjakaiden1" then
							if voices then
								if randomsound <= 2 then
									sound1("saul/yusuke11.wav",3,1.05,head,0,false)
								elseif randomsound >= 7 then
									sound1("saul/yusuke12.wav",3,1.05,head,0,false)
								end
							end
						else
							if voices then
								if randomsound <= 2 then
									sound(8429465299,4,1,head,0,false)
								elseif randomsound >= 7 then
									sound(8429477961,4,1,head,0,false)
								end
							end
						end
						sound(158037267, 3.5, 1, Weapon, 0, false)
						frame = 5
						damagearea(16,"range")
						wait(0.25)
						Trail.Enabled = false 
						Trail2.Enabled = false
						frame = 6
						wait(0.1)
						Trail.Enabled = false 
						Trail2.Enabled = false
					end
					hum.WalkSpeed = originalwalkspeed
					hum.JumpPower = originaljumppower
					hum.JumpHeight = originaljumpheight
					attack = false	
					Trail.Enabled = false 
					Trail2.Enabled = false
				else
					attack = true
					hum.WalkSpeed = 0
					hum.JumpPower = 0
					hum.JumpHeight = 0
					Trail.Enabled = true 
					Trail2.Enabled = true
					anim = "dhslash"
					frame = 1
					wait(0.1)
					local randomsound = random(0,9)
					if Player.Name == "ninjakaiden1" then
						if voices then
							if randomsound <= 2 then
								sound1("saul/yusuke10.wav",3,1.05,head,0,false)
							elseif randomsound >= 7 then
								sound1("saul/yusuke11.wav",3,1.05,head,0,false)
							end
						end
					else
						if voices then
							if randomsound <= 2 then
								sound(8429464088,4,1,head,0,false)
							elseif randomsound >= 7 then
								sound(8429465299,4,1,head,0,false)
							end
						end
					end
					sound(158037267, 3.5, 1, Weapon, 0, false)
					frame = 2
					damagearea(16,"range")
					wait(0.25)
					Trail.Enabled = false 
					Trail2.Enabled = false
					frame = 3
					wait(0.075)
					hum.WalkSpeed = originalwalkspeed
					hum.JumpPower = originaljumppower
					hum.JumpHeight = originaljumpheight
					attack = false	
					Trail.Enabled = false 
					Trail2.Enabled = false
				end
			else
				attack = true
				anim = "ahslash"
				frame = 1
				Trail.Enabled = true 
				Trail2.Enabled = true
				wait(0.075)
				frame = 2
				wait(0.075)
				local randomsound = random(0,9)
				if Player.Name == "ninjakaiden1" then
					if voices then
						if randomsound <= 2 then
							sound1("saul/yusuke11.wav",3,1.05,head,0,false)
						elseif randomsound >= 7 then
							sound1("saul/yusuke12.wav",3,1.05,head,0,false)
						end
					end
				else
					if voices then
						if randomsound <= 2 then
							sound(8429465299,4,1,head,0,false)
						elseif randomsound >= 7 then
							sound(8429477961,4,1,head,0,false)
						end
					end
				end
				sound(158037267, 3.5, 1, Weapon, 0, false)
				frame = 3
				damagearea(15,"part")
				wait(0.25)
				attack = false
				Trail.Enabled = false 
				Trail2.Enabled = false
				frame = 1
			end
		end
	end,
	--Rakigenki
	["asdt"] = function()
		if not attack  and not guarding and not hurt and hum.Sit == false and not sitting and not waitin then
			keycombo = ""
			attack = true
			hum.WalkSpeed = 0
			hum.JumpPower = 0
			hum.JumpHeight = 0
			local vel = new("BodyVelocity")
			vel.Parent = root
			vel.MaxForce = vect3(math.huge,math.huge,math.huge)
			vel.Velocity = root.CFrame.lookVector * 25
			debris:AddItem(vel,0.375)
			anim = "tyrant"
			frame = 1
			wait(0.1)
			frame = 2
			wait(0.1)
			anim = "matou"
			frame = 1
			wait(0.1)
			frame = 2
			vel:Destroy()
			wait(0.125)
			sound(5835032207,4.5,1,torso,0,false)
			root.CFrame = root.CFrame * cframe(0,0,-4.5)
			magnitudedamage(21,"sphere", 0.125, 12.5, 9089368508, 5, 0.7, root)
			frame = 3
			wait(0.35)
			frame = 4
			wait(0.1)
			frame = 5
			--root.Anchored = false
			hum.WalkSpeed = originalwalkspeed
			hum.JumpPower = originaljumppower
			hum.JumpHeight = originaljumpheight
			attack = false
		end
	end,
	--Despair Wave
	["dsawdt"] = function()
		if not attack  and not guarding and not hurt and hum.Sit == false and not sitting and not waitin then
			keycombo = ""
			attack = true
			hum.WalkSpeed = 0
			hum.JumpPower = 0
			hum.JumpHeight = 0
			anim = "tyrant"
			frame = 1
			super()
			wait(0.1)
			frame = 2
			wait(1.15)
			local BV = new("BodyVelocity", root)
			BV.maxForce = vect3(math.huge,math.huge,math.huge)
			BV.P = 100000
			BV.Velocity = root.CFrame.lookVector * 45
			debris:AddItem(BV,0.1)
			if Player.Name == "ninjakaiden1" then
				chatter("Despair...")
				if voices then
					if voices then
						sound1("saul/yusuke32.wav",2.5,1.05,head,0,false)
					end
				end
			else
				chatter("Take the blade of...")
				if voices then
					if voices then
						sound(695296619,4,1,head,0.175,false,true,0.705)
					end
				end
			end
			local Fire = new("Fire")
			Fire.Parent = rarm
			Fire.Color = color(1, 0.501961, 0)
			Fire.SecondaryColor = color(1, 0, 0)
			Fire.Size = 8
			Fire.Heat = 11
			debris:AddItem(Fire,2.5)
			sound(3518146972,3.5,1.55,rarm,0.375,false)
			magnitudedamage(15,"sphere", 0.155, 10, 9076225494, 7.5, 1, root, false)
			frame = 3
			wait(0.1)
			Fire.Enabled = false
			wait(0.4)
			frame = 4
			wait(0.45)
			local Fire2 = new("Fire")
			Fire2.Parent = larm
			Fire2.Color = color(1, 0.501961, 0)
			Fire2.SecondaryColor = color(1, 0, 0)
			Fire2.Size = 13
			Fire2.Heat = 15
			debris:AddItem(Fire2,2.5)
			sound(3518146972,5,1,larm,0.375,false)
			magnitudedamage(35,"sphere", 0, 13.5, 1058693352, 5, 1, root, true)
			sound(6892640563,5,1,root,0,false)
			coroutine.wrap(function()
				local fist = new("Part")
				fist.Name = "FireFist"
				fist.BrickColor = brickcolor("Neon orange")
				local fistmesh = new("SpecialMesh")
				fist.Parent = script
				fist.Size = vect3(1, 1, 1)
				fist.BottomSurface = Enum.SurfaceType.Smooth
				fist.TopSurface = Enum.SurfaceType.Smooth
				fist.Anchored = true
				fist.CanCollide = false
				fist.Locked = true
				fist.CFrame = root.CFrame
				fistmesh.Parent = fist
				fistmesh.MeshId = "rbxassetid://2686025338"
				fistmesh.Scale = vect3(-5, 5, -5)
				fistmesh.MeshType = Enum.MeshType.FileMesh
				local firering = new("Part")
				sound(5868574236,4,1,firering,0.285,false)
				firering.Name = "Fire Ring"
				local Decal1 = new("Decal")
				local Decal2 = new("Decal")
				firering.Parent = script
				firering.Transparency = 1
				firering.Size = vect3(4.5, 5.2, 1)
				firering.Anchored = true
				firering.CanCollide = false
				firering.Locked = true
				firering.CFrame = root.CFrame
				Decal1.Parent = firering
				Decal1.Texture = "http://www.roblox.com/asset/?id=22570852"
				Decal1.Face = Enum.NormalId.Back
				Decal2.Parent = firering
				Decal2.Texture = "http://www.roblox.com/asset/?id=22570852"
				sound(260131404,4.5,1,firering,0,true)
				local wheel = new("Part")
				local wheelm = new("SpecialMesh")
				local wheelw = new("Weld")
				wheel.Name = "Handle"
				wheel.Parent = firering
				wheel.Size = vect3(0.025,0.025,0.025)
				wheel.BottomSurface = Enum.SurfaceType.Smooth
				wheel.TopSurface = Enum.SurfaceType.Smooth
				wheel.Anchored = false
				wheel.CanCollide = false
				wheel.Locked = true
				wheelm.Parent = wheel
				wheelm.MeshId = "http://www.roblox.com/asset/?id=19251107"
				wheelm.Scale = vect3(1.2, 1.2, 1.2)
				wheelm.VertexColor = vect3(1,0.5,0)
				wheelm.TextureId = "http://www.roblox.com/asset/?id=19251094"
				wheelm.MeshType = Enum.MeshType.FileMesh
				wheelw.Parent = wheel
				wheelw.C0 = cframe(0, 0, 0, 1, 0, 0, 0, -4.37113883e-08, -1, 0, 1, -4.37113883e-08)
				wheelw.Part0 = wheel
				wheelw.Part1 = firering
				local boom = new("Explosion")
				boom.Position = firering.Position
				boom.Parent = workspace 
				boom.BlastRadius = 10 
				boom.BlastPressure = 0 
				sound2(2814354338,4.5,1,firering,0)
				while firering ~= nil do
					if wheel.Transparency >= 1 then
						if firering == nil then
							break
						end
						firering:Destroy()
						wheel:Destroy()
						fist:Destroy()
						firering = nil
					end
					if firering == nil then
						break
					else
						fistmesh.Scale = fistmesh.Scale + vect3(-0.25,0.25,-0.25)
						fist.CFrame = fist.CFrame * cframe(0,0,-0.425)
						firering.CFrame = firering.CFrame * CFrame.fromEulerAnglesXYZ(0,0,0.05)
						firering.Size = firering.Size + vect3(0.85, 0.85, 0)
						firering.CFrame = firering.CFrame * cframe(0,0,-0.425)
						wheelm.Scale = wheelm.Scale + vect3(0.25,0.25,0.25)
						wheel.Transparency = wheel.Transparency + 0.03
						firering.Transparency = firering.Transparency + 0.03
						fist.Transparency = fist.Transparency + 0.03
						Decal1.Transparency = Decal1.Transparency + 0.03
						Decal2.Transparency = Decal2.Transparency + 0.03
					end
					wait(0.005)
				end
			end)()
			if Player.Name == "ninjakaiden1" then
				chatter("Wave!")
				if voices then
					if voices then
						sound1("saul/yusuke33.wav",2.5,1.05,head,0,false)
					end
				end
			else
				chatter("the Dragon!")
				if voices then
					if voices then
						sound(695296619,4,1,head,0.875,false)
					end
				end
			end
			frame = 5
			wait(0.5)
			Fire2.Enabled = false
			frame = 6
			wait(1)
			hum.WalkSpeed = originalwalkspeed
			hum.JumpPower = originaljumppower
			hum.JumpHeight = originaljumpheight
			attack = false
		end
	end,
	--Garien-Odokou
	["sdwt"] = function()
		if not attack  and not guarding and not hurt and hum.Sit == false and not sitting and not waitin then
			keycombo = ""
			attack = true
			hum.WalkSpeed = 0
			hum.JumpPower = 0
			hum.JumpHeight = 0
			anim = "fslash"
			frame = 1
			local vel = new("BodyVelocity")
			vel.Parent = root
			vel.MaxForce = vect3(math.huge,math.huge,math.huge)
			vel.Velocity = root.CFrame.lookVector * 45
			debris:AddItem(vel,0.25)
			wait(0.035)
			frame = 2
			wait(0.035)
			anim = "sidewinder"
			frame = 1
			wait(0.045)
			frame = 2
			local Fire = new("Fire")
			Fire.Parent = rarm
			Fire.Color = color(1, 0.501961, 0)
			Fire.SecondaryColor = color(1, 0, 0)
			Fire.Size = 8
			Fire.Heat = 11
			debris:AddItem(Fire,2.5)
			sound(3518146972,3.5,1.55,rarm,0.375,false)
			local randomsound = random(0,9)
			if Player.Name == "ninjakaiden1" then
				if voices then
					if randomsound <= 2 then
						sound1("saul/yusuke11.wav",3,1.05,head,0,false)
					elseif randomsound >= 7 then
						sound1("saul/yusuke12.wav",3,1.05,head,0,false)
					end
				end
			else
				if voices then
					if randomsound <= 2 then
						sound(8429465299,4,1,head,0,false)
					elseif randomsound >= 7 then
						sound(8429477961,4,1,head,0,false)
					end
				end
			end
			wait(0.06)
			frame = 3
			sound(8011766312,5,1,torso,0,false)
			magnitudedamage(15,"sphere", 0.125, 10, 9089368508, 5, 1, root)
			wait(0.2)
			Fire.Enabled = false
			frame = 4
			wait(0.1)
			frame = 5
			wait(0.1)
			frame = 1
			wait(0.05)
			local vel = new("BodyVelocity")
			vel.Parent = root
			vel.MaxForce = vect3(math.huge,math.huge,math.huge)
			vel.Velocity = root.CFrame.lookVector * 25
			debris:AddItem(vel,0.375)
			anim = "tyrant"
			frame = 1
			wait(0.1)
			frame = 2
			wait(0.1)
			anim = "matou"
			frame = 1
			wait(0.1)
			frame = 2
			vel:Destroy()
			wait(0.125)
			sound(5835032207,4.5,1,torso,0,false)
			root.CFrame = root.CFrame * cframe(0,0,-4.5)
			magnitudedamage(21,"sphere", 0.125, 12.5, 9089368508, 5, 0.7, root)
			frame = 3
			wait(0.35)
			frame = 4
			wait(0.1)
			frame = 5
			hum.WalkSpeed = originalwalkspeed
			hum.JumpPower = originaljumppower
			hum.JumpHeight = originaljumpheight
			attack = false
		end
	end,
	--Oushoni-Matou
	["sdwx"] = function()
		if not attack  and not guarding and not hurt and hum.Sit == false and not sitting and not waitin then
			keycombo = ""
			attack = true
			hum.WalkSpeed = 0
			hum.JumpPower = 0
			hum.JumpHeight = 0
			anim = "gviper"
			frame = 1
			if Player.Name == "ninjakaiden1" then
				chatter("Grand...")
				if voices then
					sound1("saul/yusuke28.wav",3,1.05,head,0,false)
				end
			else
				chatter("Grand...")
				if voices then
					sound(5002748505,3,1.05,head,0,false)
				end
			end
			coroutine.wrap(function()
				wait(0.1)
				frame = 2
				wait(0.1)
				frame = 5
				wait(0.1)
				frame = 6
				wait(0.15)
				anim = "revolver"
				frame = 1
				wait(0.1)
				frame = 2
				wait(0.1)
				frame = 3
				wait(0.1)
				frame = 4
				wait(0.1)
				frame = 5
				wait(0.1)
				frame = 6
				wait(0.1)
				frame = 7
			end)()
			wait(0.15)
			local bv = new("BodyVelocity")
			bv.maxForce = vect3(math.huge,math.huge,math.huge)
			bv.P = 7999
			bv.velocity = root.CFrame.lookVector * 35 + vect3(0,15,0)
			bv.Parent = root
			magnitudedamage(12,"sphere", 0.125, 7.15, 9089368508, 6.5, 1, root,true,"grand1")
			wait(0.5)
			bv.velocity = root.CFrame.lookVector * 35 + vect3(0,-12.5,0)
			magnitudedamage(10.5,"sphere", 0.125, 9.25, 9089368508, 6.5, 0.7, root,true,"grand2")
			wait(0.75)
			bv:Destroy()
			hum.WalkSpeed = 0
			hum.JumpPower = 0
			hum.JumpHeight = 0
			anim = "blazingrun"
			frame = 5
			coroutine.wrap(function()
				wait(0.1)
				anim = "betarevolver"
				frame = 1
				magnitudedamage(12,"sphere", 0.125, 7.5, 9089368508, 6.5, 1, root,true,"grand")
				wait(0.25)
				frame = 2
				magnitudedamage(12,"sphere", 0.125, 7.5, 9089368508, 6.5, 1, root,true,"grand")
				wait(0.15)
				frame = 3
				magnitudedamage(12,"sphere", 0.125, 7.5, 9089368508, 6.5, 1, root,true,"grand")
				wait(0.15)
				magnitudedamage(12,"sphere", 0.125, 7.5, 9089368508, 6.5, 1, root,true,"grand")
				frame = 4
			end)()
			wait(0.15)
			local bv = new("BodyVelocity")
			bv.maxForce = vect3(math.huge,math.huge,math.huge)
			bv.P = 7999
			bv.velocity = root.CFrame.lookVector * 35 + vect3(0,12.5,0)
			bv.Parent = root
			wait(.465)
			if Player.Name == "ninjakaiden1" then
				chatter("Revolver!")
				if voices then
					sound1("saul/yusuke29.wav",3,1.05,head,0,false)
				end
			else
				chatter("Revolver!")
				if voices then
					sound(4323235687,4,1,head,0,false)
				end
			end
			bv.velocity = root.CFrame.lookVector * 35 + vect3(0,-15,0)
			wait(0.5)
			bv:Destroy()
			hum.WalkSpeed = originalwalkspeed
			hum.JumpPower = originaljumppower
			hum.JumpHeight = originaljumpheight
			attack = false
		end
	end,
	--Despair Wave ver. Beta
	["sasdc"] = function()
		if not attack  and not guarding and not hurt and hum.Sit == false and not sitting and not waitin then
			keycombo = ""
			attack = true
			hum.WalkSpeed = 0
			hum.JumpPower = 0
			hum.JumpHeight = 0
			local mul = 1
			anim = "sidewinder"
			frame = 1
			super()
			wait(0.15)
			frame = 2
			wait(1)
			anim = "gunflame"
			frame = 3
			wait(0.06)
			frame = 4
			wait(0.045)
			anim = "whirlpool"
			frame = 1
			if Player.Name == "ninjakaiden1" then
				chatter("Despair Wave!")
				if voices then
					if voices then
						sound1("saul/yusuke35.wav",2.5,1.05,head,0,false)
					end
				end
			else
				chatter("Take the Dragon's Blade!")
				if voices then
					if voices then
						sound(695296619,4,1,head,0.175,false)
					end
				end
			end
			wait(0.075)
			frame = 2
			sound(6892640563,5,1,root,0,false)
			local effect = new("Part")
			effect.Name = "Fire Ring"
			effect.Parent = script
			effect.Shape = "Ball"
			effect.Material = "Neon"
			effect.Transparency = 0.75
			effect.Anchored = true
			effect.CastShadow = false
			effect.CanCollide = false
			effect.Color = color(1, 0.501961, 0)
			effect.Size = vect3(1,1,1)
			effect.CFrame = root.CFrame * cframe(0,0,-1)
			local tween = tweens:Create(effect,TweenInfo.new(0.5,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{CFrame = effect.CFrame * CFrame.Angles(0,math.rad(180),0),Size = vect3(12.5,12.5,12.5),Transparency = 1})
			tween:Play()
			debris:AddItem(effect,2)
			coroutine.wrap(function()
				local firering = new("Part")
				sound(5868574236,4,1,firering,0.285,false)
				firering.Name = "Fire Ring"
				local Decal1 = new("Decal")
				local Decal2 = new("Decal")
				firering.Parent = script
				firering.Transparency = 1
				firering.Size = vect3(4.5, 5.2, 1)
				firering.Anchored = true
				firering.CanCollide = false
				firering.Locked = true
				firering.CFrame = root.CFrame
				Decal1.Parent = firering
				Decal1.Texture = "http://www.roblox.com/asset/?id=22570852"
				Decal1.Face = Enum.NormalId.Back
				Decal2.Parent = firering
				Decal2.Texture = "http://www.roblox.com/asset/?id=22570852"
				sound(260131404,4.5,1,firering,0,true)
				local wheel = new("Part")
				local wheelm = new("SpecialMesh")
				local wheelw = new("Weld")
				wheel.Name = "Handle"
				wheel.Parent = firering
				wheel.Size = vect3(0.025,0.025,0.025)
				wheel.BottomSurface = Enum.SurfaceType.Smooth
				wheel.TopSurface = Enum.SurfaceType.Smooth
				wheel.Anchored = false
				wheel.CanCollide = false
				wheel.Locked = true
				wheelm.Parent = wheel
				wheelm.MeshId = "http://www.roblox.com/asset/?id=19251107"
				wheelm.Scale = vect3(1.2, 1.2, 1.2)
				wheelm.VertexColor = vect3(1,0.5,0)
				wheelm.TextureId = "http://www.roblox.com/asset/?id=19251094"
				wheelm.MeshType = Enum.MeshType.FileMesh
				wheelw.Parent = wheel
				wheelw.C0 = cframe(0, 0, 0, 1, 0, 0, 0, -4.37113883e-08, -1, 0, 1, -4.37113883e-08)
				wheelw.Part0 = wheel
				wheelw.Part1 = firering
				local boom = new("Explosion")
				boom.Position = firering.Position
				boom.Parent = workspace 
				boom.BlastRadius = 10 
				boom.BlastPressure = 0 
				sound2(2814354338,4.5,1,firering,0)
				while firering ~= nil do
					mul = mul + 0.15
					if wheel.Transparency >= 1 then
						if firering == nil then
							break
						end
						firering:Destroy()
						wheel:Destroy()
						firering = nil
					end
					if firering == nil then
						break
					else
						firering.CFrame = firering.CFrame * CFrame.fromEulerAnglesXYZ(0,0,0.05)
						magnitudedamage(7.5,"sphere", 0.125, 5*mul, 9089368508, 10, 1, firering, true)
						firering.Size = firering.Size + vect3(0.85, 0.85, 0)
						firering.CFrame = firering.CFrame * cframe(0,0,-2)
						wheelm.Scale = wheelm.Scale + vect3(0.25,0.25,0.25)
						wheel.Transparency = wheel.Transparency + 0.025
						firering.Transparency = firering.Transparency + 0.025
						Decal1.Transparency = Decal1.Transparency + 0.025
						Decal2.Transparency = Decal2.Transparency + 0.025
					end
					wait(0.005)
				end
			end)()
			wait(1.5)
			frame = 3
			wait(0.125)
			hum.WalkSpeed = originalwalkspeed
			hum.JumpPower = originaljumppower
			hum.JumpHeight = originaljumpheight
			attack = false
		end
	end,
	--Thankful Death (finally decided to name this move after a Jojo Stand)
	["asdasdv"] = function()
		if not attack  and not guarding and not hurt and hum.Sit == false and not sitting and not waitin then
			keycombo = ""
			attack = true
			hum.WalkSpeed = 0
			hum.JumpPower = 0
			hum.JumpHeight = 0
			local flamesound = nil
			local aura = nil
			anim = "deathknee"
			frame = 1
			super()
			wait(0.1)
			frame = 2
			if Player.Name == "ninjakaiden1" then
				local fire = new("Fire")
				fire.Parent = torso
				fire.Size = 15
				fire.Heat = 25
				fire.Color = color(1, 0.333333, 0)
				fire.SecondaryColor = color(1, 0.666667, 0)
				aura = fire
				local boom = new("Explosion")
				boom.Position = torso.Position
				boom.Parent = workspace 
				boom.BlastRadius = 10 
				boom.BlastPressure = 0 
				sound2(2814354338,4.5,1,torso,0)
				local firesound = new("Sound")
				firesound.SoundId = "rbxassetid://443980606"
				firesound.Volume = 4
				firesound.Looped = true
				firesound.Parent = torso
				firesound:Play()
				flamesound = firesound
				chatter("Thankful Death!")
				if voices then
					if voices then
						sound1("saul/yusuke37.wav",2.5,1.05,head,0,false)
					end
				end
			else
				local fire = new("Fire")
				fire.Parent = torso
				fire.Size = 15
				fire.Heat = 25
				fire.Color = color(1, 1, 1)
				fire.SecondaryColor = color(0.666667, 0.666667, 0.666667)
				aura = fire
				local firesound = new("Sound")
				firesound.SoundId = "rbxassetid://167123203"
				firesound.Volume = 4
				firesound.Looped = true
				firesound.Parent = torso
				firesound:Play()
				flamesound = firesound
				chatter("Heavenly Wind!")
				if voices then
					if voices then
						sound(1148224536,10,1,head,0,false)
					end
				end
			end
			wait(0.25)
			frame = 3
			wait(0.1)
			frame = 4
			wait(0.5)
			frame = 5
			wait(0.1)
			coroutine.wrap(function()
				local jumpring = new("Part")
				local ringm = new("SpecialMesh")
				local jumpwave = new("Part")
				local wavem = new("SpecialMesh")
				local jweld = new("Weld")
				jumpring.Name = "JumpRing"
				jumpring.Parent = script
				jumpring.Color = color(1, 0, 0)
				jumpring.Size = vect3(1, 1, 1)
				jumpring.Anchored = true
				jumpring.Locked = true
				jumpring.BottomSurface = Enum.SurfaceType.Smooth
				jumpring.BrickColor = brickcolor("Neon orange")
				jumpring.CanCollide = false
				jumpring.TopSurface = Enum.SurfaceType.Smooth
				jumpring.CFrame = root.CFrame * cframe(0,-1.5,0) * angles(rad(-90),0,0)
				ringm.Parent = jumpring
				ringm.MeshId = "http://www.roblox.com/asset/?id=3270017"
				ringm.Scale = vect3(3, 2.92, 1)
				ringm.MeshType = Enum.MeshType.FileMesh
				jumpwave.Name = "JumpWave"
				jumpwave.Parent = jumpring
				jumpwave.Locked = true
				jumpwave.CanCollide = false
				jumpwave.Size = vect3(1, 1, 1)
				jumpwave.FormFactor = Enum.FormFactor.Custom
				jumpwave.formFactor = Enum.FormFactor.Custom
				wavem.Parent = jumpwave
				wavem.MeshId = "http://www.roblox.com/asset/?id=92588061"
				wavem.Offset = vect3(0, 0, -0.25)
				wavem.Scale = vect3(3, 0.5, 3)
				wavem.TextureId = "http://www.roblox.com/asset/?id=40302087"
				wavem.MeshType = Enum.MeshType.FileMesh
				jweld.Parent = jumpwave
				jweld.C0 = cframe(0, -0.5, 0, 1, 0, 0, 0, -4.37113883e-08, 1, 0, -1, -4.37113883e-08)
				jweld.Part0 = jumpwave
				jweld.Part1 = jumpring
				sound(940938624,4.5,1,torso,0.075,false)
				sound(169445602,5,0.75,torso,0,false)
				sound2(6892631834,6,1,root,0)
				local Part2 = new("Part")
				local SpecialMesh3 = new("SpecialMesh")
				local Part4 = new("Part")
				local SpecialMesh5 = new("SpecialMesh")
				local SpecialMesh7 = new("SpecialMesh")
				Part2.Name = "Part2"
				Part2.Parent = script
				Part2.Transparency = 0.25
				Part2.Size = vect3(2.5, 5, 2.5)
				Part2.Anchored = true
				Part2.BottomSurface = Enum.SurfaceType.Smooth
				Part2.BrickColor = brickcolor("Bright orange")
				Part2.CanCollide = false
				Part2.TopSurface = Enum.SurfaceType.Smooth
				SpecialMesh3.Parent = Part2
				SpecialMesh3.MeshType = Enum.MeshType.Sphere
				Part4.Name = "Part3"
				Part4.Parent = script
				Part4.Transparency = 0.05
				Part4.Size = vect3(2, 2.5, 2)
				Part4.Anchored = true
				Part4.BottomSurface = Enum.SurfaceType.Smooth
				Part4.BrickColor = brickcolor("Neon orange")
				Part4.CanCollide = false
				Part4.TopSurface = Enum.SurfaceType.Smooth
				SpecialMesh5.Parent = Part4
				SpecialMesh5.MeshType = Enum.MeshType.Sphere
				Part2.Material = "Neon"
				Part4.Material = "Neon"
				Part2.CFrame = root.CFrame * angles(15,0,0)
				Part4.CFrame = root.CFrame * angles(15,0,0)
				local tween = tweens:Create(Part2,TweenInfo.new(1,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{CFrame = Part2.CFrame * CFrame.Angles(0,math.rad(180),0),Size = vect3(15,120,15),Transparency = 1})
				tween:Play()
				local tween2 = tweens:Create(Part4,TweenInfo.new(1,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{CFrame = Part2.CFrame * CFrame.Angles(0,math.rad(180),0),Size = vect3(10,90,10),Transparency = 1})
				tween2:Play()
				tween.Completed:Connect(function() Part2:Destroy()end)
				tween2.Completed:Connect(function() Part4:Destroy() end)
				while jumpring ~= nil do
					if jumpring.Transparency >= 1 then
						if jumpring == nil then
							break
						end
						aura.Enabled = false
						flamesound:Destroy()
						jumpring:Destroy()
						jumpwave:Destroy()
						jumpring = nil
					end
					if jumpring == nil then
						break
					else
						jumpring.CFrame = jumpring.CFrame * CFrame.fromEulerAnglesXYZ(0,0,0.3)
						ringm.Scale = ringm.Scale + vect3(0.45, 0.45, 0.45)
						wavem.Scale = wavem.Scale + vect3(0.65,0.1,0.65)
						wavem.Offset = wavem.Offset + vect3(0,0.1,0)
						wait()
						jumpring.Transparency = jumpring.Transparency + 0.035
						jumpwave.Transparency = jumpwave.Transparency + 0.035
					end
				end
			end)()
			frame = 6
			local BV = new("BodyVelocity", root)
			BV.maxForce = vect3(math.huge,math.huge,math.huge)
			BV.P = 100000
			BV.Velocity = root.CFrame.LookVector * 75 + root.CFrame.upVector * 90
			debris:AddItem(BV,0.1)
			magnitudedamage(0, "none", 0, 7.5, 6925534377, 0, 1, root, true)
			wait(1)
			frame = 7
			wait(0.1)
			if aura ~= nil then
				debris:AddItem(aura,2.5)
			end
			hum.WalkSpeed = originalwalkspeed
			hum.JumpPower = originaljumppower
			hum.JumpHeight = originaljumpheight
			attack = false
		end
	end,
	--Daigoro Install 	
	["dsadsaz"] = function()
		if not attack  and not guarding and not hurt and hum.Sit == false and not sitting and not waitin then
			if overdrive then return end
			keycombo = ""
			attack = true
			hum.WalkSpeed = 0
			hum.JumpPower = 0
			hum.JumpHeight = 0
			anim = "install"
			frame = 1
			super()
			wait(0.45)
			frame = 2
			wait(0.15)
			frame = 3
			wait(0.15)
			frame = 4
			if Player.Name == "ninjakaiden1" then
				chatter("Daigoro Install!")
				if voices then
					if voices then
						sound1("saul/yusuke34.wav",2.5,1.05,head,0,false)
					end
				end
			else
				chatter("*Ronald McDonald laugh*")
				if voices then
					if voices then
						sound(17619413611,4,1,head,0,false)
					end
				end
			end
			wait(1.25)
			coroutine.wrap(function()
				local sphere = new("Part")
				sphere.Parent = script
				sphere.Name = "HitSphere"
				sphere.Shape = "Ball"
				sphere.Size = vect3(1,1,1)
				sphere.Transparency = 0.5
				sphere.BrickColor = brickcolor("Really red")
				sphere.Material = "Neon"
				sphere.CanCollide = false
				sphere.Anchored = true
				sphere.CFrame = root.CFrame
				local tween = tweens:Create(sphere, TweenInfo.new(0.25), {Size = vect3(45,45,45), Transparency = 1})
				tween:Play()
				debris:AddItem(sphere,1.5)
				local highlight = new("Highlight")
				highlight.Parent = char
				highlight.Name = "DaigoroHighlight"
				highlight.OutlineTransparency = 1
				highlight.FillTransparency = 1
				highlight.FillColor = color(0.701961, 0.235294, 0)
				highlight.OutlineColor = color(1, 0, 0)
				local tween = tweens:Create(highlight, TweenInfo.new(0.45), {FillTransparency = 0.3})
				tween:Play()
				local tween2 = tweens:Create(highlight, TweenInfo.new(0.45), {OutlineTransparency = 0})
				tween2:Play()
				if game.PlaceId == 11510416200 or game.PlaceId == 126783576555525 or game.PlaceId == 89201052571047 or game.PlaceId == 79868761121 then
					if Player.Name == "ninjakaiden1" then
						sound(105094738430794,7.5,1.05,torso,279,false,true,2.45)
					else
						sound(138164068642453,1.5,1,torso,0,false)
					end
				else
					sound(98333808,4.5,1,torso,0,false)
				end
				local auraSFX = new("Sound")
				auraSFX.SoundId = "rbxassetid://262498439"
				auraSFX.Volume = 4.5
				auraSFX.Looped = true
				auraSFX.Parent = torso
				auraSFX:Play()
				local aura = new("ParticleEmitter")
				local aura0 = new("ParticleEmitter")
				local aura1 = new("ParticleEmitter")
				local aura2 = new("ParticleEmitter")
				aura.Name = "DaigoroAura"
				aura0.Name = "DaigoroAura"
				aura1.Name = "DaigoroAura"
				aura2.Name = "DaigoroAura"
				aura.LockedToPart = true
				aura0.LockedToPart = true
				aura1.LockedToPart = true
				aura2.LockedToPart = true
				aura.Parent = torso
				aura.Speed = NumberRange.new(10, 10)
				aura.Color = ColorSequence.new(color(1, 0.333333, 0),color(1, 0.333333, 0))
				aura.LightEmission = 0.6000000238418579
				aura.Texture = "rbxassetid://347730682"
				aura.Transparency = NumberSequence.new(0.6000000238418579,0.6000000238418579)
				aura.Size = NumberSequence.new(4,4)
				aura.Lifetime = NumberRange.new(0.30000001192092896, 0.30000001192092896)
				aura.Rate = 50
				aura0.Parent = torso
				aura0.Speed = NumberRange.new(10, 10)
				aura0.Color = ColorSequence.new(color(1, 0.666667, 0),color(1, 0.666667, 0))
				aura0.LightEmission = 0.6000000238418579
				aura0.Texture = "rbxassetid://347730682"
				aura0.Transparency = NumberSequence.new(0.699999988079071,0.699999988079071)
				aura0.Size = NumberSequence.new(6,6)
				aura0.Lifetime = NumberRange.new(0.30000001192092896, 0.30000001192092896)
				aura0.Rate = 50
				aura1.Parent = torso
				aura1.Speed = NumberRange.new(10, 10)
				aura1.Color = ColorSequence.new(color(1, 0.666667, 0),color(1, 0.666667, 0))
				aura1.LightEmission = 0.6000000238418579
				aura1.Texture = "rbxassetid://1482924828"
				aura1.Transparency = NumberSequence.new(0.699999988079071,0.699999988079071)
				aura1.Size = NumberSequence.new(4,4)
				aura1.Lifetime = NumberRange.new(0.30000001192092896, 0.30000001192092896)
				aura1.Rate = 50
				aura2.Parent = torso
				aura2.Speed = NumberRange.new(10, 10)
				aura2.Color = ColorSequence.new(color(1, 0.333333, 0),color(1, 0.333333, 0))
				aura2.LightEmission = 1
				aura2.Texture = "rbxassetid://347730682"
				aura2.Transparency = NumberSequence.new(0.30000001192092896,0.30000001192092896,1)
				aura2.Size = NumberSequence.new(4.5,6,3)
				aura2.Lifetime = NumberRange.new(0.550000011920929, 0.550000011920929)
				aura2.LockedToPart = true
				aura2.Rate = 5
				overdrive = true
				dmult = 2.5
				wait(20)
				aura.Enabled = false
				aura0.Enabled = false
				aura1.Enabled = false
				aura2.Enabled = false
				overdrive = false
				dmult = 1
				local tween = tweens:Create(highlight, TweenInfo.new(0.45), {FillTransparency = 1})
				tween:Play()
				local tween2 = tweens:Create(highlight, TweenInfo.new(0.45), {OutlineTransparency = 1})
				tween2:Play()
				auraSFX:Destroy()
				debris:AddItem(highlight,2.5)
				debris:AddItem(aura,2.5)
				debris:AddItem(aura0,2.5)
				debris:AddItem(aura1,2.5)
				debris:AddItem(aura2,2.5)
			end)()
			frame = 5
			wait(0.045)
			frame = 4
			wait(0.045)
			frame = 5
			wait(0.045)
			frame = 4
			wait(0.045)
			frame = 5
			wait(0.045)
			frame = 4
			wait(0.045)
			frame = 5
			wait(0.045)
			frame = 4
			wait(0.045)
			frame = 5
			wait(0.045)
			frame = 4
			wait(0.045)
			frame = 5
			wait(0.045)
			frame = 4
			wait(0.045)
			frame = 5
			wait(0.045)
			frame = 4
			wait(0.075)
			frame = 6
			wait(0.15)
			hum.WalkSpeed = originalwalkspeed
			hum.JumpPower = originaljumppower
			hum.JumpHeight = originaljumpheight
			attack = false
		end
	end,
	--Aisen-no-Gotoru
	["adadwv"] = function()
		if not attack  and not guarding and not hurt and hum.Sit == false and not sitting and not waitin then
			keycombo = ""
			attack = true
			hum.WalkSpeed = 0
			hum.JumpPower = 0
			hum.JumpHeight = 0
			local enemies = {}
			local hasenemy = false
			anim = "blazingrun"
			frame = 1
			super()
			wait(0.1)
			frame = 2
			wait(1)
			local BV1 = new("BodyVelocity", root)
			BV1.maxForce = vect3(math.huge,math.huge,math.huge)
			BV1.P = 100000
			BV1.Velocity = root.CFrame.LookVector * 75
			frame = 3
			sound(18950367823,4.5,0.65,torso,0,false)
			wait(0.1)
			BV1:Destroy()
			frame = 4
			sound(1598682218,5,1,torso,0,false)
			local BV = new("BodyVelocity", root)
			BV.maxForce = vect3(math.huge,math.huge,math.huge)
			BV.P = 100000
			BV.Velocity = root.CFrame.LookVector * 150
			local Part = new("Part",script)
			Part.Name = "HitboxThing"
			Part.Transparency = 1
			Part.Size = vect3(5, 7.5, 4.5)
			Part.CanCollide = false
			local Weld = new("Weld",Part)
			Weld.Part0 = root
			Weld.Part1 = Part
			Weld.C0 = Weld.C0 * cframe(0,0,-1.5)
			Part.Touched:Connect(function(persona)
				if persona:IsA("BasePart") or persona:IsA("MeshPart") then
					if persona.Parent ~= nil and not persona.Parent:IsDescendantOf(char) then
						if persona.Parent:FindFirstChildOfClass("Humanoid") and persona.Parent ~= char then
							local humi = persona.Parent:FindFirstChildOfClass("Humanoid")
							local torsou = persona.Parent:FindFirstChild("Torso") or persona.Parent:FindFirstChild("UpperTorso")
							if torsou then
								if persona.Parent:FindFirstChild("AffectedByHikoDeathFlame") then return end
								new("BoolValue",persona.Parent).Name = "AffectedByHikoDeathFlame"
								hasenemy = true
								table.insert(enemies, persona.Parent)
							end
						end
					end	
				end
			end)
			wait(1.25)
			Part:Destroy()
			BV:Destroy()
			if hasenemy then
				local BVE = new("BodyVelocity", root)
				BVE.maxForce = vect3(math.huge,math.huge,math.huge)
				BVE.P = 100000
				BVE.Velocity = root.CFrame.LookVector * 75				
				frame = 4
				wait(0.1)
				BVE.Velocity = root.CFrame.LookVector * 50
				frame = 5
				wait(0.1)
				BVE.Velocity = root.CFrame.LookVector * 25
				frame = 6
				wait(0.15)
				BVE:Destroy()
				local randomquote = random(0,2)
				if randomquote == 0 then
					if Player.Name == "ninjakaiden1" then
						chatter("*speaking japanese*")
						if voices then
							sound1("saul2/saul_1-15.wav",2.5,1.1,head,0,false)
						end
					else
						chatter("FIRE IN THE HOLE!")
						if voices then
							sound(484018733,3.5,1,head,0.225,false)
						end
					end
				elseif randomquote == 1 then
					if Player.Name == "ninjakaiden1" then
						chatter("*japanese gibberish*")
						if voices then
							sound1("saul2/SAUL_1-34.WAV",2.5,1.05,head,0,false)
						end
					else
						chatter("This is it!")
						if voices then
							sound(1690475123,3.5,1,head,0.075,false)
						end
					end
				else
					if Player.Name == "ninjakaiden1" then
						chatter("*japanese talk*")
						if voices then
							sound1("saul2/SAUL_1-68.WAV",2.5,1.05,head,0,false)
						end
					else
						chatter("Here's a schematic for ya!")
						if voices then
							sound(2895010885,3.25,1,head,0,false,true,1.25)
						end
					end
				end
				wait(1)
				for i = 1, #enemies do
					coroutine.resume(coroutine.create(function()
						local ehum = enemies[i]:FindFirstChildOfClass("Humanoid")
						local etorso = enemies[i]:FindFirstChild("Torso") or enemies[i]:FindFirstChild("UpperTorso") or enemies[i]:FindFirstChild("HumanoidRootPart")
						local ehead = enemies[i]:FindFirstChild("Head")
						etorso.Anchored = true
						for i = 1,45 do
							local randomhit = random(0,3)
							if randomhit == 0 then
								damage(ehum, 0, 9089368508, 6.5, 1, etorso, 0.125, "sphere")
							elseif randomhit == 1 then
								damage(ehum, 0, 175024455, 6.5, 1, etorso, 0, "sphere")
							elseif randomhit == 2 then
								damage(ehum, 0, 386946017, 6.5, 1, etorso, 0, "sphere")
							else
								damage(ehum, 0, 507150998, 6.5, 1, etorso, 0, "sphere")
							end
							etorso.CFrame = etorso.CFrame * cframe(random(-1,1),random(-1,1),random(-1,1))
							wait(0.01)
						end
						if enemies[i]:FindFirstChild("AffectedByHikoDeathFlame") then
							enemies[i]:FindFirstChild("AffectedByHikoDeathFlame"):Destroy()
						end
						etorso.Anchored = false
						local boom = new("Explosion")
						boom.Position = etorso.Position
						boom.Parent = workspace 
						boom.BlastRadius = 10 
						boom.BlastPressure = 0 
						sound2(2814354338,4.5,1,etorso,0)
						if Player.Name == "ninjakaiden1" then
							--Instant Kill (only if I'm using the weapon)
							etorso.Velocity = root.CFrame.lookVector*50 + root.CFrame.upVector*450
							if not enemies[i]:FindFirstChild("CSDeathByHiko") then
								new("BoolValue",enemies[i]).Name = "CSDeathByHiko"
								local scream = random(0,20)
								local fire = new("Fire")
								fire.Parent = etorso
								fire.Size = 10
								fire.Heat = 25
								local firesound = new("Sound")
								firesound.SoundId = "rbxassetid://303632290"
								firesound.Volume = 5
								firesound.Looped = true
								firesound.Parent = etorso
								firesound:Play()
								sound(8659358224,7.5,1,ehead,0,false)
								ragdoll(enemies[i])
								hiteffect("blood",etorso)
								sound(5951833277, 4.5, 1, etorso, 0,false)
								ehum.BreakJointsOnDeath = false
								for i,v in pairs(enemies[i]:GetDescendants()) do
									if v:IsA("BasePart") then
										v.CanCollide = true
									end
								end
								if scream == 1 then
									sound(2898498516,4.5,1,ehead,0,false)
								elseif scream == 2 then
									sound(4602905960,4.5,1,ehead,0.155,false)
								elseif scream == 3 then
									sound(566988981,4.5,1,ehead,0,false)
								elseif scream == 4 then
									sound(887549084,4.5,1,ehead,0,false)
								elseif scream == 5 then
									sound(884348443,4.5,1,ehead,0,false)
								elseif scream == 6 then
									sound(884348070,4.5,1,ehead,0,false)
								elseif scream == 7 then
									sound(2898498606,4.5,1,ehead,0,false)
								elseif scream == 8 then
									sound(6108565657,4.5,1,ehead,0,false)
								elseif scream == 9 then
									sound(6108540937,4.5,1,ehead,0,false)
								elseif scream == 10 then
									sound(6108566293,4.5,1,ehead,0,false)
								elseif scream == 11 then
									sound(5986548269,4.5,1,ehead,0,false)
								elseif scream == 12 then
									sound(8399859908,7.5,1,ehead,0,false)
								elseif scream == 13 then
									sound(5538532722,4.5,1,ehead,0,false)
								elseif scream == 14 then
									sound(5538517651,4.5,1,ehead,0,false)
								elseif scream == 15 then
									sound(5965159676,5.5,1,ehead,0,false)
								elseif scream == 16 then
									sound(8327314343,4.5,1,ehead,0,false)
								elseif scream == 17 then
									sound(481775819,4.5,1,ehead,0,false)
								elseif scream == 18 then
									sound(6472521644,4.5,1,ehead,0,false)
								elseif scream == 19 then
									sound(6006696349,4.5,1,ehead,0,false)
								else
									sound(1354972481,4.5,1,ehead,0,false)
								end					
								ehum:TakeDamage(math.huge)
								ehum:TakeDamage(math.huge)
								ehum.Health = 0
								ehum:SetStateEnabled(Enum.HumanoidStateType.Dead, true)
								ehum:ChangeState(Enum.HumanoidStateType.Dead)
								if ehum.Health >= ehum.MaxHealth then -- check if enemy doesn't die
									enemies[i]:BreakJoints()
								end
							end
						else
							damage(ehum, 450, 1058693352, 6.5, 0.7, etorso, 0, "sphere")
							ehum.PlatformStand = true
							coroutine.wrap(function()
								wait(10)
								ehum.PlatformStand = false
							end)()
							local BV = new("BodyVelocity", etorso)
							BV.maxForce = vect3(math.huge,math.huge,math.huge)
							BV.P = 100000
							BV.Velocity = root.CFrame.LookVector * 50 + root.CFrame.upVector * 250
							debris:AddItem(BV,0.1)
							local boom = new("Explosion")
							boom.Position = etorso.Position
							boom.Parent = workspace 
							boom.BlastRadius = 10 
							boom.BlastPressure = 0 
							sound2(2814354338,4.5,1,etorso,0)
							hiteffect("fire", etorso)
						end
					end))
				end
				wait(1.5)
			else
				local BV = new("BodyVelocity", root)
				BV.maxForce = vect3(math.huge,math.huge,math.huge)
				BV.P = 100000
				BV.Velocity = root.CFrame.LookVector * 75
				frame = 5
				wait(0.35)
				BV:Destroy()
			end
			hum.WalkSpeed = originalwalkspeed
			hum.JumpPower = originaljumppower
			hum.JumpHeight = originaljumpheight
			attack = false
		end
	end,
	--dust
	["t"] = function()
		if not attack  and not guarding and not hurt and hum.Sit == false and not sitting and not waitin then
			keycombo = ""
			local damagearea = function(dmg,dtype)
				local hashit = false
				if dtype == "range" then
					for index, persona in pairs(workspace:GetDescendants()) do
						if persona:FindFirstChildOfClass("Humanoid") and persona ~= char then
							local humi = persona:FindFirstChildOfClass("Humanoid")
							local torsou = persona:FindFirstChild("Torso") or persona:FindFirstChild("UpperTorso") or persona:FindFirstChild("HumanoidRootPart")
							if torsou then
								if (torsou.Position - root.CFrame*cframe(0,0,-1.5).p).Magnitude <= 7.5 then
									hashit = true
									damage(humi, 14, 9089368508, 6.5, 0.7, torsou, 0.125, "sphere")
									local vel = new("BodyVelocity")
									vel.Parent = torsou
									vel.MaxForce = vect3(math.huge,math.huge,math.huge)
									if anim == "ddust" then
										vel.Velocity = root.CFrame.lookVector * 6.5
									else
										vel.Velocity = root.CFrame.lookVector * 15
									end
									debris:AddItem(vel,0.5)
								end
							end
						end
					end
				elseif dtype == "part" then
					local Part = new("Part",script)
					Part.Name = "HitboxThing"
					Part.Transparency = 1
					Part.Size = vect3(3.75, 4.75, 5)
					Part.CanCollide = false
					debris:AddItem(Part,0.2)
					local Weld = new("Weld",Part)
					Weld.Part0 = root
					Weld.Part1 = Part
					Weld.C0 = Weld.C0 * cframe(0,0,-3.25)
					Part.Touched:Connect(function(persona)
						if persona:IsA("BasePart") or persona:IsA("MeshPart") then
							if persona.Parent ~= nil and not persona.Parent:IsDescendantOf(char) then
								if persona.Parent:FindFirstChildOfClass("Humanoid") and persona.Parent ~= char and hashit == false then
									local humi = persona.Parent:FindFirstChildOfClass("Humanoid")
									local torsou = persona.Parent:FindFirstChild("Torso") or persona.Parent:FindFirstChild("UpperTorso") or persona.Parent:FindFirstChild("HumanoidRootPart")
									if torsou then
										hashit = true
										damage(humi, dmg, 9089368508, 6.5, 1, torsou, 0.125, "sphere")
										local vel = new("BodyVelocity")
										vel.Parent = torsou
										vel.MaxForce = vect3(math.huge,math.huge,math.huge)
										vel.Velocity = root.CFrame.lookVector * 7.5
										debris:AddItem(vel,0.5)
									end
								end
							end	
						end
					end)
				end
			end
			if not inair then
				if not ducking then
					attack = true
					hum.WalkSpeed = 0
					hum.JumpPower = 0
					hum.JumpHeight = 0
					anim = "dust"
					frame = 1
					wait(0.45)
					local randomsound = random(0,9)
					if Player.Name == "ninjakaiden1" then
						if voices then
							if randomsound <= 2 then
								sound1("saul/yusuke10.wav",3,1.05,head,0,false)
							elseif randomsound >= 7 then
								sound1("saul/yusuke11.wav",3,1.05,head,0,false)
							end
						end
					else
						if voices then
							if randomsound <= 2 then
								sound(8429464088,4,1,head,0,false)
							elseif randomsound >= 7 then
								sound(8429465299,4,1,head,0,false)
							end
						end
					end
					sound(7122602098, 3, 1, torso, 0, false)
					frame = 2
					damagearea(13,"range")
					wait(0.35)
					frame = 3
					wait(0.1)
					hum.WalkSpeed = originalwalkspeed
					hum.JumpPower = originaljumppower
					hum.JumpHeight = originaljumpheight
					attack = false	
				else
					attack = true
					hum.WalkSpeed = 0
					hum.JumpPower = 0
					hum.JumpHeight = 0
					root.Anchored = true
					anim = "ddust"
					frame = 1
					wait(0.1)
					local randomsound = random(0,9)
					if Player.Name == "ninjakaiden1" then
						if voices then
							if randomsound <= 2 then
								sound1("saul/yusuke11.wav",3,1.05,head,0,false)
							elseif randomsound >= 7 then
								sound1("saul/yusuke12.wav",3,1.05,head,0,false)
							end
						end
					else
						if voices then
							if randomsound <= 2 then
								sound(8429465299,4,1,head,0,false)
							elseif randomsound >= 7 then
								sound(8429477961,4,1,head,0,false)
							end
						end
					end
					sound(7122602098, 3, 1, torso, 0, false)
					frame = 2
					damagearea(13,"range")
					wait(0.175)
					frame = 3
					wait(0.125)
					frame = 1
					wait(0.025)
					hum.WalkSpeed = originalwalkspeed
					hum.JumpPower = originaljumppower
					hum.JumpHeight = originaljumpheight
					root.Anchored = false
					attack = false	
				end
			else
				attack = true
				anim = "adust"
				frame = 1
				wait(0.05)
				frame = 2
				wait(0.05)
				local randomsound = random(0,9)
				if Player.Name == "ninjakaiden1" then
					if voices then
						if randomsound <= 2 then
							sound1("saul/yusuke11.wav",3,1.05,head,0,false)
						elseif randomsound >= 7 then
							sound1("saul/yusuke12.wav",3,1.05,head,0,false)
						end
					end
				else
					if voices then
						if randomsound <= 2 then
							sound(8429465299,4,1,head,0,false)
						elseif randomsound >= 7 then
							sound(8429477961,4,1,head,0,false)
						end
					end
				end
				sound(7122602098, 3, 1, torso, 0, false)
				frame = 3
				damagearea(13,"part")
				wait(0.2)
				frame = 4
				attack = false	
			end
		end
	end
}


--key stuff
mouse.KeyDown:connect(function(key)
	keycombotime = tick()
	if key == "q" and not ducking and hum.Sit == false and not sitting and not waitin then
		hum.WalkSpeed = 0
		hum.JumpPower = 0
		hum.JumpHeight = 0
		ducking = true
	end
	if key == "r" and not attack and not guarding and not hurt and hum.Sit == false and not sitting and not waitin then
		hum.WalkSpeed = 0
		guarding = true
	end
	if key == "leftshift" and not attack and not ducking and not guarding and not hurt and hum.Sit == false and not sitting and not waitin then
		hum.WalkSpeed = 75
	end
	if key == "0" and not attack and not ducking and not guarding and not hurt and hum.Sit == false and not sitting and not waitin then
		hum.WalkSpeed = 75
	end
	if key == "g" and not attack and not guarding and not hurt and hum.Sit == false and not sitting and not waitin then
		emote("Taunt")
	end	
	if key == "y" and not attack and not guarding and not hurt and hum.Sit == false and not sitting and not waitin then
		emote("Respect")
	end	
	if key == "u" and not attack and not guarding and not hurt and hum.Sit == false and not sitting and not waitin then
		emote("Idle Thing")
	end	
	if key == "b" and not attack and not guarding and not hurt and hum.Sit == false and not sitting and not waitin then
		emote("Sit")
	end	
	if key == "b" and attack and not guarding and not hurt and hum.Sit == false and sitting and not waitin then
		sitting = false
	end	
	if key == "p" and not attack and not guarding and not hurt and hum.Sit == false and not sitting and not waitin then
		emote("Waiting")
	end
	if key == "p" and attack and not guarding and not hurt and hum.Sit == false and not sitting and waitin then
		waitin = false
	end	
	if key == "h" and not attack and not guarding and not hurt and hum.Sit == false and not sitting and not waitin then
		if keycombo == "asd" or keycombo == "asdw" or keycombo == "asdwa" or keycombo == "dds" then
			combatMoves["asdwah"]()
		else
			combatMoves["h"]()
		end
		keycombo = ""
		keycount = 0
		keytime = 0
	end	
	if key == "c" and not attack and not guarding and not hurt and hum.Sit == false and not sitting and not waitin then
		if keycombo == "sd" then
			combatMoves["sdc"]()
		elseif keycombo == "dds" then
			combatMoves["ddsc"]()
		elseif keycombo == "sasd" then
			combatMoves["sasdc"]()
		elseif keycombo == "sdw" then
			combatMoves["sdwc"]()
		else
			combatMoves["c"]()
		end
		keycombo = ""
		keycount = 0
		keytime = 0
	end	
	if key == "z" and not attack and not guarding and not hurt and hum.Sit == false and not sitting and not waitin then
		if keycombo == "dsadsa" then
			combatMoves["dsadsaz"]()
		elseif keycombo == "ws" then
			combatMoves["wsz"]()
		else
			combatMoves["z"]()
		end
		keycombo = ""
		keycount = 0
		keytime = 0
	end
	if key == "x" and not attack and not guarding and not hurt and hum.Sit == false and not sitting and not waitin then
		if keycombo == "sa" then
			combatMoves["sax"]()
		elseif keycombo == "da" then
			combatMoves["dax"]()
		elseif keycombo == "sdw" then
			combatMoves["sdwx"]()
		elseif keycombo == "saw" then
			combatMoves["sawx"]()
		elseif keycombo == "das" or keycombo == "dsa" then
			combatMoves["dasx"]()
		else
			combatMoves["x"]()
		end
		keycombo = ""
		keycount = 0
		keytime = 0
	end	
	if key == "v" and not attack and not guarding and not hurt and hum.Sit == false and not sitting and not waitin then
		if keycombo == "sd" then
			combatMoves["sdv"]()
		elseif keycombo == "dds" then
			combatMoves["ddsv"]()
		elseif keycombo == "asdw" then
			combatMoves["asdwv"]()
		elseif keycombo == "asdasd" or keycombo == "asdsad" then
			combatMoves["asdasdv"]()	
		elseif keycombo == "adadw" then
			combatMoves["adadwv"]()
		else
			combatMoves["v"]()
		end
		keycombo = ""
		keycount = 0
		keytime = 0
	end
	if key == "t" and not attack and not guarding and not hurt and hum.Sit == false and not sitting and not waitin then
		if keycombo == "asd" or keycombo == "sad"  then
			combatMoves["asdt"]()
		elseif keycombo == "dsawd" then
			combatMoves["dsawdt"]()
		elseif keycombo == "sd" then
			combatMoves["sdt"]()
		elseif keycombo == "sdw" then
			combatMoves["sdwt"]()
		else
			combatMoves["t"]()
		end
		keycombo = ""
		keycount = 0
		keytime = 0
	end	
	if tick()-keycombotime<=keycombobreaktime then
		if key == "w" or key == "s" or key == "a" or key == "d" then
			keycombo=keycombo..key
			keycount = keycount + 1
			keytime = 10
			if keycount > 6 then
				keycombo = ""
				keycount = 0
				keytime = 0
			end
			if combatMoves[keycombo] then
				combatMoves[keycombo]()
				keycombo = ""
			end
		end
	end
end)

mouse.KeyUp:connect(function(key)
	if key == "q" and ducking and hum.Sit == false and not sitting and not waitin then
		hum.WalkSpeed = originalwalkspeed
		hum.JumpPower = originaljumppower
		hum.JumpHeight = originaljumpheight
		ducking = false
	end
	if key == "r" and not attack and guarding and not hurt and hum.Sit == false and not sitting and not waitin then
		if not ducking then
			hum.WalkSpeed = originalwalkspeed
		end
		guarding = false
	end
	if key == "leftshift" and not attack and not ducking and not guarding and not hurt and hum.Sit == false and not sitting and not waitin then
		hum.WalkSpeed = originalwalkspeed
	end
	if key == "0" and not attack and not ducking and not guarding and not hurt and hum.Sit == false and not sitting and not waitin then
		hum.WalkSpeed = originalwalkspeed
	end
end)


--Animations. Man, I hate using premade code-related stuff.
runservice.Heartbeat:Connect(function()
	sine = tick()*60
	maxhp = hum.MaxHealth
	if anim == "idle" then
		if not ducking then
			if not guarding then
				if hum.Health > (maxhp/2) or maxhp == math.huge then
					rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0+ 0.05 * sin(sine / 25)) * angles(rad(0), rad(0), rad(-45)), 0.3)
					neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0+ 0.025 * sin(sine / 25)) * angles(rad(-0), rad(0), rad(45)), 0.3)
					rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.5 , 0.25+ 0.05 * sin(sine / 25), 0) * angles(rad(0), rad(0), rad(-30)) * rsC0, 0.3)
					lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.25, 0.5+ 0.05 * sin(sine / 25), 0.25) * angles(rad(0), rad(30), rad(0)) * lsC0, 0.3)
					rhip.C0 = rhip.C0:Lerp(cframe(0.9, -1- 0.05 * sin(sine / 25), 0.4) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-45), rad(0)), 0.3)
					lhip.C0 = lhip.C0:Lerp(cframe(-1 , -1- 0.05 * sin(sine / 25), 0) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(10), rad(0)), 0.3)
					WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.75) *  angles(rad(0), rad(-25), rad(90)), 1)
				elseif hum.Health < (maxhp/2) and maxhp ~= math.huge then
					rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, -0.75) * angles(rad(5), rad(-10), rad(-60)), 0.3)
					neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(35), rad(0), rad(0 + 15 * sin(sine / 7.5))), 0.3)
					rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.25- 0.05 * sin(sine / 7.5) , 0.5, -0.75) * angles(rad(85), rad(-30), rad(-85)) * rsC0, 0.3)
					lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.35, 0.15, 0.25) * angles(rad(35), rad(30), rad(0)) * lsC0, 0.3)
					rhip.C0 = rhip.C0:Lerp(cframe(1.25, -0.6, -1.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(10), rad(10), rad(-50)), 0.3)
					lhip.C0 = lhip.C0:Lerp(cframe(-1 , -0, -1) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(10), rad(-5)), 0.3)
					WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
				end
			else
				rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0+ 0.05 * sin(sine / 25)) * angles(rad(0), rad(0), rad(-45)), 0.3)
				neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0+ 0.025 * sin(sine / 25)) * angles(rad(-0), rad(0), rad(45)), 0.3)
				rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.5 , 0.25+ 0.05 * sin(sine / 25), 0) * angles(rad(0), rad(0), rad(-30)) * rsC0, 0.3)
				lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.25, 0.5+ 0.05 * sin(sine / 25), 0.25) * angles(rad(100), rad(10), rad(20)) * lsC0, 0.3)
				rhip.C0 = rhip.C0:Lerp(cframe(0.9, -1- 0.05 * sin(sine / 25), 0.4) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-45), rad(0)), 0.3)
				lhip.C0 = lhip.C0:Lerp(cframe(-1 , -1- 0.05 * sin(sine / 25), 0) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(10), rad(0)), 0.3)
				WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1) *  angles(rad(-5), rad(15), rad(90)), 1)
			end
		else
			if not guarding then
				rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, -0.75+ 0.05 * cos(sine / 15)) * angles(rad(10), rad(-15), rad(-60)), 0.3)
				neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0+ 0.025 * cos(sine / 15)) * angles(rad(-0), rad(0), rad(45)), 0.3)
				rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.5 , 0.5- 0.025 * cos(sine / 15), 0) * angles(rad(40), rad(0), rad(-15)) * rsC0, 0.3)
				lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.25, 0.25+ 0.05 * cos(sine / 15), 0.25) * angles(rad(10+ 5 * cos(sine / 15)), rad(55), rad(0)) * lsC0, 0.3)
				rhip.C0 = rhip.C0:Lerp(cframe(1.25, -0.1- 0.05 * cos(sine / 15), -0.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(10), rad(-30), rad(15)), 0.3)
				lhip.C0 = lhip.C0:Lerp(cframe(-1 , -0.65- 0.05 * cos(sine / 15), -1) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(10), rad(45)), 0.3)
				WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
			else
				rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, -1+ 0.05 * cos(sine / 15)) * angles(rad(0), rad(-5), rad(-90)), 0.3)
				neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0+ 0.025 * cos(sine / 15)) * angles(rad(-0), rad(0), rad(25)), 0.3)
				rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.35, 0.25- 0.025 * cos(sine / 15), -0.25) * angles(rad(55), rad(0), rad(-35)) * rsC0, 0.3)
				lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.3, 0.75+ 0.05 * cos(sine / 15), -0) * angles(rad(120), rad(-25), rad(15)) * lsC0, 0.3)
				rhip.C0 = rhip.C0:Lerp(cframe(1.75, -0.5- 0.05 * cos(sine / 15), -0.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(45), rad(-30), rad(10)), 0.3)
				lhip.C0 = lhip.C0:Lerp(cframe(-1.15, -0.65- 0.05 * cos(sine / 15), -0.75) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(30), rad(60)), 0.3)
				WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -0.85) *  angles(rad(0), rad(22.5), rad(90)), 1)
			end
		end
	elseif anim == "walk" then
		if not running then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0,0, 0+ 0.025 * cos(sine / 10) + -sin(sine / 10) / 12.5) * angles(rad(0), rad(0), rad(-20+ 5 * cos(sine / 10) + -sin(sine / 10) / 12.5)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(20)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.5 , 0.35, 0) * angles(rad(10), rad(0), rad(-20)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.5, 0.35, 0) * angles(rad(0 + 75 * cos(sine / 10) / 2), rad(0), rad(0)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1, -1, -0.5 * sin(sine/10)) *  angles(rad(0), rad(90), rad(0)) * angles(rad(0),rad(20),rad(-15) + sin(sine/10)),0.15)
			lhip.C0 = lhip.C0:Lerp(cframe(-1, -1, 0.5 * sin(sine/10)) *  angles(rad(0), rad(-90), rad(0))  * angles(rad(0),rad(20),rad(15) + sin(sine/10)),0.15)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		else
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0,0, 0- 0.25 * cos(sine / 5.5)) * angles(rad(30), rad(0 - 2.5 * cos(sine / 5.5)), rad(-0 - 7.5 * cos(sine / 5.5))), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(15), rad(0), rad(0)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.5 , 0.5, 0) * angles(rad(0 + 200 * cos(sine / 5.5) / 2), rad(0), rad(-0)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.5, 0.5, 0) * angles(rad(0 - 180 * cos(sine / 5.5) / 2), rad(0), rad(0)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1, -0.95 - 0.5 * cos(sine / 5.5) / 2, 1 * cos(sine / 5.5)) * angles(rad(-15 - 50 * cos(sine / 5.5)) + -sin(sine / 5.5) / 2.5, rad(90 - 5 * cos(sine / 5.5)), rad(0)) * angles(rad(0 + 5 * cos(sine / 5.5)), rad(0), rad(0)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1, -0.95 + 0.5 * cos(sine / 5.5) / 2, -1 * cos(sine / 5.5)) * angles(rad(-15 + 50 * cos(sine / 5.5)) + sin(sine / 5.5) / 2.5, rad(-90 - 5 * cos(sine / 5.5)), rad(0)) * angles(rad(0 - 5 * cos(sine / 5.5)), rad(0), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		end
	elseif anim == "jump" then
		if not guarding then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(30), rad(0), rad(-0)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.5, 0.5, -0.25) * angles(rad(50), rad(20), rad(-30)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.25, 0.25, 0.25) * angles(rad(60), rad(35), rad(-30)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1 , -0, -0.75) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-15), rad(0)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -0.25, -1.15) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(35)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(0), rad(90)), 1)
		else
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-15)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(15), rad(0), rad(0)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.25 , 0.25, -0.75) * angles(rad(50), rad(0), rad(-45)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.25, 0.5, -0.75) * angles(rad(90), rad(0), rad(30)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1.25, -0.75, -0.75) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-25), rad(-60)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -1, -0.65) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(75)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		end
	elseif anim == "fall" then
		if not guarding then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(-10), rad(0), rad(-0)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, -0.1, 0.1) * angles(rad(30), rad(0), rad(0)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.5 , 0.5, 0) * angles(rad(200), rad(0), rad(-0)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.5, 0.5, 0) * angles(rad(150), rad(20), rad(20)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1 , -1, 0.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-5), rad(-35), rad(-10)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-0.9 , -0.75, -0.75) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(35)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, 0, -0.75) *  angles(rad(0), rad(45), rad(90)), 1)
		else
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-15)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(15), rad(0), rad(0)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.25 , 0.25, -0.75) * angles(rad(50), rad(0), rad(-45)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.25, 0.5, -0.75) * angles(rad(90), rad(0), rad(30)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1.25, -0.75, -0.75) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-25), rad(-60)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -1, -0.65) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(75)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		end
	elseif anim == "swimidle" then
		rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-0)), 0.3)
		neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(15), rad(0), rad(0)), 0.3)
		rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.5, 0.5, -0.25) * angles(rad(75), rad(70- 40 * cos(sine / 30)), rad(25)) * rsC0, 0.3)
		lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.5, 0.5, -0.25) * angles(rad(80), rad(-80+ 40 * cos(sine / 30)), rad(-10)) * lsC0, 0.3)
		rhip.C0 = rhip.C0:Lerp(cframe(1, -0.5, -0.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(0), rad(-0), rad(-25)), 0.3)
		lhip.C0 = lhip.C0:Lerp(cframe(-1 , -1, -0) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(10)), 0.3)
		WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
	elseif anim == "swim" then
		rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-0)), 0.3)
		neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-15), rad(0), rad(0)), 0.3)
		rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.5 , 0.5, -0) * angles(rad(90+ 80 * cos(sine / 10)), rad(0), rad(0)) * rsC0, 0.3)
		lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.5, 0.5, -0) * angles(rad(90+ 80 * cos(sine / 10)), rad(0), rad(-0)) * lsC0, 0.3)
		rhip.C0 = rhip.C0:Lerp(cframe(1, -1, -0.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(0), rad(-0), rad(-25+ 40 * cos(sine / 10))), 0.3)
		lhip.C0 = lhip.C0:Lerp(cframe(-1 , -1, -0) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(10+ 40 * cos(sine / 10))), 0.3)
		WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
	elseif anim == "sit" then
		rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, -0.25 - 0.025 * cos(sine / 90)) * angles(rad(0), rad(0), rad(-0)), 0.15)
		neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(15), rad(0), rad(0)), 0.15)
		rshoulder.C0 = rshoulder.C0:Lerp(cframe(1 , 0.25, -0.75) * angles(rad(60), rad(-5), rad(-80 - 5 * cos(sine / 90))) * rsC0, 0.15)
		lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.15, 0.65, -0.5) * angles(rad(60), rad(-70), rad(40 + 5 * cos(sine / 90))) * lsC0, 0.15)
		rhip.C0 = rhip.C0:Lerp(cframe(1 , -1, -0.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(45 + 5 * cos(sine / 90)), rad(0), rad(30)), 0.15)
		lhip.C0 = lhip.C0:Lerp(cframe(-1 , -1, -0.45) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(25 + 5 * cos(sine / 90)), rad(-0), rad(-15)), 0.15)
		WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
	elseif anim == "climbidle" then
		rjoint.C0 = rjoint.C0:lerp(cframe(0,0 + 0.05 * cos(sine / 24),0)*angles(rad(0),rad(0),rad(0))*rjC0,0.3)
		neck.C0 = neck.C0:lerp(cframe(0,0.1,-0.5)*angles(rad(28.4),rad(0),rad(0))*nkC0,.1)
		rshoulder.C0 = rshoulder.C0:lerp(cframe(1.5, 0.75 - 0.05 * cos(sine / 24), -0.5) * angles(rad(130), rad(0), rad(-15)) * rsC0, 0.3)
		lshoulder.C0 = lshoulder.C0:lerp(cframe(-1.5, 0.75 - 0.05 * cos(sine / 24), -0.5) * angles(rad(130), rad(0), rad(15)) * lsC0, 0.3)
		rhip.C0 = rhip.C0:lerp(cframe(1,-0.5 - 0.05 * cos(sine / 24),-0.6)*angles(rad(-24.8),rad(0),rad(0))*angles(rad(0),rad(90),rad(0)),0.3)
		lhip.C0 = lhip.C0:lerp(cframe(-1,-1 - 0.05 * cos(sine / 24),-0.1)*angles(rad(11.2),rad(0),rad(0))*angles(rad(0),rad(-90),rad(0)),0.3)
		WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
	elseif anim == "climbing" then
		rjoint.C0 = rjoint.C0:lerp(cframe(0,0 + 0.05 * cos(sine / 16),0)*angles(rad(0),rad(0),rad(0))*rjC0,0.3)
		neck.C0 = neck.C0:lerp(cframe(0,0.1,-0.5)*angles(rad(28.4),rad(0),rad(0))*nkC0,.1)
		rshoulder.C0 = rshoulder.C0:lerp(cframe(1.5, 0.75 - 0.05 * cos(sine / 24), -0.5) * angles(rad(130+ 35 * cos(sine / 16)), rad(0), rad(-15)) * rsC0, 0.3)
		lshoulder.C0 = lshoulder.C0:lerp(cframe(-1.5, 0.75 - 0.05 * cos(sine / 24), -0.5) * angles(rad(130+ 35 * cos(sine / 16)), rad(0), rad(15)) * lsC0, 0.3)
		rhip.C0 = rhip.C0:lerp(cframe(1, -0.5 + 0.5 * cos(sine / 7) / 2, -0.6) * angles(rad(-15 - 35 * cos(sine / 7)) + -sin(sine / 7) / 2.5, rad(90 - 2 * cos(sine / 7)), rad(0)) * angles(rad(0 + 2.5 * cos(sine / 7)), rad(0), rad(0)), 0.3)
		lhip.C0 = lhip.C0:lerp(cframe(-1, -0.5 + 0.5 * cos(sine / 7) / 2, -0.6) * angles(rad(-15 + 35 * cos(sine / 7)) + sin(sine / 7) / 2.5, rad(-90 - 2 * cos(sine / 7)), rad(0)) * angles(rad(0 - 2.5 * cos(sine / 7)), rad(0), rad(0)),0.3)
		WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)	
	elseif anim == "dashforward" then
		if frame == 1 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, -0.25) * angles(rad(5), rad(-10), rad(-60)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.5 , 0.5, 0) * angles(rad(25), rad(0), rad(-25)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.5, 0.35, 0) * angles(rad(20), rad(0), rad(10)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1.25, -0.75, -0.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(0), rad(-30), rad(15)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -0.5, -1) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(10), rad(15)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		elseif frame == 2 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(15), rad(0), rad(-0)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.5 , 0.5, 0) * angles(rad(-20), rad(0), rad(25)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.5, 0.5, 0) * angles(rad(20), rad(0), rad(-25)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1 , -1, -0.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-0), rad(-65)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -0.75, -0.75) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(35)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		end	
	elseif anim == "dashback" then
		if frame == 1 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, -0.25) * angles(rad(5), rad(-10), rad(-60)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.5 , 0.5, 0) * angles(rad(25), rad(0), rad(-25)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.5, 0.35, 0) * angles(rad(20), rad(0), rad(10)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1.25, -0.5, -0.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(0), rad(-30), rad(15)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -0.5, -1) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(10), rad(15)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		elseif frame == 2 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(-5), rad(5), rad(-65)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(30)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.5 , 0.25, 0) * angles(rad(5), rad(0), rad(-30)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.5, 0.25, 0.65) * angles(rad(20), rad(40), rad(10)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(0.85, -0.75, -0.75) *  angles(rad(0), rad(90), rad(0)) * angles(rad(10), rad(-0), rad(-20)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -1, 0 ) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-5), rad(20), rad(-20)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		elseif frame == 3 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(20), rad(0), rad(-0)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.5 , 0.25, 0) * angles(rad(5), rad(0), rad(-30)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.35, 0.3, 0.25) * angles(rad(20), rad(50), rad(10)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(0.85, -0.5, -0.75) *  angles(rad(0), rad(90), rad(0)) * angles(rad(0), rad(-0), rad(75)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -0.75, -0.5) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-0), rad(0), rad(-50)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		end	
	elseif anim == "sitground" then
		rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, -2+ 0.05 * sin(sine / 30)) * angles(rad(-0), rad(0), rad(-0)), 0.3)
		neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0+ 0.025 * sin(sine / 30)) * angles(rad(-0), rad(0), rad(0)), 0.3)
		rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.5 , 0.25- 0.05 * sin(sine / 30), -0.5) * angles(rad(30+ 5 * sin(sine / 30)), rad(0), rad(-45)) * rsC0, 0.3)
		lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.25, 0.5- 0.05 * sin(sine / 30), -0.5) * angles(rad(110+ 5 * sin(sine / 30)), rad(-50), rad(50+ 5 * sin(sine / 30))) * lsC0, 0.3)
		rhip.C0 = rhip.C0:Lerp(cframe(1.25, -1- 0.05 * sin(sine / 30), -0.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(75), rad(-0), rad(20)), 0.3)
		lhip.C0 = lhip.C0:Lerp(cframe(-1.5, -0.5- 0.05 * sin(sine / 30), -1) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(60), rad(0), rad(-20)), 0.3)
		WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(-30), rad(-0), rad(90)), 1)
	elseif anim == "hurt" then
		if not guarding then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, -0.5) * angles(rad(-60), rad(0), rad(0)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-40), rad(0), rad(0)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.25 , 0.75, 0) * angles(rad(100), rad(60), rad(-0)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.5, 0.5, 0) * angles(rad(55), rad(0), rad(0)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(0.75, -0.5, 0.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-50), rad(-40), rad(-65)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -1, 0.15) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(100)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(-0), rad(-0), rad(90)), 1)	
		else
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0+ 0.05 * sin(sine / 25)) * angles(rad(0), rad(0), rad(-45)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0+ 0.025 * sin(sine / 25)) * angles(rad(-0), rad(0), rad(45)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.5 , 0.25+ 0.05 * sin(sine / 25), 0) * angles(rad(0), rad(0), rad(-30)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.25, 0.5+ 0.05 * sin(sine / 25), 0.25) * angles(rad(100), rad(10), rad(20)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(0.9, -1- 0.05 * sin(sine / 25), 0.4) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-45), rad(0)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -1- 0.05 * sin(sine / 25), 0) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(10), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1) *  angles(rad(-5), rad(15), rad(90)), 1)
		end
	elseif anim == "hurt2" then
		if not guarding then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(20), rad(0), rad(-0)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0.15) * angles(rad(30), rad(0), rad(0)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.5 , 0.5, 0) * angles(rad(80), rad(0), rad(-0)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.5, 0.5, 0) * angles(rad(75), rad(0), rad(0)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1 , -1, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-10), rad(75)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -1, -0.5) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(-45)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.5) *  angles(rad(-0), rad(-15), rad(90)), 1)
		else
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0+ 0.05 * sin(sine / 25)) * angles(rad(0), rad(0), rad(-45)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0+ 0.025 * sin(sine / 25)) * angles(rad(-0), rad(0), rad(45)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.5 , 0.25+ 0.05 * sin(sine / 25), 0) * angles(rad(0), rad(0), rad(-30)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.25, 0.5+ 0.05 * sin(sine / 25), 0.25) * angles(rad(100), rad(10), rad(20)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(0.9, -1- 0.05 * sin(sine / 25), 0.4) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-45), rad(0)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -1- 0.05 * sin(sine / 25), 0) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(10), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1) *  angles(rad(-5), rad(15), rad(90)), 1)
		end
	elseif anim == "duckhurt" then
		if not guarding then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, -0.75) * angles(rad(0), rad(-0), rad(-45)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-25), rad(0), rad(45)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.25 , 0.5, -0.5) * angles(rad(90), rad(0), rad(-45)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.25, 0.25, 0.25) * angles(rad(30), rad(35), rad(0)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1.25, -0.1, -0.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-10), rad(-30), rad(-15)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -0.9, -1.5) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(10), rad(65)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1) *  angles(rad(0), rad(20), rad(90)), 1)
		else
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, -1+ 0.05 * cos(sine / 15)) * angles(rad(0), rad(-5), rad(-90)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0+ 0.025 * cos(sine / 15)) * angles(rad(-0), rad(0), rad(25)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.35, 0.25- 0.025 * cos(sine / 15), -0.25) * angles(rad(55), rad(0), rad(-35)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.3, 0.75+ 0.05 * cos(sine / 15), -0) * angles(rad(120), rad(-25), rad(15)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1.75, -0.5- 0.05 * cos(sine / 15), -0.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(45), rad(-30), rad(10)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1.15, -0.65- 0.05 * cos(sine / 15), -0.75) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(30), rad(60)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -0.85) *  angles(rad(0), rad(22.5), rad(90)), 1)
		end
	elseif anim == "fallblock" then
		rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-15)), 0.3)
		neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(15), rad(0), rad(0)), 0.3)
		rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.25 , 0.25, -0.75) * angles(rad(50), rad(0), rad(-45)) * rsC0, 0.3)
		lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.25, 0.5, -0.75) * angles(rad(90), rad(0), rad(30)) * lsC0, 0.3)
		rhip.C0 = rhip.C0:Lerp(cframe(1.25, -0.75, -0.75) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-25), rad(-60)), 0.3)
		lhip.C0 = lhip.C0:Lerp(cframe(-1 , -1, -0.65) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(75)), 0.3)
		WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
	elseif anim == "fallhurt" then
		if frame == 1 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(-15), rad(0), rad(-0)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, -0.2, 0.1) * angles(rad(35), rad(0), rad(0)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.4 , 0.45, -0.25) * angles(rad(-15), rad(45), rad(-0)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.5, 0.5, 0) * angles(rad(50), rad(0), rad(0)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1 , -1, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-30), rad(0)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -0.5, -1.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(45)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(0), rad(90)), 1)
		elseif frame == 2 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(-55), rad(0), rad(-20)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, -0.2, 0.1) * angles(rad(-5), rad(0), rad(-15)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.4 , 0.45, -0.25) * angles(rad(45), rad(0), rad(-0)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.5, 0.5, 0) * angles(rad(60), rad(0), rad(0)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1 , -0.75, -0.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-15), rad(-25)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -0.65, -0.75) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(-15)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(0), rad(90)), 1)
		elseif frame == 3 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(-90), rad(0), rad(-0)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, -0.2, 0.1) * angles(rad(45), rad(0), rad(-15)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.25, 0.75, -0.25) * angles(rad(-30), rad(0), rad(60)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.5, 0.5, 0) * angles(rad(60), rad(0), rad(0)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1 , -0.75, -0.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-15), rad(45)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -1, -0.5) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(-10)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(0), rad(90)), 1)
		elseif frame == 4 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, -2.5) * angles(rad(-90), rad(0), rad(-0)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, -0.2, 0.1) * angles(rad(25), rad(0), rad(-15)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.25, 0.5, -0) * angles(rad(-0), rad(0), rad(30)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.5, 0.5, 0) * angles(rad(30), rad(0), rad(0)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1 , -0.75, -0.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-15), rad(15)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -1, -0.5) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(15)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.75) *  angles(rad(0), rad(-30), rad(90)), 1)
		elseif frame == 5 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, -2.5) * angles(rad(-90), rad(0), rad(-0)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, -0, 0) * angles(rad(0), rad(0), rad(-15)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.5 , 0.5, -0) * angles(rad(0), rad(40), rad(-30)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.5, 0.5, 0) * angles(rad(75), rad(0), rad(0)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1 , -1, -0.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-0), rad(-30)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -1, -0) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-0), rad(0), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1) *  angles(rad(0), rad(15), rad(90)), 1)
		end
	elseif anim == "fallrise" then
		if frame == 1 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, -2.5) * angles(rad(-90), rad(0), rad(-0)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0.25) * angles(rad(45), rad(0), rad(0)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.25 , 0.5, -0.5) * angles(rad(90), rad(0), rad(-60)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.5, 0.5, 0) * angles(rad(90), rad(0), rad(30)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1 , -0.75, -0.75) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-0), rad(-15)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -1, -0.75) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(0), rad(90)), 1)
		elseif frame == 2 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, -2.5) * angles(rad(-100), rad(0), rad(-0)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0.25) * angles(rad(45), rad(0), rad(0)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.25 , 0.5, -0.5) * angles(rad(160), rad(0), rad(-30)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.5, 0.5, 0) * angles(rad(140), rad(0), rad(15)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1 , -0.75, -0.75) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-0), rad(-10)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -1, -0.75) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(-25)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(0), rad(90)), 1)
		elseif frame == 3 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, -1.5) * angles(rad(-90), rad(0), rad(-0)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0.25) * angles(rad(-45), rad(0), rad(0)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.25 , 0.5, -0) * angles(rad(-30), rad(0), rad(-0)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.5, 0.5, 0) * angles(rad(-40), rad(0), rad(0)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1 , -1, -0.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-0), rad(-25)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -1, -0.5) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(45)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(0), rad(90)), 1)
		elseif frame == 4 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, -0.5) * angles(rad(-90), rad(0), rad(-0)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0.25) * angles(rad(-45), rad(0), rad(0)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.25 , 0.5, -0) * angles(rad(-30), rad(0), rad(-0)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.5, 0.5, 0) * angles(rad(-40), rad(0), rad(0)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1 , -1, -0.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-0), rad(-25)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -1, -0.5) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(45)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(0), rad(90)), 1)
		elseif frame == 5 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, -0.5) * angles(rad(-60), rad(0), rad(-0)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0.25) * angles(rad(-0), rad(0), rad(0)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.25 , 0.5, -0) * angles(rad(-15), rad(0), rad(-0)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.5, 0.5, 0) * angles(rad(-25), rad(0), rad(0)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1 , -1, -0.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-0), rad(-35)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -1, -0.5) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(55)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0.5, 0, -2) *  angles(rad(0), rad(-120), rad(90)), 1)
		elseif frame == 6 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0.5) * angles(rad(20), rad(0), rad(-0)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0.25) * angles(rad(-0), rad(0), rad(0)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.25 , 0.5, -0) * angles(rad(35), rad(0), rad(-0)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.25, 0.5, -0.5) * angles(rad(105), rad(0), rad(50)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1 , -0.25, -1.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-0), rad(-25)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -0.5, -1) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(45)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, -0.25, -1.75) *  angles(rad(-30), rad(-30), rad(90)), 1)
		elseif frame == 7 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, -0.25) * angles(rad(5), rad(-10), rad(-60)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.5 , 0.5, 0) * angles(rad(25), rad(0), rad(-25)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.5, 0.35, 0) * angles(rad(20), rad(0), rad(10)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1.25, -0.75, -0.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(0), rad(-30), rad(15)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -0.5, -1) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(10), rad(15)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		end
	elseif anim == "lose" then
		if frame == 1 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, -0.25) * angles(rad(5), rad(-10), rad(-60)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(20), rad(0), rad(0)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.35, 0.5, -0.5) * angles(rad(75), rad(0), rad(-65)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.35, 0.35, 0.25) * angles(rad(35), rad(30), rad(0)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1.25, -0.75, -0.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(0), rad(-15), rad(-35)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -0.5, -0.75) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(10), rad(-5)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		elseif frame == 2 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, -0.75) * angles(rad(5), rad(-10), rad(-60)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(35), rad(0), rad(0 + 15 * sin(sine / 7.5))), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.25- 0.05 * sin(sine / 7.5) , 0.5, -0.75) * angles(rad(85), rad(-30), rad(-85)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.35, 0.15, 0.25) * angles(rad(35), rad(30), rad(0)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1.25, -0.6, -1.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(10), rad(10), rad(-50)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -0, -1) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(10), rad(-5)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		end
	elseif anim == "win" then
		if frame == 1 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-90)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(40)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.25 , 0.35, -0.5) * angles(rad(75), rad(-10), rad(-40)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.25, 0.5, 0.25) * angles(rad(0), rad(40), rad(0)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1 , -1, 0.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-30), rad(0)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-0.85, -1, 0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(45), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		elseif frame == 2 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-115)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(40)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.25 , 0.5, -0.25) * angles(rad(120), rad(-10), rad(-70)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.25, 0.5, -0.5) * angles(rad(0), rad(-35), rad(0)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1 , -1, -0.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-0), rad(0)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -1, 0 ) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(45), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		elseif frame == 3 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-115)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(20)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.25 , 0.75, -0.25) * angles(rad(120), rad(45), rad(-15)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.25, 0.5, -0.5) * angles(rad(0), rad(-35), rad(0)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1 , -1, -0.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-0), rad(0)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -1, 0 ) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(45), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		elseif frame == 4 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-115)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(10), rad(5), rad(20)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1 , 0.25, -0.5) * angles(rad(35), rad(180), rad(-45)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.25, 0.5, -0.5) * angles(rad(0), rad(-35), rad(0)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1 , -1, -0.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-0), rad(0)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -1, 0 ) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(45), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		elseif frame == 5 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-115)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(10), rad(5), rad(20)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1 , 0.4, -0.5) * angles(rad(65), rad(180), rad(-45)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.25, 0.5, -0.5) * angles(rad(0), rad(-35), rad(0)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1 , -1, -0.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-0), rad(0)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -1, 0 ) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(45), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		end
	elseif anim == "win2" then
		if frame == 1 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-60)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.5 , 0.25, 0) * angles(rad(0), rad(0), rad(-15)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.25, 0.5, 0.25) * angles(rad(130), rad(0), rad(0)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(0.9, -1, 0.4) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-45), rad(0)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -1, 0) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(15), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		elseif frame == 2 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-75)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.25 , 0.5, -0.5) * angles(rad(0), rad(40), rad(-0)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.25, 0.5, 0.25) * angles(rad(180), rad(-45), rad(0)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(0.9, -1, 0.4) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-35), rad(0)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -1, 0) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(15), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		elseif frame == 3 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-90)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(10), rad(0), rad(-10)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.5 , 0.5, -0.25) * angles(rad(0), rad(20), rad(-0)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.5, 0.5, 0) * angles(rad(130), rad(25), rad(-25)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1, -1, 0) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-20), rad(0)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -1, 0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(40), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		elseif frame == 4 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-105)), 0.5)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(10), rad(0), rad(-10)), 0.5)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.5 , 0.5, -0.25) * angles(rad(0), rad(20), rad(-0)) * rsC0, 0.5)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.5, 0.25, 0) * angles(rad(90), rad(20), rad(-15)) * lsC0, 0.5)
			rhip.C0 = rhip.C0:Lerp(cframe(1, -1, -0.15) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-0), rad(0)), 0.5)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -1, 0.4) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(40), rad(0)), 0.5)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		elseif frame == 5 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(-10), rad(-125)), 0.6)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(10), rad(0), rad(-10)), 0.6)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.45 , 0.4, -0.3) * angles(rad(15), rad(20), rad(-10)) * rsC0, 0.6)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.25, 0.5, -0.5) * angles(rad(80), rad(-45), rad(55)) * lsC0, 0.6)
			rhip.C0 = rhip.C0:Lerp(cframe(0.9, -1, -0.3) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(15), rad(10)), 0.6)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -1, 0.4) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(60), rad(-10)), 0.6)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0.5, 0.75, -1.75) *  angles(rad(0), rad(-75), rad(90)), 0.6)
		elseif frame == 6 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(-0), rad(-65)), 1)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-10), rad(-10), rad(-45)), 1)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.3 , 0.5, -0.5) * angles(rad(-0), rad(45), rad(0)) * rsC0, 1)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.35, 0.65, -0.35) * angles(rad(25), rad(-75), rad(25)) * lsC0, 1)
			rhip.C0 = rhip.C0:Lerp(cframe(1, -1, -0.1) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-35), rad(0)), 1)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -1, -0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(15), rad(-0)), 1)
			--I had to do the impossible.
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.314999998, 2.24000001, -2.4000001, 0.54351294, 0.471783936, -0.694272041, 0.763129413, 0.066765219, 0.642787635, 0.34961009, -0.879182816, -0.323744416), 1)
		elseif frame == 7 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(-0), rad(-65)), 1)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-10), rad(-10), rad(-45)), 1)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.25 , 0.375, -0.5) * angles(rad(-0), rad(45), rad(0)) * rsC0, 1)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1, 0.35, -0.5) * angles(rad(0), rad(-150), rad(-0)) * lsC0, 1)
			rhip.C0 = rhip.C0:Lerp(cframe(1, -1, -0.1) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-35), rad(0)), 1)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -1, -0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(15), rad(-0)), 1)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.600000024, 1.89999998, -2.04999995, -0.57452774, 0.525502563, -0.627506971, 0.763129413, 0.066765219, -0.642787635, -0.295890898, -0.848168373, -0.439384907), 1)
		end
	elseif anim == "spawn" then
		if frame == 1 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-60)), 1)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 1)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.5 , 0.5, 0) * angles(rad(20), rad(0), rad(-10)) * rsC0, 1)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.5, 0.5, 0) * angles(rad(20), rad(0), rad(0)) * lsC0, 1)
			rhip.C0 = rhip.C0:Lerp(cframe(1, -1, 0.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-5), rad(-35), rad(0)), 1)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -1, 0 ) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(25), rad(0)), 1)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(1, 1.325, -1.2) *  angles(rad(0), rad(-90), rad(70)) *  angles(rad(0), rad(90), rad(0)), 1)
		elseif frame == 2 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-60)), 1)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 1)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.75 , 0.5, -0.5) * angles(rad(100), rad(0), rad(-45)) * rsC0, 1)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.5, 0.5, -0.75) * angles(rad(90), rad(0), rad(75)) * lsC0, 1)
			rhip.C0 = rhip.C0:Lerp(cframe(1, -1, 0.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-5), rad(-35), rad(0)), 1)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -1, 0 ) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(25), rad(0)), 1)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(1.475, 0.62, -1.63) *  angles(rad(70), rad(-90), rad(70)) *  angles(rad(75), rad(90), rad(0)), 1)
		elseif frame == 3 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-60)), 1)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 1)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.25 , 0.5, -0.5) * angles(rad(100), rad(0), rad(-60)) * rsC0, 1)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.5, 0.5, -0.5) * angles(rad(90), rad(0), rad(75)) * lsC0, 1)
			rhip.C0 = rhip.C0:Lerp(cframe(1, -1, 0.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-5), rad(-35), rad(0)), 1)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -1, 0 ) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(25), rad(0)), 1)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(1.485, 0.87, -1.6) *  angles(rad(70), rad(-90), rad(70)) *  angles(rad(75), rad(90), rad(0)), 1)
		elseif frame == 4 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-60)), 1)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(15), rad(0)), 1)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.25 , 0.5, -0.5) * angles(rad(100), rad(0), rad(-60)) * rsC0, 1)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.5, 0.5, -0.5) * angles(rad(90), rad(0), rad(75)) * lsC0, 1)
			rhip.C0 = rhip.C0:Lerp(cframe(1, -1, 0.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-5), rad(-35), rad(0)), 1)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -1, 0 ) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(25), rad(0)), 1)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(1.485, 0.87, -1.6) *  angles(rad(70), rad(-90), rad(70)) *  angles(rad(75), rad(90), rad(0)), 1)
		elseif frame == 5 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-60)), 1)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(-15), rad(0)), 1)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.25 , 0.5, -0.5) * angles(rad(100), rad(0), rad(-60)) * rsC0, 1)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.5, 0.5, -0.5) * angles(rad(90), rad(0), rad(75)) * lsC0, 1)
			rhip.C0 = rhip.C0:Lerp(cframe(1, -1, 0.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-5), rad(-35), rad(0)), 1)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -1, 0 ) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(25), rad(0)), 1)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(1.485, 0.87, -1.6) *  angles(rad(70), rad(-90), rad(70)) *  angles(rad(75), rad(90), rad(0)), 1)
		elseif frame == 6 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(20), rad(-15), rad(-60)), 1)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(15), rad(0), rad(0)), 1)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.25 , 0.65, -0.5) * angles(rad(30), rad(50), rad(0)) * rsC0, 1)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.25, 0.5, -0.25) * angles(rad(120), rad(0), rad(-50)) * lsC0, 1)
			rhip.C0 = rhip.C0:Lerp(cframe(1, -1, -0.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(20), rad(-35), rad(20)), 1)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -0.8, -0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(25), rad(-25)), 1)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0.845, 0.71, -1.25) *  angles(rad(77.5), rad(-90), rad(70)) *  angles(rad(0), rad(100), rad(-52.5)), 1)
		elseif frame == 7 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(5), rad(-5), rad(-75)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(30)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.25 , 0.5, -0.5) * angles(rad(15), rad(65), rad(-10)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.25, 0.65, 0.25) * angles(rad(60), rad(0), rad(-25)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1, -1, -0.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(5), rad(-35), rad(5)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -0.95, -0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(25), rad(-10)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0.845, 0.71, -1.25) *  angles(rad(77.5), rad(-90), rad(70)) *  angles(rad(0), rad(100), rad(-52.5)), 1)
		end
	elseif anim == "spawn2" then
		if frame == 1 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,-1.5, 0) * angles(rad(0), rad(-10), rad(105)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(25)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.5 , 0.25, 0) * angles(rad(145), rad(0), rad(-0)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.5, 0.5, 0) * angles(rad(0), rad(40), rad(0)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1 , -1, 0.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-5), rad(-40), rad(-10)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -1, 0 ) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-5), rad(15), rad(10)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(1.5, -2.5, 0.5) *  angles(rad(-60), rad(-0), rad(90)), 1)
		elseif frame == 2 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,-1.5, 0) * angles(rad(0), rad(-0), rad(105)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(10), rad(0), rad(25)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.5 , 0.25, 0) * angles(rad(175), rad(0), rad(-0)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.35, 0.3, 0.25) * angles(rad(50), rad(40), rad(-15)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1 , -1, 0.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(0), rad(-40), rad(-0)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -1, 0 ) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-0), rad(15), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		elseif frame == 3 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,-1.5, 0) * angles(rad(0), rad(-0), rad(-30)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(0)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.25 , 0.65, -0.25) * angles(rad(125), rad(0), rad(-30)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-0.85, 0.5, 0.25) * angles(rad(120), rad(0), rad(-155)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(-0.25 , -1, -1) *  angles(rad(0), rad(90), rad(0)) * angles(rad(0), rad(60), rad(20)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(0.75, -1, 0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-0), rad(155), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		elseif frame == 4 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,-1.5, 0) * angles(rad(0), rad(-0), rad(-45)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(20)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.5 , 0.25, -0) * angles(rad(45), rad(0), rad(30)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.5, 0.5, -0.25) * angles(rad(90), rad(0), rad(-0)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1 , -1, -0.65) *  angles(rad(0), rad(90), rad(0)) * angles(rad(0), rad(45), rad(40)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-0.75, -1, 0.5) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-0), rad(50), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		elseif frame == 5 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,-0.5, 0) * angles(rad(0), rad(-0), rad(-60)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(20)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.5 , 0.45, -0) * angles(rad(45), rad(0), rad(15)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.5, 0.75, 0.25) * angles(rad(180), rad(-45), rad(15)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1 , -1, -0.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(0), rad(-10), rad(0)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-0.75, -1, 0.5) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-0), rad(50), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		elseif frame == 6 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,-0.25, 0) * angles(rad(0), rad(-0), rad(-75)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(20)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.5 , 0.75, -0.5) * angles(rad(25), rad(75), rad(0)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.5, 1.25, 0.25) * angles(rad(150), rad(-25), rad(30)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1 , -1, -0) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-7.5), rad(-10), rad(0)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-0.75, -1, 0.5) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-0), rad(50), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		elseif frame == 7 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(-0), rad(-110)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(60)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.5 , 0.5, -0.5) * angles(rad(-25), rad(45), rad(30)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.5, 0.5, -0.25) * angles(rad(80), rad(-15), rad(45)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1 , -1, -0) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(0), rad(0)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1, -1, 0.5) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-5), rad(60), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		elseif frame == 8 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(-0), rad(-80)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(30)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.5 , 0.5, -0) * angles(rad(5), rad(0), rad(5)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.5, 0.5, -0.25) * angles(rad(55), rad(-65), rad(15)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1 , -1, -0) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-25), rad(0)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1, -1, 0.5) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-5), rad(30), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		end
	elseif anim == "taunt" then
		if frame == 1 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-45)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(20)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.25 , 0.25, -0.5) * angles(rad(65), rad(0), rad(-60)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.25, 0.5, 0.25) * angles(rad(50), rad(15), rad(0)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(0.9, -1, 0.4) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-7.5), rad(-45), rad(0)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -1.05, 0) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(10), rad(-5)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		elseif frame == 2 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,-0.1, 0) * angles(rad(0), rad(0), rad(-45)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(20)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1, 0.5, -0.5) * angles(rad(115), rad(0), rad(-60)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.25, 0.5, -0.5) * angles(rad(85), rad(15), rad(15)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(0.9, -1, 0.4) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-12.5), rad(-45), rad(0)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -1.05, 0) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(10), rad(5)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		elseif frame == 3 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,-0.125, 0) * angles(rad(0), rad(0), rad(-45)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(20)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(0.75, 0.75, -0.5) * angles(rad(20), rad(160), rad(100)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-0.85, 0.9, -1.35) * angles(rad(90), rad(75), rad(95)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(0.9, -1, 0.4) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-15), rad(-45), rad(0)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -1, 0) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(10), rad(-2.5)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		elseif frame == 4 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,-0.125, 0) * angles(rad(0), rad(0), rad(-45)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(20)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(0.75, 0.5, -0.5) * angles(rad(20), rad(160), rad(100)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-0.85, 0.5, -1.35) * angles(rad(85), rad(75), rad(90)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(0.9, -1, 0.4) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-15), rad(-45), rad(0)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -1, 0) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(10), rad(-2.5)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		end
	elseif anim == "taunt2" then
		if frame == 1 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,-0.15, 0) * angles(rad(-10), rad(-10), rad(45)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(10), rad(0), rad(-40)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.5 , 0.5, 0) * angles(rad(45), rad(0), rad(-0)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.35, 0.5, -0.25) * angles(rad(-15), rad(-30), rad(0)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(-0.25, -0.9, 0.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(5), rad(-165), rad(15)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-0.5, -1.25, -0.85) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(15), rad(-50), rad(20)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		elseif frame == 2 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,-0.3, 0) * angles(rad(-0), rad(-0), rad(60)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(-20)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.25 , 0.5, -0.5) * angles(rad(60), rad(0), rad(-45)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.5, 0.5, -0) * angles(rad(15), rad(-0), rad(0)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1 , -1 , 0.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-20), rad(-30)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -1, 0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(30), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		elseif frame == 3 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,-0.5, 0) * angles(rad(-0), rad(-0), rad(90)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(15), rad(0), rad(-0)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(0.5, 0.5, -0.9) * angles(rad(75), rad(-25), rad(-105)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.45, 0.65, -0.25) * angles(rad(25), rad(-30), rad(0)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(0.85, -1 , 0.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-45), rad(-0)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -1, 0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-7.5), rad(35), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		elseif frame == 4 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,-0.5, 0) * angles(rad(-10), rad(-0), rad(90)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(-30)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.45, 0.5, -0) * angles(rad(90), rad(-0), rad(45)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.45, 0.5, -0.25) * angles(rad(0), rad(-30), rad(0)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(0.85, -1 , 0.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-45), rad(-0)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -0.85, 0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-12.5), rad(35), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		elseif frame == 5 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,-0.5, 0) * angles(rad(-10), rad(-0), rad(90)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(-30)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.45, 0.5, -0) * angles(rad(150), rad(60), rad(-20)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.45, 0.5, -0.25) * angles(rad(0), rad(-30), rad(0)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(0.85, -1 , 0.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-45), rad(-0)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -0.85, 0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-12.5), rad(35), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		elseif frame == 6 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,-0.5, 0) * angles(rad(-10), rad(10), rad(75)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(-30)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1 , 0.25, -0.5) * angles(rad(35), rad(150), rad(-45)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.45, 0.5, -0.25) * angles(rad(0), rad(-15), rad(0)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(0.85, -1.25, 0.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(35), rad(-75), rad(25)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-0.75, -1, 0.65) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-7.5), rad(50), rad(-10)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		elseif frame == 7 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,-0.5, 0) * angles(rad(-10), rad(10), rad(75)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(-30)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1 , 0.4, -0.5) * angles(rad(65), rad(180), rad(-85)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.45, 0.5, -0.25) * angles(rad(0), rad(-15), rad(0)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(0.85, -1.25, 0.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(35), rad(-75), rad(25)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-0.75, -1, 0.65) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-7.5), rad(50), rad(-10)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		elseif frame == 8 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,-0.15, 0) * angles(rad(-5), rad(-5), rad(45)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(10), rad(0), rad(-40)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.5 , 0.5, 0) * angles(rad(45), rad(0), rad(-0)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.35, 0.5, -0.25) * angles(rad(30), rad(-30), rad(15)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(0.85, -0.9, 0.6) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-10), rad(-60), rad(-15)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-0.75, -1, -0.5) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(5), rad(-45), rad(10)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		end
	elseif anim == "respect" then
		if frame == 1 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-60)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.25 , 0.25, -0.5) * angles(rad(55), rad(0), rad(-60)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.4, 0.4, 0) * angles(rad(0), rad(0), rad(15)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(0.8, -1, 0.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-45), rad(0)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1.1, -1, 0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(25), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.925, 0, -1.425) *  angles(rad(0), rad(-10), rad(90)), 1)
		elseif frame == 2 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-60)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(30)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.25 , 0.4, -0.5) * angles(rad(90), rad(0), rad(-60)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.4, 0.4, 0) * angles(rad(-15), rad(0), rad(15)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(0.8, -1, 0.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-45), rad(0)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1, -1, -0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(10), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		elseif frame == 3 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-60)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(30)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1 , 0.55, -0.75) * angles(rad(115), rad(-0), rad(-60)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.4, 0.4, 0) * angles(rad(-15), rad(0), rad(15)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(0.8, -1, 0.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-45), rad(0)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1, -1, -0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(10), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		elseif frame == 4 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-60)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.25 , 0.35, -0.5) * angles(rad(75), rad(0), rad(-60)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.4, 0.5, 0) * angles(rad(0), rad(0), rad(15)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(0.8, -1, 0.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-45), rad(0)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-0.95, -1, 0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(25), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		end
	elseif anim == "waiting" then
		if frame == 1 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0.25, 0) * angles(rad(0), rad(0), rad(-60)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(30)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.5, 0.25, -0) * angles(rad(45), rad(0), rad(-25)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.5, 0.5, -0.25) * angles(rad(50), rad(0), rad(0)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(0.9, -1, 0.4) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-30), rad(0)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -1, -0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(10), rad(10)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		elseif frame == 2 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0.5, 0) * angles(rad(0), rad(0), rad(-50)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(30)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.5, 0.25, -0) * angles(rad(55), rad(0), rad(-25)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.5, 0.5, -0.25) * angles(rad(75), rad(0), rad(0)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(0.9, -1, 0.4) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-20), rad(0)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -0.75, -0.75) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(-10), rad(25)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		elseif frame == 3 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0.75, 0) * angles(rad(0), rad(0), rad(-50)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(30)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.25, 0.5, -0.5) * angles(rad(90), rad(0), rad(-45)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.275, 0.35, -0.5) * angles(rad(100), rad(-0), rad(60)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1, -1, -0.15) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-0), rad(0)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -1, -0.5) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(5), rad(-10), rad(15)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		elseif frame == 4 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,1, 0) * angles(rad(0), rad(0), rad(-50)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(45)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(0.75, 0.75, -0.5) * angles(rad(20), rad(160), rad(80)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1, 0.5, -0.6) * angles(rad(160), rad(-25), rad(75)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(0.9, -1, -0.75) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(45), rad(0)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -1, -0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(15), rad(25)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		end
	elseif anim == "wave" then
		rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0+ 0.05 * sin(sine / 30)) * angles(rad(0), rad(0), rad(-0)), 0.3)
		neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0+ 0.025 * sin(sine / 25)) * angles(rad(-0), rad(0), rad(0)), 0.3)
		rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.25 , 0.75+ 0.025 * sin(sine / 45), 0) * angles(rad(0), rad(0), rad(160 + 45 * sin(sine/2.75))) * rsC0, 0.3)
		lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.25, 0.5+ 0.05 * sin(sine / 25), 0.25) * angles(rad(0), rad(30), rad(0)) * lsC0, 0.3)
		rhip.C0 = rhip.C0:Lerp(cframe(0.9, -1- 0.05 * sin(sine / 25), 0.4) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-45), rad(0)), 0.3)
		lhip.C0 = lhip.C0:Lerp(cframe(-1 , -1- 0.05 * sin(sine / 25), 0) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(10), rad(0)), 0.3)
		WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.75) *  angles(rad(0), rad(-25), rad(90)), 1)
	elseif anim == "laugh" then
		rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0+ 0.1 * sin(sine / 2.25)) * angles(rad(-30), rad(0), rad(-0)), 0.3)
		neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0+ 0.1 * sin(sine / 2.25)) * angles(rad(-10), rad(0), rad(0)), 0.3)
		rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.25, 0.75+ 0.1 * sin(sine / 2.25), -0.75) * angles(rad(100), rad(-30), rad(-90)) * rsC0, 0.3)
		lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.5, 0.5+ 0.1 * sin(sine / 2.25), 0) * angles(rad(-30), rad(0), rad(0)) * lsC0, 0.3)
		rhip.C0 = rhip.C0:Lerp(cframe(1 , -1- 0.1 * sin(sine / 2.25), 0- 0-0.05 * sin(sine / 2.25)) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-0), rad(-30)), 0.3)
		lhip.C0 = lhip.C0:Lerp(cframe(-1 , -1- 0.1 * sin(sine / 2.25), 0- 0-0.05 * sin(sine / 2.25)) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(30)), 0.3)
		WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
	elseif anim == "yes" then
		rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0+ 0.05 * sin(sine / 25)) * angles(rad(0), rad(0), rad(-45)), 0.3)
		neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0+ 0.025 * sin(sine / 25)) * angles(rad(0+ 35 * sin(sine / 5)), rad(0+ 35 * sin(sine / 5)), rad(40)), 0.1)
		rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.5 , 0.25+ 0.05 * sin(sine / 25), 0) * angles(rad(0), rad(0), rad(-30)) * rsC0, 0.3)
		lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.25, 0.5+ 0.05 * sin(sine / 25), 0.25) * angles(rad(0), rad(30), rad(0)) * lsC0, 0.3)
		rhip.C0 = rhip.C0:Lerp(cframe(0.9, -1- 0.05 * sin(sine / 25), 0.4) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-45), rad(0)), 0.3)
		lhip.C0 = lhip.C0:Lerp(cframe(-1 , -1- 0.05 * sin(sine / 25), 0) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(10), rad(0)), 0.3)
		WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.75) *  angles(rad(0), rad(-25), rad(90)), 1)
	elseif anim == "no" then
		rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0+ 0.05 * sin(sine / 25)) * angles(rad(0), rad(0), rad(-45)), 0.3)
		neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0+ 0.025 * sin(sine / 30)) * angles(rad(-0), rad(0), rad(40+ 45 * sin(sine / 2.5))), 0.3)
		rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.5 , 0.25+ 0.05 * sin(sine / 25), 0) * angles(rad(0), rad(0), rad(-30)) * rsC0, 0.3)
		lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.25, 0.5+ 0.05 * sin(sine / 25), 0.25) * angles(rad(0), rad(30), rad(0)) * lsC0, 0.3)
		rhip.C0 = rhip.C0:Lerp(cframe(0.9, -1- 0.05 * sin(sine / 25), 0.4) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-45), rad(0)), 0.3)
		lhip.C0 = lhip.C0:Lerp(cframe(-1 , -1- 0.05 * sin(sine / 25), 0) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(10), rad(0)), 0.3)
		WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.75) *  angles(rad(0), rad(-25), rad(90)), 1)
	elseif anim == "idleneck" then
		if frame == 1 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-45)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(15)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.5 , 0.5, -0.25) * angles(rad(90), rad(0), rad(-30)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.25, 0.5, 0.25) * angles(rad(0), rad(30), rad(0)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(0.9, -1, 0.4) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-45), rad(0)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -1, 0) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(10), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.75) *  angles(rad(0), rad(-25), rad(90)), 1)
		elseif frame == 2 then 
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-45)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(15)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.5 , 0.25, -0.25) * angles(rad(165), rad(0), rad(-35)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.25, 0.5, 0.25) * angles(rad(0), rad(30), rad(0)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(0.9, -1, 0.4) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-45), rad(0)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -1, 0) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(10), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.75) *  angles(rad(0), rad(-25), rad(90)), 1)
		elseif frame == 3 then 
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-45)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(15)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.35 , 0.2, -0.5) * angles(rad(200), rad(0), rad(-30)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.25, 0.5, 0.25) * angles(rad(0), rad(30), rad(0)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(0.9, -1, 0.4) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-45), rad(0)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -1, 0) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(10), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.75) *  angles(rad(0), rad(-25), rad(90)), 1)
		elseif frame == 4 then 
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-45)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(-15), rad(-15)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.2 , 0, -0.5) * angles(rad(200), rad(0), rad(-15)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.25, 0.5, 0.25) * angles(rad(0), rad(30), rad(0)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(0.9, -1, 0.4) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-45), rad(0)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -1, 0) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(10), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.75) *  angles(rad(0), rad(-25), rad(90)), 1)
		elseif frame == 5 then 
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-45)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(-0), rad(-15)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.35 , 0.2, -0.5) * angles(rad(200), rad(0), rad(-30)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.25, 0.5, 0.25) * angles(rad(0), rad(30), rad(0)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(0.9, -1, 0.4) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-45), rad(0)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -1, 0) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(10), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.75) *  angles(rad(0), rad(-25), rad(90)), 1)
		elseif frame == 6 then 
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-45)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-12.5), rad(-0), rad(-10)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.2 , 0.25, -0.65) * angles(rad(215), rad(0), rad(-22.5)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.25, 0.5, 0.25) * angles(rad(0), rad(30), rad(0)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(0.9, -1, 0.4) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-45), rad(0)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -1, 0) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(10), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.75) *  angles(rad(0), rad(-25), rad(90)), 1)
		end	
	elseif anim == "punch" then
		if frame == 1 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-45)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(45)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.5 , 0.25, 0) * angles(rad(0), rad(0), rad(-30)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.25, 0.5, 0.25) * angles(rad(30), rad(30), rad(-10)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(0.9, -1, 0.4) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-45), rad(0)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -1, 0) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(10), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.3) *  angles(rad(0), rad(-0), rad(90)), 1)
		elseif frame == 2 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-80)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(45)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.4, 0.25, 0) * angles(rad(10), rad(0), rad(-25)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.25, 0.5, 0.25) * angles(rad(45), rad(45), rad(-30)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1, -1, -0.15) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-15), rad(0)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -1, -0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(10), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.3) *  angles(rad(0), rad(-0), rad(90)), 1)
		elseif frame == 3 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,-0, 0) * angles(rad(0), rad(0), rad(-100)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(55)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.4, 0.25, 0) * angles(rad(15), rad(0), rad(-25)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1, 0.4, 0.5) * angles(rad(45), rad(75), rad(-30))  * angles(rad(45), rad(-0), rad(0)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1, -1, -0.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-0), rad(0)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -1, 0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(45), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.3) *  angles(rad(0), rad(-0), rad(90)), 1)
		end	
	elseif anim == "fpunch" then
		if frame == 1 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-75)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(45)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.5 , 0.25, -0.25) * angles(rad(35), rad(20), rad(-30)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.25, 0.5, 0) * angles(rad(15), rad(0), rad(-0)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1, -1, 0.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-30), rad(0)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -1, 0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(15), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		elseif frame == 2 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-105)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(5), rad(0), rad(60)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.5 , 0.5, -0.25) * angles(rad(35), rad(20), rad(25)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.25, 0.55, 0.45) * angles(rad(30), rad(50), rad(-25)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1, -1, -0.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-5), rad(0)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -1, 0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(45), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		elseif frame == 3 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(15), rad(0), rad(15)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(10), rad(0), rad(0)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.5 , 0.25, 0) * angles(rad(65), rad(0), rad(0)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.45, 0.6, 0) * angles(rad(15), rad(0), rad(-15)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(0.45, -1.15, 1) *  angles(rad(7.5), rad(90), rad(0)) * angles(rad(-0), rad(-95), rad(0)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-0.45 , -0.8, -0.9) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-7.5), rad(-40), rad(-15)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.9, 0, -1.4) *  angles(rad(0), rad(-0), rad(90)), 1)
		elseif frame == 4 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(30), rad(-0), rad(45)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(15), rad(0), rad(0)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.5 , 0.25, 0) * angles(rad(100), rad(15), rad(30)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.45, 0.75, 0) * angles(rad(0), rad(-30), rad(-65)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(0, -1.25, 0.75) *  angles(rad(7.5), rad(90), rad(0)) * angles(rad(5), rad(-115), rad(10)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-0.25, -1, -0.85) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(5), rad(-40), rad(-25)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.9, 0, -1.4) *  angles(rad(0), rad(-0), rad(90)), 1)
		elseif frame == 5 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(15), rad(-0), rad(45)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(15), rad(0), rad(-20)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.5 , 0.5, 0.25) * angles(rad(50), rad(-15), rad(15)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.4, 0.6, 0) * angles(rad(45), rad(0), rad(-65)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(-0.25, -1, 0.75) *  angles(rad(7.5), rad(90), rad(0)) * angles(rad(5), rad(-125), rad(10)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-0.5, -1, -1) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(2.5), rad(-45), rad(-12.5)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.9, 0, -1.4) *  angles(rad(0), rad(-0), rad(90)), 1)
		elseif frame == 6 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(10), rad(-0), rad(25)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(15), rad(0), rad(-20)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.5 , 0.5, 0.25) * angles(rad(50), rad(-15), rad(15)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.4, 0.6, 0) * angles(rad(60), rad(-20), rad(-35)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(-0.25, -1, 0.75) *  angles(rad(7.5), rad(90), rad(0)) * angles(rad(5), rad(-125), rad(10)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-0.5, -0.9, -1) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(2.5), rad(-25), rad(-5)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.9, 0, -1.4) *  angles(rad(0), rad(-0), rad(90)), 1)
		elseif frame == 7 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(-0), rad(-25)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(5), rad(0), rad(10)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.5 , 0.5, 0.25) * angles(rad(25), rad(0), rad(-15)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.4, 0.6, 0) * angles(rad(-20), rad(0), rad(-5)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(0.55, -1, 0.75) * angles(rad(-10), rad(90), rad(0)) * angles(rad(0), rad(-75), rad(-0)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1, -1, -0.5) * angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(-25), rad(-0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, 0, -2) *  angles(rad(0), rad(-50), rad(90)), 1)
		end	
	elseif anim == "dpunch" then
		if frame == 1 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, -0.75) * angles(rad(10), rad(-15), rad(-60)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(45)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.5 , 0.5, 0) * angles(rad(40), rad(0), rad(-15)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.25, 0.25, 0.25) * angles(rad(10), rad(55), rad(0)) * angles(rad(40), rad(0), rad(15)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1.25, -0.1, -0.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(10), rad(-30), rad(15)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -0.65, -1) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(10), rad(45)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.8, 0, -0.9) *  angles(rad(0), rad(40), rad(90)), 1)
		elseif frame == 2 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, -0.75) * angles(rad(10), rad(-15), rad(-60)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(45)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.5 , 0.5, 0) * angles(rad(40), rad(0), rad(-15)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.5, 0.25, -0) * angles(rad(10), rad(55), rad(0)) * angles(rad(90), rad(0), rad(15)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1.25, -0.1, -0.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(10), rad(-30), rad(15)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -0.65, -1) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(10), rad(45)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.25, -0.25, -0.25) *  angles(rad(0), rad(75), rad(90)), 1)
		end	
	elseif anim == "apunch" then
		if frame == 1 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(15), rad(-15), rad(-60)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.5, 0.5, -0.25) * angles(rad(50), rad(20), rad(30)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.25, 0.25, 0.25) * angles(rad(60), rad(35), rad(-30)) *  angles(rad(15), rad(0), rad(0)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1.15, -0.5, -1) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-15), rad(-35)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1.15, -0.25, -0.65) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(30), rad(50)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, 0, -0.75) *  angles(rad(0), rad(35), rad(90)), 1)
		elseif frame == 2 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(35), rad(0), rad(0)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(15), rad(0), rad(0)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.5, 0.5, -0.25) * angles(rad(65), rad(10), rad(15)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.25, 0.25, 0.25) * angles(rad(60), rad(35), rad(-60)) *  angles(rad(15), rad(0), rad(0)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1, -1.5, -0.5) *  angles(rad(0), rad(120), rad(50)) * angles(rad(30), rad(-60), rad(-45)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-0.5, -0.25, -1.75) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(-45), rad(50)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(0), rad(90)), 1)
		elseif frame == 3 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0.25) * angles(rad(50), rad(0), rad(90)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(15), rad(0), rad(-75)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.5 , 0.5, 0) * angles(rad(60), rad(0), rad(75)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.5, 0.5, -0) * angles(rad(120), rad(0), rad(-20)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(-0.25, -1, 0.75) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-30), rad(-150), rad(-65)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(1, 0, -.5) *  angles(rad(60), rad(-90), rad(0)) * angles(rad(0), rad(-120), rad(-45)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(0), rad(90)), 1)
		end	
	elseif anim == "kick" then
		if frame == 1 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(-10), rad(0), rad(-0)), 1)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 1)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.5 , 0.5, 0) * angles(rad(150), rad(0), rad(-0)) * rsC0, 1)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.25, 0.75, -0.15) * angles(rad(55), rad(0), rad(-0)) * angles(rad(-0), rad(-90), rad(0)) * lsC0, 1)
			rhip.C0 = rhip.C0:Lerp(cframe(0.5 , -0.75, 0.75) *  angles(rad(-20), rad(90), rad(0)) * angles(rad(-0), rad(-100), rad(0)), 1)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -1, 0 ) *  angles(rad(-10), rad(-90), rad(0)) * angles(rad(0), rad(45), rad(0)), 1)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.5, -0.25, -0.75) *  angles(rad(0), rad(0), rad(90)) * angles(rad(90), rad(-45), rad(25)), 1)
		elseif frame == 2 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(-10), rad(0), rad(25)), 1)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 1)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.5 , 0.5, 0) * angles(rad(115), rad(0), rad(-0)) * rsC0, 1)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.25, 0.75, -0.15) * angles(rad(75), rad(0), rad(-0)) * angles(rad(-0), rad(-90), rad(0)) * lsC0, 1)
			rhip.C0 = rhip.C0:Lerp(cframe(1.25, -0.5, -0.75) * angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-30), rad(-55)), 1)
			lhip.C0 = lhip.C0:Lerp(cframe(-0.5, -0.75, 0.6) *  angles(rad(-10), rad(-90), rad(0)) * angles(rad(0), rad(105), rad(0)), 1)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.5, -0.25, -0.75) *  angles(rad(0), rad(0), rad(90)) * angles(rad(90), rad(-45), rad(25)), 1)
		elseif frame == 3 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(-15), rad(-5), rad(45)), 1)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 1)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.25 , 0.75, 0.15) * angles(rad(115), rad(0), rad(60)) * angles(rad(-0), rad(75), rad(0)) * rsC0, 1)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.25, 0.5, 0.15) * angles(rad(75), rad(0), rad(40)) * angles(rad(-0), rad(75), rad(-140)) * lsC0, 1)
			rhip.C0 = rhip.C0:Lerp(cframe(1, -0.75, -0.25) * angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-30), rad(125)), 1)
			lhip.C0 = lhip.C0:Lerp(cframe(-0.5, -0.75, 0.6) *  angles(rad(-15), rad(-90), rad(0)) * angles(rad(0), rad(75), rad(-10)), 1)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		end	
	elseif anim == "dkick" then
		if frame == 1 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, -1) * angles(rad(0), rad(-5), rad(-60)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(45)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.5 , 0.5, 0) * angles(rad(20), rad(0), rad(-25)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.4, 0.5, 0.1) * angles(rad(10), rad(15), rad(0)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1.25, -0.3, -0.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(0), rad(-30), rad(-45)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -0, -0.5) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(10), rad(-5)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		elseif frame == 2 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, -1.25) * angles(rad(-10), rad(0), rad(-60)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(60)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.5 , 0.5, 0) * angles(rad(20), rad(0), rad(-25)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.4, 0.5, 0.1) * angles(rad(-10), rad(15), rad(0)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1.25, -0.85, -0.35) *  angles(rad(0), rad(90), rad(0)) * angles(rad(0), rad(-30), rad(-82.5)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1, -1.25, -0) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-0), rad(55), rad(-75)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		end	
	elseif anim == "akick" then
		if frame == 1 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(15)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(-15)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.5 , 0.65, -0.15) * angles(rad(140), rad(0), rad(-30)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.5, 0.5, 0) * angles(rad(-30), rad(0), rad(0)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(0.25, -1.45, 0.5) *  angles(rad(75), rad(90), rad(0)) * angles(rad(-50), rad(-135), rad(40)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(1.25, -0.5, -0.75) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(80), rad(-150), rad(-55)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.85) *  angles(rad(0), rad(-30), rad(90)), 1)
		elseif frame == 2 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(-10), rad(10), rad(-45)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(30)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.5 , 0.5, 0) * angles(rad(80), rad(10), rad(0)) * angles(rad(0), rad(0), rad(45)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.4, 0.25, 0.1) * angles(rad(-10), rad(15), rad(0)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(0.95, -1, 0.35) *  angles(rad(0), rad(90), rad(0)) * angles(rad(0), rad(-60), rad(45)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1, -1.25, -0) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-10), rad(35), rad(-75)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		end	
	elseif anim == "slash" then
		if frame == 1 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(45)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(15), rad(0), rad(-30)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1 , 0.25, -0.75) * angles(rad(30), rad(75), rad(0)) * angles(rad(50), rad(0), rad(-20)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.5, 0.25, 0) * angles(rad(35), rad(0), rad(15)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(-0.5, -1, 0.5) *  angles(rad(-20), rad(90), rad(0)) * angles(rad(-0), rad(-140), rad(0)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-0.25, -1, -1.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(-45), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		elseif frame == 2 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,-0.25, -0.25) * angles(rad(0), rad(0), rad(45)), 1)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(-45)), 1)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.65, 0.25, 0.25) * angles(rad(0), rad(-45), rad(-30)) * angles(rad(80), rad(0), rad(-0)) * rsC0, 1)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-0.5, 0.5, -1.15) * angles(rad(0), rad(-60), rad(0)) * angles(rad(90), rad(-75), rad(-30)) * lsC0, 1)
			rhip.C0 = rhip.C0:Lerp(cframe(-0.5, -0.75, 0.5) *  angles(rad(-20), rad(90), rad(0)) * angles(rad(-0), rad(-140), rad(0)), 1)
			lhip.C0 = lhip.C0:Lerp(cframe(-0, -0.75, -1) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(-45), rad(0)), 1)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0.85, -1, 1) *  angles(rad(0), rad(0), rad(90)) * angles(rad(60), rad(15), rad(-15)), 1)
		elseif frame == 3 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,-0.25, -0.5) * angles(rad(0), rad(0), rad(-100)), 1)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(45)), 1)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.65, 0.25, 0.25) * angles(rad(0), rad(-45), rad(-30)) * angles(rad(80), rad(0), rad(-0)) * rsC0, 1)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.5, 0.75, -0.5) * angles(rad(0), rad(-90), rad(0)) * angles(rad(90), rad(-75), rad(-45)) * lsC0, 1)
			rhip.C0 = rhip.C0:Lerp(cframe(1 , -0.45, -0.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-30), rad(-0), rad(0)), 1)
			lhip.C0 = lhip.C0:Lerp(cframe(-1, -0.5, -0.15) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(45), rad(0)), 1)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-2.5, -2, 0.65) *  angles(rad(25), rad(0), rad(90)) * angles(rad(50), rad(15), rad(-45)), 1)
		elseif frame == 4 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,-0.25, -0.5) * angles(rad(0), rad(0), rad(-60)), 1)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(45)), 1)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.5, 0.5, -0.25) * angles(rad(0), rad(45), rad(20)) * angles(rad(80), rad(0), rad(-0)) * rsC0, 1)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.5, 0.5, -0.25) * angles(rad(90), rad(-0), rad(0)) * angles(rad(0), rad(-0), rad(-0)) * lsC0, 1)
			rhip.C0 = rhip.C0:Lerp(cframe(1 , -0.45, -0.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-30), rad(-0), rad(0)), 1)
			lhip.C0 = lhip.C0:Lerp(cframe(-1, -0.5, -0.15) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(45), rad(0)), 1)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.5, -1.8, -2) *  angles(rad(-15), rad(0), rad(90)) * angles(rad(0), rad(-30), rad(0)), 1)
		elseif frame == 5 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(45)), 1)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(15), rad(0), rad(-30)), 1)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1 , 0.25, -0.75) * angles(rad(30), rad(75), rad(0)) * angles(rad(50), rad(0), rad(-20)) * rsC0, 1)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.5, 0.25, 0) * angles(rad(35), rad(0), rad(15)) * lsC0, 1)
			rhip.C0 = rhip.C0:Lerp(cframe(-0.5, -1, 0.5) *  angles(rad(-20), rad(90), rad(0)) * angles(rad(-0), rad(-140), rad(0)), 1)
			lhip.C0 = lhip.C0:Lerp(cframe(-0.25, -1, -1.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(-45), rad(0)), 1)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.9, -0.15, -1.25) *  angles(rad(75), rad(-10), rad(90)), 1)
		elseif frame == 6 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(-0), rad(0), rad(-0)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.5 , 0.5, 0) * angles(rad(45), rad(0), rad(-0)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.25, 0.5, -0.25) * angles(rad(55), rad(0), rad(-0)) * angles(rad(-0), rad(-15), rad(15)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(0.75 , -0.75, 0.75) *  angles(rad(-10), rad(90), rad(0)) * angles(rad(-0), rad(-100), rad(0)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-0.5, -1, -1.25) *  angles(rad(15), rad(-90), rad(0)) * angles(rad(0), rad(-45), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(0), rad(90)), 1)
		end	
	elseif anim == "fslash" then
		if frame == 1 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(15)), 1)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(10), rad(0), rad(0)), 1)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.5 , 0.25, 0) * angles(rad(65), rad(0), rad(0)) * rsC0, 1)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.45, 0.5, -0.25) * angles(rad(15), rad(0), rad(-0))*  angles(rad(0), rad(-20), rad(0)) * lsC0, 1)
			rhip.C0 = rhip.C0:Lerp(cframe(0.25, -1, 0.75) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-125), rad(0)), 1)
			lhip.C0 = lhip.C0:Lerp(cframe(-0.45 , -0.8, -0.9) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-7.5), rad(-40), rad(15)), 1)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.55) *  angles(rad(0), rad(-20), rad(90)), 1)
		elseif frame == 2 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(15), rad(-0), rad(45)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(10), rad(0), rad(0)), 1)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.5 , 0.25, 0) * angles(rad(65), rad(0), rad(40)) * rsC0, 1)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.45, 0.5, 0.25) * angles(rad(15), rad(0), rad(-60))*  angles(rad(0), rad(20), rad(0)) * lsC0, 1)
			rhip.C0 = rhip.C0:Lerp(cframe(0.25, -1, 0.75) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-125), rad(0)), 1)
			lhip.C0 = lhip.C0:Lerp(cframe(-0.25 , -0.8, -1.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-7.5), rad(-60), rad(15)), 1)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		elseif frame == 3 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(-15), rad(-140)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(10), rad(0), rad(0)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.25 , 0.75, -0.25) * angles(rad(65), rad(0), rad(40)) *  angles(rad(0), rad(45), rad(0)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.45, 0.5, -0.25) * angles(rad(15), rad(0), rad(-60))*  angles(rad(90), rad(-25), rad(60)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1 , -1, -0.75) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-30), rad(35), rad(30)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -0.85, 0.45) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-7.5), rad(75), rad(5)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		elseif frame == 4 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(-15), rad(-115)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(30)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.25 , 0.75, -0.25) * angles(rad(65), rad(0), rad(40)) *  angles(rad(0), rad(45), rad(0)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.25, 0.5, -0.45) * angles(rad(15), rad(0), rad(-60))*  angles(rad(140), rad(-25), rad(60)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1 , -0.75, -0.75) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-30), rad(35), rad(30)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -0.85, 0.45) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-7.5), rad(75), rad(-5)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		elseif frame == 5 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(10), rad(-15), rad(-75)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(30)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.5 , 0.5, 0.15) * angles(rad(30), rad(0), rad(20)) *  angles(rad(0), rad(-15), rad(0)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.25, 0.5, -0.45) * angles(rad(15), rad(0), rad(-60))*  angles(rad(100), rad(5), rad(60)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1 , -1, -0.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-10), rad(-25), rad(15)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -0.85, -0.45) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-7.5), rad(45), rad(-5)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		elseif frame == 6 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(-0), rad(-60)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(5), rad(0), rad(10)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.5 , 0.5, 0.25) * angles(rad(25), rad(0), rad(-15)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.4, 0.6, 0) * angles(rad(20), rad(0), rad(-5)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1, -1, -0) * angles(rad(-10), rad(90), rad(0)) * angles(rad(0), rad(-45), rad(10)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1, -1, -0.5) * angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(15), rad(-0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		end	
	elseif anim == "dslash" then
		if frame == 1 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, -0.75) * angles(rad(10), rad(-15), rad(-60)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(45)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.5 , 0.5, 0) * angles(rad(40), rad(0), rad(25)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.25, 0.25, 0.25) * angles(rad(10), rad(55), rad(0)) * angles(rad(75), rad(0), rad(0)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1.25, -0.1, -0.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(10), rad(-30), rad(15)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -0.65, -1) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(10), rad(45)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		elseif frame == 2 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, -0.75) * angles(rad(10), rad(-15), rad(-115)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(45)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.5 , 0.65, -0.35) * angles(rad(110), rad(0), rad(-25)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.25, 0.25, 0.25) * angles(rad(10), rad(35), rad(0)) * angles(rad(75), rad(45), rad(25)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1.25, -0.5, -0.75) *  angles(rad(0), rad(90), rad(0)) * angles(rad(10), rad(15), rad(10)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1.5, -0.65, -0.5) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(50), rad(45)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		elseif frame == 3 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, -0.75) * angles(rad(20), rad(10), rad(15)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, -0.25, -0.05) * angles(rad(60), rad(0), rad(-25)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.25 , 1, -0.35) * angles(rad(200), rad(0), rad(-60)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.25, 0.25, 0.25) * angles(rad(10), rad(125), rad(0)) * angles(rad(75), rad(90), rad(25)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1, -0.5, 0.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(10), rad(-75), rad(10)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-0.5, -0.65, -1.5) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(-30), rad(45)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		elseif frame == 4 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, -0.75) * angles(rad(15), rad(-25), rad(-60)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(45)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.5 , 0.5, 0) * angles(rad(40), rad(0), rad(-15)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.25, 0.25, 0.25) * angles(rad(10), rad(55), rad(0)) * angles(rad(50), rad(0), rad(0)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1.25, -0, -0.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(10), rad(-30), rad(20)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -0.75, -1.15) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(10), rad(45)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		end		
	elseif anim == "aslash" then
		if frame == 1 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(25), rad(-30), rad(-50)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.5, 0.5, -0.75) * angles(rad(50), rad(20), rad(15)) *  angles(rad(0), rad(40), rad(-30)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.25, 0.75, 0.25) * angles(rad(60), rad(35), rad(-30)) *  angles(rad(-25), rad(0), rad(-90)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1.15, -0.5, -1) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-15), rad(-35)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1.15, -0.25, -0.65) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(30), rad(50)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(0), rad(90)), 1)
		elseif frame == 2 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(-15), rad(-230)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(30)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.25, 1, -0.25) * angles(rad(30), rad(-10), rad(60)) *  angles(rad(0), rad(40), rad(30)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.25, 0.75, 0.25) * angles(rad(60), rad(15), rad(-30)) *  angles(rad(-25), rad(-60), rad(-60)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(-0.25, -0.75, -0.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(45), rad(30)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(0.25, -0.75, 1.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(125), rad(50)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(0), rad(90)), 1)
		elseif frame == 3 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(-15), rad(-180)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(30)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.25, 1, -0.25) * angles(rad(30), rad(-10), rad(60)) *  angles(rad(0), rad(40), rad(30)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.25, 0.75, -0) * angles(rad(60), rad(15), rad(-30)) *  angles(rad(-25), rad(-60), rad(-15)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(0.5, -1.15, -1) *  angles(rad(0), rad(90), rad(0)) * angles(rad(10), rad(30), rad(-75)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -1, 0.75) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(75), rad(30)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(0), rad(90)), 1)
		elseif frame == 4 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(20), rad(-30), rad(-60)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.5, 0.5, 0.15) * angles(rad(50), rad(55), rad(30)) * angles(rad(-75), rad(-60), rad(-50)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.45, 0.45, 0.25) * angles(rad(60), rad(35), rad(-30))*  angles(rad(-60), rad(-10), rad(0)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1 , -0, -0.75) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-15), rad(0)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -0.25, -1.15) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(35)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(0), rad(90)), 1)
		end
	elseif anim == "hslash" then
		if frame == 1 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(-25), rad(-105)), 1)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(30), rad(0), rad(10)), 1)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.5 , 0.5, 0) * angles(rad(60), rad(0), rad(-30)) * rsC0, 1)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.15, 0.5, -0.5) * angles(rad(45), rad(0), rad(60)) * angles(rad(-0), rad(0), rad(0)) * lsC0, 1)
			rhip.C0 = rhip.C0:Lerp(cframe(1 , -1, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-0), rad(25)), 1)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -1, 0 ) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-20), rad(0), rad(15)), 1)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, 0, -1.75) *  angles(rad(0), rad(-45), rad(90)), 1)
		elseif frame == 2 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,-0.25, -0.2) * angles(rad(30), rad(0), rad(-15)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-20), rad(0), rad(10)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.25 , 0.25, 0.5) * angles(rad(-20), rad(-45), rad(-40)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.5, 0.5, 0) * angles(rad(30), rad(0), rad(-130)) * angles(rad(0), rad(165), rad(-0)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(0.5, -1.15, 0.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-90), rad(0)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-0.75 , -0.25, -1) *  angles(rad(45), rad(-90), rad(0)) * angles(rad(0), rad(-60), rad(10)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		elseif frame == 3 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,-0.125, -0.15) * angles(rad(30), rad(0), rad(-15)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-20), rad(0), rad(10)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.25 , 0.25, 0.5) * angles(rad(-20), rad(-45), rad(-40)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.5, 0.5, 0) * angles(rad(-20), rad(0), rad(-180)) * angles(rad(0), rad(200), rad(-0)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(0.5, -1.15, 0.5) *  angles(rad(10), rad(90), rad(0)) * angles(rad(-0), rad(-90), rad(0)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-0.75 , -0.25, -1) *  angles(rad(30), rad(-90), rad(0)) * angles(rad(0), rad(-60), rad(10)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		elseif frame == 4 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,-0, -0) * angles(rad(10), rad(-15), rad(-60)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-15), rad(0), rad(30)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.5 , 0.25, 0) * angles(rad(20), rad(0), rad(-15)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.5, 0.75, 0) * angles(rad(-75), rad(0), rad(-180)) * angles(rad(0), rad(150), rad(-0)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1.15, -1, 0) *  angles(rad(-5), rad(90), rad(0)) * angles(rad(-0), rad(-45), rad(20)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1, -1, -0.5) *  angles(rad(30), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(10)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		end	
	elseif anim == "fhslash" then
		if frame == 1 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(45)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.5 , 0.5, 0) * angles(rad(45), rad(0), rad(-0)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.5, 0.35, 0) * angles(rad(15), rad(0), rad(20)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1 , -1, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-20), rad(-45)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -1, -0.75) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(-45), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		elseif frame == 2 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, -0.15) * angles(rad(20), rad(0), rad(60)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(-30)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.5 , 0.5, 0) * angles(rad(45), rad(0), rad(60)) * angles(rad(70), rad(-45), rad(30)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.5, 0.75, 0) * angles(rad(15), rad(0), rad(-50)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1.25, -0.75, 0.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-60), rad(-30)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -1, -0.75) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(-25), rad(30)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		elseif frame == 3 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,-0.5, -0.15) * angles(rad(20), rad(0), rad(30)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(-30)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.4 , 0.45, 0.15) * angles(rad(45), rad(0), rad(0)) * angles(rad(0), rad(-30), rad(30)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.25, 0.75, -0.25) * angles(rad(15), rad(0), rad(-50)) * angles(rad(75), rad(-60), rad(-0)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1, -0.75, -0.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-30), rad(-15)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-0.5 , -1, 0.5) *  angles(rad(-10), rad(-90), rad(0)) * angles(rad(0), rad(75), rad(-15)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		elseif frame == 4 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(-0,-0.75, -0.75) * angles(rad(45), rad(-60), rad(-45)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(-30)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.4 , 0.45, 0.15) * angles(rad(45), rad(0), rad(0)) * angles(rad(0), rad(-30), rad(30)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.25, 0.75, -0.25) * angles(rad(15), rad(0), rad(-45)) * angles(rad(75), rad(-60), rad(20)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(0.25 , 0.5, -1) *  angles(rad(60), rad(90), rad(0)) * angles(rad(-20), rad(65), rad(-25)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-0.25 , -0.5, -0.5) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-20), rad(75), rad(75)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		elseif frame == 5 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(-0,-0.75, -1.15) * angles(rad(45), rad(-60), rad(-75)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(30)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.4 , 0.45, 0.15) * angles(rad(45), rad(0), rad(0)) * angles(rad(0), rad(-30), rad(30)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.25, 0.75, 0.25) * angles(rad(15), rad(15), rad(-65)) * angles(rad(75), rad(-45), rad(20)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(-0.25 , 0.25, -1.25) *  angles(rad(60), rad(90), rad(0)) * angles(rad(-20), rad(90), rad(-30)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(0.5 , -1.75, 0.25) *  angles(rad(75), rad(-90), rad(0)) * angles(rad(-30), rad(75), rad(45)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		elseif frame == 6 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,-0.45, 0.15) * angles(rad(5), rad(-10), rad(-60)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.25 , 0.5, -0.75) * angles(rad(0), rad(60), rad(-0)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.25, 0.4, -0.75) * angles(rad(0), rad(-90), rad(0)) * angles(rad(15), rad(0), rad(-20)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(0.5, -0.9, -1) * angles(rad(15), rad(90), rad(0)) * angles(rad(0), rad(60), rad(15)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-0.5, -1.3, 0.75) * angles(rad(12.5), rad(-90), rad(0)) * angles(rad(0), rad(60), rad(20)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		end	
	elseif anim == "dhslash" then
		if frame == 1 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, -0.25) * angles(rad(30), rad(15), rad(30)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-15), rad(0), rad(-25)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.5 , 0.5, 0) * angles(rad(0), rad(-30), rad(-0)) * angles(rad(50), rad(0), rad(-30)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.4, 0.5,-0.45) * angles(rad(0), rad(-30), rad(0)) * angles(rad(15), rad(0), rad(-10)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(0.25, -1.15, 1) *  angles(rad(15), rad(90), rad(0)) * angles(rad(-0), rad(-115), rad(-0)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(0.5, -0.25, -1) *  angles(rad(30), rad(-90), rad(0)) * angles(rad(0), rad(-75), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		elseif frame == 2 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,-0.3, 0) * angles(rad(0), rad(-0), rad(-120)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(50)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.5 , 0.25, 0) * angles(rad(45), rad(0), rad(-0)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.25, 0.75, 0.75) * angles(rad(150), rad(-90), rad(0)) * angles(rad(15), rad(-0), rad(-20)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(0.5 , -1, -1) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(60), rad(0)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(0, -1.25, 0.65) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(75), rad(45)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		elseif frame == 3 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, -0) * angles(rad(10), rad(-15), rad(-60)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(45)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.5 , 0.25, 0) * angles(rad(40), rad(0), rad(-25)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.25, 0.25, 0.25) * angles(rad(10), rad(55), rad(0)) * angles(rad(115), rad(0), rad(25)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(0.5 , -0.75, -1.15) *  angles(rad(17.5), rad(90), rad(0)) * angles(rad(-0), rad(60), rad(20)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1, -1.25, 0.3) *  angles(rad(10), rad(-90), rad(0)) * angles(rad(0), rad(60), rad(25)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		end		
	elseif anim == "ahslash" then
		if frame == 1 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(10), rad(-25), rad(-60)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.5, 0.5, -0.25) * angles(rad(50), rad(20), rad(-30)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1, 0.5, 0.5) * angles(rad(60), rad(35), rad(-30)) *  angles(rad(-30), rad(20), rad(0)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1 , -0, -0.75) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-15), rad(0)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -0.25, -1.15) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(35)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(0), rad(90)), 1)
		elseif frame == 2 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(-0), rad(-0)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-20), rad(0), rad(0)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.4, 0.75, 0) * angles(rad(172), rad(0), rad(-15)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.4, 0.75, 0) * angles(rad(172), rad(0), rad(15)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1 , -0.5, -0.75) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-15), rad(-45)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -0.25, -1.15) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(35)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(0), rad(90)), 1)
		elseif frame == 3 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(-20), rad(0), rad(-0)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(20), rad(0), rad(0)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.25, 0.5, -0.5) * angles(rad(62), rad(0), rad(-40)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.1, 0.5, -0.5) * angles(rad(62), rad(0), rad(50)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1 , -0.75, -0.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-15), rad(45)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -1, -0.5) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(-60)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(0), rad(90)), 1)
		end	
	elseif anim == "dust" then
		if frame == 1 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(30)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.25, 0.75, -0.25) * angles(rad(200), rad(40), rad(-0)) * angles(rad(-0), rad(0), rad(-45)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.5, 0.5, 0) * angles(rad(-30), rad(0), rad(0)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(0.75, -1, 0.75) *  angles(rad(-10), rad(90), rad(0)) * angles(rad(-0), rad(-75), rad(-10)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-0.25, -1, -1.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(-50), rad(45)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.9, 0, -1.85) *  angles(rad(0), rad(-30), rad(90)), 1)
		elseif frame == 2 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(15), rad(-35), rad(-60)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(10), rad(0), rad(0)), 1)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.5 , 0.25, 0) * angles(rad(65), rad(0), rad(40)) * rsC0, 1)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.45, 0.5, 0.25) * angles(rad(15), rad(0), rad(-115))*  angles(rad(0), rad(-15), rad(0)) * lsC0, 1)
			rhip.C0 = rhip.C0:Lerp(cframe(1 , -0.5, -0.75) *  angles(rad(30), rad(90), rad(0)) * angles(rad(-10), rad(20), rad(5)), 1)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -0.5, -0.5) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-7.5), rad(15), rad(45)), 1)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		elseif frame == 3 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(5), rad(-10), rad(-60)),0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(10), rad(0), rad(0)),0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.5 , 0.5, 0) * angles(rad(30), rad(0), rad(15)) * rsC0,0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.45, 0.4, 0) * angles(rad(45), rad(0), rad(15))*  angles(rad(0), rad(-15), rad(0)) * lsC0,0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1.15, -0.85, -0.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(2.5), rad(-30), rad(10)),0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -1, -1) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(60)),0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, 0, -1) *  angles(rad(0), rad(30), rad(90)), 1)
		end	
	elseif anim == "ddust" then
		if frame == 1 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, -0.75) * angles(rad(-10), rad(0), rad(-0)), 1)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 1)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.25 , 0.5, -0.5) * angles(rad(115), rad(0), rad(-55)) * rsC0, 1)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.25, 0.75, -0.15) * angles(rad(-35), rad(0), rad(-0)) * angles(rad(-0), rad(-0), rad(0)) * lsC0, 1)
			rhip.C0 = rhip.C0:Lerp(cframe(1, -0.15, 0.75) *  angles(rad(-10), rad(90), rad(0)) * angles(rad(7.5), rad(-75), rad(10)),1)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -1, -1) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(10), rad(75)),1)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		elseif frame == 2 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0.5, -2) * angles(rad(-90), rad(20), rad(90)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.25 , 0.5, 0.5) * angles(rad(-45), rad(-30), rad(-0)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-0.25, 0.75, -0.85) * angles(rad(165), rad(-180), rad(20)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1 , -1, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-0), rad(90)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -0.8, -1) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(45)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		elseif frame == 3 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, -2) * angles(rad(-0), rad(0), rad(-0)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.5 , 0.25, -0.5) * angles(rad(30), rad(0), rad(-45)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.25, 0.5, -0.5) * angles(rad(110), rad(-50), rad(50)) * angles(rad(-60), rad(0), rad(0)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1.25, -0.25, -0.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(45), rad(-0), rad(20)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1.5, -0.5, -1) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(60), rad(0), rad(-20)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(-30), rad(-0), rad(90)), 1)
		end		
	elseif anim == "adust" then
		if frame == 1 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(30), rad(0), rad(-0)),1)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.5, 0.5, -0.25) * angles(rad(90), rad(0), rad(-0)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.25, 0.5, -0) * angles(rad(15), rad(0), rad(-0)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1 , -0, -0.75) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-15), rad(0)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -0.25, -1.15) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(35)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(0), rad(90)), 1)
		elseif frame == 2 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(20), rad(0), rad(45)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.5, 0.5, -0.25) * angles(rad(90), rad(0), rad(30)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.25, 0.25, -0.25) * angles(rad(-45), rad(-30), rad(-0)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1 , -0.5, -0) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-45), rad(-30), rad(-30)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-0.25, -0.75, -1.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(-50), rad(35)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, 0, -2) *  angles(rad(0), rad(-45), rad(90)), 1)
		elseif frame == 3 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(20), rad(0), rad(-105)),1)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(-15)),1)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.25 , 0.3, 0) * angles(rad(110), rad(-30), rad(60)) * rsC0,1)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.5, 0.5, 0) * angles(rad(90), rad(-30), rad(-90)) * lsC0,1)
			rhip.C0 = rhip.C0:Lerp(cframe(1 , -0.5, -0.75) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-0), rad(115)),1)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -0.5, -0.5) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-20), rad(30), rad(30)),1)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.5, -0, -0.5) *  angles(rad(0), rad(0), rad(90)) * angles(rad(60), rad(7.5), rad(0)), 1)
		elseif frame == 4 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-105)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(45)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.5 , 0.5, 0) * angles(rad(30), rad(0), rad(30)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.5, 0.5, 0) * angles(rad(40), rad(0), rad(-25)) * angles(rad(-0), rad(-30), rad(0)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1 , -0.5, -0.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-20), rad(0)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -0.75, -0.5) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(5), rad(45)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(0), rad(90)), 1)
		end		
	elseif anim == "grab" then
		if frame == 1 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(-15)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(-0)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.25, 0.25, -0.5) * angles(rad(50), rad(0), rad(-15)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.5, 0.5, 0) * angles(rad(15), rad(0), rad(0)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(0.5, -1, 0.75) * angles(rad(0), rad(90), rad(0)) * angles(rad(0), rad(-90), rad(-0)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1, -1, -0.5) * angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(-30), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		elseif frame == 2 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(0)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(-0)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.25, 0.4, -0.75) * angles(rad(100), rad(0), rad(-45)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.5, 0.5, 0) * angles(rad(15), rad(0), rad(0)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(0.45, -1, 0.75) * angles(rad(0), rad(90), rad(0)) * angles(rad(0), rad(-105), rad(-0)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-0.9, -1, -0.5) * angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(-25), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		end	
	elseif anim == "headbutt" then
		if frame == 1 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0, 0, 0) * angles(rad(-15), rad(-5), rad(45)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-35), rad(0), rad(30)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.5, 0.3, -0.5) * angles(rad(75), rad(0), rad(30)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.5, 0.5, -0.45) * angles(rad(-15), rad(-45), rad(0)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(0, -0.85, 0.6) * angles(rad(-15), rad(90), rad(0)) * angles(rad(25), rad(-135), rad(15)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-0.3, -1.15, -0.75) * angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(-80), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		elseif frame == 2 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0, 0, 0) * angles(rad(15), rad(0), rad(0)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(35), rad(0), rad(-0)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1, 0.4, -1) * angles(rad(140), rad(-55), rad(-45)) * angles(rad(-40), rad(-0), rad(-0)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.5, 0.5, 0) * angles(rad(35), rad(0), rad(0)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(0.45, -1, 0.75) * angles(rad(0), rad(90), rad(0)) * angles(rad(0), rad(-105), rad(-0)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-0.9, -1, -0.5) * angles(rad(0), rad(-90), rad(0)) * angles(rad(-0), rad(5), rad(-20)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		elseif frame == 3 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0, 0, 0) * angles(rad(15), rad(0), rad(0)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(15), rad(0), rad(-0)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1, 0.4, -1) * angles(rad(140), rad(-55), rad(-45)) * angles(rad(-40), rad(-0), rad(-0)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.5, 0.5, 0) * angles(rad(35), rad(0), rad(0)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(0.45, -1, 0.75) * angles(rad(0), rad(90), rad(0)) * angles(rad(0), rad(-105), rad(-0)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-0.9, -1, -0.5) * angles(rad(0), rad(-90), rad(0)) * angles(rad(-0), rad(5), rad(-20)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		elseif frame == 4 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(-25)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(-0)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.25, 0.4, -0.25) * angles(rad(50), rad(0), rad(-5)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.5, 0.5, 0) * angles(rad(15), rad(0), rad(0)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(0.5, -1, 0.75) * angles(rad(0), rad(90), rad(0)) * angles(rad(0), rad(-75), rad(-0)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1, -1, -0.5) * angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(-15), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		end	
	elseif anim == "agrab" then
		if frame == 1 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(15), rad(0), rad(-0)),1)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.25, 0.5, -0.5) * angles(rad(40), rad(45), rad(-15))* angles(rad(30), rad(0), rad(0)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.25, 0.5, -0) * angles(rad(15), rad(0), rad(-0)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1 , -0.5, -0.75) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-15), rad(-45)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -0.75, -1) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(30)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(0), rad(90)), 1)
		elseif frame == 2 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0,-0.15) * angles(rad(0), rad(0), rad(70)),1)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(-40)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.5, .5, 0.25) * angles(rad(140), rad(45), rad(20))* angles(rad(-30), rad(0), rad(0)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.25, 0.5, -0.75) * angles(rad(15), rad(-45), rad(0)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1 , -0.75, -0.75) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-15), rad(-45)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -0.75, -1) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(-30), rad(25)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(0), rad(90)), 1)
		elseif frame == 3 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0,0.1) * angles(rad(0), rad(-0), rad(75)),1)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(-50)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.5, .5, 0.25) * angles(rad(120), rad(30), rad(45)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.25, 0.5, -0) * angles(rad(-35), rad(-25), rad(0)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1 , -0.75, -0.75) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-10), rad(-15), rad(-45)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -0.75, -0) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-30), rad(0), rad(-15)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(0), rad(90)), 1)
		elseif frame == 4 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(-10), rad(0), rad(-0)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, -0.1, 0.1) * angles(rad(30), rad(0), rad(0)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.5 , 0.5, 0) * angles(rad(200), rad(0), rad(-0)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.5, 0.5, 0) * angles(rad(150), rad(20), rad(20)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1 , -1, 0.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-5), rad(-15), rad(-10)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-0.9 , -1, -0.5) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(15)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, 0, -0.75) *  angles(rad(0), rad(45), rad(90)), 1)
		end		
	elseif anim == "gunflame" then
		if frame == 1 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(60)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(20), rad(-10), rad(-20)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.5 , 0.5, 0) * angles(rad(90), rad(0), rad(-0)) * angles(rad(0), rad(45), rad(-0)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.25, 0.5, -0.5) * angles(rad(-45), rad(0), rad(-30)) * angles(rad(30), rad(-35), rad(-0)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(-0.75, -1, 0.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(10), rad(-150), rad(0)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(0.5, -1, -1) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(-110), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, 0, -1.95) *  angles(rad(0), rad(-40), rad(90)), 1)
		elseif frame == 2 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, -0.15) * angles(rad(10), rad(15), rad(150)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(20), rad(-10), rad(-30)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1 , 0.5, 0.25) * angles(rad(90), rad(0), rad(125))* rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.5, 0.5, -0) * angles(rad(165), rad(0), rad(-0)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(-0.75, -1, 0.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-10), rad(-150), rad(0)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(1.15, -0.25, 0.15) *  angles(rad(20), rad(-90), rad(0)) * angles(rad(10), rad(-125), rad(10)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		elseif frame == 3 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(30)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(-20)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.5 , 0.5, 0) * angles(rad(75), rad(0), rad(-0)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.35, 0.85, 0) * angles(rad(0), rad(0), rad(-45)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(0.25, -1, 1) *  angles(rad(-15), rad(90), rad(0)) * angles(rad(-0), rad(-90), rad(0)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-0.5, -1, -1) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(-30), rad(-20)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		elseif frame == 4 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-30)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(15), rad(0), rad(20)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.5 , 0.25, -0.5) * angles(rad(90), rad(0), rad(-50)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.5, 0.5, 0) * angles(rad(40), rad(0), rad(-0)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1, -1, 0.25) *  angles(rad(-25), rad(90), rad(0)) * angles(rad(-0), rad(-25), rad(20)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1, -0.75, -0.75) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(-0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		elseif frame == 5 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, -0.15) * angles(rad(20), rad(10), rad(-75)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(30)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.5 , 0.5, 0) * angles(rad(30), rad(0), rad(30)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.5, 0.5, 0) * angles(rad(90), rad(-20), rad(0)) * angles(rad(0), rad(0), rad(-30)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1 , -1.1, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(5), rad(-20), rad(0)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1, -0.5, -0.75) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-25), rad(0), rad(5)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0.25, -1.25) *  angles(rad(0), rad(-0), rad(90)) * angles(rad(0), rad(0), rad(-15)), 1)
		elseif frame == 6 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, -0.15) * angles(rad(10), rad(10), rad(-90)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(30)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.5 , 0.25, 0.25) * angles(rad(30), rad(-50), rad(0)) * angles(rad(40), rad(0), rad(-0)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.5, 0.5, 0) * angles(rad(90), rad(-10), rad(0)) * angles(rad(15), rad(0), rad(-15)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1 , -1.1, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-5), rad(-20), rad(0)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1, -0.75, -0.5) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-25), rad(0), rad(5)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0.25, -1.25) *  angles(rad(0), rad(-0), rad(90)) * angles(rad(0), rad(0), rad(-15)), 1)
		elseif frame == 7 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, -0) * angles(rad(0), rad(0), rad(-90)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(15)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.5 , 0, 0.25) * angles(rad(30), rad(-50), rad(0)) * angles(rad(60), rad(0), rad(-0)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.5, 0.5, 0) * angles(rad(90), rad(-10), rad(0)) * angles(rad(45), rad(0), rad(15)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1 , -1, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-5), rad(-25), rad(0)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1, -0.85, -0.5) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-20), rad(0), rad(5)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0.25, -1.25) *  angles(rad(0), rad(-0), rad(90)) * angles(rad(0), rad(0), rad(-15)), 1)
		elseif frame == 8 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, -0) * angles(rad(0), rad(0), rad(-75)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(15)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.5 , 0.35, -0) * angles(rad(0), rad(-25), rad(0)) * angles(rad(30), rad(0), rad(0)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.5, 0.5, 0) * angles(rad(90), rad(15), rad(0)) * angles(rad(0), rad(0), rad(0)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1.05, -1, 0.15) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-10), rad(-25), rad(0)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1, -0.9, -0.5) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-15), rad(0), rad(5)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0.25, -1.25) *  angles(rad(0), rad(-0), rad(90)) * angles(rad(0), rad(0), rad(-15)), 1)
		elseif frame == 9 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,-0.5, -0.85) * angles(rad(0), rad(0), rad(-115)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(-10), rad(-15)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.5 , -0.15, 0) * angles(rad(120), rad(0), rad(-0)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.5, 0.3, 0.25) * angles(rad(90), rad(0), rad(-105)) * angles(rad(-15), rad(0), rad(0)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(0.65, -0.5, -0.75) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-60), rad(15), rad(15)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1.15, -0.25, 0.5) *  angles(rad(-30), rad(-90), rad(0)) * angles(rad(0), rad(75), rad(25)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		end
	elseif anim == "viper" then
		if frame == 1 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, -1.25) * angles(rad(10), rad(-0), rad(-75)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(45)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.5 , 0.5, 0) * angles(rad(130), rad(0), rad(45)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.4, 0.25, 0) * angles(rad(90), rad(-10), rad(0)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1.25, -1.25, -0) *  angles(rad(0), rad(130), rad(0)) * angles(rad(0), rad(-50), rad(-75)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -0.75, -0.75) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(10), rad(65)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		elseif frame == 2 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, -0.5) * angles(rad(20), rad(10), rad(-125)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-10), rad(0), rad(-15)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.25 , -0.15, 0) * angles(rad(30), rad(-60), rad(30)) * angles(rad(75), rad(0), rad(-0)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.5, 0.25, 0) * angles(rad(90), rad(-20), rad(0)) * angles(rad(-20), rad(10), rad(-60)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(0.75, -1, -0.75) *  angles(rad(0), rad(90), rad(0)) * angles(rad(15), rad(15), rad(-20)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1.15, -0.45, -0.15) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-35), rad(25), rad(15)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0.25, -1.25) *  angles(rad(0), rad(-0), rad(90)) * angles(rad(0), rad(0), rad(-15)), 1)
		elseif frame == 3 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(15), rad(5), rad(-160)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(0.8, 0.5, 0.25) * angles(rad(-65), rad(180), rad(-0)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.1, 0.75, 0.2) * angles(rad(30), rad(0), rad(-120)) * angles(rad(45), rad(10), rad(-15)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1 , -0.5, 0 ) *  angles(rad(0), rad(60), rad(0)) * angles(rad(-55), rad(-0), rad(90)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -1, 0 ) *  angles(rad(-20), rad(-90), rad(0)) * angles(rad(0), rad(45), rad(20)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		elseif frame == 4 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(52.5), rad(5), rad(90)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(0.75, 0.5, 0.25) * angles(rad(-65), rad(180), rad(-60)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1, 0.75, -0.25) * angles(rad(30), rad(0), rad(-120)) * angles(rad(115), rad(45), rad(40)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1 , -0.5, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-25), rad(-0), rad(-20)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -0.75, 0 ) *  angles(rad(-20), rad(-90), rad(0)) * angles(rad(-25), rad(45), rad(-15)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		elseif frame == 5 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(45), rad(0), rad(0)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1, 0.5, 0.25) * angles(rad(-65), rad(180), rad(-45)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-0.75, 0.5, -1.15) * angles(rad(90), rad(-30), rad(75)) * angles(rad(40), rad(-35), rad(20)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(0.8, -1, -0.45) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(40), rad(-20)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -1, 0.5) *  angles(rad(-20), rad(-90), rad(0)) * angles(rad(-0), rad(0), rad(45)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		elseif frame == 6 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(30), rad(-10), rad(-60)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.5, 0.5, -0.25) * angles(rad(50), rad(45), rad(-30)) * angles(rad(-30), rad(-0), rad(0)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.25, 0.45, 0.75) * angles(rad(60), rad(35), rad(0)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1 , -0, -0.75) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-15), rad(0)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -0.25, -1) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-20), rad(0), rad(15)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(0), rad(90)), 1)
		end	
	elseif anim == "viperkick" then
		if frame == 1 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(45), rad(0), rad(-75)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.2, 0.75, 0.2) * angles(rad(90), rad(30), rad(90)) * angles(rad(-0), rad(45), rad(0)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.5, 0.5, -0.25) * angles(rad(60), rad(-15), rad(25)) * angles(rad(-0), rad(-20), rad(0)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(0.5, -1, -1) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(75), rad(0)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-0.75, -1, 0.75) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(60), rad(60)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		elseif frame == 2 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(-30), rad(-15), rad(120)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-20), rad(-20), rad(-0)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.5, 0.5, 0.5) * angles(rad(135), rad(0), rad(60)) * angles(rad(-65), rad(35), rad(75)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.4, 0.5, 0.25) * angles(rad(0), rad(30), rad(0)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(0.5, -1, -1.5) *  angles(rad(0), rad(45), rad(0)) * angles(rad(30), rad(90), rad(90)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-0.75, -1, 0.75) *  angles(rad(0), rad(-120), rad(0)) * angles(rad(-20), rad(60), rad(60)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		elseif frame == 3 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(-75), rad(30), rad(150)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0.25) * angles(rad(-30), rad(-30), rad(-50)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.5, 0.5, 0.5) * angles(rad(135), rad(0), rad(60)) * angles(rad(-65), rad(-35), rad(75)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.4, 0.5, 0.25) * angles(rad(60), rad(30), rad(-40)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(0.85, -1, 0.35) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-75), rad(-90), rad(0)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-0.85, -0.8, 0.35) *  angles(rad(0), rad(-40), rad(-30)) * angles(rad(-20), rad(0), rad(-60)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		elseif frame == 4 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(-10), rad(45), rad(90)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0.1) * angles(rad(-15), rad(-15), rad(-35)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.5, 0.5, 0.5) * angles(rad(135), rad(0), rad(0)) * angles(rad(-65), rad(-35), rad(75)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.5, 0.5, 0) * angles(rad(60), rad(20), rad(-15)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1 , -1.5, 0.5) *  angles(rad(45), rad(90), rad(0)) * angles(rad(-0), rad(-90), rad(75)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -1, 0 ) *  angles(rad(0), rad(-75), rad(0)) * angles(rad(0), rad(15), rad(-65)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		elseif frame == 5 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(20), rad(25), rad(45)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1, 0.75, 0.2) * angles(rad(45), rad(-60), rad(70)) * angles(rad(0), rad(-0), rad(85)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.35, 0.5, -0.65) * angles(rad(30), rad(-45), rad(15)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(0.85, -1, 0.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-15), rad(-45), rad(-5)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-0.75, -1, -0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(-55), rad(30)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		elseif frame == 6 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(45), rad(0), rad(-30)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-20), rad(0), rad(0)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.25, 0.5, 0) * angles(rad(-125), rad(160), rad(-75)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.25, 0.35, -0.25) * angles(rad(50), rad(20), rad(30)) * angles(rad(-0), rad(-25), rad(0)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(0.65, -1, -0.75) *  angles(rad(0), rad(130), rad(0)) * angles(rad(-30), rad(30), rad(15)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -1, 0.5) *  angles(rad(-20), rad(-60), rad(0)) * angles(rad(-0), rad(0), rad(25)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		end	
	elseif anim == "gviper" then
		if frame == 1 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0,-0.15) * angles(rad(10), rad(-10), rad(45)),1)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(20), rad(0), rad(-40)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.35, 0.15, 0.25) * angles(rad(140), rad(45), rad(20))* angles(rad(-50), rad(0), rad(-15)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.25, 0.5, -0.25) * angles(rad(15), rad(-30), rad(15))* angles(rad(-25), rad(0), rad(0)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(0, -0.8, 1) *  angles(rad(0), rad(90), rad(0)) * angles(rad(10), rad(-115), rad(20)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(0.5, -1, -1) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(-90), rad(25)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, 0, -1.75) *  angles(rad(0), rad(-30), rad(90)), 1)
		elseif frame == 2 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, -1) * angles(rad(30), rad(20), rad(45)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(10), rad(0), rad(0)), 1)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.25 , 0.25, -0.5) * angles(rad(125), rad(0), rad(-15)) * rsC0, 1)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.45, 0.5, 0.25) * angles(rad(15), rad(0), rad(-60))*  angles(rad(50), rad(0), rad(-30)) * lsC0, 1)
			rhip.C0 = rhip.C0:Lerp(cframe(-0.25, -1, 0.75) *  angles(rad(0), rad(90), rad(0)) * angles(rad(0), rad(-115), rad(-65)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(1, -1.25, -0.5) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(35), rad(-130), rad(125)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		elseif frame == 3 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, -2) * angles(rad(90), rad(0), rad(0)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-35), rad(0), rad(0)), 1)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1 , 1.75, -0.25) * angles(rad(175), rad(60), rad(-15))*  angles(rad(30), rad(0), rad(-15)) * rsC0, 1)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.25, 0.5, 0.5) * angles(rad(0), rad(75), rad(-0))*  angles(rad(60), rad(0), rad(-30)) * lsC0, 1)
			rhip.C0 = rhip.C0:Lerp(cframe(1 , -1, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-0), rad(0)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -0, -0.5) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(10)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		elseif frame == 4 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, -1) * angles(rad(15), rad(-30), rad(-75)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(20)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.25 , 0.75, -0.5) * angles(rad(180), rad(75), rad(-60)) * angles(rad(15), rad(-0), rad(0)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.5, 0.5, 0) * angles(rad(30), rad(0), rad(-30)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1 , -0, -0.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-15), rad(-30), rad(30)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -1, -0.75) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(45)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		elseif frame == 5 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, -0.5) * angles(rad(5), rad(-15), rad(-60)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(20)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.25, 0.75, -0.5) * angles(rad(-20), rad(50), rad(60)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.25, 0.5, 0) * angles(rad(0), rad(0), rad(-60)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1 , -0.5, -0.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-15), rad(-30), rad(30)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -0.5, -1.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(45)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		elseif frame == 6 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, -0) * angles(rad(0), rad(-0), rad(-45)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(30)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.25, 0.5, -0.25) * angles(rad(-20), rad(25), rad(60)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.25, 0.75, 0) * angles(rad(0), rad(0), rad(-120)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1 , -0.75, -0) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-30), rad(-60), rad(-15)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -0.5, -1.35) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(30)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		end	
	elseif anim == "revolver" then
		if frame == 1 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, -0) * angles(rad(0), rad(-0), rad(-75)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(-15)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.25, 0.75, -0) * angles(rad(-20), rad(25), rad(60)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.25, 0.75, 0) * angles(rad(0), rad(0), rad(-120)) * angles(rad(45), rad(-0), rad(-0)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1 , -0.75, -0) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-15), rad(-60), rad(35)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -0.5, -1.35) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(45)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		elseif frame == 2 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, -0) * angles(rad(0), rad(-0), rad(-180)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(-0)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.25, 0.5, 0.25) * angles(rad(-20), rad(-25), rad(0)) * angles(rad(-30), rad(0), rad(-0)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.25, 0.75, -0.5) * angles(rad(0), rad(0), rad(-120)) * angles(rad(115), rad(30), rad(-30)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1 , -0.75, -0.5) *  angles(rad(0), rad(120), rad(0)) * angles(rad(-0), rad(-45), rad(125)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -1, -0) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(15)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		elseif frame == 3 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, -0) * angles(rad(20), rad(-0), rad(90)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(-0)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.25, 0.35, 0.25) * angles(rad(-0), rad(-125), rad(0)) * angles(rad(50), rad(0), rad(-45)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.25, 0.75, -0.5) * angles(rad(0), rad(0), rad(-120)) * angles(rad(75), rad(45), rad(15)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(0.8, 0.75, -1) *  angles(rad(0), rad(120), rad(0)) * angles(rad(-60), rad(-45), rad(160)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-0.9, -1.25, -0.05) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(35), rad(0), rad(15)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		elseif frame == 4 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, -0) * angles(rad(10), rad(-0), rad(75)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(-0)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.25, 0.35, 0.25) * angles(rad(-0), rad(-125), rad(0)) * angles(rad(50), rad(0), rad(-45)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.25, 0.75, -0.5) * angles(rad(0), rad(0), rad(-120)) * angles(rad(75), rad(45), rad(15)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(0.8, 0.3, -1) *  angles(rad(0), rad(120), rad(0)) * angles(rad(15), rad(-45), rad(150)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-0.9, -1.25, -0.05) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(15), rad(0), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		elseif frame == 5 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, -0) * angles(rad(0), rad(-0), rad(60)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(-0)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.25, 0.35, 0.25) * angles(rad(-0), rad(-125), rad(0)) * angles(rad(90), rad(0), rad(-90)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.25, 0.75, -0.5) * angles(rad(0), rad(0), rad(-120)) * angles(rad(45), rad(45), rad(15)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1 , -1, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-30), rad(90)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-0.9, -0.75, -0) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-15), rad(0), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		elseif frame == 6 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, -0) * angles(rad(-10), rad(-0), rad(75)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(-0)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.25, 0.35, 0.25) * angles(rad(-0), rad(-125), rad(0)) * angles(rad(90), rad(0), rad(-90)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.25, 0.75, -0.5) * angles(rad(0), rad(0), rad(-120)) * angles(rad(45), rad(45), rad(15)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1 , -1, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-30), rad(45)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-0.9, -0.75, -0) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-15), rad(0), rad(45)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		elseif frame == 7 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, -0) * angles(rad(-15), rad(-0), rad(60)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(-0)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.25, 0.35, 0.25) * angles(rad(-0), rad(-125), rad(0)) * angles(rad(90), rad(-50), rad(-90)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.25, 0.75, -0) * angles(rad(0), rad(0), rad(-120)) * angles(rad(15), rad(15), rad(15)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1 , -1, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(15), rad(-15)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-0.8, -0.75, 0.5) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-30), rad(30), rad(75)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		elseif frame == 8 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-0)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.5 , 0.5, 0) * angles(rad(45), rad(0), rad(-0)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.25, 0.75, 0) * angles(rad(0), rad(0), rad(-115)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1 , -1, 0.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-30), rad(0)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -1, -0.75) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(60)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		end		
	elseif anim == "bringer" then
		if frame == 1 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(5), rad(10), rad(-105)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-10), rad(0), rad(15)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.5 , 0.5, 0) * angles(rad(90), rad(40), rad(-0)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.25, 0.75, 0) * angles(rad(0), rad(0), rad(-65)) * angles(rad(-15), rad(-0), rad(-0)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1 , -0.75, -0.75) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-0), rad(-35)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1.15, -0.5, -0.5) *  angles(rad(-20), rad(-90), rad(0)) * angles(rad(-45), rad(35), rad(60)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		elseif frame == 2 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0.25) * angles(rad(90), rad(-20), rad(25)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-25), rad(0), rad(-25)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.25 , 0.85, 0.15) * angles(rad(60), rad(0), rad(55)) * angles(rad(55), rad(-0), rad(0)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.25, 0.5, 0.15) * angles(rad(120), rad(0), rad(-75)) * angles(rad(30), rad(-30), rad(0))  * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1 , -1, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-0), rad(-30)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-0.25, -0.5, -0.5) *  angles(rad(75), rad(-90), rad(0)) * angles(rad(0), rad(-90), rad(-15)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(0), rad(90)), 1)
		elseif frame == 3 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(5), rad(-5), rad(-45)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1, 0.75, -0.45) * angles(rad(60), rad(60), rad(55)) * angles(rad(75), rad(-0), rad(-30)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.25, 0.5, -0.5) * angles(rad(120), rad(0), rad(60)) * angles(rad(-0), rad(55), rad(-0)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1 , -1, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-20), rad(-0), rad(-30)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -1.25, -0.5) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(15), rad(-30), rad(-15)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(0), rad(90)), 1)
		end	
	elseif anim == "skykick" then
		if frame == 1 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(7.5), rad(-12.5), rad(-50)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.25 , 0.5, -0.5) * angles(rad(0), rad(45), rad(20)) * angles(rad(-20), rad(-0), rad(0)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.25, 0.75, 0) * angles(rad(0), rad(0), rad(-60)) * angles(rad(45), rad(-0), rad(0)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1 , -0.65, -0.75) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-20), rad(15), rad(-20)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -1, -0.85) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(60)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		elseif frame == 2 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(45)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(20), rad(0), rad(-30)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.5 , 0.5, 0) * angles(rad(125), rad(0), rad(30)) * angles(rad(10), rad(-0), rad(-15)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.25, 0.65, 0.5) * angles(rad(90), rad(0), rad(-120)) * angles(rad(-45), rad(-75), rad(-45)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(0, -1.25, 0.75) *  angles(rad(-10), rad(90), rad(0)) * angles(rad(-50), rad(-160), rad(-60)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-0.45, -0.75, -1) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(-45), rad(-90)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		elseif frame == 3 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(30), rad(0), rad(-25)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.5, 0.5, -0.25) * angles(rad(50), rad(20), rad(-30)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.25, 0.25, 0.25) * angles(rad(60), rad(35), rad(-30)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1 , -0, -0.75) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-15), rad(0)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -0.25, -1.15) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(35)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(0), rad(90)), 1)
		end	
	elseif anim == "wildthrow" then
		if frame == 1 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(-15)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(-0)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.25, 0.25, -0.5) * angles(rad(75), rad(0), rad(-15)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.5, 0.5, 0) * angles(rad(15), rad(0), rad(0)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(0.5, -1, 0.75) * angles(rad(0), rad(90), rad(0)) * angles(rad(0), rad(-90), rad(-0)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1, -1, -0.5) * angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(-20), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		elseif frame == 2 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(30)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(20), rad(0), rad(-30)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.5, 0.4, 0.15) * angles(rad(100), rad(5), rad(30)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.35, 0.5, -0.5) * angles(rad(25), rad(0), rad(15)) * angles(rad(0), rad(-30), rad(-0)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(-0.25, -1, 0.85) * angles(rad(0), rad(90), rad(0)) * angles(rad(0), rad(-145), rad(-0)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-0.6, -1, -1) * angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(-35), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		elseif frame == 3 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(60)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(60)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.35, 0.4, 0.25) * angles(rad(90), rad(5), rad(45)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.25, 0.65, 0.15) * angles(rad(75), rad(0), rad(15)) * angles(rad(-15), rad(-45), rad(-60)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1 , -1, 0.75) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-60), rad(0)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-0.5, -1, -1) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(-45), rad(-60)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		elseif frame == 4 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0, 0, 0) * angles(rad(7.5), rad(0), rad(90)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(60)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.15, 0.4, 0.35) * angles(rad(90), rad(5), rad(90)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.25, 0.65, 0.15) * angles(rad(75), rad(0), rad(15)) * angles(rad(-15), rad(-45), rad(-60)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1 , -0.75, 0.75) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-15), rad(-60), rad(-5)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1, -0.5, -0) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-60), rad(7.5), rad(30)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		elseif frame == 5 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(135)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(60)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.15, 0.4, 0.5) * angles(rad(90), rad(5), rad(90)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-0.75, 0.65, 0.25) * angles(rad(75), rad(25), rad(-60)) * angles(rad(-15), rad(-90), rad(-45)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1 , -1, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(25), rad(-20)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -0.75, 0 ) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-20), rad(35), rad(-30)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		elseif frame == 6 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, -0.35) * angles(rad(-0), rad(-45), rad(-60)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.25 , 0.5, -0.5) * angles(rad(90), rad(45), rad(-25)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.5, 0.75, 0) * angles(rad(-50), rad(75), rad(-30)) * angles(rad(30), rad(-0), rad(0)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(0.5, -0.65, -0.15) *  angles(rad(-25), rad(60), rad(-30)) * angles(rad(-50), rad(-75), rad(15)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-0.85, -0.75, -0.65) *  angles(rad(0), rad(-100), rad(0)) * angles(rad(-30), rad(-40), rad(-60)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		elseif frame == 7 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(5), rad(-10), rad(-60)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.25 , 0.5, -0.75) * angles(rad(15), rad(60), rad(-0)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.5, 0.5, 0) * angles(rad(0), rad(0), rad(-25)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1 , -1, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(5), rad(-25), rad(15)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -0.75, -0.5) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(15)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		elseif frame == 8 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-90)),1)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)),1)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.5 , 0, -1) * angles(rad(60), rad(0), rad(-75)) * rsC0,1)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.5, 0.25, -1) * angles(rad(90), rad(0), rad(75)) * lsC0,1)
			rhip.C0 = rhip.C0:Lerp(cframe(1 , -1, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-30), rad(0)),1)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -1, 0 ) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(30), rad(0)),1)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.5) *  angles(rad(0), rad(15), rad(90)), 1)
		end	
	elseif anim == "sidewinder" then
		if frame == 1 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-75)), 1)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 1)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.5 , 0.25, -0.5) * angles(rad(20), rad(0), rad(-30)) * rsC0, 1)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.5, 0.5, 0) * angles(rad(45), rad(20), rad(-20)) * lsC0, 1)
			rhip.C0 = rhip.C0:Lerp(cframe(1 , -0.85, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-20), rad(-30), rad(-10)), 1)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -1, -0.5) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(20), rad(10)), 1)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -0.15, -1) *  angles(rad(10), rad(45), rad(90)), 1)
		elseif frame == 2 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, -0.45) * angles(rad(10), rad(-20), rad(-60)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(20)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.5 , 0.75, -0.25) * angles(rad(90), rad(30), rad(-20)) * angles(rad(45), rad(45), rad(-40)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.25, 0.75, 0) * angles(rad(0), rad(25), rad(-90)) * angles(rad(-35), rad(10), rad(-0)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1, -0.25, -0.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-20), rad(-40), rad(0)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1, -0.15, -0.75) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-5), rad(10), rad(7.5)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		elseif frame == 3 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(10), rad(-0), rad(45)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(15), rad(0), rad(0)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.25 , 0.75, -0.5) * angles(rad(100), rad(15), rad(30)) * angles(rad(10), rad(135), rad(-30)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.3, 0.75, 0) * angles(rad(0), rad(-30), rad(-65)) * angles(rad(10), rad(20), rad(-15)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(-0.25, -1, 1) *  angles(rad(7.5), rad(90), rad(0)) * angles(rad(25), rad(-135), rad(20)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-0.25, -0.85, -1.25) *  angles(rad(10), rad(-90), rad(0)) * angles(rad(25), rad(-90), rad(20)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		elseif frame == 4 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(5), rad(-0), rad(30)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(15), rad(0), rad(0)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.15 , 0.75, -1.15) * angles(rad(100), rad(15), rad(30)) * angles(rad(60), rad(-90), rad(0)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.3, 0.75, 0) * angles(rad(0), rad(-30), rad(-65)) * angles(rad(-10), rad(20), rad(-15)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(-0.25, -1, 1) *  angles(rad(7.5), rad(90), rad(0)) * angles(rad(25), rad(-135), rad(20)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-0.25, -0.85, -1.25) *  angles(rad(10), rad(-90), rad(0)) * angles(rad(25), rad(-90), rad(20)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		elseif frame == 5 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(5), rad(-0), rad(-45)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(0)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.5 , 0.75, -0.75) * angles(rad(100), rad(15), rad(30)) * angles(rad(60), rad(-30), rad(-45)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.3, 0.75, 0) * angles(rad(0), rad(-30), rad(-65)) * angles(rad(10), rad(20), rad(30)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1 , -1, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-60), rad(0)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-0.75, -0.75, -0.75) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-15), rad(-20), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		end	
	elseif anim == "whirlpool" then
		if frame == 1 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, -0.15) * angles(rad(-7.5), rad(-0), rad(-55)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(0)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.25 , 1.15, -0.75) * angles(rad(100), rad(15), rad(30)) * angles(rad(60), rad(-30), rad(-45)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.5, 0.75, 0) * angles(rad(40), rad(-30), rad(-65)) * angles(rad(10), rad(60), rad(30)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1 , -0.85, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-20), rad(-45), rad(0)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -1, -0.5) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		elseif frame == 2 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, -0.15) * angles(rad(-7.5), rad(-0), rad(-35)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(0)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(0.5, 2, -0.75) * angles(rad(170), rad(-35), rad(-75)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.5, 1.45, 0.15) * angles(rad(165), rad(-30), rad(-65)) * angles(rad(10), rad(60), rad(70)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1 , -0.65, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-10), rad(-20), rad(-10)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -1, -0.5) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(-10), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		elseif frame == 3 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, -0.15) * angles(rad(-7.5), rad(-0), rad(-55)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(0)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1 , 0.75, -1.25) * angles(rad(100), rad(15), rad(30)) * angles(rad(75), rad(-35), rad(-90)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.5, 0.75, 0) * angles(rad(75), rad(-30), rad(-65)) * angles(rad(10), rad(60), rad(50)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1 , -0.85, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-20), rad(-30), rad(0)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -1, -0.5) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		end	
	elseif anim == "dawn" then
		if frame == 1 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(25), rad(0), rad(-105)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-10), rad(0), rad(15)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.5 , 0.5, 0) * angles(rad(90), rad(40), rad(-0)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.25, 0.25, 0) * angles(rad(0), rad(0), rad(35)) * angles(rad(-35), rad(-0), rad(-0)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1 , -0.75, -0.75) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-10), rad(10), rad(-25)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1, -0.5, -0.25) *  angles(rad(-20), rad(-90), rad(-15)) * angles(rad(-30), rad(60), rad(45)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		elseif frame == 2 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(10), rad(0), rad(75)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(-20)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.75 , 0.5, 0.25) * angles(rad(90), rad(15), rad(75)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.5, 0.5, 0) * angles(rad(30), rad(20), rad(-90)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1 , -1, 0 ) *  angles(rad(0), rad(75), rad(0)) * angles(rad(0), rad(-0), rad(-65)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-0.5, -0.5, -0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-90), rad(0), rad(-30)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		elseif frame == 3 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(15), rad(-10), rad(-160)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(10), rad(0), rad(10)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.15, 0.65, -0.25) * angles(rad(90), rad(15), rad(75)) * angles(rad(0), rad(105), rad(-20)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.5, 0.75, -0.45) * angles(rad(-20), rad(-55), rad(-60)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1 , -1, -0.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-20), rad(-75)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -0.75, -0.5) *  angles(rad(-0), rad(-90), rad(0)) * angles(rad(0), rad(-15), rad(-65)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		elseif frame == 4 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(10), rad(-10), rad(-45)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.5, 0.5, -0.25) * angles(rad(50), rad(20), rad(-30)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.5, 0.5, 0) * angles(rad(15), rad(15), rad(-0)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1 , -0.75, -0.75) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-15), rad(-55)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -0.25, -0.85) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(25)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(0), rad(90)), 1)
		end	
	elseif anim == "matou" then
		if frame == 1 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, -0.35) * angles(rad(20), rad(30), rad(60)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.5 , 0.5, 0) * angles(rad(115), rad(0), rad(45)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.35, 0.75, 0.25) * angles(rad(-65), rad(20), rad(-35)) * angles(rad(30), rad(30), rad(-15)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1 , -0.5, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-45), rad(-0), rad(20)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -0.65, 0 ) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-20), rad(0), rad(-30)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(0), rad(90)), 1)
		elseif frame == 2 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, -0.15) * angles(rad(10), rad(15), rad(0)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.5 , 0.75, 0) * angles(rad(195), rad(0), rad(-20)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.5, 0.5, 0) * angles(rad(-45), rad(20), rad(0)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1 , -1, -1) *  angles(rad(0), rad(90), rad(0)) * angles(rad(15), rad(-0), rad(-20)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -0.85, 0.75) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-20), rad(55), rad(45)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(0), rad(90)), 1)
		elseif frame == 3 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,-0.3, 0) * angles(rad(0), rad(-0), rad(-120)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(20), rad(0), rad(-15)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.25, 0.5, -0.75) * angles(rad(105), rad(-10), rad(-25)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1, 0.5, 0.75) * angles(rad(0), rad(75), rad(10)) * angles(rad(60), rad(-15), rad(-0)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(-0.15 , -1, -1.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(60), rad(-20)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(0, -1.25, 0.65) *  angles(rad(20), rad(-90), rad(0)) * angles(rad(0), rad(75), rad(55)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		elseif frame == 4 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,-0.3, 0) * angles(rad(0), rad(-0), rad(-90)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(30)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.25, 0.25, -0.75) * angles(rad(75), rad(-10), rad(-50)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.5, 0.5, 0) * angles(rad(0), rad(40), rad(0)) * angles(rad(45), rad(0), rad(-0)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(0.75, -1, -1.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(30), rad(-20)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -1.25, -0.45) *  angles(rad(20), rad(-90), rad(0)) * angles(rad(0), rad(45), rad(75)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		elseif frame == 5 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-60)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.5 , 0.5, 0) * angles(rad(50), rad(0), rad(20)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.5, 0.5, 0) * angles(rad(30), rad(0), rad(0)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1 , -1, 0.15) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-40), rad(0)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -1, -0.65) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(20)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		end			
	elseif anim == "tyrant" then
		if frame == 1 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, -0.15) * angles(rad(10), rad(-20), rad(-60)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.5 , 0.5, 0) * angles(rad(90), rad(0), rad(75)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.5, 0.5, 0) * angles(rad(90), rad(0), rad(0)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1 , -0.5, -1) *  angles(rad(20), rad(90), rad(0)) * angles(rad(-0), rad(25), rad(-20)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-0.75, -1, 0.5) *  angles(rad(-10), rad(-90), rad(0)) * angles(rad(25), rad(45), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		elseif frame == 2 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, -0.25) * angles(rad(50), rad(-10), rad(35)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-30), rad(0), rad(-20)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.5 , 0.25, 0.75) * angles(rad(0), rad(-30), rad(-0)) * angles(rad(115), rad(-0), rad(0)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.5, 0.5, 0) * angles(rad(90), rad(0), rad(-90)) * angles(rad(35), rad(-45), rad(45)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1 , -0.5, 0.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-55), rad(30)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-0.25,-1.25, -0.75) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(-45), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		elseif frame == 3 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, -0) * angles(rad(0), rad(-0), rad(115)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.5 , 0.25, 0.75) * angles(rad(25), rad(60), rad(115)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.25, 0.25, 0.5) * angles(rad(0), rad(60), rad(0)) * angles(rad(55), rad(-0), rad(0)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1 , -1, 1) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-60), rad(-30)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -1, 0 ) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-35), rad(0), rad(15)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		elseif frame == 4 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,-0.25, -0.15) * angles(rad(20), rad(0), rad(30)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(-30)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.4 , 0, -0.45) * angles(rad(45), rad(0), rad(0)) * angles(rad(75), rad(-0), rad(-30)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1, 0.5, 0.75) * angles(rad(15), rad(15), rad(-50)) * angles(rad(75), rad(-30), rad(-0)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1, -0.75, 0.25) *  angles(rad(10), rad(90), rad(0)) * angles(rad(-0), rad(-75), rad(15)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-0.5 , -1, 0.5) *  angles(rad(-10), rad(-90), rad(0)) * angles(rad(-15), rad(30), rad(-15)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		elseif frame == 5 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,-0.5, -0.15) * angles(rad(10), rad(-20), rad(-60)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(20)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.4 , 0.5, -0.45) * angles(rad(45), rad(0), rad(0)) * angles(rad(25), rad(-0), rad(-30)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.5, 0.75, -0.5) * angles(rad(15), rad(45), rad(-60)) * angles(rad(75), rad(-25), rad(-0)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1, -0.5, -0.75) *  angles(rad(10), rad(90), rad(0)) * angles(rad(-0), rad(-0), rad(10)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-0.25, -1.5, 0.5) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(30), rad(50), rad(20)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		elseif frame == 6 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,-0.25, -0) * angles(rad(10), rad(-10), rad(-45)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(20)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.25 , 0.5, -0.5) * angles(rad(60), rad(30), rad(-25)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.25, 0.4, -0.15) * angles(rad(105), rad(0), rad(-30)) * angles(rad(-10), rad(-30), rad(0)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(0.9, -0.9, -0.75) *  angles(rad(10), rad(90), rad(0)) * angles(rad(-0), rad(-0), rad(5)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-0.5, -1.05, 0.65) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(30), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		end	
	elseif anim == "install" then
		if frame == 1 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-75)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(40), rad(0), rad(0)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1, 0.45, -1) * angles(rad(0), rad(75), rad(-20)) * angles(rad(50), rad(-0), rad(0)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-0.75, 0.35, -1)* angles(rad(0), rad(75), rad(0)) * angles(rad(-30), rad(-0), rad(0)) * rsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1 , -1, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-10), rad(-35), rad(0)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -1, -0) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(22.5), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		elseif frame == 2 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0.25) * angles(rad(-10), rad(20), rad(-60)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.25 , 0, 0) * angles(rad(110), rad(-45), rad(30)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.5, 0.5, 0) * angles(rad(75), rad(-10), rad(-45)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1 , -1.25, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-0), rad(-35)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -1, -1) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(55)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		elseif frame == 3 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(-10), rad(20), rad(-60)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.25 , -0.15, 0) * angles(rad(110), rad(-55), rad(30)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.5, 0.5, 0) * angles(rad(60), rad(-0), rad(-30)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1 , -1, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-20), rad(-20), rad(-35)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -1, -1) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(55)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		elseif frame == 4 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, -0.5) * angles(rad(-10), rad(20), rad(-60)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(10), rad(0), rad(0)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.25 , -0.15, 0) * angles(rad(110), rad(-55), rad(15)) * angles(rad(20), rad(10), rad(20)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.25, 0.35, 0.15) * angles(rad(85), rad(25), rad(-20)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1 , -0.65, -0.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-35), rad(-20), rad(-35)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -0.85, -0.75) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(45)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		elseif frame == 5 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, -0.5) * angles(rad(-10), rad(20), rad(-60)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(10), rad(0), rad(0)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.15 , -0.3, 0.25) * angles(rad(110), rad(-55), rad(15)) * angles(rad(20), rad(10), rad(20)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.15, 0.15, 0.4) * angles(rad(85), rad(25), rad(-20)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1 , -0.65, -0.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-35), rad(-20), rad(-35)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -0.85, -0.75) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(45)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		elseif frame == 6 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, -0.25) * angles(rad(-10), rad(10), rad(-60)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(20), rad(0), rad(0)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.5 , 0.5, 0) * angles(rad(60), rad(40), rad(-0)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.5, 0.5, 0) * angles(rad(40), rad(0), rad(0)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1 , -0.75, -0.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-20), rad(-20), rad(-25)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -1.05, -0.45) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(20), rad(15)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		end		
	elseif anim == "deathknee" then
		if frame == 1 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(-5), rad(0), rad(-60)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.25 , 0, 0) * angles(rad(115), rad(0), rad(-0)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.25, 0, 0) * angles(rad(115), rad(0), rad(0)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1 , -1, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-7.5), rad(-45), rad(0)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -1, -0.5) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(5), rad(20), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		elseif frame == 2 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, -0.15) * angles(rad(-10), rad(20), rad(-60)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-55), rad(0), rad(0)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(0.75, 2, -0.5) * angles(rad(150), rad(-15), rad(-90)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.5, 1.45, 0.15) * angles(rad(165), rad(-30), rad(-65)) * angles(rad(10), rad(60), rad(90)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1 , -1, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-15), rad(-30), rad(-20)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -1.15, -0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-5), rad(20), rad(20)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		elseif frame == 3 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, -0.15) * angles(rad(15), rad(-25), rad(-60)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1, 0.25, -0.75) * angles(rad(90), rad(-30), rad(-60)) * angles(rad(20), rad(0), rad(-20)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1, 0.5, -1) * angles(rad(100), rad(0), rad(70)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1 , -0.8, -0.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(30), rad(-45), rad(40)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -0.5, -0.85) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(-30)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.5) *  angles(rad(-0), rad(-15), rad(90)), 1)
		elseif frame == 4 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, -1.5) * angles(rad(110), rad(-45), rad(20)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(25), rad(0), rad(-0)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.5 , 0.5, 0) * angles(rad(60), rad(0), rad(55)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.5, 0.5, 0.5) * angles(rad(0), rad(80), rad(0)) * angles(rad(45), rad(-0), rad(0)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1, -0.25, -0) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-15), rad(45)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1, -0.25, -.75) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(-25)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(0), rad(90)), 1)
		elseif frame == 5 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(20), rad(0), rad(-15)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.5 , 0.25, 0) * angles(rad(90), rad(0), rad(30)) * angles(rad(35), rad(-0), rad(0)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.5, 0.5, 0) * angles(rad(115), rad(0), rad(0)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1 , -1, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-20), rad(-45), rad(-45)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -0.5, -0.75) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(20)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(0), rad(90)), 1)
		elseif frame == 6 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(45)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(-30)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.25 , 0.5, 0.5) * angles(rad(90), rad(0), rad(130)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.25, 0.75, 0) * angles(rad(30), rad(-15), rad(-90)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1.75, -0.75, -0.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-45), rad(-65)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -1, -0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-0), rad(-15), rad(45)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(0), rad(90)), 1)
		elseif frame == 7 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(30), rad(0), rad(-0)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.5, 0.5, -0.25) * angles(rad(50), rad(20), rad(-30)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.25, 0.25, 0.25) * angles(rad(60), rad(35), rad(-30)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1 , -0, -0.75) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-15), rad(-25)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -0.5, -1.15) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(15)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(0), rad(90)), 1)
		end
	elseif anim == "betarevolver" then
		if frame == 1 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(-5), rad(10), rad(-115)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(90)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.25 , 0.5, -0.5) * angles(rad(90), rad(40), rad(-50)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1, 0.5, 0.75) * angles(rad(0), rad(90), rad(0)) * angles(rad(15), rad(-0), rad(0)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1 , -1, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-20), rad(45)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -0.75, -1) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(-15), rad(-125)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		elseif frame == 2 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(-15), rad(0), rad(-90)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(90)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.25 , 0.5, -0.5) * angles(rad(90), rad(40), rad(-50)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1, 0.5, 0.75) * angles(rad(0), rad(90), rad(0)) * angles(rad(45), rad(-0), rad(0)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(0.75, -1.15, -0.15) *  angles(rad(45), rad(90), rad(0)) * angles(rad(-0), rad(-60), rad(45)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -0.75, -0) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(60), rad(-125)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		elseif frame == 3 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(10), rad(10), rad(-55)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(30)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.25 , 0.5, -0) * angles(rad(90), rad(25), rad(65)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1, 0.5, 0.75) * angles(rad(0), rad(90), rad(0)) * angles(rad(15), rad(-30), rad(0)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(0.75, -0.75, -0.15) *  angles(rad(30), rad(90), rad(0)) * angles(rad(-45), rad(-30), rad(115)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -0.75, -0) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-20), rad(30), rad(-15)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		elseif frame == 4 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(10), rad(10), rad(-35)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(30)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.25 , 0.25, -0) * angles(rad(90), rad(55), rad(65)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.25, 0.65, 0.25) * angles(rad(0), rad(90), rad(0)) * angles(rad(15), rad(-55), rad(0)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(0.5, -0.45, -0.75) *  angles(rad(90), rad(90), rad(0)) * angles(rad(0), rad(90), rad(15)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-0.8, -0.6, 0.15) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-20), rad(30), rad(45)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		end		
	elseif anim == "blazingrun" then
		if frame == 1 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-120)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(75)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.5 , 0.5, 0) * angles(rad(45), rad(0), rad(-0)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.5, 0.5, -0.5) * angles(rad(25), rad(-45), rad(0)) * angles(rad(20), rad(0), rad(10)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(0.8, -1, -0.75) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-5), rad(25), rad(0)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-0.85, -1, 0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(75), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(0), rad(90)), 1)
		elseif frame == 2 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0, 0,0) * angles(rad(35), rad(0), rad(-90)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(50)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1, 0.5, -0.75) * angles(rad(75), rad(-40), rad(40)) * angles(rad(0), rad(125), rad(-50)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-0.75, 0.5, -0.75) * angles(rad(90), rad(-0), rad(75)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1, -1, -1) *  angles(rad(0), rad(90), rad(0)) * angles(rad(20), rad(0), rad(-45)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1, -1, -0) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(50), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(0), rad(90)), 1)
		elseif frame == 3 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(10), rad(-20), rad(-65)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.5 , 0.5, 0) * angles(rad(30), rad(0), rad(25)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1, 0.75, -0.75) * angles(rad(105), rad(-75), rad(60)) * angles(rad(30), rad(-15), rad(15)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1 , -0.5, -0.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-20), rad(-30), rad(0)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -1.15, -0.5) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(20), rad(15), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(0), rad(90)), 1)
		elseif frame == 4 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, -0.5) * angles(rad(30), rad(15), rad(45)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(-15)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1, 1, -0.5) * angles(rad(120), rad(60), rad(-0)) * angles(rad(55), rad(0), rad(-20)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.25, 0.75, 0) * angles(rad(0), rad(0), rad(-120)) * angles(rad(-45), rad(0), rad(45)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1 , -1, 0.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-45), rad(-30)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-0.25, -0.5, -1.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-20), rad(-45), rad(60)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		elseif frame == 5 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, -0.75) * angles(rad(10), rad(-15), rad(-60)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(45)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.5 , 0.5, 0) * angles(rad(40), rad(0), rad(-15)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.25, 0.25, 0.25) * angles(rad(10), rad(55), rad(0)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1.25, -0.1, -0.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(10), rad(-30), rad(15)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-1 , -0.65, -1) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(10), rad(45)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		elseif frame == 6 then
			rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, -0.75) * angles(rad(20), rad(0), rad(0)), 0.3)
			neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, -0.25, -0.05) * angles(rad(45), rad(0), rad(-0)), 0.3)
			rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.5 , 0.15, -0) * angles(rad(105), rad(0), rad(-0)) * rsC0, 0.3)
			lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1, 0.75, 0.25) * angles(rad(20), rad(30), rad(-60)) * angles(rad(0), rad(30), rad(0)) * lsC0, 0.3)
			rhip.C0 = rhip.C0:Lerp(cframe(1, -0.5, 0.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(10), rad(-75), rad(10)), 0.3)
			lhip.C0 = lhip.C0:Lerp(cframe(-0.5, -0.9, -1.5) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(-30), rad(60)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
		end
	elseif anim == "reference" then
		rjoint.C0 = rjoint.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-0)), 0.3)
		neck.C0 = neck.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
		rshoulder.C0 = rshoulder.C0:Lerp(cframe(1.5 , 0.5, 0) * angles(rad(0), rad(0), rad(-0)) * rsC0, 0.3)
		lshoulder.C0 = lshoulder.C0:Lerp(cframe(-1.5, 0.5, 0) * angles(rad(0), rad(0), rad(0)) * lsC0, 0.3)
		rhip.C0 = rhip.C0:Lerp(cframe(1 , -1, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-0), rad(0)), 0.3)
		lhip.C0 = lhip.C0:Lerp(cframe(-1 , -1, 0 ) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(0)), 0.3)
		WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 0, -1.25) *  angles(rad(0), rad(-0), rad(90)), 1)
	end
end)

--health and died stuff
local CurrentHP = hum.Health
function healthchange(hp)
	if hp < CurrentHP then
		CurrentHP = hp
		if dead then return end
		if hurt then return end
		hurt = true
		attack = true
		if not inair then
			if guarding then
				sound(9089408772, 4, 1, torso, 0, false)
			end
			if not ducking and not sitting then
				local randomhurt = random(0,5)
				if Player.Name == "ninjakaiden1" then
					if voices then
						if randomhurt <= 1 then
							sound1("saul/yusuke14.wav",3,1.05,head,0,false)
						elseif randomhurt >= 4 then
							sound1("saul/yusuke15.wav",3,1.05,head,0,false)
						elseif randomhurt == 2 then
							sound1("saul2/saul_1-0.wav",3,1.05,head,0,false)
						elseif randomhurt == 3 then
							sound1("saul2/saul_1-1.wav",3,1.05,head,0,false)
						end
					end
				else
					if voices then
						if randomhurt <= 1 then
							sound(6326905490,4,1,head,0,false)
						elseif randomhurt >= 4 then
							sound(6371758602,4,1,head,0,false)
						else
							sound(8285358926,4,1,head,0,false)
						end
					end
				end
				if waitin then
					waitin = false
					attack = true
				end
				local hurtrandom = random(0, 3)
				if hurtrandom <= 1 then
					anim = "hurt"
				else
					anim = "hurt2"
				end
			else
				local randomhurt = random(0,5)
				if Player.Name == "ninjakaiden1" then
					if voices then
						if randomhurt <= 1 then
							sound1("saul/yusuke14.wav",3,1.05,head,0,false)
						elseif randomhurt >= 4 then
							sound1("saul/yusuke15.wav",3,1.05,head,0,false)
						elseif randomhurt == 2 then
							sound1("saul2/saul_1-0.wav",3,1.05,head,0,false)
						elseif randomhurt == 3 then
							sound1("saul2/saul_1-1.wav",3,1.05,head,0,false)
						end
					end
				else
					if voices then
						if randomhurt <= 1 then
							sound(5437584472,4,1,head,0,false)
						elseif randomhurt >= 4 then
							sound(5592869337,4,1,head,0,false)
						else
							sound(8105750628,4,1,head,0,false)
						end
					end
				end
				anim = "duckhurt"
				sitting = false
				attack = true
			end
			wait(1)
			attack = false
			hurt = false
		else
			if guarding then
				if sitting then
					sitting = false
					attack = true
				end
				anim = "fallblock"
				wait(1)
				attack = false
				hurt = false
			else
				local randomhurt = random(0,5)
				if Player.Name == "ninjakaiden1" then
					if voices then
						if randomhurt <= 1 then
							sound1("saul/yusuke14.wav",3,1.05,head,0,false)
						elseif randomhurt >= 4 then
							sound1("saul/yusuke15.wav",3,1.05,head,0,false)
						elseif randomhurt == 2 then
							sound1("saul/yusuke16.wav",3,1.05,head,0,false)
						elseif randomhurt == 3 then
							sound1("saul2/saul_1-2.wav",3,1.05,head,0,false)
						end
					end
				else
					if voices then
						if randomhurt <= 1 then
							sound(8285362578,4,1,head,0,false)
						elseif randomhurt >= 4 then
							sound(562249497,4,1,head,0,false)
						else
							sound(597154815,4,1,head,0,false)
						end
					end
				end
				local vel = new("BodyVelocity")
				vel.MaxForce = vect3(math.huge,math.huge,math.huge)
				vel.Parent = root
				vel.Velocity = root.CFrame.LookVector * -125 + root.CFrame.upVector * 50
				vel.Name  =  "SmallMover"
				debris:AddItem(vel,.25)
				local hitfloor = nil
				if sitting then
					sitting = false
					attack = true
				end
				anim = "fallhurt"
				local frames = 	coroutine.wrap(function()
					frame = 1
					if not hitfloor then
						wait(0.5)
						frame = 2
						wait(0.3)
						frame = 3
					else return
					end
				end)
				frames()
				repeat 
					wait()
					hitfloor = raycast(root.Position, (cframe(root.Position, root.Position + vect3(0, -1, 0))).lookVector, 4+hum.HipHeight, char)
				until hitfloor
				sound(9114395530, 3, 1, torso, 0, false)
				frame = 4
				wait(0.1)
				frame = 5
				wait(1)
				if Player.Name == "ninjakaiden1" then
					local randomquote = random(0,3)
					if randomquote == 0 then
						chatter("Darn!")
					elseif randomquote == 1 then
						chatter("You asked for it!")
					elseif randomquote == 2 then
						chatter("ARGH!")
					elseif randomquote == 3 then
						chatter("Not bad!")
					end
					if voices then
						if randomquote == 0 then
							sound1("saul/yusuke38.wav",3,1.05,head,0,false)
						elseif randomquote == 1 then
							sound1("saul/yusuke22.wav",3,1.05,head,0,false)
						elseif randomquote == 2 then
							sound1("saul/yusuke17.wav",3,1.05,head,0,false)
						elseif randomquote == 3 then
							sound1("saul2/saul_1-9.wav",3,1.05,head,0,false)
						end
					end
				else
					local randomquote = random(0,8)
					if randomquote == 1 then
						chatter("Darn, darn, darn, darny, darn!")
					elseif randomquote == 2 then
						chatter("Argh!")
					elseif randomquote == 3 then
						chatter("Oh, my back!")
					elseif randomquote == 4 then
						chatter("*funny meme dude noise*")
					elseif randomquote == 5 then
						chatter("URGH!")
					elseif randomquote == 6 then
						chatter("WHAT?!")
					elseif randomquote == 7 then
						chatter("Why you...!")
					else
						chatter("*Angry Hiko noises*")
					end
					if voices then
						if randomquote == 1 then
							sound(8012058511,4,1,head,0,false)
						elseif randomquote == 2 then
							sound(513153251,4,1,head,0,false)
						elseif randomquote == 3 then
							sound(5651638372,5,1,head,2.7,false)
						elseif randomquote == 4 then
							sound(8158259414,4,1,head,0,false)
						elseif randomquote == 5 then
							sound(6186776084,4,1,head,0,false)
						elseif randomquote == 6 then
							sound(6586231914,4,1,head,0,false)
						elseif randomquote == 7 then
							sound(8255749342,4.5,1,head,0,false)
						else
							sound(5685958688,5,1,head,0,false)
						end
					end
				end
				anim = "fallrise"
				frame = 1
				wait(0.0525)
				frame = 2
				wait(0.0525)
				frame = 3
				wait(0.0525)
				frame = 4
				wait(0.0525)
				frame = 5
				wait(0.0525)
				frame = 6
				wait(0.0525)
				frame = 7
				wait(0.0525)
				attack = false
				hurt = false
			end
		end
	else
		CurrentHP = hp
	end
end
hum.HealthChanged:Connect(healthchange)

hum.Running:Connect(function()
	if hum.MoveDirection.magnitude > .1 then
		moving = true
	else
		moving = false
	end
end)

hum.Died:Connect(function()
	if char == nil then return end
	dead = true
	attack = true
	if Player.Name == "ninjakaiden1" then
		chatter("It's heavy...")
		if voices then 
			sound1("saul/yusukedie.wav",3,1.05,head,0,false)
		end
	else
		if voices then 
			sound(6927884261,4,1,head,0,false)
		end
	end
end)
--play spawn emote when first ran
emote("Intro")
--main loop
while true do
	wait()
	--key combo stuff
	keytime = keytime - 0.5
	if keytime < 0.5 then
		keycombo = ""
		keycount = 0
	end
	statstext.Text = string.upper(keycombo)
	--hit floor stuff
	local tv = (root.Velocity * vect3(1, 0, 1)).magnitude
	local tvv = root.Velocity.y
	local hf = raycast(root.Position, (cframe(root.Position, root.Position + vect3(0, -1, 0))).lookVector, 4+hum.HipHeight, char)
	--set to running anim if speed is higher than 50
	if hum.WalkSpeed >= 50 then
		running = true
	else
		running = false
	end
	if hf then
		inair = false
		if hum:GetState() == Enum.HumanoidStateType.Swimming and tv<1 then
			if attack == false then
				anim = "swimidle"
			end
		elseif hum:GetState() == Enum.HumanoidStateType.Swimming and tv>1 then
			if attack == false then
				anim = "swim"
			end
		elseif tv < 1 and hf ~= nil and hum.Sit == false then
			if attack == false then
				anim = "idle"
			end
		elseif tv > 1 and hf ~= nil and hum.Sit == false then
			if attack == false then
				anim = "walk"
			end
		elseif hf ~= nil and hum.Sit == true then
			if attack == false then
				anim = "sit"
			end
		end
	else
		inair = true
		if hum:GetState() == Enum.HumanoidStateType.Climbing and tvv==0 then
			if attack == false then
				anim = "climbidle"
			end
		elseif hum:GetState() == Enum.HumanoidStateType.Climbing and (tvv>0 or tvv<0) then
			if attack == false then
				anim = "climbing"
			end
		elseif tvv > 0 then
			if attack == false then
				anim = "jump"
			end
		else
			if attack == false then
				anim = "fall"
			end
		end
	end
end