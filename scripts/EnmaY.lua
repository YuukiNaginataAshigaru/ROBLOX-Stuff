print([[
--Berzei (Enma Yū (Superior)) / 閻魔優--
By Hiko Zukusanagi / IkariGames
--------------------------------
My interpretation of the Black Magic class 
Berzerker (EnmaU) as it's past version, back
when Berzerker was Ravager, before becoming angry.
Unlike the original Berzerker, it needs to
concentrate in order to release the full potential
due to the difficulty in channeling its powers.
Since Berzei has a somewhat sluggish movement
than Berzerker, Berzei uses a "more all-out" fighting style
with a majority of the attacks being prototypes for
their future moves, to be refined upon becoming EnmaU (Berzerker).
--------------------------------
Script is heavily inspired by the Guilty Gear character Order-Sol,
as well as psycho_guests' Jokezerker (a joke remake of Berzerker),
including Sol Badguy (since some of his moves were present on EnmaU, 
although they had to be renamed), and Ragna the Bloodedge (since some 
of his quotes are present too). Script is also heavily influenced by Rufus14's old EnmaX.
--------------------------------
It should be noted that most of Berzei's attacks can "Charge Keep" by pressing E
with the input of any attack that depletes the Charge meter to be powered up
(such as holding E + SDQ) in order to use the Level 1 version at Level 2 or 3.
All attacks can fill the Charge meter by pressing and Holding E just after the attack finishes. 
--------------------------------
The spell circle will determine the charge level.

Dark Purplish-Black Spell Circle = Level 1
Dark Purple Star Spell Circle = Level 2
Purplish-Black Surrounding Dark Spell Circle = Level 3
--------------------------------
(Moves)
Taunt: G
Grab (can be done in air): H
Punch: Z
Kick: X
Slash: C
Drive Attack: Q

SAX - Tyrant Revolver ver. Beta
DDSC - Shadow Striker
SDQ - Dark Shot Grenade
ASDQ - StarSpike
AADQ - Soul Shade
ASDC - Vortex Eclipse
WADQ - Dragon's Summoning
+ WWQ = Rumeiga
+ AAQ = Korone
+ DDQ = Hakurei
+ SSQ = Kirisame
+ ADQ = Relocation
+ SWQ = Hazama
+ DWQ = Gouda-Yamato
SDE - Charge
SDC or SDZ - Shadow Fang
SSADQ - Zero Wing
ADADWQ - Fatal Howl Prototype
ASDWWQ - Saz' Amethyst Death Collider (Level 2 or 3 only)
ADADADQ - Perfect Overdrive
IF BELOW 40 HP / OVERDRIVE ACTIVATED:

(All of the moves require charge level (represented by the spell circle) to be at Level 3)

DSADSAQ - BlazBlue Infinity (will perform Nightmare Overture when the enemy is at low health)
ASDASDQ - Nightmare Reign ver. Beta
]])
--Converted with ttyyuu12345's model to script plugin v4
function sandbox(var,func)
	local env = getfenv(func)
	local newenv = setmetatable({},{
		__index = function(self,k)
			if k=="script" then
				return var
			else
				return env[k]
			end
		end,
	})
	setfenv(func,newenv)
	return func
end
cors = {}
mas = Instance.new("Model",game:GetService("Lighting"))
InsertService = game:GetService("InsertService")
Tool0 = Instance.new("Tool")
Script1 = Instance.new("Script")
MeshPart2 = InsertService:CreateMeshPartAsync("rbxassetid://5365929127", Enum.CollisionFidelity.Default, Enum.RenderFidelity.Automatic)
MeshPart3 = InsertService:CreateMeshPartAsync("rbxassetid://5365901791", Enum.CollisionFidelity.Default, Enum.RenderFidelity.Automatic)
ManualWeld4 = Instance.new("ManualWeld")
MeshPart5 = InsertService:CreateMeshPartAsync("rbxassetid://5365918673", Enum.CollisionFidelity.Default, Enum.RenderFidelity.Automatic)
ManualWeld6 = Instance.new("ManualWeld")
MeshPart7 = InsertService:CreateMeshPartAsync("rbxassetid://5365895296", Enum.CollisionFidelity.Default, Enum.RenderFidelity.Automatic)
ManualWeld8 = Instance.new("ManualWeld")
Part9 = Instance.new("Part")
ManualWeld10 = Instance.new("ManualWeld")
Part11 = Instance.new("Part")
ManualWeld12 = Instance.new("ManualWeld")
Part13 = Instance.new("Part")
ManualWeld14 = Instance.new("ManualWeld")
Part15 = Instance.new("Part")
ManualWeld16 = Instance.new("ManualWeld")
Part17 = Instance.new("Part")
ManualWeld18 = Instance.new("ManualWeld")
Part19 = Instance.new("Part")
ManualWeld20 = Instance.new("ManualWeld")
Part21 = Instance.new("Part")
ManualWeld22 = Instance.new("ManualWeld")
Part23 = Instance.new("Part")
ManualWeld24 = Instance.new("ManualWeld")
MeshPart25 = InsertService:CreateMeshPartAsync("rbxassetid://5365780472", Enum.CollisionFidelity.Default, Enum.RenderFidelity.Automatic)
ManualWeld26 = Instance.new("ManualWeld")
MeshPart27 = InsertService:CreateMeshPartAsync("rbxassetid://5365780472", Enum.CollisionFidelity.Default, Enum.RenderFidelity.Automatic)
ManualWeld28 = Instance.new("ManualWeld")
MeshPart29 = InsertService:CreateMeshPartAsync("rbxassetid://5365901791", Enum.CollisionFidelity.Default, Enum.RenderFidelity.Automatic)
ManualWeld30 = Instance.new("ManualWeld")
RemoteEvent31 = Instance.new("RemoteEvent")
RemoteEvent33 = Instance.new("RemoteEvent")
BodyGyro34 = Instance.new("BodyGyro")
Tool0.Name = "EnmaY"
Tool0.Parent = mas
Tool0.Grip = CFrame.new(0, -1, 0, -4.37113883e-08, 0, -1, 0, 1, -0, 1, -0, -4.37113883e-08)
Tool0.GripForward = Vector3.new(1, 0, 4.371138828673793e-08)
Tool0.GripPos = Vector3.new(0, -1, 0)
Tool0.GripRight = Vector3.new(-4.371138828673793e-08, 0, 1)
MeshPart2.Name = "Handle"
MeshPart2.Parent = Tool0
MeshPart2.CFrame = CFrame.new(-5.4080658, 9.1650238, 67.8204498, -1.14440918e-05, 1, 1.76397678e-14, -5.68434189e-14, 1.76390867e-14, 1, 1, 1.26957893e-05, -5.68432054e-14)
MeshPart2.Orientation = Vector3.new(-90, -90.0009994506836, 0)
MeshPart2.Position = Vector3.new(-5.4080657958984375, 9.165023803710938, 67.82044982910156)
MeshPart2.Rotation = Vector3.new(-90, 0, -90.0009994506836)
MeshPart2.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
MeshPart2.Size = Vector3.new(0.33000001311302185, 0.5045333504676819, 0.3299998939037323)
MeshPart2.BrickColor = BrickColor.new("Really black")
MeshPart2.Material = Enum.Material.Slate
MeshPart2.brickColor = BrickColor.new("Really black")
local attachment = Instance.new("Attachment",MeshPart2)
attachment.Position = Vector3.new(-0.025, -3.33, -0.008)
attachment.Name = "TA"
local attachment2 = Instance.new("Attachment",MeshPart2)
attachment2.Position = Vector3.new(-0.003, -6.116, -0.017)
attachment2.Name = "TA2"
Trail0 = Instance.new("Trail")
Trail1 = Instance.new("Trail")
Trail0.Name = "NewTrail2"
Trail0.Parent = MeshPart2
Trail0.Attachment0 = attachment
Trail0.Attachment1 = attachment2
Trail0.Color = ColorSequence.new(Color3.new(0.239216, 0.0823529, 0.521569),Color3.new(0.239216, 0.0823529, 0.521569))
Trail0.Texture = "http://www.roblox.com/asset/?id=2443461141"
Trail0.Transparency = NumberSequence.new(0,0)
Trail0.Lifetime = 0.15000000596046448
Trail0.WidthScale = NumberSequence.new(0,1,1)
local attachment0 = Instance.new("Attachment",MeshPart2)
attachment0.Position = Vector3.new(-0.012, -3.172, -0.008)
attachment0.Name = "TA0"
local attachment1 = Instance.new("Attachment",MeshPart2)
attachment1.Position = Vector3.new(-0.003, -6.309, -0.017)
attachment1.Name = "TA1"
Trail1.Name = "NewTrail"
Trail1.Parent = MeshPart2
Trail1.Attachment0 = attachment0
Trail1.Attachment1 = attachment1
Trail1.Color = ColorSequence.new(Color3.new(0.384314, 0.145098, 0.819608),Color3.new(0.384314, 0.145098, 0.819608))
Trail1.Texture = "http://www.roblox.com/asset/?id=6091329339"
Trail1.Transparency = NumberSequence.new(0,0)
Trail1.Lifetime = 0.10000000149011612
Trail1.WidthScale = NumberSequence.new(0,1,1)
Trail0.Enabled = false 
Trail1.Enabled = false
Script1.Parent = Tool0
table.insert(cors,sandbox(Script1,function()
	local attack = false
	local started = false
	local equipped = false
	local ani = false
	local Tool = script.Parent
	local Handle = Tool.Handle
	local event = Tool:FindFirstChild("Noveau")
	local event2 = Tool:FindFirstChild("Ryumei")
	local trail = Handle.NewTrail
	local trail2 = Handle.NewTrail2
	local owner = nil
	local char = nil
	local hum = nil
	local rt = nil
	local inair = false
	local holdingz = false
	local holdingx = false
	local holdingc = false
	local holdingq = false
	local holdinge = false
	local gyro = Tool:FindFirstChild("EnmaGyro")
	local heatlvl = 1
	local heat = 0
	local dragonsummoned = false
	local dragonattack = false
	local dragontype = ""
	local dragonpos = nil
	local blazblue = false
	local zDead = nil
	local jin = 0
	--animation stuff
	local anim = "idle"
	local frame = 1
	local sine = tick()*60
	--function stuff
	local cframe = CFrame.new
	local angles = CFrame.Angles
	local rad = math.rad
	local new = Instance.new
	local bc = BrickColor.new
	local cos = math.cos
	local acos = math.acos
	local sin = math.sin
	local random = math.random
	local vect2 = Vector2.new
	local vect3 = Vector3.new
	local rs = game:GetService("RunService")
	local debris = game:GetService("Debris")
	local tweens = game:GetService("TweenService")
	local color = Color3.new
	local udim2 = UDim2.new

	--Cooldown Stuff
	local grenadecooldown = false
	local strikercooldown = false
	local tyrantcooldown = false
	local starcooldown = false
	local vortexcooldown = false
	local shadecooldown = false
	local rumeigacooldown = false
	local koronecooldown = false
	local hakureicooldown = false
	local kirisamecooldown = false
	local hazamacooldown = false
	local goudacooldown = false
	local fangcooldown = false
	local zerocooldown = false
	local fatalcooldown = false
	local sazcooldown = false
	local nightmarecooldown = false
	local blazbluecooldown = false
	local overdrivecooldown = false
	local strikercount = 0

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
		sound.Name = "CSUFSound"
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

	function sound2(id, volume, pitch, parent, tpos)
		local sound = new("Sound")
		sound.SoundId = "rbxassetid://"..id
		sound.Volume = volume
		sound.Pitch = pitch
		sound.Parent = parent
		sound.Name = "CSUFSound"
		sound.TimePosition = tpos or 0
		sound.PlayOnRemove = true
		task.wait(0.005)
		sound:Destroy()
	end

	function super(type)
		if type == 1 then
			sound(102583155523200,2.5,1.1,rt,0,false)
		elseif type == 2 then
			sound(6892632909,2.5,1.1,rt,0,false)
		else
			sound(153092315,2.5,1.1,rt,0,false)
		end
		spawn(function()
			local sphere = new("Part")
			sphere.Parent = script
			sphere.Name = "SuperSphere"
			sphere.Shape = "Ball"
			sphere.Size = vect3(2.5,2.5,2.5)
			sphere.Transparency = 0
			sphere.BrickColor = bc("Institutional white")
			sphere.Material = "Neon"
			sphere.CanCollide = false
			sphere.Anchored = true
			sphere.CFrame = rt.CFrame
			local tween = tweens:Create(sphere, TweenInfo.new(1.5), {Size = vect3(45,45,45), Transparency = 1})
			tween:Play()
			tween.Completed:Connect(function() sphere:Destroy() end)
		end)
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
		--Damage the humanoid.
		sound(hitsfx, hitvol, hitpitch, hitpart, hittpos, false)
		--Give me a break...
		if owner.UserId == 50203523 then
			if huma.Parent:IsA("Model") and huma.Parent.Name ~= "ninjakaiden1" then
				if huma.MaxHealth >= 1000000 then
					huma.MaxHealth = 100
					huma.Health = 100
				end
			end
		end
		if not blazblue then
			huma:TakeDamage(damage)
		else
			huma:TakeDamage(damage * 1.45)
		end
		hiteffect(effect,hitpart)
	end
	function magnitudedamage(dmg, effect, hitpos, hitarea, hitsfx, hitvol, hitpitch, part, move, typa, type2)
		for i,v in pairs(workspace:GetDescendants()) do
			if v:FindFirstChildOfClass("Humanoid") and v ~= char then
				local vhum = v:FindFirstChildOfClass("Humanoid")
				local vtorso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso") or v:FindFirstChild("HumanoidRootPart")
				if vtorso then
					local vdistance = (vtorso.Position - part.CFrame*cframe(0,0,-1.5).p).magnitude
					if vdistance <= hitarea and vhum.Health > 0 then
						damage(vhum, dmg, hitsfx, hitvol, hitpitch, vtorso, hitpos, effect)
						if move == true then
							if type2 == "grenade" then
								if vtorso:FindFirstChild("GrenadeHitBy") then vtorso:FindFirstChild("GrenadeHitBy"):Destroy() end
								local bpos = new("BodyPosition")
								bpos.Name = "GrenadeHitBy"
								bpos.Parent = vtorso
								bpos.MaxForce = vect3(39999,39999,39999)
								bpos.D = 1000
								bpos.Position = rt.CFrame * cframe(0,0,-50).Position
								debris:AddItem(bpos,0.1)
							elseif type2 == "grenade2" then
								vtorso.Velocity = rt.CFrame.lookVector*60
								vhum.PlatformStand = true
								spawn(function() 
									wait(5)
									vhum.PlatformStand = false
								end)
							elseif type2 == "striker" then
								if vtorso:FindFirstChild("StrikerHitBy") then vtorso:FindFirstChild("StrikerHitBy"):Destroy() end
								local bpos = new("BodyPosition")
								bpos.Name = "StrikerHitBy"
								bpos.Parent = vtorso
								bpos.MaxForce = vect3(39999,39999,39999)
								bpos.D = 1500
								bpos.Position = rt.CFrame * cframe(0,55,-17.5).Position
								debris:AddItem(bpos,0.1)
							elseif type2 == "striker2" then
								vtorso.Velocity = rt.CFrame.lookVector*25 + rt.CFrame.upVector * -60
								vhum.PlatformStand = true
								spawn(function() 
									wait(5)
									vhum.PlatformStand = false
								end)
							elseif type2 == "tyrant" then
								local bpos = new("BodyPosition")
								bpos.Parent = vtorso
								bpos.MaxForce = vect3(math.huge,math.huge,math.huge)
								bpos.D = 2250
								bpos.Position = rt.CFrame * cframe(0,35,-85).Position
								debris:AddItem(bpos,0.15)
							elseif type2 == "tyrant2" then
								vtorso.Velocity = rt.CFrame.lookVector*45 + rt.CFrame.upVector * 10
								vhum.PlatformStand = true
								spawn(function() 
									wait(5)
									vhum.PlatformStand = false
								end)
							elseif type2 == "tyrant3" then
								vtorso.Velocity = rt.CFrame.lookVector*100
								vhum.PlatformStand = true
								spawn(function() 
									wait(5)
									vhum.PlatformStand = false
								end)
							elseif type2 == "redstar" then
								vtorso.Velocity = rt.CFrame.lookVector * 25 + rt.CFrame.upVector * 75
								vhum.PlatformStand = true
								spawn(function() 
									wait(5)
									vhum.PlatformStand = false
								end)
							elseif type2 == "vortex" then
								if vtorso:FindFirstChild("VortexGHitBy") then vtorso:FindFirstChild("VortexGHitBy"):Destroy() end
								local bpos = new("BodyPosition")
								bpos.Name = "VortexGHitBy"
								bpos.Parent = vtorso
								bpos.MaxForce = vect3(39999,39999,39999)
								bpos.D = 1750
								bpos.Position = rt.CFrame * cframe(0,0,-50).Position
								debris:AddItem(bpos,0.1)
							elseif type2 == "vortex2" then
								if vtorso:FindFirstChild("VortexGHitBy") then vtorso:FindFirstChild("VortexGHitBy"):Destroy() end
								vtorso.Velocity = rt.CFrame.lookVector * 50 + rt.CFrame.upVector * 115
								vhum.PlatformStand = true
								spawn(function() 
									wait(5)
									vhum.PlatformStand = false
								end)
							elseif type2 == "vortex3" then
								if vtorso:FindFirstChild("VortexGHitBy") then vtorso:FindFirstChild("VortexGHitBy"):Destroy() end
								vtorso.Velocity = rt.CFrame.lookVector * 45
								vhum.PlatformStand = true
								spawn(function() 
									wait(5)
									vhum.PlatformStand = false
								end)
							elseif type2 == "shade" then
								vtorso.Velocity = rt.CFrame.upVector * 150
								vhum.PlatformStand = true
								spawn(function() 
									wait(5)
									vhum.PlatformStand = false
								end)
							elseif type2 == "shade2" then
								vtorso.Velocity = rt.CFrame.upVector * 450
								vhum.PlatformStand = true
								spawn(function() 
									wait(10)
									vhum.PlatformStand = false
								end)
							elseif type2 == "rumeiga" then
								vtorso.Velocity = rt.CFrame.lookVector * 40
								vhum.PlatformStand = true
								spawn(function() 
									wait(5)
									vhum.PlatformStand = false
								end)
							elseif type2 == "rumeiga2" then
								vtorso.Velocity = rt.CFrame.lookVector * 55 + rt.CFrame.upVector * 45
								vhum.PlatformStand = true
								spawn(function() 
									wait(5)
									vhum.PlatformStand = false
								end)
							elseif type2 == "rumeiga1" then
								vtorso.Velocity = rt.CFrame.lookVector * 70 + rt.CFrame.upVector * 75
								vhum.PlatformStand = true
								spawn(function() 
									wait(5)
									vhum.PlatformStand = false
								end)
							elseif type2 == "korone" then
								vtorso.Velocity = rt.CFrame.lookVector * 2.5 + rt.CFrame.upVector * 30
								vhum.PlatformStand = true
								spawn(function() 
									wait(5)
									vhum.PlatformStand = false
								end)
							elseif type2 == "hakurei" then
								vtorso.Velocity = rt.CFrame.lookVector * 45
								vhum.PlatformStand = true
								spawn(function() 
									wait(5)
									vhum.PlatformStand = false
								end)
							elseif type2 == "kirisame" then
								vtorso.Velocity = rt.CFrame.upVector * 45
								vhum.PlatformStand = true
								spawn(function() 
									wait(5)
									vhum.PlatformStand = false
								end)
							elseif type2 == "kirisame1" then
								vtorso.Velocity = rt.CFrame.upVector * 25
								vhum.PlatformStand = true
								spawn(function() 
									wait(5)
									vhum.PlatformStand = false
								end)
							elseif type2 == "kirisame2" then
								vtorso.Velocity = rt.CFrame.upVector * 10
								vhum.PlatformStand = true
								spawn(function() 
									wait(5)
									vhum.PlatformStand = false
								end)
							elseif type2 == "hazama" then
								vtorso.Velocity = rt.CFrame.lookVector * 10 + rt.CFrame.upVector * 15
								vhum.PlatformStand = true
								spawn(function() 
									wait(5)
									vhum.PlatformStand = false
								end)
							elseif type2 == "hazama2" then
								vtorso.Velocity = rt.CFrame.lookVector * 15
								vhum.PlatformStand = true
								spawn(function() 
									wait(5)
									vhum.PlatformStand = false
								end)
							elseif type2 == "hazama3" then
								vtorso.Velocity = rt.CFrame.lookVector * 25 + rt.CFrame.upVector * -4.5
								vhum.PlatformStand = true
								spawn(function() 
									wait(5)
									vhum.PlatformStand = false
								end)
							elseif type2 == "hazama0" then
								vtorso.Velocity = rt.CFrame.lookVector * 30 + rt.CFrame.upVector * 45
								vhum.PlatformStand = true
								spawn(function() 
									wait(5)
									vhum.PlatformStand = false
								end)
							elseif type2 == "hazama1" then
								vtorso.Velocity = rt.CFrame.lookVector * 45 + rt.CFrame.upVector * -15
								vhum.PlatformStand = true
								spawn(function() 
									wait(5)
									vhum.PlatformStand = false
								end)
							elseif type2 == "gouda" then
								vtorso.Velocity = rt.CFrame.lookVector * 10 + rt.CFrame.upVector * 125
								vhum.PlatformStand = true
								spawn(function() 
									wait(5)
									vhum.PlatformStand = false
								end)
							elseif type2 == "fang" then
								if vtorso:FindFirstChild("FangHitBy") then vtorso:FindFirstChild("FangHitBy"):Destroy() end
								local bpos = new("BodyPosition")
								bpos.Name = "FangHitBy"
								bpos.Parent = vtorso
								bpos.MaxForce = vect3(39999,39999,39999)
								bpos.D = 1750
								bpos.Position = rt.CFrame * cframe(0,0,-50).Position
								debris:AddItem(bpos,0.1)
							elseif type2 == "fang2" then
								if vtorso:FindFirstChild("FangHitBy") then vtorso:FindFirstChild("FangHitBy"):Destroy() end
								vtorso.Velocity = rt.CFrame.lookVector * 20
								vhum.PlatformStand = true
								spawn(function() 
									wait(5)
									vhum.PlatformStand = false
								end)
							elseif type2 == "fang3" then
								if vtorso:FindFirstChild("FangHitBy") then vtorso:FindFirstChild("FangHitBy"):Destroy() end
								vtorso.Velocity = rt.CFrame.lookVector * 30 + rt.CFrame.upVector * 75
								vhum.PlatformStand = true
								spawn(function() 
									wait(5)
									vhum.PlatformStand = false
								end)
							elseif type2 == "wing" then
								if vtorso:FindFirstChild("WingHitBy") then vtorso:FindFirstChild("WingHitBy"):Destroy() end
								local bpos = new("BodyPosition")
								bpos.Parent = vtorso
								bpos.Name = "WingHitBy"
								bpos.MaxForce = vect3(math.huge,math.huge,math.huge)
								bpos.D = 2250
								bpos.Position = rt.CFrame * cframe(0,75,-90).Position
								debris:AddItem(bpos,0.15)
							elseif type2 == "wing2" then
								if vtorso:FindFirstChild("WingHitBy") then vtorso:FindFirstChild("WingHitBy"):Destroy() end
								local bpos = new("BodyPosition")
								bpos.Parent = vtorso
								bpos.Name = "WingHitBy"
								bpos.MaxForce = vect3(math.huge,math.huge,math.huge)
								bpos.D = 2500
								bpos.Position = rt.CFrame * cframe(0,0,-45).Position
								debris:AddItem(bpos,0.225)
							elseif type2 == "wing1" then
								if vtorso:FindFirstChild("WingHitBy") then vtorso:FindFirstChild("WingHitBy"):Destroy() end
								vtorso.Velocity = rt.CFrame.lookVector * 6.66 + rt.CFrame.upVector * 100
								vhum.PlatformStand = true
								spawn(function() 
									wait(5)
									vhum.PlatformStand = false
								end)
							elseif type2 == "fatal" then
								if vtorso:FindFirstChild("VortexGHitBy") then vtorso:FindFirstChild("VortexGHitBy"):Destroy() end
								vtorso.Velocity = rt.CFrame.lookVector * 60
								vhum.PlatformStand = true
								spawn(function() 
									wait(5)
									vhum.PlatformStand = false
								end)
							elseif type2 == "overdrive" then
								vtorso.Velocity = rt.CFrame.upVector * 150
								vhum.PlatformStand = true
								spawn(function() 
									wait(5)
									vhum.PlatformStand = false
								end)
							else
								local vel = new("BodyVelocity")
								vel.Parent = vtorso
								vel.MaxForce = vect3(math.huge,math.huge,math.huge)
								vel.Velocity = rt.CFrame.lookVector * 5
								debris:AddItem(vel,0.5)
							end
						end
						if typa == "burn" then
							sound(96730847431500,1.5,1,vtorso,0,false)
							hiteffect("burn",vtorso)
						elseif typa == "slash" then
							sound(7441099080,2,1,vtorso,0,false)
							hiteffect("blood",vtorso)
						elseif typa == "slash2" then
							if random(0,6) <= 2 then
								sound(7441099080,2,1,vtorso,0,false)
								hiteffect("blood",vtorso)
							end
						elseif typa == "slash1" then
							if random(0,12) == 0 then
								sound(7441099080,2,1,vtorso,0,false)
								hiteffect("blood",vtorso)
							end
						end
					end
				end
			end
		end
	end

	function partdamage(damage, effect, hitpos, hitarea, hitsfx, hitvol, hitpitch, part, move, typa, type2, dtime, pos)
		local hashit = false
		local Part = new("Part",script)
		Part.Name = "HitboxThing"
		Part.Transparency = 1
		Part.Size = vect3(5, 7.5, 5)
		Part.CanCollide = false
		Part.Massless = true
		Part.Locked = true
		debris:AddItem(Part,dtime)
		local Weld = new("Weld",Part)
		Weld.Part0 = rt
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
							magnitudedamage(damage, effect, hitpos, hitarea, hitsfx, hitvol, hitpitch, part, move, typa, type2)
						end
					end
				end	
			end
		end)
	end

	function hiteffect(effect,hitpart)
		if effect == nil then return end
		if effect == "blood" then
			spawn(function()
				for i = 1,random(20,30) do
					local blood = new("Part")
					local blc = {"Bright red","Really red","Crimson","Dusty Rose"}
					blood.Parent = script
					blood.Name = "Blood"
					blood.BrickColor = bc(blc[random(#blc)])
					blood.Material = "Glass"
					blood.CanCollide = false
					blood.Locked = true
					blood.Shape = Enum.PartType.Ball
					blood.Size = vect3(random(5)/10,0.45,0.45)
					blood.CFrame = hitpart.CFrame * cframe(random(-1,1),random(-1,1),random(-1,1))
					blood.Velocity = vect3(random(-30,30),random(-30,30),random(-30,30))
					debris:AddItem(blood,5)
				end
			end)
		end
		if effect == "burn" then
			local hum = hitpart.Parent:FindFirstChildOfClass("Humanoid")
			local fire = new("Fire")
			fire.Parent = hitpart
			fire.Size = 15
			fire.Heat = 30
			fire.Color = color(0.0784314, 0.0784314, 0.0784314)
			fire.SecondaryColor = color(0.384314, 0.145098, 0.819608)
			local firesound = new("Sound")
			firesound.SoundId = "rbxassetid://269252174"
			firesound.Volume = 4.5
			firesound.Looped = true
			firesound.Parent = hitpart
			firesound:Play()
			local burning = true
			spawn(function()
				while burning do
					--creator value
					local creator = new("ObjectValue")
					creator.Name = "creator"
					creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
					creator.Parent = hum
					debris:AddItem(creator,0.5)
					if not blazblue then
						hum:TakeDamage(1)
					else
						hum:TakeDamage(1.45)
					end
					wait(1)
				end
			end)
			spawn(function()
				wait(11.5)
				fire.Enabled = false
				burning = false
				firesound:Destroy()
				wait(2.5)
				fire:Destroy()
			end)
			debris:AddItem(fire, 16.5)
		end
		if effect == "sphere" then
			local sphere = new("Part")
			sphere.Parent = script
			sphere.Name = "HitSphere"
			sphere.Shape = "Ball"
			sphere.Size = vect3(1,1,1)
			sphere.Transparency = 0.5
			sphere.BrickColor = bc("Institutional white")
			sphere.Material = "Neon"
			sphere.CanCollide = false
			sphere.Anchored = true
			sphere.CFrame = hitpart.CFrame
			local tween = tweens:Create(sphere, TweenInfo.new(0.3), {Size = vect3(7.5,7.5,7.5), Transparency = 1})
			tween:Play()
			debris:AddItem(sphere,1.5)
		end
		if effect == "boom" then
			hiteffect("sphere",hitpart)
			local explosion = new("Explosion")
			explosion.Parent = workspace
			explosion.Position = hitpart.Position
			explosion.BlastRadius = 15
			explosion.BlastPressure = 0
			sound2(2814354338,3,1,hitpart,0)
		end
		if effect == "grab" then
			local sphere = new("Part")
			sphere.Parent = script
			sphere.Name = "HitSphere"
			sphere.Shape = "Ball"
			sphere.Size = vect3(1,1,1)
			sphere.Transparency = 0.5
			sphere.BrickColor = bc("Cyan")
			sphere.Material = "Neon"
			sphere.CanCollide = false
			sphere.Anchored = true
			sphere.CFrame = hitpart.CFrame
			local tween = tweens:Create(sphere, TweenInfo.new(0.35), {Size = vect3(5,5,5), Transparency = 1})
			tween:Play()
			debris:AddItem(sphere,1.5)
		end
	end

	function chatter(target,message)
		if target == nil then return end
		local head = target:FindFirstChild("Head")
		local chattext = coroutine.wrap(function()
			if char:FindFirstChild("enmayuchat") then
				char:FindFirstChild("enmayuchat"):Destroy()
			end
			local chatg = new("BillboardGui")
			local chatl = new("TextLabel")
			chatg.Parent = target
			chatg.LightInfluence = 1
			chatg.Size = udim2(9, 0, 3, 0)
			chatg.Active = true
			chatg.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
			chatg.Adornee = head
			chatg.AlwaysOnTop = true
			chatg.StudsOffset = vect3(0, 2.5, 0)
			chatg.Name = "enmayuchat"
			chatl.Parent = chatg
			chatl.Size = udim2(1, 0, 1, 0)
			chatl.Active = true
			chatl.Name = "chatlabel"
			chatl.BackgroundColor = bc("Really black")
			chatl.BackgroundColor3 = color(0,0,0)
			chatl.BackgroundTransparency = 1
			chatl.BorderColor = bc("Really black")
			chatl.BorderColor3 = color(0, 0, 0)
			chatl.BorderSizePixel = 0
			chatl.Font = Enum.Font.Creepster
			chatl.FontSize = Enum.FontSize.Size36
			chatl.Text = ""
			chatl.TextColor = bc("Really black")
			chatl.TextColor3 = color(0,0,0)
			chatl.TextSize = 35
			chatl.TextStrokeColor3 = color(0.384314, 0.145098, 0.819608)
			chatl.TextStrokeTransparency = 0
			chatl.TextScaled = true
			chatl.TextWrap = true
			chatl.TextWrapped = true
			for i = 1,string.len(message),1 do
				chatl.Text = string.sub(message,1,i)
				wait(0.025)
			end
			wait(1)
			for i = 1,5 do
				wait(0.01)
				chatl.TextStrokeTransparency = chatl.TextStrokeTransparency + .25
				chatl.TextTransparency = chatl.TextTransparency + .25
			end
			chatg:Destroy()
		end)
		chattext()
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

	function death()
		attack = true
		equipped = false
		ani = false
		if char.Torso:findFirstChild("RWBY") then
			char.Torso:findFirstChild("RWBY"):destroy()
		end
		if char.Torso:findFirstChild("JNPR") then
			char.Torso:findFirstChild("JNPR"):destroy()
		end
		if char.Torso:findFirstChild("RAGNA THE BLOODEDGE") then
			char.Torso:findFirstChild("RAGNA THE BLOODEDGE"):destroy()
		end
		if char.Torso:findFirstChild("HARUKA AMAMI") then
			char.Torso:findFirstChild("HARUKA AMAMI"):destroy()
		end
		if char.Torso:findFirstChild("JIN YAGAMI") then
			char.Torso:findFirstChild("JIN YAGAMI"):destroy()
		end
		if char:FindFirstChild("HumanoidRootPart") then
			if char.HumanoidRootPart:findFirstChild("SUGARIE SAFFRON") then
				char.HumanoidRootPart:findFirstChild("SUGARIE SAFFRON"):destroy()
			end
		end
		ragdoll(char)
		local rand = random(0,3)
		if rand == 0 then
			chatter(char,"Wasn't good enough...")
		elseif rand == 1 then
			chatter(char,"How could this happen?")
		elseif rand == 2 then
			chatter(char,"Lost to a weakling like you...")
		elseif rand == 3 then
			chatter(char,"Is this the end?")
		end
	end

	Tool.Unequipped:Connect(function()
		equipped = false
		ani = false
		zDead:Disconnect()
		if char.Torso:findFirstChild("RWBY") then
			char.Torso:findFirstChild("RWBY"):destroy()
		end
		if char.Torso:findFirstChild("JNPR") then
			char.Torso:findFirstChild("JNPR"):destroy()
		end
		if char.Torso:findFirstChild("RAGNA THE BLOODEDGE") then
			char.Torso:findFirstChild("RAGNA THE BLOODEDGE"):destroy()
		end
		if char.Torso:findFirstChild("HARUKA AMAMI") then
			char.Torso:findFirstChild("HARUKA AMAMI"):destroy()
		end
		if char.Torso:findFirstChild("JIN YAGAMI") then
			char.Torso:findFirstChild("JIN YAGAMI"):destroy()
		end
		if char:FindFirstChild("HumanoidRootPart") then
			if char.HumanoidRootPart:findFirstChild("SUGARIE SAFFRON") then
				char.HumanoidRootPart:findFirstChild("SUGARIE SAFFRON"):destroy()
			end
		end
	end)

	Tool.Equipped:Connect(function()
		equipped = true
		ani = true
		started = true
		owner = game:GetService("Players"):GetPlayerFromCharacter(Tool.Parent)
		char = owner.Character
		hum = char:FindFirstChildOfClass("Humanoid")
		hum.WalkSpeed = 16
		rt = char:FindFirstChild("HumanoidRootPart")
		hum.BreakJointsOnDeath = false
		zDead=hum.Died:connect(death)
		local lhw = new("Weld")
		local lsw = new("Weld")
		local nkw = new("Weld")
		local rhw = new("Weld")
		local rsw = new("Weld")
		local rjw = new("Weld")
		lhw.Name = "JIN YAGAMI"
		lhw.Parent = char.Torso
		lhw.C0 = cframe(-0.5, -2, 0, 1, -0, 0, 0, 1, 0, -0, 0, 1)
		lhw.Part0 = char.Torso
		lhw.Part1 = char["Left Leg"]
		lsw.Name = "JNPR"
		lsw.Parent = char.Torso
		lsw.C0 = cframe(-1.5, 0, 0, 1, -0, 0, 0, 1, 0, -0, 0, 1)
		lsw.Part0 = char.Torso
		lsw.Part1 = char["Left Arm"]
		nkw.Name = "RAGNA THE BLOODEDGE"
		nkw.Parent = char.Torso
		nkw.C0 = cframe(0, 1.5, 0, 1, -0, 0, 0, 1, 0, -0, 0, 1)
		nkw.Part0 = char.Torso
		nkw.Part1 = char.Head
		rhw.Name = "HARUKA AMAMI"
		rhw.Parent = char.Torso
		rhw.C0 = cframe(0.5, -2, 0, 1, -0, 0, 0, 1, 0, -0, 0, 1)
		rhw.Part0 = char.Torso
		rhw.Part1 = char["Right Leg"]
		rsw.Name = "RWBY"
		rsw.Parent = char.Torso
		rsw.C0 = cframe(1.5, 0, 0, 1, 0, 0, 0, 1, -0, 0, 0, 1)
		rsw.Part0 = char.Torso
		rsw.Part1 = char["Right Arm"]
		rjw.Name = "SUGARIE SAFFRON"
		rjw.Parent = rt
		rjw.Part0 = rt
		rjw.Part1 = char.Torso
		anim = "idle"
		spawn(function()
			while rs.Stepped:Wait() and ani do
				sine = tick()*60
				if ani then
					if anim == "idle" then
						rjw.C0 = rjw.C0:Lerp(cframe(0 ,0+ 0.05 * sin(sine / 64), 0) * angles(rad(0), rad(-45), rad(-0)), 0.1)
						nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5+ 0.05 * sin(sine / 64), -0.125) * angles(rad(-10- 5 * sin(sine / 64)), rad(45), rad(0)), 0.1)
						rsw.C0 = rsw.C0:Lerp(cframe(1.5 ,0.15, 0.05) * angles(rad(-10), rad(-10), rad(20- 2.5 * sin(sine / 64))), 0.1)
						lsw.C0 = lsw.C0:Lerp(cframe(-1.6, 0.25, 0.15) * angles(rad(15), rad(20), rad(-45+ 5 * sin(sine / 64))), 0.1)
						rhw.C0 = rhw.C0:Lerp(cframe(0.65,-2- 0.05 * sin(sine / 64),0) *  angles(rad(-5), rad(5), rad(7.5)), 0.1)
						lhw.C0 = lhw.C0:Lerp(cframe(-0.7,-2- 0.05 * sin(sine / 64),0.125) *  angles(rad(0), rad(30), rad(-10)), 0.1)
					elseif anim == "walk" then
						rjw.C0 = rjw.C0:Lerp(cframe(0 ,0 + 0.15 * sin(sine/8.88), 0) * angles(rad(20), rad(0), rad(-0)), 0.3)
						nkw.C0 = nkw.C0:Lerp(cframe(0, 1.4, -0.45) * angles(rad(-30), rad(0), rad(0)), 0.3)
						rsw.C0 = rsw.C0:Lerp(cframe(1.5 , 0, 0 + 0.25 - (0.5 * sin(sine/8.88))) * angles(rad(-20 + 25 * sin(sine/8.88)), rad(0), rad(-0)), 0.3)
						lsw.C0 = lsw.C0:Lerp(cframe(-1.25, -0.15, 0) * angles(rad(-15 + 5 * sin(sine/8.88)), rad(0), rad(20)), 0.3)
						rhw.C0 = rhw.C0:Lerp(cframe(0.5,-2 - 0.35 * sin(sine/8.88),0 + 0.3 - (0.75 * sin(sine/8.88))) *  angles(rad(0 + 45 * sin(sine/8.88)), rad(0), rad(0)) *  angles(rad(-20), rad(0), rad(0)), 0.3)
						lhw.C0 = lhw.C0:Lerp(cframe(-0.5,-2 + 0.1 - (0.15 * sin(sine/8.88)),0 + 0.3 + (0.75 * sin(sine/8.88))) *  angles(rad(0 - 45 * sin(sine/8.88)), rad(0), rad(0)) *  angles(rad(-20), rad(0), rad(0)), 0.3)
					elseif anim == "jump" then
						rjw.C0 = rjw.C0:Lerp(cframe(0 ,0, 0) * angles(rad(-30), rad(0), rad(-0)), 0.3)
						nkw.C0 = nkw.C0:Lerp(cframe(0, 1.35, -0.45) * angles(rad(-30), rad(0), rad(0)), 0.3)
						rsw.C0 = rsw.C0:Lerp(cframe(1 , 0.15, -0.75) * angles(rad(60), rad(25), rad(-30)), 0.3)
						lsw.C0 = lsw.C0:Lerp(cframe(-0.75, 0.45, -0.75) * angles(rad(75), rad(0), rad(75)), 0.3)
						rhw.C0 = rhw.C0:Lerp(cframe(0.5,-1.75,-0.5) *  angles(rad(-15), rad(0), rad(0)), 0.3)
						lhw.C0 = lhw.C0:Lerp(cframe(-0.5,-1.25,-0.45) *  angles(rad(-30), rad(0), rad(0)), 0.3)
					elseif anim == "fall" then	
						rjw.C0 = rjw.C0:Lerp(cframe(0 ,0, 0) * angles(rad(10), rad(0), rad(-0)), 0.3)
						nkw.C0 = nkw.C0:Lerp(cframe(0, 1.35, -0.45) * angles(rad(-30), rad(0), rad(0)), 0.3)
						rsw.C0 = rsw.C0:Lerp(cframe(1.5 , 1, -0.25) * angles(rad(150), rad(0), rad(-0)), 0.3)
						lsw.C0 = lsw.C0:Lerp(cframe(-1.5, 1, -0.25) * angles(rad(150), rad(0), rad(0)), 0.3)
						rhw.C0 = rhw.C0:Lerp(cframe(0.5,-1.75,0.15) *  angles(rad(-35), rad(0), rad(0)), 0.3)
						lhw.C0 = lhw.C0:Lerp(cframe(-0.5,-1.75,-0.15) *  angles(rad(-15), rad(0), rad(0)), 0.3)
					elseif anim == "sit" then	
						rjw.C0 = rjw.C0:Lerp(cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-0)), 0.3)
						nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
						rsw.C0 = rsw.C0:Lerp(cframe(1.5 , 0, 0.25) * angles(rad(-30), rad(0), rad(-0)), 0.3)
						lsw.C0 = lsw.C0:Lerp(cframe(-1.5, 0.5, -0.5) * angles(rad(90), rad(0), rad(0)), 0.3)
						rhw.C0 = rhw.C0:Lerp(cframe(0.5,-1,-1) *  angles(rad(90), rad(0), rad(0)), 0.3)
						lhw.C0 = lhw.C0:Lerp(cframe(-0.5,-1,-1) *  angles(rad(90), rad(0), rad(0)), 0.3)
					elseif anim == "taunt" then	
						if frame == 1 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,0, 0) * angles(rad(15), rad(15), rad(-0)), 0.1)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, 0.1) * angles(rad(15), rad(-15), rad(0)), 0.1)
							rsw.C0 = rsw.C0:Lerp(cframe(1.5 ,0, 0.15) * angles(rad(-20), rad(-10), rad(0)), 0.1)
							lsw.C0 = lsw.C0:Lerp(cframe(-0.25, 1.5, -0.75) * angles(rad(90), rad(-90), rad(0)) *  angles(rad(60), rad(0), rad(0)), 0.1)
							rhw.C0 = rhw.C0:Lerp(cframe(0.65,-2,0) *  angles(rad(-15), rad(5), rad(7.5)), 0.1)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.7,-2,0.125) *  angles(rad(-10), rad(30), rad(-10)), 0.1)
						elseif frame == 2 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,-0.15, 0) * angles(rad(-20), rad(30), rad(-0)), 0.5)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, -0.35) * angles(rad(-25), rad(-30), rad(0)), 0.5)
							rsw.C0 = rsw.C0:Lerp(cframe(1.5 ,0, -0.25) * angles(rad(20), rad(-10), rad(10)), 0.5)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.5, 0.75, 0.25) * angles(rad(90), rad(-90), rad(0)) *  angles(rad(-120), rad(0), rad(0)), 0.5)
							rhw.C0 = rhw.C0:Lerp(cframe(1,-1.65,-0.5) *  angles(rad(20), rad(-15), rad(25)), 0.5)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.35,-2,-0.25) *  angles(rad(20), rad(30), rad(-0)) *  angles(rad(-15), rad(-35), rad(0)), 0.5)
						end
					elseif anim == "punch" then	
						rjw.C0 = rjw.C0:Lerp(cframe(0 ,0, 0) * angles(rad(0), rad(20), rad(-0)), 0.5)
						nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, 0) * angles(rad(-0), rad(-20), rad(0)), 0.5)
						rsw.C0 = rsw.C0:Lerp(cframe(1.5 ,0.15, -0.5) * angles(rad(50), rad(10), rad(0)), 0.5)
						lsw.C0 = lsw.C0:Lerp(cframe(-1.6, 0.25, 0.15) * angles(rad(15), rad(20), rad(-45)), 0.5)
						rhw.C0 = rhw.C0:Lerp(cframe(0.65,-2,0) *  angles(rad(-5), rad(5), rad(7.5)), 0.5)
						lhw.C0 = lhw.C0:Lerp(cframe(-0.7,-2,0.125) *  angles(rad(0), rad(30), rad(-10)), 0.5)
					elseif anim == "kick" then	
						if frame == 1 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,0, 0) * angles(rad(10), rad(0), rad(-0)), 0.3)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
							rsw.C0 = rsw.C0:Lerp(cframe(1.5 , 0.5, -0.5) * angles(rad(0), rad(-60), rad(0)) *  angles(rad(0), rad(90), rad(60)), 0.3)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.5, 1, -0.5) * angles(rad(150), rad(0), rad(0)), 0.3)
							rhw.C0 = rhw.C0:Lerp(cframe(0.5,-2,0) *  angles(rad(-20), rad(0), rad(0)), 0.3)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.5,-2,0.5) *  angles(rad(0), rad(75), rad(-20)), 0.3)
						elseif frame == 2 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,0, 0) * angles(rad(30), rad(-20), rad(-0)), 0.5)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, 0) * angles(rad(-0), rad(20), rad(0)), 0.5)
							rsw.C0 = rsw.C0:Lerp(cframe(1.5 , 0.5, -0.5) * angles(rad(0), rad(-60), rad(30)) *  angles(rad(0), rad(90), rad(60)), 0.5)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.5, 1, -0.5) * angles(rad(150), rad(-180), rad(60)), 0.5)
							rhw.C0 = rhw.C0:Lerp(cframe(0.75,-2,0.25) *  angles(rad(-35), rad(0), rad(20)), 0.5)
							lhw.C0 = lhw.C0:Lerp(cframe(-1.5,-0.25,-1.75) *  angles(rad(100), rad(0), rad(-20)), 0.5)
						end
					elseif anim == "slash" then	
						if frame == 1 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-0)), 0.5)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, -0.125) * angles(rad(-10), rad(-75), rad(0)), 0.5)
							rsw.C0 = rsw.C0:Lerp(cframe(1.75 ,0.75, -0.25) * angles(rad(-30), rad(-10), rad(60))*  angles(rad(60), rad(0), rad(30)), 0.5)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.6, 0.25, 0.15) * angles(rad(15), rad(20), rad(-45)), 0.5)
							rhw.C0 = rhw.C0:Lerp(cframe(0.65,-2,0) *  angles(rad(-5), rad(5), rad(7.5)), 0.5)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.7,-2,0.125) *  angles(rad(0), rad(30), rad(-10)), 0.5)
						elseif frame == 2 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,0, 0) * angles(rad(0), rad(60), rad(-0)), 0.5)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, -0.125) * angles(rad(-10), rad(-75), rad(0)), 0.5)
							rsw.C0 = rsw.C0:Lerp(cframe(1.75 ,0.75, -0.25) * angles(rad(-30), rad(-10), rad(60))*  angles(rad(60), rad(0), rad(30)), 0.5)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.6, 0.25, 0.15) * angles(rad(15), rad(20), rad(-45)), 0.5)
							rhw.C0 = rhw.C0:Lerp(cframe(0.65,-2,0) *  angles(rad(-5), rad(5), rad(7.5)), 0.5)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.7,-2,0.125) *  angles(rad(0), rad(30), rad(-10)), 0.5)
						elseif frame == 3 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,0, 0) * angles(rad(0), rad(150), rad(-0)), 0.5)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, -0.125) * angles(rad(-10), rad(-75), rad(0)), 0.5)
							rsw.C0 = rsw.C0:Lerp(cframe(1.75 ,0.75, -0.25) * angles(rad(-30), rad(-10), rad(60))*  angles(rad(60), rad(0), rad(30)), 0.5)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.6, 0.25, 0.15) * angles(rad(15), rad(20), rad(-45)), 0.5)
							rhw.C0 = rhw.C0:Lerp(cframe(0.65,-2,0) *  angles(rad(-5), rad(5), rad(7.5)), 0.5)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.7,-2,0.125) *  angles(rad(0), rad(30), rad(-10)), 0.5)
						end
					elseif anim == "drive" then	
						if frame == 1 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,0, 0) * angles(rad(7.5), rad(-0), rad(-0)), 0.1)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, -0.125) * angles(rad(10), rad(0), rad(0)), 0.1)
							rsw.C0 = rsw.C0:Lerp(cframe(1.5 ,0.15, 0.25) * angles(rad(-30), rad(-10), rad(20)), 0.1)
							lsw.C0 = lsw.C0:Lerp(cframe(-0.75, 1.5, 0.5) * angles(rad(210), rad(20), rad(60)), 0.1)
							rhw.C0 = rhw.C0:Lerp(cframe(0.65,-2,0.25) *  angles(rad(-45), rad(5), rad(7.5)), 0.1)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.5,-2,0.25) *  angles(rad(-15), rad(30), rad(-10)), 0.1)
						elseif frame == 2 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,-0.5, -0.5) * angles(rad(0), rad(45), rad(-0)) * angles(rad(-30), rad(0), rad(-0)), 0.275)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, -0.125) * angles(rad(-20), rad(-25), rad(0)), 0.275)
							rsw.C0 = rsw.C0:Lerp(cframe(1.75 ,0.5, 0.05) * angles(rad(30), rad(-10), rad(60)), 0.275)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.6, 0.25, -0.15) * angles(rad(15), rad(-20), rad(-45)), 0.275)
							rhw.C0 = rhw.C0:Lerp(cframe(0.5,-1.25,0) *  angles(rad(-45), rad(5), rad(7.5)), 0.275)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.75,-1.5,-0.125) *  angles(rad(0), rad(30), rad(-10)), 0.275)
						elseif frame == 3 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,-0.5, -0.5) * angles(rad(0), rad(25), rad(-0)) * angles(rad(-15), rad(0), rad(-0)), 0.275)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, -0.125) * angles(rad(-20), rad(-25), rad(0)), 0.275)
							rsw.C0 = rsw.C0:Lerp(cframe(1.75 ,0.5, 0.05) * angles(rad(30), rad(-10), rad(60)), 0.275)
							lsw.C0 = lsw.C0:Lerp(cframe(-0.8, 0.5, -0.75) * angles(rad(75), rad(-20), rad(75)) * angles(rad(0), rad(-45), rad(-0)), 0.275)
							rhw.C0 = rhw.C0:Lerp(cframe(0.5,-1.25,0) *  angles(rad(-45), rad(5), rad(7.5)), 0.275)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.75,-1.5,-0.125) *  angles(rad(0), rad(30), rad(-10)), 0.275)
						end
					elseif anim == "apunch" then	
						rjw.C0 = rjw.C0:Lerp(cframe(0 ,0, 0) * angles(rad(-30), rad(-45), rad(-0)), 0.3)
						nkw.C0 = nkw.C0:Lerp(cframe(0, 1.35, -0.45) * angles(rad(-30), rad(30), rad(0)), 0.3)
						rsw.C0 = rsw.C0:Lerp(cframe(1.5, 0.3, -0.75) * angles(rad(60), rad(25), rad(30)), 0.3)
						lsw.C0 = lsw.C0:Lerp(cframe(-2, 0.5, -1) * angles(rad(90), rad(0), rad(-30)) * angles(rad(0), rad(-90), rad(15)) * angles(rad(-15), rad(0), rad(-0)), 0.3)
						rhw.C0 = rhw.C0:Lerp(cframe(0.5,-1.75,-0.5) *  angles(rad(-15), rad(0), rad(0)), 0.3)
						lhw.C0 = lhw.C0:Lerp(cframe(-0.5,-1.25,-0.45) *  angles(rad(-30), rad(0), rad(0)), 0.3)
					elseif anim == "akick" then	
						if frame == 1 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,0, 0) * angles(rad(-30), rad(-90), rad(-0)), 0.3)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.35, -0.45) * angles(rad(-30), rad(60), rad(0)), 0.3)
							rsw.C0 = rsw.C0:Lerp(cframe(1 , 0.15, -0.75) * angles(rad(60), rad(25), rad(-30)), 0.3)
							lsw.C0 = lsw.C0:Lerp(cframe(-0.75, 0.45, -0.75) * angles(rad(75), rad(0), rad(75)), 0.3)
							rhw.C0 = rhw.C0:Lerp(cframe(0.5,-1.75,-0.5) *  angles(rad(-15), rad(0), rad(0)), 0.3)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.5,-1.5,-0) *  angles(rad(-30), rad(0), rad(0)), 0.3)
						elseif frame == 2 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,0, 0) * angles(rad(30), rad(-90), rad(-0)), 0.3)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.35, -0.45) * angles(rad(-30), rad(60), rad(0)), 0.3)
							rsw.C0 = rsw.C0:Lerp(cframe(1.5 , 0.5, -0.5) * angles(rad(0), rad(-60), rad(0)) *  angles(rad(0), rad(90), rad(60)), 0.3)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.5, 1, -0.5) * angles(rad(150), rad(0), rad(0)), 0.3)
							rhw.C0 = rhw.C0:Lerp(cframe(1,-1.5,-0.5) *  angles(rad(-15), rad(0), rad(45)), 0.3)
							lhw.C0 = lhw.C0:Lerp(cframe(-1.5,-2,-0) *  angles(rad(-15), rad(0), rad(-30)), 0.3)
						end
					elseif anim == "aslash" then	
						if frame == 1 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,0, 0) * angles(rad(-30), rad(-60), rad(0)) * angles(rad(30), rad(-0), rad(0)), 0.3)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.35, -0.45) * angles(rad(-30), rad(50), rad(0)), 0.3)
							rsw.C0 = rsw.C0:Lerp(cframe(1.75 ,0.75, -0.25) * angles(rad(-30), rad(-10), rad(60))*  angles(rad(60), rad(0), rad(30)), 0.5)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.6, 0.25, 0.15) * angles(rad(15), rad(20), rad(-45)), 0.5)
							rhw.C0 = rhw.C0:Lerp(cframe(0.5,-1.75,-0.5) *  angles(rad(-15), rad(0), rad(0)), 0.3)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.5,-1.25,-0.45) *  angles(rad(-30), rad(0), rad(0)), 0.3)
						elseif frame == 2 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,0, 0) * angles(rad(30), rad(75), rad(0)) * angles(rad(-30), rad(-0), rad(0)), 0.3)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.35, -0.45) * angles(rad(-30), rad(-50), rad(0)), 0.3)
							rsw.C0 = rsw.C0:Lerp(cframe(1.75 ,0.75, -0.25) * angles(rad(-60), rad(-30), rad(60))*  angles(rad(90), rad(0), rad(30)), 0.5)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.6, 0.25, 0.15) * angles(rad(15), rad(20), rad(-45)), 0.5)
							rhw.C0 = rhw.C0:Lerp(cframe(0.5,-1.75,-0.5) *  angles(rad(-15), rad(0), rad(0)), 0.3)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.5,-1.25,-0.45) *  angles(rad(-30), rad(0), rad(0)), 0.3)
						elseif frame == 3 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,0, 0) * angles(rad(15), rad(115), rad(0)) * angles(rad(-30), rad(-0), rad(0)), 0.3)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.35, -0.45) * angles(rad(-30), rad(-50), rad(0)), 0.3)
							rsw.C0 = rsw.C0:Lerp(cframe(1,0.15, -0.75) * angles(rad(-60), rad(-45), rad(60))*  angles(rad(150), rad(0), rad(0)), 0.5)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.6, 0.25, 0.15) * angles(rad(15), rad(20), rad(-45)), 0.5)
							rhw.C0 = rhw.C0:Lerp(cframe(0.5,-1.75,-0.5) *  angles(rad(-15), rad(0), rad(0)), 0.3)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.5,-1.25,-0.45) *  angles(rad(-30), rad(0), rad(0)), 0.3)
						end
					elseif anim == "adrive" then	
						if frame == 1 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,0, 0) * angles(rad(-30), rad(-75), rad(0)) * angles(rad(30), rad(-0), rad(0)), 0.3)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.35, -0.45) * angles(rad(-30), rad(75), rad(0)), 0.3)
							rsw.C0 = rsw.C0:Lerp(cframe(1.75 ,0.75, -0.25) * angles(rad(-30), rad(-10), rad(60))*  angles(rad(60), rad(0), rad(30)), 0.5)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.6, 0.25, 0.15) * angles(rad(15), rad(20), rad(-45)), 0.5)
							rhw.C0 = rhw.C0:Lerp(cframe(0.5,-1.75,-0.5) *  angles(rad(-15), rad(0), rad(0)), 0.3)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.5,-1.25,-0.45) *  angles(rad(-30), rad(0), rad(0)), 0.3)
						elseif frame == 2 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,0, 0) * angles(rad(-10), rad(90), rad(0)) * angles(rad(-20), rad(-0), rad(0)), 0.3)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.35, -0.45) * angles(rad(-30), rad(-90), rad(0)), 0.3)
							rsw.C0 = rsw.C0:Lerp(cframe(1.75 ,0.75, -0.25) * angles(rad(-30), rad(-10), rad(35))*  angles(rad(60), rad(0), rad(30)), 0.5)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.5, 0.25, -0.25) * angles(rad(75), rad(20), rad(-15)), 0.5)
							rhw.C0 = rhw.C0:Lerp(cframe(0.25,-1.75,-0.25) *  angles(rad(-30), rad(0), rad(-20)), 0.3)
							lhw.C0 = lhw.C0:Lerp(cframe(-1,-1.15,-1) *  angles(rad(15), rad(-45), rad(-45)), 0.3)
						end
					elseif anim == "charge" then
						if frame == 1 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,0, 0) * angles(rad(-10), rad(-0), rad(-0)), 0.3)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, -0.125) * angles(rad(-20), rad(0), rad(0)), 0.3)
							rsw.C0 = rsw.C0:Lerp(cframe(0.5,1.5, -1.25) * angles(rad(160), rad(-10), rad(-45)), 0.3)
							lsw.C0 = lsw.C0:Lerp(cframe(-0.5, 1.65, -1) * angles(rad(150), rad(20), rad(65)), 0.3)
							rhw.C0 = rhw.C0:Lerp(cframe(0.625,-2,-0.25) *  angles(rad(5), rad(5), rad(7.5)), 0.3)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.625,-2,-0.125) *  angles(rad(10), rad(30), rad(-10)), 0.3)
						elseif frame == 2 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,0, 0) * angles(rad(15), rad(-0), rad(-0)), 0.45)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, 0.125) * angles(rad(20), rad(0), rad(0)), 0.45)
							rsw.C0 = rsw.C0:Lerp(cframe(1.5 ,0.15, 0.05)  * angles(rad(130), rad(-25), rad(75)), 0.45)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.5, 0, 0) * angles(rad(115), rad(20), rad(-60)), 0.45)
							rhw.C0 = rhw.C0:Lerp(cframe(0.625,-2,0.125) *  angles(rad(-15), rad(5), rad(7.5)), 0.45)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.625,-2,0.25) *  angles(rad(-10), rad(30), rad(-10)), 0.45)
						elseif frame == 3 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,0, 0) * angles(rad(0), rad(-0), rad(-0)), 0.3)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, -0.125) * angles(rad(-10), rad(0), rad(0)), 0.3)
							rsw.C0 = rsw.C0:Lerp(cframe(1.5 ,0.15, 0.05) * angles(rad(-10), rad(-10), rad(20)), 0.3)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.6, 0.25, 0.15) * angles(rad(15), rad(20), rad(-45)), 0.3)
							rhw.C0 = rhw.C0:Lerp(cframe(0.65,-2,0) *  angles(rad(-5), rad(5), rad(7.5)), 0.3)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.7,-2,0.125) *  angles(rad(0), rad(30), rad(-10)), 0.3)
						end
					elseif anim == "grab" then	
						rjw.C0 = rjw.C0:Lerp(cframe(0 ,0, 0) * angles(rad(0), rad(15), rad(-0)), 0.3)
						nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, -0) * angles(rad(-0), rad(-15), rad(0)), 0.3)
						rsw.C0 = rsw.C0:Lerp(cframe(1.5 ,0.15, 0.05) * angles(rad(-10), rad(-10), rad(20)), 0.3)
						lsw.C0 = lsw.C0:Lerp(cframe(-0.5, 0.5, -1.5) * angles(rad(90), rad(-15), rad(25)), 0.3)
						rhw.C0 = rhw.C0:Lerp(cframe(0.75,-2,-0.25) *  angles(rad(0), rad(-5), rad(15)), 0.3)
						lhw.C0 = lhw.C0:Lerp(cframe(-0.5,-2,-0.25) *  angles(rad(5), rad(30), rad(-5)), 0.3)
					elseif anim == "graba" then	
						if frame == 1 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,0, 0) * angles(rad(25), rad(-15), rad(-0)), 0.3)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, 0.125) * angles(rad(35), rad(15), rad(0)), 0.3)
							rsw.C0 = rsw.C0:Lerp(cframe(1.5 ,0.15, 0.05) * angles(rad(-10), rad(-10), rad(20)), 0.3)
							lsw.C0 = lsw.C0:Lerp(cframe(-0.75, 0, -1.25) * angles(rad(60), rad(-15), rad(0)), 0.3)
							rhw.C0 = rhw.C0:Lerp(cframe(0.75,-2,-0.5) *  angles(rad(-25), rad(15), rad(15)), 0.3)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.5,-2,-0) *  angles(rad(-30), rad(30), rad(-5)), 0.3)
						else
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,0, -0.45) * angles(rad(-20), rad(-0), rad(-0)), 0.3)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, -0.45) * angles(rad(-30), rad(0), rad(0)), 0.3)
							rsw.C0 = rsw.C0:Lerp(cframe(1.5 ,0.15, 0.05) * angles(rad(-10), rad(-10), rad(20)), 0.3)
							lsw.C0 = lsw.C0:Lerp(cframe(-0.75, 0.5, -1.25) * angles(rad(115), rad(15), rad(30)), 0.3)
							rhw.C0 = rhw.C0:Lerp(cframe(0.75,-2,-0.5) *  angles(rad(20), rad(15), rad(15)), 0.3)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.5,-2,-0.25) *  angles(rad(25), rad(30), rad(-5)), 0.3)
						end
					elseif anim == "agrab" then	
						if frame == 1 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,0, 0) * angles(rad(-30), rad(0), rad(-0)), 0.3)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.35, -0.45) * angles(rad(-30), rad(0), rad(0)), 0.3)
							rsw.C0 = rsw.C0:Lerp(cframe(1 , 0.3, -0.75) * angles(rad(75), rad(25), rad(-30)), 0.3)
							lsw.C0 = lsw.C0:Lerp(cframe(-1, 0.3, -0.75) * angles(rad(75), rad(0), rad(30)), 0.3)
							rhw.C0 = rhw.C0:Lerp(cframe(0.5,-1.75,-0.5) *  angles(rad(-15), rad(0), rad(0)), 0.3)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.5,-1.25,-0.45) *  angles(rad(-30), rad(0), rad(0)), 0.3)
						elseif frame == 2 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,0, 0) * angles(rad(0), rad(-45), rad(-0)), 0.15)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, -0.0) * angles(rad(-0), rad(45), rad(0)), 0.15)
							rsw.C0 = rsw.C0:Lerp(cframe(1.5 ,0.45, 0.05) * angles(rad(-10), rad(-10), rad(45)), 0.15)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.5, 0.5, -1) * angles(rad(0), rad(-45), rad(-90)), 0.3)
							rhw.C0 = rhw.C0:Lerp(cframe(0.5,-1.75,-0.5) *  angles(rad(-15), rad(0), rad(0)), 0.3)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.5,-1.25,-0.45) *  angles(rad(-30), rad(0), rad(0)), 0.3)
						end
					elseif anim == "aiko" then
						rjw.C0 = rjw.C0:Lerp(cframe(0 ,0, 0) * angles(rad(0), rad(-45), rad(-0)), 0.1)
						nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, -0.125) * angles(rad(-10), rad(45), rad(0)), 0.1)
						rsw.C0 = rsw.C0:Lerp(cframe(1.5 ,0.15, 0.05) * angles(rad(-10), rad(-10), rad(20)), 0.1)
						lsw.C0 = lsw.C0:Lerp(cframe(-1.6, 0.25, 0.15) * angles(rad(15), rad(20), rad(-45)), 0.1)
						rhw.C0 = rhw.C0:Lerp(cframe(0.65,-2,0) *  angles(rad(-5), rad(5), rad(7.5)), 0.1)
						lhw.C0 = lhw.C0:Lerp(cframe(-0.7,-2,0.125) *  angles(rad(0), rad(30), rad(-10)), 0.1)
					elseif anim == "yui" then
						rjw.C0 = rjw.C0:Lerp(cframe(0 ,-0.15, 0) * angles(rad(0), rad(105), rad(-10)), 0.25)
						nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, -0.125) * angles(rad(-10), rad(-75), rad(0)), 0.25)
						rsw.C0 = rsw.C0:Lerp(cframe(1.5,0.15, 0.75) * angles(rad(-10), rad(-75), rad(-10)) * angles(rad(60), rad(-10), rad(10)), 0.25)
						lsw.C0 = lsw.C0:Lerp(cframe(-1.3, 0.5, -0.5) * angles(rad(90), rad(-20), rad(20)), 0.25)
						rhw.C0 = rhw.C0:Lerp(cframe(1,-1.75,-0.25) *  angles(rad(-0), rad(-40), rad(15)), 0.25)
						lhw.C0 = lhw.C0:Lerp(cframe(-0.6,-2,-0.25) *  angles(rad(-10), rad(15), rad(10)), 0.25)
					elseif anim == "ayui" then	
						rjw.C0 = rjw.C0:Lerp(cframe(0 ,0, 0) * angles(rad(15), rad(-0), rad(-0)), 0.45)
						nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, 0.125) * angles(rad(20), rad(0), rad(0)), 0.45)
						rsw.C0 = rsw.C0:Lerp(cframe(1.5 ,0.15, 0.05)  * angles(rad(130), rad(-25), rad(75)), 0.45)
						lsw.C0 = lsw.C0:Lerp(cframe(-1.5, 0, 0) * angles(rad(115), rad(20), rad(-60)), 0.45)
						rhw.C0 = rhw.C0:Lerp(cframe(0.5,-1.75,0.15) *  angles(rad(-35), rad(0), rad(0)), 0.3)
						lhw.C0 = lhw.C0:Lerp(cframe(-0.5,-1.75,-0.15) *  angles(rad(-15), rad(0), rad(0)), 0.3)
					elseif anim == "grenade" then
						rjw.C0 = rjw.C0:Lerp(cframe(0 ,-0.25, -0.5) * angles(rad(0), rad(75), rad(-10)), 0.5)
						nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, 0) * angles(rad(-0), rad(-75), rad(0)), 0.5)
						rsw.C0 = rsw.C0:Lerp(cframe(1.5 ,0.15, 0.45) * angles(rad(90), rad(-55), rad(75)) * angles(rad(30), rad(20), rad(-0)), 0.5)
						lsw.C0 = lsw.C0:Lerp(cframe(-1.5, 0, -0.15) * angles(rad(15), rad(75), rad(45)) * angles(rad(30), rad(0), rad(-0)), 0.5)
						rhw.C0 = rhw.C0:Lerp(cframe(0.75,-1.75,-0.25) *  angles(rad(10), rad(-35), rad(15)), 0.3)
						lhw.C0 = lhw.C0:Lerp(cframe(-0.65,-2,-0.45) *  angles(rad(0), rad(10), rad(-5)), 0.3)
					elseif anim == "striker" then
						if frame == 1 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,-1.15, 0) * angles(rad(0), rad(60), rad(-30)) * angles(rad(-45), rad(0), rad(-0)), 0.15)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, 0) * angles(rad(-0), rad(0), rad(0)), 0.15)
							rsw.C0 = rsw.C0:Lerp(cframe(1.5,0.75, -0.75) * angles(rad(-10), rad(-10), rad(60)) * angles(rad(90), rad(0), rad(-0)), 0.15)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.6, 0.5, -0.15) * angles(rad(15), rad(20), rad(-90)) * angles(rad(60), rad(0), rad(-0)), 0.15)
							rhw.C0 = rhw.C0:Lerp(cframe(0.25, -1.75, 0.5) *  angles(rad(0), rad(-60), rad(-20)) * angles(rad(-20), rad(0), rad(-0)), 0.15)
							lhw.C0 = lhw.C0:Lerp(cframe(0, -0.5, -1) *  angles(rad(-25), rad(-60), rad(-60)), 0.15)
						elseif frame == 2 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,-1.5, -0.5) * angles(rad(0), rad(75), rad(-10)), 0.5)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, 0) * angles(rad(-0), rad(-75), rad(0)), 0.5)
							rsw.C0 = rsw.C0:Lerp(cframe(1.5 ,0, 0.25) * angles(rad(90), rad(-55), rad(75)) * angles(rad(-30), rad(45), rad(-0)), 0.5)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.5, 0, -0.15) * angles(rad(15), rad(75), rad(45)) * angles(rad(30), rad(0), rad(-0)), 0.5)
							rhw.C0 = rhw.C0:Lerp(cframe(0.5,-0.65,-0.5) *  angles(rad(0), rad(-20), rad(-10)), 0.3)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.5,-1.15,0) *  angles(rad(-75), rad(0), rad(0)), 0.3)
						elseif frame == 3 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,0, 0) * angles(rad(-30), rad(-180), rad(0)), 0.2)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, -0.125) * angles(rad(-10), rad(75), rad(0)), 0.2)
							rsw.C0 = rsw.C0:Lerp(cframe(1.5 ,0, 0.45) * angles(rad(60), rad(-30), rad(20)), 0.2)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.45, 1.75, 0.25) * angles(rad(150), rad(0), rad(0)), 0.3)
							rhw.C0 = rhw.C0:Lerp(cframe(0.5, -1.25, 0) *  angles(rad(-60), rad(0), rad(0)), 0.3)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.5,-1.6,0) *  angles(rad(0), rad(75), rad(-15)), 0.3)
						elseif frame == 4 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,0, 0) * angles(rad(-0), rad(-180), rad(0)) * angles(rad(60), rad(-45), rad(-0)), 0.2)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, -0.125) * angles(rad(-10), rad(45), rad(0)), 0.2)
							rsw.C0 = rsw.C0:Lerp(cframe(1.5 ,0, 0.45) * angles(rad(60), rad(-60), rad(45)), 0.2)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.25, 1, -0.5) * angles(rad(105), rad(-30), rad(15)), 0.3)
							rhw.C0 = rhw.C0:Lerp(cframe(0.75, -1.25, 0.75) *  angles(rad(-75), rad(0), rad(30)), 0.3)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.5, -1.5, 0.25) *  angles(rad(-60), rad(0), rad(0)), 0.3)
						elseif frame == 5 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,0, 0) * angles(rad(-60), rad(0), rad(-0)), 0.3)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.35, -0.45) * angles(rad(-30), rad(0), rad(0)), 0.3)
							rsw.C0 = rsw.C0:Lerp(cframe(1 , 0.15, -0.75) * angles(rad(60), rad(25), rad(-30)), 0.3)
							lsw.C0 = lsw.C0:Lerp(cframe(-0.75, 0.45, -0.75) * angles(rad(75), rad(0), rad(75)), 0.3)
							rhw.C0 = rhw.C0:Lerp(cframe(0.5,-1.75,-0.5) *  angles(rad(-15), rad(0), rad(0)), 0.3)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.5,-1.25,-0.45) *  angles(rad(-30), rad(0), rad(0)), 0.3)
						end
					elseif anim == "strikerk" then
						if frame == 1 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,0, 0) * angles(rad(-45), rad(90), rad(-0)), 0.3)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.35, -0.45) * angles(rad(-30), rad(0), rad(0)), 0.3)
							rsw.C0 = rsw.C0:Lerp(cframe(1.5 , 1, 0) * angles(rad(0), rad(-30), rad(90)) * angles(rad(75), rad(60), rad(0)), 0.3)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.5, 0.5, -0.5) * angles(rad(90), rad(-30), rad(0)), 0.3)
							rhw.C0 = rhw.C0:Lerp(cframe(0.65,-1.75,-0.25) *  angles(rad(-45), rad(-20), rad(0)), 0.3)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.75,-1.5,-0.75) *  angles(rad(45), rad(0), rad(-30)), 0.3)
						elseif frame == 2 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,0, 0) * angles(rad(-20), rad(180), rad(-0)), 0.3)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, 0) * angles(rad(15), rad(0), rad(0)), 0.3)
							rsw.C0 = rsw.C0:Lerp(cframe(1.25 , 1.5, -1) * angles(rad(0), rad(-30), rad(90)) * angles(rad(75), rad(-45), rad(0)) * angles(rad(90), rad(0), rad(-0)), 0.3)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.5, 1, 0.5) * angles(rad(90), rad(-90), rad(0)) * angles(rad(-150), rad(0), rad(-0)), 0.3)
							rhw.C0 = rhw.C0:Lerp(cframe(0.5,-1.75,0.25) *  angles(rad(-45), rad(-0), rad(0)), 0.3)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.5,-0,-1.5) *  angles(rad(135), rad(0), rad(-0)), 0.3)
						elseif frame == 3 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,0, 0) * angles(rad(-20), rad(270), rad(-0)), 0.3)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, -0.15) * angles(rad(-15), rad(30), rad(20)), 0.3)
							rsw.C0 = rsw.C0:Lerp(cframe(1.75,1, -0.75) * angles(rad(0), rad(-30), rad(90)) * angles(rad(75), rad(-45), rad(0)) * angles(rad(30), rad(15), rad(-30)), 0.3)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.75, 0.5, 0.25) * angles(rad(90), rad(-90), rad(0)) * angles(rad(-60), rad(120), rad(-0)), 0.3)
							rhw.C0 = rhw.C0:Lerp(cframe(0,-1.75,0.25) *  angles(rad(-45), rad(35), rad(-30)) * angles(rad(30), rad(0), rad(0)), 0.3)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.5,1.75,-1.25) *  angles(rad(180), rad(0), rad(30)), 0.3)
						elseif frame == 4 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,0, 0) * angles(rad(10), rad(315), rad(-0)), 0.3)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.35, -0.45) * angles(rad(-30), rad(45), rad(0)), 0.3)
							rsw.C0 = rsw.C0:Lerp(cframe(1.75,1, -0.75) * angles(rad(0), rad(-30), rad(90)) * angles(rad(75), rad(-45), rad(0)) * angles(rad(30), rad(15), rad(-30)), 0.3)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.25, 1.5, -0.25) * angles(rad(90), rad(-90), rad(0)) * angles(rad(-60), rad(120), rad(-0)) * angles(rad(90), rad(0), rad(75)), 0.3)
							rhw.C0 = rhw.C0:Lerp(cframe(0.5,-1.25,0.45) *  angles(rad(-75), rad(-20), rad(-10)), 0.3)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.45,-2,0.15) *  angles(rad(-25), rad(0), rad(10)), 0.3)
						end
					elseif anim == "tyrant" then
						if frame == 1 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,-1.15, 0) * angles(rad(-10), rad(-60), rad(30)) * angles(rad(-25), rad(0), rad(-0)), 0.15)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, 0) * angles(rad(-20), rad(30), rad(0)), 0.15)
							rsw.C0 = rsw.C0:Lerp(cframe(1.75,0.25, -0.75) * angles(rad(-10), rad(-10), rad(60)) * angles(rad(90), rad(-25), rad(-0)), 0.15)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.65, 1.15, -0.3) * angles(rad(15), rad(-60), rad(-90)) * angles(rad(45), rad(0), rad(-0)), 0.15)
							rhw.C0 = rhw.C0:Lerp(cframe(-0.25,-0.6,-1.15) *  angles(rad(-45), rad(75), rad(30)) *  angles(rad(0), rad(0), rad(20)), 0.15)
							lhw.C0 = lhw.C0:Lerp(cframe(0, -2, 0.5) *  angles(rad(-30), rad(60), rad(30)) *  angles(rad(0), rad(60), rad(0)), 0.15)
						elseif frame == 2 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,0, 0) * angles(rad(-15), rad(15), rad(0)), 0.3)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, -0.25) * angles(rad(-15), rad(0), rad(0)), 0.3)
							rsw.C0 = rsw.C0:Lerp(cframe(1.5 , 1, 0) * angles(rad(15), rad(0), rad(90)), 0.3)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.5, 0.5, -0.25) * angles(rad(90), rad(-30), rad(0)) * angles(rad(-60), rad(-30), rad(-0)) * angles(rad(-15), rad(0), rad(-30)), 0.3)
							rhw.C0 = rhw.C0:Lerp(cframe(0.5,-1.45,-0.5) *  angles(rad(-35), rad(-15), rad(0)), 0.3)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.85,-2,-0.25) *  angles(rad(0), rad(30), rad(-20)), 0.3)
						elseif frame == 3 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,-0.25, -0.5) * angles(rad(0), rad(105), rad(-10)) * angles(rad(10), rad(0), rad(-0)), 0.45)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.45, -0.25) * angles(rad(0), rad(-45), rad(0)) * angles(rad(0), rad(0), rad(20)), 0.45)
							rsw.C0 = rsw.C0:Lerp(cframe(1.5 ,0.15, 0.45) * angles(rad(90), rad(-55), rad(75)) * angles(rad(60), rad(20), rad(-0)), 0.45)
							lsw.C0 = lsw.C0:Lerp(cframe(-2, 0, -0.15) * angles(rad(15), rad(75), rad(45)) * angles(rad(60), rad(-30), rad(-0)), 0.45)
							rhw.C0 = rhw.C0:Lerp(cframe(0.5,-1.75,-0.25) *  angles(rad(-30), rad(-25), rad(-15)), 0.45)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.65,-0.25,-1.5) *  angles(rad(120), rad(10), rad(-5)), 0.45)
						end
					elseif anim == "redstar" then
						rjw.C0 = rjw.C0:Lerp(cframe(0 ,-1, -0.5) * angles(rad(0), rad(105), rad(-10)), 0.5)
						nkw.C0 = nkw.C0:Lerp(cframe(0.15, 1.5, -0.15) * angles(rad(-0), rad(-105), rad(0)) * angles(rad(-20), rad(-0), rad(-0)), 0.5)
						rsw.C0 = rsw.C0:Lerp(cframe(1.75,0.75, 0.45) * angles(rad(90), rad(-55), rad(75)) * angles(rad(45), rad(15), rad(15)), 0.5)
						lsw.C0 = lsw.C0:Lerp(cframe(-1.5, -0.25, -0) * angles(rad(15), rad(75), rad(45)) * angles(rad(30), rad(-10), rad(-0)), 0.5)
						rhw.C0 = rhw.C0:Lerp(cframe(0.75,-1,-0.45) *  angles(rad(10), rad(-45), rad(15)), 0.5)
						lhw.C0 = lhw.C0:Lerp(cframe(-1.25,-1.25,-0.3) *  angles(rad(0), rad(10), rad(-45)), 0.5)
					elseif anim == "vortex" then	
						if frame == 1 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,-1.75, 0) * angles(rad(-55), rad(-20), rad(-0)), 0.3)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, 0.3) * angles(rad(20), rad(30), rad(0)), 0.3)
							rsw.C0 = rsw.C0:Lerp(cframe(1.25, 1, -1) * angles(rad(0), rad(20), rad(-0)) * angles(rad(150), rad(0), rad(-0)), 0.3)
							lsw.C0 = lsw.C0:Lerp(cframe(0.15, 1, -0.5) * angles(rad(0), rad(20), rad(0)) * angles(rad(120), rad(-90), rad(-15)) * angles(rad(90), rad(0), rad(-0)), 0.3)
							rhw.C0 = rhw.C0:Lerp(cframe(0.5,-1.25,0) *  angles(rad(-60), rad(0), rad(0)), 0.3)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.5, -2, 0.75) *  angles(rad(-30), rad(-30), rad(0)), 0.3)
						elseif frame == 2 then
							rjw.C0 = rjw.C0:Lerp(cframe(-1.5,-1.25, -0) * angles(rad(0), rad(-90), rad(-10)), 0.3)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, -0.25) * angles(rad(-20), rad(-30), rad(0)), 0.3)
							rsw.C0 = rsw.C0:Lerp(cframe(0.75, 0.5, -1) * angles(rad(90), rad(45), rad(-0)) * angles(rad(45), rad(0), rad(-45)), 0.3)
							lsw.C0 = lsw.C0:Lerp(cframe(-1, 0, -1) * angles(rad(90), rad(0), rad(60)), 0.3)
							rhw.C0 = rhw.C0:Lerp(cframe(0.75,-0.75,-0.25) *  angles(rad(10), rad(-45), rad(15)) * angles(rad(-30), rad(0), rad(0)), 0.3)
							lhw.C0 = lhw.C0:Lerp(cframe(-1,-1.25,0.45) *  angles(rad(0), rad(10), rad(-60)) * angles(rad(-60), rad(0), rad(0)), 0.3)
						elseif frame == 3 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,-1.5, -0) * angles(rad(0), rad(-60), rad(10)), 1)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, 0) * angles(rad(-0), rad(45), rad(0)), 0.3)
							rsw.C0 = rsw.C0:Lerp(cframe(1.55 , 1, 0.25) * angles(rad(0), rad(0), rad(105)) * angles(rad(-30), rad(0), rad(0)), 0.3)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.5, 0.25, 0.25) * angles(rad(0), rad(30), rad(-30)), 0.3)
							rhw.C0 = rhw.C0:Lerp(cframe(0.5,-0.65,-0.5) *  angles(rad(0), rad(-20), rad(-10)), 0.3)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.5,-1.15,0) *  angles(rad(-75), rad(0), rad(0)), 0.3)
						end
					elseif anim == "shade" then
						if frame == 1 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,-0.45, 0) * angles(rad(0), rad(-135), rad(-0)), 0.1)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, -0.25) * angles(rad(-25), rad(25), rad(0)), 0.1)
							rsw.C0 = rsw.C0:Lerp(cframe(1.5 ,0.15, 0.05) * angles(rad(-10), rad(-10), rad(20)), 0.1)
							lsw.C0 = lsw.C0:Lerp(cframe(-1, 0.75, -0.75) * angles(rad(90), rad(0), rad(75)) *  angles(rad(45), rad(0), rad(0)), 0.1)
							rhw.C0 = rhw.C0:Lerp(cframe(0.45,-1.5,-0.35) *  angles(rad(-25), rad(5), rad(0)), 0.1)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.7,-1.5,-0.125) *  angles(rad(0), rad(35), rad(-30)), 0.1)
						elseif frame == 2 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,-1.5, -0) * angles(rad(0), rad(30), rad(0)), 1)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, -0.5) * angles(rad(-30), rad(-15), rad(0)), 0.3)
							rsw.C0 = rsw.C0:Lerp(cframe(1.15, 0.5, -0.75) * angles(rad(0), rad(90), rad(90)), 0.3)
							lsw.C0 = lsw.C0:Lerp(cframe(-0.75, 0.5, -1) * angles(rad(90), rad(0), rad(60)), 0.3)
							rhw.C0 = rhw.C0:Lerp(cframe(0.5,-1.15,0) *  angles(rad(-75), rad(0), rad(0)), 0.3)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.5,-0.65,-0.5) *  angles(rad(-0), rad(20), rad(-0)), 0.3)
						end
					elseif anim == "summon" then
						if frame == 1 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,-0.45, 0) * angles(rad(0), rad(-135), rad(-0)), 0.1)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, -0.25) * angles(rad(-25), rad(25), rad(0)), 0.1)
							rsw.C0 = rsw.C0:Lerp(cframe(1.5 ,0.15, 0.05) * angles(rad(-10), rad(-10), rad(20)), 0.1)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.5, 1.75, -0.25) * angles(rad(90), rad(0), rad(75)) *  angles(rad(90), rad(-30), rad(0)), 0.1)
							rhw.C0 = rhw.C0:Lerp(cframe(0.45,-1.5,-0.35) *  angles(rad(-25), rad(5), rad(0)), 0.1)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.7,-1.5,-0.125) *  angles(rad(0), rad(35), rad(-30)), 0.1)
						elseif frame == 2 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,-1, -0.5) * angles(rad(0), rad(105), rad(-10)), 0.5)
							nkw.C0 = nkw.C0:Lerp(cframe(0.15, 1.5, -0.15) * angles(rad(-0), rad(-105), rad(0)) * angles(rad(-20), rad(-0), rad(-0)), 0.5)
							rsw.C0 = rsw.C0:Lerp(cframe(1.75,0.75, 0.45) * angles(rad(90), rad(-55), rad(75)) * angles(rad(45), rad(15), rad(15)), 0.5)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.5, -0.25, -0) * angles(rad(15), rad(75), rad(45)) * angles(rad(30), rad(-10), rad(-0)), 0.5)
							rhw.C0 = rhw.C0:Lerp(cframe(0.75,-1,-0.45) *  angles(rad(10), rad(-45), rad(15)), 0.5)
							lhw.C0 = lhw.C0:Lerp(cframe(-1.25,-1.25,-0.3) *  angles(rad(0), rad(10), rad(-45)), 0.5)
						elseif frame == 3 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,-0.3, 0) * angles(rad(0), rad(-45), rad(-0)), 0.15)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, -0.0) * angles(rad(-0), rad(45), rad(0)), 0.15)
							rsw.C0 = rsw.C0:Lerp(cframe(1.5 ,0.45, 0.05) * angles(rad(-10), rad(-10), rad(45)), 0.15)
							lsw.C0 = lsw.C0:Lerp(cframe(-1, 0.5, -1) * angles(rad(0), rad(-135), rad(-90)), 0.3)
							rhw.C0 = rhw.C0:Lerp(cframe(0.75,-1.75,-0.25) *  angles(rad(10), rad(-35), rad(15)), 0.3)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.65,-1.75,-0.45) *  angles(rad(0), rad(10), rad(-5)), 0.3)
						elseif frame == 4 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,-0.25, 0) * angles(rad(0), rad(-45), rad(-0)), 0.15)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, -0.0) * angles(rad(-0), rad(45), rad(0)), 0.15)
							rsw.C0 = rsw.C0:Lerp(cframe(1.5 ,0.45, 0.05) * angles(rad(-10), rad(-10), rad(45)), 0.15)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.5, 0.5, -1) * angles(rad(0), rad(-45), rad(-90)), 0.3)
							rhw.C0 = rhw.C0:Lerp(cframe(0.75,-1.75,-0.25) *  angles(rad(10), rad(-35), rad(15)), 0.3)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.65,-1.75,-0.45) *  angles(rad(0), rad(10), rad(-5)), 0.3)
						end
					elseif anim == "fang" then
						if frame == 1 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,-0.25, 0) * angles(rad(0), rad(60), rad(10)), 0.15)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, 0) * angles(rad(-0), rad(0), rad(0)), 0.15)
							rsw.C0 = rsw.C0:Lerp(cframe(2 , 1, -0.5) * angles(rad(90), rad(30), rad(45)), 0.15)
							lsw.C0 = lsw.C0:Lerp(cframe(-2, 0.5, 0.5) * angles(rad(90), rad(0), rad(-105)) * angles(rad(-20), rad(0), rad(-0)), 0.15)
							rhw.C0 = rhw.C0:Lerp(cframe(0.5,-2,0) *  angles(rad(0), rad(-60), rad(0)) * angles(rad(-10), rad(0), rad(-0)), 0.15)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.75,-1.65,0.75) *  angles(rad(0), rad(-52.5), rad(0)) * angles(rad(-20), rad(0), rad(-0)), 0.5)
						elseif frame == 2 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,0, 0) * angles(rad(0), rad(-45), rad(-0)) * angles(rad(-10), rad(0), rad(20)), 0.3)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, -0.125) * angles(rad(-10), rad(45), rad(0)), 0.3)
							rsw.C0 = rsw.C0:Lerp(cframe(1.5, 0.5, 0.25) * angles(rad(0), rad(90), rad(90)) * angles(rad(-50), rad(-15), rad(-15)), 0.3)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.5, 1, -1) * angles(rad(0), rad(-45), rad(-105)), 0.3)
							rhw.C0 = rhw.C0:Lerp(cframe(-0.25,-1.75,-0.75) *  angles(rad(-15), rad(45), rad(0)), 0.3)
							lhw.C0 = lhw.C0:Lerp(cframe(0.25, -1.75, 1) *  angles(rad(-45), rad(0), rad(30)) *  angles(rad(0), rad(30), rad(0)), 0.3)
						elseif frame == 3 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,0, 0) * angles(rad(-15), rad(15), rad(0)), 0.3)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, -0.25) * angles(rad(-15), rad(0), rad(0)), 0.3)
							rsw.C0 = rsw.C0:Lerp(cframe(1.15 , 1.5, 0) * angles(rad(15), rad(0), rad(90)) * angles(rad(0), rad(0), rad(75)), 0.3)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.5, 0.5, -0.25) * angles(rad(90), rad(-30), rad(0)) * angles(rad(-60), rad(-30), rad(-0)) * angles(rad(-15), rad(0), rad(-30)), 0.3)
							rhw.C0 = rhw.C0:Lerp(cframe(0.5,-1.45,-0.5) *  angles(rad(-35), rad(-15), rad(0)), 0.3)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.85,-2,-0.25) *  angles(rad(0), rad(30), rad(-20)), 0.3)
						elseif frame == 4 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,-0.25, 0) * angles(rad(15), rad(115), rad(0)) * angles(rad(-30), rad(-0), rad(0)), 0.3)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.35, -0.45) * angles(rad(-30), rad(-50), rad(0)), 0.3)
							rsw.C0 = rsw.C0:Lerp(cframe(1,0.15, -0.75) * angles(rad(-60), rad(-45), rad(60))*  angles(rad(150), rad(0), rad(0)), 0.5)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.6, 0.25, 0.15) * angles(rad(15), rad(20), rad(-45)), 0.5)
							rhw.C0 = rhw.C0:Lerp(cframe(0.65,-1.875,-0.75) *  angles(rad(35), rad(-15), rad(-5)), 0.3)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.7,-1.3,-1) *  angles(rad(30), rad(30), rad(-10)), 0.3)
						elseif frame == 5 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,-0.3, 0) * angles(rad(0), rad(110), rad(7.5)) * angles(rad(-15), rad(0), rad(-0)), 0.15)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, -0.125) * angles(rad(-10), rad(-15), rad(0)), 0.15)
							rsw.C0 = rsw.C0:Lerp(cframe(1.25, 0.5, -0.75) * angles(rad(0), rad(45), rad(90)) * angles(rad(60), rad(0), rad(-0)), 0.3)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.5, 0, 0) * angles(rad(135), rad(0), rad(0)), 0.15)
							rhw.C0 = rhw.C0:Lerp(cframe(0.75,-1.65,-0.25) *  angles(rad(-20), rad(10), rad(20)), 0.15)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.5,-1.5,-0.75) *  angles(rad(10), rad(0), rad(-10)), 0.15)
						elseif frame == 6 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,-0.15, 0) * angles(rad(0), rad(45), rad(-10)), 0.25)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, -0.125) * angles(rad(-10), rad(-30), rad(0)), 0.25)
							rsw.C0 = rsw.C0:Lerp(cframe(1.25, 0.5, -0.75) * angles(rad(0), rad(45), rad(90)) * angles(rad(60), rad(-30), rad(-0)), 0.25)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.35, 0.45, -0.5) * angles(rad(135), rad(-75), rad(30)), 0.25)
							rhw.C0 = rhw.C0:Lerp(cframe(1,-1.75,-0.45) *  angles(rad(0), rad(0), rad(30)), 0.25)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.75,-2,-0.75) *  angles(rad(0), rad(0), rad(-10)), 0.25)
						elseif frame == 7 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,-0.15, 0) * angles(rad(0), rad(-45), rad(10)), 0.3)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, -0.125) * angles(rad(-10), rad(30), rad(0)), 0.3)
							rsw.C0 = rsw.C0:Lerp(cframe(1.75 ,0.75, 0.25) * angles(rad(-10), rad(30), rad(105)) * angles(rad(-30), rad(-30), rad(15)), 0.3)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.45, 1.75, -1.25) * angles(rad(150), rad(-75), rad(0)) * angles(rad(-30), rad(0), rad(-0)), 0.3)
							rhw.C0 = rhw.C0:Lerp(cframe(-0.25,-1.75,-0.75) *  angles(rad(10), rad(45), rad(0)), 0.3)
							lhw.C0 = lhw.C0:Lerp(cframe(0.25, -1.75, 1) *  angles(rad(-45), rad(0), rad(30)) *  angles(rad(20), rad(30), rad(-15)), 0.3)
						end
					elseif anim == "zero" then
						if frame == 1 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,-1.5, -0) * angles(rad(-60), rad(-0), rad(-0)), 0.1)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, -0.5) * angles(rad(-30), rad(-15), rad(0)), 0.1)
							rsw.C0 = rsw.C0:Lerp(cframe(1.5 ,0.5, 0.05) * angles(rad(-10), rad(-10), rad(60)), 0.1)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.6, 0.25, 0.15) * angles(rad(15), rad(20), rad(-60)), 0.1)
							rhw.C0 = rhw.C0:Lerp(cframe(0.5,0.25,-0.75) *  angles(rad(45), rad(-0), rad(0)), 0.1)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.5,-1.5,-0.25) *  angles(rad(-45), rad(0), rad(-0)), 0.1)
						elseif frame == 2 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,-0.5, 0) * angles(rad(-30), rad(-0), rad(-0)), 0.2)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, 0) * angles(rad(-0), rad(0), rad(0)), 0.2)
							rsw.C0 = rsw.C0:Lerp(cframe(0.5 , 0.5, -1.5) * angles(rad(90), rad(0), rad(-30)), 0.2)
							lsw.C0 = lsw.C0:Lerp(cframe(-0.5, 0.25, -1.25) * angles(rad(60), rad(0), rad(30)), 0.2)
							rhw.C0 = rhw.C0:Lerp(cframe(0.5,-1,-1) *  angles(rad(30), rad(-30), rad(0)), 0.2)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.5,-1,-1) *  angles(rad(30), rad(0), rad(0)), 0.2)
						elseif frame == 3 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,0, 0) * angles(rad(0+(25*jin)), rad(0), rad(-0)), 0.3)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, 0.25) * angles(rad(30), rad(0), rad(0)), 0.3)
							rsw.C0 = rsw.C0:Lerp(cframe(0.45, 0.5, -1) * angles(rad(135), rad(0), rad(-0)), 0.3)
							lsw.C0 = lsw.C0:Lerp(cframe(-0.25, 0.15, -1.5) * angles(rad(90), rad(-45), rad(45)) *  angles(rad(60), rad(0), rad(-15)) *  angles(rad(0), rad(-10), rad(0)), 0.3)
							rhw.C0 = rhw.C0:Lerp(cframe(0.5,-1.15,0.75) *  angles(rad(-90), rad(0), rad(0)), 0.3)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.5,-1.15,0.75) *  angles(rad(-90), rad(0), rad(0)), 0.3)
						elseif frame == 4 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,-0.45, 0) * angles(rad(-15), rad(45), rad(0)), 0.125)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, -0.25) * angles(rad(-15), rad(-30), rad(0)), 0.125)
							rsw.C0 = rsw.C0:Lerp(cframe(1.25 , 1, -1) * angles(rad(15), rad(0), rad(90)) * angles(rad(105), rad(0), rad(-30)), 0.125)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.5, 0.5, 1) * angles(rad(90), rad(-30), rad(0)) * angles(rad(-60), rad(-30), rad(-0)) * angles(rad(-15), rad(0), rad(-30)), 0.125)
							rhw.C0 = rhw.C0:Lerp(cframe(0.5,-1.3,-0.15) *  angles(rad(-60), rad(-15), rad(0)), 0.125)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.85,-1.75,-0.25) *  angles(rad(0), rad(30), rad(-20)), 0.125)
						elseif frame == 5 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,0, 0) * angles(rad(0), rad(-45), rad(-0)) * angles(rad(-10), rad(0), rad(20)), 0.3)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, -0.125) * angles(rad(-10), rad(45), rad(0)), 0.3)
							rsw.C0 = rsw.C0:Lerp(cframe(1.5, 0.5, 0.25) * angles(rad(0), rad(90), rad(90)) * angles(rad(-50), rad(-35), rad(-15)), 0.3)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.5, 1, -1) * angles(rad(0), rad(-45), rad(-105)), 0.3)
							rhw.C0 = rhw.C0:Lerp(cframe(-0.5, -2, -1) *  angles(rad(-15), rad(45), rad(4)) * angles(rad(30), rad(30), rad(-0)), 0.3)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.25, -2.15, 0.75) *  angles(rad(0), rad(150), rad(0)), 0.3)
						elseif frame == 6 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,-1, 0) * angles(rad(0), rad(-45), rad(15)) * angles(rad(-30), rad(0), rad(20)), 0.125)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, -0.125) * angles(rad(-10), rad(45), rad(0)), 0.125)
							rsw.C0 = rsw.C0:Lerp(cframe(2, 0.25, -0.45) * angles(rad(0), rad(90), rad(90)) * angles(rad(-50), rad(-45), rad(-45)) * angles(rad(-30), rad(0), rad(-0)), 0.125)
							lsw.C0 = lsw.C0:Lerp(cframe(-1, 1, -1) * angles(rad(0), rad(-45), rad(-105)) * angles(rad(60), rad(0), rad(-0)), 0.125)
							rhw.C0 = rhw.C0:Lerp(cframe(0,-1,-1) *  angles(rad(15), rad(45), rad(-15)) * angles(rad(-20), rad(0), rad(-0)), 0.1)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.25, -2, 0.25) *  angles(rad(-30), rad(30), rad(-0)) * angles(rad(0), rad(0), rad(30)), 0.1)
						elseif frame == 7 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,-1, -0.5) * angles(rad(0), rad(105), rad(-10)), 0.5)
							nkw.C0 = nkw.C0:Lerp(cframe(0.15, 1.5, -0.15) * angles(rad(-0), rad(-105), rad(0)) * angles(rad(-20), rad(-0), rad(-0)), 0.5)
							rsw.C0 = rsw.C0:Lerp(cframe(1.5 ,0.15, 0.45) * angles(rad(90), rad(-55), rad(75)) * angles(rad(30), rad(20), rad(-0)), 0.5)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.5, -0.25, -0) * angles(rad(15), rad(75), rad(45)) * angles(rad(30), rad(-10), rad(-0)), 0.5)
							rhw.C0 = rhw.C0:Lerp(cframe(0.75,-1,-0.45) *  angles(rad(10), rad(-45), rad(15)), 0.5)
							lhw.C0 = lhw.C0:Lerp(cframe(-1.25,-1.25,-0.3) *  angles(rad(0), rad(10), rad(-45)), 0.5)
						elseif frame == 8 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,-0.25, -0.5) * angles(rad(0), rad(90), rad(-10)), 0.5)
							nkw.C0 = nkw.C0:Lerp(cframe(-0.25, 1.5, 0) * angles(rad(-0), rad(-75), rad(0)) * angles(rad(30), rad(0), rad(-0)), 0.5)
							rsw.C0 = rsw.C0:Lerp(cframe(1.5 ,1.5, 0.45) * angles(rad(90), rad(-55), rad(75)) * angles(rad(30), rad(20), rad(-0)) * angles(rad(150), rad(15), rad(-0)), 0.5)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.5, 0, -0.15) * angles(rad(15), rad(75), rad(45)) * angles(rad(30), rad(-30), rad(-0)), 0.5)
							rhw.C0 = rhw.C0:Lerp(cframe(0.75,-1.75,-0.25) *  angles(rad(10), rad(-35), rad(15)), 0.3)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.65,-2,-0.45) *  angles(rad(0), rad(10), rad(-5)), 0.3)
						end
					elseif anim == "fatal" then
						if frame == 1 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,-0.15, 0) * angles(rad(0), rad(-135), rad(-0)) * angles(rad(-15), rad(-0), rad(10)), 0.1)
							nkw.C0 = nkw.C0:Lerp(cframe(-0.25, 1.5, -0.3) * angles(rad(-0), rad(45), rad(0)) * angles(rad(-30), rad(0), rad(-0)), 0.1)
							rsw.C0 = rsw.C0:Lerp(cframe(1.5 , 0, -0.5) * angles(rad(0), rad(30), rad(-0)), 0.1)
							lsw.C0 = lsw.C0:Lerp(cframe(-0.75, 0, -0.75) * angles(rad(0), rad(-45), rad(0)) * angles(rad(90), rad(-60), rad(-0)), 0.1)
							rhw.C0 = rhw.C0:Lerp(cframe(-0.5,-1.75,-0.75) *  angles(rad(20), rad(45), rad(-10)), 0.1)
							lhw.C0 = lhw.C0:Lerp(cframe(0.25,-2,-0.25) *  angles(rad(20), rad(45), rad(25)), 0.1)
						elseif frame == 2 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,-0.25, -0.5) * angles(rad(0), rad(-105), rad(-0)) * angles(rad(15), rad(-0), rad(10)), 0.3)
							nkw.C0 = nkw.C0:Lerp(cframe(-0, 1.5, -0.3) * angles(rad(-0), rad(15), rad(0)) * angles(rad(-30), rad(0), rad(-0)), 0.3)
							rsw.C0 = rsw.C0:Lerp(cframe(1.5 , 0.3, 0.25) * angles(rad(0), rad(-30), rad(30)), 0.3)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.5, 1.5, -0.75) * angles(rad(180), rad(15), rad(0)) * angles(rad(-15), rad(20), rad(-20)), 0.3)
							rhw.C0 = rhw.C0:Lerp(cframe(0.75,-2,0) *  angles(rad(-5), rad(0), rad(15)), 0.3)
							lhw.C0 = lhw.C0:Lerp(cframe(-1,-1.75,-0.25) *  angles(rad(-10), rad(15), rad(-20)), 0.3)
						elseif frame == 3 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,-0.25, 0) * angles(rad(-35), rad(-0), rad(-0)), 0.2)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, -0.25) * angles(rad(-30), rad(0), rad(0)), 0.2)
							rsw.C0 = rsw.C0:Lerp(cframe(0.75, 0.75, -1) * angles(rad(90), rad(90), rad(-30)) * angles(rad(60), rad(0), rad(-0)), 0.2)
							lsw.C0 = lsw.C0:Lerp(cframe(-0.25, 0.5, -0.75) * angles(rad(90), rad(-90), rad(30)) * angles(rad(45), rad(0), rad(15)), 0.2)
							rhw.C0 = rhw.C0:Lerp(cframe(0.75,-1.35,-1) *  angles(rad(35), rad(-30), rad(10)), 0.2)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.5,-1.5,-0.75) *  angles(rad(15), rad(0), rad(0)), 0.2)
						elseif frame == 4 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,-0.75, 1.5) * angles(rad(45), rad(-0), rad(-0)), 0.115)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, 0.125) * angles(rad(30), rad(0), rad(0)), 0.115)
							rsw.C0 = rsw.C0:Lerp(cframe(1.5 ,0.15, 0.05)  * angles(rad(130), rad(-25), rad(75)), 0.115)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.5, 0, 0) * angles(rad(115), rad(20), rad(-60)), 0.115)
							rhw.C0 = rhw.C0:Lerp(cframe(0.75,-1.65,0.125) *  angles(rad(-45), rad(5), rad(15)), 0.115)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.625,-1.75,0.125) *  angles(rad(-45), rad(30), rad(-10)), 0.115)
						elseif frame == 5 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,-0.3, 0) * angles(rad(0), rad(-45), rad(-0)) * angles(rad(-0), rad(0), rad(15)), 0.3)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, -0.15) * angles(rad(0), rad(45), rad(-10)), 0.3)
							rsw.C0 = rsw.C0:Lerp(cframe(1.5, 1, 0.25) * angles(rad(90), rad(90), rad(-0)) * angles(rad(-75), rad(0), rad(75)) * angles(rad(-30), rad(-30), rad(-30)) * angles(rad(-30), rad(0), rad(-0)), 0.3)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.75, 0.5, -0.75) * angles(rad(0), rad(-45), rad(0)) * angles(rad(0), rad(0), rad(-75)), 0.3)
							rhw.C0 = rhw.C0:Lerp(cframe(0.75,-2,0.25) *  angles(rad(0), rad(50), rad(0)) * angles(rad(-15), rad(-15), rad(-10)), 0.3)
							lhw.C0 = lhw.C0:Lerp(cframe(-1.15,-1.5,-0.45) *  angles(rad(10), rad(45), rad(-15)) * angles(rad(10), rad(0), rad(-10)), 0.3)
						elseif frame == 6 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,-0.25, -0.5) * angles(rad(0), rad(90), rad(-10)), 1)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, 0) * angles(rad(-0), rad(-75), rad(0)), 1)
							rsw.C0 = rsw.C0:Lerp(cframe(2,0.25, 0.15) * angles(rad(90), rad(-55), rad(75)) * angles(rad(65), rad(20), rad(-10)), 1)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.5, 0, -0.15) * angles(rad(15), rad(75), rad(45)) * angles(rad(30), rad(0), rad(-0)), 1)
							rhw.C0 = rhw.C0:Lerp(cframe(0.75,-1.75,-0.25) *  angles(rad(10), rad(-35), rad(15)), 1)
							lhw.C0 = lhw.C0:Lerp(cframe(-1,-1.85,-0.45) *  angles(rad(0), rad(10), rad(-25)), 1)
						elseif frame == 7 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,-0.75, 0.45) * angles(rad(45), rad(-0), rad(-0)), 0.115)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, 0.125) * angles(rad(30), rad(0), rad(0)), 0.115)
							rsw.C0 = rsw.C0:Lerp(cframe(1.25 ,0, 0.5)  * angles(rad(130), rad(-25), rad(150)), 0.115)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.5, 0, 0.45) * angles(rad(115), rad(20), rad(-120)), 0.115)
							rhw.C0 = rhw.C0:Lerp(cframe(0.75,-1.65,0.125) *  angles(rad(-45), rad(5), rad(15)), 0.115)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.625,-1.75,0.125) *  angles(rad(-45), rad(30), rad(-10)), 0.115)
						elseif frame == 8 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,-0.5, -0) * angles(rad(-60), rad(-0), rad(-0)), 1)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, -0) * angles(rad(-30), rad(-15), rad(0)), 1)
							rsw.C0 = rsw.C0:Lerp(cframe(0.45,1.5, -1.15) * angles(rad(150), rad(90), rad(0)) * angles(rad(30), rad(0), rad(-0)), 1)
							lsw.C0 = lsw.C0:Lerp(cframe(-0,1.25, -1.6) * angles(rad(150), rad(-90), rad(-0)) * angles(rad(45), rad(0), rad(-0)), 1)
							rhw.C0 = rhw.C0:Lerp(cframe(0.75,-0.75,-1.25) *  angles(rad(45), rad(-0), rad(0)), 1)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.5,-1.75,-0.75) *  angles(rad(15), rad(0), rad(-0)), 1)
						elseif frame == 9 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,0, 0) * angles(rad(0), rad(-45), rad(-15)), 0.1)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, -0.125) * angles(rad(-10), rad(45), rad(0)), 0.1)
							rsw.C0 = rsw.C0:Lerp(cframe(1.75 ,0.5, 0.25) * angles(rad(0), rad(0), rad(90)) * angles(rad(-30), rad(0), rad(0)), 0.1)
							lsw.C0 = lsw.C0:Lerp(cframe(-2, 0.3, 0) * angles(rad(0), rad(0), rad(-60)), 0.1)
							rhw.C0 = rhw.C0:Lerp(cframe(0.75,-2,0) *  angles(rad(-5), rad(5), rad(15)), 0.1)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.75,-2,0.125) *  angles(rad(0), rad(30), rad(-10)), 0.1)
						elseif frame == 10 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,0, 0) * angles(rad(0), rad(-45), rad(-20)) * angles(rad(0), rad(-45+(45*jin)), rad(0)), 0.5)
							nkw.C0 = nkw.C0:Lerp(cframe(0.25, 1.5, -0.125) * angles(rad(-10), rad(-0), rad(-20)), 0.5)
							rsw.C0 = rsw.C0:Lerp(cframe(1.75 ,0.5, 0.25) * angles(rad(0), rad(0), rad(90)) * angles(rad(-30), rad(0), rad(0)), 0.5)
							lsw.C0 = lsw.C0:Lerp(cframe(-2, 0.3, 0) * angles(rad(0), rad(0), rad(-60)), 0.5)
							rhw.C0 = rhw.C0:Lerp(cframe(1,-2,-0.15) *  angles(rad(5), rad(5), rad(30)), 0.5)
							lhw.C0 = lhw.C0:Lerp(cframe(-1,-2,-0.15) *  angles(rad(5), rad(5), rad(-30)), 0.5)
						end
					elseif anim == "saz" then
						if frame == 1 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,-0.25, -0.5) * angles(rad(0), rad(-105), rad(-0)) * angles(rad(15), rad(-0), rad(10)), 0.3)
							nkw.C0 = nkw.C0:Lerp(cframe(0.15, 1.5, -0) * angles(rad(-0), rad(90), rad(0)) * angles(rad(30), rad(0), rad(-0)), 0.3)
							rsw.C0 = rsw.C0:Lerp(cframe(1.5 , 0.3, 0.25) * angles(rad(0), rad(-30), rad(30)), 0.3)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.5, 2, -0.75) * angles(rad(180), rad(15), rad(0)) * angles(rad(-0), rad(-30), rad(15)), 0.3)
							rhw.C0 = rhw.C0:Lerp(cframe(0.75,-2,-0.25) *  angles(rad(-5), rad(0), rad(15)), 0.3)
							lhw.C0 = lhw.C0:Lerp(cframe(-1,-1.75,-0.25) *  angles(rad(-10), rad(15), rad(-20)), 0.3)
						elseif frame == 2 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,0, 0) * angles(rad(10), rad(0), rad(-0)), 0.15)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, 0.25) * angles(rad(30), rad(0), rad(0)), 0.15)
							rsw.C0 = rsw.C0:Lerp(cframe(1.5 , 0, 0.5) * angles(rad(-45), rad(0), rad(-0)), 0.15)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.5, 0, 0.5) * angles(rad(-45), rad(0), rad(0)), 0.15)
							rhw.C0 = rhw.C0:Lerp(cframe(0.5,-1.75,0.15) *  angles(rad(-35), rad(0), rad(0)), 0.15)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.5,-1.75,-0.15) *  angles(rad(-15), rad(0), rad(0)), 0.15)
						elseif frame == 3 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,0, 0) * angles(rad(-10), rad(90), rad(-0)) * angles(rad(10), rad(0), rad(0)), 0.1)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, 0) * angles(rad(10), rad(-30), rad(0)), 0.1)
							rsw.C0 = rsw.C0:Lerp(cframe(2, 1, 0) * angles(rad(0), rad(0), rad(75)) * angles(rad(-0), rad(30), rad(0)), 0.1)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.25, 0.75, -0.5) * angles(rad(90), rad(-90), rad(0))* angles(rad(-0), rad(0), rad(-30)), 0.1)
							rhw.C0 = rhw.C0:Lerp(cframe(0.675,-1.45,0.2) *  angles(rad(-60), rad(-30), rad(0)), 0.1)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.45,-1.75,-0.15) *  angles(rad(-30), rad(30), rad(0))* angles(rad(10), rad(0), rad(15)), 0.1)
						elseif frame == 4 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,-0.25, 0) * angles(rad(0), rad(-45), rad(-0)) * angles(rad(-20), rad(0), rad(20)), 0.75)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, -0.25) * angles(rad(-20), rad(45), rad(0)), 0.75)
							rsw.C0 = rsw.C0:Lerp(cframe(1.5 ,0.45, 0.05) * angles(rad(-10), rad(-10), rad(45)), 0.75)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.75, 0.75, -1) * angles(rad(90), rad(-0), rad(-30)) * angles(rad(-0), rad(-60), rad(0)), 0.75)
							rhw.C0 = rhw.C0:Lerp(cframe(0.45,-1.75,-0.25) *  angles(rad(10), rad(-35), rad(-15)), 0.75)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.5,-1.45,0.15) *  angles(rad(0), rad(45), rad(-5)) * angles(rad(-45), rad(0), rad(0)), 0.75)
						end
					elseif anim == "overdrive" then
						if frame == 1 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,-0.25, 0) * angles(rad(0), rad(-105), rad(-0)), 0.05)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, -0.25) * angles(rad(-25), rad(60), rad(0)) * angles(rad(-0), rad(0), rad(5)), 0.05)
							rsw.C0 = rsw.C0:Lerp(cframe(1.75 ,-0.15, 0.25) * angles(rad(-10), rad(-25), rad(10)), 0.05)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.75, 1.75, -0) * angles(rad(90), rad(0), rad(75)) *  angles(rad(90), rad(-105), rad(15)), 0.05)
							rhw.C0 = rhw.C0:Lerp(cframe(1,-1.75,-0.5) *  angles(rad(0), rad(15), rad(0)) *  angles(rad(0), rad(0), rad(25)), 0.05)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.75,-1.75,-0.15) *  angles(rad(0), rad(60), rad(0)), 0.05)
						elseif frame == 2 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,0, 0) * angles(rad(10), rad(-0), rad(-0)), 0.1)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, 0.15) * angles(rad(30), rad(0), rad(0)), 0.1)
							rsw.C0 = rsw.C0:Lerp(cframe(1.25, 1.75, -0.25) * angles(rad(170), rad(0), rad(-10)), 0.1)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.25, 1.75, -0.25) * angles(rad(170), rad(0), rad(10)), 0.1)
							rhw.C0 = rhw.C0:Lerp(cframe(0.65,-2,0) *  angles(rad(-15), rad(5), rad(7.5)), 0.1)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.7,-2,0.125) *  angles(rad(-10), rad(30), rad(-10)), 0.1)
						elseif frame == 3 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,-0.45, 0) * angles(rad(20), rad(-0), rad(-0)), 0.75)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, 0.15) * angles(rad(40), rad(0), rad(0)), 0.75)
							rsw.C0 = rsw.C0:Lerp(cframe(1.45 ,-0.15, 0.25)  * angles(rad(130), rad(-25), rad(30)), 0.75)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.75, -0.45, 0.15) * angles(rad(115), rad(30), rad(-15)) *  angles(rad(30), rad(0), rad(-15)), 0.75)
							rhw.C0 = rhw.C0:Lerp(cframe(0.65,-1.65,-0.125) *  angles(rad(-25), rad(5), rad(7.5)), 0.75)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.7,-1.75,-0.125) *  angles(rad(-20), rad(30), rad(-10)), 0.75)
						end
					elseif anim == "nightmare" then
						if frame == 1 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,0, 0) * angles(rad(0), rad(-60), rad(-0)), 0.1)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, -0.125) * angles(rad(-20), rad(60), rad(0)), 0.1)
							rsw.C0 = rsw.C0:Lerp(cframe(1.5 ,0.25, 0.5) * angles(rad(-10), rad(0), rad(10)) * angles(rad(-25), rad(0), rad(20)), 0.1)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.25, 0.25, -0.75) * angles(rad(105), rad(35), rad(0)) * angles(rad(-30), rad(0), rad(45)), 0.1)
							rhw.C0 = rhw.C0:Lerp(cframe(0.75,-2,0) *  angles(rad(-5), rad(-15), rad(7.5)), 0.1)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.75,-2,-0.125) *  angles(rad(10), rad(60), rad(-10)), 0.1)
						elseif frame == 2 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,0, 0) * angles(rad(0), rad(45), rad(-0)), 0.75)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, 0.125) * angles(rad(0), rad(-45), rad(0)) * angles(rad(20), rad(0), rad(-0)), 0.75)
							rsw.C0 = rsw.C0:Lerp(cframe(2 ,1.75, 0.15) * angles(rad(90), rad(0), rad(45)) * angles(rad(105), rad(0), rad(-15)), 0.75)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.6, 0.25, 0.15) * angles(rad(15), rad(20), rad(-45)), 0.75)
							rhw.C0 = rhw.C0:Lerp(cframe(0.75,-2,-0.25) *  angles(rad(-0), rad(-45), rad(0)) * angles(rad(0), rad(0), rad(-0)), 0.75)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.7,-2,0.125) *  angles(rad(0), rad(60), rad(-10)), 0.75)	
						elseif frame == 3 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,-1.5, -0) * angles(rad(0), rad(-30), rad(0)), 0.1)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, -0.25) * angles(rad(-30), rad(15- 30 * sin(sine / 12.5)), rad(0)), 0.1)
							rsw.C0 = rsw.C0:Lerp(cframe(1.5 ,0.15, 0.05) * angles(rad(-10), rad(-10), rad(20)), 0.1)
							lsw.C0 = lsw.C0:Lerp(cframe(-0.75, 0.75, -0.75) * angles(rad(90), rad(0), rad(75)) *  angles(rad(45- 5 * sin(sine / 12.5)), rad(0), rad(0)), 0.1)
							rhw.C0 = rhw.C0:Lerp(cframe(0.625,-1,0.15) *  angles(rad(-75), rad(0), rad(0)), 0.1)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.5,-0.65,-0.5) *  angles(rad(-0), rad(20), rad(-0)), 0.1)
						elseif frame == 4 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,0, 0) * angles(rad(0), rad(-15), rad(-0)), 0.45)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, -0.125) * angles(rad(-20), rad(15), rad(0)), 0.45)
							rsw.C0 = rsw.C0:Lerp(cframe(1.5 ,0.25, -0.5) * angles(rad(-10), rad(0), rad(10)) * angles(rad(45), rad(0), rad(-20)), 0.45)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.75, 0.25, -0.15) * angles(rad(105), rad(35), rad(0)) * angles(rad(-75), rad(0), rad(-45)) * angles(rad(0), rad(0), rad(-30)), 0.45)
							rhw.C0 = rhw.C0:Lerp(cframe(0.75,-2,0) *  angles(rad(-5), rad(-15), rad(7.5)), 0.45)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.75,-2,-0.125) *  angles(rad(10), rad(60), rad(-10)), 0.45)
						end
					elseif anim == "nightmarea" then
						if frame == 1 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,-0.25, 0) * angles(rad(-15), rad(30), rad(-0)), 0.2)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, -0.25) * angles(rad(-30), rad(0), rad(0)), 0.2)
							rsw.C0 = rsw.C0:Lerp(cframe(0.25, 0.75, -1) * angles(rad(90), rad(90), rad(-30)) * angles(rad(45), rad(30), rad(-0)), 0.2)
							lsw.C0 = lsw.C0:Lerp(cframe(-0.25, 0.5, -0.75) * angles(rad(90), rad(-90), rad(30)) * angles(rad(30), rad(0), rad(15)), 0.2)
							rhw.C0 = rhw.C0:Lerp(cframe(0.75,-1.35,-1) *  angles(rad(15), rad(-30), rad(10)), 0.2)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.5,-1.5,-0.75) *  angles(rad(0), rad(0), rad(0)), 0.2)
						elseif frame == 2 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,0, 0) * angles(rad(-15), rad(-60), rad(-0)) * angles(rad(-0), rad(0), rad(-10)), 0.3)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, 0) * angles(rad(0), rad(30), rad(0)), 0.3)
							rsw.C0 = rsw.C0:Lerp(cframe(1.85, 0.35, -0.45) * angles(rad(0), rad(55), rad(35)) * angles(rad(-15), rad(-15), rad(0)), 0.3)
							lsw.C0 = lsw.C0:Lerp(cframe(-0.15, -0.15, -1) * angles(rad(90), rad(0), rad(60)) * angles(rad(-20), rad(25), rad(35)), 0.3)
							rhw.C0 = rhw.C0:Lerp(cframe(1.15,-2,-0.15) *  angles(rad(0), rad(52.5), rad(0)) * angles(rad(-30), rad(0), rad(10)), 0.3)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.75,-2,-0.45) *  angles(rad(10), rad(25), rad(-15)), 0.3)
						elseif frame == 3 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,-0.25, -0.5) * angles(rad(0), rad(55), rad(0)) * angles(rad(-15), rad(0), rad(0)), 0.5)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, -0) * angles(rad(-0), rad(-55), rad(0)), 0.5)
							rsw.C0 = rsw.C0:Lerp(cframe(0.75,0.75, -1.25) * angles(rad(90), rad(90), rad(0)) * angles(rad(15), rad(-0), rad(-0)), 0.5)
							lsw.C0 = lsw.C0:Lerp(cframe(-2.15, 0.25, 0.5) * angles(rad(15), rad(20), rad(-45)) * angles(rad(-20), rad(-20), rad(-15)), 0.5)
							rhw.C0 = rhw.C0:Lerp(cframe(0.75,-2,-0.45) *  angles(rad(15), rad(-45), rad(10)), 0.5)
							lhw.C0 = lhw.C0:Lerp(cframe(-1,-2,-0.3) *  angles(rad(-20), rad(-35), rad(-20)) * angles(rad(0), rad(-0), rad(-10)), 0.5)
						elseif frame == 4 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,-0.15, 0) * angles(rad(0), rad(75), rad(0)) * angles(rad(20), rad(0), rad(-10)), 0.45)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, 0) * angles(rad(-0), rad(-75), rad(0)), 0.45)
							rsw.C0 = rsw.C0:Lerp(cframe(1.15, 1, -1.5) * angles(rad(0), rad(90), rad(90)) * angles(rad(0), rad(-45), rad(30)) * angles(rad(30), rad(30), rad(-30)) *  angles(rad(-0), rad(-15), rad(-0)), 0.45)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.75, 0, 0.5) * angles(rad(15), rad(0), rad(-20)) *  angles(rad(-55), rad(0), rad(-0)), 0.45)
							rhw.C0 = rhw.C0:Lerp(cframe(1.25,-1.75,0.25) *  angles(rad(15), rad(-60), rad(45)), 0.45)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.75,-2.15,0.15) *  angles(rad(-10), rad(45), rad(-15)) *  angles(rad(-10), rad(-7.5), rad(-0)), 0.45)
						elseif frame == 5 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,-0.5, 0) * angles(rad(-10), rad(-25), rad(10)), 0.5)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, -0.125) * angles(rad(-10), rad(30), rad(10)), 0.5)
							rsw.C0 = rsw.C0:Lerp(cframe(1.75 , 0, 0.15) * angles(rad(0), rad(0), rad(60)) * angles(rad(-30), rad(-10), rad(-15)), 0.5)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.5, 0, 0.5) * angles(rad(0), rad(-15), rad(-30)) * angles(rad(-45), rad(0), rad(0)), 0.5)
							rhw.C0 = rhw.C0:Lerp(cframe(0.75,-1.85,0.75) *  angles(rad(0), rad(30), rad(0)) *  angles(rad(-20), rad(0), rad(-5)), 0.5)
							lhw.C0 = lhw.C0:Lerp(cframe(-1,-1.25,-0.75) *  angles(rad(0), rad(30), rad(-10)) *  angles(rad(20), rad(0), rad(2.5)), 0.5)
						elseif frame == 6 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,-0.3, 0) * angles(rad(0), rad(-45), rad(-0)) * angles(rad(-0), rad(0), rad(15)), 0.3)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, -0.15) * angles(rad(0), rad(45), rad(-10)), 0.3)
							rsw.C0 = rsw.C0:Lerp(cframe(1.75, 0.25, -0.5) * angles(rad(90), rad(-90), rad(-0)) * angles(rad(45), rad(0), rad(10)), 0.3)
							lsw.C0 = lsw.C0:Lerp(cframe(-0.25, 0.25, -1.25) * angles(rad(0), rad(-45), rad(0)) * angles(rad(80), rad(0), rad(0)), 0.3)
							rhw.C0 = rhw.C0:Lerp(cframe(0.75,-2,0.25) *  angles(rad(0), rad(50), rad(0)) * angles(rad(-15), rad(-15), rad(-10)), 0.3)
							lhw.C0 = lhw.C0:Lerp(cframe(-1.15,-1.5,-0.45) *  angles(rad(10), rad(45), rad(-15)) * angles(rad(10), rad(0), rad(-10)), 0.3)
						elseif frame == 7 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,-0, 0) * angles(rad(0), rad(115), rad(0)) * angles(rad(20), rad(0), rad(10)), 0.45)
							nkw.C0 = nkw.C0:Lerp(cframe(-0.25, 1.5, -0.25) * angles(rad(-0), rad(-60), rad(30)), 0.45)
							rsw.C0 = rsw.C0:Lerp(cframe(2.25, 0.5, -0.5) * angles(rad(0), rad(0), rad(90)) * angles(rad(60), rad(0), rad(-15)), 0.45)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.75, 0.25, 0.25) * angles(rad(15), rad(0), rad(-45)) *  angles(rad(-30), rad(-10), rad(-0)), 0.45)
							rhw.C0 = rhw.C0:Lerp(cframe(1,-2.25,0) *  angles(rad(0), rad(-15), rad(0)) *  angles(rad(-20), rad(0), rad(20)), 0.45)
							lhw.C0 = lhw.C0:Lerp(cframe(-1.15,-2,0.15) *  angles(rad(0), rad(60), rad(-20)) *  angles(rad(10), rad(0), rad(0)), 0.45)
						elseif frame == 8 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,0, 0) * angles(rad(-15), rad(-75), rad(-0)) * angles(rad(-0), rad(0), rad(-10)), 0.3)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, 0) * angles(rad(0), rad(60), rad(0)), 0.3)
							rsw.C0 = rsw.C0:Lerp(cframe(1.85, 0.35, -0.45) * angles(rad(0), rad(55), rad(35)) * angles(rad(-15), rad(-15), rad(0)), 0.3)
							lsw.C0 = lsw.C0:Lerp(cframe(-0.15, -0.15, -1) * angles(rad(90), rad(0), rad(60)) * angles(rad(-20), rad(25), rad(35)), 0.3)
							rhw.C0 = rhw.C0:Lerp(cframe(1.15,-2,-0.15) *  angles(rad(0), rad(52.5), rad(0)) * angles(rad(-30), rad(0), rad(10)), 0.3)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.75,-2,-0.45) *  angles(rad(10), rad(25), rad(-15)), 0.3)
						elseif frame == 9 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,0, 0) * angles(rad(0), rad(0+(30*jin)), rad(-0)), 0.5)
							nkw.C0 = nkw.C0:Lerp(cframe(0.25, 1.5, -0.125) * angles(rad(-10), rad(-0), rad(-20)), 0.5)
							rsw.C0 = rsw.C0:Lerp(cframe(1.75 ,0.5, 0.25) * angles(rad(0), rad(0), rad(90)) * angles(rad(-30), rad(0), rad(0)), 0.5)
							lsw.C0 = lsw.C0:Lerp(cframe(-2, 0.3, 0) * angles(rad(0), rad(0), rad(-60)), 0.5)
							rhw.C0 = rhw.C0:Lerp(cframe(1,-2,-0.15) *  angles(rad(5), rad(5), rad(30)), 0.5)
							lhw.C0 = lhw.C0:Lerp(cframe(-1,-2,-0.15) *  angles(rad(5), rad(5), rad(-30)), 0.5)
						end
					elseif anim == "nightmaref" then
						if frame == 1 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,-1, -0.5) * angles(rad(0), rad(105), rad(-10)), 0.3)
							nkw.C0 = nkw.C0:Lerp(cframe(0.15, 1.5, -0.15) * angles(rad(-0), rad(-105), rad(0)) * angles(rad(-20), rad(-0), rad(-0)), 0.3)
							rsw.C0 = rsw.C0:Lerp(cframe(1.5 , 0, 0) * angles(rad(0), rad(-20), rad(20)) * angles(rad(30), rad(0), rad(0)), 0.3)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.5, -0.25, -0) * angles(rad(15), rad(75), rad(45)) * angles(rad(30), rad(-10), rad(-0)), 0.3)
							rhw.C0 = rhw.C0:Lerp(cframe(0.75,-1,-0.45) *  angles(rad(10), rad(-45), rad(15)), 0.3)
							lhw.C0 = lhw.C0:Lerp(cframe(-1.25,-1.25,-0.3) *  angles(rad(0), rad(10), rad(-45)), 0.3)
						elseif frame == 2 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,-0, 0) * angles(rad(-10), rad(180), rad(-0)), 0.5)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, 0.25) * angles(rad(20), rad(-45), rad(0)), 0.5)
							rsw.C0 = rsw.C0:Lerp(cframe(1.5 , 1.15, 0) * angles(rad(0), rad(0), rad(135)) * angles(rad(15), rad(-20), rad(-0)), 0.5)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.5, 0.15, 0) * angles(rad(0), rad(180), rad(90)) * angles(rad(0), rad(0), rad(-30)), 0.5)
							rhw.C0 = rhw.C0:Lerp(cframe(0.5,-1.75,-0.25) *  angles(rad(-30), rad(-75), rad(-15)), 0.5)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.65,-0.25,-1.5) *  angles(rad(120), rad(-40), rad(-5)), 0.5)
						elseif frame == 3 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,0, 0) * angles(rad(-0), rad(-180), rad(30)) * angles(rad(60), rad(45), rad(-0)), 0.3)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, -0.125) * angles(rad(-10), rad(45), rad(0)), 0.3)
							rsw.C0 = rsw.C0:Lerp(cframe(1.25 , 1.15, -0.45) * angles(rad(0), rad(0), rad(135)) * angles(rad(75), rad(-20), rad(-0)), 0.3)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.5, 0.15, 0) * angles(rad(0), rad(180), rad(90)) * angles(rad(0), rad(0), rad(-30)), 0.3)
							rhw.C0 = rhw.C0:Lerp(cframe(1, -1.25, 0.75) *  angles(rad(-75), rad(0), rad(30)), 0.3)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.75, -1.5, 0.25) *  angles(rad(-45), rad(0), rad(-30)), 0.3)
						end
					elseif anim == "blazblue" then
						if frame == 1 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,0, 0) * angles(rad(-15), rad(0), rad(-0)), 0.15)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.45, -0.25) * angles(rad(-35), rad(0), rad(0)), 0.15)
							rsw.C0 = rsw.C0:Lerp(cframe(0.45, 0.3, -1) * angles(rad(90), rad(0), rad(-60)) * angles(rad(-15), rad(30), rad(-30)), 0.15)
							lsw.C0 = lsw.C0:Lerp(cframe(-0.5, 0.15, -0.6) * angles(rad(0), rad(-90), rad(0)) * angles(rad(60), rad(0), rad(-0)), 0.15)
							rhw.C0 = rhw.C0:Lerp(cframe(0.75,-2,-0.5) *  angles(rad(15), rad(-25), rad(10)), 0.15)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.75,-2,-0.5) *  angles(rad(15), rad(45), rad(0)) * angles(rad(0), rad(0), rad(-20)), 0.15)
						elseif frame == 2 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,-0.45, 0) * angles(rad(20), rad(-0), rad(-0)), 0.75)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, 0.15) * angles(rad(25), rad(0), rad(0)), 0.75)
							rsw.C0 = rsw.C0:Lerp(cframe(1.45 ,-0.15, 0.25)  * angles(rad(130), rad(-25), rad(30)) * angles(rad(-30), rad(-15), rad(-0)), 0.75)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.75, 0, 0.15) * angles(rad(115), rad(30), rad(-15)) *  angles(rad(-20), rad(30), rad(-15)), 0.75)
							rhw.C0 = rhw.C0:Lerp(cframe(0.65,-1.65,-0.125) *  angles(rad(-25), rad(-15), rad(7.5)), 0.75)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.7,-1.75,-0.125) *  angles(rad(-20), rad(30), rad(-10)), 0.75)
						elseif frame == 3 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,0, 0) * angles(rad(-10), rad(-0), rad(-0)), 0.1)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, -0.125) * angles(rad(-10), rad(0), rad(0)), 0.1)
							rsw.C0 = rsw.C0:Lerp(cframe(1.5 ,0.15, 0.05) * angles(rad(-10), rad(-10), rad(20)), 0.1)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.6, 0.25, 0.15) * angles(rad(15), rad(20), rad(-45)), 0.1)
							rhw.C0 = rhw.C0:Lerp(cframe(0.65,-2,-0.3) *  angles(rad(5), rad(5), rad(7.5)), 0.1)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.7,-2,-0.25) *  angles(rad(10), rad(30), rad(-10)), 0.1)
						elseif frame == 4 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,-1.5, -0) * angles(rad(-10), rad(-0), rad(0)), 0.1)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, -0.25) * angles(rad(-30), rad(15- 30 * sin(sine / 12.5)), rad(0)), 0.1)
							rsw.C0 = rsw.C0:Lerp(cframe(1.5 ,0.15, 0.05) * angles(rad(-10), rad(-10), rad(20)), 0.1)
							lsw.C0 = lsw.C0:Lerp(cframe(-0.75, 0.75, -0.75) * angles(rad(90), rad(0), rad(75)) *  angles(rad(45- 5 * sin(sine / 12.5)), rad(0), rad(0)), 0.1)
							rhw.C0 = rhw.C0:Lerp(cframe(0.625,-1,0.15) *  angles(rad(-65), rad(0), rad(0)), 0.1)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.5,-0.65,-0.5) *  angles(rad(10), rad(20), rad(-0)), 0.1)
						end
					elseif anim == "blazbluea" then
						if frame == 1 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,-0.3, 0) * angles(rad(0), rad(110), rad(7.5)) * angles(rad(-15), rad(0), rad(-0)), 0.15)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, -0.125) * angles(rad(-10), rad(-75), rad(0)), 0.15)
							rsw.C0 = rsw.C0:Lerp(cframe(1.25, 0.5, -0.75) * angles(rad(0), rad(45), rad(90)) * angles(rad(60), rad(0), rad(-0)), 0.3)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.5, 0, 0) * angles(rad(135), rad(0), rad(0)), 0.15)
							rhw.C0 = rhw.C0:Lerp(cframe(0.75,-1.65,-0.25) *  angles(rad(-20), rad(10), rad(20)), 0.15)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.5,-1.5,-0.75) *  angles(rad(10), rad(0), rad(-10)), 0.15)
						elseif frame == 2 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,-0.3, 0) * angles(rad(0), rad(110), rad(7.5)) * angles(rad(-15), rad(0), rad(-0)), 0.3)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, -0.125) * angles(rad(-10), rad(-60), rad(0)), 0.3)
							rsw.C0 = rsw.C0:Lerp(cframe(0.75, 0, -0.75) * angles(rad(0), rad(45), rad(90)) * angles(rad(60), rad(180), rad(-0)) * angles(rad(-30), rad(0), rad(-0)), 0.3)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.5, 0.75, -0.75) * angles(rad(135), rad(-60), rad(60)), 0.3)
							rhw.C0 = rhw.C0:Lerp(cframe(1,-1.65,-0.45) *  angles(rad(-20), rad(10), rad(20)), 0.3)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.75,-1.5,-0.45) *  angles(rad(10), rad(0), rad(-10)), 0.3)
						elseif frame == 3 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,0, 0) * angles(rad(0), rad(45), rad(-0)), 0.5)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, -0.125) * angles(rad(-10), rad(-75), rad(0)), 0.5)
							rsw.C0 = rsw.C0:Lerp(cframe(1.75 ,0.15, -0) * angles(rad(-30), rad(-10), rad(60))*  angles(rad(15), rad(0), rad(30)) * angles(rad(0), rad(180), rad(-10)), 0.5)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.6, 0.25, 0.15) * angles(rad(15), rad(20), rad(-45)), 0.5)
							rhw.C0 = rhw.C0:Lerp(cframe(0.65,-2,0) *  angles(rad(-5), rad(5), rad(7.5)), 0.5)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.7,-2,0.125) *  angles(rad(0), rad(30), rad(-10)), 0.5)
						elseif frame == 4 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,-0.45, 0) * angles(rad(-30), rad(45), rad(0)), 0.125)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, -0.25) * angles(rad(-15), rad(-30), rad(0)), 0.125)
							rsw.C0 = rsw.C0:Lerp(cframe(1.25 , 1, -1) * angles(rad(15), rad(0), rad(90)) * angles(rad(105), rad(0), rad(-30)), 0.125)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.5, 0.5, 1) * angles(rad(90), rad(-30), rad(0)) * angles(rad(-60), rad(-30), rad(-0)) * angles(rad(-15), rad(0), rad(-30)), 0.125)
							rhw.C0 = rhw.C0:Lerp(cframe(0.75,-1.15,-0.75) *  angles(rad(15), rad(-15), rad(0)) * angles(rad(0), rad(0), rad(30)), 0.125)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.85,-1.75,-0.25) *  angles(rad(0), rad(30), rad(-20)), 0.125)
						elseif frame == 5 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,0, 0) * angles(rad(0), rad(-45), rad(-0)) * angles(rad(-10), rad(0), rad(20)), 0.3)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, -0.125) * angles(rad(-10), rad(45), rad(0)), 0.3)
							rsw.C0 = rsw.C0:Lerp(cframe(1.5, 0.5, 0.25) * angles(rad(0), rad(90), rad(90)) * angles(rad(-50), rad(-35), rad(-15)), 0.3)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.5, 1, -1) * angles(rad(0), rad(-45), rad(-105))* angles(rad(60), rad(0), rad(-0)), 0.3)
							rhw.C0 = rhw.C0:Lerp(cframe(-0.5, -2, -1) *  angles(rad(-15), rad(45), rad(4)) * angles(rad(30), rad(30), rad(-0)), 0.3)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.25, -2.15, 0.75) *  angles(rad(0), rad(150), rad(0)), 0.3)
						elseif frame == 6 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,-0.15, 0) * angles(rad(0), rad(-15), rad(10)), 0.3)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, -0.125) * angles(rad(-10), rad(30), rad(0)), 0.3)
							rsw.C0 = rsw.C0:Lerp(cframe(1.75 ,0.75, -0.25) * angles(rad(-10), rad(30), rad(105)) * angles(rad(-30), rad(-30), rad(-30)), 0.3)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.5, 1, -0) * angles(rad(0), rad(-45), rad(-105))* angles(rad(30), rad(0), rad(-0)), 0.3)
							rhw.C0 = rhw.C0:Lerp(cframe(0.45, -2, 0.5) *  angles(rad(-45), rad(0), rad(30)) *  angles(rad(20), rad(-15), rad(-15)) * angles(rad(0), rad(20), rad(-15)), 0.3)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.75,-1.75,-0.5) *  angles(rad(10), rad(15), rad(0)) * angles(rad(0), rad(0), rad(-15)), 0.3)
						elseif frame == 7 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,-0.15, 0) * angles(rad(0), rad(30), rad(10)), 0.3)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, -0.125) * angles(rad(-10), rad(-30), rad(0)), 0.3)
							rsw.C0 = rsw.C0:Lerp(cframe(1.5, 0.75, -0.75) * angles(rad(0), rad(45), rad(105))* angles(rad(30), rad(0), rad(-30)), 0.3)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.5, 1, -0) * angles(rad(0), rad(-45), rad(-105))* angles(rad(30), rad(0), rad(-0)), 0.3)
							rhw.C0 = rhw.C0:Lerp(cframe(0.25,-2,0.5) *  angles(rad(0), rad(-30), rad(0)) *  angles(rad(-30), rad(0), rad(0)), 0.3)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.5,-1.75,-0.75) *  angles(rad(10), rad(-30), rad(0)) *  angles(rad(0), rad(0), rad(-5)), 0.3)
						elseif frame == 8 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,-0.5, 0) * angles(rad(30), rad(0), rad(-0)), 0.3)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, 0.25) * angles(rad(45), rad(0), rad(0)), 0.3)
							rsw.C0 = rsw.C0:Lerp(cframe(0.75, 3, -0.75) * angles(rad(135), rad(0), rad(-0)), 0.3)
							lsw.C0 = lsw.C0:Lerp(cframe(0, 2.75, -1.35) * angles(rad(90), rad(-45), rad(45)) *  angles(rad(60), rad(0), rad(-15)) *  angles(rad(0), rad(-10), rad(0)), 0.3)
							rhw.C0 = rhw.C0:Lerp(cframe(0.65,-1.75,0) *  angles(rad(-35), rad(5), rad(7.5)), 0.3)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.7,-1.75,0.125) *  angles(rad(-30), rad(30), rad(-10)), 0.3)
						end
					elseif anim == "overture" then
						if frame == 1 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,-0.45, 0) * angles(rad(30), rad(-0), rad(-0)), 0.1)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, 0.15) * angles(rad(25), rad(0), rad(0)), 0.1)
							rsw.C0 = rsw.C0:Lerp(cframe(1.45 ,-0.15, 0.25)  * angles(rad(130), rad(-25), rad(30)) * angles(rad(-15), rad(-15), rad(-0)), 0.1)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.75, 0, 0.15) * angles(rad(115), rad(30), rad(-15)) *  angles(rad(-5), rad(30), rad(-15)), 0.1)
							rhw.C0 = rhw.C0:Lerp(cframe(0.65,-1.85,-0.125) *  angles(rad(-35), rad(-15), rad(7.5)), 0.1)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.7,-1.9,-0.125) *  angles(rad(-30), rad(30), rad(-10)), 0.1)
						elseif frame == 2 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,-1.15, -0) * angles(rad(-45), rad(-0), rad(-0)), 0.25)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, -0.5) * angles(rad(-30), rad(-0), rad(0)), 0.25)
							rsw.C0 = rsw.C0:Lerp(cframe(1.75 ,0.5, 0.05) * angles(rad(-10), rad(-10), rad(60)) * angles(rad(0), rad(-60), rad(-30)) * angles(rad(30), rad(0), rad(-0)), 0.25)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.6, 0.25, 0.15) * angles(rad(15), rad(20), rad(-60)) * angles(rad(0), rad(60), rad(30)) * angles(rad(30), rad(0), rad(-0)), 0.25)
							rhw.C0 = rhw.C0:Lerp(cframe(0.5,-1,-0.45) *  angles(rad(-15), rad(-0), rad(0)), 0.25)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.75,-1.5,-0) *  angles(rad(-45), rad(0), rad(20)), 0.25)
						elseif frame == 3 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,0, 0) * angles(rad(-45), rad(0), rad(-0)) * angles(rad(0), rad(-0+(20*jin)), rad(0)), 0.3)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.45, 0.45) * angles(rad(75), rad(0), rad(0)), 0.3)
							rsw.C0 = rsw.C0:Lerp(cframe(1.5 , 1, 0) * angles(rad(180), rad(0), rad(-0)), 0.3)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.5, 1, 0) * angles(rad(180), rad(0), rad(0)), 0.3)
							rhw.C0 = rhw.C0:Lerp(cframe(0.5,-2,0) *  angles(rad(0), rad(0), rad(0)), 0.3)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.5,-2,0) *  angles(rad(0), rad(0), rad(0)), 0.3)
						elseif frame == 4 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,-1.5, -0) * angles(rad(-15), rad(-0), rad(0)), 0.1)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, -0.25) * angles(rad(-30), rad(15- 30 * sin(sine / 12.5)), rad(0)), 0.1)
							rsw.C0 = rsw.C0:Lerp(cframe(1.5 ,0.15, 0.05) * angles(rad(-10), rad(-10), rad(20)), 0.1)
							lsw.C0 = lsw.C0:Lerp(cframe(-0.75, 0.75, -0.75) * angles(rad(90), rad(0), rad(75)) *  angles(rad(45- 5 * sin(sine / 12.5)), rad(0), rad(0)), 0.1)
							rhw.C0 = rhw.C0:Lerp(cframe(0.5,-0.5,-0.75) *  angles(rad(20), rad(0), rad(-0)), 0.1)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.625,-1,0.15) *  angles(rad(-75), rad(0), rad(0)), 0.1)
						end
					end
				end
				local tv = (rt.Velocity * vect3(1, 0, 1)).magnitude
				local tvv = rt.Velocity.y
				local hf = raycast(rt.Position, (cframe(rt.Position, rt.Position + vect3(0, -1, 0))).lookVector, 4+hum.HipHeight, char)
				if hf then
					inair = false
					if tv < 1 and hf ~= nil and hum.Sit == false then
						if not attack then
							anim = "idle"
						end
					elseif tv > 1 and hf ~= nil and hum.Sit == false then
						if not attack then
							anim = "walk"
						end
					elseif hf ~= nil and hum.Sit == true then
						if not attack then
							anim = "sit"
						end
					end
				else
					inair = true
					if tvv > 0 then
						if not attack then
							anim = "jump"
						end
					else
						if not attack then
							anim = "fall"
						end
					end
				end
			end
		end)
		spawn(function()
			local spellc = new("Part")
			local spellcm = new("BlockMesh")
			local spellcd = new("Decal")
			local spellcl = new("PointLight")
			spellc.Name = "SpellCircle"
			spellc.Parent = char
			spellc.Transparency = 1
			spellc.Size = vect3(11.5, 0.15, 11.5)
			spellc.BottomSurface = Enum.SurfaceType.Smooth
			spellc.TopSurface = Enum.SurfaceType.Smooth
			spellc.Anchored = true
			spellc.CanCollide = false
			spellc.Locked = true
			spellc.CanTouch = false
			spellcm.Parent = spellc
			spellcm.Scale = vect3(1.5, 1.5, 1.5)
			spellcd.Parent = spellc
			spellcd.Texture = "http://www.roblox.com/asset/?id=2753963498"
			spellcd.Face = Enum.NormalId.Top
			spellcd.Transparency = 1
			spellcl.Parent = spellc
			spellcl.Brightness = 1.75
			spellcl.Range = 15
			spellcl.Color = color(0.478431, 0.133333, 1)
			local tween = tweens:Create(spellcd, TweenInfo.new(1), {Transparency = 0})
			tween:Play()
			local angle = 0
			while started do
				wait()
				if heatlvl == 1 then
					spellcd.Texture = "http://www.roblox.com/asset/?id=733810688"
				elseif heatlvl == 2 then
					spellcd.Texture = "http://www.roblox.com/asset/?id=2829906887"
				elseif heatlvl == 3 then
					spellcd.Texture = "http://www.roblox.com/asset/?id=4697684244"
				else
					spellcd.Texture = "http://www.roblox.com/asset/?id=733810688"
				end
				angle = angle + 15
				if equipped then
					spellc.CFrame = rt.CFrame * cframe(0, -3, 0) * angles(0, rad(angle), 0)
				else
					if spellcd.Transparency < 1 then
						if spellc ~= nil then
							spellcd.Transparency = spellcd.Transparency + 0.05
						end
					else
						spellc:Destroy()
						started = false
						break							
					end
				end
			end
		end)
	end)

	event.OnServerEvent:connect(function(plr, move, pos, pos2)
		if plr == owner then
			if not equipped then return end
			if attack then return end
			if attack == true then return end
			local ogws = hum.WalkSpeed
			local ogjp = hum.JumpPower
			local ogjh = hum.JumpHeight
			if owner.UserId ~= 50203523 then
				if move == "grenade" then
					if grenadecooldown then return end
				elseif move == "striker" then
					if strikercooldown then return end
				elseif move == "tyrant" then
					if tyrantcooldown then return end
				elseif move == "vortex" then
					if vortexcooldown then return end
				elseif move == "redstar" then
					if starcooldown then return end
				elseif move == "shade" then
					if shadecooldown then return end
				elseif move == "rumeiga" then
					if rumeigacooldown then return end
				elseif move == "korone" then
					if koronecooldown then return end
				elseif move == "hakurei" then
					if hakureicooldown then return end
				elseif move == "kirisame" then
					if kirisamecooldown then return end
				elseif move == "hazama" then
					if hazamacooldown then return end
				elseif move == "gouda" then
					if goudacooldown then return end
				elseif move == "fang" then
					if fangcooldown then return end
				elseif move == "zero" then
					if zerocooldown then return end
				elseif move == "fatal" then
					if fatalcooldown then return end
				elseif move == "saz" then
					if sazcooldown then return end
				elseif move == "nightmare" then
					if nightmarecooldown then return end
				elseif move == "blazblue" then
					if blazbluecooldown then return end
				elseif move == "overdrive" then
					if overdrivecooldown then return end
				end
			end
			if pos ~= nil and move ~= "relocate" then
				rt.CFrame = cframe(pos2.Position, vect3(pos.p.x,pos2.Position.y,pos.p.z)) * CFrame.fromEulerAnglesXYZ(0,math.pi,0)
			end
			if move == "taunt" then
				attack = true
				hum.WalkSpeed = 0
				hum.JumpPower = 0
				hum.JumpHeight = 0
				anim = "taunt"
				frame = 1
				task.wait(0.25)
				sound(7122602098,1,0.95,char["Left Arm"],0,false)
				local lines = {
					"Outta my way already.",
					"Hmph, how weak.",
					"Pathetic.", 
					"Stay outta my way.",
					"I strongly suggest you back off.",
					"Get outta here."
				}
				chatter(char,lines[random(1,#lines)])
				frame = 2
				task.wait(1.5)
				attack = false 
				hum.WalkSpeed = ogws
				hum.JumpPower = ogjp
				hum.JumpHeight = ogjh
			elseif move == "punch" then
				if not inair then
					attack = true
					hum.WalkSpeed = 0
					hum.JumpPower = 0
					hum.JumpHeight = 0
					anim = "punch"
					frame = 1
					sound(7122602098,1,1.5,Handle,0,false)
					Tool.Grip = cframe(0, -1.5, 0, -4.37113883e-08, -0.707106769, -0.707106769, 0, 0.707106769, -0.707106769, 1, -3.09086197e-08, -3.09086197e-08)
					magnitudedamage(5,"sphere", 0, 4.5, 8595980577, 1.5, 1, rt,true,"normal","normal")
					task.wait(0.2)
					Tool.Grip = cframe(0, -1, 0, -4.37113883e-08, 0, -1, 0, 1, -0, 1, -0, -4.37113883e-08)
					attack = false
					hum.WalkSpeed = ogws
					hum.JumpPower = ogjp
					hum.JumpHeight = ogjh
				else
					attack = true
					anim = "apunch"
					frame = 1
					sound(7122602098,1,1.5,Handle,0,false)
					partdamage(5,"sphere", 0, 5, 8278630896, 1.15, 1, rt,true,"normal","normal",0.15)
					task.wait(0.15)
					attack = false
				end
			elseif move == "kick" then
				if not inair then
					attack = true
					hum.WalkSpeed = 0
					hum.JumpPower = 0
					hum.JumpHeight = 0
					anim = "kick"
					frame = 1
					task.wait(0.1)
					frame = 2
					sound(7122602098,1,1.15,char["Left Leg"],0,false)
					magnitudedamage(7,"sphere", 0, 5, 46153268, 1.3, 1.5, rt,true,"normal","normal")
					task.wait(0.15)
					frame = 1
					attack = false
					hum.WalkSpeed = ogws
					hum.JumpPower = ogjp
					hum.JumpHeight = ogjh
				else
					attack = true
					anim = "akick"
					frame = 1
					task.wait(0.1)
					frame = 2
					sound(7122602098,1,1.15,char["Left Leg"],0,false)
					partdamage(7,"sphere", 0, 5, 46153268, 1.3, 1.5, rt,true,"normal","normal",0.15)
					task.wait(0.15)
					frame = 1
					attack = false
				end
			elseif move == "slash" then
				if not inair then
					attack = true
					hum.WalkSpeed = 0
					hum.JumpPower = 0
					hum.JumpHeight = 0
					anim = "slash"
					frame = 1
					task.wait(0.025)
					frame = 2
					sound(7122602098,1,0.65,Handle,0,false)
					trail.Enabled = true
					trail2.Enabled = true				
					task.wait(0.025)
					frame = 3
					magnitudedamage(9,"sphere", 0, 7.5, 107083556408593, 1.25, 1, rt,true,"slash2","normal")
					task.wait(0.15)
					frame = 1
					attack = false
					trail.Enabled = false
					trail2.Enabled = false	
					hum.WalkSpeed = ogws
					hum.JumpPower = ogjp
					hum.JumpHeight = ogjh
				else
					attack = true
					anim = "aslash"
					frame = 1
					task.wait(0.045)
					frame = 2
					sound(7122602098,1,0.65,Handle,0,false)
					trail.Enabled = true
					trail2.Enabled = true	
					task.wait(0.045)
					frame = 3
					partdamage(10,"sphere", 0, 5, 107083556408593, 1.2, 1, rt,true,"slash2","normal",0.15)
					task.wait(0.15)
					frame = 1
					attack = false
					trail.Enabled = false
					trail2.Enabled = false	
				end
			elseif move == "drive" then
				if not inair then
					attack = true
					hum.WalkSpeed = 0
					hum.JumpPower = 0
					hum.JumpHeight = 0
					anim = "drive"
					frame = 1
					task.wait(0.2)
					frame = 3
					sound(7122602098,1,0.65,char["Left Arm"],0,false)
					task.wait(0.03)
					frame = 2
					magnitudedamage(10,"sphere", 0, 3.45, 46153268, 1.15, 0.75, rt,true,"normal","normal")
					task.wait(0.25)
					frame = 1
					attack = false
					hum.WalkSpeed = ogws
					hum.JumpPower = ogjp
					hum.JumpHeight = ogjh
				else
					attack = true
					anim = "adrive"
					frame = 1
					task.wait(0.1)
					frame = 2
					sound(7122602098,1,0.65,Handle,0,false)
					partdamage(11,"sphere", 0, 5, 46153268, 1.15, 0.75, rt,true,"normal","normal",0.15)
					task.wait(0.25)
					frame = 1
					attack = false
				end
			elseif move == "grab" then
				--This move is not present in the original EnmaU (Berzerker), but it's present in Enma2 (Ravager), so I added it here.
				if not inair then
					attack = true
					hum.WalkSpeed = 0
					hum.JumpPower = 0
					hum.JumpHeight = 0
					anim = "grab"
					frame = 1
					local grabbed = false
					local gv = nil
					local gvhum = nil
					local gvhead = nil
					local gvtorso = nil
					local function checkgrab()
						for i,v in pairs(workspace:GetDescendants()) do
							if v:FindFirstChildOfClass("Humanoid") and v ~= char and not grabbed then
								local vhum = v:FindFirstChildOfClass("Humanoid")
								local vtorso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso") or v:FindFirstChild("HumanoidRootPart")
								local vhead = v:FindFirstChild("Head")
								if vtorso then
									local vdistance = (rt.Position - vtorso.Position).magnitude
									if vdistance <= 5 and vhum.Health > 0 then
										sound(46153268,1.15,2,vtorso,0,false)
										hiteffect("grab",vtorso)
										grabbed = true
										gv = v
										gvhum = vhum
										gvhead = vhead
										gvtorso = vtorso
									end
								end
							end
						end
					end
					checkgrab()
					wait(0.025)
					if not grabbed then
						sound(444895479,1,1,char["Right Arm"],0,false)
						wait(0.425)
					else
						local grabpart = new("Part")
						grabpart.Parent = gv
						grabpart.Transparency = 1
						grabpart.CanCollide = false
						grabpart.CFrame = rt.CFrame * cframe(0,0,-2.5) * angles(0,rad(180),0)
						grabpart.Anchored = true
						grabpart.CFrame = rt.CFrame * cframe(0,0,-2.5) * angles(0,rad(180),0)
						rt.Anchored = true
						local weld = new("Weld")
						weld.Parent = grabpart
						weld.Part0 = grabpart
						weld.Part1 = gvtorso
						weld.C0 = weld.C0 * cframe(0.15, 0, 0)
						frame = 1
						wait(0.5)
						anim = "graba"
						frame = 1
						wait(0.15)
						local chance = random(0,10)
						frame = 2
						debris:AddItem(weld,0.01)
						wait(0.001)
						grabpart:Destroy()
						gvhum.PlatformStand = true
						coroutine.wrap(function()
							wait(3)
							gvhum.PlatformStand = false
						end)()
						damage(gvhum, 18, 46153268, 1.15, 0.5, gvhead, 0.1, "sphere")
						gvtorso.Velocity = rt.CFrame.lookVector*45
						wait(0.25)
						frame = 1
						rt.Anchored = false
						wait(0.15)
						anim = "grab"
						wait(0.05)
					end
					hum.WalkSpeed = ogws
					hum.JumpPower = ogjp
					hum.JumpHeight = ogjh
					attack = false
				else
					attack = true
					anim = "agrab"
					frame = 1
					local grabbed = false
					local gv = nil
					local gvhum = nil
					local gvhead = nil
					local gvtorso = nil
					local weld = nil
					local Part = new("Part",script)
					Part.Name = "HitboxThing"
					Part.Transparency = 1
					Part.Size = vect3(2.5, 7.5, 3)
					Part.CanCollide = false
					Part.Massless = true
					debris:AddItem(Part,0.125)
					local Weld = new("Weld",Part)
					Weld.Part0 = rt
					Weld.Part1 = Part
					Weld.C0 = Weld.C0 * cframe(0,0,-2.5)
					Part.Touched:Connect(function(persona)
						if persona:IsA("BasePart") or persona:IsA("MeshPart") then
							if persona.Parent ~= nil and not persona.Parent:IsDescendantOf(char) then
								if persona.Parent:FindFirstChildOfClass("Humanoid") and persona.Parent ~= char and not grabbed then
									local humi = persona.Parent:FindFirstChildOfClass("Humanoid")
									local torsou = persona.Parent:FindFirstChild("HumanoidRootPart") or persona.Parent:FindFirstChild("Torso") or persona.Parent:FindFirstChild("UpperTorso")
									local headu = persona.Parent:FindFirstChild("Head")
									if torsou and humi.Health > 0 then
										sound(46153268,1.15,2,torsou,0,false)
										hiteffect("grab",torsou)
										grabbed = true
										gv = persona.Parent
										gvhum = humi
										gvhead = headu
										gvtorso = torsou
										weld = new("Weld")
										weld.Parent = rt
										weld.Part0 = rt
										weld.Part1 = gvtorso
										weld.Name = "GrabWELD"
										weld.C0 = cframe(0.25, 0, -2.5) * angles(0,rad(-180),0)
										Part:Destroy()
									end
								end
							end	
						end
					end)
					local vel = new("BodyVelocity")
					vel.MaxForce = vect3(math.huge,math.huge,math.huge)
					vel.Parent = rt
					vel.Velocity = rt.CFrame.LookVector * 25 + rt.CFrame.upVector * 75
					vel.Name  =  "SmallMover"
					debris:AddItem(vel,.1)
					wait(0.135)
					if not grabbed then
						sound(444895479,1,1,char["Right Arm"],0,false)
						frame = 1
						wait(0.425)
					else
						Part:Destroy()
						weld.C0 = cframe(0.25, 0, -2.5) * angles(0,rad(-180),0)
						anim = "agrab"
						frame = 1
						wait(0.1)
						frame = 2
						rt.Anchored = true			
						weld.C0 = cframe(-0.15, 0.25, -5) * angles(rad(-90),rad(-180),0)	
						for i = 1 , 25 do
							wait()
							rt.CFrame = rt.CFrame * angles(0,rad(45),0)
						end
						debris:AddItem(weld,0.01)
						wait(0.01)
						sound(10209850,1.5,0.25,rt,0.175,false)
						gvhum.PlatformStand = true
						spawn(function()
							wait(3)
							gvhum.PlatformStand = false
						end)
						gvtorso.Velocity = rt.CFrame.LookVector*115
						spawn(function()
							local hitfloor
							repeat 
								wait()
								hitfloor = raycast(gvtorso.Position, vect3(0, -1, 0), 2+gvhum.HipHeight, gv)
							until hitfloor or gvhum:GetState() == Enum.HumanoidStateType.Landed
							damage(gvhum, 14, 8255306220, 6.75, 1, gvhead, 0, "sphere")
						end)
						wait(0.5)
						rt.Anchored = false
					end
					attack = false
				end
			elseif move == "charge" then
				if heat >= 300 or heatlvl == 3 then return end
				attack = true
				hum.WalkSpeed = 0
				hum.JumpPower = 0
				hum.JumpHeight = 0
				anim = "charge"
				frame = 1
				local lines = {
					"MENDOKUSAI!!", --untranslated line from Order-Sol, don't know what it means
					"UURAAAAAHHHHHHHH!!!",
					"YOU FREAKING ASKED FOR IT!"
				}
				chatter(char,lines[random(1,#lines)])
				gyro.MaxTorque = vect3(0,0,0)
				local reached2nd = false
				local reached3rd = false
				local charging = true
				task.wait(0.25)
				frame = 2
				local function wave()
					local wp = new("Part")
					local wm = new("SpecialMesh")
					wp.Name = "WavePart"
					wp.Parent = char
					wp.Transparency = 0.1
					wp.Size = vect3(0.001,0.001,0.001)
					wp.Anchored = true
					wp.BottomSurface = Enum.SurfaceType.Smooth
					wp.BrickColor = bc("Really black")
					wp.CanCollide = false
					wp.TopSurface = Enum.SurfaceType.Smooth
					wm.Parent = wp
					wm.MeshId = "rbxassetid://20329976"
					wm.Scale = vect3(3.5, 7.5, 3.5)
					wm.MeshType = Enum.MeshType.FileMesh
					local wp2 = new("Part")
					local wm2 = new("SpecialMesh")
					wp2.Name = "WavePart"
					wp2.Parent = wp
					wp2.Transparency = 0.025
					wp2.Size = vect3(0.001,0.001,0.001)
					wp2.Anchored = true
					wp2.BottomSurface = Enum.SurfaceType.Smooth
					wp2.BrickColor = bc("Dark indigo")
					wp2.CanCollide = false
					wp2.TopSurface = Enum.SurfaceType.Smooth
					wm2.Parent = wp2
					wm2.MeshId = "rbxassetid://20329976"
					wm2.Scale = vect3(3, 6, 3)
					wm2.MeshType = Enum.MeshType.FileMesh
					wp.Material = "Neon"
					wp2.Material = "Neon"
					wp.CFrame = rt.CFrame * cframe(0,-1.5,-0.45)
					wp2.CFrame = rt.CFrame * cframe(0,-1.5,-0.45)
					sound2(2760979, 1.5, 0.375, wp, 0,false)
					sound2(2693351, 1.25, 0.85, wp, 0,false)
					local tween = tweens:Create(wp,TweenInfo.new(1,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Transparency = 1})
					tween:Play()
					local tweenM = tweens:Create(wm,TweenInfo.new(1,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Scale = vect3(15,0.05,15),Offset = vect3(0,-1.5,-1)})
					tweenM:Play()
					local tween1 = tweens:Create(wp2,TweenInfo.new(1,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Transparency = 1})
					tween1:Play()
					local tweenM1 = tweens:Create(wm2,TweenInfo.new(1,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Scale = vect3(17.5,0.025,17.5),Offset = vect3(0,-1.5,-1)})
					tweenM1:Play()
					tween.Completed:Connect(function() wp:Destroy()end)
					tween1.Completed:Connect(function() wp2:Destroy() end)
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
				dust.Color = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0.333333, 0, 0.498039))
				dust.Texture = "rbxassetid://292289455"
				dust.Transparency = NumberSequence.new(0.6875,1)
				dust.Size = NumberSequence.new(3,3)
				dust.Lifetime = NumberRange.new(2.5, 3.2)
				dust.Rate = 500
				dust.RotSpeed = NumberRange.new(15, 15)
				dust.Speed = NumberRange.new(20, 20)
				dust.SpreadAngle = vect2(15, 15)
				dust.VelocitySpread = 15
				dust.EmissionDirection = "Top"
				local dustweld = new("Weld")
				dustweld.Part0 = dustpart
				dustweld.Part1 = rt
				dustweld.Parent = dustpart
				dustweld.C0 = dustweld.C0 * cframe(0, 2.5, 0)
				spawn(function()
					while charging do
						wait()
						if heat >= 100 and heat < 200 then
							if not reached2nd then wave() end
							reached2nd = true
						elseif heat >= 300 then
							if not reached3rd then wave() end
							reached3rd = true
						end
					end
				end)
				spawn(function()
					while charging do
						sound(83066231638545, 1.25, 1.2, rt, 0.425,false)
						wait(0.15)
					end
				end)
				local pow = 1
				repeat
					if heat < 300 then
						heat = heat + pow * 0.175
					end
					if heat > 300 then
						heat = 300
					end
					if heat >= 0 and heat < 100 then
						heatlvl = 1
					elseif heat >= 100 and heat < 200 then
						heatlvl = 2
					elseif heat >= 300 then
						heatlvl = 3
					end
					pow = pow + 1
					wait(0.015)
				until not holdinge
				charging = false
				frame = 3
				dust.Enabled = false
				debris:AddItem(dustpart,2)
				task.wait(0.1)
				gyro.MaxTorque = vect3(0,math.huge,0)
				attack = false
				hum.WalkSpeed = ogws
				hum.JumpPower = ogjp
				hum.JumpHeight = ogjh
			elseif move == "grenade" then
				grenadecooldown = true
				spawn(function()
					task.wait(2.5)
					grenadecooldown = false
				end)
				attack = true
				rt.CFrame = rt.CFrame * cframe(0,0,-1.5)
				gyro.MaxTorque = vect3(0,0,0)
				hum.WalkSpeed = 0
				hum.JumpPower = 0
				hum.JumpHeight = 0
				anim = "grenade"
				frame = 1
				Tool.Grip = cframe(0, -1.5, 0, -4.37113883e-08, -0.707106769, -0.707106769, 0, 0.707106769, -0.707106769, 1, -3.09086197e-08, -3.09086197e-08)
				local lines = {
					"SHUT UP!",
					"BURN!",
					"Out of my way!",
				}
				chatter(char,lines[random(1,#lines)])
				task.wait(0.1)
				if heatlvl == 1 or holdinge then
					local exp = new("Part")
					exp.Parent = char
					exp.Transparency = 1
					exp.Size = vect3(0.001,0.001,0.001)
					exp.Locked = true
					exp.CanCollide = false
					exp.Anchored = true
					exp.CFrame =  rt.CFrame * cframe(0,-0.25,-4.5)
					local boom = new("Explosion")
					boom.Parent = workspace
					boom.Position = exp.Position
					boom.BlastRadius = 10
					boom.BlastPressure = 0
					debris:AddItem(exp,3)
					sound2(6892631834,1.15,1,exp,0)
					magnitudedamage(11,"sphere", 0, 4.5, 46153268, 1.15, 0.75, rt,true,"burn","grenade")
				elseif heatlvl == 2 then
					if heat > 100 then
						heat = heat - 100
					end
					heatlvl = 1
					local exp = new("Part")
					exp.Parent = char
					exp.Transparency = 1
					exp.Size = vect3(0.001,0.001,0.001)
					exp.Locked = true
					exp.CanCollide = false
					exp.Anchored = true
					exp.CFrame =  rt.CFrame * cframe(0,-0.25,-4.5)
					local boom = new("Explosion")
					boom.Parent = workspace
					boom.Position = exp.Position
					boom.BlastRadius = 15
					boom.BlastPressure = 0
					debris:AddItem(exp,3)
					sound2(6892631834,1.15,1,exp,0)
					magnitudedamage(15,"sphere", 0, 4.5, 46153268, 1.15, 0.75, rt,true,"burn","grenade2")
				elseif heatlvl == 3 then
					if heat > 100 then
						heat = heat - 200
					end
					heatlvl = 1
					spawn(function() 
						local pos = rt.CFrame
						local direction = pos.lookVector
						for i = 1,3 do
							local posit = pos+(direction*i*8)
							local exp = new("Part")
							exp.Parent = char
							exp.Transparency = 1
							exp.Size = vect3(0.001,0.001,0.001)
							exp.Locked = true
							exp.CanCollide = false
							exp.Anchored = true
							exp.CFrame =  cframe(posit.x,posit.y-0.25,posit.z-2.5)
							local boom = new("Explosion")
							boom.Parent = workspace
							boom.Position = exp.Position
							boom.BlastRadius = 25
							boom.BlastPressure = 0
							sound2(6892631834,1.15,1,exp,0)
							debris:AddItem(exp,3)
							magnitudedamage(15,"sphere", 0, 4.5 * i, 46153268, 1.15, 0.75, exp,true,"burn","grenade2")
							wait(0.225)
						end
					end)
					magnitudedamage(10,"sphere", 0, 4.5, 46153268, 1.15, 0.75, rt,true,"burn","grenade")
				end
				task.wait(0.45)
				anim = "aiko"
				Tool.Grip = cframe(0, -1, 0, -4.37113883e-08, 0, -1, 0, 1, -0, 1, -0, -4.37113883e-08)
				task.wait(0.075)
				if holdinge then
					if heat >= 300 then 
						attack = false
						gyro.MaxTorque = vect3(0,math.huge,0)
						hum.WalkSpeed = ogws
						hum.JumpPower = ogjp
						hum.JumpHeight = ogjh 
						return 
					end
					local pe = new("ParticleEmitter")
					local pe0 = new("ParticleEmitter")
					local pe1 = new("ParticleEmitter")
					pe.Parent = char.Torso
					pe.Speed = NumberRange.new(15, 15)
					pe.Orientation = Enum.ParticleOrientation.VelocityParallel
					pe.Color = ColorSequence.new(color(1, 0.917647, 0),color(0.85098, 1, 0.188235),color(0.419608, 0.952941, 1))
					pe.LightEmission = 1
					pe.LightInfluence = 1
					pe.Texture = "http://www.roblox.com/asset/?id=8268283628"
					pe.Transparency = NumberSequence.new(0,0.19374996423721313,0.987500011920929)
					pe.Size = NumberSequence.new(0.4000000059604645,0.4000000059604645)
					pe.Drag = 7
					pe.Lifetime = NumberRange.new(0, 1.5)
					pe.Rate = 500
					pe.SpreadAngle = vect2(360, 360)
					pe.VelocitySpread = 360
					pe0.Parent = char.Torso
					pe0.Speed = NumberRange.new(0, 20)
					pe0.Rotation = NumberRange.new(-360, 360)
					pe0.Color = ColorSequence.new(color(1, 1, 0.498039),color(0.752941, 1, 0.490196),color(0.666667, 1, 1))
					pe0.LightEmission = 1
					pe0.LightInfluence = 1
					pe0.Texture = "http://www.roblox.com/asset/?id=8177564047"
					pe0.Transparency = NumberSequence.new(1,0,1)
					pe0.Size = NumberSequence.new(0.5624997615814209,0)
					pe0.Shape = Enum.ParticleEmitterShape.Sphere
					pe0.Acceleration = vect3(0, -15, 0)
					pe0.Drag = 10
					pe0.Lifetime = NumberRange.new(0, 1.5)
					pe0.Rate = 1000
					pe0.RotSpeed = NumberRange.new(100, 100)
					pe1.Parent = char.Torso
					pe1.Speed = NumberRange.new(15, 15)
					pe1.Rotation = NumberRange.new(0, 360)
					pe1.Color = ColorSequence.new(color(1, 0.917647, 0),color(0.85098, 1, 0.188235),color(0.419608, 0.952941, 1))
					pe1.LightEmission = 1
					pe1.LightInfluence = 1
					pe1.Texture = "http://www.roblox.com/asset/?id=8177565057"
					pe1.Transparency = NumberSequence.new(0,0.19374996423721313,0.987500011920929)
					pe1.Size = NumberSequence.new(0.30000001192092896,0)
					pe1.Drag = 10
					pe1.Lifetime = NumberRange.new(0, 1.5)
					pe1.Rate = 10000
					pe1.RotSpeed = NumberRange.new(50, 50)
					pe1.SpreadAngle = vect2(360, 360)
					pe1.VelocitySpread = 360
					local sphere = new("Part")
					sphere.Parent = char
					sphere.Name = "YuiEffect"
					sphere.Shape = "Ball"
					sphere.Size = vect3(2.5,2.5,2.5)
					sphere.Transparency = 0.5
					sphere.BrickColor = bc("Cool yellow")
					sphere.Material = "Neon"
					sphere.CanCollide = false
					sphere.Anchored = true
					sphere.CFrame = rt.CFrame
					local tween = tweens:Create(sphere, TweenInfo.new(0.25), {Size = vect3(30,30,30), Transparency = 1, Color = color(1,1,1)})
					tween:Play()
					debris:AddItem(sphere,2)
					sound(1613998698,1.5,1,rt,0.3,false)
					if not inair then
						Tool.Grip = cframe(0, -1, 0, -4.37113883e-08, -0.5, -0.866025388, 0, 0.866025388, -0.5, 1, -2.18556941e-08, -3.78551732e-08)
						anim = "yui"
						if heat < 300 then
							heat = heat + 50
						end
						if heat > 300 then
							heat = 300
						end
						if heat >= 0 and heat < 100 then
							heatlvl = 1
						elseif heat >= 100 and heat < 200 then
							heatlvl = 2
						elseif heat >= 300 then
							heatlvl = 3
						end
						task.wait(0.45)
						pe0.Enabled = false
						pe1.Enabled = false
						pe.Enabled = false
						debris:AddItem(pe,1.5)
						debris:AddItem(pe0,1.5)
						debris:AddItem(pe1,1.5)
						Tool.Grip = cframe(0, -1, 0, -4.37113883e-08, 0, -1, 0, 1, -0, 1, -0, -4.37113883e-08)
					else
						rt.Anchored = true
						Tool.Grip = cframe(0, -1, 0, -4.37113883e-08, -0.5, -0.866025388, 0, 0.866025388, -0.5, 1, -2.18556941e-08, -3.78551732e-08)
						anim = "ayui"
						if heat < 300 then
							heat = heat + 50
						end
						if heat > 300 then
							heat = 300
						end
						if heat >= 0 and heat < 100 then
							heatlvl = 1
						elseif heat >= 100 and heat < 200 then
							heatlvl = 2
						elseif heat >= 300 then
							heatlvl = 3
						end
						task.wait(0.45)
						pe0.Enabled = false
						pe1.Enabled = false
						pe.Enabled = false
						debris:AddItem(pe,1.5)
						debris:AddItem(pe0,1.5)
						debris:AddItem(pe1,1.5)
						rt.Anchored = false
						Tool.Grip = cframe(0, -1, 0, -4.37113883e-08, 0, -1, 0, 1, -0, 1, -0, -4.37113883e-08)
					end
				end
				attack = false
				gyro.MaxTorque = vect3(0,math.huge,0)
				hum.WalkSpeed = ogws
				hum.JumpPower = ogjp
				hum.JumpHeight = ogjh
			elseif move == "striker" then
				--STORUM VIPAAA
				if strikercount < 4 then
					strikercount = strikercount + 1
				else
					strikercooldown = true
					spawn(function()
						task.wait(15)
						strikercooldown = false
					end)
				end
				coroutine.resume(coroutine.create(function()
					while strikercount > 0 do
						task.wait(7.5)
						strikercount = strikercount - 1
						if strikercount < 0 then
							strikercount = 0
						end
					end
				end))
				attack = true
				rt.CFrame = rt.CFrame * cframe(0,0,-1.5)
				gyro.MaxTorque = vect3(0,0,0)
				hum.WalkSpeed = 0
				hum.JumpPower = 0
				hum.JumpHeight = 0
				anim = "striker"
				frame = 1
				local lines = {
					"Shadow Striker!",
					"GO IN HELL!!",
					"Get out of my sight!"
				}
				chatter(char,lines[random(1,#lines)])
				task.wait(0.068)
				frame = 2
				task.wait(0.068)
				frame = 3
				local bpos = new("BodyPosition")
				bpos.Parent = rt
				bpos.MaxForce = vect3(math.huge,math.huge,math.huge)
				bpos.D = 1499
				bpos.Position = rt.CFrame * cframe(0,75,-25).Position
				sound(2692477,1.5,0.35,char["Left Arm"],0,false)
				spawn(function()
					wait(0.15)
					sound(28257433,1.5,0.55,char["Left Arm"],0,false)
					sound(28144425,1.5,0.275,char["Left Arm"],0,false)
				end)
				local jumppart = new("Part")
				local jumpmesh = new("SpecialMesh")
				jumppart.Parent = script
				jumppart.Transparency = 0
				jumppart.Size = vect3(1, 1, 1)
				jumppart.Anchored = true
				jumppart.BottomSurface = Enum.SurfaceType.Smooth
				jumppart.BrickColor = bc("Dark indigo")
				jumppart.CanCollide = false
				jumppart.TopSurface = Enum.SurfaceType.Smooth
				jumpmesh.Parent = jumppart
				jumpmesh.MeshId = "rbxassetid://20329976"
				jumpmesh.Scale = vect3(3, 3, 3)
				jumpmesh.MeshType = Enum.MeshType.FileMesh
				jumppart.CFrame = rt.CFrame * cframe(0,-1.5,0)
				local tween = tweens:Create(jumppart,TweenInfo.new(1.5,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Transparency = 1})
				tween:Play()
				local tweenM = tweens:Create(jumpmesh,TweenInfo.new(1.5,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Scale = vect3(30,0.025,30),Offset = vect3(0,-1.5,-1)})
				tweenM:Play()
				tween.Completed:Connect(function() jumppart:Destroy()end)
				spawn(function()
					for i = 1,10 do
						wait(0.05)
						local randomcolor = random(0,3)
						local firepart = new("Part")
						firepart.Parent = script
						firepart.Size = vect3(8.5,8.5,8.5)
						firepart.BottomSurface = Enum.SurfaceType.Smooth
						firepart.Anchored = true
						firepart.CanCollide = false
						firepart.CanTouch = false
						if randomcolor == 0 then
							firepart.BrickColor = bc("Really black")
						elseif randomcolor == 1 then
							firepart.BrickColor = bc("Dark indigo")
						elseif randomcolor == 2 then
							firepart.BrickColor = bc("Royal purple")
						elseif randomcolor == 3 then
							firepart.BrickColor = bc("Black")
						end
						firepart.Material = Enum.Material.Neon
						firepart.TopSurface = Enum.SurfaceType.Smooth
						firepart.CFrame = char["Left Arm"].CFrame * cframe(0,0,0.25) * angles(rad(random(-360,360)),rad(random(-360,360)),rad(random(-360,360)))
						local fire = new("Fire")
						fire.Parent = firepart
						fire.Size = 10
						fire.Heat = 25
						if randomcolor == 0 then
							fire.Color = Color3.fromRGB(17, 17, 17)
							fire.SecondaryColor = Color3.fromRGB(45, 45, 45)
						elseif randomcolor == 1 then
							fire.Color = Color3.fromRGB(61, 23, 132)
							fire.SecondaryColor = Color3.fromRGB(111, 22, 189)
						elseif randomcolor == 2 then
							fire.Color = Color3.fromRGB(98, 37, 209)
							fire.SecondaryColor = Color3.fromRGB(151, 24, 255)
						elseif randomcolor == 3 then
							fire.Color = Color3.fromRGB(27, 42, 53)
							fire.SecondaryColor = Color3.fromRGB(55, 64, 79)
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
								firepart.Size = firepart.Size - vect3(0.5,0.5,0.5)
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
				if heatlvl == 1 or holdinge then
					spawn(function()
						for i = 1,4 do
							magnitudedamage(2.5, "sphere", 0, 10, 2801263, 1.25, 0.9, rt,true,"normal","striker")
							wait(0.15)
						end
					end)
					task.wait(0.45)
					frame = 4
					task.wait(0.073)
					frame = 5
					task.wait(0.073)
					bpos:Destroy()
				elseif heatlvl == 2 then
					if heat > 100 then
						heat = heat - 100
					end
					heatlvl = 1
					spawn(function()
						for i = 1,10 do
							magnitudedamage(3.5, "sphere", 0, 10, 2801263, 1.25, 0.9, rt,true,"normal","striker")
							wait(0.06)
						end
					end)
					task.wait(0.45)
					frame = 4
					task.wait(0.1)
					frame = 5
					task.wait(0.1)
					bpos:Destroy()
				elseif heatlvl == 3 then
					if heat > 100 then
						heat = heat - 200
					end
					heatlvl = 1
					spawn(function()
						for i = 1,10 do
							magnitudedamage(3.5, "sphere", 0, 10, 2801263, 1.25, 0.9, rt,true,"normal","striker")
							wait(0.06)
						end
					end)
					task.wait(0.45)
					frame = 4
					task.wait(0.1)
					frame = 5
					task.wait(0.1)
					bpos:Destroy()
					anim = "strikerk"
					frame = 1
					local bpos2 = new("BodyPosition")
					bpos2.Parent = rt
					bpos2.MaxForce = vect3(math.huge,math.huge,math.huge)
					bpos2.D = 2000
					bpos2.Position = rt.CFrame * cframe(0,25,0).Position
					local fire = new("Fire")
					fire.Parent = char["Left Leg"]
					fire.Size = 6
					fire.Heat = 10
					fire.Color = color(0.0784314, 0.0784314, 0.0784314)
					fire.SecondaryColor = color(0.384314, 0.145098, 0.819608)
					sound(1273117535,4.5,1,char["Left Leg"],0,false)
					task.wait(0.1)
					frame = 2
					task.wait(0.1)
					frame = 3
					task.wait(0.1)
					sound(7122602098,1,1,char["Left Leg"],0,false)
					magnitudedamage(11.5, "sphere", 0.05, 10, 46153268, 1.5, 0.5, rt,true,"normal","striker2")
					frame = 4
					task.wait(0.1)
					fire.Enabled = false
					debris:AddItem(fire,3)
					bpos2:Destroy()
					task.wait(0.25)
				end
				if holdinge then
					if heat >= 300 then 
						attack = false
						gyro.MaxTorque = vect3(0,math.huge,0)
						hum.WalkSpeed = ogws
						hum.JumpPower = ogjp
						hum.JumpHeight = ogjh 
						return 
					end
					local pe = new("ParticleEmitter")
					local pe0 = new("ParticleEmitter")
					local pe1 = new("ParticleEmitter")
					pe.Parent = char.Torso
					pe.Speed = NumberRange.new(15, 15)
					pe.Orientation = Enum.ParticleOrientation.VelocityParallel
					pe.Color = ColorSequence.new(color(1, 0.917647, 0),color(0.85098, 1, 0.188235),color(0.419608, 0.952941, 1))
					pe.LightEmission = 1
					pe.LightInfluence = 1
					pe.Texture = "http://www.roblox.com/asset/?id=8268283628"
					pe.Transparency = NumberSequence.new(0,0.19374996423721313,0.987500011920929)
					pe.Size = NumberSequence.new(0.4000000059604645,0.4000000059604645)
					pe.Drag = 7
					pe.Lifetime = NumberRange.new(0, 1.5)
					pe.Rate = 500
					pe.SpreadAngle = vect2(360, 360)
					pe.VelocitySpread = 360
					pe0.Parent = char.Torso
					pe0.Speed = NumberRange.new(0, 20)
					pe0.Rotation = NumberRange.new(-360, 360)
					pe0.Color = ColorSequence.new(color(1, 1, 0.498039),color(0.752941, 1, 0.490196),color(0.666667, 1, 1))
					pe0.LightEmission = 1
					pe0.LightInfluence = 1
					pe0.Texture = "http://www.roblox.com/asset/?id=8177564047"
					pe0.Transparency = NumberSequence.new(1,0,1)
					pe0.Size = NumberSequence.new(0.5624997615814209,0)
					pe0.Shape = Enum.ParticleEmitterShape.Sphere
					pe0.Acceleration = vect3(0, -15, 0)
					pe0.Drag = 10
					pe0.Lifetime = NumberRange.new(0, 1.5)
					pe0.Rate = 1000
					pe0.RotSpeed = NumberRange.new(100, 100)
					pe1.Parent = char.Torso
					pe1.Speed = NumberRange.new(15, 15)
					pe1.Rotation = NumberRange.new(0, 360)
					pe1.Color = ColorSequence.new(color(1, 0.917647, 0),color(0.85098, 1, 0.188235),color(0.419608, 0.952941, 1))
					pe1.LightEmission = 1
					pe1.LightInfluence = 1
					pe1.Texture = "http://www.roblox.com/asset/?id=8177565057"
					pe1.Transparency = NumberSequence.new(0,0.19374996423721313,0.987500011920929)
					pe1.Size = NumberSequence.new(0.30000001192092896,0)
					pe1.Drag = 10
					pe1.Lifetime = NumberRange.new(0, 1.5)
					pe1.Rate = 10000
					pe1.RotSpeed = NumberRange.new(50, 50)
					pe1.SpreadAngle = vect2(360, 360)
					pe1.VelocitySpread = 360
					local sphere = new("Part")
					sphere.Parent = char
					sphere.Name = "YuiEffect"
					sphere.Shape = "Ball"
					sphere.Size = vect3(2.5,2.5,2.5)
					sphere.Transparency = 0.5
					sphere.BrickColor = bc("Cool yellow")
					sphere.Material = "Neon"
					sphere.CanCollide = false
					sphere.Anchored = true
					sphere.CFrame = rt.CFrame
					local tween = tweens:Create(sphere, TweenInfo.new(0.25), {Size = vect3(30,30,30), Transparency = 1, Color = color(1,1,1)})
					tween:Play()
					debris:AddItem(sphere,2)
					sound(1613998698,1.5,1,rt,0.3,false)
					if not inair then
						Tool.Grip = cframe(0, -1, 0, -4.37113883e-08, -0.5, -0.866025388, 0, 0.866025388, -0.5, 1, -2.18556941e-08, -3.78551732e-08)
						anim = "yui"
						if heat < 300 then
							heat = heat + 50
						end
						if heat > 300 then
							heat = 300
						end
						if heat >= 0 and heat < 100 then
							heatlvl = 1
						elseif heat >= 100 and heat < 200 then
							heatlvl = 2
						elseif heat >= 300 then
							heatlvl = 3
						end
						task.wait(0.45)
						pe0.Enabled = false
						pe1.Enabled = false
						pe.Enabled = false
						debris:AddItem(pe,1.5)
						debris:AddItem(pe0,1.5)
						debris:AddItem(pe1,1.5)
						Tool.Grip = cframe(0, -1, 0, -4.37113883e-08, 0, -1, 0, 1, -0, 1, -0, -4.37113883e-08)
					else
						rt.Anchored = true
						Tool.Grip = cframe(0, -1, 0, -4.37113883e-08, -0.5, -0.866025388, 0, 0.866025388, -0.5, 1, -2.18556941e-08, -3.78551732e-08)
						anim = "ayui"
						if heat < 300 then
							heat = heat + 50
						end
						if heat > 300 then
							heat = 300
						end
						if heat >= 0 and heat < 100 then
							heatlvl = 1
						elseif heat >= 100 and heat < 200 then
							heatlvl = 2
						elseif heat >= 300 then
							heatlvl = 3
						end
						task.wait(0.45)
						pe0.Enabled = false
						pe1.Enabled = false
						pe.Enabled = false
						debris:AddItem(pe,1.5)
						debris:AddItem(pe0,1.5)
						debris:AddItem(pe1,1.5)
						rt.Anchored = false
						Tool.Grip = cframe(0, -1, 0, -4.37113883e-08, 0, -1, 0, 1, -0, 1, -0, -4.37113883e-08)
					end
				end
				attack = false
				gyro.MaxTorque = vect3(0,math.huge,0)
				hum.WalkSpeed = ogws
				hum.JumpPower = ogjp
				hum.JumpHeight = ogjh
			elseif move == "tyrant" then
				tyrantcooldown = true
				spawn(function()
					task.wait(1.5)
					tyrantcooldown = false
				end)
				attack = true
				rt.CFrame = rt.CFrame * cframe(0,0,-1.5)
				gyro.MaxTorque = vect3(0,0,0)
				hum.WalkSpeed = 0
				hum.JumpPower = 0
				hum.JumpHeight = 0
				anim = "tyrant"
				frame = 1
				chatter(char,"Tyrant Revolver!")
				task.wait(0.175)
				frame = 2
				local bpos = new("BodyPosition")
				bpos.Parent = rt
				bpos.MaxForce = vect3(math.huge,math.huge,math.huge)
				bpos.D = 2500
				bpos.Position = rt.CFrame * cframe(0,30,-75).Position
				sound(7122602098,1,0.85,Handle,0,false)
				magnitudedamage(6.5, "sphere", 0.05, 10, 46153268, 1.25, 0.65, rt,true,"normal","tyrant")
				task.wait(0.2)
				bpos:Destroy()
				task.wait(0.15)
				if heatlvl == 1 or holdinge then
					anim = "aslash"
					frame = 1
					local bpos = new("BodyPosition")
					bpos.Parent = rt
					bpos.MaxForce = vect3(math.huge,math.huge,math.huge)
					bpos.D = 2500
					bpos.Position = rt.CFrame * cframe(0,15,-75).Position
					task.wait(0.045)
					frame = 2
					sound(7122602098,1,0.65,Handle,0,false)
					trail.Enabled = true
					trail2.Enabled = true	
					task.wait(0.045)
					frame = 3
					partdamage(10,"sphere", 0, 10, 107083556408593, 1.2, 1, rt,true,"slash2","tyrant2",0.165,"tyrant")
					task.wait(0.175)
					trail.Enabled = false
					trail2.Enabled = false	
					bpos:Destroy()
					frame = 1
				elseif heatlvl == 2 then
					if heat > 100 then
						heat = heat - 100
					end
					heatlvl = 1
					anim = "aslash"
					frame = 1
					local bpos = new("BodyPosition")
					bpos.Parent = rt
					bpos.MaxForce = vect3(math.huge,math.huge,math.huge)
					bpos.D = 2500
					bpos.Position = rt.CFrame * cframe(0,15,-75).Position
					task.wait(0.045)
					frame = 2
					sound(7122602098,1,0.65,Handle,0,false)
					trail.Enabled = true
					trail2.Enabled = true	
					task.wait(0.045)
					frame = 3
					partdamage(10,"sphere", 0, 5, 107083556408593, 1.2, 1, rt,true,"slash2","tyrant",0.15,"tyrant")
					task.wait(0.1)
					bpos:Destroy()
					trail.Enabled = false
					trail2.Enabled = false	
					anim = "strikerk"
					frame = 1
					local bpos2 = new("BodyPosition")
					bpos2.Parent = rt
					bpos2.MaxForce = vect3(math.huge,math.huge,math.huge)
					bpos2.D = 2000
					bpos2.Position = rt.CFrame * cframe(0,7.5,-30).Position
					local fire = new("Fire")
					fire.Parent = char["Left Leg"]
					fire.Size = 6
					fire.Heat = 10
					fire.Color = color(0.0784314, 0.0784314, 0.0784314)
					fire.SecondaryColor = color(0.384314, 0.145098, 0.819608)
					sound(1273117535,4.5,1,char["Left Leg"],0,false)
					task.wait(0.1)
					frame = 2
					task.wait(0.1)
					frame = 3
					task.wait(0.1)
					sound(7122602098,1,1,char["Left Leg"],0,false)
					magnitudedamage(11.5, "sphere", 0.05, 10, 46153268, 1.5, 0.5, rt,true,"normal","striker2")
					frame = 4
					task.wait(0.15)
					fire.Enabled = false
					debris:AddItem(fire,3)
					bpos2:Destroy()
				elseif heatlvl == 3 then
					if heat > 100 then
						heat = heat - 200
					end
					heatlvl = 1
					anim = "aslash"
					frame = 1
					local bpos = new("BodyPosition")
					bpos.Parent = rt
					bpos.MaxForce = vect3(math.huge,math.huge,math.huge)
					bpos.D = 2500
					bpos.Position = rt.CFrame * cframe(0,15,-75).Position
					task.wait(0.045)
					frame = 2
					sound(7122602098,1,0.65,Handle,0,false)
					trail.Enabled = true
					trail2.Enabled = true	
					task.wait(0.045)
					frame = 3
					partdamage(10,"sphere", 0, 5, 107083556408593, 1.2, 1, rt,true,"slash2","tyrant",0.15,"tyrant")
					task.wait(0.1)
					trail.Enabled = false
					trail2.Enabled = false	
					bpos:Destroy()
					anim = "strikerk"
					frame = 4
					task.wait(0.1)
					local bpos2 = new("BodyPosition")
					bpos2.Parent = rt
					bpos2.MaxForce = vect3(math.huge,math.huge,math.huge)
					bpos2.D = 2000
					bpos2.Position = rt.CFrame * cframe(0,7.5,-35).Position
					anim = "adrive"
					frame = 1
					task.wait(0.15)
					anim = "tyrant"
					sound(7122602098,1,1,Handle,0,false)
					frame = 3
					Tool.Grip = cframe(-0.25, -1.5, 0, -4.37113883e-08, -0.965925872, -0.258818954, 0, 0.258818954, -0.965925872, 1, -4.22219593e-08, -1.1313336e-08)
					magnitudedamage(11.5, "boom", 0.05, 10, 46153268, 1.5, 0.5, rt,true,"burn","tyrant3")
					task.wait(0.15)
					bpos2:Destroy()
					Tool.Grip = cframe(0, -1, 0, -4.37113883e-08, 0, -1, 0, 1, -0, 1, -0, -4.37113883e-08)
					frame = 1
				end
				if holdinge then
					if heat >= 300 then 
						attack = false
						gyro.MaxTorque = vect3(0,math.huge,0)
						hum.WalkSpeed = ogws
						hum.JumpPower = ogjp
						hum.JumpHeight = ogjh 
						return 
					end
					local pe = new("ParticleEmitter")
					local pe0 = new("ParticleEmitter")
					local pe1 = new("ParticleEmitter")
					pe.Parent = char.Torso
					pe.Speed = NumberRange.new(15, 15)
					pe.Orientation = Enum.ParticleOrientation.VelocityParallel
					pe.Color = ColorSequence.new(color(1, 0.917647, 0),color(0.85098, 1, 0.188235),color(0.419608, 0.952941, 1))
					pe.LightEmission = 1
					pe.LightInfluence = 1
					pe.Texture = "http://www.roblox.com/asset/?id=8268283628"
					pe.Transparency = NumberSequence.new(0,0.19374996423721313,0.987500011920929)
					pe.Size = NumberSequence.new(0.4000000059604645,0.4000000059604645)
					pe.Drag = 7
					pe.Lifetime = NumberRange.new(0, 1.5)
					pe.Rate = 500
					pe.SpreadAngle = vect2(360, 360)
					pe.VelocitySpread = 360
					pe0.Parent = char.Torso
					pe0.Speed = NumberRange.new(0, 20)
					pe0.Rotation = NumberRange.new(-360, 360)
					pe0.Color = ColorSequence.new(color(1, 1, 0.498039),color(0.752941, 1, 0.490196),color(0.666667, 1, 1))
					pe0.LightEmission = 1
					pe0.LightInfluence = 1
					pe0.Texture = "http://www.roblox.com/asset/?id=8177564047"
					pe0.Transparency = NumberSequence.new(1,0,1)
					pe0.Size = NumberSequence.new(0.5624997615814209,0)
					pe0.Shape = Enum.ParticleEmitterShape.Sphere
					pe0.Acceleration = vect3(0, -15, 0)
					pe0.Drag = 10
					pe0.Lifetime = NumberRange.new(0, 1.5)
					pe0.Rate = 1000
					pe0.RotSpeed = NumberRange.new(100, 100)
					pe1.Parent = char.Torso
					pe1.Speed = NumberRange.new(15, 15)
					pe1.Rotation = NumberRange.new(0, 360)
					pe1.Color = ColorSequence.new(color(1, 0.917647, 0),color(0.85098, 1, 0.188235),color(0.419608, 0.952941, 1))
					pe1.LightEmission = 1
					pe1.LightInfluence = 1
					pe1.Texture = "http://www.roblox.com/asset/?id=8177565057"
					pe1.Transparency = NumberSequence.new(0,0.19374996423721313,0.987500011920929)
					pe1.Size = NumberSequence.new(0.30000001192092896,0)
					pe1.Drag = 10
					pe1.Lifetime = NumberRange.new(0, 1.5)
					pe1.Rate = 10000
					pe1.RotSpeed = NumberRange.new(50, 50)
					pe1.SpreadAngle = vect2(360, 360)
					pe1.VelocitySpread = 360
					local sphere = new("Part")
					sphere.Parent = char
					sphere.Name = "YuiEffect"
					sphere.Shape = "Ball"
					sphere.Size = vect3(2.5,2.5,2.5)
					sphere.Transparency = 0.5
					sphere.BrickColor = bc("Cool yellow")
					sphere.Material = "Neon"
					sphere.CanCollide = false
					sphere.Anchored = true
					sphere.CFrame = rt.CFrame
					local tween = tweens:Create(sphere, TweenInfo.new(0.25), {Size = vect3(30,30,30), Transparency = 1, Color = color(1,1,1)})
					tween:Play()
					debris:AddItem(sphere,2)
					sound(1613998698,1.5,1,rt,0.3,false)
					if not inair then
						Tool.Grip = cframe(0, -1, 0, -4.37113883e-08, -0.5, -0.866025388, 0, 0.866025388, -0.5, 1, -2.18556941e-08, -3.78551732e-08)
						anim = "yui"
						if heat < 300 then
							heat = heat + 50
						end
						if heat > 300 then
							heat = 300
						end
						if heat >= 0 and heat < 100 then
							heatlvl = 1
						elseif heat >= 100 and heat < 200 then
							heatlvl = 2
						elseif heat >= 300 then
							heatlvl = 3
						end
						task.wait(0.45)
						pe0.Enabled = false
						pe1.Enabled = false
						pe.Enabled = false
						debris:AddItem(pe,1.5)
						debris:AddItem(pe0,1.5)
						debris:AddItem(pe1,1.5)
						Tool.Grip = cframe(0, -1, 0, -4.37113883e-08, 0, -1, 0, 1, -0, 1, -0, -4.37113883e-08)
					else
						rt.Anchored = true
						Tool.Grip = cframe(0, -1, 0, -4.37113883e-08, -0.5, -0.866025388, 0, 0.866025388, -0.5, 1, -2.18556941e-08, -3.78551732e-08)
						anim = "ayui"
						if heat < 300 then
							heat = heat + 50
						end
						if heat > 300 then
							heat = 300
						end
						if heat >= 0 and heat < 100 then
							heatlvl = 1
						elseif heat >= 100 and heat < 200 then
							heatlvl = 2
						elseif heat >= 300 then
							heatlvl = 3
						end
						task.wait(0.45)
						pe0.Enabled = false
						pe1.Enabled = false
						pe.Enabled = false
						debris:AddItem(pe,1.5)
						debris:AddItem(pe0,1.5)
						debris:AddItem(pe1,1.5)
						rt.Anchored = false
						Tool.Grip = cframe(0, -1, 0, -4.37113883e-08, 0, -1, 0, 1, -0, 1, -0, -4.37113883e-08)
					end
				end
				attack = false
				gyro.MaxTorque = vect3(0,math.huge,0)
				hum.WalkSpeed = ogws
				hum.JumpPower = ogjp
				hum.JumpHeight = ogjh
			elseif move == "vortex" then
				--GUN BLADE!! (basically what I hear when Order-Sol performs Gun Blaze)
				vortexcooldown = true
				spawn(function()
					task.wait(2.5)
					vortexcooldown = false
				end)
				attack = true
				rt.CFrame = rt.CFrame * cframe(0,0,-1.5)
				gyro.MaxTorque = vect3(0,0,0)
				hum.WalkSpeed = 0
				hum.JumpPower = 0
				hum.JumpHeight = 0
				anim = "tyrant"
				frame = 1
				local lines = {
					"Vortex Eclipse!",
					"Go!",
					"DASHING VORTEX!!",
				}
				chatter(char,lines[random(1,#lines)])
				task.wait(0.15)
				sound(2697294,1.5,0.4,rt,0,false)
				sound(2693351,1.25,0.4,rt,0,false)
				local dash = new("Part")
				local dashw = new("Weld")
				local dashp = new("ParticleEmitter")
				dash.Name = "Dust Devil"
				dash.Parent = rt
				dash.CanCollide = false
				dash.CanTouch = false
				dash.Transparency = 1
				dash.Size = vect3(0.001,0.001,0.001)
				dashw.Parent = dash
				dashw.C0 = dashw.C0 * cframe(0, 2.5, 2.5)
				dashw.Part0 = dash
				dashw.Part1 = rt
				dashp.Name = "Debris"
				dashp.Parent = dash
				dashp.Speed = NumberRange.new(22, 22)
				dashp.Rotation = NumberRange.new(1, 360)
				dashp.Color = ColorSequence.new(color(0, 0, 0),color(0.447059, 0.231373, 0.705882))
				dashp.LightInfluence = 1
				dashp.Texture = "rbxassetid://12098538418"
				dashp.Transparency = NumberSequence.new(0.800000011920929,1)
				dashp.ZOffset = 3
				dashp.Size = NumberSequence.new(1.5,15)
				dashp.Drag = 0.10000000149011612
				dashp.EmissionDirection = Enum.NormalId.Back
				dashp.Lifetime = NumberRange.new(0.5, 0.5)
				dashp.LockedToPart = false
				dashp.Rate = 200
				dashp.RotSpeed = NumberRange.new(1, 360)
				dashp.SpreadAngle = vect2(-20, -20)
				dashp.VelocitySpread = -20
				anim = "vortex"
				frame = 1
				Tool.Grip = cframe(-0.25, -1, 0, -4.37113883e-08, -0.965925872, -0.258818954, 0, 0.258818954, -0.965925872, 1, -4.22219593e-08, -1.1313336e-08)
				local bpos = new("BodyPosition")
				bpos.Parent = rt
				bpos.MaxForce = vect3(math.huge,math.huge,math.huge)
				bpos.D = 1750
				bpos.Position = rt.CFrame * cframe(0,0,-75).Position
				local attacking = true
				spawn(function()
					while attacking do 
						magnitudedamage(5, "sphere", 0, 11.5, 2691586, 1.25, 1.05, rt,true,"normal","vortex")
						wait(0.1)
					end
				end)
				task.wait(0.5)
				dashp.Enabled = false
				debris:AddItem(dash,2)
				attacking = false
				bpos.D = 2250
				frame = 2
				Tool.Grip = cframe(0, -1, 0, -4.37113883e-08, 0, -1, 0, 1, -0, 1, -0, -4.37113883e-08)
				spawn(function()
					task.wait(0.15)
					if heatlvl == 1 or holdinge then
						local fpw = new("Part")
						local fpwm = new("SpecialMesh")
						local fp = new("Part")
						local fpm = new("SpecialMesh")
						local fp2 = new("Part")
						local fpm2 = new("SpecialMesh")
						local fpw2 = new("Part")
						local fpwm2 = new("SpecialMesh")
						fpw2.Parent = script
						fpw2.Transparency = 0.05
						fpw2.Size = vect3(1, 1, 1)
						fpw2.Anchored = true
						fpw2.BottomSurface = Enum.SurfaceType.Smooth
						fpw2.BrickColor = bc("Dark indigo")
						fpw2.CanCollide = false
						fpw2.TopSurface = Enum.SurfaceType.Smooth
						fpwm2.Parent = fpw2
						fpwm2.MeshId = "rbxassetid://20329976"
						fpwm2.Scale = vect3(3, 3, 3)
						fpwm2.MeshType = Enum.MeshType.FileMesh
						fpw.Name = "FirePillarWave"
						fpw.Parent = fpw2
						fpw.Transparency = 0.25
						fpw.Size = vect3(1, 1, 1)
						fpw.Anchored = true
						fpw.BottomSurface = Enum.SurfaceType.Smooth
						fpw.BrickColor = bc("Really black")
						fpw.CanCollide = false
						fpw.TopSurface = Enum.SurfaceType.Smooth
						fpwm.Parent = fpw
						fpwm.MeshId = "rbxassetid://20329976"
						fpwm.Scale = vect3(3.5, 3.5, 3.5)
						fpwm.MeshType = Enum.MeshType.FileMesh
						fp.Name = "FirePillar"
						fp.Parent = fpw2
						fp.Transparency = 0.25
						fp.Size = vect3(2.5, 5, 2.5)
						fp.Anchored = true
						fp.BottomSurface = Enum.SurfaceType.Smooth
						fp.BrickColor = bc("Really black")
						fp.CanCollide = false
						fp.TopSurface = Enum.SurfaceType.Smooth
						fpm.Parent = fp
						fpm.MeshType = Enum.MeshType.Sphere
						fp2.Name = "GUN BLADE!!"
						fp2.Parent = fpw2
						fp2.Transparency = 0.05
						fp2.Size = vect3(2, 2.5, 2)
						fp2.Anchored = true
						fp2.BottomSurface = Enum.SurfaceType.Smooth
						fp2.BrickColor = bc("Dark indigo")
						fp2.CanCollide = false
						fp2.TopSurface = Enum.SurfaceType.Smooth
						fpm2.Parent = fp2
						fpm2.MeshType = Enum.MeshType.Sphere
						fpw.Material = "Neon"
						fpw2.Material = "Neon"
						fp.Material = "Neon"
						fp2.Material = "Neon"
						fpw2.CFrame = rt.CFrame * cframe(0,-1.5,-5)
						fpw.CFrame = rt.CFrame * cframe(0,-1.5,-5)
						fp.CFrame = rt.CFrame * cframe(0,-1.5,-5)
						fp2.CFrame = rt.CFrame * cframe(0,-1.5,-5)
						magnitudedamage(7.5,"sphere", 0, 10, 2248511, 1.5, 1, fp,true,"burn","vortex2")
						sound(48618802,1.15,1.5,fp,0,false)
						local tween = tweens:Create(fpw2,TweenInfo.new(1,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Transparency = 1})
						tween:Play()
						local tweenM = tweens:Create(fpwm2,TweenInfo.new(1,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Scale = vect3(15,0.05,15),Offset = vect3(0,-1.5,-1)})
						tweenM:Play()
						local tween1 = tweens:Create(fpw,TweenInfo.new(1,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Transparency = 1})
						tween1:Play()
						local tweenM1 = tweens:Create(fpwm,TweenInfo.new(1,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Scale = vect3(17.5,0.025,17.5),Offset = vect3(0,-1.5,-1)})
						tweenM1:Play()
						local tween2 = tweens:Create(fp,TweenInfo.new(1,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{CFrame = fp.CFrame * angles(0,rad(180),0),Size = vect3(3,45,3),Transparency = 1})
						tween2:Play()
						local tween3 = tweens:Create(fp2,TweenInfo.new(1,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{CFrame = fp.CFrame * angles(0,rad(180),0),Size = vect3(2.75,35,2.75),Transparency = 1})
						tween3:Play()
						tween.Completed:Connect(function() fpw2:Destroy()end)
						tween1.Completed:Connect(function() fpw:Destroy() end)
						tween2.Completed:Connect(function() fp:Destroy()end)
						tween3.Completed:Connect(function() fp2:Destroy() end)
					elseif heatlvl == 2 then
						if heat > 100 then
							heat = heat - 100
						end
						heatlvl = 1
						local pos = rt.CFrame
						local direction = pos.lookVector
						for i=1, 2 do
							local posit = pos+(direction*i*8)
							local fpw = new("Part")
							local fpwm = new("SpecialMesh")
							local fp = new("Part")
							local fpm = new("SpecialMesh")
							local fp2 = new("Part")
							local fpm2 = new("SpecialMesh")
							local fpw2 = new("Part")
							local fpwm2 = new("SpecialMesh")
							fpw2.Parent = script
							fpw2.Transparency = 0.05
							fpw2.Size = vect3(1, 1, 1)
							fpw2.Anchored = true
							fpw2.BottomSurface = Enum.SurfaceType.Smooth
							fpw2.BrickColor = bc("Dark indigo")
							fpw2.CanCollide = false
							fpw2.TopSurface = Enum.SurfaceType.Smooth
							fpwm2.Parent = fpw2
							fpwm2.MeshId = "rbxassetid://20329976"
							fpwm2.Scale = vect3(3, 3, 3)
							fpwm2.MeshType = Enum.MeshType.FileMesh
							fpw.Name = "FirePillarWave"
							fpw.Parent = fpw2
							fpw.Transparency = 0.25
							fpw.Size = vect3(1, 1, 1)
							fpw.Anchored = true
							fpw.BottomSurface = Enum.SurfaceType.Smooth
							fpw.BrickColor = bc("Really black")
							fpw.CanCollide = false
							fpw.TopSurface = Enum.SurfaceType.Smooth
							fpwm.Parent = fpw
							fpwm.MeshId = "rbxassetid://20329976"
							fpwm.Scale = vect3(3.5, 3.5, 3.5)
							fpwm.MeshType = Enum.MeshType.FileMesh
							fp.Name = "FirePillar"
							fp.Parent = fpw2
							fp.Transparency = 0.25
							fp.Size = vect3(2.5, 5, 2.5)
							fp.Anchored = true
							fp.BottomSurface = Enum.SurfaceType.Smooth
							fp.BrickColor = bc("Really black")
							fp.CanCollide = false
							fp.TopSurface = Enum.SurfaceType.Smooth
							fpm.Parent = fp
							fpm.MeshType = Enum.MeshType.Sphere
							fp2.Name = "GUN BLADE!!"
							fp2.Parent = fpw2
							fp2.Transparency = 0.05
							fp2.Size = vect3(2, 2.5, 2)
							fp2.Anchored = true
							fp2.BottomSurface = Enum.SurfaceType.Smooth
							fp2.BrickColor = bc("Dark indigo")
							fp2.CanCollide = false
							fp2.TopSurface = Enum.SurfaceType.Smooth
							fpm2.Parent = fp2
							fpm2.MeshType = Enum.MeshType.Sphere
							fpw.Material = "Neon"
							fpw2.Material = "Neon"
							fp.Material = "Neon"
							fp2.Material = "Neon"
							fpw2.CFrame = cframe(posit.x,posit.y-1.5,posit.z-1.5)
							fpw.CFrame = cframe(posit.x,posit.y-1.5,posit.z-1.5)
							fp.CFrame = cframe(posit.x,posit.y-1.5,posit.z-1.5)
							fp2.CFrame = cframe(posit.x,posit.y-1.5,posit.z-1.5)
							if i == 2 then
								magnitudedamage(7.5,"sphere", 0, 10, 2248511, 1.5, 1, fp,true,"burn","vortex2")
							else
								magnitudedamage(7.5,"sphere", 0, 10, 2248511, 1.5, 1, fp,true,"normal","vortex3")
							end
							sound(48618802,1.15,1.5,fp,0,false)
							local tween = tweens:Create(fpw2,TweenInfo.new(1,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Transparency = 1})
							tween:Play()
							local tweenM = tweens:Create(fpwm2,TweenInfo.new(1,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Scale = vect3(15,0.05,15),Offset = vect3(0,-1.5,-1)})
							tweenM:Play()
							local tween1 = tweens:Create(fpw,TweenInfo.new(1,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Transparency = 1})
							tween1:Play()
							local tweenM1 = tweens:Create(fpwm,TweenInfo.new(1,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Scale = vect3(17.5,0.025,17.5),Offset = vect3(0,-1.5,-1)})
							tweenM1:Play()
							local tween2 = tweens:Create(fp,TweenInfo.new(1,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{CFrame = fp.CFrame * angles(0,rad(180),0),Size = vect3(3,45,3),Transparency = 1})
							tween2:Play()
							local tween3 = tweens:Create(fp2,TweenInfo.new(1,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{CFrame = fp.CFrame * angles(0,rad(180),0),Size = vect3(2.75,35,2.75),Transparency = 1})
							tween3:Play()
							tween.Completed:Connect(function() fpw2:Destroy()end)
							tween1.Completed:Connect(function() fpw:Destroy() end)
							tween2.Completed:Connect(function() fp:Destroy()end)
							tween3.Completed:Connect(function() fp2:Destroy() end)
							wait(.225)
						end
					elseif heatlvl == 3 then
						if heat > 100 then
							heat = heat - 200
						end
						heatlvl = 1
						local pos = rt.CFrame
						local direction = pos.lookVector
						for i=1, 3 do
							local posit = pos+(direction*i*8)
							local fpw = new("Part")
							local fpwm = new("SpecialMesh")
							local fp = new("Part")
							local fpm = new("SpecialMesh")
							local fp2 = new("Part")
							local fpm2 = new("SpecialMesh")
							local fpw2 = new("Part")
							local fpwm2 = new("SpecialMesh")
							fpw2.Parent = script
							fpw2.Transparency = 0.05
							fpw2.Size = vect3(1, 1, 1)
							fpw2.Anchored = true
							fpw2.BottomSurface = Enum.SurfaceType.Smooth
							fpw2.BrickColor = bc("Dark indigo")
							fpw2.CanCollide = false
							fpw2.TopSurface = Enum.SurfaceType.Smooth
							fpwm2.Parent = fpw2
							fpwm2.MeshId = "rbxassetid://20329976"
							fpwm2.Scale = vect3(3, 3, 3)
							fpwm2.MeshType = Enum.MeshType.FileMesh
							fpw.Name = "FirePillarWave"
							fpw.Parent = fpw2
							fpw.Transparency = 0.25
							fpw.Size = vect3(1, 1, 1)
							fpw.Anchored = true
							fpw.BottomSurface = Enum.SurfaceType.Smooth
							fpw.BrickColor = bc("Really black")
							fpw.CanCollide = false
							fpw.TopSurface = Enum.SurfaceType.Smooth
							fpwm.Parent = fpw
							fpwm.MeshId = "rbxassetid://20329976"
							fpwm.Scale = vect3(3.5, 3.5, 3.5)
							fpwm.MeshType = Enum.MeshType.FileMesh
							fp.Name = "FirePillar"
							fp.Parent = fpw2
							fp.Transparency = 0.25
							fp.Size = vect3(2.5, 5, 2.5)
							fp.Anchored = true
							fp.BottomSurface = Enum.SurfaceType.Smooth
							fp.BrickColor = bc("Really black")
							fp.CanCollide = false
							fp.TopSurface = Enum.SurfaceType.Smooth
							fpm.Parent = fp
							fpm.MeshType = Enum.MeshType.Sphere
							fp2.Name = "GUN BLADE!!"
							fp2.Parent = fpw2
							fp2.Transparency = 0.05
							fp2.Size = vect3(2, 2.5, 2)
							fp2.Anchored = true
							fp2.BottomSurface = Enum.SurfaceType.Smooth
							fp2.BrickColor = bc("Dark indigo")
							fp2.CanCollide = false
							fp2.TopSurface = Enum.SurfaceType.Smooth
							fpm2.Parent = fp2
							fpm2.MeshType = Enum.MeshType.Sphere
							fpw.Material = "Neon"
							fpw2.Material = "Neon"
							fp.Material = "Neon"
							fp2.Material = "Neon"
							fpw2.CFrame = cframe(posit.x,posit.y-1.5,posit.z-1.5)
							fpw.CFrame = cframe(posit.x,posit.y-1.5,posit.z-1.5)
							fp.CFrame = cframe(posit.x,posit.y-1.5,posit.z-1.5)
							fp2.CFrame = cframe(posit.x,posit.y-1.5,posit.z-1.5)
							if i == 3 then
								magnitudedamage(7.5,"sphere", 0, 10, 2248511, 1.5, 1, fp,true,"burn","vortex2")
							else
								magnitudedamage(7.5,"sphere", 0, 10, 2248511, 1.5, 1, fp,true,"normal","vortex3")
							end
							sound(48618802,1.15,1.5,fp,0,false)
							local tween = tweens:Create(fpw2,TweenInfo.new(1,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Transparency = 1})
							tween:Play()
							local tweenM = tweens:Create(fpwm2,TweenInfo.new(1,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Scale = vect3(15,0.05,15),Offset = vect3(0,-1.5,-1)})
							tweenM:Play()
							local tween1 = tweens:Create(fpw,TweenInfo.new(1,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Transparency = 1})
							tween1:Play()
							local tweenM1 = tweens:Create(fpwm,TweenInfo.new(1,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Scale = vect3(17.5,0.025,17.5),Offset = vect3(0,-1.5,-1)})
							tweenM1:Play()
							local tween2 = tweens:Create(fp,TweenInfo.new(1,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{CFrame = fp.CFrame * angles(0,rad(180),0),Size = vect3(3,45,3),Transparency = 1})
							tween2:Play()
							local tween3 = tweens:Create(fp2,TweenInfo.new(1,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{CFrame = fp.CFrame * angles(0,rad(180),0),Size = vect3(2.75,35,2.75),Transparency = 1})
							tween3:Play()
							tween.Completed:Connect(function() fpw2:Destroy()end)
							tween1.Completed:Connect(function() fpw:Destroy() end)
							tween2.Completed:Connect(function() fp:Destroy()end)
							tween3.Completed:Connect(function() fp2:Destroy() end)
							wait(.175)
						end
					end
				end)
				task.wait(0.15)
				rt.CFrame = rt.CFrame * cframe(0,0,-1.5) * angles(0,rad(180),0)
				frame = 3
				task.wait(0.325)
				bpos:Destroy()
				if holdinge then
					if heat >= 300 then 
						attack = false
						gyro.MaxTorque = vect3(0,math.huge,0)
						hum.WalkSpeed = ogws
						hum.JumpPower = ogjp
						hum.JumpHeight = ogjh 
						return 
					end
					local pe = new("ParticleEmitter")
					local pe0 = new("ParticleEmitter")
					local pe1 = new("ParticleEmitter")
					pe.Parent = char.Torso
					pe.Speed = NumberRange.new(15, 15)
					pe.Orientation = Enum.ParticleOrientation.VelocityParallel
					pe.Color = ColorSequence.new(color(1, 0.917647, 0),color(0.85098, 1, 0.188235),color(0.419608, 0.952941, 1))
					pe.LightEmission = 1
					pe.LightInfluence = 1
					pe.Texture = "http://www.roblox.com/asset/?id=8268283628"
					pe.Transparency = NumberSequence.new(0,0.19374996423721313,0.987500011920929)
					pe.Size = NumberSequence.new(0.4000000059604645,0.4000000059604645)
					pe.Drag = 7
					pe.Lifetime = NumberRange.new(0, 1.5)
					pe.Rate = 500
					pe.SpreadAngle = vect2(360, 360)
					pe.VelocitySpread = 360
					pe0.Parent = char.Torso
					pe0.Speed = NumberRange.new(0, 20)
					pe0.Rotation = NumberRange.new(-360, 360)
					pe0.Color = ColorSequence.new(color(1, 1, 0.498039),color(0.752941, 1, 0.490196),color(0.666667, 1, 1))
					pe0.LightEmission = 1
					pe0.LightInfluence = 1
					pe0.Texture = "http://www.roblox.com/asset/?id=8177564047"
					pe0.Transparency = NumberSequence.new(1,0,1)
					pe0.Size = NumberSequence.new(0.5624997615814209,0)
					pe0.Shape = Enum.ParticleEmitterShape.Sphere
					pe0.Acceleration = vect3(0, -15, 0)
					pe0.Drag = 10
					pe0.Lifetime = NumberRange.new(0, 1.5)
					pe0.Rate = 1000
					pe0.RotSpeed = NumberRange.new(100, 100)
					pe1.Parent = char.Torso
					pe1.Speed = NumberRange.new(15, 15)
					pe1.Rotation = NumberRange.new(0, 360)
					pe1.Color = ColorSequence.new(color(1, 0.917647, 0),color(0.85098, 1, 0.188235),color(0.419608, 0.952941, 1))
					pe1.LightEmission = 1
					pe1.LightInfluence = 1
					pe1.Texture = "http://www.roblox.com/asset/?id=8177565057"
					pe1.Transparency = NumberSequence.new(0,0.19374996423721313,0.987500011920929)
					pe1.Size = NumberSequence.new(0.30000001192092896,0)
					pe1.Drag = 10
					pe1.Lifetime = NumberRange.new(0, 1.5)
					pe1.Rate = 10000
					pe1.RotSpeed = NumberRange.new(50, 50)
					pe1.SpreadAngle = vect2(360, 360)
					pe1.VelocitySpread = 360
					local sphere = new("Part")
					sphere.Parent = char
					sphere.Name = "YuiEffect"
					sphere.Shape = "Ball"
					sphere.Size = vect3(2.5,2.5,2.5)
					sphere.Transparency = 0.5
					sphere.BrickColor = bc("Cool yellow")
					sphere.Material = "Neon"
					sphere.CanCollide = false
					sphere.Anchored = true
					sphere.CFrame = rt.CFrame
					local tween = tweens:Create(sphere, TweenInfo.new(0.25), {Size = vect3(30,30,30), Transparency = 1, Color = color(1,1,1)})
					tween:Play()
					debris:AddItem(sphere,2)
					sound(1613998698,1.5,1,rt,0.3,false)
					if not inair then
						Tool.Grip = cframe(0, -1, 0, -4.37113883e-08, -0.5, -0.866025388, 0, 0.866025388, -0.5, 1, -2.18556941e-08, -3.78551732e-08)
						anim = "yui"
						if heat < 300 then
							heat = heat + 50
						end
						if heat > 300 then
							heat = 300
						end
						if heat >= 0 and heat < 100 then
							heatlvl = 1
						elseif heat >= 100 and heat < 200 then
							heatlvl = 2
						elseif heat >= 300 then
							heatlvl = 3
						end
						task.wait(0.45)
						pe0.Enabled = false
						pe1.Enabled = false
						pe.Enabled = false
						debris:AddItem(pe,1.5)
						debris:AddItem(pe0,1.5)
						debris:AddItem(pe1,1.5)
						Tool.Grip = cframe(0, -1, 0, -4.37113883e-08, 0, -1, 0, 1, -0, 1, -0, -4.37113883e-08)
					else
						rt.Anchored = true
						Tool.Grip = cframe(0, -1, 0, -4.37113883e-08, -0.5, -0.866025388, 0, 0.866025388, -0.5, 1, -2.18556941e-08, -3.78551732e-08)
						anim = "ayui"
						if heat < 300 then
							heat = heat + 50
						end
						if heat > 300 then
							heat = 300
						end
						if heat >= 0 and heat < 100 then
							heatlvl = 1
						elseif heat >= 100 and heat < 200 then
							heatlvl = 2
						elseif heat >= 300 then
							heatlvl = 3
						end
						task.wait(0.45)
						pe0.Enabled = false
						pe1.Enabled = false
						pe.Enabled = false
						debris:AddItem(pe,1.5)
						debris:AddItem(pe0,1.5)
						debris:AddItem(pe1,1.5)
						rt.Anchored = false
						Tool.Grip = cframe(0, -1, 0, -4.37113883e-08, 0, -1, 0, 1, -0, 1, -0, -4.37113883e-08)
					end
				end
				attack = false
				gyro.MaxTorque = vect3(0,math.huge,0)
				hum.WalkSpeed = ogws
				hum.JumpPower = ogjp
				hum.JumpHeight = ogjh
			elseif move == "redstar" then
				attack = true
				starcooldown = true
				spawn(function()
					task.wait(2.5)
					starcooldown = false
				end)
				rt.CFrame = rt.CFrame * cframe(0,0,-1.5)
				gyro.MaxTorque = vect3(0,0,0)
				hum.WalkSpeed = 0
				hum.JumpPower = 0
				hum.JumpHeight = 0
				anim = "redstar"
				frame = 1
				local lines = {
					"Star Spike!",
					"Crush!",
					--*insert funny Star Glitcher joke*
					"Shatter!"
				}
				chatter(char,lines[random(1,#lines)])
				sound(10209908,1,1,Handle,0,false)
				if heatlvl == 1 or holdinge then
					local spikec = new("Part")
					local spikecm = new("SpecialMesh")
					spikec.Name = "SpikeCircle"
					spikec.Parent = char
					spikec.Size = vect3(0.001,0.001,0.001)
					spikec.BrickColor = bc("Really black")
					spikec.BottomSurface = Enum.SurfaceType.Smooth
					spikec.Locked = true
					spikec.TopSurface = Enum.SurfaceType.Smooth
					spikecm.Name = "Spell"
					spikecm.Parent = spikec
					spikecm.MeshId = "rbxassetid://4876346853"
					spikecm.MeshType = Enum.MeshType.FileMesh
					spikec.Anchored = true
					spikec.CanCollide = false
					spikec.CFrame = rt.CFrame * angles(0,rad(-90),0) * cframe(-5,-1.5,-0)
					local tweenM = tweens:Create(spikecm,TweenInfo.new(1,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Scale = vect3(7.5,5,7.5), Offset = vect3(-2.5,5.15,0)})
					tweenM:Play()
					local doingspike = true
					local doingring = true
					spawn(function()
						wait(2.5)
						local tween = tweens:Create(spikecm,TweenInfo.new(1,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Scale = vect3(0,0,0), Offset = vect3(-2.5,-1.5,0)})
						tween:Play()
						tween.Completed:Connect(function() doingring = false end)
					end)
					spawn(function()
						while doingspike do
							wait()
							if doingring then
								spikec.CFrame = spikec.CFrame * angles(0, rad(15), 0)
							else
								if spikec.Transparency < 1 then
									if spikec ~= nil then
										spikec.Transparency = spikec.Transparency + 0.05
									end
								else
									spikec:Destroy()
									doingspike = false
									break							
								end
							end
						end
					end)
					spawn(function()
						for i = 1, 9 do
							wait(0.01)
							spawn(function()
								local spike = new("Part")
								local spikem = new("SpecialMesh")
								spike.Name = "Spike"
								spike.Parent = script
								spike.BottomSurface = Enum.SurfaceType.Weld
								spike.TopSurface = Enum.SurfaceType.Smooth
								spike.Locked = true
								spike.CanCollide = false
								spike.Anchored = true
								spike.BrickColor = bc("Black")
								spikem.Parent = spike
								spikem.MeshId = "http://www.roblox.com/asset/?id=1033714"
								spikem.Scale = vect3(0.9, 4.8, 0.9)
								spikem.MeshType = Enum.MeshType.FileMesh
								spike.CFrame = rt.CFrame * cframe(0,-5,-5)
								spike.CFrame = spike.CFrame  * angles(rad(random(-8,8)),rad(random(-8,8)),rad(random(-8,8)))
								local tween = tweens:Create(spike,TweenInfo.new(0.25,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{CFrame = spike.CFrame * cframe(0,7.5,0),Transparency = 0})
								local d = tweens:Create(spike,TweenInfo.new(1,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{CFrame = spike.CFrame * cframe(0,-15,-0),Transparency = 1})
								local meshtween = tweens:Create(spikem,TweenInfo.new(0.5,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Scale = vect3(0.5, 25, 0.5),Offset = vect3(0, 0, 0)})
								local transparency = tweens:Create(spike,TweenInfo.new(0.5,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Transparency = 1})
								meshtween:Play()
								tween:Play()
								sound(8389443538,1.5,1,spike,0,false)
								local hitbox = new("Part")
								hitbox.Parent = script
								hitbox.Anchored = true
								hitbox.CanCollide = false
								hitbox.Size = vect3(5, 11, 5)
								hitbox.BottomSurface = Enum.SurfaceType.Smooth
								hitbox.TopSurface = Enum.SurfaceType.Smooth
								hitbox.CFrame = rt.CFrame * cframe(0,0,-3)
								hitbox.Transparency = 1
								magnitudedamage(1.15, "sphere", 0, 7.5, 96667969, 1.15, 1, hitbox,true,"slash2","redstar")
								debris:AddItem(hitbox,0.15)
								wait(2.5)
								transparency:Play()
								d:Play()
								transparency.Completed:Connect(function() wait(0.75) spike.Transparency=1 spikem:Destroy() spike:Destroy()end)
							end)
						end
					end)	
				elseif heatlvl == 2 then
					if heat > 100 then
						heat = heat - 100
					end
					heatlvl = 1
					local spellc = new("Part")
					local spellcm = new("BlockMesh")
					local spellcd = new("Decal")
					local spellcl = new("PointLight")
					spellc.Name = "Spike"
					spellc.Parent = char
					spellc.Transparency = 1
					spellc.Size = vect3(11.5, 0.15, 11.5)
					spellc.BottomSurface = Enum.SurfaceType.Smooth
					spellc.TopSurface = Enum.SurfaceType.Smooth
					spellc.Anchored = true
					spellc.CanCollide = false
					spellc.Locked = true
					spellc.CanTouch = false
					spellcm.Parent = spellc
					spellcm.Scale = vect3(1.5, 1.5, 1.5)
					spellcd.Parent = spellc
					spellcd.Texture = "http://www.roblox.com/asset/?id=11227764875"
					spellcd.Face = Enum.NormalId.Top
					spellcd.Transparency = 1
					spellcl.Parent = spellc
					spellcl.Brightness = 1.75
					spellcl.Range = 15
					spellcl.Color = color(0.478431, 0.133333, 1)
					spellc.CFrame = rt.CFrame * cframe(0, -3, -7.5)
					local tween = tweens:Create(spellcd, TweenInfo.new(1), {Transparency = 0})
					tween:Play()
					local doingspike = true
					local doingring = true
					spawn(function()
						while doingspike do
							wait()
							if doingring then
								spellc.CFrame = spellc.CFrame * angles(0, rad(15), 0)
							else
								if spellcd.Transparency < 1 then
									if spellc ~= nil then
										spellcd.Transparency = spellcd.Transparency + 0.05
									end
								else
									spellc:Destroy()
									doingspike = false
									break							
								end
							end
						end
					end)
					task.wait(0.45)
					local bspike = new("Part")
					local bspikem = new("SpecialMesh")
					bspike.Name = "explosion"
					bspike.Parent = char
					bspike.Size = vect3(0.001,0.001,0.001)
					bspike.Anchored = true
					bspike.BrickColor = bc("Black")
					bspike.CanCollide = false
					bspikem.Parent = bspike
					bspikem.MeshId = "http://www.roblox.com/asset/?id=1323306"
					bspike.CFrame = rt.CFrame * cframe(0,-2.5,-7.5)
					local tweenM = tweens:Create(bspikem,TweenInfo.new(0.5,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Scale = vect3(10,20,10)})
					tweenM:Play()
					sound(632831227,1.5,0.75,bspike,0.15,false)
					spawn(function()
						task.wait(0.15)
						magnitudedamage(11.5, "sphere", 0, 7.5, 89343281, 3, 0.25, bspike,true,"slash","redstar")
						task.wait(2)
						doingring = false
						local tweenM = tweens:Create(bspikem,TweenInfo.new(0.5,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Scale = vect3(0,0,0)})
						tweenM:Play()
						tweenM.Completed:Connect(function() bspike:Destroy()end)
					end)
				elseif heatlvl == 3 then
					if heat > 100 then
						heat = heat - 200
					end
					heatlvl = 1
					local spellc = new("Part")
					local spellcm = new("BlockMesh")
					local spellcd = new("Decal")
					local spellcl = new("PointLight")
					spellc.Name = "Spike"
					spellc.Parent = char
					spellc.Transparency = 1
					spellc.Size = vect3(11.5, 0.15, 11.5)
					spellc.BottomSurface = Enum.SurfaceType.Smooth
					spellc.TopSurface = Enum.SurfaceType.Smooth
					spellc.Anchored = true
					spellc.CanCollide = false
					spellc.Locked = true
					spellc.CanTouch = false
					spellcm.Parent = spellc
					spellcm.Scale = vect3(1.5, 1.5, 1.5)
					spellcd.Parent = spellc
					spellcd.Texture = "http://www.roblox.com/asset/?id=11227764875"
					spellcd.Face = Enum.NormalId.Top
					spellcd.Transparency = 1
					spellcl.Parent = spellc
					spellcl.Brightness = 1.75
					spellcl.Range = 15
					spellcl.Color = color(0.478431, 0.133333, 1)
					spellc.CFrame = rt.CFrame * cframe(0, -3, -12.5)
					local tween = tweens:Create(spellcd, TweenInfo.new(1), {Transparency = 0})
					tween:Play()
					local doingspike = true
					local doingring = true
					spawn(function()
						while doingspike do
							wait()
							if doingring then
								spellc.CFrame = spellc.CFrame * angles(0, rad(15), 0)
							else
								if spellcd.Transparency < 1 then
									if spellc ~= nil then
										spellcd.Transparency = spellcd.Transparency + 0.05
									end
								else
									spellc:Destroy()
									doingspike = false
									break							
								end
							end
						end
					end)
					task.wait(0.45)
					local bspike = new("Part")
					local bspikem = new("SpecialMesh")
					bspike.Name = "explosion"
					bspike.Parent = char
					bspike.Size = vect3(0.001,0.001,0.001)
					bspike.Anchored = true
					bspike.BrickColor = bc("Black")
					bspike.CanCollide = false
					bspikem.Parent = bspike
					bspikem.MeshId = "http://www.roblox.com/asset/?id=1323306"
					bspike.CFrame = rt.CFrame * cframe(0,-2.5,-12.5)
					local tweenM = tweens:Create(bspikem,TweenInfo.new(1.5,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Scale = vect3(30,50,30)})
					tweenM:Play()
					sound(632831227,1.5,0.45,bspike,0.15,false)
					spawn(function()
						task.wait(0.25)
						magnitudedamage(19, "sphere", 0, 7.5, 89343281, 3, 0.25, bspike,true,"slash","redstar")
						task.wait(3.5)
						doingring = false
						local tweenM = tweens:Create(bspikem,TweenInfo.new(0.5,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Scale = vect3(0,0,0)})
						tweenM:Play()
						tweenM.Completed:Connect(function() bspike:Destroy()end)
					end)
					task.wait(1)
				end
				task.wait(0.5)
				if holdinge then
					if heat >= 300 then 
						attack = false
						gyro.MaxTorque = vect3(0,math.huge,0)
						hum.WalkSpeed = ogws
						hum.JumpPower = ogjp
						hum.JumpHeight = ogjh 
						return 
					end
					local pe = new("ParticleEmitter")
					local pe0 = new("ParticleEmitter")
					local pe1 = new("ParticleEmitter")
					pe.Parent = char.Torso
					pe.Speed = NumberRange.new(15, 15)
					pe.Orientation = Enum.ParticleOrientation.VelocityParallel
					pe.Color = ColorSequence.new(color(1, 0.917647, 0),color(0.85098, 1, 0.188235),color(0.419608, 0.952941, 1))
					pe.LightEmission = 1
					pe.LightInfluence = 1
					pe.Texture = "http://www.roblox.com/asset/?id=8268283628"
					pe.Transparency = NumberSequence.new(0,0.19374996423721313,0.987500011920929)
					pe.Size = NumberSequence.new(0.4000000059604645,0.4000000059604645)
					pe.Drag = 7
					pe.Lifetime = NumberRange.new(0, 1.5)
					pe.Rate = 500
					pe.SpreadAngle = vect2(360, 360)
					pe.VelocitySpread = 360
					pe0.Parent = char.Torso
					pe0.Speed = NumberRange.new(0, 20)
					pe0.Rotation = NumberRange.new(-360, 360)
					pe0.Color = ColorSequence.new(color(1, 1, 0.498039),color(0.752941, 1, 0.490196),color(0.666667, 1, 1))
					pe0.LightEmission = 1
					pe0.LightInfluence = 1
					pe0.Texture = "http://www.roblox.com/asset/?id=8177564047"
					pe0.Transparency = NumberSequence.new(1,0,1)
					pe0.Size = NumberSequence.new(0.5624997615814209,0)
					pe0.Shape = Enum.ParticleEmitterShape.Sphere
					pe0.Acceleration = vect3(0, -15, 0)
					pe0.Drag = 10
					pe0.Lifetime = NumberRange.new(0, 1.5)
					pe0.Rate = 1000
					pe0.RotSpeed = NumberRange.new(100, 100)
					pe1.Parent = char.Torso
					pe1.Speed = NumberRange.new(15, 15)
					pe1.Rotation = NumberRange.new(0, 360)
					pe1.Color = ColorSequence.new(color(1, 0.917647, 0),color(0.85098, 1, 0.188235),color(0.419608, 0.952941, 1))
					pe1.LightEmission = 1
					pe1.LightInfluence = 1
					pe1.Texture = "http://www.roblox.com/asset/?id=8177565057"
					pe1.Transparency = NumberSequence.new(0,0.19374996423721313,0.987500011920929)
					pe1.Size = NumberSequence.new(0.30000001192092896,0)
					pe1.Drag = 10
					pe1.Lifetime = NumberRange.new(0, 1.5)
					pe1.Rate = 10000
					pe1.RotSpeed = NumberRange.new(50, 50)
					pe1.SpreadAngle = vect2(360, 360)
					pe1.VelocitySpread = 360
					local sphere = new("Part")
					sphere.Parent = char
					sphere.Name = "YuiEffect"
					sphere.Shape = "Ball"
					sphere.Size = vect3(2.5,2.5,2.5)
					sphere.Transparency = 0.5
					sphere.BrickColor = bc("Cool yellow")
					sphere.Material = "Neon"
					sphere.CanCollide = false
					sphere.Anchored = true
					sphere.CFrame = rt.CFrame
					local tween = tweens:Create(sphere, TweenInfo.new(0.25), {Size = vect3(30,30,30), Transparency = 1, Color = color(1,1,1)})
					tween:Play()
					debris:AddItem(sphere,2)
					sound(1613998698,1.5,1,rt,0.3,false)
					if not inair then
						Tool.Grip = cframe(0, -1, 0, -4.37113883e-08, -0.5, -0.866025388, 0, 0.866025388, -0.5, 1, -2.18556941e-08, -3.78551732e-08)
						anim = "yui"
						if heat < 300 then
							heat = heat + 50
						end
						if heat > 300 then
							heat = 300
						end
						if heat >= 0 and heat < 100 then
							heatlvl = 1
						elseif heat >= 100 and heat < 200 then
							heatlvl = 2
						elseif heat >= 300 then
							heatlvl = 3
						end
						task.wait(0.45)
						pe0.Enabled = false
						pe1.Enabled = false
						pe.Enabled = false
						debris:AddItem(pe,1.5)
						debris:AddItem(pe0,1.5)
						debris:AddItem(pe1,1.5)
						Tool.Grip = cframe(0, -1, 0, -4.37113883e-08, 0, -1, 0, 1, -0, 1, -0, -4.37113883e-08)
					else
						rt.Anchored = true
						Tool.Grip = cframe(0, -1, 0, -4.37113883e-08, -0.5, -0.866025388, 0, 0.866025388, -0.5, 1, -2.18556941e-08, -3.78551732e-08)
						anim = "ayui"
						if heat < 300 then
							heat = heat + 50
						end
						if heat > 300 then
							heat = 300
						end
						if heat >= 0 and heat < 100 then
							heatlvl = 1
						elseif heat >= 100 and heat < 200 then
							heatlvl = 2
						elseif heat >= 300 then
							heatlvl = 3
						end
						task.wait(0.45)
						pe0.Enabled = false
						pe1.Enabled = false
						pe.Enabled = false
						debris:AddItem(pe,1.5)
						debris:AddItem(pe0,1.5)
						debris:AddItem(pe1,1.5)
						rt.Anchored = false
						Tool.Grip = cframe(0, -1, 0, -4.37113883e-08, 0, -1, 0, 1, -0, 1, -0, -4.37113883e-08)
					end
				end
				attack = false
				gyro.MaxTorque = vect3(0,math.huge,0)
				hum.WalkSpeed = ogws
				hum.JumpPower = ogjp
				hum.JumpHeight = ogjh
			elseif move == "shade" then
				attack = true
				rt.CFrame = rt.CFrame * cframe(0,0,-1.5)
				gyro.MaxTorque = vect3(0,0,0)
				hum.WalkSpeed = 0
				hum.JumpPower = 0
				hum.JumpHeight = 0
				local doingshade = true
				local shadecounter = false
				spawn(function()
					wait(1.5)
					doingshade = false
				end)
				anim = "shade"
				frame = 1
				chatter(char,"Without a trace...")
				local baka = true
				spawn(function()
					local spellc = new("Part")
					local spellcm = new("BlockMesh")
					local spellcd = new("Decal")
					local spellcl = new("PointLight")
					spellc.Name = "ShadeCircle"
					spellc.Parent = char
					spellc.Transparency = 1
					spellc.Size = vect3(11.5, 0.15, 11.5)
					spellc.BottomSurface = Enum.SurfaceType.Smooth
					spellc.TopSurface = Enum.SurfaceType.Smooth
					spellc.Anchored = true
					spellc.CanCollide = false
					spellc.Locked = true
					spellc.CanTouch = false
					spellcm.Parent = spellc
					spellcd.Parent = spellc
					spellcd.Texture = "http://www.roblox.com/asset/?id=72005006"
					spellcd.Face = Enum.NormalId.Top
					spellcd.Transparency = 1
					local spellcd2 = spellcd:Clone()
					spellcd2.Face = Enum.NormalId.Bottom
					spellcd2.Parent = spellc
					spellcl.Parent = spellc
					spellcl.Brightness = 1.75
					spellcl.Range = 15
					spellcl.Color = color(0.478431, 0.133333, 1)
					local tween = tweens:Create(spellcd, TweenInfo.new(1), {Transparency = 0})
					tween:Play()
					local tween = tweens:Create(spellcd2, TweenInfo.new(1), {Transparency = 0})
					tween:Play()
					local ring = new("Part")
					local ringm = new("SpecialMesh")
					ring.Name = "Handle"
					ring.Parent = spellc
					ring.Size = vect3(0.001, 0.001, 0.001)
					ring.Transparency = 1
					ring.Anchored = true
					ring.CanCollide = false
					ring.CanTouch = false
					ring.Locked = true
					ring.BrickColor = bc("Really black")
					ringm.Parent = ring
					ringm.MeshId = "http://www.roblox.com/asset/?id=3270017"
					local tween = tweens:Create(ring, TweenInfo.new(1), {Transparency = 0})
					tween:Play()
					local tween = tweens:Create(ringm, TweenInfo.new(1), {Scale=vect3(12.5,12.5,12.5)})
					tween:Play()
					local angle = 0
					while baka do
						wait()
						angle = angle + 15
						if doingshade then
							spellc.CFrame = rt.CFrame * cframe(0, 0, -1.5) * angles(rad(90), rad(angle), 0)
							ring.CFrame = rt.CFrame * cframe(0, 0, -1.5) * angles(0, 0, rad(90))
						else
							if spellcd.Transparency < 1 then
								if ring ~= nil then
									ring.Transparency = ring.Transparency + 0.15
								end
								if spellc ~= nil then
									spellcd.Transparency = spellcd.Transparency + 0.15
									spellcd2.Transparency = spellcd2.Transparency + 0.15
								end
							else
								spellc:Destroy()
								baka = false
								break							
							end
						end
					end
				end)
				local currenthp = hum.Health
				repeat
					task.wait()
					if hum.Health < currenthp then 
						if not shadecounter then 
							shadecounter = true 
							doingshade = false 
						end 
						hum.Health = currenthp
					end
					if blazblue then
						task.wait(0.1)
						if not shadecounter then 
							shadecounter = true 
							doingshade = false 
						end 
					end
				until not doingshade or shadecounter
				if shadecounter then
					trail.Enabled = true
					trail2.Enabled = true
					shadecooldown = true
					spawn(function()
						task.wait(15)
						shadecooldown = false
					end)
					sound(62339698,1.15,1,rt,0.05,false)
					if heatlvl == 1 or holdinge then
						magnitudedamage(25,"sphere", 0, 15, 62339698, 1.5, 0.75, rt,true,"normal","shade")
						chatter(char,"HA!")
						anim = "slash"
						frame = 2
						rt.CFrame = rt.CFrame * cframe(0,0,-45)
						task.wait(0.5)
					elseif heatlvl == 2 then
						if heat > 100 then
							heat = heat - 100
						end
						heatlvl = 1
						frame = 2
						rt.CFrame = rt.CFrame * cframe(0,0,-75)
						chatter(char,"Dark of all Nights!")
						task.wait(0.75)
						local exp = new("Part")
						exp.Parent = char
						exp.Transparency = 1
						exp.Size = vect3(0.001,0.001,0.001)
						exp.Locked = true
						exp.CanCollide = false
						exp.Anchored = true
						exp.CFrame =  rt.CFrame * cframe(0,0,75)
						local dw2 = new("Part")
						local dwm2 = new("SpecialMesh")
						local dp = new("Part")
						local dpm = new("SpecialMesh")
						local dp2 = new("Part")
						local dpm2 = new("SpecialMesh")
						local dw = new("Part")
						local dwm = new("SpecialMesh")
						dw.Parent = exp
						dw.Transparency = 0.05
						dw.Size = vect3(1, 1, 1)
						dw.Anchored = true
						dw.BottomSurface = Enum.SurfaceType.Smooth
						dw.BrickColor = bc("Dark indigo")
						dw.CanCollide = false
						dw.TopSurface = Enum.SurfaceType.Smooth
						dwm.Parent = dw
						dwm.MeshId = "rbxassetid://20329976"
						dwm.Scale = vect3(3, 3, 3)
						dwm.MeshType = Enum.MeshType.FileMesh
						dw2.Name = "Part1"
						dw2.Parent = dw
						dw2.Color = Color3.new(0.768627, 0.156863, 0.109804)
						dw2.Transparency = 0.25
						dw2.Size = vect3(1, 1, 1)
						dw2.Anchored = true
						dw2.BottomSurface = Enum.SurfaceType.Smooth
						dw2.BrickColor = bc("Really black")
						dw2.CanCollide = false
						dw2.TopSurface = Enum.SurfaceType.Smooth
						dwm2.Parent = dw2
						dwm2.MeshId = "rbxassetid://20329976"
						dwm2.Scale = vect3(3.5, 3.5, 3.5)
						dwm2.MeshType = Enum.MeshType.FileMesh
						dp.Name = "dp"
						dp.Parent = dw
						dp.Transparency = 0.25
						dp.Size = vect3(2.5, 5, 2.5)
						dp.Anchored = true
						dp.BottomSurface = Enum.SurfaceType.Smooth
						dp.BrickColor = bc("Really black")
						dp.CanCollide = false
						dp.TopSurface = Enum.SurfaceType.Smooth
						dpm.Parent = dp
						dpm.MeshType = Enum.MeshType.Sphere
						dp2.Name = "Part3"
						dp2.Parent = dw
						dp2.Transparency = 0.05
						dp2.Size = vect3(2, 2.5, 2)
						dp2.Anchored = true
						dp2.BottomSurface = Enum.SurfaceType.Smooth
						dp2.BrickColor = bc("Dark indigo")
						dp2.CanCollide = false
						dp2.TopSurface = Enum.SurfaceType.Smooth
						dpm2.Parent = dp2
						dpm2.MeshType = Enum.MeshType.Sphere
						dw2.Material = "Neon"
						dw.Material = "Neon"
						dp.Material = "Neon"
						dp2.Material = "Neon"
						dw.CFrame = exp.CFrame * cframe(0,-1.5,-0)
						dw2.CFrame = exp.CFrame * cframe(0,-1.5,0)
						dp.CFrame = exp.CFrame * cframe(0,-1.5,0)
						dp2.CFrame = exp.CFrame * cframe(0,-1.5,0)
						magnitudedamage(45,"boom", 0, 10, 8021447194, 1.5, 0.5, dp,true,"burn","shade")
						sound(48618802,1.5,0.75,dp,0,false)
						local tween = tweens:Create(dw,TweenInfo.new(2,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Transparency = 1})
						tween:Play()
						local tweenM = tweens:Create(dwm,TweenInfo.new(2,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Scale = vect3(15,0.025,15),Offset = vect3(0,-1.5,-1)})
						tweenM:Play()
						local tween1 = tweens:Create(dw2,TweenInfo.new(2,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Transparency = 1})
						tween1:Play()
						local tweenM1 = tweens:Create(dwm2,TweenInfo.new(2,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Scale = vect3(17.5,0.015,17.5),Offset = vect3(0,-1.5,-1)})
						tweenM1:Play()
						local tween2 = tweens:Create(dp,TweenInfo.new(2,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{CFrame = dp.CFrame * angles(0,rad(180),0),Size = vect3(7.5,60,7.5),Transparency = 1})
						tween2:Play()
						local tween3 = tweens:Create(dp2,TweenInfo.new(2,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{CFrame = dp.CFrame * angles(0,rad(180),0),Size = vect3(5,45,5),Transparency = 1})
						tween3:Play()
						tween.Completed:Connect(function() dw:Destroy()end)
						tween1.Completed:Connect(function() dw2:Destroy() end)
						tween2.Completed:Connect(function() dp:Destroy()end)
						tween3.Completed:Connect(function() dp2:Destroy() end)
						task.wait(0.75)
						debris:AddItem(exp,1.5)
					elseif heatlvl == 3 then
						if heat > 100 then
							heat = heat - 200
						end
						heatlvl = 1
						frame = 2
						rt.CFrame = rt.CFrame * cframe(0,0,-150)
						chatter(char,"Dark of all Nights,")
						task.wait(1.5)
						chatter(char,"Soul Shade!")
						local doingsoul = true
						local exp = new("Part")
						exp.Parent = script
						exp.Transparency = 1
						exp.Size = vect3(0.001,0.001,0.001)
						exp.Locked = true
						exp.CanCollide = false
						exp.Anchored = true
						exp.CFrame =  rt.CFrame * cframe(0,0,150)
						magnitudedamage(75,"sphere", 0, 15, 2248511, 1.25, 0.3, exp,true,"burn","shade2")
						local shade = new("Part")
						local shadem = new("SpecialMesh")
						shade.Name = "BeamEffect"
						shade.Parent = workspace.Terrain
						shade.CFrame = exp.CFrame * cframe(0,-2.5,0)
						shade.Size = vect3(1,1,1)
						shade.Anchored = true
						shade.BottomSurface = Enum.SurfaceType.Smooth
						shade.BrickColor = bc("Dark indigo")
						shade.Locked = true
						shade.TopSurface = Enum.SurfaceType.Smooth
						shade.CanCollide = false
						debris:AddItem(shade,10)
						sound2(6892640563, 1.25, 0.725, shade, 0,false)
						shadem.Parent = shade
						shadem.Scale = vect3(0, 10000, 1)
						shadem.MeshType = Enum.MeshType.FileMesh
						shadem.Scale = vect3(0, 10000, 0)
						tweens:Create(shadem,TweenInfo.new(2,Enum.EasingStyle.Sine,Enum.EasingDirection.InOut),{Scale = vect3(20, 10000, 20)}):Play()
						tweens:Create(shade,TweenInfo.new(2,Enum.EasingStyle.Sine,Enum.EasingDirection.InOut),{Transparency = 1}):Play()
						local wp = new("Part")
						local wm = new("SpecialMesh")
						wp.Name = "WavePart"
						wp.Parent = shade
						wp.Transparency = 0.1
						wp.Size = vect3(0.001,0.001,0.001)
						wp.Anchored = true
						wp.BottomSurface = Enum.SurfaceType.Smooth
						wp.BrickColor = bc("Really black")
						wp.CanCollide = false
						wp.TopSurface = Enum.SurfaceType.Smooth
						wm.Parent = wp
						wm.MeshId = "rbxassetid://20329976"
						wm.Scale = vect3(3.5, 7.5, 3.5)
						wm.MeshType = Enum.MeshType.FileMesh
						local wp2 = new("Part")
						local wm2 = new("SpecialMesh")
						wp2.Name = "WavePart"
						wp2.Parent = wp
						wp2.Transparency = 0.025
						wp2.Size = vect3(0.001,0.001,0.001)
						wp2.Anchored = true
						wp2.BottomSurface = Enum.SurfaceType.Smooth
						wp2.BrickColor = bc("Dark indigo")
						wp2.CanCollide = false
						wp2.TopSurface = Enum.SurfaceType.Smooth
						wm2.Parent = wp2
						wm2.MeshId = "rbxassetid://20329976"
						wm2.Scale = vect3(3, 6, 3)
						wm2.MeshType = Enum.MeshType.FileMesh
						wp.Material = "Neon"
						wp2.Material = "Neon"
						wp.CFrame = exp.CFrame * cframe(0,-1.5,-0.45)
						wp2.CFrame = exp.CFrame * cframe(0,-1.5,-0.45)
						sound2(2760979, 1.5, 0.375, wp, 0,false)
						sound2(2693351, 1.25, 0.85, wp, 0,false)
						local tween = tweens:Create(wp,TweenInfo.new(3.5,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Transparency = 1})
						tween:Play()
						local tweenM = tweens:Create(wm,TweenInfo.new(3.5,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Scale = vect3(15,0.05,15),Offset = vect3(0,-1.5,-1)})
						tweenM:Play()
						local tween1 = tweens:Create(wp2,TweenInfo.new(3.5,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Transparency = 1})
						tween1:Play()
						local tweenM1 = tweens:Create(wm2,TweenInfo.new(3.5,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Scale = vect3(17.5,0.025,17.5),Offset = vect3(0,-1.5,-1)})
						tweenM1:Play()
						tween.Completed:Connect(function() wp:Destroy()end)
						tween1.Completed:Connect(function() wp2:Destroy() end)
						local dp = new("Part")
						local dpm = new("SpecialMesh")
						local dp2 = new("Part")
						local dpm2 = new("SpecialMesh")
						dp.Name = "dp"
						dp.Parent = exp
						dp.Transparency = 0.25
						dp.Size = vect3(2.5, 5, 2.5)
						dp.Anchored = true
						dp.BottomSurface = Enum.SurfaceType.Smooth
						dp.BrickColor = bc("Really black")
						dp.CanCollide = false
						dp.TopSurface = Enum.SurfaceType.Smooth
						dpm.Parent = dp
						dpm.MeshType = Enum.MeshType.Sphere
						dp2.Name = "Part3"
						dp2.Parent = dp
						dp2.Transparency = 0.05
						dp2.Size = vect3(2, 2.5, 2)
						dp2.Anchored = true
						dp2.BottomSurface = Enum.SurfaceType.Smooth
						dp2.BrickColor = bc("Dark indigo")
						dp2.CanCollide = false
						dp2.TopSurface = Enum.SurfaceType.Smooth
						dpm2.Parent = dp2
						dpm2.MeshType = Enum.MeshType.Sphere
						dp.Material = "Neon"
						dp2.Material = "Neon"
						dp.CFrame = exp.CFrame * cframe(0,-1.5,0)
						dp2.CFrame = exp.CFrame * cframe(0,-1.5,0)
						magnitudedamage(45,"boom", 0, 10, 8021447194, 1.5, 0.5, dp,true,"burn","shade")
						sound(48618802,1.5,0.75,dp,0,false)
						local tween2 = tweens:Create(dp,TweenInfo.new(2.5,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{CFrame = dp.CFrame * angles(0,rad(180),0),Size = vect3(7.5,75,7.5),Transparency = 1})
						tween2:Play()
						local tween3 = tweens:Create(dp2,TweenInfo.new(2.5,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{CFrame = dp.CFrame * angles(0,rad(180),0),Size = vect3(5,60,5),Transparency = 1})
						tween3:Play()
						tween2.Completed:Connect(function() dp:Destroy()end)
						tween3.Completed:Connect(function() dp2:Destroy() end)
						debris:AddItem(exp,7.5)
						task.wait(4.5)
					end
					trail.Enabled = false
					trail2.Enabled = false
					if holdinge then
						if heat >= 300 then 
							attack = false
							gyro.MaxTorque = vect3(0,math.huge,0)
							hum.WalkSpeed = ogws
							hum.JumpPower = ogjp
							hum.JumpHeight = ogjh 
							return 
						end
						local pe = new("ParticleEmitter")
						local pe0 = new("ParticleEmitter")
						local pe1 = new("ParticleEmitter")
						pe.Parent = char.Torso
						pe.Speed = NumberRange.new(15, 15)
						pe.Orientation = Enum.ParticleOrientation.VelocityParallel
						pe.Color = ColorSequence.new(color(1, 0.917647, 0),color(0.85098, 1, 0.188235),color(0.419608, 0.952941, 1))
						pe.LightEmission = 1
						pe.LightInfluence = 1
						pe.Texture = "http://www.roblox.com/asset/?id=8268283628"
						pe.Transparency = NumberSequence.new(0,0.19374996423721313,0.987500011920929)
						pe.Size = NumberSequence.new(0.4000000059604645,0.4000000059604645)
						pe.Drag = 7
						pe.Lifetime = NumberRange.new(0, 1.5)
						pe.Rate = 500
						pe.SpreadAngle = vect2(360, 360)
						pe.VelocitySpread = 360
						pe0.Parent = char.Torso
						pe0.Speed = NumberRange.new(0, 20)
						pe0.Rotation = NumberRange.new(-360, 360)
						pe0.Color = ColorSequence.new(color(1, 1, 0.498039),color(0.752941, 1, 0.490196),color(0.666667, 1, 1))
						pe0.LightEmission = 1
						pe0.LightInfluence = 1
						pe0.Texture = "http://www.roblox.com/asset/?id=8177564047"
						pe0.Transparency = NumberSequence.new(1,0,1)
						pe0.Size = NumberSequence.new(0.5624997615814209,0)
						pe0.Shape = Enum.ParticleEmitterShape.Sphere
						pe0.Acceleration = vect3(0, -15, 0)
						pe0.Drag = 10
						pe0.Lifetime = NumberRange.new(0, 1.5)
						pe0.Rate = 1000
						pe0.RotSpeed = NumberRange.new(100, 100)
						pe1.Parent = char.Torso
						pe1.Speed = NumberRange.new(15, 15)
						pe1.Rotation = NumberRange.new(0, 360)
						pe1.Color = ColorSequence.new(color(1, 0.917647, 0),color(0.85098, 1, 0.188235),color(0.419608, 0.952941, 1))
						pe1.LightEmission = 1
						pe1.LightInfluence = 1
						pe1.Texture = "http://www.roblox.com/asset/?id=8177565057"
						pe1.Transparency = NumberSequence.new(0,0.19374996423721313,0.987500011920929)
						pe1.Size = NumberSequence.new(0.30000001192092896,0)
						pe1.Drag = 10
						pe1.Lifetime = NumberRange.new(0, 1.5)
						pe1.Rate = 10000
						pe1.RotSpeed = NumberRange.new(50, 50)
						pe1.SpreadAngle = vect2(360, 360)
						pe1.VelocitySpread = 360
						local sphere = new("Part")
						sphere.Parent = char
						sphere.Name = "YuiEffect"
						sphere.Shape = "Ball"
						sphere.Size = vect3(2.5,2.5,2.5)
						sphere.Transparency = 0.5
						sphere.BrickColor = bc("Cool yellow")
						sphere.Material = "Neon"
						sphere.CanCollide = false
						sphere.Anchored = true
						sphere.CFrame = rt.CFrame
						local tween = tweens:Create(sphere, TweenInfo.new(0.25), {Size = vect3(30,30,30), Transparency = 1, Color = color(1,1,1)})
						tween:Play()
						debris:AddItem(sphere,2)
						sound(1613998698,1.5,1,rt,0.3,false)
						if not inair then
							Tool.Grip = cframe(0, -1, 0, -4.37113883e-08, -0.5, -0.866025388, 0, 0.866025388, -0.5, 1, -2.18556941e-08, -3.78551732e-08)
							anim = "yui"
							if heat < 300 then
								heat = heat + 50
							end
							if heat > 300 then
								heat = 300
							end
							if heat >= 0 and heat < 100 then
								heatlvl = 1
							elseif heat >= 100 and heat < 200 then
								heatlvl = 2
							elseif heat >= 300 then
								heatlvl = 3
							end
							task.wait(0.45)
							pe0.Enabled = false
							pe1.Enabled = false
							pe.Enabled = false
							debris:AddItem(pe,1.5)
							debris:AddItem(pe0,1.5)
							debris:AddItem(pe1,1.5)
							Tool.Grip = cframe(0, -1, 0, -4.37113883e-08, 0, -1, 0, 1, -0, 1, -0, -4.37113883e-08)
						else
							rt.Anchored = true
							Tool.Grip = cframe(0, -1, 0, -4.37113883e-08, -0.5, -0.866025388, 0, 0.866025388, -0.5, 1, -2.18556941e-08, -3.78551732e-08)
							anim = "ayui"
							if heat < 300 then
								heat = heat + 50
							end
							if heat > 300 then
								heat = 300
							end
							if heat >= 0 and heat < 100 then
								heatlvl = 1
							elseif heat >= 100 and heat < 200 then
								heatlvl = 2
							elseif heat >= 300 then
								heatlvl = 3
							end
							task.wait(0.45)
							pe0.Enabled = false
							pe1.Enabled = false
							pe.Enabled = false
							debris:AddItem(pe,1.5)
							debris:AddItem(pe0,1.5)
							debris:AddItem(pe1,1.5)
							rt.Anchored = false
							Tool.Grip = cframe(0, -1, 0, -4.37113883e-08, 0, -1, 0, 1, -0, 1, -0, -4.37113883e-08)
						end
					end
				end
				attack = false
				gyro.MaxTorque = vect3(0,math.huge,0)
				hum.WalkSpeed = ogws
				hum.JumpPower = ogjp
				hum.JumpHeight = ogjh
			elseif move == "summon" then
				if dragonattack then return end
				if dragonsummoned then dragonsummoned = false return end
				rt.CFrame = rt.CFrame * cframe(0,0,-1.5)
				local lines = {
					"Go!",
					"Awaken!",
					"Ogawa-sama...",
				}
				chatter(char,lines[random(1,#lines)])
				sound(157487812,1.5,0.75,rt,0,false)
				local dragon = new("Part")
				local dragonh = new("SpecialMesh")
				dragon.Parent = workspace.Terrain
				dragon.Size = vect3(0.001,0.001,0.001)
				dragon.BrickColor = bc("Really black")
				dragon.CanCollide = true
				dragon.CanTouch = true
				dragon.Anchored = true
				dragon.Locked = true
				dragonh.Parent = dragon
				dragonh.MeshId = "http://www.roblox.com/asset/?id=24478215"
				dragonh.Scale = vect3(3, 2.5, 3)
				dragonsummoned = true
				dragon.CFrame = rt.CFrame * cframe(0,-2.5,-4.5)
				local dashp = new("ParticleEmitter")
				dashp.Name = "Debris"
				dashp.Parent = dragon
				dashp.Speed = NumberRange.new(22, 22)
				dashp.Rotation = NumberRange.new(1, 360)
				dashp.Color = ColorSequence.new(color(0, 0, 0),color(0.115, 0.115, 0.115))
				dashp.LightInfluence = 1
				dashp.Texture = "rbxassetid://12098538418"
				dashp.Transparency = NumberSequence.new(0.800000011920929,1)
				dashp.ZOffset = 3
				dashp.Size = NumberSequence.new(1.5,15)
				dashp.Drag = 0.10000000149011612
				dashp.EmissionDirection = Enum.NormalId.Back
				dashp.Lifetime = NumberRange.new(0.5, 0.5)
				dashp.Rate = 200
				dashp.RotSpeed = NumberRange.new(1, 360)
				dashp.SpreadAngle = vect2(-20, -20)
				dashp.VelocitySpread = -20
				spawn(function()
					spawn(function()
						for i = 1,5 do
							local firepart = new("Part")
							firepart.Parent = workspace.Terrain
							firepart.Size = vect3(7,6.5,6)
							firepart.BottomSurface = Enum.SurfaceType.Smooth
							firepart.Anchored = true
							firepart.CanCollide = false
							firepart.CanTouch = false
							firepart.BrickColor = bc("Really black")
							firepart.Locked = true
							firepart.TopSurface = Enum.SurfaceType.Smooth
							firepart.CFrame = dragon.CFrame * cframe(0,0,0.25) * angles(rad(random(-360,360)),rad(random(-360,360)),rad(random(-360,360)))
							spawn(function()
								for i = 1,15 do
									task.wait()
									firepart.CFrame = firepart.CFrame * angles(rad(7.5),rad(7.5),rad(7.5))
									firepart.Transparency = firepart.Transparency + 0.15
									firepart.Size = firepart.Size - vect3(0.3,0.3,0.3)
								end
							end)
							spawn(function()
								task.wait(0.5)
								debris:AddItem(firepart,2)
							end)
							task.wait(0.05)
						end
					end)
					repeat
						if dragonattack == true then
							if dragontype == "relocate" then
								local direct = vect3(dragonpos.lookVector.x,0,dragonpos.lookVector.z)
								dragon.CFrame = cframe(dragon.Position,dragon.Position+direct*25)
							elseif dragontype == "rumeiga" then
								local rumei = new("Part")
								local rumeim = new("SpecialMesh")
								rumei.Name = "Rumeiga"
								rumei.Parent = workspace.Terrain
								rumei.Size = vect3(0.001,0.001,0.001)
								rumei.Anchored = true
								rumei.CanCollide = false
								rumei.Anchored = true
								rumei.BrickColor = bc("Really black")
								rumeim.Parent = rumei
								rumeim.MeshId = "rbxassetid://6980699164"
								rumeim.Scale = vect3(0.2, 0.2, 0.2)
								rumeim.MeshType = Enum.MeshType.FileMesh
								rumei.CFrame = dragon.CFrame * cframe(0,0,-4.5) * angles(rad(-90),0,rad(90))
								local dashi = new("ParticleEmitter")
								dashi.Name = "Debris"
								dashi.Parent = rumei
								dashi.Speed = NumberRange.new(22, 22)
								dashi.Rotation = NumberRange.new(1, 360)
								dashi.Color = ColorSequence.new(color(0, 0, 0),color(0.115, 0.115, 0.115))
								dashi.LightInfluence = 1
								dashi.Texture = "rbxassetid://12098538418"
								dashi.Transparency = NumberSequence.new(0.800000011920929,1)
								dashi.ZOffset = 3
								dashi.Size = NumberSequence.new(1.5,15)
								dashi.Drag = 0.10000000149011612
								dashi.EmissionDirection = Enum.NormalId.Left
								dashi.Lifetime = NumberRange.new(0.5, 0.5)
								dashi.Rate = 200
								dashi.RotSpeed = NumberRange.new(1, 360)
								dashi.SpreadAngle = vect2(-20, -20)
								dashi.VelocitySpread = -20
								dragon.Parent = nil
								sound(7127123554,1.5,1.1,rumei,0,false)
								if heatlvl == 1 or holdinge then
									for i = 1,15 do
										rumei.CFrame = rumei.CFrame * cframe(1.5,0,0)
										magnitudedamage(0.5,"sphere", 0, 7.5, 2920959, 1.25, 1.45, rumei,true,"normal","rumeiga")
										task.wait()
									end
								elseif heatlvl == 2 then
									if heat > 100 then
										heat = heat - 100
									end
									heatlvl = 1
									for i = 1,15 do
										rumei.CFrame = rumei.CFrame * cframe(2,0,1) * angles(0,rad(-5),0)
										magnitudedamage(1,"sphere", 0, 7.5, 2920959, 1.25, 1.45, rumei,true,"normal","rumeiga2")
										task.wait()
									end
								elseif heatlvl == 3 then
									if heat > 100 then
										heat = heat - 200
									end
									heatlvl = 1
									for i = 1,15 do
										rumei.CFrame = rumei.CFrame * cframe(2.5,0,1.25) * angles(0,rad(-10),0)
										magnitudedamage(2,"sphere", 0, 7.5, 2920959, 1.25, 1.45, rumei,true,"normal","rumeiga1")
										task.wait()
									end
								end
								dashi.Enabled = false
								local tween = tweens:Create(rumei, TweenInfo.new(0.5), {Transparency = 1})
								tween:Play()
								tween.Completed:Connect(function()
									rumei:Destroy()
									dragon.Transparency = 1
									dragon.Parent = workspace.Terrain
									dragonsummoned = false
								end)
							elseif dragontype == "korone" then
								dragon.Transparency = 1
								if heatlvl == 1 or holdinge then
									spawn(function()
										for i = 1,3 do
											local firepart = new("Part")
											firepart.Parent = workspace.Terrain
											firepart.Size = vect3(0.001,0.001,0.001)
											firepart.BottomSurface = Enum.SurfaceType.Smooth
											firepart.Anchored = true
											firepart.CanCollide = false
											firepart.CanTouch = false
											firepart.BrickColor = bc("Really black")
											firepart.Locked = true
											firepart.TopSurface = Enum.SurfaceType.Smooth
											firepart.CFrame = dragon.CFrame * cframe(0,0,0.25) * angles(rad(random(-360,360)),rad(random(-360,360)),rad(random(-360,360)))
											sound2(3264793,1,1,firepart,0,false)
											magnitudedamage(2,"sphere", 0, 10, 2767090, 1.5, 1, firepart,true,"normal","korone")
											spawn(function()
												for i = 1,25 do
													task.wait()
													firepart.CFrame = firepart.CFrame * angles(rad(7.5),rad(7.5),rad(7.5))
													firepart.Transparency = firepart.Transparency + 0.05
													firepart.Size = firepart.Size + vect3(2.5,2.5,2.5)
												end
											end)
											local tween = tweens:Create(firepart, TweenInfo.new(0.45), {Transparency = 1})
											tween:Play()
											tween.Completed:Connect(function() firepart:Destroy() end)
											task.wait(0.125)
										end
									end)
									for i = 1,3 do
										local late = new("Part")
										local latem = new("SpecialMesh")
										local late1 = new("Part")
										local latem1 = new("SpecialMesh")
										local late2 = new("Part")
										local latem2 = new("SpecialMesh")
										late.Name = "Effect"
										late.Parent = workspace.Terrain
										late.Size = vect3(0.001,0.001,0.001)
										late.Anchored = true
										late.BottomSurface = Enum.SurfaceType.Smooth
										late.BrickColor = bc("Really black")
										late.CanCollide = false
										late.CanTouch = false
										late.TopSurface = Enum.SurfaceType.Smooth
										late.FormFactor = Enum.FormFactor.Custom
										latem.Parent = late
										latem.MeshId = "http://www.roblox.com/asset/?id=20329976"
										latem.Scale = vect3(11.64, 6.466, 9.138)
										latem.MeshType = Enum.MeshType.FileMesh
										late1.Name = "Effect"
										late1.Parent = workspace.Terrain
										late1.Size = vect3(0.001,0.001,0.001)
										late1.Anchored = true
										late1.BottomSurface = Enum.SurfaceType.Smooth
										late1.BrickColor = bc("Really black")
										late1.CanCollide = false
										late1.CanTouch = false
										late1.TopSurface = Enum.SurfaceType.Smooth
										late1.FormFactor = Enum.FormFactor.Custom
										latem1.Parent = late1
										latem1.MeshId = "http://www.roblox.com/asset/?id=20329976"
										latem1.Scale = vect3(17.01546859741211, 3.579, 13.386)
										latem1.MeshType = Enum.MeshType.FileMesh
										late2.Name = "Effect"
										late2.Parent = workspace.Terrain
										late2.Size = vect3(0.001,0.001,0.001)
										late2.CanTouch = false
										late2.Anchored = true
										late2.BottomSurface = Enum.SurfaceType.Smooth
										late2.BrickColor = bc("Really black")
										late2.CanCollide = false
										late2.TopSurface = Enum.SurfaceType.Smooth
										late2.FormFactor = Enum.FormFactor.Custom
										latem2.Parent = late2
										latem2.MeshId = "http://www.roblox.com/asset/?id=20329976"
										latem2.Scale = vect3(4.516, 9.501, 4.516)
										latem2.MeshType = Enum.MeshType.FileMesh
										late.CFrame = dragon.CFrame
										late1.CFrame = dragon.CFrame
										late2.CFrame = dragon.CFrame
										local tween = tweens:Create(late, TweenInfo.new(1), {Transparency = 1})
										tween:Play()
										local tween1 = tweens:Create(late1, TweenInfo.new(1), {Transparency = 1})
										tween1:Play()
										local tween2 = tweens:Create(late2, TweenInfo.new(1), {Transparency = 1})
										tween2:Play()
										tweens:Create(latem, TweenInfo.new(1), {Scale = vect3(35, 1, 35), Offset = vect3(0, -3.5, 0)}):Play()
										tweens:Create(latem1, TweenInfo.new(1), {Scale = vect3(45, 0.25, 45), Offset = vect3(0,-1,0)}):Play()
										tweens:Create(latem2, TweenInfo.new(1), {Scale = vect3(25, 1.25, 26), Offset = vect3(0,-5,0)}):Play()
										tween.Completed:Connect(function() late:Destroy() end)
										tween.Completed:Connect(function() late1:Destroy() end)
										tween.Completed:Connect(function() late2:Destroy() end)
										task.wait(0.125)
									end
								elseif heatlvl == 2 then
									if heat > 100 then
										heat = heat - 100
									end
									heatlvl = 1
									spawn(function()
										for i = 1,5 do
											local firepart = new("Part")
											firepart.Parent = workspace.Terrain
											firepart.Size = vect3(0.001,0.001,0.001)
											firepart.BottomSurface = Enum.SurfaceType.Smooth
											firepart.Anchored = true
											firepart.CanCollide = false
											firepart.CanTouch = false
											firepart.BrickColor = bc("Really black")
											firepart.Locked = true
											firepart.TopSurface = Enum.SurfaceType.Smooth
											firepart.CFrame = dragon.CFrame * cframe(0,0,0.25) * angles(rad(random(-360,360)),rad(random(-360,360)),rad(random(-360,360)))
											sound2(3264793,1,1,firepart,0,false)
											magnitudedamage(2,"sphere", 0, 10, 2767090, 1.5, 1, dragon,true,"normal","korone")
											spawn(function()
												for i = 1,25 do
													task.wait()
													firepart.CFrame = firepart.CFrame * angles(rad(7.5),rad(7.5),rad(7.5))
													firepart.Transparency = firepart.Transparency + 0.05
													firepart.Size = firepart.Size + vect3(2.5,2.5,2.5)
												end
											end)
											local tween = tweens:Create(firepart, TweenInfo.new(0.45), {Transparency = 1})
											tween:Play()
											tween.Completed:Connect(function() firepart:Destroy() end)
											task.wait(0.075)
										end
									end)
									for i = 1,5 do
										local late = new("Part")
										local latem = new("SpecialMesh")
										local late1 = new("Part")
										local latem1 = new("SpecialMesh")
										local late2 = new("Part")
										local latem2 = new("SpecialMesh")
										late.Name = "Effect"
										late.Parent = workspace.Terrain
										late.Size = vect3(0.001,0.001,0.001)
										late.Anchored = true
										late.BottomSurface = Enum.SurfaceType.Smooth
										late.BrickColor = bc("Really black")
										late.CanCollide = false
										late.CanTouch = false
										late.TopSurface = Enum.SurfaceType.Smooth
										late.FormFactor = Enum.FormFactor.Custom
										latem.Parent = late
										latem.MeshId = "http://www.roblox.com/asset/?id=20329976"
										latem.Scale = vect3(11.64, 6.466, 9.138)
										latem.MeshType = Enum.MeshType.FileMesh
										late1.Name = "Effect"
										late1.Parent = workspace.Terrain
										late1.Size = vect3(0.001,0.001,0.001)
										late1.Anchored = true
										late1.BottomSurface = Enum.SurfaceType.Smooth
										late1.BrickColor = bc("Really black")
										late1.CanCollide = false
										late1.CanTouch = false
										late1.TopSurface = Enum.SurfaceType.Smooth
										late1.FormFactor = Enum.FormFactor.Custom
										latem1.Parent = late1
										latem1.MeshId = "http://www.roblox.com/asset/?id=20329976"
										latem1.Scale = vect3(17.01546859741211, 3.579, 13.386)
										latem1.MeshType = Enum.MeshType.FileMesh
										late2.Name = "Effect"
										late2.Parent = workspace.Terrain
										late2.Size = vect3(0.001,0.001,0.001)
										late2.CanTouch = false
										late2.Anchored = true
										late2.BottomSurface = Enum.SurfaceType.Smooth
										late2.BrickColor = bc("Really black")
										late2.CanCollide = false
										late2.TopSurface = Enum.SurfaceType.Smooth
										late2.FormFactor = Enum.FormFactor.Custom
										latem2.Parent = late2
										latem2.MeshId = "http://www.roblox.com/asset/?id=20329976"
										latem2.Scale = vect3(4.516, 9.501, 4.516)
										latem2.MeshType = Enum.MeshType.FileMesh
										late.CFrame = dragon.CFrame
										late1.CFrame = dragon.CFrame
										late2.CFrame = dragon.CFrame
										local tween = tweens:Create(late, TweenInfo.new(1), {Transparency = 1})
										tween:Play()
										local tween1 = tweens:Create(late1, TweenInfo.new(1), {Transparency = 1})
										tween1:Play()
										local tween2 = tweens:Create(late2, TweenInfo.new(1), {Transparency = 1})
										tween2:Play()
										tweens:Create(latem, TweenInfo.new(1), {Scale = vect3(35, 1, 35), Offset = vect3(0, -3.5, 0)}):Play()
										tweens:Create(latem1, TweenInfo.new(1), {Scale = vect3(45, 0.25, 45), Offset = vect3(0,-1,0)}):Play()
										tweens:Create(latem2, TweenInfo.new(1), {Scale = vect3(25, 1.25, 26), Offset = vect3(0,-5,0)}):Play()
										tween.Completed:Connect(function() late:Destroy() end)
										tween.Completed:Connect(function() late1:Destroy() end)
										tween.Completed:Connect(function() late2:Destroy() end)
										task.wait(0.075)
									end
								elseif heatlvl == 3 then
									if heat > 100 then
										heat = heat - 200
									end
									heatlvl = 1
									spawn(function()
										for i = 1,10 do
											local firepart = new("Part")
											firepart.Parent = workspace.Terrain
											firepart.Size = vect3(0.001,0.001,0.001)
											firepart.BottomSurface = Enum.SurfaceType.Smooth
											firepart.Anchored = true
											firepart.CanCollide = false
											firepart.CanTouch = false
											firepart.BrickColor = bc("Really black")
											firepart.Locked = true
											firepart.TopSurface = Enum.SurfaceType.Smooth
											firepart.CFrame = dragon.CFrame * cframe(0,0,0.25) * angles(rad(random(-360,360)),rad(random(-360,360)),rad(random(-360,360)))
											sound2(3264793,1,1,firepart,0,false)
											magnitudedamage(4.5,"sphere", 0, 10, 2767090, 1.5, 1, dragon,true,"normal","korone")
											spawn(function()
												for i = 1,25 do
													task.wait()
													firepart.CFrame = firepart.CFrame * angles(rad(7.5),rad(7.5),rad(7.5))
													firepart.Transparency = firepart.Transparency + 0.05
													firepart.Size = firepart.Size + vect3(2.5,2.5,2.5)
												end
											end)
											local tween = tweens:Create(firepart, TweenInfo.new(0.45), {Transparency = 1})
											tween:Play()
											tween.Completed:Connect(function() firepart:Destroy() end)
											task.wait(0.05)
										end
									end)
									for i = 1,10 do
										local late = new("Part")
										local latem = new("SpecialMesh")
										local late1 = new("Part")
										local latem1 = new("SpecialMesh")
										local late2 = new("Part")
										local latem2 = new("SpecialMesh")
										late.Name = "Effect"
										late.Parent = workspace.Terrain
										late.Size = vect3(0.001,0.001,0.001)
										late.Anchored = true
										late.BottomSurface = Enum.SurfaceType.Smooth
										late.BrickColor = bc("Really black")
										late.CanCollide = false
										late.CanTouch = false
										late.TopSurface = Enum.SurfaceType.Smooth
										late.FormFactor = Enum.FormFactor.Custom
										latem.Parent = late
										latem.MeshId = "http://www.roblox.com/asset/?id=20329976"
										latem.Scale = vect3(11.64, 6.466, 9.138)
										latem.MeshType = Enum.MeshType.FileMesh
										late1.Name = "Effect"
										late1.Parent = workspace.Terrain
										late1.Size = vect3(0.001,0.001,0.001)
										late1.Anchored = true
										late1.BottomSurface = Enum.SurfaceType.Smooth
										late1.BrickColor = bc("Really black")
										late1.CanCollide = false
										late1.CanTouch = false
										late1.TopSurface = Enum.SurfaceType.Smooth
										late1.FormFactor = Enum.FormFactor.Custom
										latem1.Parent = late1
										latem1.MeshId = "http://www.roblox.com/asset/?id=20329976"
										latem1.Scale = vect3(17.01546859741211, 3.579, 13.386)
										latem1.MeshType = Enum.MeshType.FileMesh
										late2.Name = "Effect"
										late2.Parent = workspace.Terrain
										late2.Size = vect3(0.001,0.001,0.001)
										late2.CanTouch = false
										late2.Anchored = true
										late2.BottomSurface = Enum.SurfaceType.Smooth
										late2.BrickColor = bc("Really black")
										late2.CanCollide = false
										late2.TopSurface = Enum.SurfaceType.Smooth
										late2.FormFactor = Enum.FormFactor.Custom
										latem2.Parent = late2
										latem2.MeshId = "http://www.roblox.com/asset/?id=20329976"
										latem2.Scale = vect3(4.516, 9.501, 4.516)
										latem2.MeshType = Enum.MeshType.FileMesh
										late.CFrame = dragon.CFrame
										late1.CFrame = dragon.CFrame
										late2.CFrame = dragon.CFrame
										local tween = tweens:Create(late, TweenInfo.new(1), {Transparency = 1})
										tween:Play()
										local tween1 = tweens:Create(late1, TweenInfo.new(1), {Transparency = 1})
										tween1:Play()
										local tween2 = tweens:Create(late2, TweenInfo.new(1), {Transparency = 1})
										tween2:Play()
										tweens:Create(latem, TweenInfo.new(1), {Scale = vect3(35, 1, 35), Offset = vect3(0, -3.5, 0)}):Play()
										tweens:Create(latem1, TweenInfo.new(1), {Scale = vect3(45, 0.25, 45), Offset = vect3(0,-1,0)}):Play()
										tweens:Create(latem2, TweenInfo.new(1), {Scale = vect3(25, 1.25, 26), Offset = vect3(0,-5,0)}):Play()
										tween.Completed:Connect(function() late:Destroy() end)
										tween.Completed:Connect(function() late1:Destroy() end)
										tween.Completed:Connect(function() late2:Destroy() end)
										task.wait(0.05)
									end
								end
								dragon.Transparency = 1
								dragonsummoned = false
							elseif dragontype == "hakurei" then
								local doinghakurei = true
								spawn(function()
									if heatlvl == 1 or holdinge then
										while doinghakurei do
											task.wait()
											dragon.CFrame = dragon.CFrame  * cframe(0,0,-0.75)
										end
									elseif heatlvl == 2 then
										while doinghakurei do
											task.wait()
											dragon.CFrame = dragon.CFrame  * cframe(0,0,-1)
										end
									elseif heatlvl == 3 then
										while doinghakurei do
											task.wait()
											dragon.CFrame = dragon.CFrame  * cframe(0,0,-2.5)
										end
									end
								end)
								spawn(function()
									for i = 1,4 do
										local firepart = new("Part")
										firepart.Parent = workspace.Terrain
										firepart.Size = vect3(0.001,0.001,0.001)
										firepart.BottomSurface = Enum.SurfaceType.Smooth
										firepart.Anchored = true
										firepart.CanCollide = false
										firepart.CanTouch = false
										firepart.BrickColor = bc("Really black")
										firepart.Locked = true
										firepart.TopSurface = Enum.SurfaceType.Smooth
										firepart.CFrame = dragon.CFrame * cframe(0,0,0.25) * angles(rad(random(-360,360)),rad(random(-360,360)),rad(random(-360,360)))
										sound2(3264793,1,1,firepart,0,false)
										spawn(function()
											for i = 1,25 do
												task.wait()
												firepart.CFrame = firepart.CFrame * angles(rad(7.5),rad(7.5),rad(7.5))
												firepart.Transparency = firepart.Transparency + 0.05
												firepart.Size = firepart.Size + vect3(0.6,0.6,0.6)
											end
										end)
										local tween = tweens:Create(firepart, TweenInfo.new(0.45), {Transparency = 1})
										tween:Play()
										tween.Completed:Connect(function() firepart:Destroy() end)
										task.wait(0.125)
									end
								end)
								dragon.Transparency = 1
								if heatlvl == 1 or holdinge then
									local haku = new("Part")
									local hakum = new("SpecialMesh")
									haku.Name = "HakureiSaw"
									haku.Parent = dragon
									haku.CFrame = dragon.CFrame * angles(0,rad(90),0)
									haku.Size = vect3(0.001,0.001,0.001)
									haku.Anchored = true
									haku.CanCollide = false
									haku.Locked = true
									haku.BrickColor = bc("Really black")
									hakum.Parent = haku
									hakum.MeshId = "rbxassetid://448330007"
									hakum.Scale = vect3(0.1, 0.1, 0.1)
									hakum.MeshType = Enum.MeshType.FileMesh
									local hakusaw = new("Sound")
									hakusaw.SoundId = "rbxassetid://5347824216"
									hakusaw.Volume = 1.5
									hakusaw.Looped = true
									hakusaw.Parent = haku
									hakusaw:Play()
									spawn(function()
										task.wait(1.5)
										doinghakurei = false
									end)
									local radu = 0
									while doinghakurei do
										radu = radu + 5
										haku.CFrame = dragon.CFrame * angles(0,rad(90),rad(-radu))
										magnitudedamage(1,"sphere", 0, 5, 132728561235970, 1.25, 1, haku,true,"slash2","hakurei")
										task.wait(0.025)
									end
									spawn(function()
										for i = 1,4 do
											local firepart = new("Part")
											firepart.Parent = workspace.Terrain
											firepart.Size = vect3(0.001,0.001,0.001)
											firepart.BottomSurface = Enum.SurfaceType.Smooth
											firepart.Anchored = true
											firepart.CanCollide = false
											firepart.CanTouch = false
											firepart.BrickColor = bc("Really black")
											firepart.Locked = true
											firepart.TopSurface = Enum.SurfaceType.Smooth
											firepart.CFrame = dragon.CFrame * cframe(0,0,0.25) * angles(rad(random(-360,360)),rad(random(-360,360)),rad(random(-360,360)))
											spawn(function()
												for i = 1,25 do
													task.wait()
													firepart.CFrame = firepart.CFrame * angles(rad(7.5),rad(7.5),rad(7.5))
													firepart.Transparency = firepart.Transparency + 0.05
													firepart.Size = firepart.Size + vect3(0.6,0.6,0.6)
												end
											end)
											local tween = tweens:Create(firepart, TweenInfo.new(0.45), {Transparency = 1})
											tween:Play()
											tween.Completed:Connect(function() firepart:Destroy() end)
											task.wait(0.075)
										end
									end)
									haku:Destroy()
									task.wait(0.15)
									dragon.Transparency = 1
									dragonsummoned = false
								elseif heatlvl == 2 then
									if heat > 100 then
										heat = heat - 100
									end
									heatlvl = 1
									local haku = new("Part")
									local hakum = new("SpecialMesh")
									haku.Name = "HakureiSaw"
									haku.Parent = dragon
									haku.CFrame = dragon.CFrame * angles(0,rad(90),0)
									haku.Size = vect3(0.001,0.001,0.001)
									haku.Anchored = true
									haku.CanCollide = false
									haku.Locked = true
									haku.BrickColor = bc("Really black")
									hakum.Parent = haku
									hakum.MeshId = "rbxassetid://448330007"
									hakum.Scale = vect3(0.15, 0.15, 0.15)
									hakum.MeshType = Enum.MeshType.FileMesh
									local hakusaw = new("Sound")
									hakusaw.SoundId = "rbxassetid://5347824216"
									hakusaw.Volume = 1.5
									hakusaw.Looped = true
									hakusaw.Parent = haku
									hakusaw:Play()
									spawn(function()
										task.wait(2.5)
										doinghakurei = false
									end)
									local radu = 0
									while doinghakurei do
										radu = radu + 10
										haku.CFrame = dragon.CFrame * angles(0,rad(90),rad(-radu))
										magnitudedamage(2.5,"sphere", 0, 6.5, 132728561235970, 1.25, 1, haku,true,"slash2","hakurei")
										task.wait(0.025)
									end
									spawn(function()
										for i = 1,4 do
											local firepart = new("Part")
											firepart.Parent = workspace.Terrain
											firepart.Size = vect3(0.001,0.001,0.001)
											firepart.BottomSurface = Enum.SurfaceType.Smooth
											firepart.Anchored = true
											firepart.CanCollide = false
											firepart.CanTouch = false
											firepart.BrickColor = bc("Really black")
											firepart.Locked = true
											firepart.TopSurface = Enum.SurfaceType.Smooth
											firepart.CFrame = dragon.CFrame * cframe(0,0,0.25) * angles(rad(random(-360,360)),rad(random(-360,360)),rad(random(-360,360)))
											spawn(function()
												for i = 1,25 do
													task.wait()
													firepart.CFrame = firepart.CFrame * angles(rad(7.5),rad(7.5),rad(7.5))
													firepart.Transparency = firepart.Transparency + 0.05
													firepart.Size = firepart.Size + vect3(0.6,0.6,0.6)
												end
											end)
											local tween = tweens:Create(firepart, TweenInfo.new(0.45), {Transparency = 1})
											tween:Play()
											tween.Completed:Connect(function() firepart:Destroy() end)
											task.wait(0.075)
										end
									end)
									haku:Destroy()
									task.wait(0.15)
									dragon.Transparency = 1
									dragonsummoned = false
								elseif heatlvl == 3 then
									if heat > 100 then
										heat = heat - 200
									end
									heatlvl = 1
									local haku = new("Part")
									local hakum = new("SpecialMesh")
									haku.Name = "HakureiSaw"
									haku.Parent = dragon
									haku.CFrame = dragon.CFrame * angles(0,rad(90),0)
									haku.Size = vect3(0.001,0.001,0.001)
									haku.Anchored = true
									haku.CanCollide = false
									haku.Locked = true
									haku.BrickColor = bc("Really black")
									hakum.Parent = haku
									hakum.MeshId = "rbxassetid://448330007"
									hakum.Scale = vect3(0.225, 0.225, 0.225)
									hakum.MeshType = Enum.MeshType.FileMesh
									local hakusaw = new("Sound")
									hakusaw.SoundId = "rbxassetid://5347824216"
									hakusaw.Volume = 1.5
									hakusaw.Looped = true
									hakusaw.Parent = haku
									hakusaw:Play()
									spawn(function()
										task.wait(4.5)
										doinghakurei = false
									end)
									local radu = 0
									while doinghakurei do
										radu = radu + 15
										haku.CFrame = dragon.CFrame * angles(0,rad(90),rad(-radu))
										magnitudedamage(1,"sphere", 0, 10, 132728561235970, 1.25, 1, haku,true,"slash2","hakurei")
										task.wait(0.025)
									end
									spawn(function()
										for i = 1,4 do
											local firepart = new("Part")
											firepart.Parent = workspace.Terrain
											firepart.Size = vect3(0.001,0.001,0.001)
											firepart.BottomSurface = Enum.SurfaceType.Smooth
											firepart.Anchored = true
											firepart.CanCollide = false
											firepart.CanTouch = false
											firepart.BrickColor = bc("Really black")
											firepart.Locked = true
											firepart.TopSurface = Enum.SurfaceType.Smooth
											firepart.CFrame = dragon.CFrame * cframe(0,0,0.25) * angles(rad(random(-360,360)),rad(random(-360,360)),rad(random(-360,360)))
											spawn(function()
												for i = 1,25 do
													task.wait()
													firepart.CFrame = firepart.CFrame * angles(rad(7.5),rad(7.5),rad(7.5))
													firepart.Transparency = firepart.Transparency + 0.05
													firepart.Size = firepart.Size + vect3(0.6,0.6,0.6)
												end
											end)
											local tween = tweens:Create(firepart, TweenInfo.new(0.45), {Transparency = 1})
											tween:Play()
											tween.Completed:Connect(function() firepart:Destroy() end)
											task.wait(0.075)
										end
									end)
									haku:Destroy()
									task.wait(0.15)
									dragon.Transparency = 0
								end
							elseif dragontype == "kirisame" then
								--DORIEU SPECIAL!!! (a misheard Eddie/Zato-1 line)
								if heatlvl == 1 or holdinge then
									local kiri = new("Part")
									local kirim = new("SpecialMesh")
									kiri.Name = "KirisameDrill"
									kiri.Parent = workspace.Terrain
									kiri.CFrame = dragon.CFrame * cframe(0,-1.5,0) * angles(rad(90),0,0)
									kiri.Size = vect3(0.001,0.001,0.001)
									kiri.Anchored = true
									kiri.CanCollide = false
									kiri.Locked = true
									kiri.BrickColor = bc("Really black")
									kirim.Parent = kiri
									kirim.MeshId = "rbxassetid://15743050445"
									kirim.Scale = vect3(1.5,1.5,1.5)
									kirim.MeshType = Enum.MeshType.FileMesh
									local kiridrill = new("Sound")
									kiridrill.SoundId = "rbxassetid://7501385270"
									kiridrill.Volume = 1
									kiridrill.Looped = true
									kiridrill.Parent = kiri
									kiridrill:Play()
									local kirip = new("ParticleEmitter")
									kirip.Name = "Dust"
									kirip.Parent = kiri
									kirip.Speed = NumberRange.new(22, 22)
									kirip.Rotation = NumberRange.new(1, 180)
									kirip.Color = ColorSequence.new(color(0, 0, 0),color(0.447059, 0.231373, 0.705882))
									kirip.LightInfluence = 1
									kirip.Texture = "rbxassetid://12098538418"
									kirip.Transparency = NumberSequence.new(0.800000011920929,1)
									kirip.ZOffset = 3
									kirip.Size = NumberSequence.new(1.5,15)
									kirip.Drag = 0.10000000149011612
									kirip.EmissionDirection = Enum.NormalId.Back
									kirip.Lifetime = NumberRange.new(0.5, 0.5)
									kirip.LockedToPart = false
									kirip.Rate = 100
									kirip.RotSpeed = NumberRange.new(1, 180)
									kirip.SpreadAngle = vect2(-20, -20)
									kirip.VelocitySpread = -20
									dragon.Parent = nil
									local radu = 0
									for i = 1,25 do
										radu = radu + 5
										kiri.CFrame = kiri.CFrame * cframe(0,0,-0.75) * angles(0,0,rad(-radu))
										magnitudedamage(0.25,"sphere", 0, 6.66, 110267518415530, 1, 1, kiri,true,"slash2","kirisame")
										task.wait(0.025)
									end
									kirip.Enabled = false
									kiridrill:Destroy()
									kiri.Anchored = false
									dragon.Transparency = 1
									dragon.Parent = workspace.Terrain
									dragonsummoned = false
								elseif heatlvl == 2 then
									if heat > 100 then
										heat = heat - 100
									end
									heatlvl = 1
									local kiri = new("Part")
									local kirim = new("SpecialMesh")
									kiri.Name = "KirisameDrill"
									kiri.Parent = workspace.Terrain
									kiri.CFrame = dragon.CFrame * cframe(0,-1.5,0) * angles(rad(90),0,0)
									kiri.Size = vect3(0.001,0.001,0.001)
									kiri.Anchored = true
									kiri.CanCollide = false
									kiri.Locked = true
									kiri.BrickColor = bc("Really black")
									kirim.Parent = kiri
									kirim.MeshId = "rbxassetid://15743050445"
									kirim.Scale = vect3(3,3,3)
									kirim.MeshType = Enum.MeshType.FileMesh
									local kiridrill = new("Sound")
									kiridrill.SoundId = "rbxassetid://7501385270"
									kiridrill.Volume = 1
									kiridrill.Looped = true
									kiridrill.Parent = kiri
									kiridrill:Play()
									local kirip = new("ParticleEmitter")
									kirip.Name = "Dust"
									kirip.Parent = kiri
									kirip.Speed = NumberRange.new(22, 22)
									kirip.Rotation = NumberRange.new(1, 180)
									kirip.Color = ColorSequence.new(color(0, 0, 0),color(0.447059, 0.231373, 0.705882))
									kirip.LightInfluence = 1
									kirip.Texture = "rbxassetid://12098538418"
									kirip.Transparency = NumberSequence.new(0.800000011920929,1)
									kirip.ZOffset = 3
									kirip.Size = NumberSequence.new(1.5,15)
									kirip.Drag = 0.10000000149011612
									kirip.EmissionDirection = Enum.NormalId.Back
									kirip.Lifetime = NumberRange.new(0.5, 0.5)
									kirip.LockedToPart = false
									kirip.Rate = 100
									kirip.RotSpeed = NumberRange.new(1, 180)
									kirip.SpreadAngle = vect2(-20, -20)
									kirip.VelocitySpread = -20
									dragon.Parent = nil
									local radu = 0
									for i = 1,50 do
										radu = radu + 5
										kiri.CFrame = kiri.CFrame * cframe(0,0,-0.75) * angles(0,0,rad(-radu))
										magnitudedamage(0.415,"sphere", 0, 6.66, 110267518415530, 1, 1, kiri,true,"slash2","kirisame1")
										task.wait(0.025)
									end
									kirip.Enabled = false
									kiridrill:Destroy()
									kiri.Anchored = false
									dragon.Transparency = 1
									dragon.Parent = workspace.Terrain
									dragonsummoned = false
								elseif heatlvl == 3 then
									if heat > 100 then
										heat = heat - 200
									end
									heatlvl = 1
									local kiri = new("Part")
									local kirim = new("SpecialMesh")
									kiri.Name = "KirisameDrill"
									kiri.Parent = workspace.Terrain
									kiri.CFrame = dragon.CFrame * cframe(0,-1.5,0) * angles(rad(90),0,0)
									kiri.Size = vect3(0.001,0.001,0.001)
									kiri.Anchored = true
									kiri.CanCollide = false
									kiri.Locked = true
									kiri.BrickColor = bc("Really black")
									kirim.Parent = kiri
									kirim.MeshId = "rbxassetid://15743050445"
									kirim.Scale = vect3(4.5,4.5,4.5)
									kirim.MeshType = Enum.MeshType.FileMesh
									local kiridrill = new("Sound")
									kiridrill.SoundId = "rbxassetid://7501385270"
									kiridrill.Volume = 1
									kiridrill.Looped = true
									kiridrill.Parent = kiri
									kiridrill:Play()
									local kirip = new("ParticleEmitter")
									kirip.Name = "Dust"
									kirip.Parent = kiri
									kirip.Speed = NumberRange.new(22, 22)
									kirip.Rotation = NumberRange.new(1, 180)
									kirip.Color = ColorSequence.new(color(0, 0, 0),color(0.447059, 0.231373, 0.705882))
									kirip.LightInfluence = 1
									kirip.Texture = "rbxassetid://12098538418"
									kirip.Transparency = NumberSequence.new(0.800000011920929,1)
									kirip.ZOffset = 3
									kirip.Size = NumberSequence.new(1.5,15)
									kirip.Drag = 0.10000000149011612
									kirip.EmissionDirection = Enum.NormalId.Back
									kirip.Lifetime = NumberRange.new(0.5, 0.5)
									kirip.LockedToPart = false
									kirip.Rate = 100
									kirip.RotSpeed = NumberRange.new(1, 180)
									kirip.SpreadAngle = vect2(-20, -20)
									kirip.VelocitySpread = -20
									dragon.Parent = nil
									local radu = 0
									for i = 1,25 do
										radu = radu + 5
										kiri.CFrame = kiri.CFrame * cframe(0,0,-0.15) * angles(0,0,rad(-radu))
										magnitudedamage(0.5,"sphere", 0, 6.66, 110267518415530, 1, 1, kiri,true,"slash2","kirisame1")
										task.wait(0.025)
									end
									kiri.CFrame = kiri.CFrame angles(rad(90),0,0)
									radu = 0
									for i = 1,50 do
										radu = radu + 1
										kiri.CFrame = kiri.CFrame * angles(0,0,rad(-45))
										magnitudedamage(0.5,"sphere", 0, 6.66, 110267518415530, 1, 1, kiri,true,"slash2","kirisame2")
										task.wait(0.025)
									end
									kirip.Enabled = false
									kiridrill:Destroy()
									kiri.Anchored = false
									dragon.Transparency = 1
									dragon.Parent = workspace.Terrain
									dragonsummoned = false
								end
							elseif dragontype == "hazama" then
								spawn(function()
									for i = 1,2 do
										local firepart = new("Part")
										firepart.Parent = workspace.Terrain
										firepart.Size = vect3(0.001,0.001,0.001)
										firepart.BottomSurface = Enum.SurfaceType.Smooth
										firepart.Anchored = true
										firepart.CanCollide = false
										firepart.CanTouch = false
										firepart.BrickColor = bc("Really black")
										firepart.Locked = true
										firepart.TopSurface = Enum.SurfaceType.Smooth
										firepart.CFrame = dragon.CFrame * cframe(0,0,0.25) * angles(rad(random(-360,360)),rad(random(-360,360)),rad(random(-360,360)))
										sound2(3264793,1,1,firepart,0,false)
										spawn(function()
											for i = 1,25 do
												task.wait()
												firepart.CFrame = firepart.CFrame * angles(rad(7.5),rad(7.5),rad(7.5))
												firepart.Transparency = firepart.Transparency + 0.05
												firepart.Size = firepart.Size + vect3(0.6,0.6,0.6)
											end
										end)
										local tween = tweens:Create(firepart, TweenInfo.new(0.45), {Transparency = 1})
										tween:Play()
										tween.Completed:Connect(function() firepart:Destroy() end)
										task.wait(0.125)
									end
								end)
								if heatlvl == 1 or holdinge then
									local haza = new("Part")
									local hazam = new("SpecialMesh")
									haza.Name = "HazamaShark"
									haza.Parent = workspace.Terrain
									haza.CFrame = dragon.CFrame * angles(rad(45),rad(180),0)
									haza.Size = vect3(0.001,0.001,0.001)
									haza.Anchored = true
									haza.CanCollide = false
									haza.Locked = true
									haza.BrickColor = bc("Really black")
									hazam.Parent = haza
									hazam.MeshId = "rbxassetid://430072846"
									hazam.Scale = vect3(0.075, 0.075, 0.075)
									hazam.MeshType = Enum.MeshType.FileMesh
									dragon.Parent = nil
									for i = 1,10 do
										haza.CFrame = haza.CFrame * cframe(0,-0,1) * angles(0,0,0)
										magnitudedamage(0.5,"sphere", 0, 6.5, 3020149185, 0, 1, haza,true,"slash1","hazama")
										task.wait()
									end
									haza.CFrame = haza.CFrame * angles(rad(45),0,0)
									for i = 1,10 do
										haza.CFrame = haza.CFrame * cframe(0,-0,1) * angles(0,0,0)
										magnitudedamage(0.5,"sphere", 0, 6.5, 3020149185, 0, 1, haza,true,"slash1","hazama2")
										task.wait()
									end
									haza.CFrame = haza.CFrame * angles(rad(45),0,0)
									for i = 1,25 do
										haza.CFrame = haza.CFrame * cframe(0,-0,1) * angles(0,0,0)
										magnitudedamage(0.5,"sphere", 0, 6.5, 3020149185, 0, 1, haza,true,"slash1","hazama3")
										task.wait()
									end
									local tween = tweens:Create(haza, TweenInfo.new(0.5), {Transparency = 1})
									tween:Play()
									tween.Completed:Connect(function() haza:Destroy() end)
									dragon.Transparency = 1
									dragon.Parent = workspace.Terrain
									dragonsummoned = false
								elseif heatlvl == 2 then
									if heat > 100 then
										heat = heat - 100
									end
									heatlvl = 1
									local haza = new("Part")
									local hazam = new("SpecialMesh")
									haza.Name = "HazamaShark"
									haza.Parent = workspace.Terrain
									haza.CFrame = dragon.CFrame * angles(rad(45),rad(180),0)
									haza.Size = vect3(0.001,0.001,0.001)
									haza.Anchored = true
									haza.CanCollide = false
									haza.Locked = true
									haza.BrickColor = bc("Really black")
									hazam.Parent = haza
									hazam.MeshId = "rbxassetid://430072846"
									hazam.Scale = vect3(0.075, 0.075, 0.075)
									hazam.MeshType = Enum.MeshType.FileMesh
									dragon.Parent = nil
									for i = 1,25 do
										haza.CFrame = haza.CFrame * cframe(0,-0,1) * angles(0,0,0)
										magnitudedamage(0.5,"sphere", 0, 6.5, 3020149185, 0, 1, haza,true,"slash1","hazama0")
										task.wait()
									end
									haza.CFrame = haza.CFrame * angles(rad(45),0,0)
									for i = 1,25 do
										haza.CFrame = haza.CFrame * cframe(0,-0,1) * angles(0,0,0)
										magnitudedamage(0.5,"sphere", 0, 6.5, 3020149185, 0, 1, haza,true,"slash1","hazama2")
										task.wait()
									end
									haza.CFrame = haza.CFrame * angles(rad(45),0,0)
									for i = 1,50 do
										haza.CFrame = haza.CFrame * cframe(0,-0,1) * angles(0,0,0)
										magnitudedamage(0.5,"sphere", 0, 6.5, 3020149185, 0, 1, haza,true,"slash1","hazama1")
										task.wait()
									end
									local tween = tweens:Create(haza, TweenInfo.new(0.5), {Transparency = 1})
									tween:Play()
									tween.Completed:Connect(function() haza:Destroy() end)
									dragon.Transparency = 1
									dragon.Parent = workspace.Terrain
									dragonsummoned = false
								elseif heatlvl == 3 then
									if heat > 100 then
										heat = heat - 200
									end
									heatlvl = 1
									local haza = new("Part")
									local hazam = new("SpecialMesh")
									haza.Name = "HazamaShark"
									haza.Parent = workspace.Terrain
									haza.CFrame = dragon.CFrame * angles(rad(45),rad(180),0)
									haza.Size = vect3(0.001,0.001,0.001)
									haza.Anchored = true
									haza.CanCollide = false
									haza.Locked = true
									haza.BrickColor = bc("Really black")
									hazam.Parent = haza
									hazam.MeshId = "rbxassetid://430072846"
									hazam.Scale = vect3(0.075, 0.075, 0.075)
									hazam.MeshType = Enum.MeshType.FileMesh
									dragon.Parent = nil
									for i = 1,50 do
										haza.CFrame = haza.CFrame * cframe(0,-0,1) * angles(0,0,0)
										magnitudedamage(1,"sphere", 0, 6.5, 3020149185, 0, 1, haza,true,"slash1","hazama0")
										task.wait()
									end
									haza.CFrame = haza.CFrame * angles(rad(45),0,0)
									for i = 1,50 do
										haza.CFrame = haza.CFrame * cframe(0,-0,1) * angles(0,0,0)
										magnitudedamage(1,"sphere", 0, 6.5, 3020149185, 0, 1, haza,true,"slash1","hazama2")
										task.wait()
									end
									haza.CFrame = haza.CFrame * angles(rad(45),0,0)
									for i = 1,75 do
										haza.CFrame = haza.CFrame * cframe(0,-0,1) * angles(0,0,0)
										magnitudedamage(0.5,"sphere", 0, 6.5, 3020149185, 0, 1, haza,true,"slash1","hazama1")
										task.wait()
									end
									local tween = tweens:Create(haza, TweenInfo.new(0.5), {Transparency = 1})
									tween:Play()
									tween.Completed:Connect(function() haza:Destroy() end)
									dragon.Transparency = 1
									dragon.Parent = workspace.Terrain
									dragonsummoned = false
								end
							elseif dragontype == "gouda" then
								dragon.Transparency = 1
								dragonsummoned = false
								local goudas = new("Part")
								local goudasm = new("SpecialMesh")
								goudas.Name = "explosion"
								goudas.Parent = char
								goudas.Size = vect3(0.001,0.001,0.001)
								goudas.Anchored = true
								goudas.BrickColor = bc("Black")
								goudas.CanCollide = false
								goudasm.Parent = goudas
								goudasm.MeshId = "rbxasset://fonts/sword.mesh"
								goudas.CFrame = dragon.CFrame * angles(rad(-90),0,0)
								local tweenM = tweens:Create(goudasm,TweenInfo.new(0.25,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Scale = vect3(5,5,5),Offset = vect3(0,0,2.5)})
								tweenM:Play()
								sound(632919727,1.5,1,goudas,0.15,false)
								spawn(function()
									task.wait(0.1)
									magnitudedamage(10, "sphere", 0, 7.5, 89343281, 3, 0.25, goudas,true,"slash2","gouda")
									task.wait(2)
									local tweenM = tweens:Create(goudasm,TweenInfo.new(0.5,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Scale = vect3(0,0,0),Offset = vect3(0,0,-4.5)})
									tweenM:Play()
									tweenM.Completed:Connect(function() goudas:Destroy()end)
								end)
							end
							dragontype = ""
							dragonattack = false
						end
						task.wait()
						if heatlvl == 1 or holdinge then
							dragon.CFrame = dragon.CFrame  * cframe(0,0,-0.5)
						elseif heatlvl == 2 then
							dragon.CFrame = dragon.CFrame  * cframe(0,0,-1)
						elseif heatlvl == 3 then
							dragon.CFrame = dragon.CFrame  * cframe(0,0,-2)
						end
					until dragonsummoned == false
					spawn(function()
						if dragon ~= nil then
							dashp.Enabled = false
							local tween = tweens:Create(dragon, TweenInfo.new(0.25), {Transparency = 1})
							tween:Play()
							for i = 1,5 do
								local randomcolor = random(0,3)
								local firepart = new("Part")
								firepart.Parent = workspace.Terrain
								firepart.Size = vect3(7,6.5,6)
								firepart.BottomSurface = Enum.SurfaceType.Smooth
								firepart.Anchored = true
								firepart.CanCollide = false
								firepart.CanTouch = false
								firepart.BrickColor = bc("Really black")
								firepart.Locked = true
								firepart.TopSurface = Enum.SurfaceType.Smooth
								firepart.CFrame = dragon.CFrame * cframe(0,0,0.25) * angles(rad(random(-360,360)),rad(random(-360,360)),rad(random(-360,360)))
								spawn(function()
									for i = 1,15 do
										wait()
										firepart.CFrame = firepart.CFrame * angles(rad(7.5),rad(7.5),rad(7.5))
										firepart.Transparency = firepart.Transparency + 0.15
										firepart.Size = firepart.Size - vect3(0.3,0.3,0.3)
									end
								end)
								spawn(function()
									wait(0.5)
									debris:AddItem(firepart,2)
								end)
								task.wait(0.05)
							end
							task.wait(1)
							dragon:Destroy()
						end
					end)
				end)
			elseif move == "relocate" then
				if not dragonsummoned then return end
				dragonattack = true
				dragontype = "relocate"
				dragonpos = pos
			elseif move == "rumeiga" then
				if not dragonsummoned then return end
				rumeigacooldown = true
				spawn(function()
					task.wait(9)
					rumeigacooldown = false
				end)
				attack = true
				rt.CFrame = rt.CFrame * cframe(0,0,-1.5)
				gyro.MaxTorque = vect3(0,0,0)
				hum.WalkSpeed = 0
				hum.JumpPower = 0
				hum.JumpHeight = 0
				anim = "summon"
				frame = 1
				chatter(char,"Rumeiga!")
				dragonattack = true
				dragontype = "rumeiga"
				task.wait(0.75)
				if holdinge then
					if heat >= 300 then 
						attack = false
						gyro.MaxTorque = vect3(0,math.huge,0)
						hum.WalkSpeed = ogws
						hum.JumpPower = ogjp
						hum.JumpHeight = ogjh 
						return 
					end
					local pe = new("ParticleEmitter")
					local pe0 = new("ParticleEmitter")
					local pe1 = new("ParticleEmitter")
					pe.Parent = char.Torso
					pe.Speed = NumberRange.new(15, 15)
					pe.Orientation = Enum.ParticleOrientation.VelocityParallel
					pe.Color = ColorSequence.new(color(1, 0.917647, 0),color(0.85098, 1, 0.188235),color(0.419608, 0.952941, 1))
					pe.LightEmission = 1
					pe.LightInfluence = 1
					pe.Texture = "http://www.roblox.com/asset/?id=8268283628"
					pe.Transparency = NumberSequence.new(0,0.19374996423721313,0.987500011920929)
					pe.Size = NumberSequence.new(0.4000000059604645,0.4000000059604645)
					pe.Drag = 7
					pe.Lifetime = NumberRange.new(0, 1.5)
					pe.Rate = 500
					pe.SpreadAngle = vect2(360, 360)
					pe.VelocitySpread = 360
					pe0.Parent = char.Torso
					pe0.Speed = NumberRange.new(0, 20)
					pe0.Rotation = NumberRange.new(-360, 360)
					pe0.Color = ColorSequence.new(color(1, 1, 0.498039),color(0.752941, 1, 0.490196),color(0.666667, 1, 1))
					pe0.LightEmission = 1
					pe0.LightInfluence = 1
					pe0.Texture = "http://www.roblox.com/asset/?id=8177564047"
					pe0.Transparency = NumberSequence.new(1,0,1)
					pe0.Size = NumberSequence.new(0.5624997615814209,0)
					pe0.Shape = Enum.ParticleEmitterShape.Sphere
					pe0.Acceleration = vect3(0, -15, 0)
					pe0.Drag = 10
					pe0.Lifetime = NumberRange.new(0, 1.5)
					pe0.Rate = 1000
					pe0.RotSpeed = NumberRange.new(100, 100)
					pe1.Parent = char.Torso
					pe1.Speed = NumberRange.new(15, 15)
					pe1.Rotation = NumberRange.new(0, 360)
					pe1.Color = ColorSequence.new(color(1, 0.917647, 0),color(0.85098, 1, 0.188235),color(0.419608, 0.952941, 1))
					pe1.LightEmission = 1
					pe1.LightInfluence = 1
					pe1.Texture = "http://www.roblox.com/asset/?id=8177565057"
					pe1.Transparency = NumberSequence.new(0,0.19374996423721313,0.987500011920929)
					pe1.Size = NumberSequence.new(0.30000001192092896,0)
					pe1.Drag = 10
					pe1.Lifetime = NumberRange.new(0, 1.5)
					pe1.Rate = 10000
					pe1.RotSpeed = NumberRange.new(50, 50)
					pe1.SpreadAngle = vect2(360, 360)
					pe1.VelocitySpread = 360
					local sphere = new("Part")
					sphere.Parent = char
					sphere.Name = "YuiEffect"
					sphere.Shape = "Ball"
					sphere.Size = vect3(2.5,2.5,2.5)
					sphere.Transparency = 0.5
					sphere.BrickColor = bc("Cool yellow")
					sphere.Material = "Neon"
					sphere.CanCollide = false
					sphere.Anchored = true
					sphere.CFrame = rt.CFrame
					local tween = tweens:Create(sphere, TweenInfo.new(0.25), {Size = vect3(30,30,30), Transparency = 1, Color = color(1,1,1)})
					tween:Play()
					debris:AddItem(sphere,2)
					sound(1613998698,1.5,1,rt,0.3,false)
					if not inair then
						Tool.Grip = cframe(0, -1, 0, -4.37113883e-08, -0.5, -0.866025388, 0, 0.866025388, -0.5, 1, -2.18556941e-08, -3.78551732e-08)
						anim = "yui"
						if heat < 300 then
							heat = heat + 50
						end
						if heat > 300 then
							heat = 300
						end
						if heat >= 0 and heat < 100 then
							heatlvl = 1
						elseif heat >= 100 and heat < 200 then
							heatlvl = 2
						elseif heat >= 300 then
							heatlvl = 3
						end
						task.wait(0.45)
						pe0.Enabled = false
						pe1.Enabled = false
						pe.Enabled = false
						debris:AddItem(pe,1.5)
						debris:AddItem(pe0,1.5)
						debris:AddItem(pe1,1.5)
						Tool.Grip = cframe(0, -1, 0, -4.37113883e-08, 0, -1, 0, 1, -0, 1, -0, -4.37113883e-08)
					else
						rt.Anchored = true
						Tool.Grip = cframe(0, -1, 0, -4.37113883e-08, -0.5, -0.866025388, 0, 0.866025388, -0.5, 1, -2.18556941e-08, -3.78551732e-08)
						anim = "ayui"
						if heat < 300 then
							heat = heat + 50
						end
						if heat > 300 then
							heat = 300
						end
						if heat >= 0 and heat < 100 then
							heatlvl = 1
						elseif heat >= 100 and heat < 200 then
							heatlvl = 2
						elseif heat >= 300 then
							heatlvl = 3
						end
						task.wait(0.45)
						pe0.Enabled = false
						pe1.Enabled = false
						pe.Enabled = false
						debris:AddItem(pe,1.5)
						debris:AddItem(pe0,1.5)
						debris:AddItem(pe1,1.5)
						rt.Anchored = false
						Tool.Grip = cframe(0, -1, 0, -4.37113883e-08, 0, -1, 0, 1, -0, 1, -0, -4.37113883e-08)
					end
				end
				attack = false
				gyro.MaxTorque = vect3(0,math.huge,0)
				hum.WalkSpeed = ogws
				hum.JumpPower = ogjp
				hum.JumpHeight = ogjh
			elseif move == "korone" then			
				if not dragonsummoned then return end
				koronecooldown = true
				spawn(function()
					task.wait(7.5)
					koronecooldown = false
				end)
				attack = true
				rt.CFrame = rt.CFrame * cframe(0,0,-1.5)
				gyro.MaxTorque = vect3(0,0,0)
				hum.WalkSpeed = 0
				hum.JumpPower = 0
				hum.JumpHeight = 0
				anim = "taunt"
				frame = 2
				chatter(char,"Korone!")
				dragonattack = true
				dragontype = "korone"	
				sound(7122602098,1,0.95,char["Left Arm"],0,false)
				task.wait(0.75)
				if holdinge then
					if heat >= 300 then 
						attack = false
						gyro.MaxTorque = vect3(0,math.huge,0)
						hum.WalkSpeed = ogws
						hum.JumpPower = ogjp
						hum.JumpHeight = ogjh 
						return 
					end
					local pe = new("ParticleEmitter")
					local pe0 = new("ParticleEmitter")
					local pe1 = new("ParticleEmitter")
					pe.Parent = char.Torso
					pe.Speed = NumberRange.new(15, 15)
					pe.Orientation = Enum.ParticleOrientation.VelocityParallel
					pe.Color = ColorSequence.new(color(1, 0.917647, 0),color(0.85098, 1, 0.188235),color(0.419608, 0.952941, 1))
					pe.LightEmission = 1
					pe.LightInfluence = 1
					pe.Texture = "http://www.roblox.com/asset/?id=8268283628"
					pe.Transparency = NumberSequence.new(0,0.19374996423721313,0.987500011920929)
					pe.Size = NumberSequence.new(0.4000000059604645,0.4000000059604645)
					pe.Drag = 7
					pe.Lifetime = NumberRange.new(0, 1.5)
					pe.Rate = 500
					pe.SpreadAngle = vect2(360, 360)
					pe.VelocitySpread = 360
					pe0.Parent = char.Torso
					pe0.Speed = NumberRange.new(0, 20)
					pe0.Rotation = NumberRange.new(-360, 360)
					pe0.Color = ColorSequence.new(color(1, 1, 0.498039),color(0.752941, 1, 0.490196),color(0.666667, 1, 1))
					pe0.LightEmission = 1
					pe0.LightInfluence = 1
					pe0.Texture = "http://www.roblox.com/asset/?id=8177564047"
					pe0.Transparency = NumberSequence.new(1,0,1)
					pe0.Size = NumberSequence.new(0.5624997615814209,0)
					pe0.Shape = Enum.ParticleEmitterShape.Sphere
					pe0.Acceleration = vect3(0, -15, 0)
					pe0.Drag = 10
					pe0.Lifetime = NumberRange.new(0, 1.5)
					pe0.Rate = 1000
					pe0.RotSpeed = NumberRange.new(100, 100)
					pe1.Parent = char.Torso
					pe1.Speed = NumberRange.new(15, 15)
					pe1.Rotation = NumberRange.new(0, 360)
					pe1.Color = ColorSequence.new(color(1, 0.917647, 0),color(0.85098, 1, 0.188235),color(0.419608, 0.952941, 1))
					pe1.LightEmission = 1
					pe1.LightInfluence = 1
					pe1.Texture = "http://www.roblox.com/asset/?id=8177565057"
					pe1.Transparency = NumberSequence.new(0,0.19374996423721313,0.987500011920929)
					pe1.Size = NumberSequence.new(0.30000001192092896,0)
					pe1.Drag = 10
					pe1.Lifetime = NumberRange.new(0, 1.5)
					pe1.Rate = 10000
					pe1.RotSpeed = NumberRange.new(50, 50)
					pe1.SpreadAngle = vect2(360, 360)
					pe1.VelocitySpread = 360
					local sphere = new("Part")
					sphere.Parent = char
					sphere.Name = "YuiEffect"
					sphere.Shape = "Ball"
					sphere.Size = vect3(2.5,2.5,2.5)
					sphere.Transparency = 0.5
					sphere.BrickColor = bc("Cool yellow")
					sphere.Material = "Neon"
					sphere.CanCollide = false
					sphere.Anchored = true
					sphere.CFrame = rt.CFrame
					local tween = tweens:Create(sphere, TweenInfo.new(0.25), {Size = vect3(30,30,30), Transparency = 1, Color = color(1,1,1)})
					tween:Play()
					debris:AddItem(sphere,2)
					sound(1613998698,1.5,1,rt,0.3,false)
					if not inair then
						Tool.Grip = cframe(0, -1, 0, -4.37113883e-08, -0.5, -0.866025388, 0, 0.866025388, -0.5, 1, -2.18556941e-08, -3.78551732e-08)
						anim = "yui"
						if heat < 300 then
							heat = heat + 50
						end
						if heat > 300 then
							heat = 300
						end
						if heat >= 0 and heat < 100 then
							heatlvl = 1
						elseif heat >= 100 and heat < 200 then
							heatlvl = 2
						elseif heat >= 300 then
							heatlvl = 3
						end
						task.wait(0.45)
						pe0.Enabled = false
						pe1.Enabled = false
						pe.Enabled = false
						debris:AddItem(pe,1.5)
						debris:AddItem(pe0,1.5)
						debris:AddItem(pe1,1.5)
						Tool.Grip = cframe(0, -1, 0, -4.37113883e-08, 0, -1, 0, 1, -0, 1, -0, -4.37113883e-08)
					else
						rt.Anchored = true
						Tool.Grip = cframe(0, -1, 0, -4.37113883e-08, -0.5, -0.866025388, 0, 0.866025388, -0.5, 1, -2.18556941e-08, -3.78551732e-08)
						anim = "ayui"
						if heat < 300 then
							heat = heat + 50
						end
						if heat > 300 then
							heat = 300
						end
						if heat >= 0 and heat < 100 then
							heatlvl = 1
						elseif heat >= 100 and heat < 200 then
							heatlvl = 2
						elseif heat >= 300 then
							heatlvl = 3
						end
						task.wait(0.45)
						pe0.Enabled = false
						pe1.Enabled = false
						pe.Enabled = false
						debris:AddItem(pe,1.5)
						debris:AddItem(pe0,1.5)
						debris:AddItem(pe1,1.5)
						rt.Anchored = false
						Tool.Grip = cframe(0, -1, 0, -4.37113883e-08, 0, -1, 0, 1, -0, 1, -0, -4.37113883e-08)
					end
				end
				attack = false
				gyro.MaxTorque = vect3(0,math.huge,0)
				hum.WalkSpeed = ogws
				hum.JumpPower = ogjp
				hum.JumpHeight = ogjh
			elseif move == "hakurei" then			
				if not dragonsummoned then return end
				if heatlvl ~= 3 then
					hakureicooldown = true
					spawn(function()
						task.wait(9)
						hakureicooldown = false
					end)
				end
				attack = true
				rt.CFrame = rt.CFrame * cframe(0,0,-1.5)
				gyro.MaxTorque = vect3(0,0,0)
				hum.WalkSpeed = 0
				hum.JumpPower = 0
				hum.JumpHeight = 0
				anim = "summon"
				frame = 3
				chatter(char,"Hakurei!")
				dragonattack = true
				dragontype = "hakurei"
				task.wait(0.75)
				if holdinge then
					if heat >= 300 then 
						attack = false
						gyro.MaxTorque = vect3(0,math.huge,0)
						hum.WalkSpeed = ogws
						hum.JumpPower = ogjp
						hum.JumpHeight = ogjh 
						return 
					end
					local pe = new("ParticleEmitter")
					local pe0 = new("ParticleEmitter")
					local pe1 = new("ParticleEmitter")
					pe.Parent = char.Torso
					pe.Speed = NumberRange.new(15, 15)
					pe.Orientation = Enum.ParticleOrientation.VelocityParallel
					pe.Color = ColorSequence.new(color(1, 0.917647, 0),color(0.85098, 1, 0.188235),color(0.419608, 0.952941, 1))
					pe.LightEmission = 1
					pe.LightInfluence = 1
					pe.Texture = "http://www.roblox.com/asset/?id=8268283628"
					pe.Transparency = NumberSequence.new(0,0.19374996423721313,0.987500011920929)
					pe.Size = NumberSequence.new(0.4000000059604645,0.4000000059604645)
					pe.Drag = 7
					pe.Lifetime = NumberRange.new(0, 1.5)
					pe.Rate = 500
					pe.SpreadAngle = vect2(360, 360)
					pe.VelocitySpread = 360
					pe0.Parent = char.Torso
					pe0.Speed = NumberRange.new(0, 20)
					pe0.Rotation = NumberRange.new(-360, 360)
					pe0.Color = ColorSequence.new(color(1, 1, 0.498039),color(0.752941, 1, 0.490196),color(0.666667, 1, 1))
					pe0.LightEmission = 1
					pe0.LightInfluence = 1
					pe0.Texture = "http://www.roblox.com/asset/?id=8177564047"
					pe0.Transparency = NumberSequence.new(1,0,1)
					pe0.Size = NumberSequence.new(0.5624997615814209,0)
					pe0.Shape = Enum.ParticleEmitterShape.Sphere
					pe0.Acceleration = vect3(0, -15, 0)
					pe0.Drag = 10
					pe0.Lifetime = NumberRange.new(0, 1.5)
					pe0.Rate = 1000
					pe0.RotSpeed = NumberRange.new(100, 100)
					pe1.Parent = char.Torso
					pe1.Speed = NumberRange.new(15, 15)
					pe1.Rotation = NumberRange.new(0, 360)
					pe1.Color = ColorSequence.new(color(1, 0.917647, 0),color(0.85098, 1, 0.188235),color(0.419608, 0.952941, 1))
					pe1.LightEmission = 1
					pe1.LightInfluence = 1
					pe1.Texture = "http://www.roblox.com/asset/?id=8177565057"
					pe1.Transparency = NumberSequence.new(0,0.19374996423721313,0.987500011920929)
					pe1.Size = NumberSequence.new(0.30000001192092896,0)
					pe1.Drag = 10
					pe1.Lifetime = NumberRange.new(0, 1.5)
					pe1.Rate = 10000
					pe1.RotSpeed = NumberRange.new(50, 50)
					pe1.SpreadAngle = vect2(360, 360)
					pe1.VelocitySpread = 360
					local sphere = new("Part")
					sphere.Parent = char
					sphere.Name = "YuiEffect"
					sphere.Shape = "Ball"
					sphere.Size = vect3(2.5,2.5,2.5)
					sphere.Transparency = 0.5
					sphere.BrickColor = bc("Cool yellow")
					sphere.Material = "Neon"
					sphere.CanCollide = false
					sphere.Anchored = true
					sphere.CFrame = rt.CFrame
					local tween = tweens:Create(sphere, TweenInfo.new(0.25), {Size = vect3(30,30,30), Transparency = 1, Color = color(1,1,1)})
					tween:Play()
					debris:AddItem(sphere,2)
					sound(1613998698,1.5,1,rt,0.3,false)
					if not inair then
						Tool.Grip = cframe(0, -1, 0, -4.37113883e-08, -0.5, -0.866025388, 0, 0.866025388, -0.5, 1, -2.18556941e-08, -3.78551732e-08)
						anim = "yui"
						if heat < 300 then
							heat = heat + 50
						end
						if heat > 300 then
							heat = 300
						end
						if heat >= 0 and heat < 100 then
							heatlvl = 1
						elseif heat >= 100 and heat < 200 then
							heatlvl = 2
						elseif heat >= 300 then
							heatlvl = 3
						end
						task.wait(0.45)
						pe0.Enabled = false
						pe1.Enabled = false
						pe.Enabled = false
						debris:AddItem(pe,1.5)
						debris:AddItem(pe0,1.5)
						debris:AddItem(pe1,1.5)
						Tool.Grip = cframe(0, -1, 0, -4.37113883e-08, 0, -1, 0, 1, -0, 1, -0, -4.37113883e-08)
					else
						rt.Anchored = true
						Tool.Grip = cframe(0, -1, 0, -4.37113883e-08, -0.5, -0.866025388, 0, 0.866025388, -0.5, 1, -2.18556941e-08, -3.78551732e-08)
						anim = "ayui"
						if heat < 300 then
							heat = heat + 50
						end
						if heat > 300 then
							heat = 300
						end
						if heat >= 0 and heat < 100 then
							heatlvl = 1
						elseif heat >= 100 and heat < 200 then
							heatlvl = 2
						elseif heat >= 300 then
							heatlvl = 3
						end
						task.wait(0.45)
						pe0.Enabled = false
						pe1.Enabled = false
						pe.Enabled = false
						debris:AddItem(pe,1.5)
						debris:AddItem(pe0,1.5)
						debris:AddItem(pe1,1.5)
						rt.Anchored = false
						Tool.Grip = cframe(0, -1, 0, -4.37113883e-08, 0, -1, 0, 1, -0, 1, -0, -4.37113883e-08)
					end
				end
				attack = false
				gyro.MaxTorque = vect3(0,math.huge,0)
				hum.WalkSpeed = ogws
				hum.JumpPower = ogjp
				hum.JumpHeight = ogjh
			elseif move == "kirisame" then
				if not dragonsummoned then return end
				kirisamecooldown = true
				spawn(function()
					task.wait(8.5)
					kirisamecooldown = false
				end)
				attack = true
				rt.CFrame = rt.CFrame * cframe(0,0,-1.5)
				gyro.MaxTorque = vect3(0,0,0)
				hum.WalkSpeed = 0
				hum.JumpPower = 0
				hum.JumpHeight = 0
				anim = "summon"
				frame = 2
				chatter(char,"Kirisame!")
				dragonattack = true
				dragontype = "kirisame"
				Tool.Grip = cframe(0, -1, 0, -4.37113883e-08, -0.866025448, -0.49999997, 0, 0.49999997, -0.866025448, 1, -3.78551732e-08, -2.18556924e-08)
				task.wait(0.75)
				Tool.Grip = cframe(0, -1, 0, -4.37113883e-08, 0, -1, 0, 1, -0, 1, -0, -4.37113883e-08)
				if holdinge then
					if heat >= 300 then 
						attack = false
						gyro.MaxTorque = vect3(0,math.huge,0)
						hum.WalkSpeed = ogws
						hum.JumpPower = ogjp
						hum.JumpHeight = ogjh 
						return 
					end
					local pe = new("ParticleEmitter")
					local pe0 = new("ParticleEmitter")
					local pe1 = new("ParticleEmitter")
					pe.Parent = char.Torso
					pe.Speed = NumberRange.new(15, 15)
					pe.Orientation = Enum.ParticleOrientation.VelocityParallel
					pe.Color = ColorSequence.new(color(1, 0.917647, 0),color(0.85098, 1, 0.188235),color(0.419608, 0.952941, 1))
					pe.LightEmission = 1
					pe.LightInfluence = 1
					pe.Texture = "http://www.roblox.com/asset/?id=8268283628"
					pe.Transparency = NumberSequence.new(0,0.19374996423721313,0.987500011920929)
					pe.Size = NumberSequence.new(0.4000000059604645,0.4000000059604645)
					pe.Drag = 7
					pe.Lifetime = NumberRange.new(0, 1.5)
					pe.Rate = 500
					pe.SpreadAngle = vect2(360, 360)
					pe.VelocitySpread = 360
					pe0.Parent = char.Torso
					pe0.Speed = NumberRange.new(0, 20)
					pe0.Rotation = NumberRange.new(-360, 360)
					pe0.Color = ColorSequence.new(color(1, 1, 0.498039),color(0.752941, 1, 0.490196),color(0.666667, 1, 1))
					pe0.LightEmission = 1
					pe0.LightInfluence = 1
					pe0.Texture = "http://www.roblox.com/asset/?id=8177564047"
					pe0.Transparency = NumberSequence.new(1,0,1)
					pe0.Size = NumberSequence.new(0.5624997615814209,0)
					pe0.Shape = Enum.ParticleEmitterShape.Sphere
					pe0.Acceleration = vect3(0, -15, 0)
					pe0.Drag = 10
					pe0.Lifetime = NumberRange.new(0, 1.5)
					pe0.Rate = 1000
					pe0.RotSpeed = NumberRange.new(100, 100)
					pe1.Parent = char.Torso
					pe1.Speed = NumberRange.new(15, 15)
					pe1.Rotation = NumberRange.new(0, 360)
					pe1.Color = ColorSequence.new(color(1, 0.917647, 0),color(0.85098, 1, 0.188235),color(0.419608, 0.952941, 1))
					pe1.LightEmission = 1
					pe1.LightInfluence = 1
					pe1.Texture = "http://www.roblox.com/asset/?id=8177565057"
					pe1.Transparency = NumberSequence.new(0,0.19374996423721313,0.987500011920929)
					pe1.Size = NumberSequence.new(0.30000001192092896,0)
					pe1.Drag = 10
					pe1.Lifetime = NumberRange.new(0, 1.5)
					pe1.Rate = 10000
					pe1.RotSpeed = NumberRange.new(50, 50)
					pe1.SpreadAngle = vect2(360, 360)
					pe1.VelocitySpread = 360
					local sphere = new("Part")
					sphere.Parent = char
					sphere.Name = "YuiEffect"
					sphere.Shape = "Ball"
					sphere.Size = vect3(2.5,2.5,2.5)
					sphere.Transparency = 0.5
					sphere.BrickColor = bc("Cool yellow")
					sphere.Material = "Neon"
					sphere.CanCollide = false
					sphere.Anchored = true
					sphere.CFrame = rt.CFrame
					local tween = tweens:Create(sphere, TweenInfo.new(0.25), {Size = vect3(30,30,30), Transparency = 1, Color = color(1,1,1)})
					tween:Play()
					debris:AddItem(sphere,2)
					sound(1613998698,1.5,1,rt,0.3,false)
					if not inair then
						Tool.Grip = cframe(0, -1, 0, -4.37113883e-08, -0.5, -0.866025388, 0, 0.866025388, -0.5, 1, -2.18556941e-08, -3.78551732e-08)
						anim = "yui"
						if heat < 300 then
							heat = heat + 50
						end
						if heat > 300 then
							heat = 300
						end
						if heat >= 0 and heat < 100 then
							heatlvl = 1
						elseif heat >= 100 and heat < 200 then
							heatlvl = 2
						elseif heat >= 300 then
							heatlvl = 3
						end
						task.wait(0.45)
						pe0.Enabled = false
						pe1.Enabled = false
						pe.Enabled = false
						debris:AddItem(pe,1.5)
						debris:AddItem(pe0,1.5)
						debris:AddItem(pe1,1.5)
						Tool.Grip = cframe(0, -1, 0, -4.37113883e-08, 0, -1, 0, 1, -0, 1, -0, -4.37113883e-08)
					else
						rt.Anchored = true
						Tool.Grip = cframe(0, -1, 0, -4.37113883e-08, -0.5, -0.866025388, 0, 0.866025388, -0.5, 1, -2.18556941e-08, -3.78551732e-08)
						anim = "ayui"
						if heat < 300 then
							heat = heat + 50
						end
						if heat > 300 then
							heat = 300
						end
						if heat >= 0 and heat < 100 then
							heatlvl = 1
						elseif heat >= 100 and heat < 200 then
							heatlvl = 2
						elseif heat >= 300 then
							heatlvl = 3
						end
						task.wait(0.45)
						pe0.Enabled = false
						pe1.Enabled = false
						pe.Enabled = false
						debris:AddItem(pe,1.5)
						debris:AddItem(pe0,1.5)
						debris:AddItem(pe1,1.5)
						rt.Anchored = false
						Tool.Grip = cframe(0, -1, 0, -4.37113883e-08, 0, -1, 0, 1, -0, 1, -0, -4.37113883e-08)
					end
				end
				attack = false
				gyro.MaxTorque = vect3(0,math.huge,0)
				hum.WalkSpeed = ogws
				hum.JumpPower = ogjp
				hum.JumpHeight = ogjh
			elseif move == "hazama" then
				if not dragonsummoned then return end
				hazamacooldown = true
				spawn(function()
					task.wait(8)
					hazamacooldown = false
				end)
				attack = true
				rt.CFrame = rt.CFrame * cframe(0,0,-1.5)
				gyro.MaxTorque = vect3(0,0,0)
				hum.WalkSpeed = 0
				hum.JumpPower = 0
				hum.JumpHeight = 0
				anim = "summon"
				frame = 4
				chatter(char,"Hazama!")
				dragonattack = true
				dragontype = "hazama"
				task.wait(0.75)
				if holdinge then
					if heat >= 300 then 
						attack = false
						gyro.MaxTorque = vect3(0,math.huge,0)
						hum.WalkSpeed = ogws
						hum.JumpPower = ogjp
						hum.JumpHeight = ogjh 
						return 
					end
					local pe = new("ParticleEmitter")
					local pe0 = new("ParticleEmitter")
					local pe1 = new("ParticleEmitter")
					pe.Parent = char.Torso
					pe.Speed = NumberRange.new(15, 15)
					pe.Orientation = Enum.ParticleOrientation.VelocityParallel
					pe.Color = ColorSequence.new(color(1, 0.917647, 0),color(0.85098, 1, 0.188235),color(0.419608, 0.952941, 1))
					pe.LightEmission = 1
					pe.LightInfluence = 1
					pe.Texture = "http://www.roblox.com/asset/?id=8268283628"
					pe.Transparency = NumberSequence.new(0,0.19374996423721313,0.987500011920929)
					pe.Size = NumberSequence.new(0.4000000059604645,0.4000000059604645)
					pe.Drag = 7
					pe.Lifetime = NumberRange.new(0, 1.5)
					pe.Rate = 500
					pe.SpreadAngle = vect2(360, 360)
					pe.VelocitySpread = 360
					pe0.Parent = char.Torso
					pe0.Speed = NumberRange.new(0, 20)
					pe0.Rotation = NumberRange.new(-360, 360)
					pe0.Color = ColorSequence.new(color(1, 1, 0.498039),color(0.752941, 1, 0.490196),color(0.666667, 1, 1))
					pe0.LightEmission = 1
					pe0.LightInfluence = 1
					pe0.Texture = "http://www.roblox.com/asset/?id=8177564047"
					pe0.Transparency = NumberSequence.new(1,0,1)
					pe0.Size = NumberSequence.new(0.5624997615814209,0)
					pe0.Shape = Enum.ParticleEmitterShape.Sphere
					pe0.Acceleration = vect3(0, -15, 0)
					pe0.Drag = 10
					pe0.Lifetime = NumberRange.new(0, 1.5)
					pe0.Rate = 1000
					pe0.RotSpeed = NumberRange.new(100, 100)
					pe1.Parent = char.Torso
					pe1.Speed = NumberRange.new(15, 15)
					pe1.Rotation = NumberRange.new(0, 360)
					pe1.Color = ColorSequence.new(color(1, 0.917647, 0),color(0.85098, 1, 0.188235),color(0.419608, 0.952941, 1))
					pe1.LightEmission = 1
					pe1.LightInfluence = 1
					pe1.Texture = "http://www.roblox.com/asset/?id=8177565057"
					pe1.Transparency = NumberSequence.new(0,0.19374996423721313,0.987500011920929)
					pe1.Size = NumberSequence.new(0.30000001192092896,0)
					pe1.Drag = 10
					pe1.Lifetime = NumberRange.new(0, 1.5)
					pe1.Rate = 10000
					pe1.RotSpeed = NumberRange.new(50, 50)
					pe1.SpreadAngle = vect2(360, 360)
					pe1.VelocitySpread = 360
					local sphere = new("Part")
					sphere.Parent = char
					sphere.Name = "YuiEffect"
					sphere.Shape = "Ball"
					sphere.Size = vect3(2.5,2.5,2.5)
					sphere.Transparency = 0.5
					sphere.BrickColor = bc("Cool yellow")
					sphere.Material = "Neon"
					sphere.CanCollide = false
					sphere.Anchored = true
					sphere.CFrame = rt.CFrame
					local tween = tweens:Create(sphere, TweenInfo.new(0.25), {Size = vect3(30,30,30), Transparency = 1, Color = color(1,1,1)})
					tween:Play()
					debris:AddItem(sphere,2)
					sound(1613998698,1.5,1,rt,0.3,false)
					if not inair then
						Tool.Grip = cframe(0, -1, 0, -4.37113883e-08, -0.5, -0.866025388, 0, 0.866025388, -0.5, 1, -2.18556941e-08, -3.78551732e-08)
						anim = "yui"
						if heat < 300 then
							heat = heat + 50
						end
						if heat > 300 then
							heat = 300
						end
						if heat >= 0 and heat < 100 then
							heatlvl = 1
						elseif heat >= 100 and heat < 200 then
							heatlvl = 2
						elseif heat >= 300 then
							heatlvl = 3
						end
						task.wait(0.45)
						pe0.Enabled = false
						pe1.Enabled = false
						pe.Enabled = false
						debris:AddItem(pe,1.5)
						debris:AddItem(pe0,1.5)
						debris:AddItem(pe1,1.5)
						Tool.Grip = cframe(0, -1, 0, -4.37113883e-08, 0, -1, 0, 1, -0, 1, -0, -4.37113883e-08)
					else
						rt.Anchored = true
						Tool.Grip = cframe(0, -1, 0, -4.37113883e-08, -0.5, -0.866025388, 0, 0.866025388, -0.5, 1, -2.18556941e-08, -3.78551732e-08)
						anim = "ayui"
						if heat < 300 then
							heat = heat + 50
						end
						if heat > 300 then
							heat = 300
						end
						if heat >= 0 and heat < 100 then
							heatlvl = 1
						elseif heat >= 100 and heat < 200 then
							heatlvl = 2
						elseif heat >= 300 then
							heatlvl = 3
						end
						task.wait(0.45)
						pe0.Enabled = false
						pe1.Enabled = false
						pe.Enabled = false
						debris:AddItem(pe,1.5)
						debris:AddItem(pe0,1.5)
						debris:AddItem(pe1,1.5)
						rt.Anchored = false
						Tool.Grip = cframe(0, -1, 0, -4.37113883e-08, 0, -1, 0, 1, -0, 1, -0, -4.37113883e-08)
					end
				end
				attack = false
				gyro.MaxTorque = vect3(0,math.huge,0)
				hum.WalkSpeed = ogws
				hum.JumpPower = ogjp
				hum.JumpHeight = ogjh
			elseif move == "gouda" then
				if not dragonsummoned then return end
				goudacooldown = true
				spawn(function()
					task.wait(9)
					goudacooldown = false
				end)
				attack = true
				rt.CFrame = rt.CFrame * cframe(0,0,-1.5)
				gyro.MaxTorque = vect3(0,0,0)
				hum.WalkSpeed = 0
				hum.JumpPower = 0
				hum.JumpHeight = 0
				anim = "summon"
				frame = 1
				chatter(char,"Gouda-Yamato!")
				dragonattack = true
				dragontype = "gouda"
				task.wait(0.75)
				if holdinge then
					if heat >= 300 then 
						attack = false
						gyro.MaxTorque = vect3(0,math.huge,0)
						hum.WalkSpeed = ogws
						hum.JumpPower = ogjp
						hum.JumpHeight = ogjh 
						return 
					end
					local pe = new("ParticleEmitter")
					local pe0 = new("ParticleEmitter")
					local pe1 = new("ParticleEmitter")
					pe.Parent = char.Torso
					pe.Speed = NumberRange.new(15, 15)
					pe.Orientation = Enum.ParticleOrientation.VelocityParallel
					pe.Color = ColorSequence.new(color(1, 0.917647, 0),color(0.85098, 1, 0.188235),color(0.419608, 0.952941, 1))
					pe.LightEmission = 1
					pe.LightInfluence = 1
					pe.Texture = "http://www.roblox.com/asset/?id=8268283628"
					pe.Transparency = NumberSequence.new(0,0.19374996423721313,0.987500011920929)
					pe.Size = NumberSequence.new(0.4000000059604645,0.4000000059604645)
					pe.Drag = 7
					pe.Lifetime = NumberRange.new(0, 1.5)
					pe.Rate = 500
					pe.SpreadAngle = vect2(360, 360)
					pe.VelocitySpread = 360
					pe0.Parent = char.Torso
					pe0.Speed = NumberRange.new(0, 20)
					pe0.Rotation = NumberRange.new(-360, 360)
					pe0.Color = ColorSequence.new(color(1, 1, 0.498039),color(0.752941, 1, 0.490196),color(0.666667, 1, 1))
					pe0.LightEmission = 1
					pe0.LightInfluence = 1
					pe0.Texture = "http://www.roblox.com/asset/?id=8177564047"
					pe0.Transparency = NumberSequence.new(1,0,1)
					pe0.Size = NumberSequence.new(0.5624997615814209,0)
					pe0.Shape = Enum.ParticleEmitterShape.Sphere
					pe0.Acceleration = vect3(0, -15, 0)
					pe0.Drag = 10
					pe0.Lifetime = NumberRange.new(0, 1.5)
					pe0.Rate = 1000
					pe0.RotSpeed = NumberRange.new(100, 100)
					pe1.Parent = char.Torso
					pe1.Speed = NumberRange.new(15, 15)
					pe1.Rotation = NumberRange.new(0, 360)
					pe1.Color = ColorSequence.new(color(1, 0.917647, 0),color(0.85098, 1, 0.188235),color(0.419608, 0.952941, 1))
					pe1.LightEmission = 1
					pe1.LightInfluence = 1
					pe1.Texture = "http://www.roblox.com/asset/?id=8177565057"
					pe1.Transparency = NumberSequence.new(0,0.19374996423721313,0.987500011920929)
					pe1.Size = NumberSequence.new(0.30000001192092896,0)
					pe1.Drag = 10
					pe1.Lifetime = NumberRange.new(0, 1.5)
					pe1.Rate = 10000
					pe1.RotSpeed = NumberRange.new(50, 50)
					pe1.SpreadAngle = vect2(360, 360)
					pe1.VelocitySpread = 360
					local sphere = new("Part")
					sphere.Parent = char
					sphere.Name = "YuiEffect"
					sphere.Shape = "Ball"
					sphere.Size = vect3(2.5,2.5,2.5)
					sphere.Transparency = 0.5
					sphere.BrickColor = bc("Cool yellow")
					sphere.Material = "Neon"
					sphere.CanCollide = false
					sphere.Anchored = true
					sphere.CFrame = rt.CFrame
					local tween = tweens:Create(sphere, TweenInfo.new(0.25), {Size = vect3(30,30,30), Transparency = 1, Color = color(1,1,1)})
					tween:Play()
					debris:AddItem(sphere,2)
					sound(1613998698,1.5,1,rt,0.3,false)
					if not inair then
						Tool.Grip = cframe(0, -1, 0, -4.37113883e-08, -0.5, -0.866025388, 0, 0.866025388, -0.5, 1, -2.18556941e-08, -3.78551732e-08)
						anim = "yui"
						if heat < 300 then
							heat = heat + 50
						end
						if heat > 300 then
							heat = 300
						end
						if heat >= 0 and heat < 100 then
							heatlvl = 1
						elseif heat >= 100 and heat < 200 then
							heatlvl = 2
						elseif heat >= 300 then
							heatlvl = 3
						end
						task.wait(0.45)
						pe0.Enabled = false
						pe1.Enabled = false
						pe.Enabled = false
						debris:AddItem(pe,1.5)
						debris:AddItem(pe0,1.5)
						debris:AddItem(pe1,1.5)
						Tool.Grip = cframe(0, -1, 0, -4.37113883e-08, 0, -1, 0, 1, -0, 1, -0, -4.37113883e-08)
					else
						rt.Anchored = true
						Tool.Grip = cframe(0, -1, 0, -4.37113883e-08, -0.5, -0.866025388, 0, 0.866025388, -0.5, 1, -2.18556941e-08, -3.78551732e-08)
						anim = "ayui"
						if heat < 300 then
							heat = heat + 50
						end
						if heat > 300 then
							heat = 300
						end
						if heat >= 0 and heat < 100 then
							heatlvl = 1
						elseif heat >= 100 and heat < 200 then
							heatlvl = 2
						elseif heat >= 300 then
							heatlvl = 3
						end
						task.wait(0.45)
						pe0.Enabled = false
						pe1.Enabled = false
						pe.Enabled = false
						debris:AddItem(pe,1.5)
						debris:AddItem(pe0,1.5)
						debris:AddItem(pe1,1.5)
						rt.Anchored = false
						Tool.Grip = cframe(0, -1, 0, -4.37113883e-08, 0, -1, 0, 1, -0, 1, -0, -4.37113883e-08)
					end
				end
				attack = false
				gyro.MaxTorque = vect3(0,math.huge,0)
				hum.WalkSpeed = ogws
				hum.JumpPower = ogjp
				hum.JumpHeight = ogjh
			elseif move == "fang" then
				--ROCKET!! (yet another misheard Order-Sol line)
				fangcooldown = true
				spawn(function()
					task.wait(8)
					fangcooldown = false
				end)
				attack = true
				rt.CFrame = rt.CFrame * cframe(0,0,-1.5)
				gyro.MaxTorque = vect3(0,0,0)
				hum.WalkSpeed = 0
				hum.JumpPower = 0
				hum.JumpHeight = 0
				anim = "fang"
				frame = 1
				local lines = {
					"Shadow Fang!",
					"Damatirou!", --untranslated line from Order-Sol, don't know what it means
					"DOUKEI!!",  --untranslated line from Order-Sol, don't know what it means
				}
				chatter(char,lines[random(1,#lines)])
				local rocket = true
				task.wait(0.25)
				frame = 2
				local flames = new("ParticleEmitter")
				flames.Parent = char["Left Arm"]
				flames.Speed = NumberRange.new(10, 10)
				flames.Color = ColorSequence.new(color(0.184314, 0.239216, 1),color(0.096024, 0.0796296, 0.597222),color(0, 0, 0))
				flames.LightEmission = 0.5
				flames.LightInfluence = 1
				flames.Texture = "rbxassetid://341300088"
				flames.Transparency = NumberSequence.new(0.3,1)
				flames.Size = NumberSequence.new(1,0)
				flames.Acceleration = vect3(1, 1, 1)
				flames.Lifetime = NumberRange.new(1.5, 1.5)
				flames.Rate = 5000000000
				flames.SpreadAngle = vect2(5, 5)
				flames.VelocitySpread = 5
				sound(2691586,1.25,0.35,char["Left Arm"],0,false)
				spawn(function()
					wait(0.15)
					sound(28257433,1.25,0.5,char["Left Arm"],0,false)
					sound(28144425,1.25,0.25,char["Left Arm"],0,false)
				end)
				local bpos = new("BodyPosition")
				bpos.Parent = rt
				bpos.MaxForce = vect3(math.huge,math.huge,math.huge)
				bpos.D = 1750
				bpos.Position = rt.CFrame * cframe(0,0,-55).Position
				spawn(function()
					while rocket do 
						magnitudedamage(5, "sphere", 0, 11.5, 386946017, 1.15, 1, rt,true,"normal","fang")
						task.wait(0.1)
					end
				end)
				task.wait(0.75)
				rocket = false
				flames.Enabled = false
				debris:AddItem(flames,2)
				if heatlvl == 1 or holdinge then
					bpos:Destroy()
				elseif heatlvl == 2 then
					if heat > 100 then
						heat = heat - 100
					end
					heatlvl = 1
					bpos:Destroy()
					local bpos2 = new("BodyPosition")
					bpos2.Parent = rt
					bpos2.MaxForce = vect3(math.huge,math.huge,math.huge)
					bpos2.D = 2500
					bpos2.Position = rt.CFrame * cframe(0,0,-45).Position
					frame = 3
					task.wait(0.1)
					sound(12222216,1,0.4,Handle,0.425,false)
					trail.Enabled = true
					trail2.Enabled = true	
					frame = 4
					magnitudedamage(7.5, "sphere", 0, 10, 5951832571, 1.5, 1, rt,true,"slash2","fang2")
					task.wait(0.125)
					bpos2:Destroy()
					trail.Enabled = false
					trail2.Enabled = false	
					task.wait(0.125)
				elseif heatlvl == 3 then
					if heat > 100 then
						heat = heat - 200
					end
					heatlvl = 1
					bpos:Destroy()
					local bpos2 = new("BodyPosition")
					bpos2.Parent = rt
					bpos2.MaxForce = vect3(math.huge,math.huge,math.huge)
					bpos2.D = 2750
					bpos2.Position = rt.CFrame * cframe(0,0,-45).Position
					frame = 3
					task.wait(0.1)
					sound(12222216,1,0.4,Handle,0.425,false)
					trail.Enabled = true
					trail2.Enabled = true	
					frame = 4
					magnitudedamage(10, "sphere", 0, 10, 5951832571, 1.5, 1, rt,true,"slash2","fang2")
					task.wait(0.2)
					trail.Enabled = false
					trail2.Enabled = false	
					local fire = new("Fire")
					fire.Parent = char["Left Arm"]
					fire.Size = 6
					fire.Heat = 10
					fire.Color = color(0.0784314, 0.0784314, 0.0784314)
					fire.SecondaryColor = color(0.384314, 0.145098, 0.819608)
					sound(1273117535,4.5,1,char["Left Arm"],0,false)
					frame = 5
					task.wait(0.125)
					frame = 6
					task.wait(0.125)
					sound(7122602098,1,0.65,char["Left Arm"],0,false)
					bpos2:Destroy()
					magnitudedamage(11.5, "boom", 0, 10, 46153268, 1.25, 0.65, rt,true,"burn","fang3")
					frame = 7
					local fpw = new("Part")
					local fpwm = new("SpecialMesh")
					local fp = new("Part")
					local fpm = new("SpecialMesh")
					local fp2 = new("Part")
					local fpm2 = new("SpecialMesh")
					local fpw2 = new("Part")
					local fpwm2 = new("SpecialMesh")
					fpw2.Parent = script
					fpw2.Transparency = 0.05
					fpw2.Size = vect3(1, 1, 1)
					fpw2.Anchored = true
					fpw2.BottomSurface = Enum.SurfaceType.Smooth
					fpw2.BrickColor = bc("Dark indigo")
					fpw2.CanCollide = false
					fpw2.TopSurface = Enum.SurfaceType.Smooth
					fpwm2.Parent = fpw2
					fpwm2.MeshId = "rbxassetid://20329976"
					fpwm2.Scale = vect3(3, 3, 3)
					fpwm2.MeshType = Enum.MeshType.FileMesh
					fpw.Name = "FirePillarWave"
					fpw.Parent = fpw2
					fpw.Transparency = 0.25
					fpw.Size = vect3(1, 1, 1)
					fpw.Anchored = true
					fpw.BottomSurface = Enum.SurfaceType.Smooth
					fpw.BrickColor = bc("Really black")
					fpw.CanCollide = false
					fpw.TopSurface = Enum.SurfaceType.Smooth
					fpwm.Parent = fpw
					fpwm.MeshId = "rbxassetid://20329976"
					fpwm.Scale = vect3(3.5, 3.5, 3.5)
					fpwm.MeshType = Enum.MeshType.FileMesh
					fp.Name = "FirePillar"
					fp.Parent = fpw2
					fp.Transparency = 0.25
					fp.Size = vect3(2.5, 5, 2.5)
					fp.Anchored = true
					fp.BottomSurface = Enum.SurfaceType.Smooth
					fp.BrickColor = bc("Really black")
					fp.CanCollide = false
					fp.TopSurface = Enum.SurfaceType.Smooth
					fpm.Parent = fp
					fpm.MeshType = Enum.MeshType.Sphere
					fp2.Name = "GUN BLADE!!"
					fp2.Parent = fpw2
					fp2.Transparency = 0.05
					fp2.Size = vect3(2, 2.5, 2)
					fp2.Anchored = true
					fp2.BottomSurface = Enum.SurfaceType.Smooth
					fp2.BrickColor = bc("Dark indigo")
					fp2.CanCollide = false
					fp2.TopSurface = Enum.SurfaceType.Smooth
					fpm2.Parent = fp2
					fpm2.MeshType = Enum.MeshType.Sphere
					fpw.Material = "Neon"
					fpw2.Material = "Neon"
					fp.Material = "Neon"
					fp2.Material = "Neon"
					fpw2.CFrame = rt.CFrame * cframe(0,-1.5,-7.5)
					fpw.CFrame = rt.CFrame * cframe(0,-1.5,-7.5)
					fp.CFrame = rt.CFrame * cframe(0,-1.5,-7.5) * angles(rad(-45),0,0)
					fp2.CFrame = rt.CFrame * cframe(0,-1.5,-7.5) * angles(rad(-45),0,0)
					sound(48618802,1.3,1.5,fp,0,false)
					local tween = tweens:Create(fpw2,TweenInfo.new(1,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Transparency = 1})
					tween:Play()
					local tweenM = tweens:Create(fpwm2,TweenInfo.new(1,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Scale = vect3(15,0.05,15),Offset = vect3(0,-1.5,-1)})
					tweenM:Play()
					local tween1 = tweens:Create(fpw,TweenInfo.new(1,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Transparency = 1})
					tween1:Play()
					local tweenM1 = tweens:Create(fpwm,TweenInfo.new(1,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Scale = vect3(17.5,0.025,17.5),Offset = vect3(0,-1.5,-1)})
					tweenM1:Play()
					local tween2 = tweens:Create(fp,TweenInfo.new(1,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{CFrame = fp.CFrame * angles(0,rad(180),0),Size = vect3(3,45,3),Transparency = 1})
					tween2:Play()
					local tween3 = tweens:Create(fp2,TweenInfo.new(1,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{CFrame = fp.CFrame * angles(0,rad(180),0),Size = vect3(2.75,35,2.75),Transparency = 1})
					tween3:Play()
					tween.Completed:Connect(function() fpw2:Destroy()end)
					tween1.Completed:Connect(function() fpw:Destroy() end)
					tween2.Completed:Connect(function() fp:Destroy()end)
					tween3.Completed:Connect(function() fp2:Destroy() end)
					task.wait(0.25)
					fire.Enabled = false
					debris:AddItem(fire,2)
				end
				if holdinge then
					if heat >= 300 then 
						attack = false
						gyro.MaxTorque = vect3(0,math.huge,0)
						hum.WalkSpeed = ogws
						hum.JumpPower = ogjp
						hum.JumpHeight = ogjh 
						return 
					end
					local pe = new("ParticleEmitter")
					local pe0 = new("ParticleEmitter")
					local pe1 = new("ParticleEmitter")
					pe.Parent = char.Torso
					pe.Speed = NumberRange.new(15, 15)
					pe.Orientation = Enum.ParticleOrientation.VelocityParallel
					pe.Color = ColorSequence.new(color(1, 0.917647, 0),color(0.85098, 1, 0.188235),color(0.419608, 0.952941, 1))
					pe.LightEmission = 1
					pe.LightInfluence = 1
					pe.Texture = "http://www.roblox.com/asset/?id=8268283628"
					pe.Transparency = NumberSequence.new(0,0.19374996423721313,0.987500011920929)
					pe.Size = NumberSequence.new(0.4000000059604645,0.4000000059604645)
					pe.Drag = 7
					pe.Lifetime = NumberRange.new(0, 1.5)
					pe.Rate = 500
					pe.SpreadAngle = vect2(360, 360)
					pe.VelocitySpread = 360
					pe0.Parent = char.Torso
					pe0.Speed = NumberRange.new(0, 20)
					pe0.Rotation = NumberRange.new(-360, 360)
					pe0.Color = ColorSequence.new(color(1, 1, 0.498039),color(0.752941, 1, 0.490196),color(0.666667, 1, 1))
					pe0.LightEmission = 1
					pe0.LightInfluence = 1
					pe0.Texture = "http://www.roblox.com/asset/?id=8177564047"
					pe0.Transparency = NumberSequence.new(1,0,1)
					pe0.Size = NumberSequence.new(0.5624997615814209,0)
					pe0.Shape = Enum.ParticleEmitterShape.Sphere
					pe0.Acceleration = vect3(0, -15, 0)
					pe0.Drag = 10
					pe0.Lifetime = NumberRange.new(0, 1.5)
					pe0.Rate = 1000
					pe0.RotSpeed = NumberRange.new(100, 100)
					pe1.Parent = char.Torso
					pe1.Speed = NumberRange.new(15, 15)
					pe1.Rotation = NumberRange.new(0, 360)
					pe1.Color = ColorSequence.new(color(1, 0.917647, 0),color(0.85098, 1, 0.188235),color(0.419608, 0.952941, 1))
					pe1.LightEmission = 1
					pe1.LightInfluence = 1
					pe1.Texture = "http://www.roblox.com/asset/?id=8177565057"
					pe1.Transparency = NumberSequence.new(0,0.19374996423721313,0.987500011920929)
					pe1.Size = NumberSequence.new(0.30000001192092896,0)
					pe1.Drag = 10
					pe1.Lifetime = NumberRange.new(0, 1.5)
					pe1.Rate = 10000
					pe1.RotSpeed = NumberRange.new(50, 50)
					pe1.SpreadAngle = vect2(360, 360)
					pe1.VelocitySpread = 360
					local sphere = new("Part")
					sphere.Parent = char
					sphere.Name = "YuiEffect"
					sphere.Shape = "Ball"
					sphere.Size = vect3(2.5,2.5,2.5)
					sphere.Transparency = 0.5
					sphere.BrickColor = bc("Cool yellow")
					sphere.Material = "Neon"
					sphere.CanCollide = false
					sphere.Anchored = true
					sphere.CFrame = rt.CFrame
					local tween = tweens:Create(sphere, TweenInfo.new(0.25), {Size = vect3(30,30,30), Transparency = 1, Color = color(1,1,1)})
					tween:Play()
					debris:AddItem(sphere,2)
					sound(1613998698,1.5,1,rt,0.3,false)
					if not inair then
						Tool.Grip = cframe(0, -1, 0, -4.37113883e-08, -0.5, -0.866025388, 0, 0.866025388, -0.5, 1, -2.18556941e-08, -3.78551732e-08)
						anim = "yui"
						if heat < 300 then
							heat = heat + 50
						end
						if heat > 300 then
							heat = 300
						end
						if heat >= 0 and heat < 100 then
							heatlvl = 1
						elseif heat >= 100 and heat < 200 then
							heatlvl = 2
						elseif heat >= 300 then
							heatlvl = 3
						end
						task.wait(0.45)
						pe0.Enabled = false
						pe1.Enabled = false
						pe.Enabled = false
						debris:AddItem(pe,1.5)
						debris:AddItem(pe0,1.5)
						debris:AddItem(pe1,1.5)
						Tool.Grip = cframe(0, -1, 0, -4.37113883e-08, 0, -1, 0, 1, -0, 1, -0, -4.37113883e-08)
					else
						rt.Anchored = true
						Tool.Grip = cframe(0, -1, 0, -4.37113883e-08, -0.5, -0.866025388, 0, 0.866025388, -0.5, 1, -2.18556941e-08, -3.78551732e-08)
						anim = "ayui"
						if heat < 300 then
							heat = heat + 50
						end
						if heat > 300 then
							heat = 300
						end
						if heat >= 0 and heat < 100 then
							heatlvl = 1
						elseif heat >= 100 and heat < 200 then
							heatlvl = 2
						elseif heat >= 300 then
							heatlvl = 3
						end
						task.wait(0.45)
						pe0.Enabled = false
						pe1.Enabled = false
						pe.Enabled = false
						debris:AddItem(pe,1.5)
						debris:AddItem(pe0,1.5)
						debris:AddItem(pe1,1.5)
						rt.Anchored = false
						Tool.Grip = cframe(0, -1, 0, -4.37113883e-08, 0, -1, 0, 1, -0, 1, -0, -4.37113883e-08)
					end
				end
				attack = false
				gyro.MaxTorque = vect3(0,math.huge,0)
				hum.WalkSpeed = ogws
				hum.JumpPower = ogjp
				hum.JumpHeight = ogjh
			elseif move == "zero" then
				zerocooldown = true
				spawn(function()
					task.wait(25)
					zerocooldown = false
				end)
				attack = true
				rt.CFrame = rt.CFrame * cframe(0,0,-1.5)
				gyro.MaxTorque = vect3(0,0,0)
				hum.WalkSpeed = 0
				hum.JumpPower = 0
				hum.JumpHeight = 0
				anim = "zero"
				local doingzero = true
				super()
				if heatlvl == 1 or holdinge then
					frame = 1
					task.wait(1)
					frame = 2
					chatter(char,"Zero Wing!")
					Tool.Grip = cframe(0, -1, 0, 0.49999997, -0, -0.866025448, 0, 1, -0, 0.866025448, 0, 0.49999997)
					task.wait(0.1)
					local bpos = new("BodyPosition")
					bpos.Parent = rt
					bpos.MaxForce = vect3(math.huge,math.huge,math.huge)
					bpos.D = 1750
					bpos.Position = rt.CFrame * cframe(0,45,-60).Position
					Tool.Grip = cframe(0, -1, 0, -4.37113883e-08, 0, -1, 0, 1, -0, 1, -0, -4.37113883e-08)
					frame = 3			
					sound(5989940988,1.25,1,Handle,0,false)
					trail.Enabled = true
					trail2.Enabled = true	
					spawn(function()
						while doingzero do
							jin = jin + 1
							task.wait()
						end
					end)
					spawn(function()
						while doingzero do
							magnitudedamage(0.5, "sphere", 0, 10, 107083556408593, 1.25, 1, rt,true,"slash1","wing")
							task.wait(0.015)						
						end
					end)
					task.wait(1.5)
					jin = 0
					doingzero = false
					trail.Enabled = false
					trail2.Enabled = false	
					bpos:Destroy()
				elseif heatlvl == 2 then
					if heat > 100 then
						heat = heat - 100
					end
					heatlvl = 1
					frame = 4
					task.wait(1)
					chatter(char,"Zero...")
					local bpos = new("BodyPosition")
					bpos.Parent = rt
					bpos.MaxForce = vect3(math.huge,math.huge,math.huge)
					bpos.D = 1899
					bpos.Position = rt.CFrame * cframe(0,0,-30).Position
					magnitudedamage(10, "sphere", 0, 10, 386946017, 1.25, 0.8, rt,true,"normal","wing2")
					frame = 5
					task.wait(0.45)
					bpos:Destroy()
					super(1)
					frame = 1
					task.wait(1)
					frame = 2
					Tool.Grip = cframe(0, -1, 0, 0.49999997, -0, -0.866025448, 0, 1, -0, 0.866025448, 0, 0.49999997)
					task.wait(0.1)
					chatter(char,"Wing!")
					Tool.Grip = cframe(0, -1, 0, -4.37113883e-08, 0, -1, 0, 1, -0, 1, -0, -4.37113883e-08)
					local bpos = new("BodyPosition")
					bpos.Parent = rt
					bpos.MaxForce = vect3(math.huge,math.huge,math.huge)
					bpos.D = 2000
					bpos.Position = rt.CFrame * cframe(0,60,-75).Position
					Tool.Grip = cframe(0, -1, 0, -4.37113883e-08, 0, -1, 0, 1, -0, 1, -0, -4.37113883e-08)
					frame = 3
					sound(5989940988,1.25,1,Handle,0,false)
					trail.Enabled = true
					trail2.Enabled = true	
					spawn(function()
						while doingzero do
							jin = jin + 1
							task.wait()
						end
					end)
					spawn(function()
						while doingzero do
							magnitudedamage(1, "sphere", 0, 10, 107083556408593, 1.25, 1, rt,true,"slash1","wing")
							task.wait(0.015)						
						end
					end)
					task.wait(2.5)
					trail.Enabled = false
					trail2.Enabled = false	
					doingzero = false
					bpos:Destroy()
				elseif heatlvl == 3 then
					if heat > 100 then
						heat = heat - 200
					end
					heatlvl = 1
					frame = 4
					task.wait(1)
					chatter(char,"Ze...")
					local bpos = new("BodyPosition")
					bpos.Parent = rt
					bpos.MaxForce = vect3(math.huge,math.huge,math.huge)
					bpos.D = 1899
					bpos.Position = rt.CFrame * cframe(0,0,-30).Position
					magnitudedamage(10, "sphere", 0, 10, 386946017, 1.25, 0.8, rt,true,"normal","wing2")
					frame = 5
					task.wait(0.5)
					bpos:Destroy()
					super(1)
					frame = 6
					task.wait(0.75)
					chatter(char,"ro...")
					local bpos = new("BodyPosition")
					bpos.Parent = rt
					bpos.MaxForce = vect3(math.huge,math.huge,math.huge)
					bpos.D = 2000
					bpos.Position = rt.CFrame * cframe(0,0,-15).Position
					magnitudedamage(11.5,"sphere", 0, 7.5, 107083556408593, 1.25, 1, rt,true,"slash2","wing1")
					trail.Enabled = true
					trail2.Enabled = true	
					frame = 7
					task.wait(0.125)
					frame = 8
					task.wait(0.45)
					trail.Enabled = false
					trail2.Enabled = false	
					bpos:Destroy()
					super(2)
					frame = 1
					task.wait(1)
					frame = 2
					Tool.Grip = cframe(0, -1, 0, 0.49999997, -0, -0.866025448, 0, 1, -0, 0.866025448, 0, 0.49999997)
					task.wait(0.1)
					chatter(char,"Wing!")
					Tool.Grip = cframe(0, -1, 0, -4.37113883e-08, 0, -1, 0, 1, -0, 1, -0, -4.37113883e-08)
					local bpos = new("BodyPosition")
					bpos.Parent = rt
					bpos.MaxForce = vect3(math.huge,math.huge,math.huge)
					bpos.D = 2500
					bpos.Position = rt.CFrame * cframe(0,90,-125).Position
					Tool.Grip = cframe(0, -1, 0, -4.37113883e-08, 0, -1, 0, 1, -0, 1, -0, -4.37113883e-08)
					frame = 3
					sound(5989940988,1.25,0.5,Handle,0,false)
					trail.Enabled = true
					trail2.Enabled = true	
					spawn(function()
						while doingzero do
							jin = jin + 1
							task.wait()
						end
					end)
					spawn(function()
						while doingzero do
							magnitudedamage(2.5, "sphere", 0, 10, 107083556408593, 1.25, 1, rt,true,"slash1","wing")
							task.wait(0.015)						
						end
					end)
					task.wait(4.5)
					trail.Enabled = false
					trail2.Enabled = false	
					doingzero = false
					bpos:Destroy()
				end
				if holdinge then
					if heat >= 300 then 
						attack = false
						gyro.MaxTorque = vect3(0,math.huge,0)
						hum.WalkSpeed = ogws
						hum.JumpPower = ogjp
						hum.JumpHeight = ogjh 
						return 
					end
					local pe = new("ParticleEmitter")
					local pe0 = new("ParticleEmitter")
					local pe1 = new("ParticleEmitter")
					pe.Parent = char.Torso
					pe.Speed = NumberRange.new(15, 15)
					pe.Orientation = Enum.ParticleOrientation.VelocityParallel
					pe.Color = ColorSequence.new(color(1, 0.917647, 0),color(0.85098, 1, 0.188235),color(0.419608, 0.952941, 1))
					pe.LightEmission = 1
					pe.LightInfluence = 1
					pe.Texture = "http://www.roblox.com/asset/?id=8268283628"
					pe.Transparency = NumberSequence.new(0,0.19374996423721313,0.987500011920929)
					pe.Size = NumberSequence.new(0.4000000059604645,0.4000000059604645)
					pe.Drag = 7
					pe.Lifetime = NumberRange.new(0, 1.5)
					pe.Rate = 500
					pe.SpreadAngle = vect2(360, 360)
					pe.VelocitySpread = 360
					pe0.Parent = char.Torso
					pe0.Speed = NumberRange.new(0, 20)
					pe0.Rotation = NumberRange.new(-360, 360)
					pe0.Color = ColorSequence.new(color(1, 1, 0.498039),color(0.752941, 1, 0.490196),color(0.666667, 1, 1))
					pe0.LightEmission = 1
					pe0.LightInfluence = 1
					pe0.Texture = "http://www.roblox.com/asset/?id=8177564047"
					pe0.Transparency = NumberSequence.new(1,0,1)
					pe0.Size = NumberSequence.new(0.5624997615814209,0)
					pe0.Shape = Enum.ParticleEmitterShape.Sphere
					pe0.Acceleration = vect3(0, -15, 0)
					pe0.Drag = 10
					pe0.Lifetime = NumberRange.new(0, 1.5)
					pe0.Rate = 1000
					pe0.RotSpeed = NumberRange.new(100, 100)
					pe1.Parent = char.Torso
					pe1.Speed = NumberRange.new(15, 15)
					pe1.Rotation = NumberRange.new(0, 360)
					pe1.Color = ColorSequence.new(color(1, 0.917647, 0),color(0.85098, 1, 0.188235),color(0.419608, 0.952941, 1))
					pe1.LightEmission = 1
					pe1.LightInfluence = 1
					pe1.Texture = "http://www.roblox.com/asset/?id=8177565057"
					pe1.Transparency = NumberSequence.new(0,0.19374996423721313,0.987500011920929)
					pe1.Size = NumberSequence.new(0.30000001192092896,0)
					pe1.Drag = 10
					pe1.Lifetime = NumberRange.new(0, 1.5)
					pe1.Rate = 10000
					pe1.RotSpeed = NumberRange.new(50, 50)
					pe1.SpreadAngle = vect2(360, 360)
					pe1.VelocitySpread = 360
					local sphere = new("Part")
					sphere.Parent = char
					sphere.Name = "YuiEffect"
					sphere.Shape = "Ball"
					sphere.Size = vect3(2.5,2.5,2.5)
					sphere.Transparency = 0.5
					sphere.BrickColor = bc("Cool yellow")
					sphere.Material = "Neon"
					sphere.CanCollide = false
					sphere.Anchored = true
					sphere.CFrame = rt.CFrame
					local tween = tweens:Create(sphere, TweenInfo.new(0.25), {Size = vect3(30,30,30), Transparency = 1, Color = color(1,1,1)})
					tween:Play()
					debris:AddItem(sphere,2)
					sound(1613998698,1.5,1,rt,0.3,false)
					if not inair then
						Tool.Grip = cframe(0, -1, 0, -4.37113883e-08, -0.5, -0.866025388, 0, 0.866025388, -0.5, 1, -2.18556941e-08, -3.78551732e-08)
						anim = "yui"
						if heat < 300 then
							heat = heat + 50
						end
						if heat > 300 then
							heat = 300
						end
						if heat >= 0 and heat < 100 then
							heatlvl = 1
						elseif heat >= 100 and heat < 200 then
							heatlvl = 2
						elseif heat >= 300 then
							heatlvl = 3
						end
						task.wait(0.45)
						pe0.Enabled = false
						pe1.Enabled = false
						pe.Enabled = false
						debris:AddItem(pe,1.5)
						debris:AddItem(pe0,1.5)
						debris:AddItem(pe1,1.5)
						Tool.Grip = cframe(0, -1, 0, -4.37113883e-08, 0, -1, 0, 1, -0, 1, -0, -4.37113883e-08)
					else
						rt.Anchored = true
						Tool.Grip = cframe(0, -1, 0, -4.37113883e-08, -0.5, -0.866025388, 0, 0.866025388, -0.5, 1, -2.18556941e-08, -3.78551732e-08)
						anim = "ayui"
						if heat < 300 then
							heat = heat + 50
						end
						if heat > 300 then
							heat = 300
						end
						if heat >= 0 and heat < 100 then
							heatlvl = 1
						elseif heat >= 100 and heat < 200 then
							heatlvl = 2
						elseif heat >= 300 then
							heatlvl = 3
						end
						task.wait(0.45)
						pe0.Enabled = false
						pe1.Enabled = false
						pe.Enabled = false
						debris:AddItem(pe,1.5)
						debris:AddItem(pe0,1.5)
						debris:AddItem(pe1,1.5)
						rt.Anchored = false
						Tool.Grip = cframe(0, -1, 0, -4.37113883e-08, 0, -1, 0, 1, -0, 1, -0, -4.37113883e-08)
					end
				end
				attack = false
				gyro.MaxTorque = vect3(0,math.huge,0)
				hum.WalkSpeed = ogws
				hum.JumpPower = ogjp
				hum.JumpHeight = ogjh
			elseif move == "fatal" then
				attack = true
				rt.CFrame = rt.CFrame * cframe(0,0,-1.5)
				gyro.MaxTorque = vect3(0,0,0)
				hum.WalkSpeed = 0
				hum.JumpPower = 0
				hum.JumpHeight = 0
				anim = "fatal"
				frame = 1
				super()
				chatter(char,"I've had enough of this...")
				local targets = {}
				local doingfg = false
				local hastarget = false
				task.wait(1.5)
				frame = 2
				local la = char["Left Arm"]
				sound2(3264793,1.15,1,la,0,false)
				spawn(function()
					for i = 1,25 do
						task.wait(0.025)
						local firepart = new("Part")
						firepart.Parent = script
						firepart.Size = vect3(1.5,1.5,1.5)
						firepart.BottomSurface = Enum.SurfaceType.Smooth
						firepart.Anchored = true
						firepart.CanCollide = false
						firepart.CanTouch = false
						firepart.BrickColor = bc("Really black")
						firepart.Material = Enum.Material.Neon
						firepart.TopSurface = Enum.SurfaceType.Smooth
						firepart.CFrame = la.CFrame * cframe(0,-1.5,0.25) * angles(rad(random(-360,360)),rad(random(-360,360)),rad(random(-360,360)))
						spawn(function()
							for i = 1,25 do
								task.wait()
								firepart.CFrame = firepart.CFrame * angles(rad(7.5),rad(7.5),rad(7.5))
								firepart.Transparency = firepart.Transparency + 0.15
								firepart.Size = firepart.Size - vect3(0.1,0.1,0.1)
							end
						end)
						local tween = tweens:Create(firepart, TweenInfo.new(1), {Transparency = 1})
						tween:Play()
						tween.Completed:Connect(function() firepart:Destroy() end)	
					end
				end)
				local part = new("Part",script)
				part.Name = "HitboxThing"
				part.Transparency = 1
				part.Size = vect3(5, 7.5, 5)
				part.CanCollide = false
				part.Massless = true
				part.Anchored = true
				part.Locked = true
				part.CFrame = rt.CFrame * cframe(0,0,-45)
				debris:AddItem(part,0.15)
				local fatalr = new("Part")
				local fatalrm = new("SpecialMesh")
				local fatalrs = new("Part")
				local fatalrsm = new("SpecialMesh")
				local fatalrs2 = new("Part")
				local fatalrsm2 = new("SpecialMesh")
				local fatalrs1 = new("Part")
				local fatalrsm1 = new("SpecialMesh")
				fatalr.Name = "FatalRing"
				fatalr.Parent = script
				fatalr.Size = vect3(0.001, 0.001, 0.001)
				fatalr.Anchored = true
				fatalr.BrickColor = bc("Really black")
				fatalr.CanCollide = false
				fatalr.CanTouch = false
				fatalrm.Parent = fatalr
				fatalrm.MeshId = "http://www.roblox.com/asset/?id=3270017"
				fatalrm.Scale = vect3(5, 5, 3)
				fatalrm.MeshType = Enum.MeshType.FileMesh
				fatalrs.Name = "FatalSphere"
				fatalrs.BrickColor = bc("Really black")
				fatalrs.Parent = script
				fatalrs.Size = vect3(0.8, 0.8, 0.8)
				fatalrs.Anchored = true
				fatalrs.CanCollide = false
				fatalrs.CanTouch = false
				fatalrsm.Parent = fatalrs
				fatalrsm.MeshType = Enum.MeshType.Sphere
				fatalrs2.Name = "FatalSphere"
				fatalrs2.BrickColor = bc("Really black")
				fatalrs2.Parent = script
				fatalrs2.Transparency = 0.25
				fatalrs2.Size = vect3(2, 2, 2)
				fatalrs2.Anchored = true
				fatalrs2.CanCollide = false
				fatalrs2.CanTouch = false
				fatalrsm2.Parent = fatalrs2
				fatalrsm2.MeshType = Enum.MeshType.Sphere
				fatalrs1.Name = "FatalSphere"
				fatalrs1.Parent = script
				fatalrs1.BrickColor = bc("Really black")
				fatalrs1.Transparency = 0.5
				fatalrs1.Size = vect3(4.5, 4.5, 4.5)
				fatalrs1.Anchored = true
				fatalrs1.CanTouch = false
				fatalrs1.CanCollide = false
				fatalrsm1.Parent = fatalrs1
				fatalrsm1.MeshType = Enum.MeshType.Sphere
				fatalr.CFrame = part.CFrame * angles(rad(90),0,0)
				fatalrs.CFrame = fatalr.CFrame
				fatalrs1.CFrame = fatalr.CFrame
				fatalrs2.CFrame = fatalr.CFrame
				fatalrs.BackSurface = Enum.SurfaceType.SmoothNoOutlines
				fatalrs.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
				fatalrs.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
				fatalrs.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
				fatalrs.RightSurface = Enum.SurfaceType.SmoothNoOutlines
				fatalrs.TopSurface = Enum.SurfaceType.SmoothNoOutlines
				fatalrs.FormFactor = Enum.FormFactor.Custom
				fatalrs2.BackSurface = Enum.SurfaceType.SmoothNoOutlines
				fatalrs2.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
				fatalrs2.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
				fatalrs2.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
				fatalrs2.RightSurface = Enum.SurfaceType.SmoothNoOutlines
				fatalrs2.TopSurface = Enum.SurfaceType.SmoothNoOutlines
				fatalrs2.FormFactor = Enum.FormFactor.Custom
				fatalrs1.BackSurface = Enum.SurfaceType.SmoothNoOutlines
				fatalrs1.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
				fatalrs1.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
				fatalrs1.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
				fatalrs1.RightSurface = Enum.SurfaceType.SmoothNoOutlines
				fatalrs1.TopSurface = Enum.SurfaceType.SmoothNoOutlines
				fatalrs1.FormFactor = Enum.FormFactor.Custom
				fatalr.Material = "Neon"
				fatalrs.Material = "Neon"
				fatalrs1.Material = "Neon"
				fatalrs2.Material = "Neon"
				spawn(function()
					for i = 1,4 do
						local firepart = new("Part")
						firepart.Parent = workspace.Terrain
						firepart.Size = vect3(0.001,0.001,0.001)
						firepart.BottomSurface = Enum.SurfaceType.Smooth
						firepart.Anchored = true
						firepart.CanCollide = false
						firepart.CanTouch = false
						firepart.BrickColor = bc("Really black")
						firepart.Locked = true
						firepart.TopSurface = Enum.SurfaceType.Smooth
						firepart.CFrame = fatalr.CFrame * cframe(0,0,0.25) * angles(rad(random(-360,360)),rad(random(-360,360)),rad(random(-360,360)))
						sound2(3264793,1,1,firepart,0,false)
						spawn(function()
							for i = 1,25 do
								task.wait()
								firepart.CFrame = firepart.CFrame * angles(rad(7.5),rad(7.5),rad(7.5))
								firepart.Transparency = firepart.Transparency + 0.05
								firepart.Size = firepart.Size + vect3(0.6,0.6,0.6)
							end
						end)
						local tween = tweens:Create(firepart, TweenInfo.new(0.45), {Transparency = 1})
						tween:Play()
						tween.Completed:Connect(function() firepart:Destroy() end)
						task.wait(0.035)
					end
				end)
				local tween = tweens:Create(fatalr, TweenInfo.new(0.325, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {Transparency = 1})
				tween:Play()
				local tween0 = tweens:Create(fatalrm, TweenInfo.new(0.325, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {Scale = vect3(45,45,25)})
				tween0:Play()
				local tween1 = tweens:Create(fatalrs, TweenInfo.new(0.325, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {Size = vect3(30, 30, 30),Transparency = 1})
				tween1:Play()
				local tween2 = tweens:Create(fatalrs1, TweenInfo.new(0.325, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {Size = vect3(30, 30, 30),Transparency = 1})
				tween2:Play()
				local tween3 = tweens:Create(fatalrs2, TweenInfo.new(0.325, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {Size = vect3(30, 30, 30),Transparency = 1})
				tween3:Play()
				tween.Completed:Connect(function()
					fatalr.Transparency = 1
					fatalrm:Destroy()
					fatalr:Destroy()
					fatalrs:Destroy()
					fatalrs1:Destroy()
					fatalrs2:Destroy()
				end)
				local gpart = new("Part",script)
				gpart.Name = "GPart"
				gpart.Transparency = 1
				gpart.Size = vect3(5, 7.5, 5)
				gpart.CanCollide = false
				gpart.Massless = true
				gpart.Anchored = true
				gpart.Locked = true
				gpart.CFrame = rt.CFrame * cframe(0,0,-45)
				for i,v in pairs(workspace:GetDescendants()) do
					if v:FindFirstChildOfClass("Humanoid") and v ~= char then
						local vhum = v:FindFirstChildOfClass("Humanoid")
						local vtorso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso") or v:FindFirstChild("HumanoidRootPart")
						if vtorso then
							local vdistance = (vtorso.Position - part.CFrame*cframe(0,0,-1.5).p).magnitude
							if vdistance <= 15 and vhum.Health > 0 then
								doingfg = true
								hastarget = true
								table.insert(targets, v)
								local bpos = new("BodyPosition")
								bpos.Name = "FatalHitBy"
								bpos.Parent = vtorso
								bpos.MaxForce = vect3(39999,39999,39999)
								bpos.D = 750
								bpos.Position = gpart.CFrame * cframe(0,7.5,0).Position
								spawn(function()
									while doingfg do
										task.wait(0.025)
										local firepart = new("Part")
										firepart.Parent = script
										firepart.Size = vect3(3,3,3)
										firepart.BottomSurface = Enum.SurfaceType.Smooth
										firepart.Anchored = true
										firepart.CanCollide = false
										firepart.CanTouch = false
										firepart.BrickColor = bc("Really black")
										firepart.Material = Enum.Material.Neon
										firepart.TopSurface = Enum.SurfaceType.Smooth
										firepart.CFrame = vtorso.CFrame * cframe(0,0,0.25) * angles(rad(random(-360,360)),rad(random(-360,360)),rad(random(-360,360)))
										spawn(function()
											for i = 1,25 do
												task.wait()
												firepart.CFrame = firepart.CFrame * angles(rad(7.5),rad(7.5),rad(7.5))
												firepart.Transparency = firepart.Transparency + 0.15
												firepart.Size = firepart.Size - vect3(0.15,0.15,0.15)
											end
										end)
										local tween = tweens:Create(firepart, TweenInfo.new(1), {Transparency = 1})
										tween:Play()
										tween.Completed:Connect(function() firepart:Destroy() end)	
									end
								end)
							end
						end
					end
				end
				task.wait(0.125)
				if hastarget then
					task.wait(0.5)
					frame = 3
					task.wait(0.5)
					sound(157487812,1.5,0.75,rt,0,false)
					spawn(function()
						for i = 1, #targets do
							coroutine.resume(coroutine.create(function()
								local v = targets[i]
								local vtorso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso") or v:FindFirstChild("HumanoidRootPart")
								if v ~= nil then
									local dashp = new("ParticleEmitter")
									dashp.Name = "Debris"
									dashp.Parent = vtorso
									dashp.Speed = NumberRange.new(22, 22)
									dashp.Rotation = NumberRange.new(1, 360)
									dashp.Color = ColorSequence.new(color(0, 0, 0),color(0.115, 0.115, 0.115))
									dashp.LightInfluence = 1
									dashp.Texture = "rbxassetid://12098538418"
									dashp.Transparency = NumberSequence.new(0.800000011920929,1)
									dashp.ZOffset = 3
									dashp.Size = NumberSequence.new(1.5,15)
									dashp.Drag = 0.10000000149011612
									dashp.EmissionDirection = Enum.NormalId.Back
									dashp.Lifetime = NumberRange.new(0.5, 0.5)
									dashp.Rate = 200
									dashp.RotSpeed = NumberRange.new(1, 360)
									dashp.SpreadAngle = vect2(-20, -20)
									dashp.VelocitySpread = -20
									spawn(function()
										task.wait(0.75)
										dashp.Enabled = false
										debris:AddItem(dashp,1.5)
									end)
								end
							end))
						end
					end)
					gpart:Destroy()
					spawn(function()
						for i = 1, #targets do
							coroutine.resume(coroutine.create(function()
								local v = targets[i]
								local vtorso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso") or v:FindFirstChild("HumanoidRootPart")
								if v ~= nil then
									if vtorso:FindFirstChild("FatalHitBy") then vtorso:FindFirstChild("FatalHitBy").Position = rt.CFrame * cframe(0,4.5,-4.5).Position end
								end
							end))
						end
					end)
					frame = 4
					task.wait(0.25)
					gpart:Destroy()
					spawn(function()
						for i = 1, #targets do
							coroutine.resume(coroutine.create(function()
								local v = targets[i]
								local vtorso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso") or v:FindFirstChild("HumanoidRootPart")
								if v ~= nil then
									if vtorso:FindFirstChild("FatalHitBy") then vtorso:FindFirstChild("FatalHitBy"):Destroy() end
									local bpos = new("BodyPosition")
									bpos.Name = "FatalHitBy"
									bpos.Parent = vtorso
									bpos.MaxForce = vect3(39999,39999,39999)
									bpos.D = 1000
									bpos.Position = rt.CFrame * cframe(0,0.25,-4.5).Position
								end
							end))
						end
					end)
					task.wait(0.5)
					spawn(function()
						for i = 1, #targets do
							coroutine.resume(coroutine.create(function()
								local v = targets[i]
								local vtorso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso") or v:FindFirstChild("HumanoidRootPart")
								if v ~= nil then
									if vtorso:FindFirstChild("FatalHitBy") then vtorso:FindFirstChild("FatalHitBy"):Destroy() end
									local bpos = new("BodyPosition")
									bpos.Name = "FatalHitBy"
									bpos.Parent = vtorso
									bpos.MaxForce = vect3(39999,39999,39999)
									bpos.D = 1000
									bpos.Position = rt.CFrame * cframe(0,0.5,-5).Position
								end
							end))
						end
					end)
					doingfg = false
					trail.Enabled = true
					trail2.Enabled = true	
					if heatlvl == 1 or holdinge then
						anim = "nightmarea"
						Tool.Grip = cframe(0, -1, 0, 4.37113883e-08, -3.82137093e-15, -1, -8.74227766e-08, -1, -0, -1, 8.74227766e-08, -4.37113883e-08)
						frame = 2
						task.wait(0.1)
						frame = 3
						spawn(function()
							for i = 1, #targets do
								coroutine.resume(coroutine.create(function()
									local v = targets[i]
									local vtorso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso") or v:FindFirstChild("HumanoidRootPart")
									local vhum = v:FindFirstChildOfClass("Humanoid")
									if v ~= nil then
										hiteffect("sphere",vtorso)
										sound(153092285,1.5,1,vtorso,0,false)
										if random(0,5) <= 2 then
											sound(7441099080,3,1,vtorso,0,false)
											hiteffect("blood",vtorso)
										end
										if not blazblue then
											if vhum.Health > 6 then
												local creator = new("ObjectValue")
												creator.Name = "creator"
												creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
												creator.Parent = vhum
												debris:AddItem(creator, 2)
												vhum:TakeDamage(6)
											end
										else
											if vhum.Health > 8.7 then
												local creator = new("ObjectValue")
												creator.Name = "creator"
												creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
												creator.Parent = vhum
												debris:AddItem(creator, 2)
												vhum:TakeDamage(8.7)
											end
										end
									end
								end))
							end
						end)
						task.wait(0.225)
						frame = 4
						task.wait(0.1)
						frame = 5
						spawn(function()
							for i = 1, #targets do
								coroutine.resume(coroutine.create(function()
									local v = targets[i]
									local vtorso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso") or v:FindFirstChild("HumanoidRootPart")
									local vhum = v:FindFirstChildOfClass("Humanoid")
									if v ~= nil then
										hiteffect("sphere",vtorso)
										sound(153092285,1.5,1,vtorso,0,false)
										if random(0,5) <= 2 then
											sound(7441099080,3,1,vtorso,0,false)
											hiteffect("blood",vtorso)
										end
										if not blazblue then
											if vhum.Health > 6 then
												local creator = new("ObjectValue")
												creator.Name = "creator"
												creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
												creator.Parent = vhum
												debris:AddItem(creator, 2)
												vhum:TakeDamage(6)
											end
										else
											if vhum.Health > 8.7 then
												local creator = new("ObjectValue")
												creator.Name = "creator"
												creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
												creator.Parent = vhum
												debris:AddItem(creator, 2)
												vhum:TakeDamage(8.7)
											end
										end
									end
								end))
							end
						end)
						task.wait(0.225)
						frame = 6
						task.wait(0.1)
						frame = 7
						spawn(function()
							for i = 1, #targets do
								coroutine.resume(coroutine.create(function()
									local v = targets[i]
									local vtorso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso") or v:FindFirstChild("HumanoidRootPart")
									local vhum = v:FindFirstChildOfClass("Humanoid")
									if v ~= nil then
										hiteffect("sphere",vtorso)
										sound(153092285,1.5,1,vtorso,0,false)
										if random(0,5) <= 2 then
											sound(7441099080,3,1,vtorso,0,false)
											hiteffect("blood",vtorso)
										end
										if not blazblue then
											if vhum.Health > 6 then
												local creator = new("ObjectValue")
												creator.Name = "creator"
												creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
												creator.Parent = vhum
												debris:AddItem(creator, 2)
												vhum:TakeDamage(6)
											end
										else
											if vhum.Health > 8.7 then
												local creator = new("ObjectValue")
												creator.Name = "creator"
												creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
												creator.Parent = vhum
												debris:AddItem(creator, 2)
												vhum:TakeDamage(8.7)
											end
										end
									end
								end))
							end
						end)
						task.wait(0.15)
						frame = 8
						task.wait(0.1)
						anim = "fatal"
						Tool.Grip = cframe(0, -1, 0, 1.31134158e-07, -1, 4.37113883e-08, -3.82137093e-15, 4.37113883e-08, 1, -1, -1.31134158e-07, 1.91068547e-15)
						chatter(char,"Eat this!")
						frame = 5
						task.wait(0.45)
						spawn(function()
							for i = 1, #targets do
								coroutine.resume(coroutine.create(function()
									local v = targets[i]
									local vtorso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso") or v:FindFirstChild("HumanoidRootPart")
									if v ~= nil then
										if vtorso:FindFirstChild("FatalHitBy") then vtorso:FindFirstChild("FatalHitBy"):Destroy() end
									end
								end))
							end
						end)
						magnitudedamage(7.5, "boom", 0.05, 10, 46153268, 1.5, 0.5, rt,true, "burn","tyrant3")
						frame = 6
						task.wait(0.75)
						trail.Enabled = false
						trail2.Enabled = false	
						Tool.Grip = cframe(0, -1, 0, -4.37113883e-08, 0, -1, 0, 1, -0, 1, -0, -4.37113883e-08)
					elseif heatlvl == 2 then
						if heat > 100 then
							heat = heat - 100
						end
						heatlvl = 1
						anim = "nightmarea"
						Tool.Grip = cframe(0, -1, 0, 4.37113883e-08, -3.82137093e-15, -1, -8.74227766e-08, -1, -0, -1, 8.74227766e-08, -4.37113883e-08)
						frame = 2
						task.wait(0.1)
						frame = 3
						spawn(function()
							for i = 1, #targets do
								coroutine.resume(coroutine.create(function()
									local v = targets[i]
									local vtorso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso") or v:FindFirstChild("HumanoidRootPart")
									local vhum = v:FindFirstChildOfClass("Humanoid")
									if v ~= nil then
										hiteffect("sphere",vtorso)
										sound(153092285,1.5,1,vtorso,0,false)
										if random(0,5) <= 2 then
											sound(7441099080,3,1,vtorso,0,false)
											hiteffect("blood",vtorso)
										end
										if not blazblue then
											if vhum.Health > 6 then
												local creator = new("ObjectValue")
												creator.Name = "creator"
												creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
												creator.Parent = vhum
												debris:AddItem(creator, 2)
												vhum:TakeDamage(6)
											end
										else
											if vhum.Health > 8.7 then
												local creator = new("ObjectValue")
												creator.Name = "creator"
												creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
												creator.Parent = vhum
												debris:AddItem(creator, 2)
												vhum:TakeDamage(8.7)
											end
										end
									end
								end))
							end
						end)
						task.wait(0.225)
						frame = 4
						task.wait(0.1)
						frame = 5
						spawn(function()
							for i = 1, #targets do
								coroutine.resume(coroutine.create(function()
									local v = targets[i]
									local vtorso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso") or v:FindFirstChild("HumanoidRootPart")
									local vhum = v:FindFirstChildOfClass("Humanoid")
									if v ~= nil then
										hiteffect("sphere",vtorso)
										sound(153092285,1.5,1,vtorso,0,false)
										if random(0,5) <= 2 then
											sound(7441099080,3,1,vtorso,0,false)
											hiteffect("blood",vtorso)
										end
										if not blazblue then
											if vhum.Health > 6 then
												local creator = new("ObjectValue")
												creator.Name = "creator"
												creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
												creator.Parent = vhum
												debris:AddItem(creator, 2)
												vhum:TakeDamage(6)
											end
										else
											if vhum.Health > 8.7 then
												local creator = new("ObjectValue")
												creator.Name = "creator"
												creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
												creator.Parent = vhum
												debris:AddItem(creator, 2)
												vhum:TakeDamage(8.7)
											end
										end
									end
								end))
							end
						end)
						task.wait(0.225)
						frame = 6
						task.wait(0.1)
						frame = 7
						spawn(function()
							for i = 1, #targets do
								coroutine.resume(coroutine.create(function()
									local v = targets[i]
									local vtorso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso") or v:FindFirstChild("HumanoidRootPart")
									local vhum = v:FindFirstChildOfClass("Humanoid")
									if v ~= nil then
										hiteffect("sphere",vtorso)
										sound(153092285,1.5,1,vtorso,0,false)
										if random(0,5) <= 2 then
											sound(7441099080,3,1,vtorso,0,false)
											hiteffect("blood",vtorso)
										end
										if not blazblue then
											if vhum.Health > 6 then
												local creator = new("ObjectValue")
												creator.Name = "creator"
												creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
												creator.Parent = vhum
												debris:AddItem(creator, 2)
												vhum:TakeDamage(6)
											end
										else
											if vhum.Health > 8.7 then
												local creator = new("ObjectValue")
												creator.Name = "creator"
												creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
												creator.Parent = vhum
												debris:AddItem(creator, 2)
												vhum:TakeDamage(8.7)
											end
										end
									end
								end))
							end
						end)
						task.wait(0.15)
						frame = 8
						task.wait(0.1)
						frame = 3
						spawn(function()
							for i = 1, #targets do
								coroutine.resume(coroutine.create(function()
									local v = targets[i]
									local vtorso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso") or v:FindFirstChild("HumanoidRootPart")
									local vhum = v:FindFirstChildOfClass("Humanoid")
									if v ~= nil then
										hiteffect("sphere",vtorso)
										sound(153092285,1.5,1,vtorso,0,false)
										if random(0,5) <= 2 then
											sound(7441099080,3,1,vtorso,0,false)
											hiteffect("blood",vtorso)
										end
										if not blazblue then
											if vhum.Health > 6 then
												local creator = new("ObjectValue")
												creator.Name = "creator"
												creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
												creator.Parent = vhum
												debris:AddItem(creator, 2)
												vhum:TakeDamage(6)
											end
										else
											if vhum.Health > 8.7 then
												local creator = new("ObjectValue")
												creator.Name = "creator"
												creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
												creator.Parent = vhum
												debris:AddItem(creator, 2)
												vhum:TakeDamage(8.7)
											end
										end
									end
								end))
							end
						end)
						task.wait(0.225)
						frame = 4
						task.wait(0.1)
						frame = 5
						spawn(function()
							for i = 1, #targets do
								coroutine.resume(coroutine.create(function()
									local v = targets[i]
									local vtorso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso") or v:FindFirstChild("HumanoidRootPart")
									local vhum = v:FindFirstChildOfClass("Humanoid")
									if v ~= nil then
										hiteffect("sphere",vtorso)
										sound(153092285,1.5,1,vtorso,0,false)
										if random(0,5) <= 2 then
											sound(7441099080,3,1,vtorso,0,false)
											hiteffect("blood",vtorso)
										end
										if not blazblue then
											if vhum.Health > 6 then
												local creator = new("ObjectValue")
												creator.Name = "creator"
												creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
												creator.Parent = vhum
												debris:AddItem(creator, 2)
												vhum:TakeDamage(6)
											end
										else
											if vhum.Health > 8.7 then
												local creator = new("ObjectValue")
												creator.Name = "creator"
												creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
												creator.Parent = vhum
												debris:AddItem(creator, 2)
												vhum:TakeDamage(8.7)
											end
										end
									end
								end))
							end
						end)
						task.wait(0.225)
						frame = 6
						task.wait(0.1)
						frame = 7
						spawn(function()
							for i = 1, #targets do
								coroutine.resume(coroutine.create(function()
									local v = targets[i]
									local vtorso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso") or v:FindFirstChild("HumanoidRootPart")
									local vhum = v:FindFirstChildOfClass("Humanoid")
									if v ~= nil then
										hiteffect("sphere",vtorso)
										sound(153092285,1.5,1,vtorso,0,false)
										if random(0,5) <= 2 then
											sound(7441099080,3,1,vtorso,0,false)
											hiteffect("blood",vtorso)
										end
										if not blazblue then
											if vhum.Health > 6 then
												local creator = new("ObjectValue")
												creator.Name = "creator"
												creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
												creator.Parent = vhum
												debris:AddItem(creator, 2)
												vhum:TakeDamage(6)
											end
										else
											if vhum.Health > 8.7 then
												local creator = new("ObjectValue")
												creator.Name = "creator"
												creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
												creator.Parent = vhum
												debris:AddItem(creator, 2)
												vhum:TakeDamage(8.7)
											end
										end
									end
								end))
							end
						end)
						task.wait(0.15)
						frame = 8
						task.wait(0.1)
						anim = "fatal"
						Tool.Grip = cframe(0, -1, 0, -4.37113883e-08, 0, -1, 0, 1, -0, 1, -0, -4.37113883e-08)
						frame = 5
						trail.Enabled = false
						trail2.Enabled = false	
						chatter(char,"Sarculous...")
						task.wait(1.25)
						spawn(function()
							for i = 1, #targets do
								coroutine.resume(coroutine.create(function()
									local v = targets[i]
									local vtorso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso") or v:FindFirstChild("HumanoidRootPart")
									if v ~= nil then
										if vtorso:FindFirstChild("FatalHitBy") then vtorso:FindFirstChild("FatalHitBy"):Destroy() end
									end
								end))
							end
						end)
						spawn(function()
							local pos = rt.CFrame
							local direction = pos.lookVector
							for i=1, 5 do
								local posit = pos+(direction*i*8)
								local scrumbpw2 = new("Part")
								local scrumbpwm2 = new("SpecialMesh")
								local scrumbp = new("Part")
								local scrumbpm = new("SpecialMesh")
								local scrumbp2 = new("Part")
								local scrumbpm2 = new("SpecialMesh")
								local scrumbpw = new("Part")
								local scrumbpwm = new("SpecialMesh")
								scrumbpw.Parent = script
								scrumbpw.Transparency = 0.05
								scrumbpw.Size = vect3(1, 1, 1)
								scrumbpw.Anchored = true
								scrumbpw.BottomSurface = Enum.SurfaceType.Smooth
								scrumbpw.BrickColor = bc("Dark indigo")
								scrumbpw.CanCollide = false
								scrumbpw.TopSurface = Enum.SurfaceType.Smooth
								scrumbpwm.Parent = scrumbpw
								scrumbpwm.MeshId = "rbxassetid://20329976"
								scrumbpwm.Scale = vect3(3, 3, 3)
								scrumbpwm.MeshType = Enum.MeshType.FileMesh
								scrumbpw2.Name = "Part1"
								scrumbpw2.Parent = scrumbpw
								scrumbpw2.Color = color(0.768627, 0.156863, 0.109804)
								scrumbpw2.Transparency = 0.25
								scrumbpw2.Size = vect3(1, 1, 1)
								scrumbpw2.Anchored = true
								scrumbpw2.BottomSurface = Enum.SurfaceType.Smooth
								scrumbpw2.BrickColor = bc("Really black")
								scrumbpw2.CanCollide = false
								scrumbpw2.TopSurface = Enum.SurfaceType.Smooth
								scrumbpwm2.Parent = scrumbpw2
								scrumbpwm2.MeshId = "rbxassetid://20329976"
								scrumbpwm2.Scale = vect3(3.5, 3.5, 3.5)
								scrumbpwm2.MeshType = Enum.MeshType.FileMesh
								scrumbp.Name = "scrumbp"
								scrumbp.Parent = scrumbpw
								scrumbp.Transparency = 0.25
								scrumbp.Size = vect3(2.5, 5, 2.5)
								scrumbp.Anchored = true
								scrumbp.BottomSurface = Enum.SurfaceType.Smooth
								scrumbp.BrickColor = bc("Really black")
								scrumbp.CanCollide = false
								scrumbp.TopSurface = Enum.SurfaceType.Smooth
								scrumbpm.Parent = scrumbp
								scrumbpm.MeshType = Enum.MeshType.Sphere
								scrumbp2.Name = "Part3"
								scrumbp2.Parent = scrumbpw
								scrumbp2.Transparency = 0.05
								scrumbp2.Size = vect3(2, 2.5, 2)
								scrumbp2.Anchored = true
								scrumbp2.BottomSurface = Enum.SurfaceType.Smooth
								scrumbp2.BrickColor = bc("Dark indigo")
								scrumbp2.CanCollide = false
								scrumbp2.TopSurface = Enum.SurfaceType.Smooth
								scrumbpm2.Parent = scrumbp2
								scrumbpm2.MeshType = Enum.MeshType.Sphere
								scrumbpw2.Material = "Neon"
								scrumbpw.Material = "Neon"
								scrumbp.Material = "Neon"
								scrumbp2.Material = "Neon"
								scrumbpw.CFrame = cframe(posit.x,posit.y-1.5,posit.z-1.5)
								scrumbpw2.CFrame = cframe(posit.x,posit.y-1.5,posit.z-1.5)
								scrumbp.CFrame = cframe(posit.x,posit.y-1.5,posit.z-1.5) * angles(0,rad(-45),0)
								scrumbp2.CFrame = cframe(posit.x,posit.y-1.5,posit.z-1.5) * angles(0,rad(-45),0)
								if i == 5 then
									magnitudedamage(7.5,"sphere", 0, 11.5, 2248511, 1.5, 1, scrumbp,true,"burn","vortex2")
								else
									magnitudedamage(7.5,"sphere", 0, 11.5, 2248511, 1.5, 1, scrumbp,true,"normal","fatal")
								end
								sound(48618802,1.15,0.75,scrumbp,0,false)
								local tween = tweens:Create(scrumbpw,TweenInfo.new(2,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Transparency = 1})
								tween:Play()
								local tweenM = tweens:Create(scrumbpwm,TweenInfo.new(2,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Scale = vect3(15,0.025,15),Offset = vect3(0,-1.5,-1)})
								tweenM:Play()
								local tween1 = tweens:Create(scrumbpw2,TweenInfo.new(2,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Transparency = 1})
								tween1:Play()
								local tweenM1 = tweens:Create(scrumbpwm2,TweenInfo.new(2,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Scale = vect3(17.5,0.015,17.5),Offset = vect3(0,-1.5,-1)})
								tweenM1:Play()
								local tween2 = tweens:Create(scrumbp,TweenInfo.new(2,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{CFrame = scrumbp.CFrame * CFrame.Angles(0,math.rad(180),0),Size = vect3(7.5,60,7.5),Transparency = 1})
								tween2:Play()
								local tween3 = tweens:Create(scrumbp2,TweenInfo.new(2,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{CFrame = scrumbp.CFrame * CFrame.Angles(0,math.rad(180),0),Size = vect3(5,45,5),Transparency = 1})
								tween3:Play()
								tween.Completed:Connect(function() scrumbpw:Destroy()end)
								tween1.Completed:Connect(function() scrumbpw2:Destroy() end)
								tween2.Completed:Connect(function() scrumbp:Destroy()end)
								tween3.Completed:Connect(function() scrumbp2:Destroy() end)
								task.wait(.125)
							end
						end)
						anim = "redstar"
						frame = 1
						chatter(char,"Crumb!")
						task.wait(0.75)
					elseif heatlvl == 3 then
						if heat > 100 then
							heat = heat - 200
						end
						heatlvl = 1
						local doingfatal = true
						anim = "fatal"
						frame = 9
						super(1)
						chatter(char,"This will hurt!")
						task.wait(1)
						frame = 10
						spawn(function()
							while doingfatal do
								jin = jin + 1
								task.wait()
							end
						end)
						spawn(function()
							while doingfatal do
								spawn(function()
									for i = 1, #targets do
										coroutine.resume(coroutine.create(function()
											local v = targets[i]
											local vtorso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso") or v:FindFirstChild("HumanoidRootPart")
											local vhum = v:FindFirstChildOfClass("Humanoid")
											if v ~= nil then
												hiteffect("sphere",vtorso)
												sound(153092285,1.5,1,vtorso,0,false)
												if random(0,5) <= 2 then
													sound(7441099080,3,1,vtorso,0,false)
													hiteffect("blood",vtorso)
												end
												if not blazblue then
													if vhum.Health > 5 then
														local creator = new("ObjectValue")
														creator.Name = "creator"
														creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
														creator.Parent = vhum
														debris:AddItem(creator, 2)
														vhum:TakeDamage(5)
													end
												else
													if vhum.Health > 7.5 then
														local creator = new("ObjectValue")
														creator.Name = "creator"
														creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
														creator.Parent = vhum
														debris:AddItem(creator, 2)
														vhum:TakeDamage(7.5)
													end
												end
											end
										end))
									end
								end)
								task.wait(0.15)						
							end
						end)
						task.wait(2)
						doingfatal = false
						jin = 0
						anim = "nightmarea"
						frame = 1
						task.wait(0.125)
						anim = "fatal"
						frame = 7
						trail.Enabled = false
						trail2.Enabled = false	
						super(2)
						chatter(char,"This is getting fun!")
						local dragon = new("Part")
						local dragonm = new("SpecialMesh")
						dragon.Name = "Dragon"
						dragon.Parent = script
						dragon.Size = vect3(0.001, 0.001, 0.001)
						dragon.BrickColor = bc("Really black")
						dragon.CanCollide = false
						dragon.CanTouch = false
						dragon.Anchored = true
						dragon.Locked = true
						dragon.Transparency = 1
						dragonm.Name = "DragonMesh"
						dragonm.Parent = dragon
						dragonm.MeshId = "rbxassetid://5472466819"
						dragonm.Scale = vect3(0.25, 0.25, 0.25)
						dragon.CFrame = rt.CFrame * cframe(0,0,7.5)
						tweens:Create(dragon, TweenInfo.new(1.75), {Transparency = 0}):Play()
						local fire = new("Fire")
						fire.Parent = char["Left Arm"]
						fire.Size = 6
						fire.Heat = 10
						fire.Color = color(0.0784314, 0.0784314, 0.0784314)
						fire.SecondaryColor = color(0.384314, 0.145098, 0.819608)
						local fire2 = new("Fire")
						fire2.Parent = char["Right Arm"]
						fire2.Size = 6
						fire2.Heat = 10
						fire2.Color = color(0.0784314, 0.0784314, 0.0784314)
						fire2.SecondaryColor = color(0.384314, 0.145098, 0.819608)
						sound(1273117535,4.5,1,rt,0,false)
						sound(7127123554,3,1,dragon,0,false)
						task.wait(2)
						spawn(function()
							for i = 1, #targets do
								coroutine.resume(coroutine.create(function()
									local v = targets[i]
									local vtorso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso") or v:FindFirstChild("HumanoidRootPart")
									if v ~= nil then
										if vtorso:FindFirstChild("FatalHitBy") then vtorso:FindFirstChild("FatalHitBy"):Destroy() end
									end
								end))
							end
						end)
						spawn(function()
							task.wait(0.15)
							fire.Enabled = false
							fire2.Enabled = false
							debris:AddItem(fire,2.15)
							debris:AddItem(fire2,2.15)
						end)
						spawn(function()
							sound(511715134,2.15,1,dragon,0,false)
							tweens:Create(dragon, TweenInfo.new(0.25), {CFrame = rt.CFrame * cframe(0,0,-15)}):Play()
							sound(157487812,1.75,0.75,dragon,0,false)
							local dashp = new("ParticleEmitter")
							dashp.Name = "Debris"
							dashp.Parent = dragon
							dashp.Speed = NumberRange.new(22, 22)
							dashp.Rotation = NumberRange.new(1, 360)
							dashp.Color = ColorSequence.new(color(0, 0, 0),color(0.447059, 0.231373, 0.705882))
							dashp.LightInfluence = 1
							dashp.Texture = "rbxassetid://12098538418"
							dashp.Transparency = NumberSequence.new(0.800000011920929,1)
							dashp.ZOffset = 3
							dashp.Size = NumberSequence.new(1.5,15)
							dashp.Drag = 0.10000000149011612
							dashp.EmissionDirection = Enum.NormalId.Back
							dashp.Lifetime = NumberRange.new(0.5, 0.5)
							dashp.LockedToPart = false
							dashp.Rate = 200
							dashp.RotSpeed = NumberRange.new(1, 360)
							dashp.SpreadAngle = vect2(-20, -20)
							dashp.VelocitySpread = -20
							task.wait(0.45)
							dashp.Enabled = false
							tweens:Create(dragon, TweenInfo.new(2), {Transparency = 1}):Play()
							debris:AddItem(dragon,2.25)
						end)
						magnitudedamage(30, "boom", 0.05, 10, 46153268, 1.5, 0.5, rt,true, "burn","tyrant3")
						frame = 8
						task.wait(2)
					end
					fatalcooldown = true
					spawn(function()
						task.wait(30)
						fatalcooldown = false
					end)
					if holdinge then
						if heat >= 300 then 
							attack = false
							gyro.MaxTorque = vect3(0,math.huge,0)
							hum.WalkSpeed = ogws
							hum.JumpPower = ogjp
							hum.JumpHeight = ogjh 
							return 
						end
						local pe = new("ParticleEmitter")
						local pe0 = new("ParticleEmitter")
						local pe1 = new("ParticleEmitter")
						pe.Parent = char.Torso
						pe.Speed = NumberRange.new(15, 15)
						pe.Orientation = Enum.ParticleOrientation.VelocityParallel
						pe.Color = ColorSequence.new(color(1, 0.917647, 0),color(0.85098, 1, 0.188235),color(0.419608, 0.952941, 1))
						pe.LightEmission = 1
						pe.LightInfluence = 1
						pe.Texture = "http://www.roblox.com/asset/?id=8268283628"
						pe.Transparency = NumberSequence.new(0,0.19374996423721313,0.987500011920929)
						pe.Size = NumberSequence.new(0.4000000059604645,0.4000000059604645)
						pe.Drag = 7
						pe.Lifetime = NumberRange.new(0, 1.5)
						pe.Rate = 500
						pe.SpreadAngle = vect2(360, 360)
						pe.VelocitySpread = 360
						pe0.Parent = char.Torso
						pe0.Speed = NumberRange.new(0, 20)
						pe0.Rotation = NumberRange.new(-360, 360)
						pe0.Color = ColorSequence.new(color(1, 1, 0.498039),color(0.752941, 1, 0.490196),color(0.666667, 1, 1))
						pe0.LightEmission = 1
						pe0.LightInfluence = 1
						pe0.Texture = "http://www.roblox.com/asset/?id=8177564047"
						pe0.Transparency = NumberSequence.new(1,0,1)
						pe0.Size = NumberSequence.new(0.5624997615814209,0)
						pe0.Shape = Enum.ParticleEmitterShape.Sphere
						pe0.Acceleration = vect3(0, -15, 0)
						pe0.Drag = 10
						pe0.Lifetime = NumberRange.new(0, 1.5)
						pe0.Rate = 1000
						pe0.RotSpeed = NumberRange.new(100, 100)
						pe1.Parent = char.Torso
						pe1.Speed = NumberRange.new(15, 15)
						pe1.Rotation = NumberRange.new(0, 360)
						pe1.Color = ColorSequence.new(color(1, 0.917647, 0),color(0.85098, 1, 0.188235),color(0.419608, 0.952941, 1))
						pe1.LightEmission = 1
						pe1.LightInfluence = 1
						pe1.Texture = "http://www.roblox.com/asset/?id=8177565057"
						pe1.Transparency = NumberSequence.new(0,0.19374996423721313,0.987500011920929)
						pe1.Size = NumberSequence.new(0.30000001192092896,0)
						pe1.Drag = 10
						pe1.Lifetime = NumberRange.new(0, 1.5)
						pe1.Rate = 10000
						pe1.RotSpeed = NumberRange.new(50, 50)
						pe1.SpreadAngle = vect2(360, 360)
						pe1.VelocitySpread = 360
						local sphere = new("Part")
						sphere.Parent = char
						sphere.Name = "YuiEffect"
						sphere.Shape = "Ball"
						sphere.Size = vect3(2.5,2.5,2.5)
						sphere.Transparency = 0.5
						sphere.BrickColor = bc("Cool yellow")
						sphere.Material = "Neon"
						sphere.CanCollide = false
						sphere.Anchored = true
						sphere.CFrame = rt.CFrame
						local tween = tweens:Create(sphere, TweenInfo.new(0.25), {Size = vect3(30,30,30), Transparency = 1, Color = color(1,1,1)})
						tween:Play()
						debris:AddItem(sphere,2)
						sound(1613998698,1.5,1,rt,0.3,false)
						if not inair then
							Tool.Grip = cframe(0, -1, 0, -4.37113883e-08, -0.5, -0.866025388, 0, 0.866025388, -0.5, 1, -2.18556941e-08, -3.78551732e-08)
							anim = "yui"
							if heat < 300 then
								heat = heat + 50
							end
							if heat > 300 then
								heat = 300
							end
							if heat >= 0 and heat < 100 then
								heatlvl = 1
							elseif heat >= 100 and heat < 200 then
								heatlvl = 2
							elseif heat >= 300 then
								heatlvl = 3
							end
							task.wait(0.45)
							pe0.Enabled = false
							pe1.Enabled = false
							pe.Enabled = false
							debris:AddItem(pe,1.5)
							debris:AddItem(pe0,1.5)
							debris:AddItem(pe1,1.5)
							Tool.Grip = cframe(0, -1, 0, -4.37113883e-08, 0, -1, 0, 1, -0, 1, -0, -4.37113883e-08)
						else
							rt.Anchored = true
							Tool.Grip = cframe(0, -1, 0, -4.37113883e-08, -0.5, -0.866025388, 0, 0.866025388, -0.5, 1, -2.18556941e-08, -3.78551732e-08)
							anim = "ayui"
							if heat < 300 then
								heat = heat + 50
							end
							if heat > 300 then
								heat = 300
							end
							if heat >= 0 and heat < 100 then
								heatlvl = 1
							elseif heat >= 100 and heat < 200 then
								heatlvl = 2
							elseif heat >= 300 then
								heatlvl = 3
							end
							task.wait(0.45)
							pe0.Enabled = false
							pe1.Enabled = false
							pe.Enabled = false
							debris:AddItem(pe,1.5)
							debris:AddItem(pe0,1.5)
							debris:AddItem(pe1,1.5)
							rt.Anchored = false
							Tool.Grip = cframe(0, -1, 0, -4.37113883e-08, 0, -1, 0, 1, -0, 1, -0, -4.37113883e-08)
						end
					end
				else
					task.wait(0.5)
					gpart:Destroy()
				end
				attack = false
				gyro.MaxTorque = vect3(0,math.huge,0)
				hum.WalkSpeed = ogws
				hum.JumpPower = ogjp
				hum.JumpHeight = ogjh
			elseif move == "saz" then
				if heatlvl == 1 then return end
				rt.CFrame = rt.CFrame * cframe(0,0,-1.5)
				gyro.MaxTorque = vect3(0,0,0)
				attack = true
				hum.WalkSpeed = 0
				hum.JumpPower = 0
				hum.JumpHeight = 0
				anim = "shade"
				frame = 1
				super()
				local grab = false
				local weld = nil
				local target = nil
				local targeth = nil
				task.wait(1.5)
				anim = "summon"
				frame = 4
				for i,v in pairs(workspace:GetDescendants()) do
					if v:FindFirstChildOfClass("Humanoid") and v ~= char then
						local vhum = v:FindFirstChildOfClass("Humanoid")
						local vtorso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso") or v:FindFirstChild("HumanoidRootPart")
						if vtorso then
							local vdistance = (vtorso.Position - rt.CFrame*cframe(0,0,-1.5).p).magnitude
							if vdistance <= 7.5 and vhum.Health > 0 and not grab then
								grab = true
								sound(46153268,1.15,2,vtorso,0,false)
								hiteffect("grab",vtorso)
								target = vtorso
								targeth = vhum
								weld = new("Weld")
								weld.Parent = rt
								weld.Part0 = rt
								weld.Part1 = target
								weld.Name = "GrabWELD"
								weld.C0 = cframe(0.25, 0, -2.5) * angles(0,rad(-180),0)
								rt.Anchored = true	
							end
						end
					end
				end
				task.wait(0.15)
				if grab == true then
					if heatlvl == 2 then
						if heat > 100 then
							heat = heat - 100
						end
						heatlvl = 1
					elseif heatlvl == 3 then
						if heat > 100 then
							heat = heat - 200
						end
						heatlvl = 1
					end
					task.wait(0.15)
					chatter(char,"Gotcha!")
					anim = "agrab"
					frame = 2
					rt.Anchored = true			
					weld.C0 = cframe(-0.15, 0.25, -5) * angles(rad(-90),rad(180),0)	
					for i = 1 , 50 do
						task.wait()
						rt.CFrame = rt.CFrame * angles(0,rad(45),0)
					end
					debris:AddItem(weld,0.01)
					task.wait(0.01)
					sound(10209850,1.5,0.25,rt,0.175,false)
					anim = "saz"
					frame = 1
					local bpos = new("BodyPosition")
					bpos.Name = "SazHitBy"
					bpos.Parent = target
					bpos.MaxForce = vect3(39999,39999,39999)
					bpos.D = 1000
					bpos.Position = rt.CFrame * cframe(0,75,-5).Position
					task.wait(0.75)
					anim = "zero"
					frame = 1
					chatter(char,"Here we go!")
					task.wait(0.175)
					anim = "saz"
					frame = 2
					rt.Anchored = false	
					local bposu = new("BodyPosition")
					bposu.Name = "SazGo"
					bposu.Parent = rt
					bposu.MaxForce = vect3(39999,39999,39999)
					bposu.D = 1150
					bposu.Position = rt.CFrame * cframe(0,75,-0).Position
					task.wait(1.75)
					anim = "nightmarea"
					Tool.Grip = cframe(0, -1, 0, 4.37113883e-08, -3.82137093e-15, -1, -8.74227766e-08, -1, -0, -1, 8.74227766e-08, -4.37113883e-08)
					frame = 2
					chatter(char,"Saz' Amethyst...")
					task.wait(0.1)
					frame = 3
					hiteffect("sphere",target)
					sound(153092285,1.5,1,target,0,false)
					if random(0,5) <= 2 then
						sound(7441099080,3,1,target,0,false)
						hiteffect("blood",target)
					end
					if not blazblue then
						if targeth.Health > 6 then
							local creator = new("ObjectValue")
							creator.Name = "creator"
							creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
							creator.Parent = targeth
							debris:AddItem(creator, 2)
							targeth:TakeDamage(6)
						end
					else
						if targeth.Health > 8.7 then
							local creator = new("ObjectValue")
							creator.Name = "creator"
							creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
							creator.Parent = targeth
							debris:AddItem(creator, 2)
							targeth:TakeDamage(8.7)
						end
					end
					task.wait(0.225)
					frame = 4
					task.wait(0.1)
					frame = 5
					hiteffect("sphere",target)
					sound(153092285,1.5,1,target,0,false)
					if random(0,5) <= 2 then
						sound(7441099080,3,1,target,0,false)
						hiteffect("blood",target)
					end
					if not blazblue then
						if targeth.Health > 6 then
							local creator = new("ObjectValue")
							creator.Name = "creator"
							creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
							creator.Parent = targeth
							debris:AddItem(creator, 2)
							targeth:TakeDamage(6)
						end
					else
						if targeth.Health > 8.7 then
							local creator = new("ObjectValue")
							creator.Name = "creator"
							creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
							creator.Parent = targeth
							debris:AddItem(creator, 2)
							targeth:TakeDamage(8.7)
						end
					end
					task.wait(0.225)
					frame = 6
					task.wait(0.1)
					frame = 7
					hiteffect("sphere",target)
					sound(153092285,1.5,1,target,0,false)
					if random(0,5) <= 2 then
						sound(7441099080,3,1,target,0,false)
						hiteffect("blood",target)
					end
					if not blazblue then
						if targeth.Health > 6 then
							local creator = new("ObjectValue")
							creator.Name = "creator"
							creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
							creator.Parent = targeth
							debris:AddItem(creator, 2)
							targeth:TakeDamage(6)
						end
					else
						if targeth.Health > 8.7 then
							local creator = new("ObjectValue")
							creator.Name = "creator"
							creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
							creator.Parent = targeth
							debris:AddItem(creator, 2)
							targeth:TakeDamage(8.7)
						end
					end
					task.wait(0.15)
					frame = 8
					task.wait(0.1)
					frame = 3
					hiteffect("sphere",target)
					sound(153092285,1.5,1,target,0,false)
					if random(0,5) <= 2 then
						sound(7441099080,3,1,target,0,false)
						hiteffect("blood",target)
					end
					if not blazblue then
						if targeth.Health > 6 then
							local creator = new("ObjectValue")
							creator.Name = "creator"
							creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
							creator.Parent = targeth
							debris:AddItem(creator, 2)
							targeth:TakeDamage(6)
						end
					else
						if targeth.Health > 8.7 then
							local creator = new("ObjectValue")
							creator.Name = "creator"
							creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
							creator.Parent = targeth
							debris:AddItem(creator, 2)
							targeth:TakeDamage(8.7)
						end
					end
					task.wait(0.225)
					frame = 4
					task.wait(0.1)
					frame = 5
					hiteffect("sphere",target)
					sound(153092285,1.5,1,target,0,false)
					if random(0,5) <= 2 then
						sound(7441099080,3,1,target,0,false)
						hiteffect("blood",target)
					end
					if not blazblue then
						if targeth.Health > 6 then
							local creator = new("ObjectValue")
							creator.Name = "creator"
							creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
							creator.Parent = targeth
							debris:AddItem(creator, 2)
							targeth:TakeDamage(6)
						end
					else
						if targeth.Health > 8.7 then
							local creator = new("ObjectValue")
							creator.Name = "creator"
							creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
							creator.Parent = targeth
							debris:AddItem(creator, 2)
							targeth:TakeDamage(8.7)
						end
					end
					task.wait(0.225)
					frame = 6
					task.wait(0.1)
					frame = 7
					hiteffect("sphere",target)
					sound(153092285,1.5,1,target,0,false)
					if random(0,5) <= 2 then
						sound(7441099080,3,1,target,0,false)
						hiteffect("blood",target)
					end
					if not blazblue then
						if targeth.Health > 6 then
							local creator = new("ObjectValue")
							creator.Name = "creator"
							creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
							creator.Parent = targeth
							debris:AddItem(creator, 2)
							targeth:TakeDamage(6)
						end
					else
						if targeth.Health > 8.7 then
							local creator = new("ObjectValue")
							creator.Name = "creator"
							creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
							creator.Parent = targeth
							debris:AddItem(creator, 2)
							targeth:TakeDamage(8.7)
						end
					end
					task.wait(0.15)
					frame = 8
					task.wait(0.1)
					Tool.Grip = cframe(0, -1, 0, -4.37113883e-08, 0, -1, 0, 1, -0, 1, -0, -4.37113883e-08)
					bposu:Destroy()
					rt.Anchored = true
					anim = "saz"
					frame = 3
					chatter(char,"Death...")
					local fire = new("Fire")
					fire.Parent = char["Left Arm"]
					fire.Size = 6
					fire.Heat = 10
					fire.Color = color(0.0784314, 0.0784314, 0.0784314)
					fire.SecondaryColor = color(0.384314, 0.145098, 0.819608)
					sound(1273117535,4.5,1,char["Left Arm"],0,false)
					task.wait(1.5)
					frame = 4
					chatter(char,"Collider!!")
					hiteffect("boom",target)
					sound(46153268,1.45,0.5,target,0.05,false)
					spawn(function()
						task.wait(0.15)
						fire.Enabled = false
						debris:AddItem(fire,2.25)
					end)
					if target.Parent ~= nil then if target:FindFirstChild("SazHitBy") then target:FindFirstChild("SazHitBy"):Destroy() end end
					target.CFrame = rt.CFrame * cframe(0,0,-4.5) * angles(0,rad(-180),0)
					target.Velocity = rt.CFrame.lookVector*75 + rt.CFrame.upVector * -115
					targeth.PlatformStand = true
					spawn(function()
						wait(3)
						targeth.PlatformStand = false
					end)
					spawn(function()
						local hitfloor
						repeat 
							wait()
							hitfloor = raycast(target.Position, vect3(0, -1, 0), 2+targeth.HipHeight, target.Parent)
						until hitfloor or targeth:GetState() == Enum.HumanoidStateType.Landed
						sound(96730847431500,1.5,1,target,0,false)
						hiteffect("burn",target)
						damage(targeth, 19, 2233908, 2.5, 0.4, target, 0, "boom")
					end)
					task.wait(1.5)
					rt.Anchored = false
					sazcooldown = true
					spawn(function()
						task.wait(45)
						sazcooldown = false
					end)
				else
					task.wait(0.45)
				end
				attack = false
				gyro.MaxTorque = vect3(0,math.huge,0)
				hum.WalkSpeed = ogws
				hum.JumpPower = ogjp
				hum.JumpHeight = ogjh
			elseif move == "overdrive" then
				if blazblue == true then return end
				rt.CFrame = rt.CFrame * cframe(0,0,-1.5)
				gyro.MaxTorque = vect3(0,0,0)
				attack = true
				hum.WalkSpeed = 0
				hum.JumpPower = 0
				hum.JumpHeight = 0
				anim = "overdrive"
				frame = 1
				local torso = char.Torso
				local la = char["Left Arm"]
				chatter(char,"Restriction Zero-Zero-X released...")			
				sound(2101137,1.5,0.05,rt,0,false)
				local beep = new("Sound", rt)
				beep.SoundId = "rbxassetid://34315534"
				beep.Looped = true
				beep.Name = "beepsound"
				beep.PlaybackSpeed = 0.1
				beep.Volume = 3
				beep:Play()
				local doingoverdrive = true		
				spawn(function()
					while doingoverdrive do
						local randc = random(0,3)
						local late = new("Part")
						local latem = new("SpecialMesh")
						local late1 = new("Part")
						local latem1 = new("SpecialMesh")
						local late2 = new("Part")
						local latem2 = new("SpecialMesh")
						late.Name = "Effect"
						late.Parent = workspace.Terrain
						late.Size = vect3(0.001,0.001,0.001)
						late.Anchored = true
						late.BottomSurface = Enum.SurfaceType.Smooth
						if randc == 0 then
							late.BrickColor = bc("Really black")
						elseif randc == 1 then
							late.BrickColor = bc("Black")
						elseif randc == 2 then
							late.BrickColor = bc("Royal purple")
						elseif randc == 3 then
							late.BrickColor = bc("Dark indigo")
						end
						late.CanCollide = false
						late.CanTouch = false
						late.TopSurface = Enum.SurfaceType.Smooth
						late.FormFactor = Enum.FormFactor.Custom
						latem.Parent = late
						latem.MeshId = "http://www.roblox.com/asset/?id=20329976"
						latem.Scale = vect3(11.64, 6.466, 9.138)
						latem.MeshType = Enum.MeshType.FileMesh
						late1.Name = "Effect"
						late1.Parent = workspace.Terrain
						late1.Size = vect3(0.001,0.001,0.001)
						late1.Anchored = true
						late1.BottomSurface = Enum.SurfaceType.Smooth
						if randc == 0 then
							late1.BrickColor = bc("Really black")
						elseif randc == 1 then
							late1.BrickColor = bc("Black")
						elseif randc == 2 then
							late1.BrickColor = bc("Royal purple")
						elseif randc == 3 then
							late1.BrickColor = bc("Dark indigo")
						end
						late1.CanCollide = false
						late1.CanTouch = false
						late1.TopSurface = Enum.SurfaceType.Smooth
						late1.FormFactor = Enum.FormFactor.Custom
						latem1.Parent = late1
						latem1.MeshId = "http://www.roblox.com/asset/?id=20329976"
						latem1.Scale = vect3(17.01546859741211, 3.579, 13.386)
						latem1.MeshType = Enum.MeshType.FileMesh
						late2.Name = "Effect"
						late2.Parent = workspace.Terrain
						late2.Size = vect3(0.001,0.001,0.001)
						late2.CanTouch = false
						late2.Anchored = true
						late2.BottomSurface = Enum.SurfaceType.Smooth
						if randc == 0 then
							late2.BrickColor = bc("Really black")
						elseif randc == 1 then
							late2.BrickColor = bc("Black")
						elseif randc == 2 then
							late2.BrickColor = bc("Royal purple")
						elseif randc == 3 then
							late2.BrickColor = bc("Dark indigo")
						end
						late2.CanCollide = false
						late2.TopSurface = Enum.SurfaceType.Smooth
						late2.FormFactor = Enum.FormFactor.Custom
						latem2.Parent = late2
						latem2.MeshId = "http://www.roblox.com/asset/?id=20329976"
						latem2.Scale = vect3(4.516, 9.501, 4.516)
						latem2.MeshType = Enum.MeshType.FileMesh
						late.CFrame = rt.CFrame * cframe(0,-2.5,0)
						late1.CFrame = rt.CFrame * cframe(0,-2.5,0)
						late2.CFrame = rt.CFrame * cframe(0,-2.5,0)
						local tween = tweens:Create(late, TweenInfo.new(1), {Transparency = 1})
						tween:Play()
						local tween1 = tweens:Create(late1, TweenInfo.new(1), {Transparency = 1})
						tween1:Play()
						local tween2 = tweens:Create(late2, TweenInfo.new(1), {Transparency = 1})
						tween2:Play()
						tweens:Create(latem, TweenInfo.new(1), {Scale = vect3(35, 1, 35), Offset = vect3(0, -3.5, 0)}):Play()
						tweens:Create(latem1, TweenInfo.new(1), {Scale = vect3(45, 0.25, 45), Offset = vect3(0,-1,0)}):Play()
						tweens:Create(latem2, TweenInfo.new(1), {Scale = vect3(25, 1.25, 26), Offset = vect3(0,-5,0)}):Play()
						tween.Completed:Connect(function() late:Destroy() end)
						tween.Completed:Connect(function() late1:Destroy() end)
						tween.Completed:Connect(function() late2:Destroy() end)
						task.wait(0.125)
					end
				end)
				local bbpart =new("Part")
				local bbpartw = new("Weld")
				bbpart.Name = "PART"
				bbpart.Parent = script
				bbpart.Transparency = 1
				bbpart.Size = vect3(0,0,0)
				bbpart.CanCollide = false
				bbpart.CanTouch = false
				bbpart.Locked = true
				bbpartw.Parent = bbpart
				bbpartw.C0 = cframe(0, -1.15, 0, 1, 0, 0, 0, -1, -8.74227766e-08, 0, 8.74227766e-08, -1)
				bbpartw.Part0 = la
				bbpartw.Part1 = bbpart
				local bbfire = new("Fire")
				bbfire.Parent = bbpart
				bbfire.Size = 3.5
				bbfire.Heat = 10
				bbfire.Color = color(0,0,0)
				bbfire.SecondaryColor = Color3.fromRGB(98, 37, 209)
				task.wait(3)
				chatter(char,"Deploying ForceField!")	
				spawn(function()
					local sphere = new("Part")
					sphere.Parent = script
					sphere.Name = "ForceStar"
					sphere.Shape = "Ball"
					sphere.Size = vect3(2.5,2.5,2.5)
					sphere.Transparency = 0
					sphere.BrickColor = bc("Royal purple")
					sphere.Material = "ForceField"
					sphere.CanCollide = false
					sphere.Anchored = true
					sphere.CFrame = rt.CFrame
					local tween = tweens:Create(sphere, TweenInfo.new(3), {Size = vect3(45,45,45), Transparency = 1})
					tween:Play()
					tween.Completed:Connect(function() sphere:Destroy() end)
					sound(2101137,1.5,0.3,rt,0,false)
				end)
				task.wait(3)
				chatter(char,"I'll show you the power of the great Berzei!")
				task.wait(3)
				chatter(char,"BlazBlue...")
				bbfire.Enabled = false
				debris:AddItem(bbpart,1.5)
				frame = 2	
				task.wait(1.5)
				chatter(char,"Activate!")
				frame = 3	
				task.wait(0.25)
				magnitudedamage(0,"sphere", 0, 20, 1064346, 1.15, 1, rt,true,"normal","overdrive")
				local fire = new("Fire", torso)
				fire.Heat = 10
				fire.Size = 15
				fire.Name = "BlazBlueAura"
				fire.Color = Color3.fromRGB(98, 37, 209)
				fire.SecondaryColor = Color3.fromRGB(61, 21, 133)
				local wp = new("Part")
				local wm = new("SpecialMesh")
				wp.Name = "WavePart"
				wp.Parent = script
				wp.Transparency = 0.1
				wp.Size = vect3(0.001,0.001,0.001)
				wp.Anchored = true
				wp.BottomSurface = Enum.SurfaceType.Smooth
				wp.BrickColor = bc("Really black")
				wp.CanCollide = false
				wp.TopSurface = Enum.SurfaceType.Smooth
				wm.Parent = wp
				wm.MeshId = "rbxassetid://20329976"
				wm.Scale = vect3(3.5, 7.5, 3.5)
				wm.MeshType = Enum.MeshType.FileMesh
				local wp2 = new("Part")
				local wm2 = new("SpecialMesh")
				wp2.Name = "WavePart"
				wp2.Parent = wp
				wp2.Transparency = 0.025
				wp2.Size = vect3(0.001,0.001,0.001)
				wp2.Anchored = true
				wp2.BottomSurface = Enum.SurfaceType.Smooth
				wp2.BrickColor = bc("Dark indigo")
				wp2.CanCollide = false
				wp2.TopSurface = Enum.SurfaceType.Smooth
				wm2.Parent = wp2
				wm2.MeshId = "rbxassetid://20329976"
				wm2.Scale = vect3(3, 6, 3)
				wm2.MeshType = Enum.MeshType.FileMesh
				wp.Material = "Neon"
				wp2.Material = "Neon"
				wp.CFrame = rt.CFrame * cframe(0,-1.5,-0.45)
				wp2.CFrame = rt.CFrame * cframe(0,-1.5,-0.45)
				sound2(2760979, 1.5, 0.375, wp, 0,false)
				sound2(2693351, 1.25, 0.85, wp, 0,false)
				local tween = tweens:Create(wp,TweenInfo.new(3.5,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Transparency = 1})
				tween:Play()
				local tweenM = tweens:Create(wm,TweenInfo.new(3.5,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Scale = vect3(15,0.05,15),Offset = vect3(0,-1.5,-1)})
				tweenM:Play()
				local tween1 = tweens:Create(wp2,TweenInfo.new(3.5,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Transparency = 1})
				tween1:Play()
				local tweenM1 = tweens:Create(wm2,TweenInfo.new(3.5,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Scale = vect3(17.5,0.025,17.5),Offset = vect3(0,-1.5,-1)})
				tweenM1:Play()
				tween.Completed:Connect(function() wp:Destroy()end)
				tween1.Completed:Connect(function() wp2:Destroy() end)
				local dp = new("Part")
				local dpm = new("SpecialMesh")
				local dp2 = new("Part")
				local dpm2 = new("SpecialMesh")
				dp.Name = "dp"
				dp.Parent = script
				dp.Transparency = 0.25
				dp.Size = vect3(2.5, 5, 2.5)
				dp.Anchored = true
				dp.BottomSurface = Enum.SurfaceType.Smooth
				dp.BrickColor = bc("Really black")
				dp.CanCollide = false
				dp.TopSurface = Enum.SurfaceType.Smooth
				dpm.Parent = dp
				dpm.MeshType = Enum.MeshType.Sphere
				dp2.Name = "Part3"
				dp2.Parent = dp
				dp2.Transparency = 0.05
				dp2.Size = vect3(2, 2.5, 2)
				dp2.Anchored = true
				dp2.BottomSurface = Enum.SurfaceType.Smooth
				dp2.BrickColor = bc("Dark indigo")
				dp2.CanCollide = false
				dp2.TopSurface = Enum.SurfaceType.Smooth
				dpm2.Parent = dp2
				dpm2.MeshType = Enum.MeshType.Sphere
				dp.Material = "Neon"
				dp2.Material = "Neon"
				dp.CFrame = rt.CFrame * cframe(0,-1.5,0)
				dp2.CFrame = rt.CFrame * cframe(0,-1.5,0)
				sound(6892640563,1.5,1,rt,0,false)
				local tween2 = tweens:Create(dp,TweenInfo.new(2.5,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{CFrame = dp.CFrame * angles(0,rad(180),0),Size = vect3(15,150,15),Transparency = 1})
				tween2:Play()
				local tween3 = tweens:Create(dp2,TweenInfo.new(2.5,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{CFrame = dp.CFrame * angles(0,rad(180),0),Size = vect3(10,120,10),Transparency = 1})
				tween3:Play()
				tween2.Completed:Connect(function() dp:Destroy()end)
				tween3.Completed:Connect(function() dp2:Destroy() end)
				blazblue = true
				spawn(function()
					while doingoverdrive do
						task.wait()
						heatlvl = 3
						heat = 300
					end
				end)
				task.wait(2.5)
				chatter(char,"Let's go!")
				spawn(function()
					task.wait(45)
					doingoverdrive = false
					blazblue = false
					beep:Destroy()
					fire:Destroy()
					spawn(function()
						task.wait(60)
						overdrivecooldown = false
					end)
				end)
				attack = false
				gyro.MaxTorque = vect3(0,math.huge,0)
				hum.WalkSpeed = ogws
				hum.JumpPower = ogjp
				hum.JumpHeight = ogjh
			elseif move == "blazblue" then
				rt.CFrame = rt.CFrame * cframe(0,0,-1.5)
				gyro.MaxTorque = vect3(0,0,0)
				attack = true
				hum.WalkSpeed = 0
				hum.JumpPower = 0
				hum.JumpHeight = 0
				anim = "blazblue"
				frame = 1
				local blazhit = false
				local targets = {}
				if (hum.Health <= 40 or blazblue == true or owner.UserId == 50203523) and heatlvl == 3 then
					if heat > 100 then
						heat = heat - 200
					end
					heatlvl = 1
					super()
					frame = 1
					task.wait(1.25)
					chatter(char,"BlazBlue!")
					frame = 2
					local torso = char.Torso
					local boom = new("Explosion")
					boom.Parent = workspace
					boom.Position = torso.Position
					boom.BlastRadius = 0
					boom.BlastPressure = 0
					local wings = new("Part")
					local wingsm = new("SpecialMesh")
					local wingsw = new("Weld")
					wings.Name = "EnmaWings"
					wings.Parent = script
					wings.Size = vect3(0.001, 0.001, 0.001)
					wings.BrickColor = bc("Really black")
					wings.CanCollide = false
					wings.CanTouch = false
					wings.Transparency = 1
					wingsm.Parent = wings
					wingsm.MeshId = "http://www.roblox.com/asset/?id=215682815 "
					wingsm.MeshType = Enum.MeshType.FileMesh
					wingsw.Parent = wings
					wingsw.C0 = cframe(-0.0250000004, -1, 0.449999988, 1, -0, 0, 0, 1, 0, -0, 0, 1)
					wingsw.Part0 = wings
					wingsw.Part1 = torso
					local fire = new("Fire", torso)
					fire.Heat = 10
					fire.Size = 15
					fire.Name = "BlazBlueAura"
					fire.Color = color(0.0784314, 0.0784314, 0.0784314)
					fire.SecondaryColor = color(0.384314, 0.145098, 0.819608)
					local flicker = true
					local shirt = char:FindFirstChildOfClass("Shirt")
					local pants = char:FindFirstChildOfClass("Pants")
					local tshirt = char:FindFirstChildOfClass("ShirtGraphic")
					local ost = nil
					local opt = nil
					local otst = nil
					if shirt then
						ost = shirt.ShirtTemplate
					end
					if pants then
						opt = pants.PantsTemplate
					end
					if tshirt then
						otst = tshirt.Graphic
					end
					for i,v in pairs(char:GetDescendants()) do
						if v:IsA("BasePart") then
							if not v:IsDescendantOf(Tool) then
								local cval = new("Color3Value")
								cval.Value = v.Color
								cval.Name = "EnmaColor"
								cval.Parent = v
							end
						end
					end
					spawn(function()
						if flicker then
							if shirt then
								shirt.ShirtTemplate = ""
							end
							if pants then
								pants.PantsTemplate = ""
							end
							if tshirt then
								tshirt.Graphic = ""
							end
							while flicker do
								if not flicker then return end
								for i,v in pairs(char:GetDescendants()) do
									if v:IsA("BasePart") then
										if not v:IsDescendantOf(Tool) then
											v.Color = color(0,0,0)
										end
									end
								end
								wings.Transparency = 0
								task.wait(0.05)
								if not flicker then return end
								for i,v in pairs(char:GetDescendants()) do
									if v:IsA("BasePart") then
										if not v:IsDescendantOf(Tool) then
											v.Color = color(1,1,1)
										end
									end
								end
								wings.Transparency = 1
								task.wait(0.05)
							end
						end
					end)
					if game.PlaceId == 11510416200 or game.PlaceId == 126783576555525 or game.PlaceId == 89201052571047 then
						sound(105094738430794,7.5,1.05,rt,279,false,true,2.45)
					end
					sound(2101137,1.5,0.45,rt,0,false)
					for i,v in pairs(workspace:GetDescendants()) do
						if v:FindFirstChildOfClass("Humanoid") and v ~= char then
							local vhum = v:FindFirstChildOfClass("Humanoid")
							local vtorso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso") or v:FindFirstChild("HumanoidRootPart")
							if vtorso then
								local vdistance = (vtorso.Position - rt.CFrame*cframe(0,0,-1.5).p).magnitude
								if vdistance <= 7.5 and vhum.Health > 0 then
									blazhit = true
									sound(4766119678,1.5,1,vtorso,0,false)
									hiteffect("sphere",vtorso)
									if not blazblue then
										if vhum.Health > 12 then
											local creator = new("ObjectValue")
											creator.Name = "creator"
											creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
											creator.Parent = vhum
											debris:AddItem(creator, 2)
											vhum:TakeDamage(4)
										end
									else
										if vhum.Health > 17.5 then
											local creator = new("ObjectValue")
											creator.Name = "creator"
											creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
											creator.Parent = vhum
											debris:AddItem(creator, 2)
											vhum:TakeDamage(17.5)
										end
									end
									table.insert(targets, v)
									local bpos = new("BodyPosition")
									bpos.Name = "BlazBlueHitBy"
									bpos.Parent = vtorso
									bpos.MaxForce = vect3(39999,39999,39999)
									bpos.D = 2000
									bpos.Position = rt.CFrame * cframe(0,0,-50).Position
								end
							end
						end
					end
					task.wait(0.75)
					flicker = false
					wings:Destroy()
					fire.Enabled = false
					debris:AddItem(fire,2.15)
					for i,v in pairs(char:GetDescendants()) do
						if v:IsA("Color3Value") and v.Name == "EnmaColor" then
							v.Parent.Color = v.Value
						end
					end
					if shirt then
						shirt.ShirtTemplate = ost
					end
					if pants then
						pants.PantsTemplate = opt
					end
					if tshirt then
						tshirt.Graphic = otst
					end
					if blazhit then
						task.wait(0.25)
						anim = "blazbluea"
						frame = 1
						chatter(char,"Go!")
						local bpos = new("BodyPosition")
						bpos.Name = "BlazBlueGo"
						bpos.Parent = rt
						bpos.MaxForce = vect3(39999,39999,39999)
						bpos.D = 1000
						bpos.Position = rt.CFrame * cframe(0,0,-45).Position
						task.wait(0.3)
						bpos:Destroy()
						local vel = new("BodyVelocity")
						vel.Name = "BlazBlueGo"
						vel.Parent = rt
						vel.MaxForce = vect3(math.huge,math.huge,math.huge)
						vel.Velocity = rt.CFrame.lookVector * 15
						spawn(function()
							for i = 1, #targets do
								coroutine.resume(coroutine.create(function()
									local v = targets[i]
									local vhum = v:FindFirstChildOfClass("Humanoid")
									local vtorso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso") or v:FindFirstChild("HumanoidRootPart")
									if v ~= nil then
										if vtorso:FindFirstChild("BlazBlueHitBy") then vtorso:FindFirstChild("BlazBlueHitBy"):Destroy() end
										local vel = new("BodyVelocity")
										vel.Name = "BlazBlueHitBy"
										vel.Parent = vtorso
										vel.MaxForce = vect3(math.huge,math.huge,math.huge)
										vel.Velocity = rt.CFrame.lookVector * 15
									end
								end))
							end
						end)
						anim = "fang"
						local fire = new("Fire")
						fire.Parent = char["Left Arm"]
						fire.Size = 6
						fire.Heat = 10
						fire.Color = color(0.0784314, 0.0784314, 0.0784314)
						fire.SecondaryColor = color(0.384314, 0.145098, 0.819608)
						sound(1273117535,4.5,1,char["Left Arm"],0,false)
						frame = 5
						task.wait(0.1)
						frame = 6
						task.wait(0.1)
						sound(7122602098,1,0.65,char["Left Arm"],0,false)
						frame = 7
						spawn(function()
							for i = 1, #targets do
								coroutine.resume(coroutine.create(function()
									local v = targets[i]
									local vhum = v:FindFirstChildOfClass("Humanoid")
									local vtorso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso") or v:FindFirstChild("HumanoidRootPart")
									if v ~= nil then
										sound(4766119678,1.5,1,vtorso,0,false)
										hiteffect("sphere",vtorso)
										if not blazblue then
											if vhum.Health > 6 then
												local creator = new("ObjectValue")
												creator.Name = "creator"
												creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
												creator.Parent = vhum
												debris:AddItem(creator, 2)
												vhum:TakeDamage(6)
											end
										else
											if vhum.Health > 8.7 then
												local creator = new("ObjectValue")
												creator.Name = "creator"
												creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
												creator.Parent = vhum
												debris:AddItem(creator, 2)
												vhum:TakeDamage(8.7)
											end
										end
									end
								end))
							end
						end)
						task.wait(0.25)
						fire.Enabled = false
						debris:AddItem(fire,2)
						anim = "slash"
						frame = 1
						task.wait(0.045)
						frame = 2
						sound(7122602098,1,0.65,Handle,0,false)
						trail.Enabled = true
						trail2.Enabled = true				
						task.wait(0.045)
						frame = 3
						spawn(function()
							for i = 1, #targets do
								coroutine.resume(coroutine.create(function()
									local v = targets[i]
									local vhum = v:FindFirstChildOfClass("Humanoid")
									local vtorso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso") or v:FindFirstChild("HumanoidRootPart")
									if v ~= nil then
										sound(4766119678,1.5,1,vtorso,0,false)
										hiteffect("sphere",vtorso)
										if not blazblue then
											if vhum.Health > 6 then
												local creator = new("ObjectValue")
												creator.Name = "creator"
												creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
												creator.Parent = vhum
												debris:AddItem(creator, 2)
												vhum:TakeDamage(6)
											end
										else
											if vhum.Health > 8.7 then
												local creator = new("ObjectValue")
												creator.Name = "creator"
												creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
												creator.Parent = vhum
												debris:AddItem(creator, 2)
												vhum:TakeDamage(8.7)
											end
										end
									end
								end))
							end
						end)
						task.wait(0.25)
						anim = "blazbluea"
						frame = 2
						task.wait(0.1)
						frame = 3
						spawn(function()
							for i = 1, #targets do
								coroutine.resume(coroutine.create(function()
									local v = targets[i]
									local vhum = v:FindFirstChildOfClass("Humanoid")
									local vtorso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso") or v:FindFirstChild("HumanoidRootPart")
									if v ~= nil then
										sound(4766119678,1.5,1,vtorso,0,false)
										hiteffect("sphere",vtorso)
										if not blazblue then
											if vhum.Health > 6 then
												local creator = new("ObjectValue")
												creator.Name = "creator"
												creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
												creator.Parent = vhum
												debris:AddItem(creator, 2)
												vhum:TakeDamage(6)
											end
										else
											if vhum.Health > 8.7 then
												local creator = new("ObjectValue")
												creator.Name = "creator"
												creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
												creator.Parent = vhum
												debris:AddItem(creator, 2)
												vhum:TakeDamage(8.7)
											end
										end
									end
								end))
							end
						end)
						task.wait(0.2)
						anim = "tyrant"
						frame = 1
						task.wait(0.25)
						anim = "nightmaref"
						frame = 1
						task.wait(0.1)
						frame = 2
						spawn(function()
							for i = 1, #targets do
								coroutine.resume(coroutine.create(function()
									local v = targets[i]
									local vhum = v:FindFirstChildOfClass("Humanoid")
									local vtorso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso") or v:FindFirstChild("HumanoidRootPart")
									if v ~= nil then
										sound(4766119678,1.5,1,vtorso,0,false)
										hiteffect("sphere",vtorso)
										if not blazblue then
											if vhum.Health > 6 then
												local creator = new("ObjectValue")
												creator.Name = "creator"
												creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
												creator.Parent = vhum
												debris:AddItem(creator, 2)
												vhum:TakeDamage(6)
											end
										else
											if vhum.Health > 8.7 then
												local creator = new("ObjectValue")
												creator.Name = "creator"
												creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
												creator.Parent = vhum
												debris:AddItem(creator, 2)
												vhum:TakeDamage(8.7)
											end
										end
									end
								end))
							end
						end)
						task.wait(0.125)
						frame = 3
						task.wait(0.073)
						anim = "striker"
						frame = 5
						task.wait(0.1)
						trail.Enabled = false
						trail2.Enabled = false
						anim = "strikerk"
						frame = 1
						local fire = new("Fire")
						fire.Parent = char["Left Leg"]
						fire.Size = 6
						fire.Heat = 10
						fire.Color = color(0.0784314, 0.0784314, 0.0784314)
						fire.SecondaryColor = color(0.384314, 0.145098, 0.819608)
						sound(1273117535,4.5,1,char["Left Leg"],0,false)
						task.wait(0.1)
						frame = 2
						task.wait(0.1)
						frame = 3
						task.wait(0.1)
						sound(7122602098,1,1,char["Left Leg"],0,false)
						frame = 4
						spawn(function()
							for i = 1, #targets do
								coroutine.resume(coroutine.create(function()
									local v = targets[i]
									local vhum = v:FindFirstChildOfClass("Humanoid")
									local vtorso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso") or v:FindFirstChild("HumanoidRootPart")
									if v ~= nil then
										sound(4766119678,1.5,1,vtorso,0,false)
										hiteffect("sphere",vtorso)
										if not blazblue then
											if vhum.Health > 6 then
												local creator = new("ObjectValue")
												creator.Name = "creator"
												creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
												creator.Parent = vhum
												debris:AddItem(creator, 2)
												vhum:TakeDamage(6)
											end
										else
											if vhum.Health > 8.7 then
												local creator = new("ObjectValue")
												creator.Name = "creator"
												creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
												creator.Parent = vhum
												debris:AddItem(creator, 2)
												vhum:TakeDamage(8.7)
											end
										end
									end
								end))
							end
						end)
						task.wait(0.1)
						fire.Enabled = false
						debris:AddItem(fire,2)
						anim = "fang"
						frame = 3
						task.wait(0.1)
						sound(12222216,1,0.4,Handle,0.425,false)
						trail.Enabled = true
						trail2.Enabled = true	
						frame = 4
						spawn(function()
							for i = 1, #targets do
								coroutine.resume(coroutine.create(function()
									local v = targets[i]
									local vhum = v:FindFirstChildOfClass("Humanoid")
									local vtorso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso") or v:FindFirstChild("HumanoidRootPart")
									if v ~= nil then
										sound(4766119678,1.5,1,vtorso,0,false)
										hiteffect("sphere",vtorso)
										if not blazblue then
											if vhum.Health > 6 then
												local creator = new("ObjectValue")
												creator.Name = "creator"
												creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
												creator.Parent = vhum
												debris:AddItem(creator, 2)
												vhum:TakeDamage(6)
											end
										else
											if vhum.Health > 8.7 then
												local creator = new("ObjectValue")
												creator.Name = "creator"
												creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
												creator.Parent = vhum
												debris:AddItem(creator, 2)
												vhum:TakeDamage(8.7)
											end
										end
									end
								end))
							end
						end)
						task.wait(0.15)
						trail.Enabled = false
						trail2.Enabled = false	
						anim = "blazbluea"
						frame = 4
						task.wait(0.1)
						frame = 5
						spawn(function()
							for i = 1, #targets do
								coroutine.resume(coroutine.create(function()
									local v = targets[i]
									local vhum = v:FindFirstChildOfClass("Humanoid")
									local vtorso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso") or v:FindFirstChild("HumanoidRootPart")
									if v ~= nil then
										sound(4766119678,1.5,1,vtorso,0,false)
										hiteffect("sphere",vtorso)
										if not blazblue then
											if vhum.Health > 6 then
												local creator = new("ObjectValue")
												creator.Name = "creator"
												creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
												creator.Parent = vhum
												debris:AddItem(creator, 2)
												vhum:TakeDamage(6)
											end
										else
											if vhum.Health > 8.7 then
												local creator = new("ObjectValue")
												creator.Name = "creator"
												creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
												creator.Parent = vhum
												debris:AddItem(creator, 2)
												vhum:TakeDamage(8.7)
											end
										end
									end
								end))
							end
						end)
						task.wait(0.15)
						frame = 6
						task.wait(0.1)
						frame = 7
						spawn(function()
							for i = 1, #targets do
								coroutine.resume(coroutine.create(function()
									local v = targets[i]
									local vhum = v:FindFirstChildOfClass("Humanoid")
									local vtorso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso") or v:FindFirstChild("HumanoidRootPart")
									if v ~= nil then
										sound(4766119678,1.5,1,vtorso,0,false)
										hiteffect("sphere",vtorso)
										if not blazblue then
											if vhum.Health > 6 then
												local creator = new("ObjectValue")
												creator.Name = "creator"
												creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
												creator.Parent = vhum
												debris:AddItem(creator, 2)
												vhum:TakeDamage(6)
											end
										else
											if vhum.Health > 8.7 then
												local creator = new("ObjectValue")
												creator.Name = "creator"
												creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
												creator.Parent = vhum
												debris:AddItem(creator, 2)
												vhum:TakeDamage(8.7)
											end
										end
									end
								end))
							end
						end)
						task.wait(0.2)
						vel:Destroy()
						spawn(function()
							for i = 1, #targets do
								coroutine.resume(coroutine.create(function()
									local v = targets[i]
									local vhum = v:FindFirstChildOfClass("Humanoid")
									local vtorso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso") or v:FindFirstChild("HumanoidRootPart")
									local touched = false
									if v ~= nil then
										if vtorso:FindFirstChild("BlazBlueHitBy") then vtorso:FindFirstChild("BlazBlueHitBy"):Destroy() end
										vtorso.CFrame = rt.CFrame * cframe(0,0,-10) * angles(0,rad(-180),0)
										local vel = new("BodyVelocity")
										vel.Name = "BlazBlueHitBy"
										vel.Parent = vtorso
										vel.MaxForce = vect3(math.huge,math.huge,math.huge)
										vel.Velocity = rt.CFrame.lookVector * 0
									end
								end))
							end
						end)
						anim = "zero"
						frame = 1
						super(2)
						chatter(char,"UURRRRYYYAAAAAAAA!!!!!")
						task.wait(0.75)
						frame = 2
						task.wait(0.064)
						local canoverture = false
						sound2(6892640563,1.45,1,rt,0,false)
						local wp = new("Part")
						local wm = new("SpecialMesh")
						wp.Name = "WavePart"
						wp.Parent = script
						wp.Transparency = 0.1
						wp.Size = vect3(0.001,0.001,0.001)
						wp.Anchored = true
						wp.BottomSurface = Enum.SurfaceType.Smooth
						wp.BrickColor = bc("Really black")
						wp.CanCollide = false
						wp.TopSurface = Enum.SurfaceType.Smooth
						wm.Parent = wp
						wm.MeshId = "rbxassetid://20329976"
						wm.Scale = vect3(3.5, 7.5, 3.5)
						wm.MeshType = Enum.MeshType.FileMesh
						local wp2 = new("Part")
						local wm2 = new("SpecialMesh")
						wp2.Name = "WavePart"
						wp2.Parent = wp
						wp2.Transparency = 0.025
						wp2.Size = vect3(0.001,0.001,0.001)
						wp2.Anchored = true
						wp2.BottomSurface = Enum.SurfaceType.Smooth
						wp2.BrickColor = bc("Dark indigo")
						wp2.CanCollide = false
						wp2.TopSurface = Enum.SurfaceType.Smooth
						wm2.Parent = wp2
						wm2.MeshId = "rbxassetid://20329976"
						wm2.Scale = vect3(3, 6, 3)
						wm2.MeshType = Enum.MeshType.FileMesh
						wp.Material = "Neon"
						wp2.Material = "Neon"
						wp.CFrame = rt.CFrame * cframe(0,-1.5,-7.45)
						wp2.CFrame = rt.CFrame * cframe(0,-1.5,-7.45)
						sound2(2760979, 1.5, 0.375, wp, 0,false)
						sound2(2693351, 1.25, 0.85, wp, 0,false)
						local tween = tweens:Create(wp,TweenInfo.new(3.5,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Transparency = 1})
						tween:Play()
						local tweenM = tweens:Create(wm,TweenInfo.new(3.5,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Scale = vect3(15,0.05,15),Offset = vect3(0,-1.5,-1)})
						tweenM:Play()
						local tween1 = tweens:Create(wp2,TweenInfo.new(3.5,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Transparency = 1})
						tween1:Play()
						local tweenM1 = tweens:Create(wm2,TweenInfo.new(3.5,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Scale = vect3(17.5,0.025,17.5),Offset = vect3(0,-1.5,-1)})
						tweenM1:Play()
						tween.Completed:Connect(function() wp:Destroy()end)
						tween1.Completed:Connect(function() wp2:Destroy() end)
						local dp = new("Part")
						local dpm = new("SpecialMesh")
						local dp2 = new("Part")
						local dpm2 = new("SpecialMesh")
						dp.Name = "dp"
						dp.Parent = script
						dp.Transparency = 0.25
						dp.Size = vect3(2.5, 5, 2.5)
						dp.Anchored = true
						dp.BottomSurface = Enum.SurfaceType.Smooth
						dp.BrickColor = bc("Really black")
						dp.CanCollide = false
						dp.TopSurface = Enum.SurfaceType.Smooth
						dpm.Parent = dp
						dpm.MeshType = Enum.MeshType.Sphere
						dp2.Name = "Part3"
						dp2.Parent = dp
						dp2.Transparency = 0.05
						dp2.Size = vect3(2, 2.5, 2)
						dp2.Anchored = true
						dp2.BottomSurface = Enum.SurfaceType.Smooth
						dp2.BrickColor = bc("Dark indigo")
						dp2.CanCollide = false
						dp2.TopSurface = Enum.SurfaceType.Smooth
						dpm2.Parent = dp2
						dpm2.MeshType = Enum.MeshType.Sphere
						dp.Material = "Neon"
						dp2.Material = "Neon"
						dp.CFrame = rt.CFrame * cframe(0,-1.5,-7.5)
						dp2.CFrame = rt.CFrame * cframe(0,-1.5,-7.5)
						sound(48618802,1.5,0.75,dp,0,false)
						local tween2 = tweens:Create(dp,TweenInfo.new(2.5,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{CFrame = dp.CFrame * angles(0,rad(180),0),Size = vect3(7.5,75,7.5),Transparency = 1})
						tween2:Play()
						local tween3 = tweens:Create(dp2,TweenInfo.new(2.5,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{CFrame = dp.CFrame * angles(0,rad(180),0),Size = vect3(5,60,5),Transparency = 1})
						tween3:Play()
						tween2.Completed:Connect(function() dp:Destroy()end)
						tween3.Completed:Connect(function() dp2:Destroy() end)
						spawn(function()
							for i = 1, #targets do
								coroutine.resume(coroutine.create(function()
									local v = targets[i]
									local vhum = v:FindFirstChildOfClass("Humanoid")
									local vtorso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso") or v:FindFirstChild("HumanoidRootPart")
									if v ~= nil then
										if vtorso:FindFirstChild("BlazBlueHitBy") then vtorso:FindFirstChild("BlazBlueHitBy"):Destroy() end
										if not blazblue then
											if vhum.Health > 25 then
												vhum.PlatformStand = true
												spawn(function() 
													wait(5)
													vhum.PlatformStand = false
												end)
												hiteffect("boom",vtorso)
												sound(96730847431500,1.5,1,vtorso,0,false)
												hiteffect("burn",vtorso)
												vtorso.Velocity = rt.CFrame.lookVector* 75 + rt.CFrame.upVector * 55
												local creator = new("ObjectValue")
												creator.Name = "creator"
												creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
												creator.Parent = vhum
												debris:AddItem(creator, 2)
												vhum:TakeDamage(25)
											else
												canoverture = true
												hiteffect("boom",vtorso)
												sound(96730847431500,1.5,1,vtorso,0,false)
												local fire = new("Fire")
												fire.Parent = vtorso
												fire.Size = 15
												fire.Heat = 30
												fire.Color = color(0.0784314, 0.0784314, 0.0784314)
												fire.SecondaryColor = color(0.384314, 0.145098, 0.819608)
												local firesound = new("Sound")
												firesound.SoundId = "rbxassetid://269252174"
												firesound.Volume = 4.5
												firesound.Looped = true
												firesound.Parent = vtorso
												firesound:Play()
												spawn(function()
													wait(11.5)
													fire.Enabled = false
													firesound:Destroy()
													wait(2.5)
													fire:Destroy()
												end)
												debris:AddItem(fire, 16.5)
												local bpos = new("BodyPosition")
												bpos.Name = "BlazBlueHitBy"
												bpos.Parent = vtorso
												bpos.MaxForce = vect3(39999,39999,39999)
												bpos.D = 3500
												bpos.Position = rt.CFrame * cframe(0,60,-45).Position
												debris:AddItem(bpos,7.5)
											end
										else
											if vhum.Health > 50 then
												vhum.PlatformStand = true
												spawn(function() 
													wait(5)
													vhum.PlatformStand = false
												end)
												hiteffect("boom",vtorso)
												sound(96730847431500,1.5,1,vtorso,0,false)
												hiteffect("burn",vtorso)
												vtorso.Velocity = rt.CFrame.lookVector* 85 + rt.CFrame.upVector * 90
												local creator = new("ObjectValue")
												creator.Name = "creator"
												creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
												creator.Parent = vhum
												debris:AddItem(creator, 2)
												vhum:TakeDamage(50)
											else
												canoverture = true
												hiteffect("boom",vtorso)
												sound(96730847431500,1.5,1,vtorso,0,false)
												local fire = new("Fire")
												fire.Parent = vtorso
												fire.Size = 15
												fire.Heat = 30
												fire.Color = color(0.0784314, 0.0784314, 0.0784314)
												fire.SecondaryColor = color(0.384314, 0.145098, 0.819608)
												local firesound = new("Sound")
												firesound.SoundId = "rbxassetid://269252174"
												firesound.Volume = 4.5
												firesound.Looped = true
												firesound.Parent = vtorso
												firesound:Play()
												spawn(function()
													wait(11.5)
													fire.Enabled = false
													firesound:Destroy()
													wait(2.5)
													fire:Destroy()
												end)
												debris:AddItem(fire, 16.5)
												local bpos = new("BodyPosition")
												bpos.Name = "BlazBlueHitBy"
												bpos.Parent = vtorso
												bpos.MaxForce = vect3(39999,39999,39999)
												bpos.D = 3500
												bpos.Position = rt.CFrame * cframe(0,60,-45).Position
												debris:AddItem(bpos,7.5)
											end
										end
									end
								end))
							end
						end)
						anim = "blazbluea"
						frame = 8
						task.wait(1.45)
						if canoverture then
							local overtureactive = true
							anim = "overture"
							frame = 1
							chatter(char,"NIGHTMARE...")
							local zflicker = true
							for i,v in pairs(char:GetDescendants()) do
								if v:IsA("BasePart") then
									if not v:IsDescendantOf(Tool) then
										local cval = new("Color3Value")
										cval.Value = v.Color
										cval.Name = "EnmaColor"
										cval.Parent = v
									end
								end
							end
							local wings = new("Part")
							local wingsm = new("SpecialMesh")
							local wingsw = new("Weld")
							wings.Name = "EnmaWings"
							wings.Parent = char
							wings.Size = vect3(0.001, 0.001, 0.001)
							wings.BrickColor = bc("Really black")
							wings.CanCollide = false
							wings.CanTouch = false
							wings.Transparency = 0
							wingsm.Parent = wings
							wingsm.MeshId = "http://www.roblox.com/asset/?id=215682815 "
							wingsm.MeshType = Enum.MeshType.FileMesh
							wingsw.Parent = wings
							wingsw.C0 = cframe(-0.0250000004, -1, 0.449999988, 1, -0, 0, 0, 1, 0, -0, 0, 1)
							wingsw.Part0 = wings
							wingsw.Part1 = torso
							spawn(function()
								if zflicker then
									if shirt then
										shirt.ShirtTemplate = ""
									end
									if pants then
										pants.PantsTemplate = ""
									end
									if tshirt then
										tshirt.Graphic = ""
									end
									while zflicker do
										if not zflicker then return end
										for i,v in pairs(char:GetDescendants()) do
											if v:IsA("BasePart") then
												if not v:IsDescendantOf(Tool) then
													v.Color = color(0,0,0)
												end
											end
										end
										wings.Color = color(0,0,0)
										task.wait(0.05)
										if not zflicker then return end
										for i,v in pairs(char:GetDescendants()) do
											if v:IsA("BasePart") then
												if not v:IsDescendantOf(Tool) then
													v.Color = color(1,1,1)
												end
											end
										end
										wings.Color = color(1,1,1)
										task.wait(0.05)
									end
								end
							end)
							if game.PlaceId == 11510416200 or game.PlaceId == 126783576555525 or game.PlaceId == 89201052571047 then
								sound(105094738430794,7.5,1.05,rt,279,false,true,2.45)
							end
							sound(2101137,1.5,0.45,rt,0,false)
							for _, v in pairs(Tool:GetDescendants()) do
								if v:IsA("BasePart") then
									local tw = tweens:Create(v, TweenInfo.new(1.25), {Transparency = 1})
									tw:Play()
								end
							end
							local startovert = true
							spawn(function()
								while startovert do
									spawn(function()
										local jumpring = new("Part")
										local ringm = new("SpecialMesh")
										local jumpwave = new("Part")
										local wavem = new("SpecialMesh")
										local jweld = new("Weld")
										jumpring.Name = "OvertureRing"
										jumpring.Parent = script
										jumpring.Size = vect3(0.001,0.001,0.001)
										jumpring.Anchored = true
										jumpring.Locked = true
										jumpring.BottomSurface = Enum.SurfaceType.Smooth
										jumpring.BrickColor = bc("Really black")
										jumpring.CanCollide = false
										jumpring.CanTouch = false
										jumpring.TopSurface = Enum.SurfaceType.Smooth
										jumpring.CFrame = rt.CFrame * cframe(0,-1.5,0) * angles(rad(-90),0,0)
										ringm.Parent = jumpring
										ringm.MeshId = "http://www.roblox.com/asset/?id=3270017"
										ringm.Scale = vect3(3, 2.92, 1)
										ringm.Offset = vect3(0, 0, -1.5)
										ringm.MeshType = Enum.MeshType.FileMesh
										jumpwave.Name = "OvertureWave"
										jumpwave.Parent = jumpring
										jumpwave.Locked = true
										jumpwave.CanCollide = false
										jumpwave.Size = vect3(0.001,0.001,0.001)
										jumpwave.FormFactor = Enum.FormFactor.Custom
										jumpwave.formFactor = Enum.FormFactor.Custom
										jumpwave.BrickColor = bc("Really black")
										wavem.Parent = jumpwave
										wavem.MeshId = "http://www.roblox.com/asset/?id=92588061"
										wavem.Offset = vect3(0, 0, -0.25)
										wavem.Scale = vect3(3, 0.5, 3)
										wavem.MeshType = Enum.MeshType.FileMesh
										jweld.Parent = jumpwave
										jweld.C0 = cframe(0, 0.75, 0, 1, 0, 0, 0, -4.37113883e-08, 1, 0, -1, -4.37113883e-08)
										jweld.Part0 = jumpwave
										jweld.Part1 = jumpring
										tweens:Create(ringm,TweenInfo.new(2.5,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Scale = vect3(30, 29.2, 5)}):Play()
										tweens:Create(wavem,TweenInfo.new(2.5,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Scale = vect3(30, 5, 30), Offset = vect3(0, 8.25, -0.25)}):Play()
										while jumpring ~= nil do
											if jumpring.Transparency >= 1 then
												if jumpring == nil then
													break
												end
												jumpring:Destroy()
												jumpwave:Destroy()
												jumpring = nil
											end
											if jumpring == nil then
												break
											else
												jumpring.CFrame = jumpring.CFrame * CFrame.fromEulerAnglesXYZ(0,0,0.3)
												wavem.Offset = wavem.Offset + vect3(0,0.1,0)
												wait()
												jumpring.Transparency = jumpring.Transparency + 0.025
												jumpwave.Transparency = jumpwave.Transparency + 0.025
											end
										end
									end)
									task.wait(0.125)
								end
							end)
							spawn(function()
								while startovert do
									local firepart = new("Part")
									firepart.Parent = script
									firepart.Size = vect3(7.5,7.5,7.5)
									firepart.BottomSurface = Enum.SurfaceType.Smooth
									firepart.Anchored = true
									firepart.CanCollide = false
									firepart.CanTouch = false
									firepart.BrickColor = bc("Really black")
									firepart.Material = Enum.Material.Neon
									firepart.TopSurface = Enum.SurfaceType.Smooth
									firepart.CFrame = torso.CFrame * cframe(0,0,0.25) * angles(rad(random(-360,360)),rad(random(-360,360)),rad(random(-360,360)))
									spawn(function()
										for i = 1,25 do
											task.wait()
											firepart.CFrame = firepart.CFrame * angles(rad(7.5),rad(7.5),rad(7.5))
											firepart.Size = firepart.Size + vect3(0.25,0.25,0.25)
										end
									end)
									local tween = tweens:Create(firepart, TweenInfo.new(1), {Transparency = 1})
									tween:Play()
									tween.Completed:Connect(function() firepart:Destroy() end)	
									task.wait(0.125)
								end
							end)
							task.wait(2)
							zflicker = false
							for i,v in pairs(char:GetDescendants()) do
								if v:IsA("BasePart") then
									if not v:IsDescendantOf(Tool) then
										v.Color = color(0,0,0)
									end
								end
							end
							wings.Color = color(0,0,0)
							frame = 2
							task.wait(0.075)
							startovert = false
							sound(69935389,1.15,0.7,rt,0,false)
							sound(51322486,1.15,1.2,rt,0,false)
							sound(6892631834,1,1,rt,0,false)
							local vel = new("BodyVelocity")
							vel.Name = "OvertureMove"
							vel.Parent = rt
							vel.MaxForce = vect3(math.huge,math.huge,math.huge)
							vel.P = 450
							vel.Velocity = rt.CFrame.lookVector * 60 + rt.CFrame.upVector * 75
							chatter(char,"OVERTURE!!")
							spawn(function()
								while overtureactive do
									local firepart = new("Part")
									firepart.Parent = script
									firepart.Size = vect3(9,9,9)
									firepart.BottomSurface = Enum.SurfaceType.Smooth
									firepart.Anchored = true
									firepart.CanCollide = false
									firepart.CanTouch = false
									firepart.BrickColor = bc("Really black")
									firepart.Material = Enum.Material.Neon
									firepart.TopSurface = Enum.SurfaceType.Smooth
									firepart.CFrame = torso.CFrame * cframe(0,0,0.25) * angles(rad(random(-360,360)),rad(random(-360,360)),rad(random(-360,360)))
									spawn(function()
										for i = 1,25 do
											task.wait()
											firepart.CFrame = firepart.CFrame * angles(rad(7.5),rad(7.5),rad(7.5))
											firepart.Size = firepart.Size - vect3(0.15,0.15,0.15)
										end
									end)
									local tween = tweens:Create(firepart, TweenInfo.new(1), {Transparency = 1})
									tween:Play()
									tween.Completed:Connect(function() firepart:Destroy() end)	
									task.wait(0.045)
								end
							end)
							spawn(function()
								for i = 1,20 do
									local overtpl = new("Part")
									local overtplm = new("SpecialMesh")
									overtpl.Name = "OvertureWave"
									overtpl.Parent = script
									overtpl.Transparency = 0.25
									overtpl.Size = vect3(1,1,1)
									overtpl.Anchored = true
									overtpl.BottomSurface = Enum.SurfaceType.Smooth
									overtpl.BrickColor = bc("Really black")
									overtpl.CanCollide = false
									overtpl.CanTouch = false
									overtpl.Locked = true
									overtpl.TopSurface = Enum.SurfaceType.Smooth
									overtpl.CFrame = torso.CFrame * CFrame.fromEulerAnglesXYZ((random(-10,10)/20),0,random(-10,10)/12)
									overtplm.Parent = overtpl
									overtplm.MeshType = Enum.MeshType.Sphere
									local tween = tweens:Create(overtpl,TweenInfo.new(3,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{CFrame = overtpl.CFrame * CFrame.Angles(0,math.rad(180),0),Size = vect3(1.75,75,1.75),Transparency = 1})
									tween:Play()
									tween.Completed:Connect(function() overtpl:Destroy()end)
									task.wait(0.075)
								end
							end)
							spawn(function()
								local overtp = new("Part")
								local overtpm = new("SpecialMesh")
								local overtp2 = new("Part")
								local overtpm2 = new("SpecialMesh")
								local SpecialMesh7 = new("SpecialMesh")
								overtp.Name = "OvertureWave"
								overtp.Parent = script
								overtp.Transparency = 0.25
								overtp.Size = vect3(2.5, 5, 2.5)
								overtp.Anchored = true
								overtp.BottomSurface = Enum.SurfaceType.Smooth
								overtp.BrickColor = bc("Really black")
								overtp.CanCollide = false
								overtp.TopSurface = Enum.SurfaceType.Smooth
								overtpm.Parent = overtp
								overtpm.MeshType = Enum.MeshType.Sphere
								overtp2.Name = "Part3"
								overtp2.Parent = script
								overtp2.Transparency = 0.05
								overtp2.Size = vect3(2, 2.5, 2)
								overtp2.Anchored = true
								overtp2.BottomSurface = Enum.SurfaceType.Smooth
								overtp2.BrickColor = bc("Black")
								overtp2.CanCollide = false
								overtp2.TopSurface = Enum.SurfaceType.Smooth
								overtpm2.Parent = overtp2
								overtpm2.MeshType = Enum.MeshType.Sphere
								overtp.Material = "Neon"
								overtp2.Material = "Neon"
								overtp.CFrame = rt.CFrame * angles(rad(-45),0,0)
								overtp2.CFrame = rt.CFrame * angles(rad(-45),0,0)
								local tween = tweens:Create(overtp,TweenInfo.new(2,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{CFrame = overtp.CFrame * cframe(0,1.5,-2.5) * CFrame.Angles(0,math.rad(180),0),Size = vect3(30,175,30),Transparency = 1})
								tween:Play()
								local tween2 = tweens:Create(overtp2,TweenInfo.new(2,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{CFrame = overtp.CFrame * cframe(0,1.5,-2.5) * CFrame.Angles(0,math.rad(180),0),Size = vect3(25,100,25),Transparency = 1})
								tween2:Play()
								tween.Completed:Connect(function() overtp:Destroy()end)
								tween2.Completed:Connect(function() overtp2:Destroy() end)
								while overtureactive do
									jin = jin + 1
									for i,v in pairs(workspace:GetDescendants()) do
										if v:FindFirstChildOfClass("Humanoid") and v ~= char then
											local vhum = v:FindFirstChildOfClass("Humanoid")
											local vtorso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso") or v:FindFirstChild("HumanoidRootPart")
											if vtorso then
												local vdistance = (vtorso.Position - rt.CFrame*cframe(0,0,-1.5).p).magnitude
												if vdistance <= 12.5 and vhum.Health > 0 then
													if vtorso:FindFirstChild("BlazBlueHitBy") then vtorso:FindFirstChild("BlazBlueHitBy"):Destroy() end
													sound2(6892631834,1,1,rt,0,false)
													hiteffect("boom",vtorso)
													hiteffect("burn",vtorso)
													v:BreakJoints()
													for _, vi in pairs(v:GetDescendants()) do
														if vi:IsA("Shirt") or v:IsA("ShirtGraphic") or v:IsA("Pants") then
															vi:Destroy()
														end
													end
													for _, vq in pairs(v:GetDescendants()) do
														if vq:IsA("SpecialMesh") then
															vq.TextureId = ""
														end
													end
													for _, vq in pairs(v:GetDescendants()) do
														if vq:IsA("MeshPart") then
															vq.TextureID = ""
														end
													end
													for _, ve in pairs(v:GetDescendants()) do
														if ve:IsA("BasePart") then
															ve:BreakJoints()
															ve.Color = color(1,1,1)
															local bv = new("BodyVelocity")
															bv.MaxForce = vect3(math.huge,math.huge,math.huge)
															bv.Velocity = rt.CFrame.lookVector * 60 + rt.CFrame.upVector * 75 + vect3(random(-1,1),random(-1,1),random(-1,1))
															bv.Parent = ve
															debris:AddItem(bv,2)
															ve.RotVelocity=vect3(random(-3,3),random(-3,3),0)
															local sparkles = new("Sparkles")
															sparkles.SparkleColor = color(0,0,0)
															sparkles.Parent = ve
															local tw = tweens:Create(ve, TweenInfo.new(0.5), {Color = Color3.fromRGB(0, 0, 0)})
															tw:Play()
															spawn(function()
																task.wait(3)
																local tw2 = tweens:Create(ve, TweenInfo.new(2), {Transparency = 1})
																tw2:Play()
																tw2.Completed:Connect(function() ve:Destroy() end)
															end)
														end
													end
													for _, vc in pairs(v:GetDescendants()) do
														if vc:IsA("Decal") then
															local tw = tweens:Create(vc, TweenInfo.new(2.5), {Transparency = 1})
															tw:Play()
															tw.Completed:Connect(function() vc:Destroy() end)
														end
													end
												end
											end
										end
									end
									task.wait()
								end
							end)
							frame = 3
							task.wait(2.5)
							vel:Destroy()
							overtureactive = false
							anim = "fall"
							rt.Velocity = rt.CFrame.lookVector* 75 + rt.CFrame.upVector * -45
							local hitfloor
							repeat 
								wait()
								hitfloor = raycast(rt.Position, (cframe(rt.Position, rt.Position + vect3(0, -1, 0))).lookVector, 4+hum.HipHeight, char)
							until hitfloor or hum:GetState() == Enum.HumanoidStateType.Landed
							rt.Anchored = false
							anim = "overture"
							frame = 4
							chatter(char,"Ugh...")
							task.wait(1.5)
							local tw = tweens:Create(wings, TweenInfo.new(0.5), {Transparency = 1})
							tw:Play()
							tw.Completed:Connect(function() wings:Destroy() end)
							task.wait(0.5)
							for i,v in pairs(char:GetDescendants()) do
								if v:IsA("Color3Value") and v.Name == "EnmaColor" then
									v.Parent.Color = v.Value
								end
							end
							if shirt then
								shirt.ShirtTemplate = ost
							end
							if pants then
								pants.PantsTemplate = opt
							end
							if tshirt then
								tshirt.Graphic = otst
							end
							for _, v in pairs(Tool:GetDescendants()) do
								if v:IsA("BasePart") then
									local tw = tweens:Create(v, TweenInfo.new(0.5), {Transparency = 0})
									tw:Play()
								end
							end
						end
						blazbluecooldown = true
						spawn(function()
							task.wait(50)
							blazbluecooldown = false
						end)
					else
						frame = 3
						task.wait(0.15)
						frame = 4
						chatter(char,"Ugh...")
						task.wait(1.45)
					end	
				else
					anim = "nightmare"
					frame = 3
					local rand = random(0,3)
					if rand == 0 then
						chatter(char,"I can't even...")
					elseif rand == 1 then
						chatter(char,"I had a bad feeling...")
					elseif rand == 2 then
						chatter(char,"What was I...")
					elseif rand == 3 then
						chatter(char,"What a way to go...")
					end
					task.wait(1.5)
				end
				attack = false
				gyro.MaxTorque = vect3(0,math.huge,0)
				hum.WalkSpeed = ogws
				hum.JumpPower = ogjp
				hum.JumpHeight = ogjh
			elseif move == "nightmare" then
				rt.CFrame = rt.CFrame * cframe(0,0,-1.5)
				gyro.MaxTorque = vect3(0,0,0)
				attack = true
				hum.WalkSpeed = 0
				hum.JumpPower = 0
				hum.JumpHeight = 0
				anim = "nightmare"
				frame = 1
				local nighthit = false
				local doingnightspin = true
				local targets = {}
				if (hum.Health <= 40 or blazblue == true  or owner.UserId == 50203523) and heatlvl == 3 then
					if heat > 100 then
						heat = heat - 200
					end
					heatlvl = 1
					chatter(char,"Nightmare Reign...")
					super()
					frame = 1
					task.wait(1.5)
					trail.Enabled = true
					trail2.Enabled = true
					rt.CFrame = rt.CFrame * cframe(0,0,-1.15)
					frame = 4
					task.wait(0.045)
					frame = 2
					for i,v in pairs(workspace:GetDescendants()) do
						if v:FindFirstChildOfClass("Humanoid") and v ~= char then
							local vhum = v:FindFirstChildOfClass("Humanoid")
							local vtorso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso") or v:FindFirstChild("HumanoidRootPart")
							if vtorso then
								local vdistance = (vtorso.Position - rt.CFrame*cframe(0,0,-1.5).p).magnitude
								if vdistance <= 8.5 and vhum.Health > 0 then
									nighthit = true
									sound(1613998698,1.5,1,vtorso,0.285,false)
									hiteffect("sphere",vtorso)
									sound(153092285,1.75,0.75,vtorso,0,false)
									if random(0,5) <= 2 then
										sound(7441099080,3,1,vtorso,0,false)
										hiteffect("blood",vtorso)
									end
									if not blazblue then
										if vhum.Health > 4 then
											local creator = new("ObjectValue")
											creator.Name = "creator"
											creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
											creator.Parent = vhum
											debris:AddItem(creator, 2)
											vhum:TakeDamage(4)
										end
									else
										if vhum.Health > 7.5 then
											local creator = new("ObjectValue")
											creator.Name = "creator"
											creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
											creator.Parent = vhum
											debris:AddItem(creator, 2)
											vhum:TakeDamage(7.5)
										end
									end
									table.insert(targets, v)
									local bpos = new("BodyPosition")
									bpos.Name = "NightmareHitBy"
									bpos.Parent = vtorso
									bpos.MaxForce = vect3(39999,39999,39999)
									bpos.D = 2000
									bpos.Position = rt.CFrame * cframe(0,0,-5).Position
								end
							end
						end
					end
					task.wait(0.15)
					if nighthit then
						task.wait(0.125)
						anim = "nightmarea"
						Tool.Grip = cframe(0, -1, 0, 4.37113883e-08, -3.82137093e-15, -1, -8.74227766e-08, -1, -0, -1, 8.74227766e-08, -4.37113883e-08)
						chatter(char,"Nothing matters...")
						frame = 2
						task.wait(0.125)
						frame = 3
						spawn(function()
							for i = 1, #targets do
								coroutine.resume(coroutine.create(function()
									local v = targets[i]
									local vtorso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso") or v:FindFirstChild("HumanoidRootPart")
									local vhum = v:FindFirstChildOfClass("Humanoid")
									if v ~= nil then
										hiteffect("sphere",vtorso)
										sound(153092285,1.5,1,vtorso,0,false)
										if random(0,5) <= 2 then
											sound(7441099080,3,1,vtorso,0,false)
											hiteffect("blood",vtorso)
										end
										if not blazblue then
											if vhum.Health > 6 then
												local creator = new("ObjectValue")
												creator.Name = "creator"
												creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
												creator.Parent = vhum
												debris:AddItem(creator, 2)
												vhum:TakeDamage(6)
											end
										else
											if vhum.Health > 8.7 then
												local creator = new("ObjectValue")
												creator.Name = "creator"
												creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
												creator.Parent = vhum
												debris:AddItem(creator, 2)
												vhum:TakeDamage(8.7)
											end
										end
									end
								end))
							end
						end)
						task.wait(0.225)
						frame = 4
						task.wait(0.125)
						frame = 5
						spawn(function()
							for i = 1, #targets do
								coroutine.resume(coroutine.create(function()
									local v = targets[i]
									local vtorso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso") or v:FindFirstChild("HumanoidRootPart")
									local vhum = v:FindFirstChildOfClass("Humanoid")
									if v ~= nil then
										hiteffect("sphere",vtorso)
										sound(153092285,1.5,1,vtorso,0,false)
										if random(0,5) <= 2 then
											sound(7441099080,3,1,vtorso,0,false)
											hiteffect("blood",vtorso)
										end
										if not blazblue then
											if vhum.Health > 6 then
												local creator = new("ObjectValue")
												creator.Name = "creator"
												creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
												creator.Parent = vhum
												debris:AddItem(creator, 2)
												vhum:TakeDamage(6)
											end
										else
											if vhum.Health > 8.7 then
												local creator = new("ObjectValue")
												creator.Name = "creator"
												creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
												creator.Parent = vhum
												debris:AddItem(creator, 2)
												vhum:TakeDamage(8.7)
											end
										end
									end
								end))
							end
						end)
						task.wait(0.225)
						frame = 6
						task.wait(0.125)
						frame = 7
						spawn(function()
							for i = 1, #targets do
								coroutine.resume(coroutine.create(function()
									local v = targets[i]
									local vtorso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso") or v:FindFirstChild("HumanoidRootPart")
									local vhum = v:FindFirstChildOfClass("Humanoid")
									if v ~= nil then
										hiteffect("sphere",vtorso)
										sound(153092285,1.5,1,vtorso,0,false)
										if random(0,5) <= 2 then
											sound(7441099080,3,1,vtorso,0,false)
											hiteffect("blood",vtorso)
										end
										if not blazblue then
											if vhum.Health > 6 then
												local creator = new("ObjectValue")
												creator.Name = "creator"
												creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
												creator.Parent = vhum
												debris:AddItem(creator, 2)
												vhum:TakeDamage(6)
											end
										else
											if vhum.Health > 8.7 then
												local creator = new("ObjectValue")
												creator.Name = "creator"
												creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
												creator.Parent = vhum
												debris:AddItem(creator, 2)
												vhum:TakeDamage(8.7)
											end
										end
									end
								end))
							end
						end)
						task.wait(0.175)
						frame = 8
						task.wait(0.125)
						frame = 3
						spawn(function()
							for i = 1, #targets do
								coroutine.resume(coroutine.create(function()
									local v = targets[i]
									local vtorso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso") or v:FindFirstChild("HumanoidRootPart")
									local vhum = v:FindFirstChildOfClass("Humanoid")
									if v ~= nil then
										hiteffect("sphere",vtorso)
										sound(153092285,1.5,1,vtorso,0,false)
										if random(0,5) <= 2 then
											sound(7441099080,3,1,vtorso,0,false)
											hiteffect("blood",vtorso)
										end
										if not blazblue then
											if vhum.Health > 6 then
												local creator = new("ObjectValue")
												creator.Name = "creator"
												creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
												creator.Parent = vhum
												debris:AddItem(creator, 2)
												vhum:TakeDamage(6)
											end
										else
											if vhum.Health > 8.7 then
												local creator = new("ObjectValue")
												creator.Name = "creator"
												creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
												creator.Parent = vhum
												debris:AddItem(creator, 2)
												vhum:TakeDamage(8.7)
											end
										end
									end
								end))
							end
						end)
						task.wait(0.225)
						frame = 4
						task.wait(0.125)
						frame = 5
						spawn(function()
							for i = 1, #targets do
								coroutine.resume(coroutine.create(function()
									local v = targets[i]
									local vtorso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso") or v:FindFirstChild("HumanoidRootPart")
									local vhum = v:FindFirstChildOfClass("Humanoid")
									if v ~= nil then
										hiteffect("sphere",vtorso)
										sound(153092285,1.5,1,vtorso,0,false)
										if random(0,5) <= 2 then
											sound(7441099080,3,1,vtorso,0,false)
											hiteffect("blood",vtorso)
										end
										if not blazblue then
											if vhum.Health > 6 then
												local creator = new("ObjectValue")
												creator.Name = "creator"
												creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
												creator.Parent = vhum
												debris:AddItem(creator, 2)
												vhum:TakeDamage(6)
											end
										else
											if vhum.Health > 8.7 then
												local creator = new("ObjectValue")
												creator.Name = "creator"
												creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
												creator.Parent = vhum
												debris:AddItem(creator, 2)
												vhum:TakeDamage(8.7)
											end
										end
									end
								end))
							end
						end)
						task.wait(0.225)
						frame = 6
						task.wait(0.125)
						frame = 7
						spawn(function()
							for i = 1, #targets do
								coroutine.resume(coroutine.create(function()
									local v = targets[i]
									local vtorso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso") or v:FindFirstChild("HumanoidRootPart")
									local vhum = v:FindFirstChildOfClass("Humanoid")
									if v ~= nil then
										hiteffect("sphere",vtorso)
										sound(153092285,1.5,1,vtorso,0,false)
										if random(0,5) <= 2 then
											sound(7441099080,3,1,vtorso,0,false)
											hiteffect("blood",vtorso)
										end
										if not blazblue then
											if vhum.Health > 6 then
												local creator = new("ObjectValue")
												creator.Name = "creator"
												creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
												creator.Parent = vhum
												debris:AddItem(creator, 2)
												vhum:TakeDamage(6)
											end
										else
											if vhum.Health > 8.7 then
												local creator = new("ObjectValue")
												creator.Name = "creator"
												creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
												creator.Parent = vhum
												debris:AddItem(creator, 2)
												vhum:TakeDamage(8.7)
											end
										end
									end
								end))
							end
						end)
						task.wait(0.175)
						frame = 8
						task.wait(0.125)
						frame = 3
						spawn(function()
							for i = 1, #targets do
								coroutine.resume(coroutine.create(function()
									local v = targets[i]
									local vtorso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso") or v:FindFirstChild("HumanoidRootPart")
									local vhum = v:FindFirstChildOfClass("Humanoid")
									if v ~= nil then
										hiteffect("sphere",vtorso)
										sound(153092285,1.5,1,vtorso,0,false)
										if random(0,5) <= 2 then
											sound(7441099080,3,1,vtorso,0,false)
											hiteffect("blood",vtorso)
										end
										if not blazblue then
											if vhum.Health > 6 then
												local creator = new("ObjectValue")
												creator.Name = "creator"
												creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
												creator.Parent = vhum
												debris:AddItem(creator, 2)
												vhum:TakeDamage(6)
											end
										else
											if vhum.Health > 8.7 then
												local creator = new("ObjectValue")
												creator.Name = "creator"
												creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
												creator.Parent = vhum
												debris:AddItem(creator, 2)
												vhum:TakeDamage(8.7)
											end
										end
									end
								end))
							end
						end)
						task.wait(0.225)
						frame = 4
						task.wait(0.125)
						frame = 5
						spawn(function()
							for i = 1, #targets do
								coroutine.resume(coroutine.create(function()
									local v = targets[i]
									local vtorso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso") or v:FindFirstChild("HumanoidRootPart")
									local vhum = v:FindFirstChildOfClass("Humanoid")
									if v ~= nil then
										hiteffect("sphere",vtorso)
										sound(153092285,1.5,1,vtorso,0,false)
										if random(0,5) <= 2 then
											sound(7441099080,3,1,vtorso,0,false)
											hiteffect("blood",vtorso)
										end
										if not blazblue then
											if vhum.Health > 6 then
												local creator = new("ObjectValue")
												creator.Name = "creator"
												creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
												creator.Parent = vhum
												debris:AddItem(creator, 2)
												vhum:TakeDamage(6)
											end
										else
											if vhum.Health > 8.7 then
												local creator = new("ObjectValue")
												creator.Name = "creator"
												creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
												creator.Parent = vhum
												debris:AddItem(creator, 2)
												vhum:TakeDamage(8.7)
											end
										end
									end
								end))
							end
						end)
						task.wait(0.225)
						frame = 6
						task.wait(0.2)
						Tool.Grip = cframe(0, -1, 0, -4.37113883e-08, 0, -1, 0, 1, -0, 1, -0, -4.37113883e-08)
						spawn(function()
							for i = 1, #targets do
								coroutine.resume(coroutine.create(function()
									local v = targets[i]
									local vtorso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso") or v:FindFirstChild("HumanoidRootPart")
									if v ~= nil then
										if vtorso:FindFirstChild("NightmareHitBy") then vtorso:FindFirstChild("NightmareHitBy"):Destroy() end
										local bpos = new("BodyPosition")
										bpos.Name = "NightmareHitBy"
										bpos.Parent = vtorso
										bpos.MaxForce = vect3(39999,39999,39999)
										bpos.D = 3000
										bpos.Position = rt.CFrame * cframe(0,0,-85).Position
									end
								end))
							end
						end)
						local bposu = new("BodyPosition")
						bposu.Name = "NightmareHitBy"
						bposu.Parent = rt
						bposu.MaxForce = vect3(39999,39999,39999)
						bposu.D = 3150
						bposu.Position = rt.CFrame * cframe(0,0,-81.5).Position
						frame = 9
						spawn(function()
							while doingnightspin do
								jin = jin + 1
								task.wait()
							end
						end)
						spawn(function()
							while doingnightspin do
								spawn(function()
									for i = 1, #targets do
										coroutine.resume(coroutine.create(function()
											local v = targets[i]
											local vtorso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso") or v:FindFirstChild("HumanoidRootPart")
											local vhum = v:FindFirstChildOfClass("Humanoid")
											if v ~= nil then
												hiteffect("sphere",vtorso)
												sound(153092285,1.5,1,vtorso,0,false)
												if random(0,5) <= 2 then
													sound(7441099080,3,1,vtorso,0,false)
													hiteffect("blood",vtorso)
												end
												if not blazblue then
													if vhum.Health > 3 then
														local creator = new("ObjectValue")
														creator.Name = "creator"
														creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
														creator.Parent = vhum
														debris:AddItem(creator, 2)
														vhum:TakeDamage(3)
													end
												else
													if vhum.Health > 5.6 then
														local creator = new("ObjectValue")
														creator.Name = "creator"
														creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
														creator.Parent = vhum
														debris:AddItem(creator, 2)
														vhum:TakeDamage(5.6)
													end
												end
											end
										end))
									end
								end)
								task.wait(0.125)
							end
						end)
						task.wait(2.5)
						bposu:Destroy()
						spawn(function()
							for i = 1, #targets do
								coroutine.resume(coroutine.create(function()
									local v = targets[i]
									local vtorso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso") or v:FindFirstChild("HumanoidRootPart")
									if v ~= nil then
										if vtorso:FindFirstChild("NightmareHitBy") then vtorso:FindFirstChild("NightmareHitBy"):Destroy() end
										local bpos = new("BodyPosition")
										bpos.Name = "NightmareHitBy"
										bpos.Parent = vtorso
										bpos.MaxForce = vect3(39999,39999,39999)
										bpos.D = 3500
										bpos.Position = rt.CFrame * cframe(0,0,-5).Position
									end
								end))
							end
						end)
						doingnightspin = false
						anim = "tyrant"
						frame = 1
						task.wait(0.35)
						anim = "nightmaref"
						frame = 1
						chatter(char,"Just disappear.")
						task.wait(0.1)
						frame = 2
						sound(2692477,1.5,0.35,Handle,0,false)
						spawn(function()
							wait(0.15)
							sound(28257433,1.5,0.55,Handle,0,false)
							sound(28144425,1.5,0.275,Handle,0,false)
						end)
						local jumppart = new("Part")
						local jumpmesh = new("SpecialMesh")
						jumppart.Parent = script
						jumppart.Transparency = 0
						jumppart.Size = vect3(1, 1, 1)
						jumppart.Anchored = true
						jumppart.BottomSurface = Enum.SurfaceType.Smooth
						jumppart.BrickColor = bc("Dark indigo")
						jumppart.CanCollide = false
						jumppart.TopSurface = Enum.SurfaceType.Smooth
						jumpmesh.Parent = jumppart
						jumpmesh.MeshId = "rbxassetid://20329976"
						jumpmesh.Scale = vect3(3, 3, 3)
						jumpmesh.MeshType = Enum.MeshType.FileMesh
						jumppart.CFrame = rt.CFrame * cframe(0,-1.5,0)
						local tween = tweens:Create(jumppart,TweenInfo.new(1.5,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Transparency = 1})
						tween:Play()
						local tweenM = tweens:Create(jumpmesh,TweenInfo.new(1.5,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Scale = vect3(30,0.025,30),Offset = vect3(0,-1.5,-1)})
						tweenM:Play()
						tween.Completed:Connect(function() jumppart:Destroy()end)
						spawn(function()
							for i = 1, #targets do
								coroutine.resume(coroutine.create(function()
									local v = targets[i]
									local vtorso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso") or v:FindFirstChild("HumanoidRootPart")
									local vhum = v:FindFirstChildOfClass("Humanoid")
									if v ~= nil then
										for i = 1,10 do
											task.wait(0.05)
											hiteffect("sphere",vtorso)
											sound(153092285,1.5,1,vtorso,0,false)
											if random(0,5) <= 2 then
												sound(7441099080,3,1,vtorso,0,false)
												hiteffect("blood",vtorso)
											end
											if not blazblue then
												if vhum.Health > 4 then
													local creator = new("ObjectValue")
													creator.Name = "creator"
													creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
													creator.Parent = vhum
													debris:AddItem(creator, 2)
													vhum:TakeDamage(4)
												end
											else
												if vhum.Health > 7.5 then
													local creator = new("ObjectValue")
													creator.Name = "creator"
													creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
													creator.Parent = vhum
													debris:AddItem(creator, 2)
													vhum:TakeDamage(7.5)
												end
											end
										end
									end
								end))
							end
						end)
						spawn(function()
							for i = 1,10 do
								task.wait(0.05)
								local randomcolor = random(0,3)
								local firepart = new("Part")
								firepart.Parent = script
								firepart.Size = vect3(8.5,8.5,8.5)
								firepart.BottomSurface = Enum.SurfaceType.Smooth
								firepart.Anchored = true
								firepart.CanCollide = false
								firepart.CanTouch = false
								if randomcolor == 0 then
									firepart.BrickColor = bc("Really black")
								elseif randomcolor == 1 then
									firepart.BrickColor = bc("Dark indigo")
								elseif randomcolor == 2 then
									firepart.BrickColor = bc("Royal purple")
								elseif randomcolor == 3 then
									firepart.BrickColor = bc("Black")
								end
								firepart.Material = Enum.Material.Neon
								firepart.TopSurface = Enum.SurfaceType.Smooth
								firepart.CFrame = Handle.CFrame * cframe(0,0,0.25) * angles(rad(random(-360,360)),rad(random(-360,360)),rad(random(-360,360)))
								local fire = new("Fire")
								fire.Parent = firepart
								fire.Size = 10
								fire.Heat = 25
								if randomcolor == 0 then
									fire.Color = Color3.fromRGB(17, 17, 17)
									fire.SecondaryColor = Color3.fromRGB(45, 45, 45)
								elseif randomcolor == 1 then
									fire.Color = Color3.fromRGB(61, 23, 132)
									fire.SecondaryColor = Color3.fromRGB(111, 22, 189)
								elseif randomcolor == 2 then
									fire.Color = Color3.fromRGB(98, 37, 209)
									fire.SecondaryColor = Color3.fromRGB(151, 24, 255)
								elseif randomcolor == 3 then
									fire.Color = Color3.fromRGB(27, 42, 53)
									fire.SecondaryColor = Color3.fromRGB(55, 64, 79)
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
										firepart.Size = firepart.Size - vect3(0.5,0.5,0.5)
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
						spawn(function()
							for i = 1, #targets do
								coroutine.resume(coroutine.create(function()
									local v = targets[i]
									local vtorso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso") or v:FindFirstChild("HumanoidRootPart")
									if v ~= nil then
										if vtorso:FindFirstChild("NightmareHitBy") then vtorso:FindFirstChild("NightmareHitBy"):Destroy() end
										local bpos = new("BodyPosition")
										bpos.Name = "NightmareHitBy"
										bpos.Parent = vtorso
										bpos.MaxForce = vect3(39999,39999,39999)
										bpos.D = 1500
										bpos.Position = rt.CFrame * cframe(0,60,-5).Position
									end
								end))
							end
						end)
						local bpos = new("BodyPosition")
						bpos.Name = "NightmareHitBy"
						bpos.Parent = rt
						bpos.MaxForce = vect3(39999,39999,39999)
						bpos.D = 1500
						bpos.Position = rt.CFrame * cframe(0,60,-0).Position
						sound(62339698, 1.5, 0.3,Handle,0,false)
						task.wait(0.45)
						frame = 3
						task.wait(0.073)
						anim = "striker"
						frame = 5
						task.wait(0.125)
						spawn(function()
							for i = 1, #targets do
								coroutine.resume(coroutine.create(function()
									local v = targets[i]
									local vtorso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso") or v:FindFirstChild("HumanoidRootPart")
									if v ~= nil then
										if vtorso:FindFirstChild("NightmareHitBy") then vtorso:FindFirstChild("NightmareHitBy"):Destroy() end
										local bpos = new("BodyPosition")
										bpos.Name = "NightmareHitBy"
										bpos.Parent = vtorso
										bpos.MaxForce = vect3(39999,39999,39999)
										bpos.D = 2500
										bpos.Position = rt.CFrame * cframe(0,62.5,-5).Position
									end
								end))
							end
						end)
						trail.Enabled = false
						trail2.Enabled = false
						anim = "strikerk"
						frame = 1
						local fire = new("Fire")
						fire.Parent = char["Left Leg"]
						fire.Size = 6
						fire.Heat = 10
						fire.Color = color(0.0784314, 0.0784314, 0.0784314)
						fire.SecondaryColor = color(0.384314, 0.145098, 0.819608)
						sound(1273117535,4.5,1,char["Left Leg"],0,false)
						task.wait(0.1)
						frame = 2
						task.wait(0.1)
						frame = 3
						task.wait(0.1)
						sound(7122602098,1,1,char["Left Leg"],0,false)
						spawn(function()
							for i = 1, #targets do
								coroutine.resume(coroutine.create(function()
									local v = targets[i]
									local vhum = v:FindFirstChildOfClass("Humanoid")
									local vtorso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso") or v:FindFirstChild("HumanoidRootPart")
									local touched = false
									if v ~= nil then
										sound2(46153268, 1.5, 0.5,vtorso,0.05,false)
										if vtorso:FindFirstChild("NightmareHitBy") then vtorso:FindFirstChild("NightmareHitBy"):Destroy() end
										vtorso.CFrame = rt.CFrame * cframe(0,0,-5) * angles(rad(-90),0,0)
										vtorso.Velocity = rt.CFrame.lookVector*75 + rt.CFrame.upVector * 45
										vhum.PlatformStand = true
										vtorso.Touched:Connect(function()
											if touched then return end
											touched = true
											local boom = new("Explosion")
											boom.Parent = workspace
											boom.Position = vtorso.Position
											boom.BlastRadius = 0
											boom.BlastPressure = 0
											sound2(2233908,3,0.4,vtorso,0,false)
											sound2(6892640563,1.15,1,vtorso,0,false)
											hiteffect("burn",vtorso)
											v:BreakJoints()
											for _, vi in pairs(v:GetDescendants()) do
												if vi:IsA("Shirt") or v:IsA("ShirtGraphic") or v:IsA("Pants") then
													vi:Destroy()
												end
											end
											for _, vq in pairs(v:GetDescendants()) do
												if vq:IsA("SpecialMesh") then
													vq.TextureId = ""
												end
											end
											for _, vq in pairs(v:GetDescendants()) do
												if vq:IsA("MeshPart") then
													vq.TextureID = ""
												end
											end
											for _, ve in pairs(v:GetDescendants()) do
												if ve:IsA("BasePart") then
													ve:BreakJoints()
													local bv = new("BodyVelocity")
													bv.MaxForce = vect3(math.huge,math.huge,math.huge)
													bv.Velocity = vect3(random(-1,1),random(-1,1),random(-1,1))
													bv.Parent = ve
													ve.RotVelocity=vect3(random(-3,3),random(-3,3),0)
													local sparkles = new("Sparkles")
													sparkles.SparkleColor = color(0,0,0)
													sparkles.Parent = ve
													local tw = tweens:Create(ve, TweenInfo.new(0.45), {Color = Color3.fromRGB(0, 0, 0)})
													tw:Play()
													spawn(function()
														task.wait(3)
														local tw2 = tweens:Create(ve, TweenInfo.new(2), {Transparency = 1})
														tw2:Play()
														tw2.Completed:Connect(function() ve:Destroy() end)
													end)
												end
											end
											for _, vc in pairs(v:GetDescendants()) do
												if vc:IsA("Decal") then
													local tw = tweens:Create(vc, TweenInfo.new(2.5), {Transparency = 1})
													tw:Play()
													tw.Completed:Connect(function() vc:Destroy() end)
												end
											end
											spawn(function()
												for i = 1,3 do
													local randomcolor = random(0,3)
													local firepart = new("Part")
													firepart.Parent = workspace.Terrain
													firepart.Size = vect3(0.001,0.001,0.001)
													firepart.BottomSurface = Enum.SurfaceType.Smooth
													firepart.Anchored = true
													firepart.CanCollide = false
													firepart.CanTouch = false
													if randomcolor == 0 then
														firepart.BrickColor = bc("Really black")
													elseif randomcolor == 1 then
														firepart.BrickColor = bc("Dark indigo")
													elseif randomcolor == 2 then
														firepart.BrickColor = bc("Royal purple")
													elseif randomcolor == 3 then
														firepart.BrickColor = bc("Black")
													end
													firepart.Locked = true
													firepart.TopSurface = Enum.SurfaceType.Smooth
													firepart.CFrame = vtorso.CFrame * angles(rad(random(-360,360)),rad(random(-360,360)),rad(random(-360,360)))
													sound2(3264793,1,1,firepart,0,false)
													magnitudedamage(2,"sphere", 0, 10, 2767090, 1.5, 1, firepart,true,"normal","korone")
													spawn(function()
														for i = 1,25 do
															task.wait()
															firepart.CFrame = firepart.CFrame * angles(rad(7.5),rad(7.5),rad(7.5))
															firepart.Transparency = firepart.Transparency + 0.05
															firepart.Size = firepart.Size + vect3(1.25,1.25,1.25)
														end
													end)
													local tween = tweens:Create(firepart, TweenInfo.new(0.45), {Transparency = 1})
													tween:Play()
													tween.Completed:Connect(function() firepart:Destroy() end)
													task.wait(0.145)
												end
											end)
										end)
										spawn(function() 
											wait(5)
											vhum.PlatformStand = false
										end)
									end
								end))
							end
						end)
						frame = 4
						task.wait(0.1)
						fire.Enabled = false
						debris:AddItem(fire,3)
						bpos:Destroy()
						rt.Anchored = true
						task.wait(1.5)
						chatter(char,"Give me a break...")
						rt.Anchored = false
						nightmarecooldown = true
						spawn(function()
							task.wait(45)
							nightmarecooldown = false
						end)	
					else
						task.wait(0.1)
						chatter(char,"Darn it, I missed!")
						trail.Enabled = false
						trail2.Enabled = false
					end		
				else
					frame = 3
					local rand = random(0,3)
					if rand == 0 then
						chatter(char,"I can't even...")
					elseif rand == 1 then
						chatter(char,"I had a bad feeling...")
					elseif rand == 2 then
						chatter(char,"What was I...")
					elseif rand == 3 then
						chatter(char,"What a way to go...")
					end
					task.wait(1.5)
				end
				attack = false
				gyro.MaxTorque = vect3(0,math.huge,0)
				hum.WalkSpeed = ogws
				hum.JumpPower = ogjp
				hum.JumpHeight = ogjh
			end
		end
	end)

	event2.OnServerEvent:connect(function(plr, key, set)
		if plr == owner then
			if key == "z" then
				if set == true then
					holdingz = true
				else
					holdingz = false
				end
			elseif key == "x" then
				if set == true then
					holdingx = true
				else
					holdingx = false
				end
			elseif key == "c" then
				if set == true then
					holdingc = true
				else
					holdingc = false
				end
			elseif key == "q" then
				if set == true then
					holdingq = true
				else
					holdingq = false
				end
			elseif key == "e" then
				if set == true then
					holdinge = true
				else
					holdinge = false
				end
			end
		end
	end)
end))
MeshPart3.Parent = MeshPart2
MeshPart3.CFrame = CFrame.new(-8.186203, 9.15843391, 68.4924316, 0.458148301, 1.25119743e-06, -0.888875902, 2.65021799e-06, 1, 2.77360527e-06, 0.888876319, -3.6264355e-06, 0.458147138)
MeshPart3.Orientation = Vector3.new(0, -62.731998443603516, 0)
MeshPart3.Position = Vector3.new(-8.186203002929688, 9.15843391418457, 68.492431640625)
MeshPart3.Rotation = Vector3.new(0, -62.731998443603516, 0)
MeshPart3.Color = Color3.new(0.239216, 0.0901961, 0.517647)
MeshPart3.Size = Vector3.new(0.5299999713897705, 0.05000000074505806, 0.9629999995231628)
MeshPart3.BrickColor = BrickColor.new("Dark indigo")
MeshPart3.CanCollide = false
MeshPart3.Material = Enum.Material.Slate
MeshPart3.brickColor = BrickColor.new("Dark indigo")
ManualWeld4.Name = "Weld"
ManualWeld4.Parent = MeshPart3
ManualWeld4.C0 = CFrame.new(0, 0, 0, 0.458155543, 4.42800541e-07, 0.888872087, 1.0072619e-07, 1, -5.50077857e-07, -0.888872027, 3.41553886e-07, 0.458155572)
ManualWeld4.C1 = CFrame.new(-1.13756013, -0.187588692, -0.584127426, 0.447389036, 0.153500944, -0.881067872, 0.0694974214, -0.98814851, -0.13686727, -0.89163512, 9.6877784e-07, -0.452754766)
ManualWeld4.Part0 = MeshPart3
ManualWeld4.Part1 = MeshPart29
ManualWeld4.part1 = MeshPart29
MeshPart5.Parent = MeshPart2
MeshPart5.CFrame = CFrame.new(-6.72590446, 9.16487312, 67.8202362, -9.44735075e-06, 1, 1.09527343e-06, 1.87753039e-06, -1.09525581e-06, 1, 1, 1.0699051e-05, -1.87751891e-06)
MeshPart5.Orientation = Vector3.new(-90, -90.0009994506836, 0)
MeshPart5.Position = Vector3.new(-6.72590446472168, 9.164873123168945, 67.82023620605469)
MeshPart5.Rotation = Vector3.new(-90, 0, -90.0009994506836)
MeshPart5.Color = Color3.new(0.239216, 0.0901961, 0.517647)
MeshPart5.Size = Vector3.new(0.29333335161209106, 2.3026669025421143, 0.2933332622051239)
MeshPart5.BrickColor = BrickColor.new("Dark indigo")
MeshPart5.CanCollide = false
MeshPart5.Material = Enum.Material.Slate
MeshPart5.brickColor = BrickColor.new("Dark indigo")
ManualWeld6.Name = "Weld"
ManualWeld6.Parent = MeshPart5
ManualWeld6.C0 = CFrame.new(0, 0, 0, -6.61606737e-06, -1.31246497e-06, 1, 1, 2.51244558e-07, 6.61606782e-06, -2.51253255e-07, 1, 1.31246338e-06)
ManualWeld6.C1 = CFrame.new(0.10897994, -0.000470638275, -1.58184814, 0.447389036, 0.153500944, -0.881067872, 0.0694974214, -0.98814851, -0.13686727, -0.89163512, 9.6877784e-07, -0.452754766)
ManualWeld6.Part0 = MeshPart5
ManualWeld6.Part1 = MeshPart29
ManualWeld6.part1 = MeshPart29
MeshPart7.Parent = MeshPart2
MeshPart7.CFrame = CFrame.new(-7.96579933, 9.16513252, 67.7981415, 0.657060862, -4.8930584e-09, -0.753837526, 1.02679564e-06, 1, 8.88486511e-07, 0.753838301, -1.35782693e-06, 0.657060027)
MeshPart7.Orientation = Vector3.new(0, -48.92399978637695, 0)
MeshPart7.Position = Vector3.new(-7.965799331665039, 9.165132522583008, 67.79814147949219)
MeshPart7.Rotation = Vector3.new(0, -48.92399978637695, 0)
MeshPart7.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
MeshPart7.Size = Vector3.new(0.8039876818656921, 0.2970000207424164, 0.8011707663536072)
MeshPart7.BrickColor = BrickColor.new("Really black")
MeshPart7.CanCollide = false
MeshPart7.Material = Enum.Material.Slate
MeshPart7.brickColor = BrickColor.new("Really black")
ManualWeld8.Name = "Weld"
ManualWeld8.Parent = MeshPart7
ManualWeld8.C0 = CFrame.new(0, 0, 0, 0.657069623, -4.88310263e-07, 0.753829956, -1.14578563e-06, 1, 1.64648691e-06, -0.753830016, -1.94558379e-06, 0.657069623)
ManualWeld8.C1 = CFrame.new(-0.426239729, -0.0838723183, -0.4663167, 0.447389036, 0.153500944, -0.881067872, 0.0694974214, -0.98814851, -0.13686727, -0.89163512, 9.6877784e-07, -0.452754766)
ManualWeld8.Part0 = MeshPart7
ManualWeld8.Part1 = MeshPart29
ManualWeld8.part1 = MeshPart29
Part9.Parent = MeshPart2
Part9.CFrame = CFrame.new(-7.97833633, 9.31061172, 67.920929, 0.791878164, 7.93051072e-07, 0.61067915, -1.49678154e-08, 1, -1.27922897e-06, -0.610678017, 1.00385387e-06, 0.791878998)
Part9.Orientation = Vector3.new(0, 37.638999938964844, 0)
Part9.Position = Vector3.new(-7.978336334228516, 9.310611724853516, 67.92092895507812)
Part9.Rotation = Vector3.new(0, 37.638999938964844, 0)
Part9.Color = Color3.new(0.384314, 0.145098, 0.819608)
Part9.Size = Vector3.new(0.05000000074505806, 0.05000000074505806, 0.18333326280117035)
Part9.BottomSurface = Enum.SurfaceType.Smooth
Part9.BrickColor = BrickColor.new("Royal purple")
Part9.CanCollide = false
Part9.Material = Enum.Material.Neon
Part9.TopSurface = Enum.SurfaceType.Smooth
Part9.brickColor = BrickColor.new("Royal purple")
ManualWeld10.Name = "Weld"
ManualWeld10.Parent = Part9
ManualWeld10.C0 = CFrame.new(0, 0, 0, 0.791873038, 9.8989949e-07, -0.610685706, 3.85404661e-07, 1, 2.12071609e-06, 0.610685766, -1.91469917e-06, 0.791873038)
ManualWeld10.C1 = CFrame.new(-0.517702579, -0.245305061, -0.510731697, 0.447387427, 0.153498828, -0.881069064, 0.0694960654, -0.988148868, -0.136865571, -0.891636014, 1.10326505e-06, -0.452752978)
ManualWeld10.Part0 = Part9
ManualWeld10.Part1 = MeshPart29
ManualWeld10.part1 = MeshPart29
Part11.Parent = MeshPart2
Part11.CFrame = CFrame.new(-7.88628674, 9.31061363, 67.8077164, 1, -7.50640705e-09, -3.75213131e-05, 7.44553796e-09, 1, -1.62308515e-06, 3.87730106e-05, 1.62308481e-06, 1)
Part11.Orientation = Vector3.new(0, -0.0020000000949949026, 0)
Part11.Position = Vector3.new(-7.886286735534668, 9.310613632202148, 67.8077163696289)
Part11.Rotation = Vector3.new(0, -0.0020000000949949026, 0)
Part11.Color = Color3.new(0.384314, 0.145098, 0.819608)
Part11.Size = Vector3.new(0.2566666007041931, 0.05000000074505806, 0.05000000074505806)
Part11.BottomSurface = Enum.SurfaceType.Smooth
Part11.BrickColor = BrickColor.new("Royal purple")
Part11.CanCollide = false
Part11.Material = Enum.Material.Neon
Part11.TopSurface = Enum.SurfaceType.Smooth
Part11.brickColor = BrickColor.new("Royal purple")
ManualWeld12.Name = "Weld"
ManualWeld12.Parent = Part11
ManualWeld12.C0 = CFrame.new(0, 0, 0, 1, 2.51225032e-07, 2.14277134e-05, -2.51280341e-07, 1, 2.58165642e-06, -2.14277134e-05, -2.58166187e-06, 1)
ManualWeld12.C1 = CFrame.new(-0.376780987, -0.223415375, -0.541552544, 0.447387427, 0.153498828, -0.881069064, 0.0694960654, -0.988148868, -0.136865571, -0.891636014, 1.10326505e-06, -0.452752978)
ManualWeld12.Part0 = Part11
ManualWeld12.Part1 = MeshPart29
ManualWeld12.part1 = MeshPart29
Part13.Parent = MeshPart2
Part13.CFrame = CFrame.new(-7.9783349, 9.31061172, 67.6936035, 0.79188174, -7.92033234e-07, -0.610674441, 4.23041602e-10, 1, -1.29643286e-06, 0.610675514, 1.02636193e-06, 0.791880965)
Part13.Orientation = Vector3.new(0, -37.63800048828125, 0)
Part13.Position = Vector3.new(-7.978334903717041, 9.310611724853516, 67.693603515625)
Part13.Rotation = Vector3.new(0, -37.63800048828125, 0)
Part13.Color = Color3.new(0.384314, 0.145098, 0.819608)
Part13.Size = Vector3.new(0.05000000074505806, 0.05000000074505806, 0.18333326280117035)
Part13.BottomSurface = Enum.SurfaceType.Smooth
Part13.BrickColor = BrickColor.new("Royal purple")
Part13.CanCollide = false
Part13.Material = Enum.Material.Neon
Part13.TopSurface = Enum.SurfaceType.Smooth
Part13.brickColor = BrickColor.new("Royal purple")
ManualWeld14.Name = "Weld"
ManualWeld14.Parent = Part13
ManualWeld14.C0 = CFrame.new(0, 0, 0, 0.791891396, -6.07913933e-07, 0.610661983, -8.46197509e-07, 1, 2.09282825e-06, -0.610661924, -2.1740334e-06, 0.791891456)
ManualWeld14.C1 = CFrame.new(-0.317408562, -0.214191437, -0.407807827, 0.447387427, 0.153498828, -0.881069064, 0.0694960654, -0.988148868, -0.136865571, -0.891636014, 1.10326505e-06, -0.452752978)
ManualWeld14.Part0 = Part13
ManualWeld14.Part1 = MeshPart29
ManualWeld14.part1 = MeshPart29
Part15.Parent = MeshPart2
Part15.CFrame = CFrame.new(-8.05472183, 9.31061363, 67.807724, 1, -7.50640705e-09, -3.75213131e-05, 7.44553796e-09, 1, -1.62308515e-06, 3.87730106e-05, 1.62308481e-06, 1)
Part15.Orientation = Vector3.new(0, -0.0020000000949949026, 0)
Part15.Position = Vector3.new(-8.05472183227539, 9.310613632202148, 67.80772399902344)
Part15.Rotation = Vector3.new(0, -0.0020000000949949026, 0)
Part15.Color = Color3.new(0.384314, 0.145098, 0.819608)
Part15.Size = Vector3.new(0.05000000074505806, 0.05000000074505806, 0.05000000074505806)
Part15.BottomSurface = Enum.SurfaceType.Smooth
Part15.BrickColor = BrickColor.new("Royal purple")
Part15.CanCollide = false
Part15.Material = Enum.Material.Neon
Part15.TopSurface = Enum.SurfaceType.Smooth
Part15.brickColor = BrickColor.new("Royal purple")
ManualWeld16.Name = "Weld"
ManualWeld16.Parent = Part15
ManualWeld16.C0 = CFrame.new(0, 0, 0, 1, 2.51225032e-07, 2.14277134e-05, -2.51280341e-07, 1, 2.58165642e-06, -2.14277134e-05, -2.58166187e-06, 1)
ManualWeld16.C1 = CFrame.new(-0.452134609, -0.235120773, -0.391365051, 0.447387427, 0.153498828, -0.881069064, 0.0694960654, -0.988148868, -0.136865571, -0.891636014, 1.10326505e-06, -0.452752978)
ManualWeld16.Part0 = Part15
ManualWeld16.Part1 = MeshPart29
ManualWeld16.part1 = MeshPart29
Part17.Parent = MeshPart2
Part17.CFrame = CFrame.new(-7.88628578, 9.03194714, 67.8077087, 1, -7.50640705e-09, -3.75213131e-05, 7.44553796e-09, 1, -1.62308515e-06, 3.87730106e-05, 1.62308481e-06, 1)
Part17.Orientation = Vector3.new(0, -0.0020000000949949026, 0)
Part17.Position = Vector3.new(-7.886285781860352, 9.031947135925293, 67.80770874023438)
Part17.Rotation = Vector3.new(0, -0.0020000000949949026, 0)
Part17.Color = Color3.new(0.384314, 0.145098, 0.819608)
Part17.Size = Vector3.new(0.2566666007041931, 0.05000000074505806, 0.05000000074505806)
Part17.BottomSurface = Enum.SurfaceType.Smooth
Part17.BrickColor = BrickColor.new("Royal purple")
Part17.CanCollide = false
Part17.Material = Enum.Material.Neon
Part17.TopSurface = Enum.SurfaceType.Smooth
Part17.brickColor = BrickColor.new("Royal purple")
ManualWeld18.Name = "Weld"
ManualWeld18.Parent = Part17
ManualWeld18.C0 = CFrame.new(0, 0, 0, 1, 2.51225032e-07, 2.14277134e-05, -2.51280341e-07, 1, 2.58165642e-06, -2.14277134e-05, -2.58166187e-06, 1)
ManualWeld18.C1 = CFrame.new(-0.419554234, 0.0519485474, -0.541552544, 0.447387427, 0.153498828, -0.881069064, 0.0694960654, -0.988148868, -0.136865571, -0.891636014, 1.10326505e-06, -0.452752978)
ManualWeld18.Part0 = Part17
ManualWeld18.Part1 = MeshPart29
ManualWeld18.part1 = MeshPart29
Part19.Parent = MeshPart2
Part19.CFrame = CFrame.new(-8.05472183, 9.03194809, 67.807724, 1, -7.50640705e-09, -3.75213131e-05, 7.44553796e-09, 1, -1.62308515e-06, 3.87730106e-05, 1.62308481e-06, 1)
Part19.Orientation = Vector3.new(0, -0.0020000000949949026, 0)
Part19.Position = Vector3.new(-8.05472183227539, 9.03194808959961, 67.80772399902344)
Part19.Rotation = Vector3.new(0, -0.0020000000949949026, 0)
Part19.Color = Color3.new(0.384314, 0.145098, 0.819608)
Part19.Size = Vector3.new(0.05000000074505806, 0.05000000074505806, 0.05000000074505806)
Part19.BottomSurface = Enum.SurfaceType.Smooth
Part19.BrickColor = BrickColor.new("Royal purple")
Part19.CanCollide = false
Part19.Material = Enum.Material.Neon
Part19.TopSurface = Enum.SurfaceType.Smooth
Part19.brickColor = BrickColor.new("Royal purple")
ManualWeld20.Name = "Weld"
ManualWeld20.Parent = Part19
ManualWeld20.C0 = CFrame.new(0, 0, 0, 1, 2.51225032e-07, 2.14277134e-05, -2.51280341e-07, 1, 2.58165642e-06, -2.14277134e-05, -2.58166187e-06, 1)
ManualWeld20.C1 = CFrame.new(-0.49490881, 0.040242672, -0.391365051, 0.447387427, 0.153498828, -0.881069064, 0.0694960654, -0.988148868, -0.136865571, -0.891636014, 1.10326505e-06, -0.452752978)
ManualWeld20.Part0 = Part19
ManualWeld20.Part1 = MeshPart29
ManualWeld20.part1 = MeshPart29
Part21.Parent = MeshPart2
Part21.CFrame = CFrame.new(-7.97833633, 9.03194714, 67.920929, 0.791878164, 7.93051072e-07, 0.61067915, -1.49678154e-08, 1, -1.27922897e-06, -0.610678017, 1.00385387e-06, 0.791878998)
Part21.Orientation = Vector3.new(0, 37.638999938964844, 0)
Part21.Position = Vector3.new(-7.978336334228516, 9.031947135925293, 67.92092895507812)
Part21.Rotation = Vector3.new(0, 37.638999938964844, 0)
Part21.Color = Color3.new(0.384314, 0.145098, 0.819608)
Part21.Size = Vector3.new(0.05000000074505806, 0.05000000074505806, 0.18333326280117035)
Part21.BottomSurface = Enum.SurfaceType.Smooth
Part21.BrickColor = BrickColor.new("Royal purple")
Part21.CanCollide = false
Part21.Material = Enum.Material.Neon
Part21.TopSurface = Enum.SurfaceType.Smooth
Part21.brickColor = BrickColor.new("Royal purple")
ManualWeld22.Name = "Weld"
ManualWeld22.Parent = Part21
ManualWeld22.C0 = CFrame.new(0, 0, 0, 0.791873038, 9.8989949e-07, -0.610685706, 3.85404661e-07, 1, 2.12071609e-06, 0.610685766, -1.91469917e-06, 0.791873038)
ManualWeld22.C1 = CFrame.new(-0.560476303, 0.0300579071, -0.510731697, 0.447387427, 0.153498828, -0.881069064, 0.0694960654, -0.988148868, -0.136865571, -0.891636014, 1.10326505e-06, -0.452752978)
ManualWeld22.Part0 = Part21
ManualWeld22.Part1 = MeshPart29
ManualWeld22.part1 = MeshPart29
Part23.Parent = MeshPart2
Part23.CFrame = CFrame.new(-7.97833443, 9.03194618, 67.6936035, 0.79188174, -7.92033234e-07, -0.610674441, 4.23041602e-10, 1, -1.29643286e-06, 0.610675514, 1.02636193e-06, 0.791880965)
Part23.Orientation = Vector3.new(0, -37.63800048828125, 0)
Part23.Position = Vector3.new(-7.978334426879883, 9.031946182250977, 67.693603515625)
Part23.Rotation = Vector3.new(0, -37.63800048828125, 0)
Part23.Color = Color3.new(0.384314, 0.145098, 0.819608)
Part23.Size = Vector3.new(0.05000000074505806, 0.05000000074505806, 0.18333326280117035)
Part23.BottomSurface = Enum.SurfaceType.Smooth
Part23.BrickColor = BrickColor.new("Royal purple")
Part23.CanCollide = false
Part23.Material = Enum.Material.Neon
Part23.TopSurface = Enum.SurfaceType.Smooth
Part23.brickColor = BrickColor.new("Royal purple")
ManualWeld24.Name = "Weld"
ManualWeld24.Parent = Part23
ManualWeld24.C0 = CFrame.new(0, 0, 0, 0.791891396, -6.07913933e-07, 0.610661983, -8.46197509e-07, 1, 2.09282825e-06, -0.610661924, -2.1740334e-06, 0.791891456)
ManualWeld24.C1 = CFrame.new(-0.360182762, 0.0611715317, -0.407808304, 0.447387427, 0.153498828, -0.881069064, 0.0694960654, -0.988148868, -0.136865571, -0.891636014, 1.10326505e-06, -0.452752978)
ManualWeld24.Part0 = Part23
ManualWeld24.Part1 = MeshPart29
ManualWeld24.part1 = MeshPart29
MeshPart25.Parent = MeshPart2
MeshPart25.CFrame = CFrame.new(-10.1823616, 9.15779877, 67.811203, 1, 1.3506035e-06, -3.01004366e-05, -1.35058576e-06, 1, 5.9055003e-07, 3.13521341e-05, -5.90507796e-07, 1)
MeshPart25.Orientation = Vector3.new(0, -0.0020000000949949026, 0)
MeshPart25.Position = Vector3.new(-10.182361602783203, 9.157798767089844, 67.81120300292969)
MeshPart25.Rotation = Vector3.new(0, -0.0020000000949949026, 0)
MeshPart25.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
MeshPart25.Size = Vector3.new(4.120383262634277, 0.2200130820274353, 0.5093228816986084)
MeshPart25.BrickColor = BrickColor.new("Really black")
MeshPart25.CanCollide = false
MeshPart25.Material = Enum.Material.Slate
MeshPart25.brickColor = BrickColor.new("Really black")
ManualWeld26.Name = "Weld"
ManualWeld26.Parent = MeshPart25
ManualWeld26.C0 = CFrame.new(0, 0, 0, 1, -1.66813283e-08, 1.60336149e-05, 1.66458864e-08, 1, 2.21048231e-06, -1.60336149e-05, -2.21048208e-06, 1)
ManualWeld26.C1 = CFrame.new(-1.43059993, -0.232465744, 1.50410414, 0.447389036, 0.153500944, -0.881067872, 0.0694974214, -0.98814851, -0.13686727, -0.89163512, 9.6877784e-07, -0.452754766)
ManualWeld26.Part0 = MeshPart25
ManualWeld26.Part1 = MeshPart29
ManualWeld26.part1 = MeshPart29
MeshPart27.Parent = MeshPart2
MeshPart27.CFrame = CFrame.new(-10.1650925, 9.15769577, 67.8077698, 1, 1.60939567e-06, -2.91765973e-05, -1.60932768e-06, 1, 2.33681635e-06, 3.04282985e-05, -2.33676769e-06, 1)
MeshPart27.Orientation = Vector3.new(0, -0.0020000000949949026, 0)
MeshPart27.Position = Vector3.new(-10.165092468261719, 9.157695770263672, 67.80776977539062)
MeshPart27.Rotation = Vector3.new(0, -0.0020000000949949026, 0)
MeshPart27.Color = Color3.new(0.384314, 0.145098, 0.819608)
MeshPart27.Size = Vector3.new(4.096047878265381, 0.2752147316932678, 0.12173178046941757)
MeshPart27.BrickColor = BrickColor.new("Royal purple")
MeshPart27.CanCollide = false
MeshPart27.Material = Enum.Material.Neon
MeshPart27.brickColor = BrickColor.new("Royal purple")
ManualWeld28.Name = "Weld"
ManualWeld28.Parent = MeshPart27
ManualWeld28.C0 = CFrame.new(0, 0, 0, 1, 8.04804415e-07, 1.70766089e-05, -8.04843751e-07, 1, 2.30784849e-06, -1.7076607e-05, -2.30786213e-06, 1)
ManualWeld28.C1 = CFrame.new(-1.41986513, -0.230694294, 1.49025965, 0.447390646, 0.153503045, -0.88106668, 0.0694987625, -0.988148272, -0.136868924, -0.891634226, 8.39220831e-07, -0.452756554)
ManualWeld28.Part0 = MeshPart27
ManualWeld28.Part1 = MeshPart29
ManualWeld28.part1 = MeshPart29
MeshPart29.Parent = MeshPart2
MeshPart29.CFrame = CFrame.new(-8.18505859, 9.14768028, 67.2000122, 0.447391063, 0.0694961846, -0.891634166, 0.153497323, -0.988149166, 8.40044379e-07, -0.881066918, -0.136863738, -0.452757716)
MeshPart29.Orientation = Vector3.new(0, -116.9209976196289, 171.1699981689453)
MeshPart29.Position = Vector3.new(-8.18505859375, 9.147680282592773, 67.20001220703125)
MeshPart29.Rotation = Vector3.new(180, -63.07899856567383, -8.829999923706055)
MeshPart29.Color = Color3.new(0.239216, 0.0901961, 0.517647)
MeshPart29.Size = Vector3.new(0.5301055908203125, 0.05000000074505806, 0.9627487659454346)
MeshPart29.BrickColor = BrickColor.new("Dark indigo")
MeshPart29.CanCollide = false
MeshPart29.Material = Enum.Material.Slate
MeshPart29.brickColor = BrickColor.new("Dark indigo")
ManualWeld30.Name = "Weld"
ManualWeld30.Parent = MeshPart2
ManualWeld30.C0 = CFrame.new(0, 0, 0, -6.61606737e-06, -1.31246497e-06, 1, 1, 2.51244558e-07, 6.61606782e-06, -2.51253255e-07, 1, 1.31246338e-06)
ManualWeld30.C1 = CFrame.new(0.698414326, 0.0909376144, -2.75696993, 0.447387427, 0.153498828, -0.881069064, 0.0694960654, -0.988148868, -0.136865571, -0.891636014, 1.10326505e-06, -0.452752978)
ManualWeld30.Part0 = MeshPart2
ManualWeld30.Part1 = MeshPart29
ManualWeld30.part1 = MeshPart29
RemoteEvent31.Name = "Noveau"
RemoteEvent31.Parent = Tool0
NLS([[local owner = nil
local char = nil
local Tool = script.Parent
local rs = game:GetService("RunService")
local event = Tool:FindFirstChild("Noveau")
local event2 = Tool:FindFirstChild("Ryumei")
local mouse = game:GetService("Players").LocalPlayer:GetMouse()
local equipped = false
local keycombo = ""
local keycombotime = 0
local keycombobreaktime = 0.5
local keycount = 0
local keytime = 0
local hum = nil
local camera = workspace.CurrentCamera
local gyro = Tool:FindFirstChild("EnmaGyro")

Tool.Equipped:connect(function()
	owner = game:GetService("Players"):GetPlayerFromCharacter(Tool.Parent)
	char = owner.Character
	mouse = owner:GetMouse()
	equipped = true
	hum = char:FindFirstChildOfClass("Humanoid")
	gyro.Parent = char.HumanoidRootPart
end)
Tool.Unequipped:connect(function()
	equipped = false
	gyro.Parent = nil
end)
rs.RenderStepped:Connect(function()
	if equipped then
		keytime = keytime - 0.5
		if keytime < 0.5 then
			keycombo = ""
			keycount = 0
		end
		if char then
			gyro.CFrame = CFrame.lookAt(char.HumanoidRootPart.Position, char.HumanoidRootPart.Position + camera.CFrame.LookVector)
			gyro.D=1250
			gyro.P=7500
			task.wait()
		end
	end
end)
mouse.KeyDown:connect(function(key)
	if not equipped then
		return
	end
	keycombotime = tick()
	if key == "g" then
		event:FireServer("taunt")
		keycombo = ""
		keycount = 0
		keytime = 0
	end
	if key == "h" then
		event:FireServer("grab",camera.CFrame, char.HumanoidRootPart.CFrame)
		keycombo = ""
		keycount = 0
		keytime = 0
	end
	if key == "z" then
		event2:FireServer("z",true)
	end
	if key == "x" then
		event2:FireServer("x",true)
	end	
	if key == "c" then
		event2:FireServer("c",true)
	end		
	if key == "q" then
		event2:FireServer("q",true)
	end
	if key == "e" then
		event2:FireServer("e",true)
	end
	if key == "z"  then
		if keycombo == "sd" then
			event:FireServer("fang",camera.CFrame, char.HumanoidRootPart.CFrame)
		else
			event:FireServer("punch",camera.CFrame, char.HumanoidRootPart.CFrame)
		end
		keycombo = ""
		keycount = 0
		keytime = 0
	end
	if key == "x"  then
		if keycombo == "sa" then
			event:FireServer("tyrant",camera.CFrame, char.HumanoidRootPart.CFrame)
		else
			event:FireServer("kick",camera.CFrame, char.HumanoidRootPart.CFrame)
		end
		keycombo = ""
		keycount = 0
		keytime = 0
	end	
	if key == "c"  then
		if keycombo == "sd" then
			event:FireServer("fang",camera.CFrame, char.HumanoidRootPart.CFrame)
		elseif keycombo == "dds" then
			event:FireServer("striker",camera.CFrame, char.HumanoidRootPart.CFrame)
		elseif keycombo == "asd" then
			event:FireServer("vortex",camera.CFrame, char.HumanoidRootPart.CFrame)
		else
			event:FireServer("slash",camera.CFrame, char.HumanoidRootPart.CFrame)
		end
		keycombo = ""
		keycount = 0
		keytime = 0
	end	
	if key == "q"  then
		if keycombo == "sd" then
			event:FireServer("grenade",camera.CFrame, char.HumanoidRootPart.CFrame)
		elseif keycombo == "asd" then
			event:FireServer("redstar",camera.CFrame, char.HumanoidRootPart.CFrame)
		elseif keycombo == "aad" then
			event:FireServer("shade",camera.CFrame, char.HumanoidRootPart.CFrame)
		elseif keycombo == "wad" then
			event:FireServer("summon",camera.CFrame, char.HumanoidRootPart.CFrame)
		elseif keycombo == "ww" then
			event:FireServer("rumeiga",camera.CFrame, char.HumanoidRootPart.CFrame)
		elseif keycombo == "aa" then
			event:FireServer("korone",camera.CFrame, char.HumanoidRootPart.CFrame)
		elseif keycombo == "dd" then
			event:FireServer("hakurei",camera.CFrame, char.HumanoidRootPart.CFrame)
		elseif keycombo == "ss" then
			event:FireServer("kirisame",camera.CFrame, char.HumanoidRootPart.CFrame)
		elseif keycombo == "ad" then
			event:FireServer("relocate",camera.CoordinateFrame)
		elseif keycombo == "sw" then
			event:FireServer("hazama",camera.CFrame, char.HumanoidRootPart.CFrame)
		elseif keycombo == "dw" then
			event:FireServer("gouda",camera.CFrame, char.HumanoidRootPart.CFrame)
		elseif keycombo == "ssad" then
			event:FireServer("zero",camera.CFrame, char.HumanoidRootPart.CFrame)
		elseif keycombo == "adadad" then
			event:FireServer("overdrive",camera.CFrame, char.HumanoidRootPart.CFrame)
		elseif keycombo == "adadw" then
			event:FireServer("fatal",camera.CFrame, char.HumanoidRootPart.CFrame)			
		elseif keycombo == "asdww" then
			event:FireServer("saz",camera.CFrame, char.HumanoidRootPart.CFrame)
		elseif keycombo == "dsadsa" then
			event:FireServer("blazblue",camera.CFrame, char.HumanoidRootPart.CFrame)
		elseif keycombo == "asdasd" or keycombo == "asdsad" then
			event:FireServer("nightmare",camera.CFrame, char.HumanoidRootPart.CFrame)
		else
			event:FireServer("drive",camera.CFrame, char.HumanoidRootPart.CFrame)
		end
		keycombo = ""
		keycount = 0
		keytime = 0
	end
	if key == "e"  then
		if keycombo == "sd" then
			event:FireServer("charge")
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
		end
	end
end)
mouse.KeyUp:connect(function(key)
	if not equipped then
		return
	end
	if key == "z" then
		event2:FireServer("z",false)
	end
	if key == "x" then
		event2:FireServer("x",false)
	end	
	if key == "c" then
		event2:FireServer("c",false)
	end		
	if key == "q" then
		event2:FireServer("q",false)
	end
	if key == "e" then
		event2:FireServer("e",false)
	end
end)]],Tool0)
RemoteEvent33.Name = "Ryumei"
RemoteEvent33.Parent = Tool0
BodyGyro34.Name = "EnmaGyro"
BodyGyro34.Parent = Tool0
BodyGyro34.MaxTorque = Vector3.new(0, math.huge, 0)
BodyGyro34.P = 14999
BodyGyro34.maxTorque = Vector3.new(0, math.huge, 0)
BodyGyro34.D = 749
for i,v in pairs(mas:GetChildren()) do
	v.Parent = script
	pcall(function() v:MakeJoints() end)
end
Tool0.Parent = owner.Backpack
mas:Destroy()
for i,v in pairs(cors) do
	spawn(function()
		pcall(v)
	end)
end
