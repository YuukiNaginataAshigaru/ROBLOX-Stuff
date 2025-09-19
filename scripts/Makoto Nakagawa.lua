--NOTE: these script lines are made for studio testing only
require(11007181783)()
local owner = game:GetService("Players"):GetPlayerFromCharacter(script.Parent)
local NLS = require(13482937602)
--NOTE: up here these are script lines for studio testing only

local toggle = false
if math.random(0,5) <= 2 then
	toggle = false
else
	toggle = true
end

print([[
--Makoto Nakagawa--
By Hiko Zukusanagi / IkariGames                            
--------------------------------
Makoto is a very ordinary, kind, decisive, and friendly person, to the point that he seems a little 
bit insecure about it, yet he is still outgoing and caring towards his friends, and he has a freedom 
of a sense of humor along with occasional flirtatious or silly behavior. He also tends to comfort 
others when they experience hardship, and does admit to having various distinguishing features, 
such as his unique sense of optimism, and being able to let his emotions control him from time to time.
He also tends to comfort others when they experience hardship.

Makoto is very kind, supportive and forgiving, though slightly naive at times. 
He is friendly, polite and a lot more down-to-earth compared to other people. 
These qualities could be the reason he seems to successfully approach and befriend 
even his most antisocial peers and classmates during Free Time.

Makoto also portrays some feminine qualities and traits, especially when he sometimes dresses as a 
girl, showing his feminine beauty, yet it would cause others to mistake him for a girl instead,
so he just identifies himself as a male.
--------------------------------
(Controls)

(Unarmed Stance / Soul-dan Stance):

Dash (hold S to dash back): V

Switch Modes: P

Taunt (Respect while moving): G
Grab (can be done in air): H
Weak Punch / Punch: Z
Weak Kick / Kick: X
Strong Punch / Slash: C
Strong Kick / Heavy Slash: Q
Dust Attack: E

Run forwards: double tap W, hold to keep running, release to end

Charge: SDE
Transformation: SDSAE
Toggle Instant Kills (for certain moves only): SAWADAE

Initiate Execution: SDH

(all of the moves require the above move hit a humanoid first)
+ Z = Last Resort
+ X = Riot Stomp / From Me to You Too
+ C = Flash Cut / Nakoruru
+ Q = Five-Seven / Kamui Tokinomiya
+ E = Desert Eagle
+ V = Spare

Tobu-Hono / Ashiru Flame: SDQ

Tokagami-Ashiru / Ensei Crusader: DDSC
Gecchu: hold X during Tokagami-Ashiru
Seikujin: hold C during Ensei Crusader
Koruga: hold X during Seikujin or Ensei Crusader
Zeiga: hold Z during Seikujin or Ensei Crusader

Utsusemi-Sora / Utsusemi-Chouyaku: SAX

Eisenko / Utsusemi-Danku: SADX

Blackwound / Whirlwinding Saw: ASDQ

Can't you see I'm reading manga?! / Useless! (Counter): AADQ

Flame Fist: SDC

DIVE / Harmonic Kick: SDX

Stardust Sweep / Stardust Crusader (hold Q for alternate finish): ASDC

Shard Fist / Kouma-Youran: SDZ
Flame Grenade: hold Z during Shard Fist

Tomoko-Yumeno: hold C during Kouma-Youran
Sugarie Saffron: hold Z during Tomoko-Yumeno

Five-Seven / Desert Eagle: SAZ

Noodle Soup that's good for you / The drink that heals you: DASQ

Ember: AADC or ADDC

Fireball Shot: SWSQ

SHOOTING STAR: DAX

Comet Burst: SSADQ

A.S.H.I.R.U.: DSASDQ
+ Big Bang Smash!!: hold C during A.S.H.I.R.U. (Unarmed Stance only)
+ Harmonica: hold C during A.S.H.I.R.U. (Soul-dan Stance only)
+ Ember: hold Z during Harmonica (Soul-dan Stance only)

Enhanced Fireball Shot / Burning Cross Slash: DSADDQ

G.I.G.A. / G.I.G.A. Smash: DSADDC

Judas-san's Great Explosive Technique / G.I.G.A. Ring: ASDSDQ

Maybe I'll turn you to something else...: ADADWQ

Toko-chan's Desperate Slam: ASDWWQ

Activate Overdrive (lasts for a minute): ADADADQ

(must be on 400 HP or less or overdrive activated)
|
|
|
V

The Shapeshifting Trick / ALL STARS BLAZING: ASDASDQ

Ryuga: Blackwound ver. Perfect / Ryuga: Shizumi's Undying Wish: DSADSAQ

]])

local player = owner
local char = player.Character
local hum = char:FindFirstChildOfClass("Humanoid")
--animation disabler
if char:FindFirstChild("Animate") then char:FindFirstChild("Animate").Disabled = true end	
NLS([==[local model = owner.Character
local humanoid = model:FindFirstChildOfClass("Humanoid") or model:FindFirstChildOfClass("AnimationController")
local animator = humanoid:FindFirstChildOfClass("Animator")
for i,v in ipairs(animator:GetPlayingAnimationTracks()) do
	v:Stop()
end]==])
--check if Humanoid Rig Type is R15. If not, then error.
if hum.RigType == Enum.HumanoidRigType.R15 then
	error([[This script will not function if your rig is set to R15.
	Switch to the R6 avatar type to make this script to function.
	]])
end
--character parts
local head = char:FindFirstChild("Head")
local torso = char:FindFirstChild("Torso")
local ra = char:FindFirstChild("Right Arm")
local la = char:FindFirstChild("Left Arm")
local rl = char:FindFirstChild("Right Leg")
local ll = char:FindFirstChild("Left Leg")
local root = char:FindFirstChild("HumanoidRootPart")
--character motors
local rj = root:FindFirstChild("Root Hip") or root:FindFirstChild("RootJoint")
local nk = torso.Neck
local rs = torso:FindFirstChild("Right Shoulder")
local ls = torso:FindFirstChild("Left Shoulder")
local rh = torso:FindFirstChild("Right Hip")
local lh = torso:FindFirstChild("Left Hip")

--basic functions
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
local rservice = game:GetService("RunService")
local debris = game:GetService("Debris")
local tweens = game:GetService("TweenService")
local color = Color3.new
local udim2 = UDim2.new

--animation stuff
local anim = "idle"
local frame = 1
local sine = tick()*60
local spin = 0

--C0 lerp fixes
local rjC0 = cframe(0, 0, 0) * angles(rad(-90), rad(0), rad(180))
local nkC0 = cframe(0, 1, 0) * angles(rad(-90), rad(0), rad(180))
local rsC0 = cframe(-0.5, 0, 0) * angles(rad(0), rad(90), rad(0))
local lsC0 = cframe(0.5, 0, 0) * angles(rad(0), rad(-90), rad(0))

--mouse and key stuff
local mouse = player:GetMouse()
local keycombo = ""
local keycombotime = 0
local keycombobreaktime = 0.5
local keycount = 0
local keytime = 0
local holdingw = false
local holdings = false
local holdinga = false
local holdingd = false
local holdingc = false
local holdingz = false
local holdingx = false
local holdingq = false
local holdinge = false
local holdingv = false

--values
local running = false
local sitting = false
local lying = false
local attack = false
local hurt = false
local fallen = false
local ducking = false
local inair = false
local guarding = false
local moving = false
local overdrive = false
local dead = false
local voices = true
local sword = false
local dresst = false
local mp = 1000
local doingcounter = false
local instakill = true
local countered = false
local anchorm = false
local customize = false

--humanoid stuff
hum.WalkSpeed = 18
hum.BreakJointsOnDeath = false
if hum.MaxHealth < 2500 then
	hum.MaxHealth = 2500
	hum.Health = hum.MaxHealth
end
hum.UseJumpPower = true
if hum.JumpPower < 100 then
	hum.JumpPower = 100
end
local ogws = hum.WalkSpeed
local ogjp = hum.JumpPower
local ogjh = hum.JumpHeight
local maxhp = hum.MaxHealth

--functions
function raycast(pos, dir, ran, ignore)
	return workspace:FindPartOnRay(Ray.new(pos, dir.unit * ran), ignore)
end

function castproperyray(start,ende,dist,ignore)
	local direct = cframe(start,ende).lookVector
	return raycast(start, direct, dist, ignore)
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
	task.wait(0.001)
	sound:Destroy()
end

function sound1(id, volume, pitch, parent, tpos, looped, debree, dtime)
	local sound = new("Sound")
	sound.SoundId = "rbxasset://sounds/"..id
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
	debris:AddItem(sound,11.5)
end

function sound3(id, volume, pitch, parent, tpos)
	local sound = new("Sound")
	sound.SoundId = "rbxasset://sounds/"..id
	sound.Volume = volume
	sound.Pitch = pitch
	sound.Parent = parent
	sound.Name = "CSUFSound"
	sound.TimePosition = tpos or 0
	sound.PlayOnRemove = true
	sound:Destroy()
end

function super(type)
	if type == 1 then
		sound(160772554,3,1.1,root,0,false)
	elseif type == 2 then
		sound(6892632909,3,1,root,0,false)
	elseif type == 3 then
		if game.PlaceId == 11510416200 or game.PlaceId == 126783576555525 or game.PlaceId == 89201052571047 or game.PlaceId == 79868761121850 then
			sound(131445648085306,11.5,1,torso,127.92,false,true,1.615)
			sound(131445648085306,11.5,1,torso,127.92,false,true,1.615)
			sound(131445648085306,11.5,1,torso,127.92,false,true,1.615)
		else
			sound(5917967222,3,1,root,0,false)
		end
	else
		sound(153092315,2.5,1.1,root,0,false)
	end
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
	sphere.CanTouch = false
	sphere.CFrame = root.CFrame
	local tween = tweens:Create(sphere, TweenInfo.new(1.5), {Size = vect3(45,45,45), Transparency = 1})
	tween:Play()
	tween.Completed:Connect(function() sphere:Destroy() end)
end

--damage functions
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
	if player.UserId == 50203523 then
		if huma.Parent:IsA("Model") and huma.Parent.Name ~= "ninjakaiden1" then
			if huma.MaxHealth >= 1000000 then
				huma.MaxHealth = 100
				huma.Health = 100
			end
		end
	end
	if not overdrive then
		huma:TakeDamage(damage)
	else
		huma:TakeDamage(damage * 2)
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
						if vtorso:FindFirstChild("DustHitBy") then vtorso:FindFirstChild("DustHitBy"):Destroy() end
						if type2 == "fspunch" then
							local vel = new("BodyVelocity")
							vel.Parent = vtorso
							vel.MaxForce = vect3(math.huge,math.huge,math.huge)
							vel.Velocity = root.CFrame.lookVector * 40
							debris:AddItem(vel,0.15)
						elseif type2 == "fskick" then
							local vel = new("BodyVelocity")
							vel.Parent = vtorso
							vel.MaxForce = vect3(math.huge,math.huge,math.huge)
							vel.Velocity = root.CFrame.lookVector * 60
							debris:AddItem(vel,0.025)
							vhum.PlatformStand = true
							spawn(function() 
								task.wait(5)
								vhum.PlatformStand = false
							end)
						elseif type2 == "fslash" then
							local vel = new("BodyVelocity")
							vel.Parent = vtorso
							vel.MaxForce = vect3(math.huge,math.huge,math.huge)
							vel.Velocity = root.CFrame.lookVector * 60
							debris:AddItem(vel,0.125)
						elseif type2 == "fhslash" then
							local vel = new("BodyVelocity")
							vel.Parent = vtorso
							vel.MaxForce = vect3(math.huge,math.huge,math.huge)
							vel.Velocity = root.CFrame.lookVector * 75
							debris:AddItem(vel,0.15)
						elseif type2 == "trip" then
							local vel = new("BodyVelocity")
							vel.Parent = vtorso
							vel.MaxForce = vect3(math.huge,math.huge,math.huge)
							vel.Velocity = root.CFrame.lookVector * 7.5 + root.CFrame.upVector * 7.5
							debris:AddItem(vel,0.05)
							vhum.PlatformStand = true
							spawn(function() 
								task.wait(5)
								vhum.PlatformStand = false
							end)
						elseif type2 == "dust" then
							if vtorso:FindFirstChild("DustHitBy") then vtorso:FindFirstChild("DustHitBy"):Destroy() end
							local bpos = new("BodyPosition")
							bpos.Name = "DustHitBy"
							bpos.Parent = vtorso
							bpos.MaxForce = vect3(39999,39999,39999)
							bpos.D = 2000
							bpos.Position = root.CFrame * cframe(0,60,-5).Position
							debris:AddItem(bpos,0.45)
						elseif type2 == "adust" then
							if vtorso:FindFirstChild("DustHitBy") then vtorso:FindFirstChild("DustHitBy"):Destroy() end
							local bpos = new("BodyPosition")
							bpos.Name = "DustHitBy"
							bpos.Parent = vtorso
							bpos.MaxForce = vect3(39999,39999,39999)
							bpos.D = 2000
							bpos.Position = root.CFrame * cframe(0,15,-15).Position
							debris:AddItem(bpos,0.45)
						elseif type2 == "dspunch" then
							if vtorso:FindFirstChild("DustHitBy") then vtorso:FindFirstChild("DustHitBy"):Destroy() end
							local bpos = new("BodyPosition")
							bpos.Name = "DustHitBy"
							bpos.Parent = vtorso
							bpos.MaxForce = vect3(39999,39999,39999)
							bpos.D = 2000
							bpos.Position = root.CFrame * cframe(0,35,-5).Position
							debris:AddItem(bpos,0.3)
						elseif type2 == "knockdown" then
							local vel = new("BodyVelocity")
							vel.Parent = vtorso
							vel.MaxForce = vect3(math.huge,math.huge,math.huge)
							vel.Velocity = root.CFrame.lookVector * 55
							debris:AddItem(vel,0.025)
							vhum.PlatformStand = true
							spawn(function() 
								task.wait(5)
								vhum.PlatformStand = false
							end)
						elseif type2 == "flame" then
							vtorso.Velocity = root.CFrame.lookVector * 65
							vhum.PlatformStand = true
							spawn(function() 
								task.wait(5)
								vhum.PlatformStand = false
							end)
						elseif type2 == "flame2" then
							vtorso.Velocity = root.CFrame.lookVector * 50 + root.CFrame.upVector * 115
							vhum.PlatformStand = true
							spawn(function() 
								task.wait(5)
								vhum.PlatformStand = false
							end)
						elseif type2 == "tokagami" then
							if vtorso:FindFirstChild("TokagamiHitBy") then vtorso:FindFirstChild("TokagamiHitBy"):Destroy() end
							local bpos = new("BodyPosition")
							bpos.Name = "TokagamiHitBy"
							bpos.Parent = vtorso
							bpos.MaxForce = vect3(39999,39999,39999)
							bpos.D = 1500
							bpos.Position = root.CFrame * cframe(0,45,-15).Position
							debris:AddItem(bpos,0.1)
						elseif type2 == "tokagami2" then
							if vtorso:FindFirstChild("TokagamiHitBy") then vtorso:FindFirstChild("TokagamiHitBy"):Destroy() end
							vtorso.Velocity = root.CFrame.lookVector* 75 + root.CFrame.upVector * -60
							vhum.PlatformStand = true
							spawn(function() 
								task.wait(5)
								vhum.PlatformStand = false
							end)
							if player.UserId == 50203523 then
								if instakill and random(0,10) == 0 then
									if not game:GetService("Players"):GetPlayerFromCharacter(v) then
										instantkill(v,true)
									end
									sound2(5687067405,3.5,1,root,0)
									sound(7441099080,2,1,vtorso,0,false)
									hiteffect("blood",vtorso)
									vtorso.Velocity = root.CFrame.lookVector*150 + root.CFrame.upVector * -200
								end
							end
						elseif type2 == "utsusemi" then
							if vtorso:FindFirstChild("UtsusemiHitBy") then vtorso:FindFirstChild("UtsusemiHitBy"):Destroy() end
							local bpos = new("BodyPosition")
							bpos.Name = "UtsusemiHitBy"
							bpos.Parent = vtorso
							bpos.MaxForce = vect3(math.huge,math.huge,math.huge)
							bpos.D = 2000
							bpos.Position = root.CFrame * cframe(0,15,-45).Position
							debris:AddItem(bpos,0.15)
						elseif type2 == "utsusemi2" then
							if vtorso:FindFirstChild("UtsusemiHitBy") then vtorso:FindFirstChild("UtsusemiHitBy"):Destroy() end
							vtorso.Velocity = root.CFrame.lookVector*75 + root.CFrame.upVector * 35
							vhum.PlatformStand = true
							spawn(function() 
								task.wait(5)
								vhum.PlatformStand = false
							end)
						elseif type2 == "seikujin" then
							if vtorso:FindFirstChild("TokagamiHitBy") then vtorso:FindFirstChild("TokagamiHitBy"):Destroy() end
							local vel = new("BodyVelocity")
							vel.Parent = vtorso
							vel.MaxForce = vect3(math.huge,math.huge,math.huge)
							vel.Velocity = root.CFrame.upVector * 45
							debris:AddItem(vel,0.05)
							vhum.PlatformStand = true
							spawn(function() 
								task.wait(5)
								vhum.PlatformStand = false
							end)	
						elseif type2 == "koruga" then
							if vtorso:FindFirstChild("TokagamiHitBy") then vtorso:FindFirstChild("TokagamiHitBy"):Destroy() end
							vtorso.Velocity = root.CFrame.lookVector*60
							vhum.PlatformStand = true
							spawn(function() 
								task.wait(5)
								vhum.PlatformStand = false
							end)
							if player.UserId == 50203523 then
								if instakill and random(0,10) == 0 then
									if not game:GetService("Players"):GetPlayerFromCharacter(v) then
										instantkill(v,true)
									end
									sound2(5687067405,3.5,1,root,0)
									sound(7441099080,2,1,vtorso,0,false)
									hiteffect("blood",vtorso)
									vtorso.Velocity = root.CFrame.lookVector*150
								end
							end
						elseif type2 == "eisen" then
							if vtorso:FindFirstChild("EisenHitBy") then vtorso:FindFirstChild("EisenHitBy"):Destroy() end
							local bpos = new("BodyPosition")
							bpos.Name = "EisenHitBy"
							bpos.Parent = vtorso
							bpos.MaxForce = vect3(math.huge,math.huge,math.huge)
							bpos.D = 2000
							bpos.Position = root.CFrame * cframe(0,25,-35).Position
							debris:AddItem(bpos,0.15)
						elseif type2 == "eisen2" then
							if vtorso:FindFirstChild("EisenHitBy") then vtorso:FindFirstChild("EisenHitBy"):Destroy() end
							vtorso.Velocity = root.CFrame.lookVector*75 + root.CFrame.upVector * 60
							vhum.PlatformStand = true
							spawn(function() 
								task.wait(5)
								vhum.PlatformStand = false
							end)
							if player.UserId == 50203523 then
								if instakill and random(0,10) == 0 then
									if not game:GetService("Players"):GetPlayerFromCharacter(v) then
										instantkill(v,true)
									end
									sound2(5687067405,3.5,1,root,0)
									sound(7441099080,2,1,vtorso,0,false)
									hiteffect("blood",vtorso)
									vtorso.Velocity = root.CFrame.lookVector*250  + root.CFrame.upVector * 60
								end
							end
						elseif type2 == "blackwound" then
							vtorso.Velocity = root.CFrame.lookVector * 30 + root.CFrame.upVector * 45
							vhum.PlatformStand = true
							spawn(function() 
								task.wait(5)
								vhum.PlatformStand = false
							end)
							if player.UserId == 50203523 then
								if instakill and random(0,10) == 0 then
									if not game:GetService("Players"):GetPlayerFromCharacter(v) then
										instantkill(v,true)
									end
									sound2(5687067405,3.5,1,root,0)
									sound(7441099080,2,1,vtorso,0,false)
									hiteffect("blood",vtorso)
									vtorso.Velocity = root.CFrame.lookVector*256  + root.CFrame.upVector * 75
								end
							end
						elseif type2 == "shard" then
							if vtorso:FindFirstChild("ShardHitBy") then vtorso:FindFirstChild("ShardHitBy"):Destroy() end
							local bpos = new("BodyPosition")
							bpos.Parent = vtorso
							bpos.Name = "ShardHitBy"
							bpos.MaxForce = vect3(39999,39999,39999)
							bpos.D = 1750
							bpos.Position = root.CFrame * cframe(0,0,-78.9).Position
							debris:AddItem(bpos,0.1)
						elseif type2 == "shardb" then
							if vtorso:FindFirstChild("ShardHitBy") then vtorso:FindFirstChild("ShardHitBy"):Destroy() end
							vtorso.Velocity = root.CFrame.lookVector * 45 + root.CFrame.upVector * 75
							vhum.PlatformStand = true
							spawn(function() 
								task.wait(5)
								vhum.PlatformStand = false
							end)
							if player.UserId == 50203523 then
								if instakill and random(0,10) == 0 then
									if not game:GetService("Players"):GetPlayerFromCharacter(v) then
										instantkill(v,true)
									end
									sound2(5687067405,3.5,1,root,0)
									sound(7441099080,2,1,vtorso,0,false)
									hiteffect("blood",vtorso)
									vtorso.Velocity = root.CFrame.lookVector*500+ root.CFrame.upVector * 450
								end
							end	
						elseif type2 == "kouma" then
							if vtorso:FindFirstChild("KoumaHitBy") then vtorso:FindFirstChild("KoumaHitBy"):Destroy() end
							local bpos = new("BodyPosition")
							bpos.Name = "KoumaHitBy"
							bpos.Parent = vtorso
							bpos.MaxForce = vect3(39999,39999,39999)
							bpos.D = 1750
							bpos.Position = root.CFrame * cframe(0,0,-50).Position
							debris:AddItem(bpos,0.1)
						elseif type2 == "kouma2" then
							if vtorso:FindFirstChild("KoumaHitBy") then vtorso:FindFirstChild("KoumaHitBy"):Destroy() end
							vtorso.Velocity = root.CFrame.lookVector * 20
							vhum.PlatformStand = true
							spawn(function() 
								task.wait(5)
								vhum.PlatformStand = false
							end)
						elseif type2 == "kouma3" then
							if vtorso:FindFirstChild("KoumaHitBy") then vtorso:FindFirstChild("KoumaHitBy"):Destroy() end
							vtorso.Velocity = root.CFrame.lookVector * 30 + root.CFrame.upVector * 75
							vhum.PlatformStand = true
							spawn(function() 
								task.wait(5)
								vhum.PlatformStand = false
							end)
						elseif type2 == "stardust" then
							if vtorso:FindFirstChild("StardustHitBy") then vtorso:FindFirstChild("StardustHitBy"):Destroy() end
							local bpos = new("BodyPosition")
							bpos.Name = "StardustHitBy"
							bpos.Parent = vtorso
							bpos.MaxForce = vect3(39999,39999,39999)
							bpos.D = 1750
							bpos.Position = root.CFrame * cframe(0,0,-72.5).Position
							debris:AddItem(bpos,0.1)	
						elseif type2 == "stardust2" then
							if vtorso:FindFirstChild("StardustHitBy") then vtorso:FindFirstChild("StardustHitBy"):Destroy() end
							local bpos = new("BodyPosition")
							bpos.Name = "StardustHitBy"
							bpos.Parent = vtorso
							bpos.MaxForce = vect3(math.huge,math.huge,math.huge)
							bpos.D = 2000
							bpos.Position = root.CFrame * cframe(0,25,-72.5).Position
							debris:AddItem(bpos,0.15)
						elseif type2 == "stardust1" then
							if vtorso:FindFirstChild("StardustHitBy") then vtorso:FindFirstChild("StardustHitBy"):Destroy() end
							vtorso.Velocity = root.CFrame.lookVector * 45
							vhum.PlatformStand = true
							spawn(function() 
								task.wait(5)
								vhum.PlatformStand = false
							end)
						elseif type2 == "stardust0" then
							if vtorso:FindFirstChild("StardustHitBy") then vtorso:FindFirstChild("StardustHitBy"):Destroy() end
							vtorso.Velocity = root.CFrame.lookVector * 30 + root.CFrame.upVector * 60
							vhum.PlatformStand = true
							spawn(function() 
								task.wait(5)
								vhum.PlatformStand = false
							end)
							if player.UserId == 50203523 then
								if instakill and random(0,10) == 0 then
									if not game:GetService("Players"):GetPlayerFromCharacter(v) then
										instantkill(v,true)
									end
									sound2(5687067405,3.5,1,root,0)
									sound(7441099080,2,1,vtorso,0,false)
									hiteffect("blood",vtorso)
									vtorso.Velocity = root.CFrame.lookVector*60+ root.CFrame.upVector * 150
								end
							end	
						elseif type2 == "ckick" then
							local vel = new("BodyVelocity")
							vel.Parent = vtorso
							vel.MaxForce = vect3(math.huge,math.huge,math.huge)
							vel.Velocity = root.CFrame.lookVector * 60
							debris:AddItem(vel,0.025)
							vhum.PlatformStand = true
							spawn(function() 
								task.wait(5)
								vhum.PlatformStand = false
							end)	
							if player.UserId == 50203523 then
								if instakill and random(0,10) == 0 then
									if not game:GetService("Players"):GetPlayerFromCharacter(v) then
										instantkill(v,true)
									end
									sound2(5687067405,3.5,1,root,0)
									sound(7441099080,2,1,vtorso,0,false)
									hiteffect("blood",vtorso)
									vtorso.Velocity = root.CFrame.lookVector*120+ root.CFrame.upVector * 45
								end
							end	
						elseif type2 == "fafnir" then
							vtorso.Velocity = root.CFrame.lookVector * 60
							vhum.PlatformStand = true
							spawn(function() 
								task.wait(5)
								vhum.PlatformStand = false
							end)
							if player.UserId == 50203523 then
								if instakill and random(0,25) == 0 then
									if not game:GetService("Players"):GetPlayerFromCharacter(v) then
										instantkill(v,true)
									end
									sound2(5687067405,3.5,1,root,0)
									sound(7441099080,2,1,vtorso,0,false)
									hiteffect("blood",vtorso)
									vtorso.Velocity = root.CFrame.lookVector*120
								end
							end	
						elseif type2 == "fiveseven" then
							if vtorso:FindFirstChild("FiveDeagleHitBy") then vtorso:FindFirstChild("FiveDeagleHitBy"):Destroy() end
							local bpos = new("BodyPosition")
							bpos.Name = "FiveDeagleHitBy"
							bpos.Parent = vtorso
							bpos.MaxForce = vect3(math.huge,math.huge,math.huge)
							bpos.D = 2000
							bpos.Position = root.CFrame * cframe(0,0,-25).Position
							debris:AddItem(bpos,0.125)
						elseif type2 == "deagle" then
							if vtorso:FindFirstChild("FiveDeagleHitBy") then vtorso:FindFirstChild("FiveDeagleHitBy"):Destroy() end
							local bpos = new("BodyPosition")
							bpos.Name = "FiveDeagleHitBy"
							bpos.Parent = vtorso
							bpos.MaxForce = vect3(math.huge,math.huge,math.huge)
							bpos.D = 1500
							bpos.Position = root.CFrame * cframe(0,0,-32.5).Position
							debris:AddItem(bpos,0.125)
						elseif type2 == "giga" then
							if vtorso:FindFirstChild("GigaHitBy") then vtorso:FindFirstChild("GigaHitBy"):Destroy() end
							local bpos = new("BodyPosition")
							bpos.Name = "GigaHitBy"
							bpos.Parent = vtorso
							bpos.MaxForce = vect3(math.huge,math.huge,math.huge)
							bpos.D = 1500
							bpos.Position = root.CFrame * cframe(0,10,-10).Position
							debris:AddItem(bpos,0.3)
							vhum.PlatformStand = true
							spawn(function() 
								task.wait(5)
								vhum.PlatformStand = false
							end)
						elseif type2 == "giga2" then
							if vtorso:FindFirstChild("GigaHitBy") then vtorso:FindFirstChild("GigaHitBy"):Destroy() end
							vtorso.Velocity = root.CFrame.lookVector*75 + root.CFrame.upVector * 50
							vhum.PlatformStand = true
							spawn(function() 
								task.wait(5)
								vhum.PlatformStand = false
							end)
							if player.UserId == 50203523 then
								if instakill and random(0,10) == 0 then
									if not game:GetService("Players"):GetPlayerFromCharacter(v) then
										instantkill(v,true)
									end
									sound2(5687067405,3.5,1,root,0)
									sound(7441099080,2,1,vtorso,0,false)
									hiteffect("blood",vtorso)
									vtorso.Velocity = root.CFrame.lookVector*500+ root.CFrame.upVector * 75
								end
							end	
						elseif type2 == "fireball" then
							vtorso.Velocity = root.CFrame.lookVector * 15
							vhum.PlatformStand = true
							spawn(function() 
								task.wait(5)
								vhum.PlatformStand = false
							end)
							if player.UserId == 50203523 then
								if instakill and random(0,25) == 0 then
									if not game:GetService("Players"):GetPlayerFromCharacter(v) then
										instantkill(v,true)
									end
									sound2(5687067405,3.5,1,root,0)
									sound(7441099080,2,1,vtorso,0,false)
									hiteffect("blood",vtorso)
									vtorso.Velocity = root.CFrame.lookVector*360
								end
							end	
						elseif type2 == "comet" then
							local bpos = new("BodyPosition")
							bpos.Name = "CometHitBy"
							bpos.Parent = vtorso
							bpos.MaxForce = vect3(math.huge,math.huge,math.huge)
							bpos.D = 1150
							bpos.Position = root.CFrame * cframe(0,45,-35).Position
							debris:AddItem(bpos,0.5)
							vhum.PlatformStand = true
							spawn(function() 
								task.wait(10)
								vhum.PlatformStand = false
							end)
							if player.UserId == 50203523 then
								if instakill then
									if not game:GetService("Players"):GetPlayerFromCharacter(v) then
										if game.PlaceId == 11510416200 or game.PlaceId == 126783576555525 or game.PlaceId == 89201052571047 or game.PlaceId == 79868761121850 then
											sound(79887722971140,4.5,1,torso,52.075,false,true,2.4)
										else
											sound(17592192684,1.5,1,torso,0,false)
										end
										hiteffect("boom",vtorso)
										local fire = new("Fire")
										fire.Parent = vtorso
										fire.Size = 10
										fire.Heat = 25
										sound(303632290,5,1,vtorso,0,true)
										local flash = new("ScreenGui")
										flash.Parent = player:FindFirstChild("PlayerGui")
										local frame = new("Frame")
										frame.Parent = flash
										frame.Size = udim2(1,0,1,0)
										frame.BackgroundColor3 = color(1,1,1)
										frame.BackgroundTransparency = 0
										local death = new("ImageLabel")
										death.Parent = flash
										death.Position = udim2(0.286, 0, 0.1, 0)
										death.Size = udim2(0, 450, 0, 450)
										death.BackgroundTransparency = 1
										death.Image = "rbxassetid://12472046162"
										spawn(function()
											for i = 1,45 do
												task.wait()
												frame.BackgroundTransparency = frame.BackgroundTransparency + 1/45
												death.ImageTransparency = death.ImageTransparency + 1/45
											end
										end)
										debris:AddItem(flash, 5)
										instantkill(v,true)
										sound2(17561469788,3.5,1,root,0)
										sound(7441099080,2,1,vtorso,0,false)
										hiteffect("blood",vtorso)
									else
										if not overdrive then
											vhum:TakeDamage(115)
										else
											vhum:TakeDamage(230)
										end
									end
								end
							end	
						elseif type2 == "guillotine" then
							if vtorso:FindFirstChild("GuillotineMove") then vtorso:FindFirstChild("GuillotineMove"):Destroy() end
							vtorso.Velocity = root.CFrame.lookVector*75 + root.CFrame.upVector * 50
							vhum.PlatformStand = true
							spawn(function() 
								task.wait(5)
								vhum.PlatformStand = false
							end)
							if player.UserId == 50203523 then
								if instakill and random(0,10) == 0 then
									instantkill(v)
									sound2(5687067405,3.5,1,root,0)
									sound(7441099080,2,1,vtorso,0,false)
									hiteffect("blood",vtorso)
									vtorso.Velocity = root.CFrame.lookVector*500+ root.CFrame.upVector * 100
								end
							end	
						elseif type2 == "yoma" then
							vtorso.Velocity = root.CFrame.lookVector*100
							vhum.PlatformStand = true
							spawn(function() 
								task.wait(5)
								vhum.PlatformStand = false
							end)
							if player.UserId == 50203523 then
								if instakill and random(0,25) == 0 then
									if not game:GetService("Players"):GetPlayerFromCharacter(v) then
										instantkill(v,true)
									end
									sound2(5687067405,3.5,1,root,0)
									sound(7441099080,2,1,vtorso,0,false)
									hiteffect("blood",vtorso)
									vtorso.Velocity = root.CFrame.lookVector*500
								end
							end	
						elseif type2 == "combo" then
							if vtorso:FindFirstChild("ComboHitBy") then vtorso:FindFirstChild("ComboHitBy"):Destroy() end
							local vel = new("BodyVelocity")
							vel.Parent = vtorso
							vel.Name = "ComboHitBy"
							vel.MaxForce = vect3(math.huge,math.huge,math.huge)
							vel.Velocity = root.CFrame.lookVector * 0
							debris:AddItem(vel,1.5)
						elseif type2 == "combo0" then
							if vtorso:FindFirstChild("ComboHitBy") then vtorso:FindFirstChild("ComboHitBy"):Destroy() end
							vtorso.CFrame = root.CFrame * cframe(0,0,-2.5)
							if player.UserId == 50203523 then
								if vhum.Health <= 10 then
									sound2(7122613461,5,1,v:FindFirstChild("Head"),0,false)
									sound(17493997647,4.5,1,v:FindFirstChild("Head"),0,false)
									sound(7441099080,2,1,v:FindFirstChild("Head"),0,false)
									hiteffect("blood",v:FindFirstChild("Head"))
									instantkill(v,true,true)
									sound(18567893733,2.5,1,vtorso,0,false)
									makeblaudy(v,vtorso,v:FindFirstChild("Head"),15,false)
									if vtorso:FindFirstChild("Neck") then vtorso:FindFirstChild("Neck"):Destroy() end
									if v:FindFirstChild("Head"):FindFirstChild("Neck") then v:FindFirstChild("Head"):FindFirstChild("Neck"):Destroy() end
									for i,v in pairs(v:GetDescendants()) do
										if v:IsA("Hat") or v:IsA("Accessory") then
											if v:FindFirstChild("Handle") then
												v:FindFirstChild("Handle").CanCollide = true
											end
										end
									end
									v:FindFirstChild("Head").CanCollide = true
									v:FindFirstChild("Head").Velocity = root.CFrame.lookVector * -15 + root.CFrame.upVector * 30
								else
									if not overdrive then
										vhum:TakeDamage(10)
									else
										vhum:TakeDamage(20)
									end
								end
							else
								if not overdrive then
									vhum:TakeDamage(10)
								else
									vhum:TakeDamage(20)
								end
							end
							local vel = new("BodyVelocity")
							vel.Parent = vtorso
							vel.Name = "ComboHitBy"
							vel.MaxForce = vect3(math.huge,math.huge,math.huge)
							vel.Velocity = root.CFrame.lookVector * 0
							debris:AddItem(vel,1.5)
						elseif type2 == "combo1" then
							if vtorso:FindFirstChild("ComboHitBy") then vtorso:FindFirstChild("ComboHitBy"):Destroy() end
							vtorso.CFrame = root.CFrame * cframe(0,0,-2.5) * angles(rad(0),rad(180),0)
							local vel = new("BodyVelocity")
							vel.Parent = vtorso
							vel.Name = "ComboHitBy"
							vel.MaxForce = vect3(math.huge,math.huge,math.huge)
							vel.Velocity = root.CFrame.lookVector * 0
							debris:AddItem(vel,1.5)
						elseif type2 == "combo0a" then
							if vtorso:FindFirstChild("ComboHitBy") then vtorso:FindFirstChild("ComboHitBy"):Destroy() end
							vtorso.CFrame = root.CFrame * cframe(0,0,-2.5)
							if player.UserId == 50203523 then
								if vhum.Health <= 10 then
									sound2(7122613461,5,1,v:FindFirstChild("Head"),0,false)
									sound(17493997647,4.5,1,v:FindFirstChild("Head"),0,false)
									sound(7441099080,2,1,v:FindFirstChild("Head"),0,false)
									hiteffect("blood",v:FindFirstChild("Head"))
									instantkill(v,true,true)
									sound(18567893733,2.5,1,vtorso,0,false)
									makeblaudy(v,vtorso,v:FindFirstChild("Head"),15,false)
									if vtorso:FindFirstChild("Neck") then vtorso:FindFirstChild("Neck"):Destroy() end
									if v:FindFirstChild("Head"):FindFirstChild("Neck") then v:FindFirstChild("Head"):FindFirstChild("Neck"):Destroy() end
									for i,v in pairs(v:GetDescendants()) do
										if v:IsA("Hat") or v:IsA("Accessory") then
											if v:FindFirstChild("Handle") then
												v:FindFirstChild("Handle").CanCollide = true
											end
										end
									end
									v:FindFirstChild("Head").CanCollide = true
									v:FindFirstChild("Head").Velocity = root.CFrame.lookVector * -15 + root.CFrame.upVector * 30							
								else
									if not overdrive then
										vhum:TakeDamage(10)
									else
										vhum:TakeDamage(20)
									end
									vhum.PlatformStand = true
									spawn(function() 
										task.wait(5)
										vhum.PlatformStand = false
									end)
									local vel = new("BodyVelocity")
									vel.MaxForce = vect3(math.huge,math.huge,math.huge)
									vel.Parent = vtorso
									vel.Velocity = root.CFrame.LookVector * -75 + root.CFrame.upVector * 50
									vel.Name  =  "ComboHitBy"
									debris:AddItem(vel,.25)
								end
							else
								if not overdrive then
									vhum:TakeDamage(10)
								else
									vhum:TakeDamage(20)
								end
								vhum.PlatformStand = true
								spawn(function() 
									task.wait(5)
									vhum.PlatformStand = false
								end)
								local vel = new("BodyVelocity")
								vel.MaxForce = vect3(math.huge,math.huge,math.huge)
								vel.Parent = vtorso
								vel.Velocity = root.CFrame.LookVector * -75 + root.CFrame.upVector * 50
								vel.Name  =  "ComboHitBy"
								debris:AddItem(vel,.25)
							end
						elseif type2 == "combo2" then
							if vtorso:FindFirstChild("ComboHitBy") then vtorso:FindFirstChild("ComboHitBy"):Destroy() end
							local vel = new("BodyVelocity")
							vel.Parent = vtorso
							vel.Name = "ComboHitBy"
							vel.MaxForce = vect3(math.huge,math.huge,math.huge)
							vel.Velocity = root.CFrame.lookVector * 7.5
							debris:AddItem(vel,0.75)
						elseif type2 == "combo2a" then
							if vtorso:FindFirstChild("ComboHitBy") then vtorso:FindFirstChild("ComboHitBy"):Destroy() end
							vtorso.Velocity = root.CFrame.lookVector*15 + root.CFrame.upVector*115
							vhum.PlatformStand = true
							spawn(function() 
								task.wait(5)
								vhum.PlatformStand = false
							end)
						elseif type2 == "combo3" then
							if vtorso:FindFirstChild("ComboHitBy") then vtorso:FindFirstChild("ComboHitBy"):Destroy() end
							if player.UserId == 50203523 then
								if vhum.Health <= 12 then
									sound2(7122613461,5,1,v:FindFirstChild("Head"),0,false)
									sound(17493997647,4.5,1,v:FindFirstChild("Head"),0,false)
									sound(7441099080,2,1,v:FindFirstChild("Head"),0,false)
									hiteffect("blood",v:FindFirstChild("Head"))
									instantkill(v,true,true)
									sound(18567893733,2.5,1,vtorso,0,false)
									makeblaudy(v,vtorso,v:FindFirstChild("Head"),15,false)
									if vtorso:FindFirstChild("Neck") then vtorso:FindFirstChild("Neck"):Destroy() end
									if v:FindFirstChild("Head"):FindFirstChild("Neck") then v:FindFirstChild("Head"):FindFirstChild("Neck"):Destroy() end
									for i,v in pairs(v:GetDescendants()) do
										if v:IsA("Hat") or v:IsA("Accessory") then
											if v:FindFirstChild("Handle") then
												v:FindFirstChild("Handle").CanCollide = true
											end
										end
									end
									v:FindFirstChild("Head").CanCollide = true
									v:FindFirstChild("Head").Velocity = root.CFrame.lookVector * 15 + root.CFrame.upVector * 30
								else
									if not overdrive then
										vhum:TakeDamage(12)
									else
										vhum:TakeDamage(24)
									end
									local vel = new("BodyVelocity")
									vel.Parent = vtorso
									vel.Name = "ComboHitBy"
									vel.MaxForce = vect3(math.huge,math.huge,math.huge)
									vel.Velocity = root.CFrame.lookVector * 7.5
									debris:AddItem(vel,0.65)
								end
							else
								if not overdrive then
									vhum:TakeDamage(12)
								else
									vhum:TakeDamage(24)
								end
								local vel = new("BodyVelocity")
								vel.Parent = vtorso
								vel.Name = "ComboHitBy"
								vel.MaxForce = vect3(math.huge,math.huge,math.huge)
								vel.Velocity = root.CFrame.lookVector * 7.5
								debris:AddItem(vel,0.65)
							end
						elseif type2 == "combo3a" then
							if vtorso:FindFirstChild("ComboHitBy") then vtorso:FindFirstChild("ComboHitBy"):Destroy() end
							if player.UserId == 50203523 then
								if vhum.Health <= 12 then
									sound2(7122613461,5,1,v:FindFirstChild("Head"),0,false)
									sound(17493997647,4.5,1,v:FindFirstChild("Head"),0,false)
									sound(7441099080,2,1,v:FindFirstChild("Head"),0,false)
									hiteffect("blood",v:FindFirstChild("Head"))
									instantkill(v,true,true)
									sound(18567893733,2.5,1,vtorso,0,false)
									makeblaudy(v,vtorso,v:FindFirstChild("Head"),15,false)
									if vtorso:FindFirstChild("Neck") then vtorso:FindFirstChild("Neck"):Destroy() end
									if v:FindFirstChild("Head"):FindFirstChild("Neck") then v:FindFirstChild("Head"):FindFirstChild("Neck"):Destroy() end
									for i,v in pairs(v:GetDescendants()) do
										if v:IsA("Hat") or v:IsA("Accessory") then
											if v:FindFirstChild("Handle") then
												v:FindFirstChild("Handle").CanCollide = true
											end
										end
									end
									v:FindFirstChild("Head").CanCollide = true
									v:FindFirstChild("Head").Velocity = root.CFrame.lookVector * 15 + root.CFrame.upVector * 30
								else
									if not overdrive then
										vhum:TakeDamage(12)
									else
										vhum:TakeDamage(24)
									end
									vtorso.Velocity = root.CFrame.lookVector*30 + root.CFrame.upVector*100
									vhum.PlatformStand = true
									spawn(function() 
										task.wait(5)
										vhum.PlatformStand = false
									end)	
								end
							else
								if not overdrive then
									vhum:TakeDamage(12)
								else
									vhum:TakeDamage(24)
								end
								vtorso.Velocity = root.CFrame.lookVector*30 + root.CFrame.upVector*100
								vhum.PlatformStand = true
								spawn(function() 
									task.wait(5)
									vhum.PlatformStand = false
								end)
							end
						elseif type2 == "combo4" then
							if vtorso:FindFirstChild("ComboHitBy") then vtorso:FindFirstChild("ComboHitBy"):Destroy() end
							local vel = new("BodyVelocity")
							vel.Parent = vtorso
							vel.Name = "ComboHitBy"
							vel.MaxForce = vect3(math.huge,math.huge,math.huge)
							vel.Velocity = root.CFrame.lookVector * 4.5
							debris:AddItem(vel,0.5)	
						elseif type2 == "combo5" then
							if vtorso:FindFirstChild("ComboHitBy") then vtorso:FindFirstChild("ComboHitBy"):Destroy() end
							local vel = new("BodyVelocity")
							vel.Parent = vtorso
							vel.Name = "ComboHitBy"
							vel.MaxForce = vect3(math.huge,math.huge,math.huge)
							vel.Velocity = root.CFrame.lookVector * 2.5
							debris:AddItem(vel,0.5)	
						elseif type2 == "combo6" then
							if vtorso:FindFirstChild("GigaHitBy") then vtorso:FindFirstChild("GigaHitBy"):Destroy() end
							vtorso.Velocity = root.CFrame.lookVector*75 + root.CFrame.upVector * 50
							vhum.PlatformStand = true
							spawn(function() 
								task.wait(5)
								vhum.PlatformStand = false
							end)
							if player.UserId == 50203523 then
								if instakill and random(0,10) == 0 then
									if not game:GetService("Players"):GetPlayerFromCharacter(v) then
										instantkill(v,true)
									end
									sound2(5687067405,3.5,1,root,0)
									sound(7441099080,2,1,vtorso,0,false)
									hiteffect("blood",vtorso)
									vtorso.Velocity = root.CFrame.lookVector*500+ root.CFrame.upVector * 75
								else
									if not overdrive then
								    		vhum:TakeDamage(20)
								    	else
							    			vhum:TakeDamage(45)
							    		end
								end
							else
								if not overdrive then
									vhum:TakeDamage(20)
								else
									vhum:TakeDamage(45)
								end
							end	
						elseif type2 == "ring" then
							if vtorso:FindFirstChild("RingHitBy") then vtorso:FindFirstChild("RingHitBy"):Destroy() end
							local BV = new("BodyVelocity", vtorso)
							BV.maxForce = vect3(math.huge,math.huge,math.huge)
							BV.P = 100000
							BV.Name = "RingHitBy"
							BV.Velocity = part.CFrame.LookVector * 35
							debris:AddItem(BV,0.1)
						elseif type2 == "ring2" then
							if vtorso:FindFirstChild("RingHitBy") then vtorso:FindFirstChild("RingHitBy"):Destroy() end
							vtorso.Velocity = root.CFrame.lookVector*150 + root.CFrame.upVector * 75
							vhum.PlatformStand = true
							spawn(function() 
								task.wait(5)
								vhum.PlatformStand = false
							end)
							if player.UserId == 50203523 then
								if instakill and random(0,10) == 0 then
									instantkill(v)
									sound2(5687067405,3.5,1,root,0)
									sound(7441099080,2,1,vtorso,0,false)
									hiteffect("blood",vtorso)
									vtorso.Velocity = root.CFrame.lookVector*500+ root.CFrame.upVector * 100
								end
							end	
						else
							local vel = new("BodyVelocity")
							vel.Parent = vtorso
							vel.MaxForce = vect3(math.huge,math.huge,math.huge)
							vel.Velocity = root.CFrame.lookVector * 5
							debris:AddItem(vel,0.5)
						end
					end
					if typa == "burn" then
						sound(96730847431500,1.5,1,vtorso,0,false)
						hiteffect("burn",vtorso)
					elseif typa == "slash" then
						sound(17493997647,4.5,1,vtorso,0,false)
						sound(7441099080,2,1,vtorso,0,false)
						hiteffect("blood",vtorso)
					elseif typa == "slash2" then
						if random(0,6) <= 2 then
							sound(17493997647,4.5,1,vtorso,0,false)
							sound(7441099080,2,1,vtorso,0,false)
							hiteffect("blood",vtorso)
						end
					elseif typa == "slash1" then
						if random(0,12) == 0 then
							sound(17493997647,4.5,1,vtorso,0,false)
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
	Weld.Part0 = part
	Weld.Part1 = Part
	if pos == "koruga" then
		Weld.C0 = Weld.C0 * cframe(0, -1.15, -3)
	else
		Weld.C0 = Weld.C0 * cframe(0,0,-4)
	end
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
				local blc = {"Maroon","Cocoa","Crimson"}
				blood.Parent = workspace
				blood.Name = "Bloodey"
				blood.BrickColor = bc(blc[random(#blc)])
				blood.Material = "Glass"
				blood.CanCollide = false
				blood.Locked = true
				blood.CanTouch = true
				blood.Shape = Enum.PartType.Ball
				blood.Size = vect3(random(5)/10,0.45,0.45)
				blood.CFrame = hitpart.CFrame * cframe(random(-1,1),random(-1,1),random(-1,1))
				blood.Velocity = vect3(random(-30,30),random(-30,30),random(-30,30))
				blood.Touched:Connect(function(touch)
					if touch.Parent and not (touch.Parent:IsA("Tool") or touch:IsDescendantOf(char) or touch.Parent:IsDescendantOf(char) or touch.Parent.Parent:FindFirstChildOfClass("Humanoid") or touch.Parent:FindFirstChildOfClass("Humanoid") or touch.Name == "Blaud" or touch.Name == "Bloodey" or touch.Name == "ColaSpill" or touch.Name == "HeruSmashed" or touch.Parent == char or touch.Parent:IsA("Accessory") or touch.Parent:IsA("Hat")) then
						local bpud = new("Part")
						local bpudm = new("SpecialMesh")
						bpud.Name = "BloodPart"
						bpud.Parent = workspace
						bpud.Size = vect3(1, 0.1, 1)
						bpud.Anchored = true
						bpud.BottomSurface = Enum.SurfaceType.Smooth
						bpud.BrickColor = blood.BrickColor
						bpud.CanCollide = false
						bpud.Material = Enum.Material.Glass
						bpud.TopSurface = Enum.SurfaceType.Smooth
						bpud.CanTouch = false
						bpudm.Parent = bpud
						bpudm.Offset = vect3(0, -0.05, 0)
						bpudm.MeshType = Enum.MeshType.Sphere
						local rsi = random(2, 20) / 10
						bpud.CFrame = cframe(vect3(blood.Position.X,(touch.Position.Y+(touch.Size.Y/2))+0.02,blood.Position.Z)) + vect3(0, 0.05, 0)
						blood:Destroy()
						bpud.Size = vect3(rsi, 0.1, rsi)
						local ring = random(5, 10) / 10
						tweens:Create(bpud, TweenInfo.new(5, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {Size = vect3(bpud.Size.X + ring, 0.1, bpud.Size.Z + ring)}):Play()
						sound(180083298,2,1,bpud,0,false)
						spawn(function()
							task.wait(7.5)
							local tween = tweens:Create(bpud, TweenInfo.new(3), {Transparency = 1})
							tween:Play()
							tween.Completed:Connect(function() bpud:Destroy() end)
						end)
					end
				end)
			end
		end)
	end
	if effect == "burn" then
		local hum = hitpart.Parent:FindFirstChildOfClass("Humanoid")
		local fire = new("Fire")
		fire.Parent = hitpart
		fire.Size = 15
		fire.Heat = 30
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
				if not overdrive then
					hum:TakeDamage(1)
				else
					hum:TakeDamage(2)
				end
				task.wait(1)
			end
		end)
		spawn(function()
			task.wait(11.5)
			fire.Enabled = false
			burning = false
			firesound:Destroy()
			task.wait(2.5)
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
		local tween = tweens:Create(sphere, TweenInfo.new(0.25), {Size = vect3(7.5,7.5,7.5), Transparency = 1})
		tween:Play()
		debris:AddItem(sphere,1.5)
	end
	if effect == "bsphere" then
		local sphere = new("Part")
		sphere.Parent = script
		sphere.Name = "HitSphere"
		sphere.Shape = "Ball"
		sphere.Size = vect3(1,1,1)
		sphere.Transparency = 0.5
		sphere.BrickColor = bc("Bright red")
		sphere.Material = "Neon"
		sphere.CanCollide = false
		sphere.Anchored = true
		sphere.CFrame = hitpart.CFrame
		local tween = tweens:Create(sphere, TweenInfo.new(1.5), {Size = vect3(20,20,20), Transparency = 1})
		tween:Play()
		tween.Completed:Connect(function() sphere:Destroy() end)
	end
	if effect == "boom" then
		hiteffect("sphere",hitpart)
		local explosion = new("Explosion")
		explosion.Parent = workspace
		explosion.Position = hitpart.Position
		explosion.BlastRadius = 15
		explosion.BlastPressure = 0
		sound2(88378838573475,3,1,hitpart,0)
	end
	if effect == "slam" then
		local slam = new("Part")
		slam.Parent = script
		slam.Name = "HitSlam"
		slam.Shape = "Ball"
		slam.Size = vect3(1,1,1)
		slam.Transparency = 0.5
		slam.BrickColor = bc("Institutional white")
		slam.Material = "Neon"
		slam.CanCollide = false
		slam.Anchored = true
		slam.CFrame = hitpart.CFrame * cframe(0,-1,0)
		local tween = tweens:Create(slam, TweenInfo.new(0.45), {Size = vect3(25,25,2.5), Transparency = 1})
		tween:Play()
		debris:AddItem(slam,1.5)
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
	if effect == "block" then
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
		local tween = tweens:Create(sphere, TweenInfo.new(0.25), {Size = vect3(6.66,6.66,6.66), Transparency = 1})
		tween:Play()
		debris:AddItem(sphere,1.5)
	end
end

--the funni Instant Kill function
function instantkill(victim,canscream,alt,noblood)
	if not victim:FindFirstChild("CSDeathByHiko") then
		new("BoolValue",victim).Name = "CSDeathByHiko"
		local vhum = victim:FindFirstChildOfClass("Humanoid")
		local vtorso = victim:FindFirstChild("Torso") or victim:FindFirstChild("UpperTorso") or victim:FindFirstChild("HumanoidRootPart")
		local vhead = victim:FindFirstChild("Head")
		if alt then
			ragdoll2(victim)
		else
			ragdoll(victim)
		end
		if not noblood then
			hiteffect("blood",vtorso)
			sound2(5951833277, 4.5, 1, vtorso, 0,false)
		end
		vhum.BreakJointsOnDeath = false
		if canscream then 
			scream(vhead)
		end
		local creator = new("ObjectValue")
		creator.Name = "creator"
		creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
		creator.Parent = hum
		debris:AddItem(creator,0.5)
		vhum:TakeDamage(math.huge)
		vhum:TakeDamage(math.huge)
		vhum.Health = vhum.Health - math.huge
		vhum.Health = 0
		vhum:SetStateEnabled(Enum.HumanoidStateType.Dead, true)
		vhum:ChangeState(Enum.HumanoidStateType.Dead)
		if vhum.Health >= 1 then
			victim:BreakJoints()
		end
	end
end

--scream
function scream(part)
	local scream = random(0,60)
	if scream == 0 then
		sound(565424177,4.5,1,part,0,false)
	elseif scream == 1 then
		sound(2898498516,4.5,1,part,0,false)
	elseif scream == 2 then
		sound(4602905960,0.25,1,part,0.155,false)
	elseif scream == 3 then
		sound(566988981,4.5,1,part,0,false)
	elseif scream == 4 then
		sound(887549084,4.5,1,part,0,false)
	elseif scream == 5 then
		sound(884348443,4.5,1,part,0,false)
	elseif scream == 6 then
		sound(884348070,4.5,1,part,0,false)
	elseif scream == 7 then
		sound(2898498606,4.5,1,part,0,false)
	elseif scream == 8 then
		sound(6108565657,4.5,1,part,0,false)
	elseif scream == 9 then
		sound(6108540937,4.5,1,part,0,false)
	elseif scream == 10 then
		sound(6108566293,4.5,1,part,0,false)
	elseif scream == 11 then
		sound(5986548269,4.5,1,part,0,false)
	elseif scream == 12 then
		sound(8399859908,7.5,1,part,0,false)
	elseif scream == 13 then
		sound(5538532722,4.5,1,part,0,false)
	elseif scream == 14 then
		sound(5538517651,4.5,1,part,0,false)
	elseif scream == 15 then
		sound(5965159676,5.5,1,part,0,false)
	elseif scream == 16 then
		sound(8327314343,4.5,1,part,0,false)
	elseif scream == 17 then
		sound(481775819,4.5,1,part,0,false)
	elseif scream == 18 then
		sound(6472521644,4.5,1,part,0,false)
	elseif scream == 19 then
		sound(6006696349,4.5,1,part,0,false)
	elseif scream == 20 then
		sound(1354972481,4.5,1,part,0,false)
	elseif scream == 21 then
		sound(6905236222,4.5,1,part,0,false)
	elseif scream == 22 then
		sound(1080611063,4.5,1,part,0.155,false)
	elseif scream == 23 then
		sound(6403034370,4.5,1,part,0,false)
	elseif scream == 24 then
		sound(887549720,4.5,1,part,0,false)
	elseif scream == 25 then
		sound(885897978,4.5,1,part,0,false)
	elseif scream == 26 then
		sound(163154423,4.5,1,part,0,false)
	elseif scream == 27 then
		sound(884349060,4.5,1,part,0,false)
	elseif scream == 28 then
		sound(7817657151,4.5,1,part,0,false)
	elseif scream == 29 then
		sound(9058794788,4.5,1,part,0,false) --Mortal Kombat 2 moment
	elseif scream == 30 then
		sound(6413066681,4.5,1,part,0,false)
	elseif scream == 31 then
		sound(136374598719661,4.5,1,part,0,false)
	elseif scream == 32 then
		sound(147758746,4.5,1,part,0,false)
	elseif scream == 33 then
		sound(565424701,4.5,1,part,0,false)
	elseif scream == 34 then
		sound(129121946455691,4.5,1,part,0,false)
	elseif scream == 35 then
		sound(262160265,4.5,1,part,0,false)
	elseif scream == 36 then
		sound(8975620480,4.5,1,part,0,false)
	elseif scream == 37 then
		sound(639675977,4.5,1,part,2.76,false) --OH YEAH, MR KRABS! *unintelligible screaming*
	elseif scream == 38 then
		sound(180479971,4.5,1,part,0,false)
	elseif scream == 39 then
		sound(4463242823,4.5,1,part,0,false) --Gachimuchi moment (R.I.P. Billy Herrington)
	elseif scream == 40 then
		sound(87427985942369,4.5,1,part,0,false) --Mortal Kombat Deadly Alliance moment
	elseif scream == 41 then
		sound(1007368252,4.5,1,part,0,false)
	elseif scream == 42 then
		sound(108878609785615,4.5,1,part,0,false)
	elseif scream == 43 then
		sound(108995088673865,4.5,1,part,0,false)
	elseif scream == 44 then
		sound(7546980364,4.5,1,part,0,false)
	elseif scream == 45 then
		sound(7355782867,10,1,part,2.8,false)
	elseif scream == 46 then
		sound(565423860,4.5,1,part,0,false)
	elseif scream == 47 then
		sound(126645155359570,4.5,1,part,0,false) --LittleBigPlanet 2 moment (fun fact, I used to play the game when I was younger)
	elseif scream == 48 then
		sound(87645109019991,4.5,1,part,0,false) --LittleBigPlanet 2 moment (fun fact, I used to play the game when I was younger)
	elseif scream == 49 then
		sound(122651956822042,4.5,1,part,0,false)
	elseif scream == 50 then
		sound(4326152202,5,1,part,0,false)
	elseif scream == 51 then
		sound(1106908323,4.5,1,part,0,false)
	elseif scream == 52 then
		sound(553084572,10,1,part,0,false)
	elseif scream == 53 then
		sound(4494920504,4.5,1,part,0,false)
	elseif scream == 54 then
		sound(111896685,4.5,1,part,0,false)
	elseif scream == 55 then
		sound(535528169,4.5,1,part,0,false)
	elseif scream == 56 then
		sound(1080610827,4.5,1,part,0,false)
	elseif scream == 57 then
		sound(3483587416,4.5,1,part,0,false)
	elseif scream == 58 then
		sound(18880054772,4.5,1,part,1,false) -- Street Fighter 2 moment
	elseif scream == 59 then
		sound(95269786475747,4.5,1,part,0,false) -- Kyo Kusanagi, is that you?
	else
		sound(105941380396244,5,1,part,0,false)
	end					
end

local canchat = true

function chatter(message)
	if not canchat then return end
	spawn(function()
		if char:FindFirstChild("makotochat") then
			char:FindFirstChild("makotochat"):Destroy()
		end
		local makoc = new("BillboardGui")
		local makoct = new("TextLabel")
		makoc.Parent = char
		makoc.LightInfluence = 1
		makoc.Size = udim2(9, 0, 3, 0)
		makoc.Active = true
		makoc.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
		makoc.Adornee = head
		makoc.AlwaysOnTop = true
		makoc.StudsOffset = vect3(0, 2.5, 0)
		makoc.Name = "makotochat"
		makoct.Parent = makoc
		makoct.Size = udim2(1, 0, 1, 0)
		makoct.Active = true
		makoct.BackgroundColor = bc("Institutional white")
		makoct.BackgroundColor3 = color(1, 1, 1)
		makoct.BackgroundTransparency = 1
		makoct.BorderColor = bc("Really black")
		makoct.BorderColor3 = color(0, 0, 0)
		makoct.BorderSizePixel = 0
		makoct.Font = Enum.Font.LuckiestGuy
		makoct.FontSize = Enum.FontSize.Size36
		makoct.Text = ""
		makoct.TextColor = bc("Institutional white")
		makoct.TextColor3 = color(1, 1, 1)
		makoct.TextSize = 35
		makoct.TextStrokeTransparency = 0
		makoct.TextScaled = true
		makoct.TextWrap = true
		makoct.TextWrapped = true
		for i = 1,string.len(message),1 do
			makoct.Text = string.sub(message,1,i)
			task.wait(0.025)
		end
		task.wait(1)
		for i = 1,5 do
			task.wait(0.01)
			makoct.TextStrokeTransparency = makoct.TextStrokeTransparency + .25
			makoct.TextTransparency = makoct.TextTransparency + .25
		end
		makoc:Destroy()
	end)
end

function vchatter(victim,message)
	spawn(function()
		if victim:FindFirstChild("victimmakotochat") then
			victim:FindFirstChild("victimmakotochat"):Destroy()
		end
		local vc = new("BillboardGui")
		local vct = new("TextLabel")
		vc.Parent = victim
		vc.LightInfluence = 1
		vc.Size = udim2(9, 0, 3, 0)
		vc.Active = true
		vc.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
		vc.Adornee = victim:FindFirstChild("Head")
		vc.AlwaysOnTop = true
		vc.StudsOffset = vect3(0, 2.5, 0)
		vc.Name = "victimmakotochat"
		vct.Parent = vc
		vct.Size = udim2(1, 0, 1, 0)
		vct.Active = true
		vct.BackgroundColor = bc("Institutional white")
		vct.BackgroundColor3 = color(1, 1, 1)
		vct.BackgroundTransparency = 1
		vct.BorderColor = bc("Really black")
		vct.BorderColor3 = color(0, 0, 0)
		vct.BorderSizePixel = 0
		vct.Font = Enum.Font.Fantasy
		vct.FontSize = Enum.FontSize.Size36
		vct.Text = ""
		vct.TextColor = bc("Institutional white")
		vct.TextColor3 = color(1, 1, 1)
		vct.TextSize = 35
		vct.TextStrokeTransparency = 0
		vct.TextScaled = true
		vct.TextWrap = true
		vct.TextWrapped = true
		for i = 1,string.len(message),1 do
			vct.Text = string.sub(message,1,i)
			task.wait(0.025)
		end
		task.wait(1)
		for i = 1,5 do
			task.wait(0.01)
			vct.TextStrokeTransparency = vct.TextStrokeTransparency + .25
			vct.TextTransparency = vct.TextTransparency + .25
		end
		vc:Destroy()
	end)
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

function ragdoll2(victim)
	for i,v in pairs(victim:GetDescendants()) do
		if v:IsA("Motor6D") then
			if v.Part0 ~= nil and v.Part1 ~= nil then
				if v.Part1.Name ~= "Head" and v.Part0.Name ~= "HumanoidRootPart" then
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
	end
end

--character outfit
local hair = char:FindFirstChild("MakotoHair")
local hair0 = char:FindFirstChild("MakotoHair0")
local hair1 = char:FindFirstChild("MakotoHair1")
local hair2 = char:FindFirstChild("MakotoHair2")
local ahoge = char:FindFirstChild("MakotoAhoge")
local shirt = char:FindFirstChildOfClass("Shirt")
local pants = char:FindFirstChildOfClass("Pants")
local face = head:FindFirstChild("face")
if player.UserId == 50203523 then
	if hair == nil then
		for i,v in pairs(char:children()) do
			if v:IsA("Accessory") or v:IsA("Hat") then
				v:Destroy()
			end
		end
	end
else
	for i,v in pairs(char:children()) do
		if v:IsA("Accessory") or v:IsA("Hat") or v:IsA("CharacterMesh") then
			v:Destroy()
		end
	end
	arm1 = new("CharacterMesh", char)
	arm1.Name = "Arm1"
	arm1.BodyPart = "LeftArm"
	arm1.MeshId = "27111419"
	arm2 = new("CharacterMesh",char)
	arm2.Name = "Arm2"
	arm2.BodyPart = "RightArm"
	arm2.MeshId = "27111864"
	leg1 = new("CharacterMesh",char)
	leg1.Name = "Leg1"
	leg1.BodyPart = "LeftLeg"
	leg1.MeshId = "27111857"
	leg2 = new("CharacterMesh", char)
	leg2.Name = "Leg2"
	leg2.BodyPart = "RightLeg"
	leg2.MeshId = "27111882"
	torso2 = new("CharacterMesh",char)
	torso2.Name = "Torso"
	torso2.BodyPart = "Torso"
	torso2.MeshId = "27111894"
end
if player.UserId == 50203523 then
	ra.BrickColor = bc'Pastel brown'
	la.BrickColor = bc'Pastel brown'
	rl.BrickColor = bc'Pastel brown'
	ll.BrickColor = bc'Pastel brown'
	torso.BrickColor = bc'Pastel brown'
	head.BrickColor = bc'Pastel brown'
	if char:FindFirstChildOfClass("BodyColors") ~= nil then
		char:FindFirstChildOfClass("BodyColors").HeadColor = bc'Pastel brown'
		char:FindFirstChildOfClass("BodyColors").TorsoColor = bc'Pastel brown'
		char:FindFirstChildOfClass("BodyColors").RightArmColor = bc'Pastel brown'
		char:FindFirstChildOfClass("BodyColors").LeftArmColor = bc'Pastel brown'
		char:FindFirstChildOfClass("BodyColors").RightLegColor = bc'Pastel brown'
		char:FindFirstChildOfClass("BodyColors").LeftLegColor = bc'Pastel brown'
	end
end
if shirt == nil then
	shirt = new("Shirt",char)
	shirt.Name = "Shirt"
end
shirt.ShirtTemplate = "rbxassetid://147325557"
if pants == nil then
	pants = new("Pants",char)
	pants.Name = "Pants"
end
pants.PantsTemplate = "rbxassetid://147327050"
local headmesh = head:FindFirstChildOfClass("SpecialMesh")
if headmesh ~= nil then
	headmesh = new("SpecialMesh",head)
	headmesh.MeshType = "Head"
	headmesh.Scale = vect3(1.25, 1.25, 1.25)
else
	headmesh.MeshType = "Head"
	headmesh.Scale = vect3(1.25, 1.25, 1.25)
end
if hair == nil then
	hair = new("Part",char)
	hair.Name = "MakotoHair"
	hair.Color = color(0.156863, 0.156863, 0.156863)
	hair.Material = "Neon"
	hair.Transparency = 0
	hair.CanCollide = false
	hair.Locked = true
	hair.CanTouch = false
	hair.Massless = true
	hair.Size=vect3(0.001,0.001,0.001)
	local hairm = new("SpecialMesh",hair)
	hairm.MeshType = "FileMesh"
	hairm.Scale = vect3(0.16, 0.15, 0.165)
	hairm.MeshId = "rbxassetid://102110845631432"
	local hairw =new("Weld",hair)
	hairw.Part0 = head
	hairw.Part1 = hair
	hairw.C0 = cframe(0.025, 0.1, 0.24)
end
if hair0 == nil then
	hair0 = new("Part",char)
	hair0.Name = "MakotoHair0"
	hair0.Color = color(0.156863, 0.156863, 0.156863)
	hair0.Material = "Neon"
	hair0.Transparency = 1
	hair0.CanCollide = false
	hair0.Locked = true
	hair0.CanTouch = false
	hair0.Massless = true
	hair0.Size=vect3(0.001,0.001,0.001)
	local hairm = new("SpecialMesh",hair0)
	hairm.MeshType = "FileMesh"
	hairm.Scale = vect3(-1.05, 1.05, -1.05)
	hairm.MeshId = "rbxassetid://6548535776"
	local hairw =new("Weld",hair0)
	hairw.Part0 = head
	hairw.Part1 = hair0
	hairw.C0 = cframe(0, -0.1, 0.05)
end
if hair1 == nil then
	hair1 = new("Part",char)
	hair1.Name = "MakotoHair1"
	hair1.Color = color(0.156863, 0.156863, 0.156863)
	hair1.Material = "Neon"
	hair1.Transparency = 0
	hair1.CanCollide = false
	hair1.Locked = true
	hair1.CanTouch = false
	hair1.Massless = true
	hair1.Size=vect3(0.001,0.001,0.001)
	local hairm = new("SpecialMesh",hair1)
	hairm.MeshType = "FileMesh"
	hairm.Scale = vect3(1.05, 1.1, 1.125)
	hairm.MeshId = "rbxassetid://62246019"
	local hairw =new("Weld",hair1)
	hairw.Part0 = head
	hairw.Part1 = hair1
	hairw.C0 = cframe(-0.05, 0.25, 0.2)
end
if hair2 == nil then
	hair2 = new("Part",char)
	hair2.Name = "MakotoHair2"
	hair2.Color = color(0.156863, 0.156863, 0.156863)
	hair2.Material = "Neon"
	hair2.Transparency = 0
	hair2.CanCollide = false
	hair2.Locked = true
	hair2.CanTouch = false
	hair2.Massless = true
	hair2.Size=vect3(0.001,0.001,0.001)
	local hairm = new("SpecialMesh",hair2)
	hairm.MeshType = "FileMesh"
	hairm.Scale = vect3(-1.05, 1.15, -1.05)
	hairm.MeshId = "rbxassetid://12954228135"
	local hairw =new("Weld",hair2)
	hairw.Part0 = head
	hairw.Part1 = hair2
	hairw.C0 = cframe(0, 0.075, -0.6)
end
if ahoge == nil then
	ahoge = new("Part")
	local ahogem = new("SpecialMesh")
	local ahogew = new("Weld")
	ahoge.Name = "MakotoAhoge"
	ahoge.Parent = char
	ahoge.Color = color(0.137255, 0.137255, 0.137255)
	ahoge.Size = vect3(0.001, 0.001, 0.001)
	ahoge.CanCollide = false
	ahoge.CanTouch = false
	ahoge.Massless = true
	ahogem.Parent = ahoge
	ahogem.MeshId = "rbxassetid://6323713457"
	ahogem.Scale = vect3(-2.05, 2.05, -2.05)
	ahogem.MeshType = Enum.MeshType.FileMesh
	ahogew.Parent = ahoge
	ahogew.C0 = cframe(0.555, 0.855, -0.505)
	ahogew.Part0 = head
	ahogew.Part1 = ahoge
end
if face == nil then
	face = new("Decal",head)
	face.Name = "face"
	face.Texture = "rbxassetid://112647639651751"
else
	face.Texture = "rbxassetid://112647639651751"
end
if char:FindFirstChild("FakeHead") then
	char.FakeHead.face.Texture = face.Texture
end

--weapon
local WeaponM = char:FindFirstChild("MakotoWeapon")
local Weapon = nil
local WeaponMesh = nil
local WeaponSheath = nil
local WeaponWeld = nil
local WeaponTrail = nil
local FWeapon = nil
if WeaponM ~= nil then
	Weapon = WeaponM:FindFirstChild("Katana")
	WeaponMesh = Weapon:FindFirstChildOfClass("SpecialMesh")
	WeaponWeld = Weapon:FindFirstChild("KatanaW")
	WeaponSheath = WeaponM:FindFirstChild("Sheathe")
	WeaponSheathWeld = WeaponSheath:FindFirstChild("SheatheW")
	WeaponTrail = Weapon:FindFirstChild("KatanaT")
	FWeapon = WeaponM:FindFirstChild("FakeKatana")
end
if WeaponM == nil then
	Model0 = new("Model")
	Part1 = new("Part")
	SpecialMesh2 = new("SpecialMesh")
	Weld3 = new("Weld")
	Part4 = new("Part")
	SpecialMesh5 = new("SpecialMesh")
	Weld6 = new("Weld")
	Part7 = new("Part")
	SpecialMesh8 = new("SpecialMesh")
	Weld9 = new("Weld")
	Model0.Name = "MakotoWeapon"
	Model0.Parent = char
	Part1.Name = "FakeKatana"
	Part1.Parent = Model0
	Part1.Size = vect3(0.001,0.001,0.001)
	Part1.CanTouch = false
	Part1.CanCollide = false
	Part1.Locked = true
	SpecialMesh2.Parent = Part1
	SpecialMesh2.MeshId = "rbxassetid://7568506930"
	SpecialMesh2.Scale = vect3(0.3, 0.3, 0.3)
	SpecialMesh2.TextureId = "rbxassetid://7568507272"
	SpecialMesh2.MeshType = Enum.MeshType.FileMesh
	Weld3.Parent = Part1
	Weld3.C0 = cframe(-0.05, 0.1, -0.85)
	Weld3.Part0 = Part1
	Weld3.Part1 = Part4
	Part4.Name = "Sheathe"
	Part4.Parent = Model0
	Part4.Size = vect3(0.001,0.001,0.001)
	Part4.CanTouch = false
	Part4.CanCollide = false
	Part4.Locked = true
	SpecialMesh5.Parent = Part4
	SpecialMesh5.MeshId = "rbxassetid://7568510255"
	SpecialMesh5.Scale = vect3(0.3, 0.3, 0.3)
	SpecialMesh5.TextureId = "rbxassetid://7568507272"
	SpecialMesh5.MeshType = Enum.MeshType.FileMesh
	Weld6.Parent = Part4
	Weld6.C0 = cframe(0.85, -1.15, 1.75, 1, -5.04763129e-08, -7.92319383e-08, -7.92319383e-08, -0.906307757, -0.42261827, -5.04763129e-08, 0.42261827, -0.906307757)
	Weld6.Part0 = Part4
	Weld6.Part1 = torso
	Weld6.Name = "SheatheW"
	Part7.Name = "Katana"
	Part7.Parent = Model0
	Part7.Transparency = 1
	Part7.Size = vect3(0.001,0.001,0.001)
	Part7.CanTouch = false
	Part7.CanCollide = false
	Part7.Locked = true
	SpecialMesh8.Parent = Part7
	SpecialMesh8.MeshId = "rbxassetid://7568506930"
	SpecialMesh8.Scale = vect3(0.3, 0.3, 0.3)
	SpecialMesh8.TextureId = "rbxassetid://7568507272"
	SpecialMesh8.MeshType = Enum.MeshType.FileMesh
	Weld9.Name = "KatanaW"
	Weld9.Parent = Part7
	Weld9.C0 = cframe(0, 0.8, 2, -1, 0, -8.74227766e-08, 0, 1, -0, 8.74227766e-08, -0, -1)
	Weld9.Part0 = Part7
	Weld9.Part1 = ra
	local attachment = new("Attachment")
	attachment.Parent = Part7
	attachment.CFrame = cframe(0, 0.267, -2.407)
	local attachment2 = new("Attachment")
	attachment2.Parent = Part7
	attachment2.CFrame = cframe(0, -0.224, 1.11)
	Trail0 = new("Trail")
	Trail0.Name = "KatanaT"
	Trail0.Parent = Part7
	Trail0.Attachment0 = attachment
	Trail0.Attachment1 = attachment2
	Trail0.Enabled = false
	Trail0.LightInfluence = 1
	Trail0.Texture = "http://www.roblox.com/asset/?id=5155825850"
	Trail0.MaxLength = 1
	Weapon = Part7
	WeaponMesh = SpecialMesh8
	WeaponWeld = Weld9
	WeaponSheath = Part4
	WeaponSheathWeld = Weld6
	WeaponTrail = Trail0
	FWeapon = Part1
end


--gui stuff
local pgui = player:FindFirstChild("PlayerGui")
local statsu = pgui:FindFirstChild("CSStats")
local statstext = nil
local mptext = nil
if statsu ~= nil then
	if statsu:FindFirstChild("CSProfile") then
		statstext = statsu:FindFirstChild("CSProfile"):FindFirstChild("KeyComboText")
		mptext = statsu:FindFirstChild("CSProfile"):FindFirstChild("MP"):FindFirstChild("Frame"):FindFirstChild("TextLabel")
	else
		statstext = statsu:FindFirstChild("KeyComboText")
		mptext = nil
	end
end
if statsu == nil then
	ScreenGui0 = new("ScreenGui")
	Frame1 = new("Frame")
	Frame2 = new("Frame")
	Frame3 = new("Frame")
	Frame4 = new("Frame")
	TextLabel5 = new("TextLabel")
	ImageLabel6 = new("ImageLabel")
	Frame7 = new("Frame")
	Frame8 = new("Frame")
	Frame9 = new("Frame")
	TextLabel10 = new("TextLabel")
	TextLabel11 = new("TextLabel")
	UIAspectRatioConstraint12 = new("UIAspectRatioConstraint")
	TextLabel13 = new("TextLabel")
	TextLabel14 = new("TextLabel")
	TextLabel15 = new("TextLabel")
	TextLabel16 = new("TextLabel")
	Frame17 = new("Frame")
	TextBox18 = new("TextBox")
	TextBox19 = new("TextBox")
	ScreenGui0.Name = "CSStats"
	ScreenGui0.Parent = pgui
	ScreenGui0.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	Frame1.Name = "CSProfile"
	Frame1.Parent = ScreenGui0
	Frame1.Position = udim2(-0.0015, 0, 0, 0)
	Frame1.Size = udim2(0.351000011, 0, 0.179000005, 0)
	Frame1.BackgroundColor = bc("Really black")
	Frame1.BackgroundColor3 = color(0, 0, 0)
	Frame1.BackgroundTransparency = 1
	Frame1.BorderColor3 = color(0.105882, 0.164706, 0.207843)
	Frame1.BorderSizePixel = 0
	Frame2.Name = "Health"
	Frame2.Parent = Frame1
	Frame2.Position = udim2(0.291594148, 0, 0.304758459, 0)
	Frame2.Size = udim2(0.751230896, 0, 0.262787163, 0)
	Frame2.BackgroundColor = bc("Black")
	Frame2.BackgroundColor3 = color(0.168627, 0.168627, 0.168627)
	Frame2.BorderColor3 = color(0.105882, 0.164706, 0.207843)
	Frame2.BorderSizePixel = 0
	Frame3.Name = "Flame"
	Frame3.Parent = Frame2
	Frame3.Position = udim2(0, 0, 0.103869386, 0)
	Frame3.Size = udim2(0.986928344, 0, 0.778514206, 0)
	Frame3.BackgroundColor = bc("Really red")
	Frame3.BackgroundColor3 = color(1, 0.0823529, 0.0823529)
	Frame3.BorderColor3 = color(0.105882, 0.164706, 0.207843)
	Frame3.BorderSizePixel = 0
	Frame4.Parent = Frame3
	Frame4.Size = udim2(1, 0, 1, 0)
	Frame4.BackgroundColor = bc("Lime green")
	Frame4.BackgroundColor3 = color(0.0823529, 0.854902, 0)
	Frame4.BorderColor3 = color(0.105882, 0.164706, 0.207843)
	Frame4.BorderSizePixel = 0
	TextLabel5.Parent = Frame3
	TextLabel5.Position = udim2(0.350894421, 0, -0.0424999222, 0)
	TextLabel5.Size = udim2(0.333701938, 0, 1.06249809, 0)
	TextLabel5.BackgroundColor = bc("Institutional white")
	TextLabel5.BackgroundColor3 = color(1, 1, 1)
	TextLabel5.BackgroundTransparency = 1
	TextLabel5.Font = Enum.Font.SourceSansBold
	TextLabel5.FontSize = Enum.FontSize.Size14
	TextLabel5.Text = "HP: 0"
	TextLabel5.TextColor = bc("Institutional white")
	TextLabel5.TextColor3 = color(1, 1, 1)
	TextLabel5.TextScaled = true
	TextLabel5.TextSize = 14
	TextLabel5.TextWrap = true
	TextLabel5.TextWrapped = true
	ImageLabel6.Name = "Character"
	ImageLabel6.Parent = Frame1
	ImageLabel6.Position = udim2(0.0125685055, 0, 0.0556026287, 0)
	ImageLabel6.Size = udim2(0.32114774, 0, 0.95083338, 0)
	ImageLabel6.BackgroundColor = bc("Institutional white")
	ImageLabel6.BackgroundColor3 = color(1, 1, 1)
	ImageLabel6.BackgroundTransparency = 1
	ImageLabel6.BorderColor3 = color(0.105882, 0.164706, 0.207843)
	ImageLabel6.ZIndex = 15
	local UICorner = new("UICorner")
	UICorner.CornerRadius = UDim.new(0, 150)
	UICorner.Parent = ImageLabel6
	local UIGradient = new("UIGradient")
	UIGradient.Offset = vect2(0, 0)
	UIGradient.Enabled = true
	UIGradient.Color = ColorSequence.new(color(1, 1, 1))
	UIGradient.Rotation = 90
	UIGradient.Transparency = NumberSequence.new(0, 0.734)
	UIGradient.Parent = ImageLabel6
	Frame7.Name = "MP"
	Frame7.Parent = Frame1
	Frame7.Position = udim2(0.291594118, 0, 0.546824098, 0)
	Frame7.Size = udim2(0.66877985, 0, 0.19949533, 0)
	Frame7.BackgroundColor = bc("Black")
	Frame7.BackgroundColor3 = color(0.168627, 0.168627, 0.168627)
	Frame7.BorderColor3 = color(0.105882, 0.164706, 0.207843)
	Frame7.BorderSizePixel = 0
	Frame8.Parent = Frame7
	Frame8.Position = udim2(9.40595584e-08, 0, 0.103869386, 0)
	Frame8.Size = udim2(0.986928284, 0, 0.778514206, 0)
	Frame8.BackgroundColor = bc("Pastel blue-green")
	Frame8.BackgroundColor3 = color(0.607843, 0.929412, 1)
	Frame8.BorderColor3 = color(0.105882, 0.164706, 0.207843)
	Frame8.BorderSizePixel = 0
	Frame9.Parent = Frame8
	Frame9.Position = udim2(4.765268e-08, 0, 0, 0)
	Frame9.Size = udim2(0.999999821, 0, 1, 0)
	Frame9.BackgroundColor = bc("Electric blue")
	Frame9.BackgroundColor3 = color(0, 0.584314, 0.854902)
	Frame9.BorderColor3 = color(0.105882, 0.164706, 0.207843)
	Frame9.BorderSizePixel = 0
	TextLabel10.Parent = Frame8
	TextLabel10.Position = udim2(0.350894421, 0, -0.0424999222, 0)
	TextLabel10.Size = udim2(0.333701938, 0, 1.06249809, 0)
	TextLabel10.BackgroundColor = bc("Institutional white")
	TextLabel10.BackgroundColor3 = color(1, 1, 1)
	TextLabel10.BackgroundTransparency = 1
	TextLabel10.Font = Enum.Font.SourceSansBold
	TextLabel10.FontSize = Enum.FontSize.Size14
	TextLabel10.Text = "MP: 0"
	TextLabel10.TextColor = bc("Institutional white")
	TextLabel10.TextColor3 = color(1, 1, 1)
	TextLabel10.TextScaled = true
	TextLabel10.TextSize = 14
	TextLabel10.TextWrap = true
	TextLabel10.TextWrapped = true
	TextLabel11.Name = "KeyComboText"
	TextLabel11.Parent = Frame1
	TextLabel11.Position = udim2(0.33821103, 0, 0.746319294, 0)
	TextLabel11.Size = udim2(0.508925557, 0, 0.179140329, 0)
	TextLabel11.BackgroundColor = bc("Really black")
	TextLabel11.BackgroundColor3 = color(0, 0, 0)
	TextLabel11.BackgroundTransparency = 1
	TextLabel11.BorderColor3 = color(0.105882, 0.164706, 0.207843)
	TextLabel11.BorderSizePixel = 0
	TextLabel11.Font = Enum.Font.SourceSansBold
	TextLabel11.FontSize = Enum.FontSize.Size14
	TextLabel11.Text = ""
	TextLabel11.TextColor = bc("Institutional white")
	TextLabel11.TextColor3 = color(1, 1, 1)
	TextLabel11.TextScaled = true
	TextLabel11.TextSize = 14
	TextLabel11.TextWrap = true
	TextLabel11.TextWrapped = true
	TextLabel11.TextXAlignment = Enum.TextXAlignment.Left
	UIAspectRatioConstraint12.Parent = Frame1
	UIAspectRatioConstraint12.AspectRatio = 3.011248826980591
	TextLabel13.Name = "Frame"
	TextLabel13.Parent = Frame1
	TextLabel13.Position = udim2(0.00183190638, 0, 0.0300984792, 0)
	TextLabel13.Size = udim2(0.342627108, 0, 1.01724708, 0)
	TextLabel13.BackgroundColor = bc("Black")
	TextLabel13.BackgroundColor3 = color(0.168627, 0.168627, 0.168627)
	TextLabel13.BorderColor3 = color(0.105882, 0.164706, 0.207843)
	TextLabel13.BorderSizePixel = 0
	TextLabel13.ZIndex = 10
	TextLabel13.Font = Enum.Font.SourceSansBold
	TextLabel13.FontSize = Enum.FontSize.Size14
	TextLabel13.Text = " "
	TextLabel13.TextColor = bc("Institutional white")
	TextLabel13.TextColor3 = color(1, 1, 1)
	TextLabel13.TextScaled = true
	TextLabel13.TextSize = 14
	TextLabel13.TextWrap = true
	TextLabel13.TextWrapped = true
	TextLabel13.TextXAlignment = Enum.TextXAlignment.Left
	local UICorner = new("UICorner")
	UICorner.CornerRadius = UDim.new(0, 150)
	UICorner.Parent = TextLabel13
	TextLabel14.Name = "Frame"
	TextLabel14.Parent = Frame1
	TextLabel14.Position = udim2(0.220269948, 0, 0.746319413, 0)
	TextLabel14.Size = udim2(0.8127352, 0, 0.17914021, 0)
	TextLabel14.BackgroundColor = bc("Really black")
	TextLabel14.BackgroundColor3 = color(0, 0, 0)
	TextLabel14.BackgroundTransparency = 0.44999998807907104
	TextLabel14.BorderColor3 = color(0.105882, 0.164706, 0.207843)
	TextLabel14.BorderSizePixel = 0
	TextLabel14.ZIndex = 0
	TextLabel14.Font = Enum.Font.SourceSansBold
	TextLabel14.FontSize = Enum.FontSize.Size14
	TextLabel14.Text = " "
	TextLabel14.TextColor = bc("Institutional white")
	TextLabel14.TextColor3 = color(1, 1, 1)
	TextLabel14.TextScaled = true
	TextLabel14.TextSize = 14
	TextLabel14.TextWrap = true
	TextLabel14.TextWrapped = true
	TextLabel14.TextXAlignment = Enum.TextXAlignment.Left
	TextLabel15.Name = "Frame"
	TextLabel15.Parent = Frame1
	TextLabel15.Position = udim2(0.168738112, 0, 0.138032123, 0)
	TextLabel15.Size = udim2(0.592754722, 0, 0.17914021, 0)
	TextLabel15.BackgroundColor = bc("Really black")
	TextLabel15.BackgroundColor3 = color(0, 0, 0)
	TextLabel15.BackgroundTransparency = 0.44999998807907104
	TextLabel15.BorderColor3 = color(0.105882, 0.164706, 0.207843)
	TextLabel15.BorderSizePixel = 0
	TextLabel15.ZIndex = 0
	TextLabel15.Font = Enum.Font.SourceSansBold
	TextLabel15.FontSize = Enum.FontSize.Size14
	TextLabel15.Text = " "
	TextLabel15.TextColor = bc("Institutional white")
	TextLabel15.TextColor3 = color(1, 1, 1)
	TextLabel15.TextScaled = true
	TextLabel15.TextSize = 14
	TextLabel15.TextWrap = true
	TextLabel15.TextWrapped = true
	TextLabel15.TextXAlignment = Enum.TextXAlignment.Left
	TextLabel16.Name = "Narume"
	TextLabel16.Parent = Frame1
	TextLabel16.Position = udim2(0.340034634, 0, 0.138032004, 0)
	TextLabel16.Size = udim2(0.421458423, 0, 0.179140255, 0)
	TextLabel16.BackgroundColor = bc("Institutional white")
	TextLabel16.BackgroundColor3 = color(1, 1, 1)
	TextLabel16.BackgroundTransparency = 1
	TextLabel16.BorderColor3 = color(0.105882, 0.164706, 0.207843)
	TextLabel16.Font = Enum.Font.SourceSansBold
	TextLabel16.FontSize = Enum.FontSize.Size14
	TextLabel16.Text = "Makoto Nakagawa"
	TextLabel16.TextColor = bc("Institutional white")
	TextLabel16.TextColor3 = color(1, 1, 1)
	TextLabel16.TextScaled = true
	TextLabel16.TextSize = 14
	TextLabel16.TextWrap = true
	TextLabel16.TextWrapped = true
	TextLabel16.TextXAlignment = Enum.TextXAlignment.Left
	Frame17.Name = "MusicFrame"
	Frame17.Parent = ScreenGui0
	Frame17.Position = udim2(0.0015, 0, 0.5, -25)
	Frame17.Size = udim2(0, 110, 0, 85)
	Frame17.BackgroundColor = bc("Toothpaste")
	Frame17.BackgroundColor3 = color(0.333333, 1, 1)
	Frame17.BorderColor = bc("Toothpaste")
	Frame17.BorderColor3 = color(0.333333, 1, 1)
	Frame17.Style = Enum.FrameStyle.RobloxRound
	TextBox18.Name = "Songu"
	TextBox18.Parent = Frame17
	TextBox18.Position = udim2(0, 0, 0.0500000007, 0)
	TextBox18.Size = udim2(1, 0, 0.349999994, 0)
	TextBox18.BackgroundColor = bc("Institutional white")
	TextBox18.BackgroundColor3 = color(1, 1, 1)
	TextBox18.BorderColor = bc("Ghost grey")
	TextBox18.BorderColor3 = color(0.780392, 0.780392, 0.780392)
	TextBox18.BorderSizePixel = 2
	TextBox18.Font = Enum.Font.SourceSansBold
	TextBox18.FontSize = Enum.FontSize.Size14
	TextBox18.Text = ""
	TextBox18.TextColor = bc("Black metallic")
	TextBox18.TextColor3 = color(0.117647, 0.117647, 0.117647)
	TextBox18.TextSize = 14
	TextBox19.Name = "Volumeu"
	TextBox19.Parent = Frame17
	TextBox19.Position = udim2(0, 0, 0.600000024, 0)
	TextBox19.Size = udim2(1, 0, 0.349999994, 0)
	TextBox19.BackgroundColor = bc("Institutional white")
	TextBox19.BackgroundColor3 = color(1, 1, 1)
	TextBox19.BorderColor = bc("Ghost grey")
	TextBox19.BorderColor3 = color(0.780392, 0.780392, 0.780392)
	TextBox19.BorderSizePixel = 2
	TextBox19.Font = Enum.Font.SourceSansBold
	TextBox19.FontSize = Enum.FontSize.Size14
	TextBox19.Text = ""
	TextBox19.TextColor = bc("Black metallic")
	TextBox19.TextColor3 = color(0.117647, 0.117647, 0.117647)
	TextBox19.TextSize = 14
	NLS([==[	local plrs = game:GetService("Players")
	local plr = plrs.LocalPlayer
	local hum = plr.Character:FindFirstChildOfClass("Humanoid")
	local playergui = plr:FindFirstChild("PlayerGui")
	local textbox = script.Parent:WaitForChild("MusicFrame")
	local MainFrame = script.Parent.CSProfile 
	local charimg = MainFrame.Character
	local charname = MainFrame.Narume
	if plr.Name ~= "ninjakaiden1" then
		charname.Text = "Makoto Nakagawa"
	else
		charname.Text = "中川 真"
	end
	charimg.Image = "rbxassetid://13999975458"
	local hpbar = MainFrame.Health.Flame
	hpbar.TextLabel.Text = "HP: "..math.floor(hum.Health)

	local song = Instance.new("Sound", playergui)
	song.Name = "CSUFMusic"
	song.Looped = true
	local id = "18277227129"
	song.SoundId = "rbxassetid://" .. id
	if plr.Name == "ninjakaiden1" then
		song.SoundId = "rbxasset://sounds/hero.mp3"
	end
	song:Play()
	wait()
	textbox.Songu.FocusLost:Connect(function()
		local id = textbox.Songu.Text
		song.SoundId = "rbxassetid://" .. id
		song:Play()
	end)
	textbox.Volumeu.FocusLost:Connect(function()
		song.Volume = tonumber(textbox.Volumeu.Text)
	end)
	hum.Died:Connect(function()
		song:Destroy()
	end)
	plr.CharacterAdded:Connect(function()
		song:Destroy()
	end)

	while wait() do
		local hp = hum.Health/hum.MaxHealth
		hpbar.Frame.Size = UDim2.new(hp,0,1,0)
		hpbar.TextLabel.Text = "HP: "..math.floor(hum.Health)
	end]==],ScreenGui0)
	statsu = ScreenGui0
	statstext = TextLabel11
	mptext = TextLabel10
end

--emote stuff
function emote(emotetype)
	keycombo = ""
	if emotetype == "Taunt" then
		attack = true
		hum.WalkSpeed = 0
		hum.JumpPower = 0
		hum.JumpHeight = 0
		if not sword then
			local randomquote = random(0,5)
			if randomquote == 0 then
				chatter("I'm right here.")
				if voices then
					if not dresst then
						sound(133898807137784,2.5,1.2,head,0,false)
					else
						sound(133898807137784,2.5,1.35,head,0,false)
					end
				end
			elseif randomquote == 1 then
				chatter("Stop messing around, use what you have.")
				if voices then
					if not dresst then
						sound(124066131762367,2.5,1.2,head,0,false)
					else
						sound(124066131762367,2.5,1.45,head,0,false)
					end
				end
			elseif randomquote == 2 then
				chatter("What are you looking at?")
				if voices then
					if not dresst then
						sound(83038690945661,2.5,1.25,head,0,false)
					else
						sound(83038690945661,2.5,1.45,head,0,false)
					end
				end
			elseif randomquote == 3 then
				chatter("You talking to me?")
				if voices then
					if not dresst then
						sound(9068344679,2.5,1.2,head,0,false)
					else
						sound(9068344679,2.5,1.4,head,0,false)
					end
				end
			elseif randomquote == 4 then
				chatter("How pathetic.")
				if voices then
					if not dresst then
						sound(77435785142171,2.5,1.25,head,0,false)
					else
						sound(77435785142171,2.5,1.45,head,0,false)
					end
				end	
			else
				chatter("Too slow!")
				if voices then
					if not dresst then
						sound(646548872,2.5,1.15,head,0,false)
					else
						sound(646548872,2.5,1.35,head,0,false)
					end
				end	
			end
			anim = "taunt"
			frame = 1
			task.wait(0.45)
			frame = 2
			sound(240428955, 1.5, 0.75, head, 0,false)
			task.wait(0.15)
			frame = 1
			task.wait(0.1)
			frame = 3
			sound(240428955, 1.5, 0.75, head, 0,false)
			task.wait(0.1)
			frame = 1
			task.wait(0.75)
		else
			anim = "staunt"
			frame = 1
			task.wait(0.2)
			sound(503711022, 1.5, 1, torso, 0,false)
			local randomquote = random(0,9)
			if randomquote == 0 then
				chatter("I reject that hope!")
				if voices then
					if not dresst then
						sound(17528468469,2.5,1.1,head,0,false)
					else
						sound(17528468469,2.5,1.4,head,0,false)
					end
				end
			elseif randomquote == 1 then
				chatter("That's wrong!")
				if voices then
					if not dresst then
						sound(17528478843,2.5,1.1,head,0,false)
					else
						sound(17528478843,2.5,1.4,head,0,false)
					end
				end
			elseif randomquote == 2 then
				chatter("No, that's wrong!")
				if voices then
					if not dresst then
						sound(17528475485,2.5,1.1,head,0,false)
					else
						sound(17528475485,2.5,1.4,head,0,false)
					end
				end
			elseif randomquote == 3 then
				chatter("It ends here!")
				if voices then
					if not dresst then
						sound(17528470934,2.5,1.1,head,0,false)
					else
						sound(17528470934,2.5,1.4,head,0,false)
					end
				end
			elseif randomquote == 4 then
				chatter("I'll cut through your words!")
				if voices then
					if not dresst then
						sound(17528464705,2.5,1.1,head,0,false)
					else
						sound(17528464705,2.5,1.4,head,0,false)
					end
				end	
			elseif randomquote == 5 then
				chatter("No! It's wrong!")
				if voices then
					if not dresst then
						sound(86743954383813,2.5,1.05,head,0,false)
					else
						sound(86743954383813,2.5,1.33,head,0,false)
					end
				end				
			elseif randomquote == 6 then
				chatter("No! That's wrong!")
				if voices then
					if not dresst then
						sound(81967686011002,2.5,1.05,head,0,false)
					else
						sound(81967686011002,2.5,1.33,head,0,false)
					end
				end				
			elseif randomquote == 7 then
				chatter("There's something wrong with you!")
				if voices then
					if not dresst then
						sound(126941980021991,2.5,1.05,head,0,false)
					else
						sound(126941980021991,2.5,1.3,head,0,false)
					end
				end	
			elseif randomquote == 8 then
				chatter("You ain't scared, are ya?")
				if voices then
					if not dresst then
						sound(82648004956389,3,1.05,head,0,false)
					else
						sound(82648004956389,3,1.3,head,0,false)
					end
				end					
			else
				chatter("You want a piece of me?!")
				if voices then
					if not dresst then
						sound(646549347,2.5,1.15,head,0,false)
					else
						sound(646549347,2.5,1.35,head,0,false)
					end
				end		
			end
			frame = 2
			task.wait(1.5)
		end
		hum.WalkSpeed = ogws
		hum.JumpPower = ogjp
		hum.JumpHeight = ogjh
		attack = false
		frame = 1
	elseif emotetype == "Respect" then
		attack = true
		hum.WalkSpeed = 0
		hum.JumpPower = 0
		hum.JumpHeight = 0
		anim = "respect"
		frame = 1
		task.wait(1.5)
		frame = 2
		chatter("Hm? Not bad.")
		if voices then
			if not dresst then
				sound(4894428927,2.5,1.2,head,0,false)
			else
				sound(4894428927,2.5,1.45,head,0,false)
			end
		end
		task.wait(1.5)
		hum.WalkSpeed = ogws
		hum.JumpPower = ogjp
		hum.JumpHeight = ogjh
		attack = false
		frame = 1
	elseif emotetype == "Lose" then
		attack = true
		hum.WalkSpeed = 0
		hum.JumpPower = 0
		hum.JumpHeight = 0
		anim = "lose"
		frame = 1
		local randomquote = random(0,3)
		if not sword then
			if randomquote <= 1 then
				chatter("Huh?")
				if voices then
					if not dresst then
						sound(83353502086066,2.5,1.3,head,0,false)
					else
						sound(18548307445,2.5,1.05,head,0,false)
					end
				end
			else
				chatter("What?")
				if voices then
					if not dresst then
						sound(948494432,2.5,1.15,head,0,false)
					else
						sound(948494432,2.5,1.45,head,0,false)
					end
				end
			end
		else
			if randomquote <= 1 then
				chatter("Maybe I wasn't strong enough.")
				if voices then
					if not dresst then
						sound(8064878638,2.5,1.15,head,0,false)
					else
						sound(8064878638,2.5,1.4,head,0,false)
					end
				end
			else
				chatter("D-darn it!")
				if voices then
					if not dresst then
						sound(6539227475,2.5,1.25,head,0,false)
					else
						sound(6539227475,2.5,1.5,head,0,false)
					end
				end
			end
		end
		task.wait(2.5)
		hum.WalkSpeed = ogws
		hum.JumpPower = ogjp
		hum.JumpHeight = ogjh
		attack = false
	elseif emotetype == "Win" then
		attack = true
		hum.WalkSpeed = 0
		hum.JumpPower = 0
		hum.JumpHeight = 0
		local randomanim = random(0,3)
		if randomanim <= 1 then
			if not sword then
				anim = "win"
				frame = 1
				task.wait(0.45)
				frame = 2
				if random(0,3) >= 2 then
					chatter("That was a good workout!")
					if voices then
						if not dresst then
							sound(118387331912528,2.5,1.1,head,0,false)
						else
							sound(118387331912528,2.5,1.33,head,0,false)
						end
					end
				else
					chatter("Haha! I got one!")
					if voices then
						if not dresst then
							sound(9068375915,2.5,1.2,head,0,false)
						else
							sound(9068375915,2.5,1.4,head,0,false)
						end
					end
				end
				task.wait(2)
			else
				anim = "swin"
				frame = 1
				task.wait(0.15)
				frame = 2
				task.wait(0.75)
				chatter("Stay down, you annoying freak.")
				if voices then
					if not dresst then
						sound(128597083880451,2.5,1.25,head,0,false)
					else
						sound(128597083880451,2.5,1.5,head,0,false)
					end
				end
				frame = 3
				task.wait(0.85)
				frame = 4
				task.wait(0.75)
				frame = 1
				task.wait(0.1)
			end
		else
			if not sword then
				anim = "win2"
				frame = 1
			else
				anim = "swin2"
				frame = 1
			end
			chatter("I win this time, but maybe we'll meet again.")
			if voices then
				if not dresst then
					sound(4641676618,2.5,1.1,head,0,false)
				else
					sound(4641676618,2.5,1.33,head,0,false)
				end
			end
			task.wait(2.5)
		end
		hum.WalkSpeed = ogws
		hum.JumpPower = ogjp
		hum.JumpHeight = ogjh
		attack = false
	elseif emotetype == "Intro" then
		attack = true
		hum.WalkSpeed = 0
		hum.JumpPower = 0
		hum.JumpHeight = 0
		local randomanim = random(0,3)
		if randomanim <= 1 then
			if not sword then
				anim = "spawn"
				frame = 1
				task.wait(2.25)
				local randomquote = random(0,3)
				if randomquote <= 1 then
					chatter("Leave it to me!")
					if voices then
						if not dresst then
							sound(5845979225,2.5,1.1,head,0,false)
						else
							sound(5845979225,2.5,1.33,head,0,false)
						end
					end
				else
					chatter("Here we go.")
					if voices then
						if not dresst then
							sound(86635424777377,2.5,1.2,head,0,false)
						else
							sound(86635424777377,2.5,1.35,head,0,false)
						end
					end
				end
			else
				Weapon.Transparency = 1
				FWeapon.Transparency = 0
				anim = "sspawn"
				frame = 1
				task.wait(2)
				local randomquote = random(0,3)
				if randomquote <= 1 then
					chatter("Leave it to me!")
					if voices then
						if not dresst then
							sound(5845979225,2.5,1.1,head,0,false)
						else
							sound(5845979225,2.5,1.33,head,0,false)
						end
					end
				else
					chatter("Here we go.")
					if voices then
						if not dresst then
							sound(86635424777377,2.5,1.2,head,0,false)
						else
							sound(86635424777377,2.5,1.35,head,0,false)
						end
					end
				end
				task.wait(0.5)
				frame = 5
				task.wait(0.045)
				frame = 2
				task.wait(0.45)
				frame = 3
				sound(152052659,1.5,1,Weapon,0,false)
				Weapon.Transparency = 0
				FWeapon.Transparency = 1
				WeaponTrail.Enabled = true
				task.wait(1)
				frame = 4
				task.wait(0.068)
				WeaponTrail.Enabled = false
			end
		else
			if not sword then
				anim = "spawn2"
				frame = 1
				task.wait(1.45)
				chatter("Huh?")
				if voices then
					if not dresst then
						sound(83353502086066,2.5,1.3,head,0,false)
					else
						sound(18548307445,2.5,1.05,head,0,false)
					end
				end	
				frame = 2
				task.wait(1.5)
				chatter("Alright, let's begin.")
				frame = 3
				task.wait(0.1)
			else
				Weapon.Transparency = 1
				FWeapon.Transparency = 1
				anim = "sspawn2"
				frame = 1
				local fkatana = new("Part")
				fkatana.Name = "FakeKatana"
				fkatana.Parent = script
				fkatana.Size = vect3(0.001,0.001,0.001)
				fkatana.CanTouch = false
				fkatana.CanCollide = false
				fkatana.Locked = true
				fkatana.Anchored = true
				fkatana.CFrame = root.CFrame * cframe(0.75,-1.5,2.85) * angles(rad(-90),0,0) * angles(rad(-10),0,rad(15))
				local fkatanam = WeaponMesh:Clone()
				fkatanam.Parent = fkatana
				task.wait(0.5)
				chatter("Sorry, but you're not holding back.")
				if voices then
					if not dresst then
						sound(109993744497763,2.5,1.15,head,0,false)
					else
						sound(109993744497763,2.5,1.33,head,0,false)
					end
				end	
				task.wait(2)
				frame = 2
				task.wait(0.3)	
				fkatana:Destroy()
				frame = 3
				sound(152052659,1.5,1,Weapon,0,false)
				Weapon.Transparency = 0
				FWeapon.Transparency = 1
				WeaponTrail.Enabled = true
				task.wait(0.06)
				frame = 4
				task.wait(1)
				WeaponTrail.Enabled = false
			end
		end
		hum.WalkSpeed = ogws
		hum.JumpPower = ogjp
		hum.JumpHeight = ogjh
		attack = false
	elseif emotetype == "Fail" then
		attack = true
		hum.WalkSpeed = 0
		hum.JumpPower = 0
		hum.JumpHeight = 0
		anim = "fail"
		frame = 1
		task.wait(2)
		hum.WalkSpeed = ogws
		hum.JumpPower = ogjp
		hum.JumpHeight = ogjh
		attack = false	
	elseif emotetype == "Wave" then
		attack = true
		hum.WalkSpeed = 0
		hum.JumpPower = 0
		hum.JumpHeight = 0
		anim = "wave"
		frame = 1
		task.wait(1)
		hum.WalkSpeed = ogws
		hum.JumpPower = ogjp
		hum.JumpHeight = ogjh
		attack = false
	elseif emotetype == "Hello" then
		attack = true
		hum.WalkSpeed = 0
		hum.JumpPower = 0
		hum.JumpHeight = 0
		anim = "wave"
		frame = 1
		chatter("Hi.")
		if voices then
			if not dresst then
				sound(9068352559,2.5,1.2,head,0,false)
			else
				sound(9068352559,2.5,1.4,head,0,false)
			end
		end	
		task.wait(1)
		hum.WalkSpeed = ogws
		hum.JumpPower = ogjp
		hum.JumpHeight = ogjh
		attack = false
	elseif emotetype == "Laugh" then
		attack = true
		hum.WalkSpeed = 0
		hum.JumpPower = 0
		hum.JumpHeight = 0
		anim = "laugh"
		frame = 1
		task.wait(2)
		hum.WalkSpeed = ogws
		hum.JumpPower = ogjp
		hum.JumpHeight = ogjh
		attack = false	
	elseif emotetype == "Yes" then
		attack = true
		hum.WalkSpeed = 0
		hum.JumpPower = 0
		hum.JumpHeight = 0
		anim = "yes"
		frame = 1
		task.wait(1)
		hum.WalkSpeed = ogws
		hum.JumpPower = ogjp
		hum.JumpHeight = ogjh
		attack = false	
	elseif emotetype == "No" then
		attack = true
		hum.WalkSpeed = 0
		hum.JumpPower = 0
		hum.JumpHeight = 0
		anim = "no"
		frame = 1
		task.wait(1)
		hum.WalkSpeed = ogws
		hum.JumpPower = ogjp
		hum.JumpHeight = ogjh
		attack = false
	elseif emotetype == "Point" then
		attack = true
		hum.WalkSpeed = 0
		hum.JumpPower = 0
		hum.JumpHeight = 0
		anim = "point"
		frame = 1
		task.wait(0.65)
		hum.WalkSpeed = ogws
		hum.JumpPower = ogjp
		hum.JumpHeight = ogjh
		attack = false	
	elseif emotetype == "Thumbs" then
		attack = true
		hum.WalkSpeed = 0
		hum.JumpPower = 0
		hum.JumpHeight = 0
		anim = "thumbs"
		frame = 1
		task.wait(1)
		hum.WalkSpeed = ogws
		hum.JumpPower = ogjp
		hum.JumpHeight = ogjh
		attack = false
	elseif emotetype == "Sneeze" then
		attack = true
		hum.WalkSpeed = 0
		hum.JumpPower = 0
		hum.JumpHeight = 0
		anim = "sneeze"
		frame = 1
		if voices then
			if not dresst then
				sound(70958899410442,2.5,1.2,head,1.5,false)
			else
				sound(70958899410442,2.5,1.38,head,1.5,false)
			end
		end	
		task.wait(0.35)
		frame = 2
		task.wait(1)
		chatter("I'm sorry.")
		if voices then
			if not dresst then
				sound(7390767123,2.5,1.2,head,0,false)
			else
				sound(7390767123,2.5,1.37,head,0,false)
			end
		end	
		frame = 3
		task.wait(1)
		hum.WalkSpeed = ogws
		hum.JumpPower = ogjp
		hum.JumpHeight = ogjh
		attack = false
	elseif emotetype == "Sit" then
		sitting = true
		attack = true
		hum.WalkSpeed = 0
		hum.JumpPower = 0
		hum.JumpHeight = 0
		repeat 
			task.wait()
			anim = "sitground"
		until sitting == false
		attack = false
		hum.WalkSpeed = ogws
		hum.JumpPower = ogjp
		hum.JumpHeight = ogjh
	elseif emotetype == "Liedown" then
		lying = true
		attack = true
		hum.WalkSpeed = 0
		hum.JumpPower = 0
		hum.JumpHeight = 0
		anim = "lay"
		frame = 1
		repeat 
			task.wait()
			anim = "lay"
		until lying == false
		attack = false
		hum.WalkSpeed = ogws
		hum.JumpPower = ogjp
		hum.JumpHeight = ogjh
	elseif emotetype == "Facepalm" then
		attack = true
		anim = "facepalm"
		hum.WalkSpeed = 0
		hum.JumpPower = 0
		hum.JumpHeight = 0
		frame = 1
		task.wait(2)
		hum.WalkSpeed = ogws
		hum.JumpPower = ogjp
		hum.JumpHeight = ogjh
		attack = false
	elseif emotetype == "Sword" then
		attack = true
		hum.WalkSpeed = 0
		hum.JumpPower = 0
		hum.JumpHeight = 0
		anim = "sspawn"
		if not sword then
			sword = true
			frame = 1
			task.wait(0.068)
			frame = 5
			task.wait(0.045)
			frame = 2
			task.wait(0.45)
			frame = 3
			sound(152052659,1.5,1,Weapon,0,false)
			Weapon.Transparency = 0
			FWeapon.Transparency = 1
			WeaponTrail.Enabled = true
			task.wait(0.5)
			frame = 4
			task.wait(0.068)
			WeaponTrail.Enabled = false
		else
			sword = false
			frame = 4
			task.wait(0.068)
			frame = 3
			task.wait(0.068)
			frame = 2
			sound(211134014,1.5,1,Weapon,0,false)
			Weapon.Transparency = 1
			FWeapon.Transparency = 0
			task.wait(0.45)
			frame = 1
			task.wait(0.068)
		end
		hum.WalkSpeed = ogws
		hum.JumpPower = ogjp
		hum.JumpHeight = ogjh
		attack = false
		frame = 1
	elseif emotetype == "Transform" then
		attack = true
		hum.WalkSpeed = 0
		hum.JumpPower = 0
		hum.JumpHeight = 0
		if not dresst then
			anim = "ftrans"
			frame = 1
			chatter("Let's switch!")
			if voices then
				sound(6563667135,2.5,1.1,head,0,false)
			end	
			task.wait(1)
			super()
			task.wait(0.045)
			dresst = true
			if shirt == nil then
				shirt = new("Shirt",char)
				shirt.Name = "Shirt"
			end
			shirt.ShirtTemplate = "rbxassetid://192369083"
			if pants == nil then
				pants = new("Pants",char)
				pants.Name = "Pants"
			end
			pants.PantsTemplate = "rbxassetid://168100793"
			face.Texture = "rbxassetid://6815352990"
			hair2.Transparency = 1
			hair0.Transparency = 0
			if char:FindFirstChild("FakeHead") then
				char.FakeHead.face.Texture = face.Texture
			end
			task.wait(1)
		else
			anim = "mtrans"
			frame = 1
			chatter("Ugh...")
			if game.PlaceId == 11510416200 or game.PlaceId == 126783576555525 or game.PlaceId == 89201052571047 or game.PlaceId == 79868761121850 then
				if voices then
					sound(109239418812415,5,1.6,head,6.1,false,true,0.453)
				end
			end
			task.wait(1)
			super()
			task.wait(0.045)
			dresst = false
			if shirt == nil then
				shirt = new("Shirt",char)
				shirt.Name = "Shirt"
			end
			shirt.ShirtTemplate = "rbxassetid://147325557"
			if pants == nil then
				pants = new("Pants",char)
				pants.Name = "Pants"
			end
			pants.PantsTemplate = "rbxassetid://147327050"
			face.Texture = "rbxassetid://112647639651751"
			hair2.Transparency = 0
			hair0.Transparency = 1
			if char:FindFirstChild("FakeHead") then
				char.FakeHead.face.Texture = face.Texture
			end
			task.wait(1)
		end
		hum.WalkSpeed = ogws
		hum.JumpPower = ogjp
		hum.JumpHeight = ogjh
		attack = false
		frame = 1
	end
end

player.Chatted:connect(function(message)
	if message:sub(1,2) ~= "/e" then
		chatter(message)
	else
		if message:sub(1,7) == "/e chat" then
			canchat = not canchat
		end
		if message:sub(1,7) == "/e lose" and not (attack or guarding or hurt or hum.Sit == true or sitting or lying) then
			emote("Lose")
		end
		if message:sub(1,6) == "/e win" and not (attack or guarding or hurt or hum.Sit == true or sitting or lying) then
			emote("Win")
		end
		if message:sub(1,10) == "/e intro" and not (attack or guarding or hurt or hum.Sit == true or sitting or lying) then
			emote("Intro")
		end
		if message:sub(1,10) == "/e fail" and not (attack or guarding or hurt or hum.Sit == true or sitting or lying) then
			emote("Fail")
		end
		if message:sub(1,10) == "/e wave" and not (attack or guarding or hurt or hum.Sit == true or sitting or lying) then
			emote("Wave")
		end
		if message:sub(1,10) == "/e hello" and not (attack or guarding or hurt or hum.Sit == true or sitting or lying) then
			emote("Hello")
		end
		if message:sub(1,10) == "/e laugh" and not (attack or guarding or hurt or hum.Sit == true or sitting or lying) then
			emote("Laugh")
		end
		if message:sub(1,10) == "/e yes" and not (attack or guarding or hurt or hum.Sit == true or sitting or lying) then
			emote("Yes")
		end
		if message:sub(1,10) == "/e no" and not (attack or guarding or hurt or hum.Sit == true or sitting or lying) then
			emote("No")
		end		
		if message:sub(1,10) == "/e taunt" and not (attack or guarding or hurt or hum.Sit == true or sitting or lying) then
			emote("Taunt")
		end
		if message:sub(1,10) == "/e respect" and not (attack or guarding or hurt or hum.Sit == true or sitting or lying) then
			emote("Respect")
		end
		if message:sub(1,10) == "/e sneeze" and not (attack or guarding or hurt or hum.Sit == true or sitting or lying) then
			emote("Sneeze")
		end
		if message:sub(1,10) == "/e point" and not (attack or guarding or hurt or hum.Sit == true or sitting or lying) then
			emote("Point")
		end
		if message:sub(1,10) == "/e thumbs" and not (attack or guarding or hurt or hum.Sit == true or sitting or lying) then
			emote("Thumbs")
		end
		if message:sub(1,11) == "/e facepalm" and not (attack or guarding or hurt or hum.Sit == true or sitting or lying) then
			emote("Facepalm")
		end
		if message:sub(1,9) == "/e voices" then
			voices = not voices
		end
		if message:sub(1,9) == "/e fix" then
			hum.WalkSpeed = ogws
			hum.JumpPower = ogjp
			hum.JumpHeight = ogjh
			root.Anchored = false
			attack = false
		end
	end
end)

--humanoid stuff

hum.Died:Connect(function()
	if char == nil then return end
	dead = true
	attack = true
	ragdoll(char)
	local rdeath = random(0,7)
	if voices then
		if not dresst then
			if rdeath == 0 then
				sound(209527170,2.5,1.15,head,0,false)
			elseif rdeath == 1 then
				sound(209527175,2.5,1.15,head,0,false)
			elseif rdeath == 2 then
				sound(209527183,2.5,1.15,head,0,false)
			elseif rdeath == 3 then
				sound(209527235,2.5,1.15,head,0,false)
			elseif rdeath == 4 then
				sound(209527245,2.5,1.15,head,0,false)
			elseif rdeath == 5 then
				sound(209527203,2.5,1.15,head,0,false)
			elseif rdeath == 6 then
				sound(209527206,2.5,1.15,head,0,false)
			else
				sound(566988981,2.5,1.15,head,0,false)
			end
		else
			if rdeath == 0 then
				sound(209527170,2.5,1.3,head,0,false)
			elseif rdeath == 1 then
				sound(209527175,2.5,1.35,head,0,false)
			elseif rdeath == 2 then
				sound(209527183,2.5,1.33,head,0,false)
			elseif rdeath == 3 then
				sound(209527235,2.5,1.3,head,0,false)
			elseif rdeath == 4 then
				sound(209527245,2.5,1.3,head,0,false)
			elseif rdeath == 5 then
				sound(209527203,2.5,1.3,head,0,false)
			elseif rdeath == 6 then
				sound(209527206,2.5,1.3,head,0,false)
			else
				sound(566988981,2.5,1.3,head,0,false)
			end
		end
	end
end)

local CurrentHP = hum.Health
local hdf = nil
function healthchange(hp)
	hdf = CurrentHP - hp
	if hp < CurrentHP then
		CurrentHP = hp
		if dead then return end
		if hurt then return end
		if doingcounter then return end
		if sitting then
			sitting = false
		end
		if lying then
			lying = false
		end
		if guarding then
			if not sword then
				sound(9089408772, 4, 1, torso, 0, false)
				hiteffect("block",torso)
			else
				sound(4953120611, 4, 1, Weapon, 0, false)
				hiteffect("block",Weapon)
			end
			hum.Health= hp + (hdf * .98)
			if not inair then
				local bpos = new("BodyPosition")
				bpos.Parent = root
				bpos.MaxForce = vect3(math.huge,math.huge,math.huge)
				bpos.D = 1000
				bpos.Position = root.CFrame * cframe(0,0,25).Position
				debris:AddItem(bpos,0.1)
			else
				local bpos = new("BodyPosition")
				bpos.Parent = root
				bpos.MaxForce = vect3(math.huge,math.huge,math.huge)
				bpos.D = 1000
				bpos.Position = root.CFrame * cframe(0,15,25).Position
				debris:AddItem(bpos,0.1)
			end
		end
		if not inair then
			local randomhurt = random(0,7)
			if voices then
				if not dresst then
					if guarding then
						if randomhurt <= 1 then
							sound(209527095,2.5,1.15,head,0,false)
						elseif randomhurt >= 6 then
							sound(209527127,2.5,1.15,head,0,false)
						end
					else
						if randomhurt <= 1 then
							sound(209527149,2.5,1.15,head,0,false)
						elseif randomhurt >= 6 then
							sound(209527158,2.5,1.15,head,0,false)
						elseif (randomhurt == 2 or randomhurt == 4) then
							sound(209527166,2.5,1.15,head,0,false)
						end
					end
				else
					if guarding then
						if randomhurt <= 1 then
							sound(209527095,2.5,1.33,head,0,false)
						elseif randomhurt >= 6 then
							sound(209527127,2.5,1.33,head,0,false)
						end
					else
						if randomhurt <= 1 then
							sound(209527149,2.5,1.35,head,0,false)
						elseif randomhurt >= 6 then
							sound(209527158,2.5,1.33,head,0,false)
						elseif (randomhurt == 2 or randomhurt == 4) then
							sound(209527166,2.5,1.3,head,0,false)
						end
					end
				end
			end
		else
			if guarding then
				local randomhurt = random(0,7)
				if voices then
					if not dresst then
						if randomhurt <= 1 then
							sound(209527095,2.5,1.15,head,0,false)
						elseif randomhurt >= 6 then
							sound(209527127,2.5,1.1,head,0,false)
						end
					else
						if randomhurt <= 1 then
							sound(209527095,2.5,1.33,head,0,false)
						elseif randomhurt >= 6 then
							sound(209527127,2.5,1.33,head,0,false)
						end
					end
				end
			else
				local randomhurt = random(0,7)
				if voices then
					if not dresst then
						if randomhurt <= 1 then
							sound(209527149,2.5,1.15,head,0,false)
						elseif randomhurt >= 6 then
							sound(209527158,2.5,1.15,head,0,false)
						elseif randomhurt == 2 then
							sound(209527166,2.5,1.15,head,0,false)
						elseif randomhurt == 3 then
							sound(209527188,2.5,1.15,head,0,false)
						elseif randomhurt == 4 then
							sound(562249497,2.5,1.1,head,0,false)
						end
					else
						if randomhurt <= 1 then
							sound(209527149,2.5,1.35,head,0,false)
						elseif randomhurt >= 6 then
							sound(209527158,2.5,1.33,head,0,false)
						elseif randomhurt == 2 then
							sound(209527166,2.5,1.3,head,0,false)
						elseif randomhurt == 3 then
							sound(209527188,2.5,1.35,head,0,false)
						elseif randomhurt == 4 then
							sound(562249497,2.5,1.3,head,0,false)
						end
					end
				end
				if sitting then
					sitting = false
				end
			end
		end
	else
		CurrentHP = hp
	end
end
hum.HealthChanged:Connect(healthchange)

hum.FallingDown:Connect(function()
	if not fallen then
		if anchorm then return end
		if dead then return end
		local randomhurt = random(0,7)
		if voices then
			if not dresst then
				if randomhurt <= 1 then
					sound(209527149,2.5,1.15,head,0,false)
				elseif randomhurt >= 6 then
					sound(209527158,2.5,1.15,head,0,false)
				elseif randomhurt == 2 then
					sound(209527166,2.5,1.15,head,0,false)
				elseif randomhurt == 3 then
					sound(209527188,2.5,1.15,head,0,false)
				elseif randomhurt == 4 then
					sound(562249497,2.5,1.15,head,0,false)
				end
			else
				if randomhurt <= 1 then
					sound(209527149,2.5,1.35,head,0,false)
				elseif randomhurt >= 6 then
					sound(209527158,2.5,1.33,head,0,false)
				elseif randomhurt == 2 then
					sound(209527166,2.5,1.3,head,0,false)
				elseif randomhurt == 3 then
					sound(209527188,2.5,1.35,head,0,false)
				elseif randomhurt == 4 then
					sound(562249497,2.5,1.3,head,0,false)
				end
			end
		end
		fallen = true
	end
end)

hum.GettingUp:Connect(function()
	if fallen then
		if anchorm then return end
		if dead then return end
		local randomhurt = random(0,7)
		if randomhurt <= 1 or randomhurt >= 5 then
			chatter("Ow!")
		elseif randomhurt == 2 then
			chatter("Why you...!")
		elseif (randomhurt == 3 or randomhurt == 4) then
			chatter("What the hell did you just do?!")
		end
		if voices then
			if not dresst then
				if randomhurt <= 1 then
					sound(6371758602,2.5,1.2,head,0,false)
				elseif randomhurt >= 5 then
					sound(6371759336,2.5,1.2,head,0,false)
				elseif randomhurt == 2 then
					sound(159972536,2.5,1.2,head,0,false)
				elseif (randomhurt == 3 or randomhurt == 4) then
					sound(2485707466,2.5,1.2,head,0,false)
				end
			else
				if randomhurt <= 1 then
					sound(6371758602,2.5,1.5,head,0,false)
				elseif randomhurt >= 5 then
					sound(6371759336,2.5,1.5,head,0,false)
				elseif randomhurt == 2 then
					sound(159972536,2.5,1.45,head,0,false)
				elseif (randomhurt == 3 or randomhurt == 4) then
					sound(159882404,2.5,1.45,head,0,false)
				end
			end
		end
		fallen = false
	end
end)

hum.Running:Connect(function()
	if hum.MoveDirection.magnitude > .1 then
		moving = true
	else
		moving = false
	end
end)

hum.StateChanged:Connect(function(os, ns)
	if ns == Enum.HumanoidStateType.Jumping then
		sound(8956218288,3,1,torso,0,false)
		local jumppart = new("Part")
		jumppart.Parent = script
		jumppart.Transparency = 0
		jumppart.Size = vect3(0.001,0.001,0.001)
		jumppart.Anchored = true
		jumppart.BottomSurface = Enum.SurfaceType.Smooth
		jumppart.BrickColor = bc("White")
		jumppart.CanCollide = false
		jumppart.TopSurface = Enum.SurfaceType.Smooth
		jumppart.CFrame = root.CFrame * cframe(0,-1.5,0)
		local jump = new("ParticleEmitter")
		jump.Parent = jumppart
		jump.Speed = NumberRange.new(1, 1)
		jump.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
		jump.Rotation = NumberRange.new(-90, -90)
		jump.LightEmission = 1
		jump.Texture = "rbxassetid://13805841956"
		jump.Size = NumberSequence.new(10,10)
		jump.Brightness = 6
		jump.Lifetime = NumberRange.new(0.4000000059604645, 0.4000000059604645)
		jump.RotSpeed = NumberRange.new(-400, -400)
		jump.Drag = 0
		jump.Rotation = NumberRange.new(-90, -90)
		jump.Orientation = "VelocityPerpendicular"
		jump.EmissionDirection = "Top"
		jump.Rate = 20
		jump.ShapeInOut = "Outward"
		jump.Shape = "Box"
		jump.ShapeStyle = "Volume"
		jump.FlipbookLayout = "Grid4x4"
		jump.FlipbookMode = "OneShot"
		jump.LockedToPart = true
		spawn(function()
			task.wait(0.25)
			jump.Enabled = false
			debris:AddItem(jumppart,1.5)
		end)
	elseif ns == Enum.HumanoidStateType.Landed then
		local land = new("Part")
		land.Parent = script
		land.Transparency = 0
		land.Size = vect3(0.001,0.001,0.001)
		land.Anchored = false
		land.CanCollide = false
		land.CFrame = root.CFrame
		local weld = new("Weld")
		weld.Parent = land
		weld.Part0 = root
		weld.Part1 = land
		weld.C0 = weld.C0 * cframe(0,-2.5,0)
		local landp = new("ParticleEmitter")
		landp.Name = "Emitter"
		landp.Parent = land
		landp.Speed = NumberRange.new(30, 30)
		landp.Rotation = NumberRange.new(-180, 180)
		landp.LightEmission = 0.20000000298023224
		landp.LightInfluence = 1
		landp.Texture = "rbxassetid://476778304"
		landp.Transparency = NumberSequence.new(1,0.22499996423721313,0.4624999761581421,1)
		landp.Size = NumberSequence.new(0.5,1)
		landp.EmissionDirection = Enum.NormalId.Front
		landp.Lifetime = NumberRange.new(0.20000000298023224, 0.20000000298023224)
		landp.Rate = 250
		landp.SpreadAngle = vect2(0, 180)
		sound(18782450650,1.25,1,torso,0,false)
		spawn(function()
			weld:Destroy()
			debris:AddItem(weld,0.001)
			land.Anchored = true
			task.wait(0.25)
			landp.Enabled = false
			debris:AddItem(land,1)
		end)
	end
end)

function tyrant()
	local colors = {bc("Gold"),bc("Neon orange"),bc("Bright orange"),bc("Bright yellow"),bc("Deep orange")}
	local tyrantrave = new("Model")
	local tyrantravep = new("Part")
	local tyrantravem = new("SpecialMesh")
	local tyrantravep0 = new("Part")
	local tyrantravem0 = new("SpecialMesh")
	local tyrantravep1 = new("Part")
	local tyrantravem1 = new("SpecialMesh")
	local tyrantravep2 = new("Part")
	local tyrantravem2 = new("SpecialMesh")
	local tyrantravep3 = new("Part")
	local tyrantravem3 = new("SpecialMesh")
	local pospart = new("Part")
	local tyrantravew = new("Weld")
	local tyrantravew0 = new("Weld")
	local tyrantravew1 = new("Weld")
	local tyrantravew2 = new("Weld")
	local tyrantravew3 = new("Weld")
	tyrantrave.Parent = script
	tyrantravep.Name = "SHIELD MESH!"
	tyrantravep.Parent = tyrantrave
	tyrantravep.Transparency = 0.20000000298023224
	tyrantravep.Size = vect3()
	tyrantravep.BrickColor = colors[random(1,#colors)]
	tyrantravep.CanCollide = false
	tyrantravep.CanTouch = false
	tyrantravep.Locked = true
	tyrantravem.Parent = tyrantravep
	tyrantravem.MeshId = "http://www.roblox.com/asset/?id=1028797"
	tyrantravem.Scale = vect3(5.5, 3.5, 5.5)
	tyrantravem.MeshType = Enum.MeshType.FileMesh
	tyrantravep0.Name = "Ice Crown"
	tyrantravep0.Parent = tyrantrave
	tyrantravep0.Transparency = 0.5
	tyrantravep0.Size = vect3()
	tyrantravep0.BrickColor = colors[random(1,#colors)]
	tyrantravep0.CanCollide = false
	tyrantravep0.CanTouch = false
	tyrantravep0.Locked = true
	tyrantravem0.Parent = tyrantravep0
	tyrantravem0.MeshId = "http://www.roblox.com/asset/?id=1323306"
	tyrantravem0.Scale = vect3(9.706000328063965, 7.5, 9.706000328063965)
	tyrantravem0.MeshType = Enum.MeshType.FileMesh
	tyrantravep1.Name = "Crown"
	tyrantravep1.Parent = tyrantrave
	tyrantravep1.Transparency = 0.2
	tyrantravep1.Size = vect3()
	tyrantravep1.BrickColor = colors[random(1,#colors)]
	tyrantravep1.CanCollide = false
	tyrantravep1.CanTouch = false
	tyrantravep1.Locked = true
	tyrantravem1.Parent = tyrantravep1
	tyrantravem1.MeshId = "http://www.roblox.com/asset/?id=20329976"
	tyrantravem1.Scale = vect3(4, 2.6666667461395264, 4)
	tyrantravem1.MeshType = Enum.MeshType.FileMesh
	tyrantravep2.Name = "Crown"
	tyrantravep2.Parent = tyrantrave
	tyrantravep2.Transparency = 0.20000000298023224
	tyrantravep2.Size = vect3()
	tyrantravep2.BrickColor = colors[random(1,#colors)]
	tyrantravep2.CanCollide = false
	tyrantravep2.CanTouch = false
	tyrantravep2.Locked = true
	tyrantravem2.Parent = tyrantravep2
	tyrantravem2.MeshId = "http://www.roblox.com/asset/?id=20329976"
	tyrantravem2.Scale = vect3(4, 2.6666667461395264, 4)
	tyrantravem2.MeshType = Enum.MeshType.FileMesh
	tyrantravep3.Name = "Morata"
	tyrantravep3.Parent = tyrantrave
	tyrantravep3.Size = vect3()
	tyrantravep3.BrickColor = colors[random(1,#colors)]
	tyrantravep3.CanCollide = false
	tyrantravep3.CanTouch = false
	tyrantravep3.Locked = true
	tyrantravem3.Name = "Morataa"
	tyrantravem3.Parent = tyrantravep3
	tyrantravem3.MeshId = "http://www.roblox.com/asset/?id=90718752"
	tyrantravem3.Scale = vect3(16.66666603088379, 17.500015258789062, 20)
	tyrantravem3.MeshType = Enum.MeshType.FileMesh
	pospart.Name = "PosPart"
	pospart.Parent = script
	pospart.CFrame = root.CFrame * cframe(0,0,-4.5)
	pospart.Size = vect3()
	pospart.Anchored = true
	pospart.CanTouch = false
	pospart.CanCollide = false
	pospart.Locked = true
	pospart.Transparency = 1
	tyrantravew.Parent = pospart
	tyrantravew.C0 = cframe(0, 0, 4, 1, 0, -0, -0, -4.37113883e-08, -1, 0, 1, -4.37113883e-08)
	tyrantravew.Part0 = pospart
	tyrantravew.Part1 = tyrantravep0
	tyrantravew.part1 = tyrantravep0
	tyrantravew0.Parent = pospart
	tyrantravew0.C0 = cframe(0, 0, 0, 1, 0, -0, -0, -4.37113883e-08, -1, 0, 1, -4.37113883e-08)
	tyrantravew0.C1 = cframe(0, 0, 0, -4.37113883e-08, 0, 1, 0, 1, -0, -1, 0, -4.37113883e-08)
	tyrantravew0.Part0 = pospart
	tyrantravew0.Part1 = tyrantravep1
	tyrantravew0.part1 = tyrantravep1
	tyrantravew1.Parent = pospart
	tyrantravew1.C0 = cframe(0, 0, 0, 1, 0, -0, -0, -4.37113883e-08, -1, 0, 1, -4.37113883e-08)
	tyrantravew1.Part0 = pospart
	tyrantravew1.Part1 = tyrantravep2
	tyrantravew1.part1 = tyrantravep2
	tyrantravew2.Parent = pospart
	tyrantravew2.C0 = cframe(0, 0, -1.5, 1, 0, -0, -0, -4.37113883e-08, -1, 0, 1, -4.37113883e-08)
	tyrantravew2.Part0 = pospart
	tyrantravew2.Part1 = tyrantravep3
	tyrantravew2.part1 = tyrantravep3
	tyrantravew3.Parent = pospart
	tyrantravew3.C0 = cframe(0, 0, -3, 1, 0, -0, -0, -4.37113883e-08, -1, 0, 1, -4.37113883e-08)
	tyrantravew3.Part0 = pospart
	tyrantravew3.Part1 = tyrantravep
	for i,v in pairs(tyrantrave:GetDescendants()) do
		if v:IsA("BasePart") and v.Name ~= pospart.Name then
			v.Transparency = 1
		end
		if v:IsA("SpecialMesh") then
			v.Scale = v.Scale + vect3(-1,-1,-1)
		end
	end
	local explosion = new("Explosion")
	explosion.Parent = workspace
	explosion.Position = pospart.Position
	explosion.BlastRadius = 0
	explosion.BlastPressure = 0
	sound2(6892631834,4.5,1,pospart,0,false)
	magnitudedamage(45, "boom", 0, 10, 4766119678, 3, 1, pospart,true,"burn","giga2")
	spawn(function()
		for i = 1,10 do
			pospart.CFrame = pospart.CFrame * CFrame.fromEulerAnglesXYZ(0,0,0.15)
			pospart.CFrame = pospart.CFrame * cframe(0,0,-0.1)
			pospart.Transparency = pospart.Transparency + 0.015
			for i,v in pairs(tyrantrave:GetDescendants()) do
				if v:IsA("BasePart") and v.Name ~= pospart.Name then
					v.Transparency = v.Transparency - 0.115
				end
				if v:IsA("SpecialMesh") then
					v.Scale = v.Scale + vect3(0.15,0.05,0.15)
					if v.Name == "Morataa" then
						v.Offset = v.Offset + vect3(0,-0.01,0)
					end
				end
			end
			task.wait(0.005)
		end
		for i = 1,75 do
			pospart.CFrame = pospart.CFrame * CFrame.fromEulerAnglesXYZ(0,0,0.15)
			pospart.CFrame = pospart.CFrame * cframe(0,0,-0.1)
			pospart.Transparency = pospart.Transparency + 0.015
			for i,v in pairs(tyrantrave:GetDescendants()) do
				if v:IsA("BasePart") and v.Name ~= pospart.Name then
					v.Transparency = v.Transparency + 0.015
				end
				if v:IsA("SpecialMesh") then
					v.Scale = v.Scale + vect3(0.15,0.05,0.15)
					if v.Name == "Morataa" then
						v.Offset = v.Offset + vect3(0,-0.01,0)
					end
				end
			end
			task.wait(0.005)
		end
		pospart:Destroy()
		tyrantrave:Destroy()
	end)
end

function makebanisher()
	--Banisher V3 moment
	local Model0 = new("Model")
	local Part1 = new("Part")
	local SpecialMesh2 = new("SpecialMesh")
	local Part3 = new("Part")
	local Weld4 = new("Weld")
	local Weld5 = new("Weld")
	local Weld6 = new("Weld")
	local Weld7 = new("Weld")
	local Weld8 = new("Weld")
	local Weld9 = new("Weld")
	local Weld10 = new("Weld")
	local Weld11 = new("Weld")
	local Weld12 = new("Weld")
	local Weld13 = new("Weld")
	local Weld14 = new("Weld")
	local Weld15 = new("Weld")
	local Weld16 = new("Weld")
	local Weld17 = new("Weld")
	local Weld18 = new("Weld")
	local Weld19 = new("Weld")
	local Weld20 = new("Weld")
	local Weld21 = new("Weld")
	local Weld22 = new("Weld")
	local Weld23 = new("Weld")
	local Weld24 = new("Weld")
	local Weld25 = new("Weld")
	local Weld26 = new("Weld")
	local Weld27 = new("Weld")
	local Weld28 = new("Weld")
	local Weld29 = new("Weld")
	local Weld30 = new("Weld")
	local Weld31 = new("Weld")
	local Weld32 = new("Weld")
	local Weld33 = new("Weld")
	local Weld34 = new("Weld")
	local Weld35 = new("Weld")
	local Weld36 = new("Weld")
	local Weld37 = new("Weld")
	local Weld38 = new("Weld")
	local Weld39 = new("Weld")
	local Weld40 = new("Weld")
	local Weld41 = new("Weld")
	local Part42 = new("Part")
	local SpecialMesh43 = new("SpecialMesh")
	local Part44 = new("Part")
	local SpecialMesh45 = new("SpecialMesh")
	local Part46 = new("Part")
	local Part47 = new("Part")
	local Part48 = new("Part")
	local CylinderMesh49 = new("CylinderMesh")
	local Part50 = new("Part")
	local Part51 = new("Part")
	local Part52 = new("Part")
	local Part53 = new("Part")
	local Part54 = new("Part")
	local Part55 = new("Part")
	local Part56 = new("Part")
	local Part57 = new("Part")
	local Part58 = new("Part")
	local CylinderMesh59 = new("CylinderMesh")
	local Part60 = new("Part")
	local SpecialMesh61 = new("SpecialMesh")
	local Part62 = new("Part")
	local SpecialMesh63 = new("SpecialMesh")
	local Part64 = new("Part")
	local Part65 = new("Part")
	local CylinderMesh66 = new("CylinderMesh")
	local Part67 = new("Part")
	local CylinderMesh68 = new("CylinderMesh")
	local Part69 = new("Part")
	local CylinderMesh70 = new("CylinderMesh")
	local Part71 = new("Part")
	local SpecialMesh72 = new("SpecialMesh")
	local Part73 = new("Part")
	local Part74 = new("Part")
	local Part75 = new("Part")
	local Part76 = new("Part")
	local Part77 = new("Part")
	local Part78 = new("Part")
	local Part79 = new("Part")
	local Part80 = new("Part")
	local Part81 = new("Part")
	local Part82 = new("Part")
	local Part83 = new("Part")
	local CylinderMesh84 = new("CylinderMesh")
	local Part85 = new("Part")
	local CylinderMesh86 = new("CylinderMesh")
	local Part87 = new("Part")
	local SpecialMesh88 = new("SpecialMesh")
	local Part89 = new("Part")
	local CylinderMesh90 = new("CylinderMesh")
	local ParticleEmitter91 = new("ParticleEmitter")
	local Part92 = new("Part")
	local SpecialMesh93 = new("SpecialMesh")
	Model0.Name = "Banisher"
	Model0.Parent = script
	Part1.Name = "Eye"
	Part1.Parent = Model0
	Part1.Color = color(1, 0, 0)
	Part1.Transparency = 0.5
	Part1.Size = vect3(0.0010000000474974513, 0.0010000000474974513, 0.0010000000474974513)
	Part1.BrickColor = bc("Really red")
	Part1.CanCollide = false
	Part1.CustomPhysicalProperties = PhysicalProperties.new(9.99999975e-05, 0, 0, 0, 0)
	Part1.Locked = true
	Part1.Material = Enum.Material.Neon
	Part1.brickColor = bc("Really red")
	SpecialMesh2.Parent = Part1
	SpecialMesh2.MeshId = "http://www.roblox.com/asset/?id=156292343"
	SpecialMesh2.Offset = vect3(0, 0, 0.20000000298023224)
	SpecialMesh2.Scale = vect3(0.8999999761581421, 0.8999999761581421, 0.30000001192092896)
	SpecialMesh2.MeshType = Enum.MeshType.FileMesh
	Part3.Name = "Weiss"
	Part3.Parent = Model0
	Part3.Color = color(0.0666667, 0.0666667, 0.0666667)
	Part3.Size = vect3(0.20000000298023224, 0.6000000238418579, 0.20000000298023224)
	Part3.BrickColor = bc("Really black")
	Part3.CanCollide = false
	Part3.CustomPhysicalProperties = PhysicalProperties.new(9.99999975e-05, 0, 0, 0, 0)
	Part3.Locked = true
	Part3.Material = Enum.Material.Glass
	Part3.brickColor = bc("Really black")
	Weld4.Parent = Part3
	Weld4.C0 = cframe(0, -1, 0, 1, 0, 0, 0, -4.37113883e-08, -1, 0, 1, -4.37113883e-08)
	Weld4.C1 = cframe(0, 0.209999993, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	Weld4.Part0 = la
	Weld4.Part1 = Part3
	Weld4.part1 = Part3
	Weld5.Parent = Part3
	Weld5.C0 = cframe(0, -0.300000012, 0.200000003, -1, 0, -8.74227766e-08, 0, 1, 0, 8.74227766e-08, 0, -1)
	Weld5.Part0 = Part3
	Weld5.Part1 = Part42
	Weld5.part1 = Part42
	Weld6.Parent = Part3
	Weld6.C0 = cframe(0, -0.400000006, 0, -1, 8.74227766e-08, 0, -8.74227766e-08, -1, 0, 0, 0, 1)
	Weld6.Part0 = Part3
	Weld6.Part1 = Part44
	Weld6.part1 = Part44
	Weld7.Parent = Part3
	Weld7.C0 = cframe(0, -0.5, 0.200000003, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	Weld7.Part0 = Part3
	Weld7.Part1 = Part46
	Weld7.part1 = Part46
	Weld8.Parent = Part3
	Weld8.C0 = cframe(0, -0.600000024, 0.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	Weld8.Part0 = Part3
	Weld8.Part1 = Part47
	Weld8.part1 = Part47
	Weld9.Parent = Part3
	Weld9.C0 = cframe(0, -0.600000024, 0.5, 1, 0, 0, 0, -4.37113883e-08, -1, 0, 1, -4.37113883e-08)
	Weld9.Part0 = Part3
	Weld9.Part1 = Part48
	Weld9.part1 = Part48
	Weld10.Parent = Part3
	Weld10.C0 = cframe(0, 0, 0, 0.707106769, 0, 0.707106769, 0, 1, 0, -0.707106769, 0, 0.707106769)
	Weld10.Part0 = Part48
	Weld10.Part1 = Part50
	Weld10.part1 = Part50
	Weld11.Parent = Part3
	Weld11.C0 = cframe(0, 0, 0, -4.37113883e-08, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-08)
	Weld11.Part0 = Part48
	Weld11.Part1 = Part51
	Weld11.part1 = Part51
	Weld12.Parent = Part3
	Weld12.C0 = cframe(0, 0, 0, -0.707106769, 0, 0.707106769, 0, 1, 0, -0.707106769, 0, -0.707106769)
	Weld12.Part0 = Part48
	Weld12.Part1 = Part52
	Weld12.part1 = Part52
	Weld13.Parent = Part3
	Weld13.C0 = cframe(0, 0, 0, -1, 0, -8.74227766e-08, 0, 1, 0, 8.74227766e-08, 0, -1)
	Weld13.Part0 = Part48
	Weld13.Part1 = Part53
	Weld13.part1 = Part53
	Weld14.Parent = Part3
	Weld14.C0 = cframe(0, 0, 0, -0.707106829, 0, -0.707106709, 0, 1, 0, 0.707106709, 0, -0.707106829)
	Weld14.Part0 = Part48
	Weld14.Part1 = Part54
	Weld14.part1 = Part54
	Weld15.Parent = Part3
	Weld15.C0 = cframe(0, 0, 0, 1.19248806e-08, 0, -1, 0, 1, 0, 1, 0, 1.19248806e-08)
	Weld15.Part0 = Part48
	Weld15.Part1 = Part55
	Weld15.part1 = Part55
	Weld16.Parent = Part3
	Weld16.C0 = cframe(0, 0, 0, 0.707106709, 0, -0.707106888, 0, 1, 0, 0.707106888, 0, 0.707106709)
	Weld16.Part0 = Part48
	Weld16.Part1 = Part56
	Weld16.part1 = Part56
	Weld17.Parent = Part3
	Weld17.C0 = cframe(0, 0, 0, 1, 0, 1.74845553e-07, 0, 1, 0, -1.74845553e-07, 0, 1)
	Weld17.Part0 = Part48
	Weld17.Part1 = Part57
	Weld17.part1 = Part57
	Weld18.Parent = Part3
	Weld18.C0 = cframe(0, -0.600000024, 0.5, 1, 0, 0, 0, -4.37113883e-08, -1, 0, 1, -4.37113883e-08)
	Weld18.Part0 = Part3
	Weld18.Part1 = Part58
	Weld18.part1 = Part58
	Weld19.Parent = Part3
	Weld19.C0 = cframe(0, -0.600000024, 0.300000012, 1, 0, 0, 0, -4.37113883e-08, -1, 0, 1, -4.37113883e-08)
	Weld19.Part0 = Part3
	Weld19.Part1 = Part60
	Weld19.part1 = Part60
	Weld20.Parent = Part3
	Weld20.C0 = cframe(0, -0.699999988, 0.5, 1, -8.74227766e-08, -8.74227766e-08, 8.74227837e-08, 4.37113812e-08, 1, -8.74227695e-08, -1, 4.37113883e-08)
	Weld20.Part0 = Part3
	Weld20.Part1 = Part62
	Weld20.part1 = Part62
	Weld21.Parent = Part3
	Weld21.C0 = cframe(0, -0.600000024, 0.699999988, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	Weld21.Part0 = Part3
	Weld21.Part1 = Part64
	Weld21.part1 = Part64
	Weld22.Parent = Part3
	Weld22.C0 = cframe(0, -0.600000024, 0.699999988, 1, 0, 0, 0, -4.37113883e-08, -1, 0, 1, -4.37113883e-08)
	Weld22.Part0 = Part3
	Weld22.Part1 = Part65
	Weld22.part1 = Part65
	Weld23.Parent = Part3
	Weld23.C0 = cframe(0, -0.600000024, 1, 1, 0, 0, 0, -4.37113883e-08, -1, 0, 1, -4.37113883e-08)
	Weld23.Part0 = Part3
	Weld23.Part1 = Part67
	Weld23.part1 = Part67
	Weld24.Parent = Part3
	Weld24.C0 = cframe(0, -0.600000024, 1.10000002, 1, 0, 0, 0, -4.37113883e-08, -1, 0, 1, -4.37113883e-08)
	Weld24.Part0 = Part3
	Weld24.Part1 = Part69
	Weld24.part1 = Part69
	Weld25.Parent = Part3
	Weld25.C0 = cframe(0, -0.550000012, 0.200000003, 1, -0, 0, 0, -0.707106769, 0.707106769, 0, -0.707106769, -0.707106769)
	Weld25.C1 = cframe(0, -0.300000012, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	Weld25.Part0 = Part3
	Weld25.Part1 = Part71
	Weld25.part1 = Part71
	Weld26.Parent = Part3
	Weld26.C0 = cframe(0, -0.100000001, 0.200000003, 1, 0, 0, 0, -4.37113883e-08, -1, 0, 1, -4.37113883e-08)
	Weld26.Part0 = Part3
	Weld26.Part1 = Part73
	Weld26.part1 = Part73
	Weld27.Parent = Part3
	Weld27.C0 = cframe(0, 0.0250000004, 0, 1, 0, 0, 0, 0.990268052, -0.139173105, 0, 0.139173105, 0.990268052)
	Weld27.C1 = cframe(0, -0.0250000004, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	Weld27.Part0 = Part73
	Weld27.Part1 = Part74
	Weld27.part1 = Part74
	Weld28.Parent = Part3
	Weld28.C0 = cframe(0, 0.0250000004, 0, 1, 0, 0, 0, 0.990268052, -0.139173105, 0, 0.139173105, 0.990268052)
	Weld28.C1 = cframe(0, -0.0250000004, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	Weld28.Part0 = Part74
	Weld28.Part1 = Part75
	Weld28.part1 = Part75
	Weld29.Parent = Part3
	Weld29.C0 = cframe(0, 0.0250000004, 0, 1, 0, 0, 0, 0.990268052, -0.139173105, 0, 0.139173105, 0.990268052)
	Weld29.C1 = cframe(0, -0.0250000004, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	Weld29.Part0 = Part75
	Weld29.Part1 = Part76
	Weld29.part1 = Part76
	Weld30.Parent = Part3
	Weld30.C0 = cframe(0, 0.0250000004, 0, 1, 0, 0, 0, 0.990268052, -0.139173105, 0, 0.139173105, 0.990268052)
	Weld30.C1 = cframe(0, -0.0250000004, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	Weld30.Part0 = Part76
	Weld30.Part1 = Part77
	Weld30.part1 = Part77
	Weld31.Parent = Part3
	Weld31.C0 = cframe(0, 0.0250000004, 0, 1, 0, 0, 0, 0.990268052, -0.139173105, 0, 0.139173105, 0.990268052)
	Weld31.C1 = cframe(0, -0.0250000004, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	Weld31.Part0 = Part77
	Weld31.Part1 = Part78
	Weld31.part1 = Part78
	Weld32.Parent = Part3
	Weld32.C0 = cframe(0, 0.0250000004, 0, 1, 0, 0, 0, 0.990268052, -0.139173105, 0, 0.139173105, 0.990268052)
	Weld32.C1 = cframe(0, -0.0250000004, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	Weld32.Part0 = Part78
	Weld32.Part1 = Part79
	Weld32.part1 = Part79
	Weld33.Parent = Part3
	Weld33.C0 = cframe(0, 0.0250000004, 0, 1, 0, 0, 0, 0.990268052, -0.139173105, 0, 0.139173105, 0.990268052)
	Weld33.C1 = cframe(0, -0.0250000004, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	Weld33.Part0 = Part79
	Weld33.Part1 = Part80
	Weld33.part1 = Part80
	Weld34.Parent = Part3
	Weld34.C0 = cframe(0, 0.0250000004, 0, 1, 0, 0, 0, 0.990268052, -0.139173105, 0, 0.139173105, 0.990268052)
	Weld34.C1 = cframe(0, -0.0250000004, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	Weld34.Part0 = Part80
	Weld34.Part1 = Part81
	Weld34.part1 = Part81
	Weld35.Parent = Part3
	Weld35.C0 = cframe(0, 0.0250000004, 0, 1, 0, 0, 0, 0.990268052, -0.139173105, 0, 0.139173105, 0.990268052)
	Weld35.C1 = cframe(0, -0.0250000004, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	Weld35.Part0 = Part81
	Weld35.Part1 = Part82
	Weld35.part1 = Part82
	Weld36.Parent = Part3
	Weld36.C0 = cframe(0, -0.600000024, 1.79999995, 1, 0, 0, 0, -4.37113883e-08, -1, 0, 1, -4.37113883e-08)
	Weld36.Part0 = Part3
	Weld36.Part1 = Part83
	Weld36.part1 = Part83
	Weld37.Parent = Part3
	Weld37.C0 = cframe(0, -0.600000024, 0, 1, 0, 0, 0, 1, -0, 0, 0, 1)
	Weld37.C1 = cframe(-3.93390656e-06, 6.2584877e-07, -5.64660877e-06, 1, 0, 0, 0, 1, -0, 0, 0, 1)
	Weld37.Part0 = Part83
	Weld37.Part1 = Part85
	Weld37.part1 = Part85
	Weld38.Parent = Part3
	Weld38.C0 = cframe(0, 0.944999993, 0.100000001, 1, -0, 0, 0, -1, 8.74227766e-08, 0, -8.74227766e-08, -1)
	Weld38.Part0 = Part83
	Weld38.Part1 = Part87
	Weld38.part1 = Part87
	Weld39.Parent = Part3
	Weld39.C0 = cframe(0, 0.980000019, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	Weld39.Part0 = Part83
	Weld39.Part1 = Part89
	Weld39.part1 = Part89
	Weld40.Parent = Part3
	Weld40.C0 = cframe(0, -0.600000024, 0.699999988, -0.766047001, 0.642786682, 0, -0.642786682, -0.766047001, 0, 0, 0, 1)
	Weld40.Part0 = Part3
	Weld40.Part1 = Part92
	Weld40.part1 = Part92
	Weld41.Parent = Part3
	Weld41.C0 = cframe(0, -0.600000024, 0.699999988, -0.766047001, -0.642786682, 0, 0.642786682, -0.766047001, 0, 0, 0, 1)
	Weld41.Part0 = Part3
	Weld41.Part1 = Part1
	Weld41.part1 = Part1
	Part42.Parent = Model0
	Part42.Color = color(0.0666667, 0.0666667, 0.0666667)
	Part42.Size = vect3(0.20000000298023224, 0.5, 0.20000000298023224)
	Part42.BrickColor = bc("Really black")
	Part42.CanCollide = false
	Part42.CustomPhysicalProperties = PhysicalProperties.new(9.99999975e-05, 0, 0, 0, 0)
	Part42.Locked = true
	Part42.Material = Enum.Material.Glass
	Part42.brickColor = bc("Really black")
	SpecialMesh43.Parent = Part42
	SpecialMesh43.MeshType = Enum.MeshType.Wedge
	Part44.Parent = Model0
	Part44.Color = color(0.0666667, 0.0666667, 0.0666667)
	Part44.Size = vect3(0.20000000298023224, 0.30000001192092896, 0.20000000298023224)
	Part44.BrickColor = bc("Really black")
	Part44.CanCollide = false
	Part44.CustomPhysicalProperties = PhysicalProperties.new(9.99999975e-05, 0, 0, 0, 0)
	Part44.Locked = true
	Part44.Material = Enum.Material.Glass
	Part44.brickColor = bc("Really black")
	SpecialMesh45.Parent = Part44
	SpecialMesh45.MeshType = Enum.MeshType.Wedge
	Part46.Parent = Model0
	Part46.Color = color(0.0666667, 0.0666667, 0.0666667)
	Part46.Size = vect3(0.30000001192092896, 0.30000001192092896, 0.30000001192092896)
	Part46.BrickColor = bc("Really black")
	Part46.CanCollide = false
	Part46.CustomPhysicalProperties = PhysicalProperties.new(9.99999975e-05, 0, 0, 0, 0)
	Part46.Locked = true
	Part46.Material = Enum.Material.Glass
	Part46.brickColor = bc("Really black")
	Part47.Parent = Model0
	Part47.Color = color(0.0666667, 0.0666667, 0.0666667)
	Part47.Size = vect3(0.30000001192092896, 0.5, 0.5)
	Part47.BrickColor = bc("Really black")
	Part47.CanCollide = false
	Part47.CustomPhysicalProperties = PhysicalProperties.new(9.99999975e-05, 0, 0, 0, 0)
	Part47.Locked = true
	Part47.Material = Enum.Material.Glass
	Part47.brickColor = bc("Really black")
	Part48.Parent = Model0
	Part48.Color = color(0.0666667, 0.0666667, 0.0666667)
	Part48.Size = vect3(0.4000000059604645, 0.4000000059604645, 0.4000000059604645)
	Part48.BrickColor = bc("Really black")
	Part48.CanCollide = false
	Part48.CustomPhysicalProperties = PhysicalProperties.new(9.99999975e-05, 0, 0, 0, 0)
	Part48.Locked = true
	Part48.Material = Enum.Material.Glass
	Part48.brickColor = bc("Really black")
	CylinderMesh49.Parent = Part48
	Part50.Name = "Eye"
	Part50.Parent = Model0
	Part50.Color = color(1, 0, 0)
	Part50.Size = vect3(0.0010000000474974513, 0.3499999940395355, 0.4099999964237213)
	Part50.BrickColor = bc("Really red")
	Part50.CanCollide = false
	Part50.CustomPhysicalProperties = PhysicalProperties.new(9.99999975e-05, 0, 0, 0, 0)
	Part50.Locked = true
	Part50.Material = Enum.Material.Neon
	Part50.brickColor = bc("Really red")
	Part51.Name = "Eye"
	Part51.Parent = Model0
	Part51.Color = color(1, 0, 0)
	Part51.Size = vect3(0.0010000000474974513, 0.3499999940395355, 0.4099999964237213)
	Part51.BrickColor = bc("Really red")
	Part51.CanCollide = false
	Part51.CustomPhysicalProperties = PhysicalProperties.new(9.99999975e-05, 0, 0, 0, 0)
	Part51.Locked = true
	Part51.Material = Enum.Material.Neon
	Part51.brickColor = bc("Really red")
	Part52.Name = "Eye"
	Part52.Parent = Model0
	Part52.Color = color(1, 0, 0)
	Part52.Size = vect3(0.0010000000474974513, 0.3499999940395355, 0.4099999964237213)
	Part52.BrickColor = bc("Really red")
	Part52.CanCollide = false
	Part52.CustomPhysicalProperties = PhysicalProperties.new(9.99999975e-05, 0, 0, 0, 0)
	Part52.Locked = true
	Part52.Material = Enum.Material.Neon
	Part52.brickColor = bc("Really red")
	Part53.Name = "Eye"
	Part53.Parent = Model0
	Part53.Color = color(1, 0, 0)
	Part53.Size = vect3(0.0010000000474974513, 0.3499999940395355, 0.4099999964237213)
	Part53.BrickColor = bc("Really red")
	Part53.CanCollide = false
	Part53.CustomPhysicalProperties = PhysicalProperties.new(9.99999975e-05, 0, 0, 0, 0)
	Part53.Locked = true
	Part53.Material = Enum.Material.Neon
	Part53.brickColor = bc("Really red")
	Part54.Name = "Eye"
	Part54.Parent = Model0
	Part54.Color = color(1, 0, 0)
	Part54.Size = vect3(0.0010000000474974513, 0.3499999940395355, 0.4099999964237213)
	Part54.BrickColor = bc("Really red")
	Part54.CanCollide = false
	Part54.CustomPhysicalProperties = PhysicalProperties.new(9.99999975e-05, 0, 0, 0, 0)
	Part54.Locked = true
	Part54.Material = Enum.Material.Neon
	Part54.brickColor = bc("Really red")
	Part55.Name = "Eye"
	Part55.Parent = Model0
	Part55.Color = color(1, 0, 0)
	Part55.Size = vect3(0.0010000000474974513, 0.3499999940395355, 0.4099999964237213)
	Part55.BrickColor = bc("Really red")
	Part55.CanCollide = false
	Part55.CustomPhysicalProperties = PhysicalProperties.new(9.99999975e-05, 0, 0, 0, 0)
	Part55.Locked = true
	Part55.Material = Enum.Material.Neon
	Part55.brickColor = bc("Really red")
	Part56.Name = "Eye"
	Part56.Parent = Model0
	Part56.Color = color(1, 0, 0)
	Part56.Size = vect3(0.0010000000474974513, 0.3499999940395355, 0.4099999964237213)
	Part56.BrickColor = bc("Really red")
	Part56.CanCollide = false
	Part56.CustomPhysicalProperties = PhysicalProperties.new(9.99999975e-05, 0, 0, 0, 0)
	Part56.Locked = true
	Part56.Material = Enum.Material.Neon
	Part56.brickColor = bc("Really red")
	Part57.Name = "Eye"
	Part57.Parent = Model0
	Part57.Color = color(1, 0, 0)
	Part57.Size = vect3(0.0010000000474974513, 0.3499999940395355, 0.4099999964237213)
	Part57.BrickColor = bc("Really red")
	Part57.CanCollide = false
	Part57.CustomPhysicalProperties = PhysicalProperties.new(9.99999975e-05, 0, 0, 0, 0)
	Part57.Locked = true
	Part57.Material = Enum.Material.Neon
	Part57.brickColor = bc("Really red")
	Part58.Name = "Eye"
	Part58.Parent = Model0
	Part58.Color = color(1, 0, 0)
	Part58.Size = vect3(0.3799999952316284, 0.4099999964237213, 0.3799999952316284)
	Part58.BrickColor = bc("Really red")
	Part58.CanCollide = false
	Part58.CustomPhysicalProperties = PhysicalProperties.new(9.99999975e-05, 0, 0, 0, 0)
	Part58.Locked = true
	Part58.Material = Enum.Material.Neon
	Part58.brickColor = bc("Really red")
	CylinderMesh59.Parent = Part58
	Part60.Parent = Model0
	Part60.Color = color(0.0666667, 0.0666667, 0.0666667)
	Part60.Size = vect3(0.3700000047683716, 0.5, 0.3700000047683716)
	Part60.BrickColor = bc("Really black")
	Part60.CanCollide = false
	Part60.CustomPhysicalProperties = PhysicalProperties.new(9.99999975e-05, 0, 0, 0, 0)
	Part60.Locked = true
	Part60.Material = Enum.Material.Glass
	Part60.brickColor = bc("Really black")
	SpecialMesh61.Parent = Part60
	SpecialMesh61.MeshType = Enum.MeshType.Sphere
	Part62.Parent = Model0
	Part62.Color = color(0.0666667, 0.0666667, 0.0666667)
	Part62.Size = vect3(0.20000000298023224, 0.699999988079071, 0.4000000059604645)
	Part62.BrickColor = bc("Really black")
	Part62.CanCollide = false
	Part62.CustomPhysicalProperties = PhysicalProperties.new(9.99999975e-05, 0, 0, 0, 0)
	Part62.Locked = true
	Part62.Material = Enum.Material.Glass
	Part62.brickColor = bc("Really black")
	SpecialMesh63.Parent = Part62
	SpecialMesh63.MeshType = Enum.MeshType.Wedge
	Part64.Parent = Model0
	Part64.Color = color(0.0666667, 0.0666667, 0.0666667)
	Part64.Size = vect3(0.30000001192092896, 0.4000000059604645, 0.20000000298023224)
	Part64.BrickColor = bc("Really black")
	Part64.CanCollide = false
	Part64.CustomPhysicalProperties = PhysicalProperties.new(9.99999975e-05, 0, 0, 0, 0)
	Part64.Locked = true
	Part64.Material = Enum.Material.Glass
	Part64.brickColor = bc("Really black")
	Part65.Parent = Model0
	Part65.Color = color(0.0666667, 0.0666667, 0.0666667)
	Part65.Size = vect3(0.3499999940395355, 0.3499999940395355, 0.3499999940395355)
	Part65.BrickColor = bc("Really black")
	Part65.CanCollide = false
	Part65.CustomPhysicalProperties = PhysicalProperties.new(9.99999975e-05, 0, 0, 0, 0)
	Part65.Locked = true
	Part65.Material = Enum.Material.Glass
	Part65.brickColor = bc("Really black")
	CylinderMesh66.Parent = Part65
	Part67.Parent = Model0
	Part67.Color = color(0.0666667, 0.0666667, 0.0666667)
	Part67.Size = vect3(0.5, 0.10000000149011612, 0.5)
	Part67.BrickColor = bc("Really black")
	Part67.CanCollide = false
	Part67.CustomPhysicalProperties = PhysicalProperties.new(9.99999975e-05, 0, 0, 0, 0)
	Part67.Locked = true
	Part67.Material = Enum.Material.Glass
	Part67.brickColor = bc("Really black")
	CylinderMesh68.Parent = Part67
	Part69.Parent = Model0
	Part69.Color = color(0.0666667, 0.0666667, 0.0666667)
	Part69.Size = vect3(0.5, 0.10000000149011612, 0.44999998807907104)
	Part69.BrickColor = bc("Really black")
	Part69.CanCollide = false
	Part69.CustomPhysicalProperties = PhysicalProperties.new(9.99999975e-05, 0, 0, 0, 0)
	Part69.Locked = true
	Part69.Material = Enum.Material.Glass
	Part69.brickColor = bc("Really black")
	CylinderMesh70.Parent = Part69
	Part71.Parent = Model0
	Part71.Color = color(0.0666667, 0.0666667, 0.0666667)
	Part71.Size = vect3(0.20000000298023224, 0.5, 0.20000000298023224)
	Part71.BrickColor = bc("Really black")
	Part71.CanCollide = false
	Part71.CustomPhysicalProperties = PhysicalProperties.new(9.99999975e-05, 0, 0, 0, 0)
	Part71.Locked = true
	Part71.Material = Enum.Material.Glass
	Part71.brickColor = bc("Really black")
	SpecialMesh72.Parent = Part71
	SpecialMesh72.MeshType = Enum.MeshType.Wedge
	Part73.Parent = Model0
	Part73.Color = color(0.0666667, 0.0666667, 0.0666667)
	Part73.Size = vect3(0.10000000149011612, 0.20000000298023224, 0.0010000000474974513)
	Part73.BrickColor = bc("Really black")
	Part73.CanCollide = false
	Part73.CustomPhysicalProperties = PhysicalProperties.new(9.99999975e-05, 0, 0, 0, 0)
	Part73.Locked = true
	Part73.Material = Enum.Material.Glass
	Part73.brickColor = bc("Really black")
	Part74.Parent = Model0
	Part74.Color = color(0.0666667, 0.0666667, 0.0666667)
	Part74.Size = vect3(0.10000000149011612, 0.05000000074505806, 0.0010000000474974513)
	Part74.BrickColor = bc("Really black")
	Part74.CanCollide = false
	Part74.CustomPhysicalProperties = PhysicalProperties.new(9.99999975e-05, 0, 0, 0, 0)
	Part74.Locked = true
	Part74.Material = Enum.Material.Glass
	Part74.brickColor = bc("Really black")
	Part75.Parent = Model0
	Part75.Color = color(0.0666667, 0.0666667, 0.0666667)
	Part75.Size = vect3(0.10000000149011612, 0.05000000074505806, 0.0010000000474974513)
	Part75.BrickColor = bc("Really black")
	Part75.CanCollide = false
	Part75.CustomPhysicalProperties = PhysicalProperties.new(9.99999975e-05, 0, 0, 0, 0)
	Part75.Locked = true
	Part75.Material = Enum.Material.Glass
	Part75.brickColor = bc("Really black")
	Part76.Parent = Model0
	Part76.Color = color(0.0666667, 0.0666667, 0.0666667)
	Part76.Size = vect3(0.10000000149011612, 0.05000000074505806, 0.0010000000474974513)
	Part76.BrickColor = bc("Really black")
	Part76.CanCollide = false
	Part76.CustomPhysicalProperties = PhysicalProperties.new(9.99999975e-05, 0, 0, 0, 0)
	Part76.Locked = true
	Part76.Material = Enum.Material.Glass
	Part76.brickColor = bc("Really black")
	Part77.Parent = Model0
	Part77.Color = color(0.0666667, 0.0666667, 0.0666667)
	Part77.Size = vect3(0.10000000149011612, 0.05000000074505806, 0.0010000000474974513)
	Part77.BrickColor = bc("Really black")
	Part77.CanCollide = false
	Part77.CustomPhysicalProperties = PhysicalProperties.new(9.99999975e-05, 0, 0, 0, 0)
	Part77.Locked = true
	Part77.Material = Enum.Material.Glass
	Part77.brickColor = bc("Really black")
	Part78.Parent = Model0
	Part78.Color = color(0.0666667, 0.0666667, 0.0666667)
	Part78.Size = vect3(0.10000000149011612, 0.05000000074505806, 0.0010000000474974513)
	Part78.BrickColor = bc("Really black")
	Part78.CanCollide = false
	Part78.CustomPhysicalProperties = PhysicalProperties.new(9.99999975e-05, 0, 0, 0, 0)
	Part78.Locked = true
	Part78.Material = Enum.Material.Glass
	Part78.brickColor = bc("Really black")
	Part79.Parent = Model0
	Part79.Color = color(0.0666667, 0.0666667, 0.0666667)
	Part79.Size = vect3(0.10000000149011612, 0.05000000074505806, 0.0010000000474974513)
	Part79.BrickColor = bc("Really black")
	Part79.CanCollide = false
	Part79.CustomPhysicalProperties = PhysicalProperties.new(9.99999975e-05, 0, 0, 0, 0)
	Part79.Locked = true
	Part79.Material = Enum.Material.Glass
	Part79.brickColor = bc("Really black")
	Part80.Parent = Model0
	Part80.Color = color(0.0666667, 0.0666667, 0.0666667)
	Part80.Size = vect3(0.10000000149011612, 0.05000000074505806, 0.0010000000474974513)
	Part80.BrickColor = bc("Really black")
	Part80.CanCollide = false
	Part80.CustomPhysicalProperties = PhysicalProperties.new(9.99999975e-05, 0, 0, 0, 0)
	Part80.Locked = true
	Part80.Material = Enum.Material.Glass
	Part80.brickColor = bc("Really black")
	Part81.Parent = Model0
	Part81.Color = color(0.0666667, 0.0666667, 0.0666667)
	Part81.Size = vect3(0.10000000149011612, 0.05000000074505806, 0.0010000000474974513)
	Part81.BrickColor = bc("Really black")
	Part81.CanCollide = false
	Part81.CustomPhysicalProperties = PhysicalProperties.new(9.99999975e-05, 0, 0, 0, 0)
	Part81.Locked = true
	Part81.Material = Enum.Material.Glass
	Part81.brickColor = bc("Really black")
	Part82.Parent = Model0
	Part82.Color = color(0.0666667, 0.0666667, 0.0666667)
	Part82.Size = vect3(0.10000000149011612, 0.05000000074505806, 0.0010000000474974513)
	Part82.BrickColor = bc("Really black")
	Part82.CanCollide = false
	Part82.CustomPhysicalProperties = PhysicalProperties.new(9.99999975e-05, 0, 0, 0, 0)
	Part82.Locked = true
	Part82.Material = Enum.Material.Glass
	Part82.brickColor = bc("Really black")
	Part83.Parent = Model0
	Part83.Color = color(0.0666667, 0.0666667, 0.0666667)
	Part83.Size = vect3(0.15000000596046448, 2, 0.15000000596046448)
	Part83.BrickColor = bc("Really black")
	Part83.CanCollide = false
	Part83.CustomPhysicalProperties = PhysicalProperties.new(9.99999975e-05, 0, 0, 0, 0)
	Part83.Locked = true
	Part83.Material = Enum.Material.Glass
	Part83.brickColor = bc("Really black")
	CylinderMesh84.Parent = Part83
	Part85.Parent = Model0
	Part85.Color = color(0.0666667, 0.0666667, 0.0666667)
	Part85.Size = vect3(0.25, 1, 0.25)
	Part85.BrickColor = bc("Really black")
	Part85.CanCollide = false
	Part85.CustomPhysicalProperties = PhysicalProperties.new(9.99999975e-05, 0, 0, 0, 0)
	Part85.Locked = true
	Part85.Material = Enum.Material.Glass
	Part85.brickColor = bc("Really black")
	CylinderMesh86.Parent = Part85
	Part87.Parent = Model0
	Part87.Color = color(0.0666667, 0.0666667, 0.0666667)
	Part87.Size = vect3(0.0010000000474974513, 0.10000000149011612, 0.20000000298023224)
	Part87.BrickColor = bc("Really black")
	Part87.CanCollide = false
	Part87.CustomPhysicalProperties = PhysicalProperties.new(9.99999975e-05, 0, 0, 0, 0)
	Part87.Locked = true
	Part87.Material = Enum.Material.Glass
	Part87.brickColor = bc("Really black")
	SpecialMesh88.Parent = Part87
	SpecialMesh88.MeshType = Enum.MeshType.Wedge
	Part89.Name = "Eyezen"
	Part89.Parent = Model0
	Part89.Color = color(1, 0, 0)
	Part89.Size = vect3(0.125, 0.0010000000474974513, 0.125)
	Part89.BrickColor = bc("Really red")
	Part89.CanCollide = false
	Part89.CustomPhysicalProperties = PhysicalProperties.new(9.99999975e-05, 0, 0, 0, 0)
	Part89.Locked = true
	Part89.Material = Enum.Material.Neon
	Part89.brickColor = bc("Really red")
	CylinderMesh90.Parent = Part89
	ParticleEmitter91.Parent = Part89
	ParticleEmitter91.Speed = NumberRange.new(0.20000000298023224, 0.20000000298023224)
	ParticleEmitter91.Rotation = NumberRange.new(-180, 180)
	ParticleEmitter91.Color = ColorSequence.new(color(1, 0, 0),color(0.4, 0, 0))
	ParticleEmitter91.LightEmission = 0.5
	ParticleEmitter91.Texture = "http://www.roblox.com/asset/?id=304437537"
	ParticleEmitter91.Transparency = NumberSequence.new(0.30000001192092896,0)
	ParticleEmitter91.ZOffset = 0.20000000298023224
	ParticleEmitter91.Size = NumberSequence.new(0.10000000149011612,0)
	ParticleEmitter91.Acceleration = vect3(0, 5, 0)
	ParticleEmitter91.Lifetime = NumberRange.new(0.30000001192092896, 0.5)
	ParticleEmitter91.Rate = 150
	ParticleEmitter91.RotSpeed = NumberRange.new(-180, 180)
	ParticleEmitter91.SpreadAngle = vect2(360, 360)
	ParticleEmitter91.VelocitySpread = 360
	Part92.Parent = Model0
	Part92.Color = color(0.0666667, 0.0666667, 0.0666667)
	Part92.Size = vect3(0.0010000000474974513, 0.0010000000474974513, 0.0010000000474974513)
	Part92.BrickColor = bc("Really black")
	Part92.CanCollide = false
	Part92.CustomPhysicalProperties = PhysicalProperties.new(9.99999975e-05, 0, 0, 0, 0)
	Part92.Locked = true
	Part92.Material = Enum.Material.Glass
	Part92.brickColor = bc("Really black")
	SpecialMesh93.Parent = Part92
	SpecialMesh93.MeshId = "http://www.roblox.com/asset/?id=156292343"
	SpecialMesh93.Offset = vect3(0, 0, 0.20000000298023224)
	SpecialMesh93.Scale = vect3(0.800000011920929, 0.800000011920929, 1.5)
	SpecialMesh93.MeshType = Enum.MeshType.FileMesh
	coroutine.resume(coroutine.create(function()
		while Model0 ~= nil do
			task.wait()
			Weld40.C0 = Weld40.C0 * angles(rad(0), rad(0), rad(5))
			Weld41.C0 = Weld41.C0 * angles(rad(0), rad(0), rad(-5))
		end
	end))
	return Model0	
end

function makegun()
	local pistol = new("Part")
	local pistolm = new("SpecialMesh")
	local pistolw = new("Weld")
	pistol.Name = "Handle"
	pistol.Parent = script
	pistol.Size = vect3(0.001, 0.001, 0.001)
	pistol.CanTouch = false
	pistol.CanCollide = false
	pistol.Locked = true
	pistolm.Parent = pistol
	pistolm.MeshId = "rbxassetid://468351345"
	pistolm.Scale = vect3(0.0575, 0.0575, 0.0575)
	pistolm.TextureId = "rbxassetid://11232039"
	pistolm.MeshType = Enum.MeshType.FileMesh
	pistolw.Parent = pistol
	pistolw.C0 = cframe(-1.64999998, -0.150000006, 0, -4.37113883e-08, -1, 4.37113883e-08, -0, -4.37113883e-08, -1, 1, -4.37113883e-08, 1.91068547e-15)
	pistolw.Part0 = pistol
	pistolw.Part1 = la
	sound(3603367478,2.5,1,pistol,0,false)
	return pistol
end

function makeblaudy(victim,part,part2,tima,nocut)
	local toki = true
	if not nocut then
		local hcut = new("Part")
		local hcutw = new("Weld")
		hcut.Parent = part
		hcut.Size = vect3(0.05, 0.5, 0.5)
		hcut.BrickColor = bc("Crimson")
		hcut.Material = Enum.Material.Pebble
		hcut.Shape = Enum.PartType.Cylinder
		hcut.CanTouch = false
		hcut.CanCollide = false
		hcutw.Parent = hcut
		hcutw.Part0 = part
		hcutw.Part1 = hcut
		hcutw.C0 = CFrame.fromEulerAnglesXYZ(0,0,math.pi/2) * cframe((part.Size.y/2),0,0)
	end
	local bpart = new("Part", part)
	bpart.Size = vect3(0.2, 0.2, 0.2)
	bpart.CanTouch = false
	bpart.CanCollide = false
	bpart.Position = part2.Position + vect3(0, 1, 0)
	bpart.Transparency = 1
	local bpartw = new("Weld", part)
	bpartw.Part0 = part
	bpartw.Part1 = bpart
	bpartw.C0 = angles(-1, 0, -0.35) * cframe(0, 1, 0.8)
	spawn(function()
		while toki do
			local blood = new("Part")
			local blc = {"Maroon","Cocoa","Crimson"}
			blood.Parent = workspace
			blood.Name = "Blaud"
			blood.BrickColor = bc(blc[random(#blc)])
			blood.Material = "Glass"
			blood.CanCollide = false
			blood.Locked = true
			blood.CanTouch = true
			blood.Shape = Enum.PartType.Ball
			blood.Size = vect3(random(5)/10,0.45,0.45)
			blood.CFrame = bpart.CFrame
			blood.Velocity = bpart.CFrame.upVector * 36 + vect3(random(-5,5),random(-10,10),random(-5,5))
			blood.Touched:connect(function(toucha)
				if toucha.Parent and not (toucha.Parent:IsA("Tool") or toucha:IsDescendantOf(victim) or toucha.Parent:IsDescendantOf(victim) or toucha.Parent.Parent:FindFirstChildOfClass("Humanoid") or toucha.Parent:FindFirstChildOfClass("Humanoid") or toucha.Name == "Bloodey" or toucha.Name == "ColaSpill" or toucha.Name == "Blaud" or toucha.Name == "HeruSmashed" or toucha.Parent == char or toucha.Parent == victim or toucha.Parent:IsA("Accessory") or toucha.Parent:IsA("Hat")) then
					local pos = vect3(blood.Position.X,(toucha.Position.Y+(toucha.Size.Y/2))+0.02,blood.Position.Z)
					local kol = blood.Color
					blood:Destroy()
					if toucha.Name == "BlaudPuddle" then
						local place = toucha.CFrame
						if toucha.Transparency < 0.2 then
							toucha.Transparency = toucha.Transparency - 0.1
						end
						if toucha.Size.X < 11.5 then
							toucha.Size = toucha.Size+vect3(0.115,0,0.115)
							toucha.CFrame = place
						end
					else
						local bpuddle = new("Part",workspace)
						bpuddle.Size = vect3(1, 0.15, 1)
						bpuddle.Name = "BlaudPuddle"
						bpuddle.Anchored = true
						bpuddle.CanCollide = false
						bpuddle.Transparency = 0
						bpuddle.Material = Enum.Material.Glass
						bpuddle.Color = kol
						bpuddle.BottomSurface = Enum.SurfaceType.Smooth
						bpuddle.TopSurface = Enum.SurfaceType.Smooth
						local bpm = new("SpecialMesh",bpuddle)
						bpm.MeshType = Enum.MeshType.Sphere
						bpm.Offset = vect3(0,-0.05,0)
						bpuddle.CFrame = cframe(pos)
						spawn(function()
							while bpuddle ~= nil do
								if bpuddle.Transparency >= 1 then
									bpuddle:Destroy()
								else
									bpuddle.Transparency = bpuddle.Transparency+0.03
								end
								task.wait(0.1)
							end
						end)
					end
				end
			end)
			debris:AddItem(blood,1)
			task.wait(0.025)
		end
	end)
	spawn(function()
		task.wait(tima)
		toki = false
	end)
end

function sparker(part)
	local sparku = new("ParticleEmitter")
	sparku.Color = ColorSequence.new{[1] = ColorSequenceKeypoint.new(0, color(1, 0, 0)), [2] = ColorSequenceKeypoint.new(1, color(1, 1, 1)), }
	sparku.Enabled = false
	sparku.Lifetime = NumberRange.new(0.5)
	sparku.LightEmission = 1
	sparku.Name = "Spark"
	sparku.Parent = part
	sparku.Rate = 1
	sparku.RotSpeed = NumberRange.new(300)
	sparku.Rotation = NumberRange.new(-180, 180)
	sparku.Size = NumberSequence.new{[1] = NumberSequenceKeypoint.new(0, 10), [2] = NumberSequenceKeypoint.new(1, 0), }
	sparku.Speed = NumberRange.new(0)
	sparku.Texture = "rbxassetid://1053546634"
	sparku.Transparency = NumberSequence.new{[1] = NumberSequenceKeypoint.new(0, 0), [2] = NumberSequenceKeypoint.new(0.5, 0), [3] = NumberSequenceKeypoint.new(1, 1), }
	sparku.ZOffset = 2
	sparku.Color = ColorSequence.new(color(0.1,0.1,0.1), color(1, 1, 1))
	sparku:Emit(1)
	local shockwaveu = new("ParticleEmitter")
	shockwaveu.Enabled = false
	shockwaveu.Lifetime = NumberRange.new(0.3)
	shockwaveu.LightInfluence = 1
	shockwaveu.LockedToPart = true
	shockwaveu.Name = "Shockwave"
	shockwaveu.Parent = part
	shockwaveu.Rate = 5
	shockwaveu.Size = NumberSequence.new{[1] = NumberSequenceKeypoint.new(0, 0), [2] = NumberSequenceKeypoint.new(1, 5), }
	shockwaveu.Speed = NumberRange.new(0)
	shockwaveu.Texture = "rbxassetid://1537450478"
	shockwaveu.Transparency = NumberSequence.new{[1] = NumberSequenceKeypoint.new(0, 0.2), [2] = NumberSequenceKeypoint.new(1, 1), }
	shockwaveu.ZOffset = 0.1
	shockwaveu:Emit(1)
	sound(1613998698,3,1,part,0.3,false)
	spawn(function()
		task.wait(1)
		sparku:Destroy()
		shockwaveu:Destroy()
	end)
end

function makeslam(part,type)
	local gslam = new("Model")
	local Part1 = new("Part")
	local Weld2 = new("Weld")
	local Weld3 = new("Weld")
	local Part4 = new("Part")
	local Weld5 = new("Weld")
	local Weld6 = new("Weld")
	local Part7 = new("Part")
	local Weld8 = new("Weld")
	local Weld9 = new("Weld")
	local Part10 = new("Part")
	local Weld11 = new("Weld")
	local Weld12 = new("Weld")
	local Part13 = new("Part")
	local Weld14 = new("Weld")
	local Weld15 = new("Weld")
	local Part16 = new("Part")
	local Weld17 = new("Weld")
	local Weld18 = new("Weld")
	local Part19 = new("Part")
	local Weld20 = new("Weld")
	local Weld21 = new("Weld")
	local Part22 = new("Part")
	local Weld23 = new("Weld")
	local Weld24 = new("Weld")
	local Part25 = new("Part")
	local Weld26 = new("Weld")
	local Weld27 = new("Weld")
	local Part28 = new("Part")
	local Weld29 = new("Weld")
	local Weld30 = new("Weld")
	local Part31 = new("Part")
	local Weld32 = new("Weld")
	local Weld33 = new("Weld")
	local Part34 = new("Part")
	local Weld35 = new("Weld")
	local Weld36 = new("Weld")
	local Part37 = new("Part")
	local Weld38 = new("Weld")
	local Weld39 = new("Weld")
	local Part40 = new("Part")
	local Weld41 = new("Weld")
	local Weld42 = new("Weld")
	local Part43 = new("Part")
	local Weld44 = new("Weld")
	local Weld45 = new("Weld")
	local Part46 = new("Part")
	local Weld47 = new("Weld")
	local Weld48 = new("Weld")
	local Part49 = new("Part")
	gslam.Name = "ground slam"
	gslam.Parent = workspace
	Part1.Parent = gslam
	Part1.Color = color(0.388235, 0.372549, 0.384314)
	Part1.Size = vect3(4.337409973144531, 3.43999981880188, 4.157356262207031)
	Part1.BottomSurface = Enum.SurfaceType.Smooth
	Part1.BrickColor = bc("Dark stone grey")
	Part1.Material = Enum.Material.Rock
	Part1.TopSurface = Enum.SurfaceType.Smooth
	Part1.brickColor = bc("Dark stone grey")
	Weld2.Name = "Part_Weld"
	Weld2.Parent = Part1
	Weld2.C0 = cframe(53.5815659, 29.839592, 26.7870979, -0.701160312, -0.640303135, 0.313667566, -0.490474582, 0.752447486, 0.439612329, -0.517502367, 0.154393375, -0.841638863)
	Weld2.C1 = cframe(38.3081131, -8.25742245, 56.1477776, -0.495803565, -0.128444865, 0.858884275, 0.0280374289, 0.986119747, 0.163657352, -0.86798197, 0.105223149, -0.4853203)
	Weld2.Part0 = Part1
	Weld2.Part1 = Part4
	Weld2.part1 = Part4
	Weld3.Name = "Part_Weld"
	Weld3.Parent = Part1
	Weld3.C0 = cframe(53.5821304, 29.8395977, 26.7864685, -0.701159954, -0.640305758, 0.313661873, -0.49047637, 0.752443314, 0.43961668, -0.517501295, 0.154397875, -0.841637969)
	Weld3.C1 = cframe(38.3088264, -8.25776958, 56.1474304, -0.495804489, -0.128451854, 0.858884156, 0.0280356389, 0.986120403, 0.163664058, -0.867981374, 0.105225548, -0.48532182)
	Weld3.Part0 = Part1
	Weld3.Part1 = Part4
	Weld3.part1 = Part4
	Part4.Parent = gslam
	Part4.Color = color(0.388235, 0.372549, 0.384314)
	Part4.Size = vect3(4.337409973144531, 3.43999981880188, 4.157356262207031)
	Part4.BottomSurface = Enum.SurfaceType.Smooth
	Part4.BrickColor = bc("Dark stone grey")
	Part4.Material = Enum.Material.Rock
	Part4.TopSurface = Enum.SurfaceType.Smooth
	Part4.brickColor = bc("Dark stone grey")
	Weld5.Name = "Part_Weld"
	Weld5.Parent = Part4
	Weld5.C0 = cframe(38.3081131, -8.25742245, 56.1477776, -0.495803565, -0.128444865, 0.858884275, 0.0280374289, 0.986119747, 0.163657352, -0.86798197, 0.105223149, -0.4853203)
	Weld5.C1 = cframe(47.7773018, 40.2545052, -27.4213181, -0.812917471, 0.186616227, -0.551670194, -0.50076139, 0.25963515, 0.825729549, 0.297326803, 0.947505236, -0.117612213)
	Weld5.Part0 = Part4
	Weld5.Part1 = Part7
	Weld5.part1 = Part7
	Weld6.Name = "Part_Weld"
	Weld6.Parent = Part4
	Weld6.C0 = cframe(38.3088303, -8.25779819, 56.1473999, -0.495804429, -0.128451973, 0.85888505, 0.0280356687, 0.986121476, 0.163664237, -0.867981315, 0.105225727, -0.485322356)
	Weld6.C1 = cframe(47.7767639, 40.2550964, -27.4219303, -0.812917054, 0.18661873, -0.551669657, -0.500763059, 0.25962773, 0.825729847, 0.297325432, 0.947505593, -0.117604017)
	Weld6.Part0 = Part4
	Weld6.Part1 = Part7
	Weld6.part1 = Part7
	Part7.Parent = gslam
	Part7.Color = color(0.388235, 0.372549, 0.384314)
	Part7.Size = vect3(4.337409973144531, 3.43999981880188, 4.157356262207031)
	Part7.BottomSurface = Enum.SurfaceType.Smooth
	Part7.BrickColor = bc("Dark stone grey")
	Part7.Material = Enum.Material.Rock
	Part7.TopSurface = Enum.SurfaceType.Smooth
	Part7.brickColor = bc("Dark stone grey")
	Weld8.Name = "Part_Weld"
	Weld8.Parent = Part7
	Weld8.C0 = cframe(47.7773018, 40.2545052, -27.4213181, -0.812917471, 0.186616227, -0.551670194, -0.50076139, 0.25963515, 0.825729549, 0.297326803, 0.947505236, -0.117612213)
	Weld8.C1 = cframe(25.3829556, 61.1147652, -12.6714268, -0.397101879, -0.735369921, -0.549129486, -0.91777426, 0.317588449, 0.238387644, -0.000905796885, 0.598641455, -0.801018357)
	Weld8.Part0 = Part7
	Weld8.Part1 = Part10
	Weld8.part1 = Part10
	Weld9.Name = "Part_Weld"
	Weld9.Parent = Part7
	Weld9.C0 = cframe(47.7766762, 40.2551689, -27.4219761, -0.812917173, 0.186619043, -0.551669419, -0.500762999, 0.259626687, 0.825730324, 0.297325075, 0.947505832, -0.117603086)
	Weld9.C1 = cframe(25.3828335, 61.1148682, -12.6726475, -0.397099346, -0.735364735, -0.5491364, -0.917775273, 0.317583919, 0.238388643, -0.000905722613, 0.598647773, -0.80101186)
	Weld9.Part0 = Part7
	Weld9.Part1 = Part10
	Weld9.part1 = Part10
	Part10.Parent = gslam
	Part10.Color = color(0.388235, 0.372549, 0.384314)
	Part10.Size = vect3(4.337409973144531, 3.43999981880188, 4.157356262207031)
	Part10.BottomSurface = Enum.SurfaceType.Smooth
	Part10.BrickColor = bc("Dark stone grey")
	Part10.Material = Enum.Material.Rock
	Part10.TopSurface = Enum.SurfaceType.Smooth
	Part10.brickColor = bc("Dark stone grey")
	Weld11.Name = "Part_Weld"
	Weld11.Parent = Part10
	Weld11.C0 = cframe(25.3829556, 61.1147652, -12.6714268, -0.397101879, -0.735369921, -0.549129486, -0.91777426, 0.317588449, 0.238387644, -0.000905796885, 0.598641455, -0.801018357)
	Weld11.C1 = cframe(-8.70136356, 3.76271439, -74.3933334, -0.112779357, 0.350098222, -0.929900169, -0.0720839649, 0.930522144, 0.359074354, 0.991001904, 0.107527047, -0.079707399)
	Weld11.Part0 = Part10
	Weld11.Part1 = Part13
	Weld11.part1 = Part13
	Weld12.Name = "Part_Weld"
	Weld12.Parent = Part10
	Weld12.C0 = cframe(25.3828392, 61.1148911, -12.6726589, -0.397099316, -0.735364735, -0.5491364, -0.917775214, 0.317583889, 0.238388658, -0.000905752298, 0.598647714, -0.80101192)
	Weld12.C1 = cframe(-8.70273972, 3.76253796, -74.3936005, -0.11277844, 0.35010615, -0.929896116, -0.0720865801, 0.930517673, 0.359082878, 0.991001844, 0.107529834, -0.0797043666)
	Weld12.Part0 = Part10
	Weld12.Part1 = Part13
	Weld12.part1 = Part13
	Part13.Parent = gslam
	Part13.Color = color(0.388235, 0.372549, 0.384314)
	Part13.Size = vect3(4.337409973144531, 3.43999981880188, 4.157356262207031)
	Part13.BottomSurface = Enum.SurfaceType.Smooth
	Part13.BrickColor = bc("Dark stone grey")
	Part13.Material = Enum.Material.Rock
	Part13.TopSurface = Enum.SurfaceType.Smooth
	Part13.brickColor = bc("Dark stone grey")
	Weld14.Name = "Part_Weld"
	Weld14.Parent = Part13
	Weld14.C0 = cframe(-8.70136356, 3.76271439, -74.3933334, -0.112779357, 0.350098222, -0.929900169, -0.0720839649, 0.930522144, 0.359074354, 0.991001904, 0.107527047, -0.079707399)
	Weld14.C1 = cframe(-10.7406521, -3.46340179, 71.7326736, 0.140469015, 0.412357777, 0.900128245, -0.0606422424, 0.911019325, -0.407883674, -0.988226175, 0.00270922482, 0.152976334)
	Weld14.Part0 = Part13
	Weld14.Part1 = Part16
	Weld14.part1 = Part16
	Weld15.Name = "Part_Weld"
	Weld15.Parent = Part13
	Weld15.C0 = cframe(-8.70280838, 3.7625494, -74.3936081, -0.112778455, 0.35010618, -0.929896116, -0.072086595, 0.930517673, 0.359082907, 0.991001904, 0.107529841, -0.0797043741)
	Weld15.C1 = cframe(-10.739913, -3.46449089, 71.7329407, 0.140466377, 0.412348956, 0.900132, -0.0606434569, 0.911022067, -0.407874167, -0.988226473, 0.00270548579, 0.152974233)
	Weld15.Part0 = Part13
	Weld15.Part1 = Part16
	Weld15.part1 = Part16
	Part16.Parent = gslam
	Part16.Color = color(0.388235, 0.372549, 0.384314)
	Part16.Size = vect3(4.337409973144531, 3.43999981880188, 4.157356262207031)
	Part16.BottomSurface = Enum.SurfaceType.Smooth
	Part16.BrickColor = bc("Dark stone grey")
	Part16.Material = Enum.Material.Rock
	Part16.TopSurface = Enum.SurfaceType.Smooth
	Part16.brickColor = bc("Dark stone grey")
	Weld17.Name = "Part_Weld"
	Weld17.Parent = Part16
	Weld17.C0 = cframe(-10.7406521, -3.46340179, 71.7326736, 0.140469015, 0.412357777, 0.900128245, -0.0606422424, 0.911019325, -0.407883674, -0.988226175, 0.00270922482, 0.152976334)
	Weld17.C1 = cframe(-10.0431032, -3.05733991, 69.7450485, 0.140469044, 0.412357777, 0.900128245, -0.0606421269, 0.911019087, -0.407883704, -0.988226295, 0.00270932913, 0.152976274)
	Weld17.Part0 = Part16
	Weld17.Part1 = Part19
	Weld17.part1 = Part19
	Weld18.Name = "Part_Weld"
	Weld18.Parent = Part16
	Weld18.C0 = cframe(-10.7400742, -3.46438932, 71.7329254, 0.140466392, 0.412348926, 0.90013206, -0.0606434643, 0.911022007, -0.407874167, -0.988226533, 0.00270549161, 0.152974233)
	Weld18.C1 = cframe(-10.0425014, -3.05835247, 69.7453232, 0.140466228, 0.412348479, 0.900132239, -0.0606433786, 0.911022246, -0.40787369, -0.988226473, 0.002705422, 0.152974069)
	Weld18.Part0 = Part16
	Weld18.Part1 = Part19
	Weld18.part1 = Part19
	Part19.Parent = gslam
	Part19.Color = color(0.388235, 0.372549, 0.384314)
	Part19.Size = vect3(4.337409973144531, 3.43999981880188, 4.157356262207031)
	Part19.BottomSurface = Enum.SurfaceType.Smooth
	Part19.BrickColor = bc("Dark stone grey")
	Part19.Material = Enum.Material.Rock
	Part19.TopSurface = Enum.SurfaceType.Smooth
	Part19.brickColor = bc("Dark stone grey")
	Weld20.Name = "Part_Weld"
	Weld20.Parent = Part19
	Weld20.C0 = cframe(-10.0431032, -3.05733991, 69.7450485, 0.140469044, 0.412357777, 0.900128245, -0.0606421269, 0.911019087, -0.407883704, -0.988226295, 0.00270932913, 0.152976274)
	Weld20.C1 = cframe(-2.80336332, -45.5989571, -54.6516647, -0.128115192, 0.934441268, -0.332277507, 0.75289458, 0.309719026, 0.580710292, 0.645551324, -0.175771967, -0.743215501)
	Weld20.Part0 = Part19
	Weld20.Part1 = Part22
	Weld20.part1 = Part22
	Weld21.Name = "Part_Weld"
	Weld21.Parent = Part19
	Weld21.C0 = cframe(-10.0424986, -3.05834532, 69.7453384, 0.140466228, 0.412348539, 0.900132179, -0.0606433824, 0.911022246, -0.40787375, -0.988226533, 0.00270542735, 0.152974054)
	Weld21.C1 = cframe(-2.80444431, -45.5985718, -54.6525879, -0.128116682, 0.934443474, -0.332267165, 0.752892613, 0.309714377, 0.580714822, 0.645553172, -0.175762221, -0.743215144)
	Weld21.Part0 = Part19
	Weld21.Part1 = Part22
	Weld21.part1 = Part22
	Part22.Parent = gslam
	Part22.Color = color(0.388235, 0.372549, 0.384314)
	Part22.Size = vect3(4.337409973144531, 3.43999981880188, 4.157356262207031)
	Part22.BottomSurface = Enum.SurfaceType.Smooth
	Part22.BrickColor = bc("Dark stone grey")
	Part22.Material = Enum.Material.Rock
	Part22.TopSurface = Enum.SurfaceType.Smooth
	Part22.brickColor = bc("Dark stone grey")
	Weld23.Name = "Part_Weld"
	Weld23.Parent = Part22
	Weld23.C0 = cframe(-2.80336332, -45.5989571, -54.6516647, -0.128115192, 0.934441268, -0.332277507, 0.75289458, 0.309719026, 0.580710292, 0.645551324, -0.175771967, -0.743215501)
	Weld23.C1 = cframe(-14.1082811, 14.1082125, -66.5555038, -0.0211034343, 0.553580761, -0.832529604, -0.184131607, 0.816318393, 0.547468364, 0.982675016, 0.164848372, 0.0847044364)
	Weld23.Part0 = Part22
	Weld23.Part1 = Part25
	Weld23.part1 = Part25
	Weld24.Name = "Part_Weld"
	Weld24.Parent = Part22
	Weld24.C0 = cframe(-2.80453777, -45.5984802, -54.6527252, -0.128116667, 0.934443474, -0.332267165, 0.752892554, 0.309714377, 0.580714941, 0.645553172, -0.175762206, -0.743215144)
	Weld24.C1 = cframe(-14.1099873, 14.1084442, -66.5556946, -0.0211028699, 0.553589284, -0.832522392, -0.18413493, 0.816310883, 0.547476768, 0.98267442, 0.164849788, 0.0847086087)
	Weld24.Part0 = Part22
	Weld24.Part1 = Part25
	Weld24.part1 = Part25
	Part25.Parent = gslam
	Part25.Color = color(0.388235, 0.372549, 0.384314)
	Part25.Size = vect3(4.337409973144531, 3.43999981880188, 4.157356262207031)
	Part25.BottomSurface = Enum.SurfaceType.Smooth
	Part25.BrickColor = bc("Dark stone grey")
	Part25.Material = Enum.Material.Rock
	Part25.TopSurface = Enum.SurfaceType.Smooth
	Part25.brickColor = bc("Dark stone grey")
	Weld26.Name = "Part_Weld"
	Weld26.Parent = Part25
	Weld26.C0 = cframe(-14.1082811, 14.1082125, -66.5555038, -0.0211034343, 0.553580761, -0.832529604, -0.184131607, 0.816318393, 0.547468364, 0.982675016, 0.164848372, 0.0847044364)
	Weld26.C1 = cframe(-3.37253857, 47.6192093, -60.9850121, -0.133370429, 0.843549192, -0.520230353, -0.530488729, 0.382626384, 0.756425798, 0.837134421, 0.376860917, 0.396462053)
	Weld26.Part0 = Part25
	Weld26.Part1 = Part28
	Weld26.part1 = Part28
	Weld27.Name = "Part_Weld"
	Weld27.Parent = Part25
	Weld27.C0 = cframe(-14.109972, 14.1084347, -66.555687, -0.0211029351, 0.553589284, -0.832522452, -0.184134915, 0.816310883, 0.547476888, 0.982674479, 0.164849803, 0.0847085565)
	Weld27.C1 = cframe(-3.37400627, 47.620182, -60.9848442, -0.133371428, 0.843553841, -0.52022028, -0.530491471, 0.382615805, 0.75642848, 0.837132514, 0.376858354, 0.396468103)
	Weld27.Part0 = Part25
	Weld27.Part1 = Part28
	Weld27.part1 = Part28
	Part28.Parent = gslam
	Part28.Color = color(0.388235, 0.372549, 0.384314)
	Part28.Size = vect3(4.337409973144531, 3.43999981880188, 4.157356262207031)
	Part28.BottomSurface = Enum.SurfaceType.Smooth
	Part28.BrickColor = bc("Dark stone grey")
	Part28.Material = Enum.Material.Rock
	Part28.TopSurface = Enum.SurfaceType.Smooth
	Part28.brickColor = bc("Dark stone grey")
	Weld29.Name = "Part_Weld"
	Weld29.Parent = Part28
	Weld29.C0 = cframe(-3.37253857, 47.6192093, -60.9850121, -0.133370429, 0.843549192, -0.520230353, -0.530488729, 0.382626384, 0.756425798, 0.837134421, 0.376860917, 0.396462053)
	Weld29.C1 = cframe(-61.6545677, 38.2475471, -33.9768753, 0.665077567, 0.615445435, -0.422965914, -0.514667749, 0.788151443, 0.337543577, 0.541099727, -0.00680623204, 0.840931594)
	Weld29.Part0 = Part28
	Weld29.Part1 = Part31
	Weld29.part1 = Part31
	Weld30.Name = "Part_Weld"
	Weld30.Parent = Part28
	Weld30.C0 = cframe(-3.37400103, 47.6201897, -60.9848557, -0.133371443, 0.843553782, -0.52022028, -0.530491531, 0.382615775, 0.756428421, 0.837132454, 0.376858443, 0.396468163)
	Weld30.C1 = cframe(-61.6558571, 38.2475395, -33.9756622, 0.665076792, 0.615451694, -0.422956377, -0.514670849, 0.788145125, 0.337551743, 0.54109782, -0.00681449054, 0.840932012)
	Weld30.Part0 = Part28
	Weld30.Part1 = Part31
	Weld30.part1 = Part31
	Part31.Parent = gslam
	Part31.Color = color(0.388235, 0.372549, 0.384314)
	Part31.Size = vect3(4.337409973144531, 3.43999981880188, 4.157356262207031)
	Part31.BottomSurface = Enum.SurfaceType.Smooth
	Part31.BrickColor = bc("Dark stone grey")
	Part31.Material = Enum.Material.Rock
	Part31.TopSurface = Enum.SurfaceType.Smooth
	Part31.brickColor = bc("Dark stone grey")
	Weld32.Name = "Part_Weld"
	Weld32.Parent = Part31
	Weld32.C0 = cframe(-61.6545677, 38.2475471, -33.9768753, 0.665077567, 0.615445435, -0.422965914, -0.514667749, 0.788151443, 0.337543577, 0.541099727, -0.00680623204, 0.840931594)
	Weld32.C1 = cframe(-2.67500019, 48.02528, -62.9726334, -0.133370355, 0.843549192, -0.520230353, -0.530488729, 0.382626325, 0.756425679, 0.83713448, 0.376860976, 0.396462023)
	Weld32.Part0 = Part31
	Weld32.Part1 = Part34
	Weld32.part1 = Part34
	Weld33.Name = "Part_Weld"
	Weld33.Parent = Part31
	Weld33.C0 = cframe(-61.6558304, 38.2475281, -33.975708, 0.665076792, 0.615451694, -0.422956496, -0.514670789, 0.788145185, 0.337551743, 0.541097879, -0.00681445515, 0.840932071)
	Weld33.C1 = cframe(-2.67651701, 48.0262833, -62.9724884, -0.133371636, 0.843554199, -0.520219564, -0.53049159, 0.38261503, 0.756428719, 0.837132454, 0.376858234, 0.396468371)
	Weld33.Part0 = Part31
	Weld33.Part1 = Part34
	Weld33.part1 = Part34
	Part34.Parent = gslam
	Part34.Color = color(0.388235, 0.372549, 0.384314)
	Part34.Size = vect3(4.337409973144531, 3.43999981880188, 4.157356262207031)
	Part34.BottomSurface = Enum.SurfaceType.Smooth
	Part34.BrickColor = bc("Dark stone grey")
	Part34.Material = Enum.Material.Rock
	Part34.TopSurface = Enum.SurfaceType.Smooth
	Part34.brickColor = bc("Dark stone grey")
	Weld35.Name = "Part_Weld"
	Weld35.Parent = Part34
	Weld35.C0 = cframe(-2.67500019, 48.02528, -62.9726334, -0.133370355, 0.843549192, -0.520230353, -0.530488729, 0.382626325, 0.756425679, 0.83713448, 0.376860976, 0.396462023)
	Weld35.C1 = cframe(-32.4686508, 22.6949959, 64.7267227, 0.469698787, -0.137701601, 0.87202245, -0.382608414, 0.858425856, 0.341639489, -0.795609176, -0.494110882, 0.350515962)
	Weld35.Part0 = Part34
	Weld35.Part1 = Part37
	Weld35.part1 = Part37
	Weld36.Name = "Part_Weld"
	Weld36.Parent = Part34
	Weld36.C0 = cframe(-2.67654133, 48.0263214, -62.9724998, -0.133371621, 0.843554199, -0.520219564, -0.53049159, 0.38261506, 0.756428778, 0.837132514, 0.376858205, 0.396468371)
	Weld36.C1 = cframe(-32.4673424, 22.6948547, 64.7278671, 0.469697207, -0.137711108, 0.872020781, -0.382611722, 0.858419418, 0.341649622, -0.795608461, -0.49411726, 0.350507319)
	Weld36.Part0 = Part34
	Weld36.Part1 = Part37
	Weld36.part1 = Part37
	Part37.Parent = gslam
	Part37.Color = color(0.388235, 0.372549, 0.384314)
	Part37.Size = vect3(4.337409973144531, 3.43999981880188, 4.157356262207031)
	Part37.BottomSurface = Enum.SurfaceType.Smooth
	Part37.BrickColor = bc("Dark stone grey")
	Part37.Material = Enum.Material.Rock
	Part37.TopSurface = Enum.SurfaceType.Smooth
	Part37.brickColor = bc("Dark stone grey")
	Weld38.Name = "Part_Weld"
	Weld38.Parent = Part37
	Weld38.C0 = cframe(-32.4686508, 22.6949959, 64.7267227, 0.469698787, -0.137701601, 0.87202245, -0.382608414, 0.858425856, 0.341639489, -0.795609176, -0.494110882, 0.350515962)
	Weld38.C1 = cframe(-65.7326431, 45.2548218, 9.69579029, 0.733941317, 0.329433858, -0.593973398, -0.659786403, 0.138142705, -0.738647103, -0.161282048, 0.934019387, 0.318744123)
	Weld38.Part0 = Part37
	Weld38.Part1 = Part40
	Weld38.part1 = Part40
	Weld39.Name = "Part_Weld"
	Weld39.Parent = Part37
	Weld39.C0 = cframe(-32.467495, 22.6948185, 64.7278214, 0.469697237, -0.137711123, 0.872020781, -0.382611722, 0.858419478, 0.341649592, -0.795608461, -0.49411726, 0.350507289)
	Weld39.C1 = cframe(-65.7339935, 45.253788, 9.69550037, 0.733941734, 0.329443663, -0.593966722, -0.659785271, 0.138150245, -0.73864603, -0.161285624, 0.934013665, 0.318756253)
	Weld39.Part0 = Part37
	Weld39.Part1 = Part40
	Weld39.part1 = Part40
	Part40.Parent = gslam
	Part40.Color = color(0.388235, 0.372549, 0.384314)
	Part40.Size = vect3(4.337409973144531, 3.43999981880188, 4.157356262207031)
	Part40.BottomSurface = Enum.SurfaceType.Smooth
	Part40.BrickColor = bc("Dark stone grey")
	Part40.Material = Enum.Material.Rock
	Part40.TopSurface = Enum.SurfaceType.Smooth
	Part40.brickColor = bc("Dark stone grey")
	Weld41.Name = "Part_Weld"
	Weld41.Parent = Part40
	Weld41.C0 = cframe(-65.7326431, 45.2548218, 9.69579029, 0.733941317, 0.329433858, -0.593973398, -0.659786403, 0.138142705, -0.738647103, -0.161282048, 0.934019387, 0.318744123)
	Weld41.C1 = cframe(-64.3841934, 46.5249863, 8.26919937, 0.733941317, 0.329433858, -0.593973398, -0.659786463, 0.138142586, -0.738646984, -0.161282122, 0.934019446, 0.318744183)
	Weld41.Part0 = Part40
	Weld41.Part1 = Part43
	Weld41.part1 = Part43
	Weld42.Name = "Part_Weld"
	Weld42.Parent = Part40
	Weld42.C0 = cframe(-65.7340546, 45.2537308, 9.69555092, 0.733941674, 0.329443663, -0.593966782, -0.659785271, 0.13815026, -0.738645911, -0.161285609, 0.934013605, 0.318756282)
	Weld42.C1 = cframe(-64.3855972, 46.52388, 8.2689333, 0.733941674, 0.329444051, -0.593966603, -0.65978533, 0.138150394, -0.738645971, -0.161285788, 0.934013486, 0.31875664)
	Weld42.Part0 = Part40
	Weld42.Part1 = Part43
	Weld42.part1 = Part43
	Part43.Parent = gslam
	Part43.Color = color(0.388235, 0.372549, 0.384314)
	Part43.Size = vect3(4.337409973144531, 3.43999981880188, 4.157356262207031)
	Part43.BottomSurface = Enum.SurfaceType.Smooth
	Part43.BrickColor = bc("Dark stone grey")
	Part43.Material = Enum.Material.Rock
	Part43.TopSurface = Enum.SurfaceType.Smooth
	Part43.brickColor = bc("Dark stone grey")
	Weld44.Name = "Part_Weld"
	Weld44.Parent = Part43
	Weld44.C0 = cframe(-64.3841934, 46.5249863, 8.26919937, 0.733941317, 0.329433858, -0.593973398, -0.659786463, 0.138142586, -0.738646984, -0.161282122, 0.934019446, 0.318744183)
	Weld44.C1 = cframe(-67.0688248, 25.787941, 31.9291496, 0.840217352, 0.385231972, 0.381616652, -0.414156199, 0.910180449, -0.0069412142, -0.350013316, -0.152217239, 0.924295664)
	Weld44.Part0 = Part43
	Weld44.Part1 = Part46
	Weld44.part1 = Part46
	Weld45.Name = "Part_Weld"
	Weld45.Parent = Part43
	Weld45.C0 = cframe(-64.3855972, 46.5239105, 8.26891708, 0.733941674, 0.329444051, -0.593966603, -0.659785271, 0.138150319, -0.73864603, -0.161285847, 0.934013486, 0.31875658)
	Weld45.C1 = cframe(-67.0687943, 25.7872353, 31.9307861, 0.840215206, 0.38522923, 0.381623983, -0.414159268, 0.910178125, -0.00692900177, -0.350015044, -0.152231246, 0.92429173)
	Weld45.Part0 = Part43
	Weld45.Part1 = Part46
	Weld45.part1 = Part46
	Part46.Parent = gslam
	Part46.Color = color(0.388235, 0.372549, 0.384314)
	Part46.Size = vect3(4.337409973144531, 3.43999981880188, 4.157356262207031)
	Part46.BottomSurface = Enum.SurfaceType.Smooth
	Part46.BrickColor = bc("Dark stone grey")
	Part46.Material = Enum.Material.Rock
	Part46.TopSurface = Enum.SurfaceType.Smooth
	Part46.brickColor = bc("Dark stone grey")
	Weld47.Name = "Part_Weld"
	Weld47.Parent = Part46
	Weld47.C0 = cframe(-67.0688248, 25.787941, 31.9291496, 0.840217352, 0.385231972, 0.381616652, -0.414156199, 0.910180449, -0.0069412142, -0.350013316, -0.152217239, 0.924295664)
	Weld47.C1 = cframe(-73.0836639, -6.5, 8.32854843, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	Weld47.Part0 = Part46
	Weld47.Part1 = Part49
	Weld47.part1 = Part49
	Weld48.Name = "Part_Weld"
	Weld48.Parent = Part46
	Weld48.C0 = cframe(-67.0688171, 25.7872391, 31.9307499, 0.840215206, 0.38522917, 0.381623983, -0.414159238, 0.910178065, -0.00692900829, -0.350015044, -0.152231246, 0.92429167)
	Weld48.C1 = cframe(-73.0839081, -6.5008812, 8.3301363, 1, 3.54643794e-06, 2.53324788e-06, -3.54647477e-06, 1, 1.45433833e-05, -2.53319627e-06, -1.45433924e-05, 1)
	Weld48.Part0 = Part46
	Weld48.Part1 = Part49
	Weld48.part1 = Part49
	Part49.Name = "Posit"
	Part49.Parent = gslam
	Part49.Transparency = 1
	Part49.Size = vect3(1, 1, 1)
	Part49.CanCollide = false
	Part49.CanTouch = false
	Part49.Anchored = true
	Part49.Locked = true
	Part49.BottomSurface = Enum.SurfaceType.Smooth
	Part49.TopSurface = Enum.SurfaceType.Smooth
	if type == 1 then
		Part49.CFrame = part.CFrame * cframe(0,-1.5,0) * angles(rad(0),rad(180),rad(-15))
	else
		Part49.CFrame = part.CFrame * cframe(0,-1.5,0) * angles(rad(0),rad(0),rad(15))
	end
	spawn(function()
		task.wait(10)
		for i,v in pairs(gslam:GetChildren()) do
			if v:IsA("BasePart") then
				local tw = tweens:Create(v, TweenInfo.new(3), {Transparency = 1})
				tw:Play()
				tw.Completed:Connect(function() v:Destroy() end)
			end
		end
		debris:AddItem(gslam,4.5)
	end)
end

function destruction(v,part)
	spawn(function()
		for i = 0,.5,0.1 do
			sound2(444667824,2,0.6 - i,part,0,false)
			task.wait(0.5)
		end
	end)
	spawn(function()
		for i = 1,20 do
			local cutpl = new("Part")
			local cutplm = new("SpecialMesh")
			cutpl.Name = "CutWave"
			cutpl.Parent = script
			cutpl.Transparency = 0.25
			cutpl.Size = vect3(1,1,1)
			cutpl.Anchored = true
			cutpl.BottomSurface = Enum.SurfaceType.Smooth
			cutpl.BrickColor = bc("Institutional white")
			cutpl.CanCollide = false
			cutpl.CanTouch = false
			cutpl.Locked = true
			cutpl.TopSurface = Enum.SurfaceType.Smooth
			cutpl.Material = "Neon"
			cutpl.CFrame = part.CFrame * CFrame.fromEulerAnglesXYZ((random(-10,10)/20),0,random(-10,10)/12)
			cutplm.Parent = cutpl
			cutplm.MeshType = Enum.MeshType.Sphere
			local tween = tweens:Create(cutpl,TweenInfo.new(5,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{CFrame = cutpl.CFrame * angles(0,rad(180),0),Size = vect3(1.15,75,1.15),Transparency = 1})
			tween:Play()
			tween.Completed:Connect(function() cutpl:Destroy()end)
			task.wait()
		end
	end)
	for i,v in pairs(v:GetDescendants()) do
		if v:IsA("BallSocketConstraint") then
			v:Destroy()
		end
	end
	for i,v in pairs(v:GetDescendants()) do
		if v:IsA("Sound") then
			v:Stop()
		end
	end
	v:BreakJoints()
	for _, ve in pairs(v:GetDescendants()) do
		if ve:IsA("BasePart") then
			ve:BreakJoints()
			ve.CanCollide = false
			local bv = new("BodyPosition")
			bv.Position = ve.Position + vect3(random(-5,5),random(-5,5),random(-5,5))
			bv.Parent = ve
			ve.RotVelocity=vect3(random(-1,1),random(-1,1),0)
			local tw = tweens:Create(ve, TweenInfo.new(5), {Transparency = 1})
			tw:Play()
			tw.Completed:Connect(function() ve:Destroy() end)
		end
	end
	for _, vc in pairs(v:GetDescendants()) do
		if vc:IsA("Decal") then
			local tw = tweens:Create(vc, TweenInfo.new(5), {Transparency = 1})
			tw:Play()
			tw.Completed:Connect(function() vc:Destroy() end)
		end
	end
end

function blackwound()
	chatter("Blackwound!")
	if game.PlaceId == 11510416200 or game.PlaceId == 126783576555525 or game.PlaceId == 89201052571047 or game.PlaceId == 79868761121850 then
		local randoml = random(0,2)
		if not dresst then
			if voices then
				if randoml == 0 then
					sound(126033520355656,4.5,1.2,head,0,false)
				elseif randoml == 1 then
					sound(126094484790419,4.5,1.2,head,23.73,false,true,1.069)
				else
					sound(126094484790419,4.5,1.2,head,36.78,false,true,1.443)
				end
			end
		else
			if voices then
				if randoml == 0 then
					sound(126033520355656,4.5,1.6,head,0,false)
				elseif randoml == 1 then
					sound(126094484790419,4.5,1.6,head,23.73,false,true,0.802)
				else
					sound(126094484790419,4.5,1.6,head,36.78,false,true,1.082)
				end
			end
		end
	else
		if not dresst then
			if voices then
				sound(566988626,3,1.25,head,0,false)
			end
		else
			if voices then
				sound(566988626,3,1.45,head,0,false)
			end
		end
	end
	local dashu = new("Part")
	local dashum = new("SpecialMesh")
	dashu.Parent = script
	dashu.Size = vect3(1, 1, 1)
	dashu.BottomSurface = Enum.SurfaceType.Smooth
	dashu.BrickColor = bc("Institutional white")
	dashu.Material = Enum.Material.Neon
	dashu.TopSurface = Enum.SurfaceType.Smooth
	dashu.CanCollide = false
	dashu.CanTouch = false
	dashu.Anchored = true
	dashu.Locked = true
	dashu.CFrame = root.CFrame * cframe(0,0,25)
	dashum.Parent = dashu
	dashum.Scale = vect3(1, 1, 50)
	dashum.MeshType = Enum.MeshType.Sphere
	spawn(function()
		local tween = tweens:Create(dashu, TweenInfo.new(0.5), {Transparency = 1})
		tween:Play()
		tween.Completed:Connect(function()
			dashu:Destroy()
		end)
		tweens:Create(dashum, TweenInfo.new(0.5), {Scale = vect3(0.01, 0.01, 50)}):Play()
	end)
	spawn(function()
		for i = 1,2 do
			local dash = new("Part")
			local dashp = new("ParticleEmitter")
			dash.Name = "Dust Devil"
			dash.Parent = root
			dash.CanCollide = false
			dash.CanTouch = false
			dash.Anchored = true
			dash.Locked = true
			dash.Transparency = 1
			dash.Size = vect3(0.001,0.001,0.001)
			dashp.Name = "Debris"
			dashp.Parent = dash
			dashp.Speed = NumberRange.new(22, 22)
			dashp.Rotation = NumberRange.new(1, 360)
			dashp.Color = ColorSequence.new(color(1, 0.941176, 0.737255),color(1, 0.941176, 0.737255))
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
			if i == 2 then
				dash.CFrame = root.CFrame * cframe(0,-2.5,25)
			else
				dash.CFrame = root.CFrame * cframe(0,-2.5,12.5)
			end
			spawn(function()
				task.wait(0.5)
				dashp.Enabled = false
				debris:AddItem(dash,2)
			end)
			task.wait()
		end
	end)
	local dashc = new("Part")
	local dashcm = new("SpecialMesh")
	dashc.Parent = script
	dashc.Size = vect3(0.001,0.001,0.001)
	dashc.CanTouch = false
	dashc.BrickColor = bc("Institutional white")
	dashc.Anchored = true
	dashc.CanCollide = false
	dashc.Locked = true
	dashcm.Parent = dashc
	dashcm.MeshId = "rbxassetid://3454554153"
	dashcm.MeshType = Enum.MeshType.FileMesh
	dashcm.Scale = vect3(0.25,0.25,0.25)
	dashc.CFrame = root.CFrame * cframe(0, 0, 47.5) * angles(rad(90),rad(90),0)
	spawn(function()
		local tween = tweens:Create(dashc, TweenInfo.new(0.75), {CFrame = dashc.CFrame * cframe(0,15,0), Transparency = 1})
		tween:Play()
		tween.Completed:Connect(function()
			dashc:Destroy()
		end)
		tweens:Create(dashcm, TweenInfo.new(0.75), {Scale = vect3(4.5,4.5,4.5)}):Play()
	end)
end

local moves = {
	["dash"] = function()
		--Dash
		if not (attack or guarding or hurt or hum.Sit == true) then
			keycombo = ""
			if sitting then 
				sitting = false
				attack = true
			end
			if lying then
				lying = false
				attack = true
			end
			hum.WalkSpeed = 0
			hum.JumpPower = 0
			hum.JumpHeight = 0
			attack = true
			anim = "dash"
			sound(18950367823,3.5,1,torso,0,false)
			local dash = new("BodyVelocity")
			dash.Parent = root
			dash.MaxForce = vect3(math.huge,math.huge,math.huge)
			if not holdings then
				frame = 1
				dash.Velocity = root.CFrame.lookVector * 100
			else
				frame = 2
				dash.Velocity = root.CFrame.lookVector * -100
			end
			local effect = new("ParticleEmitter")
			effect.Parent = torso
			effect.Rotation = NumberRange.new(0, 300)
			effect.Color = ColorSequence.new(color(1, 1, 1),color(0.427451, 0.427451, 0.427451))
			effect.LightInfluence = 1
			effect.Texture = "rbxassetid://7731347137"
			effect.Transparency = NumberSequence.new(0.5812499523162842,0.925000011920929,1)
			effect.Size = NumberSequence.new(1.5,0)
			effect.Acceleration = vect3(0, 0.10000000149011612, 0)
			effect.EmissionDirection = Enum.NormalId.Front
			effect.Lifetime = NumberRange.new(2, 3)
			effect.Rate = 100
			effect.RotSpeed = NumberRange.new(10, 13)
			effect.SpreadAngle = vect2(0, 360)
			effect.VelocityInheritance = 0.5
			task.wait(0.4)
			effect.Enabled = false
			debris:AddItem(effect,2.5)
			dash:Destroy()
			if not ducking then
				hum.WalkSpeed = ogws
			end
			hum.JumpPower = ogjp
			hum.JumpHeight = ogjh
			attack = false	
		end
	end,
	["run"] = function()
		--Run
		if not (attack or guarding or hurt or hum.Sit == true or sitting or lying) then
			keycombo = ""
			attack = true
			hum.WalkSpeed = 115
			hum.JumpPower = 0
			hum.JumpHeight = 0
			attack = true
			anim = "run"
			local snd = new("Sound")
			snd.Name = "RunningFootsteps"
			snd.SoundId = "rbxassetid://142665235"
			snd.Volume = 4.5
			snd.Looped = true
			snd.Parent = torso
			snd:Play()
			repeat
				task.wait()
			until not holdingw or root.Velocity == vect3(0,0,0)
			snd:Destroy()
			if not ducking then
				hum.WalkSpeed = ogws
			end
			hum.JumpPower = ogjp
			hum.JumpHeight = ogjh
			attack = false	
		end
	end,
	["charge"] = function()
		--Ki Charge
		if not (attack or guarding or hurt or hum.Sit == true or sitting or lying) then
			keycombo = ""
			if mp >= 1000 then return end
			attack = true
			anim = "charge"
			frame = 1
			local randomsound = random(0,9)
			if not dresst then
				if voices then
					if randomsound <= 6 then
						sound(75994767030916,4.5,1.2,head,0,false)
					elseif randomsound >= 7 then
						sound(566988802,2.5,1.15,head,0,false)
					end
				end
			else
				if voices then
					if randomsound <= 6 then
						sound(75994767030916,4.5,1.45,head,0,false)
					elseif randomsound >= 7 then
						sound(566988802,2.5,1.3,head,0,false)
					end
				end
			end
			task.wait(0.25)
			local charging = true
			sound(9057675920,1,1,torso,0,false)
			local sphere = new("Part")
			sphere.Parent = script
			sphere.Name = "AuraBurst"
			sphere.Shape = "Ball"
			sphere.Size = vect3(1,1,1)
			sphere.Transparency = 0.5
			sphere.BrickColor = bc("Neon orange")
			sphere.Material = "Neon"
			sphere.CanCollide = false
			sphere.Anchored = true
			sphere.CFrame = root.CFrame
			local tween = tweens:Create(sphere, TweenInfo.new(0.45), {Size = vect3(25,25,25), Transparency = 1})
			tween:Play()
			debris:AddItem(sphere,1.5)
			frame = 2
			--My sound function won't probably work well, so this is what I had to do instead.
			local snd = new("Sound")
			snd.Name = "Aura"
			snd.SoundId = "rbxassetid://1377219615"
			snd.Volume = 4.5
			snd.Looped = true
			snd.Parent = torso
			snd:Play()
			local cfire = new("Fire")
			cfire.Parent = torso
			cfire.Color = color(1, 0.333333, 0)
			cfire.Size = 20
			cfire.Heat = 15
			cfire.SecondaryColor = color(0.666667, 0.333333, 0)
			cfire.Name = "ChargeFire"
			spawn(function()
				while charging do
					local shard = new("Part")
					local shardm = new("SpecialMesh")
					shard.Name = "Shard"
					shard.Parent = script
					shard.Transparency = 0
					shard.Size = vect3(1, 0.4, 1)
					shard.BrickColor = bc("Neon orange")
					shard.CanCollide = false
					shard.CanTouch = false
					shard.Anchored = true
					shard.Locked = true
					shardm.Parent = shard
					shardm.MeshId = "http://www.roblox.com/asset/?id=9547466"
					shardm.Scale =vect3(1, 2, 1)
					shard.CFrame = root.CFrame*cframe(random(-2,2), -3, random(-2,2))
					local fire = new("Fire")
					fire.Parent = shard
					tweens:Create(shardm, TweenInfo.new(0.25), {Scale = vect3(0.1, 10, 0.1)}):Play()
					local tween = tweens:Create(shard, TweenInfo.new(0.25), {CFrame = shard.CFrame * cframe(0,10,0), Transparency = 1})
					tween:Play()
					tween.Completed:Connect(function() fire.Enabled = false task.wait(2.5) shard:Destroy() end)
					task.wait(0.045)
				end
			end)
			spawn(function()
				while charging do 
					local sphere = new("Part")
					sphere.Parent = script
					sphere.Name = "SuperSphere"
					sphere.Shape = "Ball"
					sphere.Size = vect3(15,15,15)
					sphere.Transparency = 1
					sphere.Color = color(1, 0.333333, 0)
					sphere.Material = "Neon"
					sphere.CanCollide = false
					sphere.Anchored = true
					sphere.CFrame = root.CFrame
					local tween = tweens:Create(sphere, TweenInfo.new(0.5), {Size = vect3(0.015,0.015,0.015), Transparency = 0})
					tween:Play()
					tween.Completed:Connect(function() sphere:Destroy() end)
					task.wait(0.5)
				end
			end)
			local judas = true
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
				spellcd.Texture = "http://www.roblox.com/asset/?id=238111016"
				spellcd.Face = Enum.NormalId.Top
				spellcd.Transparency = 1
				spellcl.Parent = spellc
				spellcl.Brightness = 1.75
				spellcl.Range = 15
				spellcl.Color = color(1, 0.333333, 0)
				local tween = tweens:Create(spellcd, TweenInfo.new(1), {Transparency = 0})
				tween:Play()
				local angle = 0
				while judas do
					wait()
					angle = angle + 15
					if charging then
						spellc.CFrame = root.CFrame * cframe(0, -3, 0) * angles(0, rad(angle), 0)
					else
						if spellcd.Transparency < 1 then
							if spellc ~= nil then
								spellcd.Transparency = spellcd.Transparency + 0.05
							end
						else
							spellc:Destroy()
							judas = false
							break							
						end
					end
				end
			end)
			repeat
				if player.UserId == 50203523 then
					mp = mp + random(4,8)
				else
					mp = mp + random(1,3)
				end
				task.wait(0.015)
			until not holdinge or mp >= 1000
			if mp > 1000 then
				mp = 1000
			end
			frame = 3
			snd:Destroy()
			cfire.Enabled = false
			debris:AddItem(cfire,2.5)
			charging = false
			task.wait(0.1)
			attack = false
		end
	end;
	["punch"] = function()
		--Punch
		if not (attack or guarding or hurt or hum.Sit == true or sitting or lying) then
			keycombo = ""
			if not inair then
				attack = true
				hum.WalkSpeed = 0
				hum.JumpPower = 0
				hum.JumpHeight = 0
				if not sword then
					if not ducking then
						anim = "wpunch"
						frame = 1
						local randomsound = random(0,9)
						if not dresst then
							if voices then
								if randomsound <= 2 then
									sound(99972823711496,3,1.15,head,0,false)
								elseif randomsound >= 7 then
									sound(81828340678630,3,1.15,head,0,false)
								end
							end
						else
							if voices then
								if randomsound <= 2 then
									sound(99972823711496,3,1.35,head,0,false)
								elseif randomsound >= 7 then
									sound(81828340678630,3,1.3,head,0,false)
								end
							end
						end
						sound(121514852904179,3,1,la,0,false)
						magnitudedamage(7,"sphere", 0, 5, 9066673412, 4.5, 1, root,true,"normal","normal")
						task.wait(0.1)
						hum.WalkSpeed = ogws
						hum.JumpPower = ogjp
						hum.JumpHeight = ogjh
					else
						anim = "dwpunch"
						frame = 1
						local randomsound = random(0,9)
						if not dresst then
							if voices then
								if randomsound <= 2 then
									sound(99972823711496,3,1.15,head,0,false)
								elseif randomsound >= 7 then
									sound(81828340678630,3,1.15,head,0,false)
								end
							end
						else
							if voices then
								if randomsound <= 2 then
									sound(99972823711496,3,1.35,head,0,false)
								elseif randomsound >= 7 then
									sound(81828340678630,3,1.3,head,0,false)
								end
							end
						end
						sound(121514852904179,3,1,la,0,false)
						magnitudedamage(7,"sphere", 0, 5, 9066673412, 4.5, 1, root,true,"normal","normal")
						task.wait(0.1)
						hum.JumpPower = ogjp
						hum.JumpHeight = ogjh
					end
				else
					if not moving then
						if not ducking then
							anim = "snpunch"
							frame = 1
							local randomsound = random(0,9)
							if not dresst then
								if voices then
									if randomsound <= 2 then
										sound(99972823711496,3,1.15,head,0,false)
									elseif randomsound >= 7 then
										sound(81828340678630,3,1.15,head,0,false)
									end
								end
							else
								if voices then
									if randomsound <= 2 then
										sound(99972823711496,3,1.35,head,0,false)
									elseif randomsound >= 7 then
										sound(81828340678630,3,1.3,head,0,false)
									end
								end
							end
							sound(7122602098,3,1,Weapon,0,false)
							magnitudedamage(7,"sphere", 0, 5, 9066673412, 4.5, 1, root,true,"normal","normal")
							task.wait(0.1)
							hum.WalkSpeed = ogws
							hum.JumpPower = ogjp
							hum.JumpHeight = ogjh
						else
							anim = "sdpunch"
							frame = 1
							local randomsound = random(0,9)
							if not dresst then
								if voices then
									if randomsound <= 2 then
										sound(99972823711496,3,1.15,head,0,false)
									elseif randomsound >= 7 then
										sound(81828340678630,3,1.15,head,0,false)
									end
								end
							else
								if voices then
									if randomsound <= 2 then
										sound(99972823711496,3,1.35,head,0,false)
									elseif randomsound >= 7 then
										sound(81828340678630,3,1.3,head,0,false)
									end
								end
							end
							sound(7122602098,3,1,Weapon,0,false)
							magnitudedamage(7,"sphere", 0, 5, 9066673412, 4.5, 1, root,true,"normal","normal")
							task.wait(0.1)
							hum.JumpPower = ogjp
							hum.JumpHeight = ogjh
						end
					else
						anim = "sfpunch"
						frame = 1
						task.wait(0.15)
						local vel = new("BodyVelocity")
						vel.Parent = root
						vel.MaxForce = vect3(math.huge,math.huge,math.huge)
						vel.Velocity = root.CFrame.lookVector * 45
						debris:AddItem(vel,0.2)
						local randomsound = random(0,9)
						if not dresst then
							if voices then
								if randomsound <= 2 then
									sound(4323235687,3,1.1,head,0,false)
								elseif randomsound >= 7 then
									sound(119764591428121,3,1.1,head,0,false)
								end
							end
						else
							if voices then
								if randomsound <= 2 then
									sound(4323235687,3,1.325,head,0,false)
								elseif randomsound >= 7 then
									sound(119764591428121,3,1.35,head,0,false)
								end
							end
						end
						task.wait(0.05)
						sound(536642316, 3.5, 1, la, 0, false)
						frame = 2
						magnitudedamage(10,"sphere", 0, 7.5, 140139514810063, 4.5, 1, root,true,"normal","fspunch")
						task.wait(0.25)
						hum.WalkSpeed = ogws
						hum.JumpPower = ogjp
						hum.JumpHeight = ogjh
					end
				end
				attack = false	
			else
				attack = true
				if not sword then
					anim = "awpunch"
				else
					anim = "sapunch"
				end
				frame = 1
				local randomsound = random(0,9)
				if not dresst then
					if voices then
						if randomsound <= 2 then
							sound(99972823711496,3,1.15,head,0,false)
						elseif randomsound >= 7 then
							sound(81828340678630,3,1.15,head,0,false)
						end
					end
				else
					if voices then
						if randomsound <= 2 then
							sound(99972823711496,3,1.35,head,0,false)
						elseif randomsound >= 7 then
							sound(81828340678630,3,1.3,head,0,false)
						end
					end
				end
				sound(536642316,3.5,1,la,0,false)
				partdamage(7,"sphere", 0, 6.5, 9066673412, 4.5, 1, root,true,"normal","normal",0.165)
				task.wait(0.125)
				attack = false	
			end
		end
	end;
	["kick"] = function()
		--Kick
		if not (attack or guarding or hurt or hum.Sit == true or sitting or lying) then
			keycombo = ""
			attack = true
			if not inair then
				hum.WalkSpeed = 0
				hum.JumpPower = 0
				hum.JumpHeight = 0
				if not ducking then
					if not sword then
						anim = "wkick"
					else
						anim = "snkick"
					end
					frame = 1
					local randomsound = random(0,9)
					if not dresst then
						if voices then
							if randomsound <= 2 then
								sound(90086411940906,3,1.125,head,0,false)
							elseif randomsound >= 7 then
								sound(5178191235,3,1.1,head,0,false)
							end
						end
					else
						if voices then
							if randomsound <= 2 then
								sound(90086411940906,3,1.3,head,0,false)
							elseif randomsound >= 7 then
								sound(5178191235,3,1.325,head,0,false)
							end
						end
					end
					task.wait(0.1)
					sound(200632136,3,1,rl,0,false)
					frame = 2
					magnitudedamage(8,"sphere", 0, 5.5, 386946017, 4.5, 1, root,true,"normal","normal")
					task.wait(0.1)
					hum.WalkSpeed = ogws
					hum.JumpPower = ogjp
					hum.JumpHeight = ogjh
					attack = false	
				else
					if not sword then
						anim = "dwkick"
					else
						anim = "dsnkick"
					end
					local randomsound = random(0,9)
					if not dresst then
						if voices then
							if randomsound <= 2 then
								sound(99972823711496,3,1.15,head,0,false)
							elseif randomsound >= 7 then
								sound(81828340678630,3,1.15,head,0,false)
							end
						end
					else
						if voices then
							if randomsound <= 2 then
								sound(99972823711496,3,1.35,head,0,false)
							elseif randomsound >= 7 then
								sound(81828340678630,3,1.3,head,0,false)
							end
						end
					end
					frame = 1
					sound(536642316,3.25,1,ll,0,false)
					magnitudedamage(9,"sphere", 0, 4.5, 386946017, 4.5, 1, root,true,"normal","normal")
					task.wait(0.1)
					hum.JumpPower = ogjp
					hum.JumpHeight = ogjh
				end
			else
				attack = true
				if not sword then
					anim = "awkick"
				else
					anim = "asnkick"
				end
				frame = 1
				local randomsound = random(0,9)
				if not dresst then
					if voices then
						if randomsound <= 2 then
							sound(99972823711496,3,1.15,head,0,false)
						elseif randomsound >= 7 then
							sound(81828340678630,3,1.15,head,0,false)
						end
					end
				else
					if voices then
						if randomsound <= 2 then
							sound(99972823711496,3,1.35,head,0,false)
						elseif randomsound >= 7 then
							sound(81828340678630,3,1.3,head,0,false)
						end
					end
				end
				task.wait(0.1)
				sound(536642316,3,1,ll,0,false)
				frame = 2
				partdamage(9,"sphere", 0, 6.25, 386946017, 4.5, 1, root,true,"normal","normal",0.25)
				task.wait(0.1)
				attack = false
			end
			attack = false	
		end
	end;
	["slash"] = function()
		--Slash
		if not (attack or guarding or hurt or hum.Sit == true or sitting or lying) then
			keycombo = ""
			if not inair then
				if not sword then
					if not moving then
						if not ducking then
							attack = true
							hum.WalkSpeed = 0
							hum.JumpPower = 0
							hum.JumpHeight = 0
							anim = "spunch"
							frame = 1
							local randomsound = random(0,9)
							if not dresst then
								if voices then
									if randomsound <= 2 then
										sound(107398327407943,3,1.1,head,0,false)
									elseif randomsound >= 7 then
										sound(128138431365856,3,1.1,head,0,false)
									end
								end
							else
								if voices then
									if randomsound <= 2 then
										sound(107398327407943,3,1.3,head,0,false)
									elseif randomsound >= 7 then
										sound(128138431365856,3,1.325,head,0,false)
									end
								end
							end
							task.wait(0.15)	
							sound(74238153433253,3,1,ra,0,false)
							frame = 2
							magnitudedamage(12,"sphere", 0, 5, 386946017, 4.5, 1, root,true,"normal","normal")
							task.wait(0.12)
							frame = 3
							task.wait(0.1)
							hum.WalkSpeed = ogws
							hum.JumpPower = ogjp
							hum.JumpHeight = ogjh
							attack = false	
						else
							attack = true
							hum.WalkSpeed = 0
							hum.JumpPower = 0
							hum.JumpHeight = 0
							anim = "dspunch"
							frame = 1
							local randomsound = random(0,9)
							if not dresst then
								if voices then
									if randomsound <= 2 then
										sound(89876053828253,3,1.1,head,0,false)
									elseif randomsound >= 7 then
										sound(6051771341,3,1.1,head,0,false)
									end
								end
							else
								if voices then
									if randomsound <= 2 then
										sound(89876053828253,3,1.3,head,0,false)
									elseif randomsound >= 7 then
										sound(6051771341,3,1.3,head,0,false)
									end
								end
							end
							task.wait(0.1)	
							sound(101467914599270,3,1,ra,0,false)
							frame = 2
							magnitudedamage(12,"sphere", 0, 4.5, 386946017, 4.5, 1, root,true,"normal","dspunch")
							task.wait(0.3)
							hum.JumpPower = ogjp
							hum.JumpHeight = ogjh
							attack = false	
						end
					else
						attack = true
						hum.WalkSpeed = 0
						hum.JumpPower = 0
						hum.JumpHeight = 0
						anim = "fspunch"
						frame = 1
						local vel = new("BodyVelocity")
						vel.Parent = root
						vel.MaxForce = vect3(math.huge,math.huge,math.huge)
						vel.Velocity = root.CFrame.lookVector * 45
						debris:AddItem(vel,0.15)
						local randomsound = random(0,9)
						if not dresst then
							if voices then
								if randomsound <= 2 then
									sound(89876053828253,3,1.1,head,0,false)
								elseif randomsound >= 7 then
									sound(6051771341,3,1.1,head,0,false)
								end
							end
						else
							if voices then
								if randomsound <= 2 then
									sound(89876053828253,3,1.3,head,0,false)
								elseif randomsound >= 7 then
									sound(6051771341,3,1.3,head,0,false)
								end
							end
						end
						task.wait(0.15)
						sound(74238153433253,3,1,ra,0,false)
						frame = 2
						magnitudedamage(14,"sphere", 0, 7.5, 114831997887849, 4.5, 1, root,true,"normal","fspunch")
						task.wait(0.3)
						frame = 3
						task.wait(0.1)
						hum.WalkSpeed = ogws
						hum.JumpPower = ogjp
						hum.JumpHeight = ogjh
						attack = false	
					end
				else
					if not moving then
						if not ducking then
							attack = true
							hum.WalkSpeed = 0
							hum.JumpPower = 0
							hum.JumpHeight = 0
							anim = "slash"
							frame = 1
							local randomsound = random(0,9)
							if not dresst then
								if voices then
									if randomsound <= 2 then
										sound(83253261479036,3,1.05,head,0,false)
									elseif randomsound >= 7 then
										sound(90086411940906,3,1.05,head,0,false)
									end
								end
							else
								if voices then
									if randomsound <= 2 then
										sound(83253261479036,3,1.3,head,0,false)
									elseif randomsound >= 7 then
										sound(90086411940906,3,1.3,head,0,false)
									end
								end
							end
							task.wait(0.15)	
							WeaponTrail.Enabled = true
							sound(117297744119258,3,1,Weapon,0,false)
							frame = 2
							magnitudedamage(12,"sphere", 0, 8, 444667859, 4.5, 1, root,true,"slash2","normal")
							task.wait(0.06)
							frame = 4
							task.wait(0.1)
							frame = 3
							task.wait(0.1)
							WeaponTrail.Enabled = false
							hum.WalkSpeed = ogws
							hum.JumpPower = ogjp
							hum.JumpHeight = ogjh
							attack = false	
						else
							attack = true
							hum.WalkSpeed = 0
							hum.JumpPower = 0
							hum.JumpHeight = 0
							anim = "dslash"
							frame = 1
							local randomsound = random(0,9)
							if not dresst then
								if voices then
									if randomsound <= 2 then
										sound(83253261479036,3,1.05,head,0,false)
									elseif randomsound >= 7 then
										sound(90086411940906,3,1.05,head,0,false)
									end
								end
							else
								if voices then
									if randomsound <= 2 then
										sound(83253261479036,3,1.3,head,0,false)
									elseif randomsound >= 7 then
										sound(90086411940906,3,1.3,head,0,false)
									end
								end
							end
							task.wait(0.1)	
							sound(94287427538964,3,1,Weapon,0,false)
							frame = 2
							WeaponTrail.Enabled = true
							magnitudedamage(11,"sphere", 0, 4.5, 444667824, 4.5, 1, root,true,"slash2","normal")
							task.wait(0.1)
							WeaponTrail.Enabled = false
							hum.JumpPower = ogjp
							hum.JumpHeight = ogjh
							attack = false	
						end
					else
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
						debris:AddItem(vel,0.15)
						local randomsound = random(0,9)
						if not dresst then
							if voices then
								if randomsound <= 2 then
									sound(4323235687,3,1.1,head,0,false)
								elseif randomsound >= 7 then
									sound(119764591428121,3,1.1,head,0,false)
								end
							end
						else
							if voices then
								if randomsound <= 2 then
									sound(4323235687,3,1.325,head,0,false)
								elseif randomsound >= 7 then
									sound(119764591428121,3,1.35,head,0,false)
								end
							end
						end
						task.wait(0.075)
						sound(6241709963,4.5,1,Weapon,0,false)
						frame = 2
						WeaponTrail.Enabled = true
						task.wait(0.068)
						frame = 3
						magnitudedamage(14,"sphere", 0, 8.88, 444667844, 4.5, 1, root,true,"slash2","fslash")
						task.wait(0.075)
						frame = 4
						task.wait(0.1)
						WeaponTrail.Enabled = false
						hum.WalkSpeed = ogws
						hum.JumpPower = ogjp
						hum.JumpHeight = ogjh
						attack = false	
					end
				end
			else
				if not sword then
					attack = true
					anim = "aspunch"
					frame = 1
					local randomsound = random(0,9)
					if not dresst then
						if voices then
							if randomsound <= 2 then
								sound(83253261479036,3,1.05,head,0,false)
							elseif randomsound >= 7 then
								sound(90086411940906,3,1.05,head,0,false)
							end
						end
					else
						if voices then
							if randomsound <= 2 then
								sound(83253261479036,3,1.3,head,0,false)
							elseif randomsound >= 7 then
								sound(90086411940906,3,1.3,head,0,false)
							end
						end
					end
					sound(74238153433253,3,1,ra,0,false)
					partdamage(10,"sphere", 0, 6.25, 386946017, 7.5, 1, root,true,"normal","normal",0.25)
					task.wait(0.2)
					attack = false
				else
					attack = true
					anim = "aslash"
					frame = 1
					task.wait(0.15)
					local randomsound = random(0,9)
					if not dresst then
						if voices then
							if randomsound <= 2 then
								sound(4323235687,3,1.1,head,0,false)
							elseif randomsound >= 7 then
								sound(119764591428121,3,1.1,head,0,false)
							end
						end
					else
						if voices then
							if randomsound <= 2 then
								sound(4323235687,3,1.325,head,0,false)
							elseif randomsound >= 7 then
								sound(119764591428121,3,1.35,head,0,false)
							end
						end
					end
					sound(6241709963,4,1,Weapon,0,false)
					WeaponTrail.Enabled = true
					frame = 2
					partdamage(10,"sphere", 0.115, 7.5, 444667859, 3, 1, root,true,"slash2","normal",0.25)
					task.wait(0.12)
					frame = 3
					task.wait(0.12)
					frame = 4
					task.wait(0.1)
					WeaponTrail.Enabled = false
					attack = false
				end
			end
		end
	end;
	["hslash"] = function()
		--Heavy Slash
		if not (attack or guarding or hurt or hum.Sit == true or sitting or lying) then
			keycombo = ""
			if not inair then
				if not sword then
					if not moving then
						if not ducking then
							attack = true
							hum.WalkSpeed = 0
							hum.JumpPower = 0
							hum.JumpHeight = 0
							anim = "skick"
							frame = 1
							wait(0.075)
							local randomsound = random(0,9)
							if not dresst then
								if voices then
									if randomsound <= 2 then
										sound(4323235687,3,1.1,head,0,false)
									elseif randomsound >= 7 then
										sound(119764591428121,3,1.1,head,0,false)
									end
								end
							else
								if voices then
									if randomsound <= 2 then
										sound(4323235687,3,1.325,head,0,false)
									elseif randomsound >= 7 then
										sound(119764591428121,3,1.35,head,0,false)
									end
								end
							end
							frame = 2
							task.wait(0.075)	
							sound(97257125551026,3,1,rl,0,false)
							frame = 3
							magnitudedamage(12,"sphere", 0, 6.5, 86699600703335, 4.5, 1, root,true,"normal","normal")
							task.wait(0.12)
							frame = 4
							task.wait(0.12)
							frame = 5
							task.wait(0.1)
							hum.WalkSpeed = ogws
							hum.JumpPower = ogjp
							hum.JumpHeight = ogjh
							attack = false	
						else
							attack = true
							hum.WalkSpeed = 0
							hum.JumpPower = 0
							hum.JumpHeight = 0
							anim = "dskick"
							frame = 1
							task.wait(0.1)
							local randomsound = random(0,9)
							if not dresst then
								if voices then
									if randomsound <= 2 then
										sound(83253261479036,3,1.05,head,0,false)
									elseif randomsound >= 7 then
										sound(90086411940906,3,1.05,head,0,false)
									end
								end
							else
								if voices then
									if randomsound <= 2 then
										sound(83253261479036,3,1.3,head,0,false)
									elseif randomsound >= 7 then
										sound(90086411940906,3,1.3,head,0,false)
									end
								end
							end
							sound(74503385167694,3,1,rl,0,false)
							frame = 2
							magnitudedamage(12,"sphere", 0, 4.5, 621571142, 4.5, 1, root,true,"normal","normal")
							task.wait(0.12)
							hum.JumpPower = ogjp
							hum.JumpHeight = ogjh
							attack = false	
						end
					else
						attack = true
						hum.WalkSpeed = 0
						hum.JumpPower = 0
						hum.JumpHeight = 0
						anim = "fskick"
						frame = 1
						local vel = new("BodyVelocity")
						vel.Parent = root
						vel.MaxForce = vect3(math.huge,math.huge,math.huge)
						vel.Velocity = root.CFrame.lookVector * 25
						debris:AddItem(vel,0.215)
						task.wait(0.075)		
						local randomsound = random(0,9)
						if not dresst then
							if voices then
								if randomsound <= 2 then
									sound(4323235687,3,1.1,head,0,false)
								elseif randomsound >= 7 then
									sound(86235612395063,3,1.05,head,0,false)
								end
							end
						else
							if voices then
								if randomsound <= 2 then
									sound(4323235687,3,1.3,head,0,false)
								elseif randomsound >= 7 then
									sound(86235612395063,3,1.3,head,0,false)
								end
							end
						end
						frame = 2
						task.wait(0.075)	
						frame = 3		
						task.wait(0.075)	
						sound(114235921050731,3,1,rl,0,false)
						frame = 4
						magnitudedamage(14,"sphere", 0, 6, 3509669748, 4.5, 1, root,true,"normal","fskick")
						task.wait(0.1)
						frame = 5
						task.wait(0.1)
						hum.WalkSpeed = ogws
						hum.JumpPower = ogjp
						hum.JumpHeight = ogjh
						attack = false	
					end
				else
					if not moving then
						if not ducking then
							attack = true
							hum.WalkSpeed = 0
							hum.JumpPower = 0
							hum.JumpHeight = 0
							anim = "hslash"
							frame = 1
							wait(0.075)
							local randomsound = random(0,9)
							if not dresst then
								if voices then
									if randomsound <= 2 then
										sound(107398327407943,3,1.1,head,0,false)
									elseif randomsound >= 7 then
										sound(128138431365856,3,1.1,head,0,false)
									end
								end
							else
								if voices then
									if randomsound <= 2 then
										sound(107398327407943,3,1.3,head,0,false)
									elseif randomsound >= 7 then
										sound(128138431365856,3,1.325,head,0,false)
									end
								end
							end
							WeaponTrail.Enabled = true
							sound(135716818327410,3,1,Weapon,0,false)
							frame = 2
							magnitudedamage(12,"sphere", 0, 7.5, 5951832571, 4.5, 1, root,true,"slash2","normal")
							task.wait(0.1)
							WeaponTrail.Enabled = false
							hum.WalkSpeed = ogws
							hum.JumpPower = ogjp
							hum.JumpHeight = ogjh
							attack = false	
						else
							attack = true
							hum.WalkSpeed = 0
							hum.JumpPower = 0
							hum.JumpHeight = 0
							anim = "dspunch"
							frame = 1
							task.wait(0.1)
							local randomsound = random(0,9)
							if not dresst then
								if voices then
									if randomsound <= 2 then
										sound(4323235687,3,1.1,head,0,false)
									elseif randomsound >= 7 then
										sound(119764591428121,3,1.1,head,0,false)
									end
								end
							else
								if voices then
									if randomsound <= 2 then
										sound(4323235687,3,1.325,head,0,false)
									elseif randomsound >= 7 then
										sound(119764591428121,3,1.35,head,0,false)
									end
								end
							end
							WeaponTrail.Enabled = true
							sound(111808555599832,3,1,Weapon,0,false)
							hum.JumpHeight = 0
							anim = "dhslash"
							frame = 1
							magnitudedamage(13,"sphere", 0, 4.5, 5951831903, 4.5, 1, root,true,"slash2","dspunch")
							task.wait(0.12)
							WeaponTrail.Enabled = false
							hum.JumpPower = ogjp
							hum.JumpHeight = ogjh
							attack = false	
						end
					else
						attack = true
						hum.WalkSpeed = 0
						hum.JumpPower = 0
						hum.JumpHeight = 0
						anim = "slash"
						frame = 1
						local vel = new("BodyVelocity")
						vel.Parent = root
						vel.MaxForce = vect3(math.huge,math.huge,math.huge)
						vel.Velocity = root.CFrame.lookVector * 45
						debris:AddItem(vel,0.1)
						local randomsound = random(0,9)
						if not dresst then
							if voices then
								if randomsound <= 2 then
									sound(4323235687,3,1.1,head,0,false)
								elseif randomsound >= 7 then
									sound(86235612395063,3,1.05,head,0,false)
								end
							end
						else
							if voices then
								if randomsound <= 2 then
									sound(4323235687,3,1.3,head,0,false)
								elseif randomsound >= 7 then
									sound(86235612395063,3,1.3,head,0,false)
								end
							end
						end
						task.wait(0.075)		
						sound(107784188693056,3,1,Weapon,0,false)
						WeaponTrail.Enabled = true
						frame = 2
						magnitudedamage(16,"sphere", 0, 8, 3751516969, 4.5, 1, root,true,"slash2","fhslash")
						task.wait(0.06)
						frame = 4
						task.wait(0.1)
						frame = 3
						task.wait(0.1)
						WeaponTrail.Enabled = false
						hum.WalkSpeed = ogws
						hum.JumpPower = ogjp
						hum.JumpHeight = ogjh
						attack = false	
					end
				end
			else
				if not sword then
					attack = true
					anim = "askick"
					frame = 1
					local randomsound = random(0,9)
					if not dresst then
						if voices then
							if randomsound <= 2 then
								sound(83253261479036,3,1.05,head,0,false)
							elseif randomsound >= 7 then
								sound(107398327407943,3,1.1,head,0,false)
							end
						end
					else
						if voices then
							if randomsound <= 2 then
								sound(83253261479036,3,1.3,head,0,false)
							elseif randomsound >= 7 then
								sound(107398327407943,3,1.3,head,0,false)
							end
						end
					end
					sound(536642316,3,1,ll,0,false)
					partdamage(10,"sphere", 0, 6.25, 386946017, 4.5, 1, root,true,"normal","normal",0.25)
					task.wait(0.12)
					attack = false
				else
					attack = true
					anim = "ahslash"
					frame = 1
					task.wait(0.1)
					WeaponTrail.Enabled = true
					frame = 2
					local randomsound = random(0,9)
					if not dresst then
						if voices then
							if randomsound <= 2 then
								sound(83253261479036,3,1.05,head,0,false)
							elseif randomsound >= 7 then
								sound(5178191235,3,1.1,head,0,false)
							end
						end
					else
						if voices then
							if randomsound <= 2 then
								sound(83253261479036,3,1.3,head,0,false)
							elseif randomsound >= 7 then
								sound(5178191235,3,1.325,head,0,false)
							end
						end
					end
					sound(5789211405,3,1,Weapon,0,false)
					partdamage(10,"sphere", 0, 6.25, 6594869919, 4.5, 1, root,true,"slash2","knockdown",0.25)
					task.wait(0.12)
					WeaponTrail.Enabled = false
					attack = false
				end
			end
		end
	end;
	["dust"] = function()
		--Dust
		if not (attack or guarding or hurt or hum.Sit == true or sitting or lying) then
			keycombo = ""
			if not inair then
				if not ducking then
					attack = true
					hum.WalkSpeed = 0
					hum.JumpPower = 0
					hum.JumpHeight = 0
					if not sword then
						anim = "dust"
					else
						anim = "sdust"
					end
					frame = 1
					local randomsound = random(0,9)
					if not dresst then
						if voices then
							if randomsound <= 2 then
								sound(4323235687,3,1.1,head,0,false)
							elseif randomsound >= 7 then
								sound(119764591428121,3,1.1,head,0,false)
							end
						end
					else
						if voices then
							if randomsound <= 2 then
								sound(4323235687,3,1.3,head,0,false)
							elseif randomsound >= 7 then
								sound(119764591428121,3,1.35,head,0,false)
							end
						end
					end
					task.wait(0.15)	
					sound(536642316,3,1,torso,0,false)
					frame = 2
					magnitudedamage(12,"sphere", 0, 6, 386946017, 7.5, 1, root,true,"normal","dust")
					task.wait(0.12)
					frame = 3
					task.wait(0.1)
					hum.WalkSpeed = ogws
					hum.JumpPower = ogjp
					hum.JumpHeight = ogjh
					attack = false	
				else
					if not sword then
						attack = true
						hum.WalkSpeed = 0
						hum.JumpPower = 0
						hum.JumpHeight = 0
						anim = "ddust"
						frame = 1
						task.wait(0.075)
						frame = 2
						local randomsound = random(0,9)
						if not dresst then
							if voices then
								if randomsound <= 2 then
									sound(89876053828253,3,1.1,head,0,false)
								elseif randomsound >= 7 then
									sound(6051771341,3,1.1,head,0,false)
								end
							end
						else
							if voices then
								if randomsound <= 2 then
									sound(89876053828253,3,1.3,head,0,false)
								elseif randomsound >= 7 then
									sound(6051771341,3,1.3,head,0,false)
								end
							end
						end
						task.wait(0.1)	
						sound(536642316,3,1,torso,0,false)
						frame = 3
						magnitudedamage(11,"sphere", 0, 6, 386946017, 8, 1, root,true,"normal","trip")
						task.wait(0.1)
						hum.JumpPower = ogjp
						hum.JumpHeight = ogjh
						attack = false	
					else
						attack = true
						hum.WalkSpeed = 0
						hum.JumpPower = 0
						hum.JumpHeight = 0
						anim = "sddust"
						frame = 1
						local randomsound = random(0,9)
						if not dresst then
							if voices then
								if randomsound <= 2 then
									sound(89876053828253,3,1.1,head,0,false)
								elseif randomsound >= 7 then
									sound(6051771341,3,1.1,head,0,false)
								end
							end
						else
							if voices then
								if randomsound <= 2 then
									sound(89876053828253,3,1.3,head,0,false)
								elseif randomsound >= 7 then
									sound(6051771341,3,1.3,head,0,false)
								end
							end
						end
						task.wait(0.1)	
						sound(536642316,3,1,rl,0,false)
						frame = 2
						magnitudedamage(11,"sphere", 0, 6, 386946017, 8, 1, root,true,"normal","trip")
						task.wait(0.225)
						hum.JumpPower = ogjp
						hum.JumpHeight = ogjh
						attack = false	
					end
				end
			else
				if not sword then
					attack = true
					anim = "adust"
					frame = 1
					task.wait(0.1)
					local randomsound = random(0,9)
					if not dresst then
						if voices then
							if randomsound <= 2 then
								sound(4323235687,3,1.1,head,0,false)
							elseif randomsound >= 7 then
								sound(119764591428121,3,1.1,head,0,false)
							end
						end
					else
						if voices then
							if randomsound <= 2 then
								sound(4323235687,3,1.325,head,0,false)
							elseif randomsound >= 7 then
								sound(119764591428121,3,1.35,head,0,false)
							end
						end
					end
					sound(536642316,3,1,ll,0,false)
					frame = 2
					partdamage(10,"sphere", 0, 7.5, 386946017, 7.5, 1, root,true,"normal","adust",0.25)
					task.wait(0.2)
					frame = 3
					task.wait(0.1)
					attack = false
				else
					attack = true
					anim = "sadust"
					frame = 1
					task.wait(0.1)
					local randomsound = random(0,9)
					if not dresst then
						if voices then
							if randomsound <= 2 then
								sound(4323235687,3,1.1,head,0,false)
							elseif randomsound >= 7 then
								sound(119764591428121,3,1.1,head,0,false)
							end
						end
					else
						if voices then
							if randomsound <= 2 then
								sound(4323235687,3,1.325,head,0,false)
							elseif randomsound >= 7 then
								sound(119764591428121,3,1.35,head,0,false)
							end
						end
					end
					sound(536642316,3,1,Weapon,0,false)
					frame = 2
					partdamage(10,"sphere", 0, 7.5, 386946017, 7.5, 1, root,true,"normal","adust",0.25)
					task.wait(0.2)
					attack = false
				end
			end
		end
	end;
	["grab"] = function()
		--Grab Attack
		if not (attack or guarding or hurt or hum.Sit == true or sitting or lying) then
			keycombo = ""
			if not inair then
				attack = true
				hum.WalkSpeed = 0
				hum.JumpPower = 0
				hum.JumpHeight = 0
				if not sword then
					anim = "grab"
				else
					anim = "sgrab"
				end
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
								local vdistance = (root.Position - vtorso.Position).magnitude
								if vdistance <= 5 and vhum.Health > 0 then
									sound(240429615,3,1,vtorso,0,false)
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
				task.wait(0.025)
				if not grabbed then
					sound(3755636638,2.5,1.8,ra,0,false)
					frame = 2
					task.wait(0.425)
				else
					local grabpart = new("Part")
					grabpart.Size = vect3(0.001,0.001,0.001)
					grabpart.Parent = gv
					grabpart.Transparency = 1
					grabpart.CanCollide = false
					grabpart.CanTouch = false
					grabpart.Locked = true
					grabpart.CFrame = root.CFrame * cframe(0,0,-2.5) * angles(0,rad(180),0)
					grabpart.Anchored = true
					grabpart.CFrame = root.CFrame * cframe(0,0,-2.5) * angles(0,rad(180),0)
					local weld = new("Weld")
					weld.Parent = grabpart
					weld.Part0 = grabpart
					weld.Part1 = gvtorso
					weld.C0 = weld.C0 * cframe(0, 0, 0)
					frame = 1
					anchorm = true
					root.Anchored = true
					task.wait(0.075)
					frame = 3
					task.wait(0.5)
					if not holdings then
						if not sword then
							anim = "graba"
							frame = 1
							weld:Destroy()
							grabpart:Destroy()
							sound(5835032207,4.5,1,torso,0,false)
							chatter("How about this?")
							if voices then
								if not dresst then
									sound(123109098383495,3,1.05,head,0,false)
								else
									sound(123109098383495,3,1.375,head,0,false)
								end
							end	
							task.wait(0.025)
							gvhum.PlatformStand = true
							spawn(function()
								task.wait(6)
								gvhum.PlatformStand = false
							end)
							gvtorso.Velocity = root.CFrame.upVector*75
							task.wait(0.6)
							frame = 2
							task.wait(0.125)
							frame = 3
							sound(74238153433253,4.5,1,ra,0,false)
							task.wait(0.001)
							if random(0,6) <= 2 then
								sound(17493997647,4.5,1,gvtorso,0,false)
								sound(7441099080,2,1,gvtorso,0,false)
								hiteffect("blood",gvtorso)
							end
							damage(gvhum, 18, 115426499441465, 5, 1, gvhead, 0, "sphere")
							gvtorso.Velocity = root.CFrame.lookVector*75
							if player.UserId == 50203523 then
								if instakill and random(0,10) == 0 then
									if not game:GetService("Players"):GetPlayerFromCharacter(gv) then
										instantkill(gv,true)
									end
									sound2(5687067405,3.5,1,root,0)
									sound(17493997647,4.5,1,gvtorso,0,false)
									sound(7441099080,2,1,gvtorso,0,false)
									hiteffect("blood",gvtorso)
									gvtorso.Velocity = root.CFrame.lookVector*300
								end
							end
							task.wait(0.75)
							frame = 4
							root.Anchored = false
							spawn(function()
								task.wait(0.01)
								anchorm = false
							end)
							task.wait(0.005)
						else
							anim = "sgraba"
							frame = 1
							local randomsound = random(0,9)
							if not dresst then
								if voices then
									if randomsound <= 2 then
										sound(4323235687,3,1.1,head,0,false)
									elseif randomsound >= 7 then
										sound(6051771341,3,1.1,head,0,false)
									end
								end
							else
								if voices then
									if randomsound <= 2 then
										sound(4323235687,3,1.3,head,0,false)
									elseif randomsound >= 7 then
										sound(6051771341,3,1.1,head,0,false)
									end
								end
							end
							weld.C0 = weld.C0 * cframe(0, 0, -0.45)
							task.wait(0.15)
							frame = 2
							debris:AddItem(weld,0.01)
							sound(200632136,5,1,head,0,false)
							task.wait(0.001)
							grabpart:Destroy()
							gvhum.PlatformStand = true
							spawn(function()
								task.wait(3)
								gvhum.PlatformStand = false
							end)
							damage(gvhum, 18, 2227417121, 5, 1, gvhead, 0, "sphere")
							gvtorso.Velocity = root.CFrame.lookVector*30
							if player.UserId == 50203523 then
								if instakill and random(0,10) == 0 then
									if not game:GetService("Players"):GetPlayerFromCharacter(gv) then
										instantkill(gv,true)
									end
									gvtorso.Velocity = root.CFrame.lookVector*115
									sound(17493997647,4.5,1,gvtorso,0,false)
									sound(7441099080,2,1,gvtorso,0,false)
									hiteffect("blood",gvtorso)
								end
							end
							task.wait(0.15)
							frame = 3
							task.wait(1)
							root.Anchored = false
							spawn(function()
								task.wait(0.025)
								anchorm = false
							end)
							task.wait(0.005)
						end
					else
						if not sword then
							anim = "bgrab"
							frame = 1
							weld.C0 = weld.C0:Lerp(cframe(-0,0.15,-2) * angles(rad(-60), rad(0), rad(0)), 1)	
							local randomsound = random(0,9)
							if not dresst then
								if voices then
									if randomsound <= 2 then
										sound(4323235687,3,1.1,head,0,false)
									elseif randomsound >= 7 then
										sound(6051771341,3,1.1,head,0,false)
									end
								end
							else
								if voices then
									if randomsound <= 2 then
										sound(4323235687,3,1.3,head,0,false)
									elseif randomsound >= 7 then
										sound(6051771341,3,1.1,head,0,false)
									end
								end
							end
							task.wait(0.15)
							frame = 2
							weld.C0 = weld.C0:Lerp(cframe(-0,1,-7.5) * angles(rad(-90), rad(0), rad(0)), 1)	
							debris:AddItem(weld,0.01)
							sound(7346575921,3,1,torso,0,false)
							task.wait(0.001)
							grabpart:Destroy()
							gvhum.PlatformStand = true
							spawn(function()
								task.wait(5)
								gvhum.PlatformStand = false
							end)
							gvtorso.Velocity = root.CFrame.lookVector*-60
							spawn(function()
								local hitfloor
								repeat 
									task.wait()
									hitfloor = raycast(gvtorso.Position, vect3(0, -1, 0), 2+gvhum.HipHeight, gv)
								until hitfloor or gvhum:GetState() == Enum.HumanoidStateType.Landed
								damage(gvhum, 14, 386946017, 4.5, 1, gvhead, 0, "slam")
							end)
							task.wait(0.3)
							frame = 3
							task.wait(0.45)
							root.Anchored = false
							spawn(function()
								task.wait(0.01)
								anchorm = false
							end)
							task.wait(0.005)
						else
							anim = "sbgrab"
							frame = 1
							grabpart.Anchored = false
							root.Anchored = false
							local Gweld = new("Weld")
							Gweld.Parent = la
							Gweld.Part0 = la
							Gweld.Name = "GRABWELD"
							Gweld.Part1 = grabpart
							Gweld.C0 = Gweld.C0 * cframe(0, -1, 0) * angles(0,rad(180),0)
							local randomsound = random(0,9)
							local moving = true
							spawn(function()
								while moving do
									task.wait()
									root.CFrame = root.CFrame * cframe(0,0,0.3)
								end
							end)
							Gweld.C0 = Gweld.C0:Lerp(cframe(0, -1, 0) * angles(rad(-90), rad(-180), rad(0)) * angles(rad(0), rad(30), rad(0)), 1)
							if not dresst then
								if voices then
									sound(566988626,3,1.25,head,0,false)
								end
							else
								if voices then
									sound(566988626,3,1.45,head,0,false)
								end
							end
							task.wait(0.1)
							frame = 2
							Gweld.C0 = Gweld.C0:Lerp(cframe(0, -1, 0) * angles(rad(-90), rad(-180), rad(0)) * angles(rad(0), rad(30), rad(0)), 1)
							task.wait(0.075)
							frame = 3
							Gweld.C0 = Gweld.C0:Lerp(cframe(0, -1, 0) * angles(rad(-90), rad(-180), rad(0)) * angles(rad(0), rad(30), rad(0)), 1)
							task.wait(0.15)
							frame = 4
							Gweld.C0 = Gweld.C0:Lerp(cframe(0, -3, -1.5) * angles(rad(90), rad(180), rad(0)) * angles(rad(-30), rad(180), rad(0)), 1)
							sound(9076453292,7.5,1,torso,0,false)
							task.wait(0.01)
							Gweld.C0 = Gweld.C0:Lerp(cframe(0, -4.5, -0) * angles(rad(90), rad(180), rad(0)) * angles(rad(-30), rad(180), rad(0)), 1)
							hiteffect("slam",gvtorso)
							sound2(97522871949213,6.5,1,gvtorso,0)
							debris:AddItem(Gweld,0.01)
							debris:AddItem(weld,0.01)
							task.wait(0.01)
							moving = false
							frame = 4
							grabpart:Destroy()
							gvhum.PlatformStand = true
							spawn(function()
								task.wait(4.5)
								gvhum.PlatformStand = false
							end)
							gvtorso.Anchored = true
							spawn(function()
								task.wait(0.1)
								gvtorso.Anchored = false
							end)
							gvtorso.Velocity = root.CFrame.lookVector*-60 + root.CFrame.upVector*45
							if player.UserId == 50203523 then
								if instakill and random(0,10) == 0 then
									if not game:GetService("Players"):GetPlayerFromCharacter(gv) then
										instantkill(gv,true)
									end
									sound(17493997647,4.5,1,gvtorso,0,false)
									sound(7441099080,2,1,gvtorso,0,false)
									hiteffect("blood",gvtorso)
								end
							end
							damage(gvhum, 18, 5244544920, 5, 1, gvhead, 0, "none")
							task.wait(0.45)
							spawn(function()
								task.wait(0.01)
								anchorm = false
							end)
							task.wait(0.005)
						end
					end
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
				Weld.Part0 = root
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
									sound(240429615,3,1,torsou,0,false)
									hiteffect("grab",torsou)
									grabbed = true
									gv = persona.Parent
									gvhum = humi
									gvhead = headu
									gvtorso = torsou
									weld = new("Weld")
									weld.Parent = root
									weld.Part0 = root
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
				vel.Parent = root
				vel.Velocity = root.CFrame.LookVector * 25 + root.CFrame.upVector * 75
				vel.Name  =  "GrabJump"
				debris:AddItem(vel,.1)
				sound(1295417556,3,1,torso,0,false)
				task.wait(0.135)
				if not grabbed then
					sound(3755636638,2.5,1.8,ra,0,false)
					frame = 1
					task.wait(0.425)
				else
					Part:Destroy()
					weld.C0 = cframe(-2, 2.5, 0.75) * angles(0,rad(-90),rad(30)) * angles(rad(-60),rad(-0),rad(0))
					anim = "agrab"
					frame = 1
					root.Velocity = root.CFrame.lookVector*60 + root.CFrame.upVector*75
					local slide = new("BodyPosition")
					slide.Parent = root
					slide.MaxForce = vect3(math.huge,math.huge,math.huge)
					slide.D = 2000
					slide.Position = root.CFrame * cframe(0,100,-75).Position
					task.wait(0.1)
					debris:AddItem(slide,0.25)
					frame = 2
					local randomsound = random(0,9)
					if not dresst then
						if voices then
							if randomsound <= 2 then
								sound(4323235687,3,1.1,head,0,false)
							elseif randomsound >= 7 then
								sound(119764591428121,3,1.1,head,0,false)
							end
						end
					else
						if voices then
							if randomsound <= 2 then
								sound(4323235687,3,1.325,head,0,false)
							elseif randomsound >= 7 then
								sound(119764591428121,3,1.35,head,0,false)
							end
						end
					end
					anchorm = true
					weld.C0 = cframe(-0.15, -0.75, -7.5) * angles(rad(-90),rad(0),0)		
					debris:AddItem(weld,0.01)
					task.wait(0.01)
					sound(541909763,4.5,1,torso,0,false)
					gvhum.PlatformStand = true
					spawn(function()
						task.wait(5)
						gvhum.PlatformStand = false
					end)
					gvtorso.Velocity = root.CFrame.LookVector*150
					spawn(function()
						local hitfloor
						repeat 
							task.wait()
							hitfloor = raycast(gvtorso.Position, vect3(0, -1, 0), 2+gvhum.HipHeight, gv)
						until hitfloor or gvhum:GetState() == Enum.HumanoidStateType.Landed
						damage(gvhum, 18, 8595975458, 5, 1, gvhead, 0, "slam")
					end)
					task.wait(0.5)
					anchorm = false
				end
				attack = false
			end
		end
	end;
	["finisher"] = function()
		if not (attack or guarding or hurt or hum.Sit == true) then
			keycombo = ""
			hum.WalkSpeed = 0
			hum.JumpPower = 0
			hum.JumpHeight = 0
			local finhit = false
			attack = true
			anim = "finisher"
			frame = 1
			local target = nil
			local tt = nil
			local th = nil
			local thum = nil
			local randomsound = random(0,9)
			if not dresst then
				if voices then
					if randomsound <= 2 then
						sound(4323235687,3,1.1,head,0,false)
					elseif randomsound >= 7 then
						sound(119764591428121,3,1.1,head,0,false)
					end
				end
			else
				if voices then
					if randomsound <= 2 then
						sound(4323235687,3,1.3,head,0,false)
					elseif randomsound >= 7 then
						sound(119764591428121,3,1.35,head,0,false)
					end
				end
			end
			sound(541909763,2,1,torso,0,false)
			for i,v in pairs(workspace:GetDescendants()) do
				if v:FindFirstChildOfClass("Humanoid") and v ~= char then
					local vhum = v:FindFirstChildOfClass("Humanoid")
					local vtorso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso") or v:FindFirstChild("HumanoidRootPart")
					if vtorso then
						local vdistance = (vtorso.Position - root.CFrame*cframe(0,0,-1.5).p).magnitude
						if vdistance <= 5 and vhum.Health > 0 and not finhit then
							finhit = true
							sound(386946017,2,1,vtorso,0,false)
							hiteffect("sphere",vtorso)
							target = v
							tt = vtorso
							thum = vhum
							th = v:FindFirstChild("Head")
							if not overdrive then
								if vhum.Health > 7.4 then
									local creator = new("ObjectValue")
									creator.Name = "creator"
									creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
									creator.Parent = vhum
									debris:AddItem(creator, 2)
									vhum:TakeDamage(7.4)
								end
							else
								if vhum.Health > 15 then
									local creator = new("ObjectValue")
									creator.Name = "creator"
									creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
									creator.Parent = vhum
									debris:AddItem(creator, 2)
									vhum:TakeDamage(15)
								end
							end
							tt.CFrame = root.CFrame * cframe(0,0,-4.5) * angles(0,rad(180),0)
							local bpos = new("BodyPosition")
							bpos.Name = "FinisherHitBy"
							bpos.Parent = vtorso
							bpos.MaxForce = vect3(39999,39999,39999)
							bpos.D = 2000
							bpos.Position = root.CFrame * cframe(0,0,-25).Position
						end
					end
				end
			end
			task.wait(0.35)
			if finhit then
				task.wait(0.25)
				local doingfinish = true
				local killtype = ""
				spawn(function()
					task.wait(2)
					doingfinish = false
				end)
				anim = "utsusemi"
				frame = 1
				repeat
					task.wait()
					if holdingz then
						doingfinish = false
						killtype = "douga"
					elseif holdingx then
						doingfinish = false
						killtype = "shoshiro"
					elseif holdingc then
						doingfinish = false
						killtype = "saishuu"
					elseif holdingq then
						doingfinish = false
						killtype = "omoshiroi"
					elseif holdinge then
						doingfinish = false
						killtype = "gun"
					elseif holdingv then
						doingfinish = false
					end
				until not doingfinish
				if killtype == "douga" then --Last Resort
					anim = "run"
					local bpos = new("BodyVelocity")
					bpos.MaxForce = vect3(math.huge,math.huge,math.huge)
					bpos.Parent = root
					bpos.Velocity = root.CFrame.LookVector * 35
					bpos.Name  =  "FinisherMove"
					task.wait(0.5)
					local grabpart = new("Part")
					grabpart.Size = vect3(0.001,0.001,0.001)
					grabpart.Parent = target
					grabpart.Transparency = 1
					grabpart.CanCollide = false
					grabpart.CanTouch = false
					grabpart.Locked = true
					grabpart.CFrame = root.CFrame * cframe(0,0,-2.5) * angles(0,rad(180),0)
					grabpart.Anchored = false
					grabpart.CFrame = root.CFrame * cframe(0,0,-2.5) * angles(0,rad(180),0)
					local weld = new("Weld")
					weld.Parent = grabpart
					weld.Part0 = grabpart
					weld.Part1 = tt
					weld.C0 = weld.C0 * cframe(0, 0, 0)
					local Gweld = new("Weld")
					Gweld.Parent = la
					Gweld.Part0 = la
					Gweld.Name = "GRABWELD"
					Gweld.Part1 = grabpart
					Gweld.C0 = Gweld.C0:Lerp(cframe(0, -1, 0) * angles(rad(-90), rad(-180), rad(0)) * angles(rad(0), rad(30), rad(0)), 1)
					anchorm = true
					root.Anchored = true
					bpos:Destroy()
					sound(240429615,3,1,tt,0,false)
					hiteffect("grab",tt)
					anim = "sgrab"
					frame = 2
					task.wait(0.75)
					if voices then
						if not dresst then
							sound(565208983,2.5,1.2,head,0,false)
						else
							sound(565208983,2.5,1.45,head,0,false)
						end
					end
					anim = "sbgrab"
					frame = 1
					local moving = true
					spawn(function()
						while moving do
							task.wait()
							root.CFrame = root.CFrame * cframe(0,0,0.15)
						end
					end)
					Gweld.C0 = Gweld.C0:Lerp(cframe(0, -1, 0) * angles(rad(-90), rad(-180), rad(0)) * angles(rad(0), rad(30), rad(0)), 1)
					task.wait(0.3)
					frame = 2
					Gweld.C0 = Gweld.C0:Lerp(cframe(0, -1, 0) * angles(rad(-90), rad(-180), rad(0)) * angles(rad(0), rad(30), rad(0)), 1)
					task.wait(0.45)
					frame = 3
					Gweld.C0 = Gweld.C0:Lerp(cframe(0, -1, 0) * angles(rad(-90), rad(-180), rad(0)) * angles(rad(0), rad(30), rad(0)), 1)
					task.wait(0.5)
					frame = 4
					Gweld.C0 = Gweld.C0:Lerp(cframe(0, -3, -1.5) * angles(rad(90), rad(180), rad(0)) * angles(rad(-30), rad(180), rad(0)), 1)
					sound(9076453292,7.5,1,torso,0,false)
					task.wait(0.01)
					Gweld.C0 = Gweld.C0:Lerp(cframe(0, -4.5, -0) * angles(rad(90), rad(180), rad(0)) * angles(rad(-30), rad(180), rad(0)), 1)
					hiteffect("slam",tt)
					sound2(97522871949213,6.5,1,tt,0)
					debris:AddItem(Gweld,0.01)
					debris:AddItem(weld,0.01)
					task.wait(0.01)
					moving = false
					frame = 4
					grabpart:Destroy()
					if target ~= nil then
						if tt:FindFirstChild("FinisherHitBy") then tt:FindFirstChild("FinisherHitBy"):Destroy() end
						hiteffect("sphere",tt)
						tt.Anchored = true
						instantkill(target,true)
						sound(17493997647,4.5,1,tt,0,false)
						sound(7441099080,2,1,tt,0,false)
						hiteffect("blood",tt)
						thum.PlatformStand = true
						makeslam(tt,1)
					end
					task.wait(1)
					root.Anchored = false
					spawn(function()
						task.wait(0.01)
						anchorm = false
					end)
					task.wait(0.005)
				elseif killtype == "shoshiro" then	--Riot Stomp / From Me to You Too
					if not sword then
						anim = "walk"
						local bpos = new("BodyVelocity")
						bpos.Name = "FinisherMove"
						bpos.Parent = root
						bpos.MaxForce = vect3(math.huge,math.huge,math.huge)
						bpos.Velocity = root.CFrame.lookVector * 25
						task.wait(0.7)
						bpos:Destroy()
						anim = "riot"
						frame = 1
						task.wait(0.15)
						frame = 2
						sound(503711022,3,1,torso,0,false)
						if target ~= nil then
							if tt:FindFirstChild("FinisherHitBy") then tt:FindFirstChild("FinisherHitBy"):Destroy() end
							hiteffect("sphere",tt)
							sound(386946017,3,1,tt,0,false)
							tt.CFrame = root.CFrame * cframe(0,-1.5,-6) * angles(rad(90),rad(0),0)
							tt.Anchored = true
							spawn(function() task.wait(0.008) tt.Anchored = false end)
							for i,v in pairs(th:GetDescendants()) do
								if v:IsA("Decal") then
									v.Texture = "rbxassetid://629925029"
								end
							end
							thum.PlatformStand = true
							local randomscream = random(0,8)
							if randomscream == 0 then
								sound(169907033,3,1,th,0,false)
							elseif randomscream == 1 then
								sound(232921573,3,1,th,0,false)
							elseif randomscream == 2 then
								sound(166221367,3,1,th,0,false)
							elseif randomscream == 3 then
								sound(232921590,3,1,th,0,false)
							elseif randomscream == 4 then
								sound(166221318,3,1,th,0,false)
							elseif randomscream == 5 then
								sound(166221396,3,1,th,0,false)
							elseif randomscream == 6 then
								sound(166221285,3,1,th,0,false)
							elseif randomscream == 7 then
								sound(232921580,3,1,th,0,false)
							elseif randomscream == 8 then
								sound(167094166,3,1,th,0,false)
							else
								sound(169907033,3,1,th,0,false)
							end
						end
						task.wait(0.2)
						frame = 3
						task.wait(0.15)
						frame = 4
						task.wait(0.55)
						frame = 5
						if target ~= nil then
							if tt:FindFirstChild("FinisherHitBy") then tt:FindFirstChild("FinisherHitBy"):Destroy() end
							hiteffect("sphere",th)
							sound(17493997647,4.5,1,th,0,false)
							sound(7441099080,2,1,th,0,false)
							sound(6792181002,5,1,th,0,false)
							hiteffect("blood",th)
							local randsfx = random(0,11)
							if randsfx == 0 then
								sound(245185996,3,1,th,0,false)
							elseif randsfx == 1 then
								sound(245185986,3,1,th,0,false)
							elseif randsfx == 2 then
								sound(245186002,3,1,th,0,false)
							elseif randsfx == 3 then
								sound(8353373964,3,1,th,0,false)
							elseif randsfx == 4 then
								sound(8353372061,3,1,th,0,false)
							elseif randsfx == 5 then
								sound(8353373547,3,1,th,0,false)
							elseif randsfx == 6 then
								sound(8353373765,3,1,th,0,false)
							elseif randsfx == 7 then
								sound(8353374220,3,1,th,0,false)
							elseif randsfx == 8 then
								sound(8353373328,3,1,th,0,false)
							elseif randsfx == 9 then
								sound(8353373157,3,1,th,0,false)
							elseif randsfx == 10 then
								sound(8353372946,3,1,th,0,false)
							elseif randsfx == 11 then
								sound(8353372636,3,1,th,0,false)
							else
								sound(8353372319,3,1,th,0,false)
							end
							th.Transparency = 1
							spawn(function()
								for i = 1,random(25,30) do
									local heru = new("Part")
									heru.Name = "HeruSmashed"
									heru.Parent = workspace
									heru.Size = vect3(0.25,0.25,0.25)
									heru.CFrame = th.CFrame * cframe(random(-10,10)/20,random(-10,10)/20,random(-10,10)/20)
									debris:AddItem(heru, 7)
									if random(0,3) == 0 then
										heru.BrickColor = th.BrickColor
										heru.Material = th.Material
									else
										heru.BrickColor = bc("Maroon")
										heru.Material = Enum.Material.Granite
									end
									task.wait()
								end
							end)
							for i,v in pairs(th:GetDescendants()) do
								if v:IsA("Decal") or v:IsA("Weld") or v:IsA("WeldConstraint")then
									v:Destroy()
								end
							end
							for i,v in pairs(target:GetDescendants()) do
								if v:IsA("Hat") or v:IsA("Accessory") then
									v:Destroy()
								end
							end
							sound(18567893733,2.5,1,tt,0,false)
							makeblaudy(target,tt,th,15)
							instantkill(target,false)
						end
						task.wait(1)
						frame = 6
						task.wait(0.1)
					else
						anim = "walk"
						local bpos = new("BodyVelocity")
						bpos.Name = "FinisherMove"
						bpos.Parent = root
						bpos.MaxForce = vect3(math.huge,math.huge,math.huge)
						bpos.Velocity = root.CFrame.lookVector * 25
						task.wait(0.35)
						bpos:Destroy()
						anim = "shostart"
						frame = 1
						task.wait(0.75)
						frame = 2
						sound2(4471648128,3,1,Weapon,0,false)
						task.wait(0.35)
						local fkatana = new("Part")
						fkatana.Name = "FakeKatana"
						fkatana.Parent = script
						fkatana.Size = vect3(0.001,0.001,0.001)
						fkatana.CanTouch = false
						fkatana.CanCollide = false
						fkatana.Locked = true
						fkatana.Anchored = true
						fkatana.CFrame = Weapon.CFrame
						local fkatanam = WeaponMesh:Clone()
						fkatanam.Parent = fkatana
						task.wait(0.005)
						Weapon.Transparency = 1
						anim = "shoshiro"
						frame = 1
						chatter("I'm tired of all of this crap...")
						if target ~= nil then
							if tt:FindFirstChild("FinisherHitBy") then tt:FindFirstChild("FinisherHitBy"):Destroy() end
							local bpos = new("BodyPosition")
							bpos.Name = "FinisherHitBy"
							bpos.Parent = tt
							bpos.MaxForce = vect3(39999,39999,39999)
							bpos.D = 2000
							bpos.Position = root.CFrame * cframe(1.5,0,-15).Position
						end
						task.wait(0.25)
						frame = 2
						sound(7267892760,2.5,1,torso,0,false)
						task.wait(0.15)
						local fkatana2 = new("Part")
						fkatana2.Name = "FakeKatana"
						fkatana2.Parent = script
						fkatana2.Size = vect3(0.001,0.001,0.001)
						fkatana2.CanTouch = false
						fkatana2.CanCollide = false
						fkatana2.Locked = true
						fkatana2.Anchored = true
						fkatana2.CFrame = fkatana.CFrame
						fkatana.Transparency = 1
						local fkatanam = WeaponMesh:Clone()
						fkatanam.Parent = fkatana2
						task.wait(0.001)
						fkatana:Destroy()
						sound(169380525,3.5,1,torso,0,false)
						frame = 3
						spawn(function()
							for i = 1,20 do
								fkatana2.CFrame = fkatana2.CFrame * cframe(0,0,0.15)
								task.wait()
							end
							for i = 1,15 do
								fkatana2.CFrame = fkatana2.CFrame * CFrame.fromEulerAnglesXYZ(math.rad(-30),0,0)
								if (i == 3 or i == 9 or i == 15) then
									sound2(200632136,3,1,fkatana2,0,false)
								end
								task.wait()
							end
							for i = 1,45 do
								fkatana2.CFrame = fkatana2.CFrame * cframe(0,0,0.3)
								task.wait()
							end
							task.wait(2)
							chatter("Die.")
							if voices then
								if not dresst then
									sound(160212892,2.5,1.25,head,0,false)
								else
									sound(160212892,2.5,1.5,head,0,false)
								end
							end
							sound(122258480286280,4.5,1,fkatana2,0,false)
							for i = 1,13 do
								fkatana2.CFrame = fkatana2.CFrame * cframe(0,-0.05,-2)
								task.wait()
							end
							sound2(17772894570,4.5,1,fkatana2,0,false)
							sound2(136583576022096,5,1,fkatana2,0,false)
							sound2(17493997647,4.5,1,fkatana2,0,false)
							if target ~= nil then
								if tt:FindFirstChild("FinisherHitBy") then tt:FindFirstChild("FinisherHitBy"):Destroy() end
								hiteffect("sphere",tt)
								sound(7441099080,2,1,tt,0,false)
								hiteffect("blood",tt)
								tt.Anchored = true
								instantkill(target,true)
							end
							task.wait(2)
							if random(0,9) <= 2 then
								chatter("Hit the bricks, pal, you're done.")
								if voices then
									if not dresst then
										sound(83698740666045,2.5,1.2,head,0,false)
									else
										sound(83698740666045,2.5,1.4,head,0,false)
									end
								end
							end
							if target ~= nil then
								if tt:FindFirstChild("FinisherHitBy") then tt:FindFirstChild("FinisherHitBy"):Destroy() end
								hiteffect("blood",tt)
								tt.Anchored = false
								tt.Velocity = root.CFrame.LookVector * 45
								spawn(function()
									task.wait(0.25)
									hiteffect("blood",tt)
									task.wait(3.75)
									local bpool = new("Part")
									bpool.Parent = workspace
									bpool.Name = "BloodPool"
									bpool.Size = vect3(0.1, 0.1, 0.1)
									bpool.Anchored = true
									bpool.BottomSurface = Enum.SurfaceType.Smooth
									bpool.BrickColor = bc("Crimson")
									bpool.CanCollide = false
									bpool.CanTouch = false
									bpool.Locked = true
									bpool.TopSurface = Enum.SurfaceType.Smooth
									bpool.Transparency = 1
									bpool.Shape = Enum.PartType.Cylinder
									bpool.CFrame = tt.CFrame * cframe(0,0,0.45) * angles(rad(90),rad(90),rad(90))
									local tween = tweens:Create(bpool, TweenInfo.new(5), {Size = vect3(0.1, 15, 15), Transparency = 0})
									tween:Play()
									tween.Completed:Connect(function() 
										task.wait(10)
										local tween2 = tweens:Create(bpool, TweenInfo.new(4.5), {Transparency = 1})
										tween2:Play()
										tween2.Completed:Connect(function() 
											bpool:Destroy()
										end)
									end)
								end)
							end
							sound2(3744368077,3,1,fkatana2,0,false)
							for i = 1,25 do
								fkatana2.CFrame = fkatana2.CFrame * cframe(0,0,0.5)
								task.wait()
							end
							for i = 1,15 do
								fkatana2.CFrame = fkatana2.CFrame * CFrame.fromEulerAnglesXYZ(math.rad(30),0,0)
								if (i == 3 or i == 9 or i == 15) then
									sound2(200632136,3,1,fkatana2,0,false)
								end
								task.wait()
							end
							for i = 1,25 do
								fkatana2.CFrame = fkatana2.CFrame * cframe(0,0,-0.15)
								task.wait()
							end
						end)
						task.wait(0.5)
						frame = 4
						sound(240428955, 1.5, 0.75, head, 0,false)
						task.wait(0.5)
						frame = 3
						task.wait(1)
						frame = 5
						sound(240428955, 1.5, 0.75, head, 0,false)
						task.wait(0.5)
						frame = 3
						task.wait(5)
						anim = "shostart"
						fkatana2:Destroy()
						Weapon.Transparency = 0
						sound(240429615,3,1,Weapon,0,false)
						frame = 2
						task.wait(0.1)
						sound2(4471648128,3,1,Weapon,0,false)
						frame = 1
						task.wait(0.25)
					end
				elseif killtype == "saishuu" then	--Flash Cut / Nakoruru
					if target ~= nil then
						if tt:FindFirstChild("FinisherHitBy") then tt:FindFirstChild("FinisherHitBy"):Destroy() end
						local bpos = new("BodyPosition")
						bpos.Name = "FinisherHitBy"
						bpos.Parent = tt
						bpos.MaxForce = vect3(39999,39999,39999)
						bpos.D = 2000
						bpos.Position = root.CFrame * cframe(0,0,-25).Position
					end
					anim = "run"
					local bpos = new("BodyVelocity")
					bpos.Name = "FinisherMove"
					bpos.Parent = root
					bpos.MaxForce = vect3(math.huge,math.huge,math.huge)
					bpos.Velocity = root.CFrame.lookVector * 25
					task.wait(0.75)
					bpos:Destroy()
					if not sword then
						anim = "fcut"
						frame = 1
						sound(3422592990,2.5,1,WeaponSheath,0,false)
						if target ~= nil then
							if tt:FindFirstChild("FinisherHitBy") then tt:FindFirstChild("FinisherHitBy"):Destroy() end
							local bpos = new("BodyPosition")
							bpos.Name = "FinisherHitBy"
							bpos.Parent = tt
							bpos.MaxForce = vect3(39999,39999,39999)
							bpos.D = 2000
							bpos.Position = root.CFrame * cframe(0,0,-9.15).Position
						end
						task.wait(1)
						sparker(WeaponSheath)
						task.wait(1)
						WeaponTrail.Enabled = true
						Weapon.Transparency = 0
						FWeapon.Transparency = 1
						frame = 2
						sound(7058339337,4.5,1,Weapon,0,false)
						task.wait(0.045)
						sound2(7122613461,5,1,Weapon,0,false)
						if target ~= nil then
							if tt:FindFirstChild("FinisherHitBy") then tt:FindFirstChild("FinisherHitBy"):Destroy() end
							hiteffect("sphere",th)
							sound(17493997647,4.5,1,th,0,false)
							sound(7441099080,2,1,th,0,false)
							hiteffect("blood",th)
							instantkill(target,true,true)
							if tt:FindFirstChild("Neck") then tt:FindFirstChild("Neck"):Destroy() end
							if th:FindFirstChild("Neck") then th:FindFirstChild("Neck"):Destroy() end
							for i,v in pairs(target:GetDescendants()) do
								if v:IsA("Hat") or v:IsA("Accessory") then
									if v:FindFirstChild("Handle") then
										v:FindFirstChild("Handle").CanCollide = true
									end
								end
							end
							th.CanCollide = true
							tt.Velocity = root.CFrame.lookVector * 30
							th.Velocity = root.CFrame.lookVector * 15 + root.CFrame.upVector * 30
							sound(18567893733,2.5,1,tt,0,false)
							makeblaudy(target,tt,th,15)
						end
						frame = 3
						task.wait(0.45)
						sound(7058340527,2.5,1,Weapon,0,false)
						frame = 2
						task.wait(0.045)
						sound(211134014,3.6,1,Weapon,0,false)
						WeaponTrail.Enabled = false
						Weapon.Transparency = 1
						FWeapon.Transparency = 0
						frame = 4
						task.wait(1.15)
					else
						anim = "sfcut"
						frame = 1
						sound(3422592990,2.5,1,WeaponSheath,0,false)
						if target ~= nil then
							if tt:FindFirstChild("FinisherHitBy") then tt:FindFirstChild("FinisherHitBy"):Destroy() end
							local bpos = new("BodyPosition")
							bpos.Name = "FinisherHitBy"
							bpos.Parent = tt
							bpos.MaxForce = vect3(39999,39999,39999)
							bpos.D = 2000
							bpos.Position = root.CFrame * cframe(1.5,0,-11.5).Position
						end
						task.wait(0.15)
						frame = 2
						task.wait(0.75)
						WeaponTrail.Enabled = true
						frame = 3
						sound(5862482798,4.5,1,Weapon,0,false)
						task.wait(0.045)
						sound2(344936319,5,1,Weapon,0,false)
						if target ~= nil then
							if tt:FindFirstChild("FinisherHitBy") then tt:FindFirstChild("FinisherHitBy"):Destroy() end
							hiteffect("sphere",th)
							sound(17493997647,4.5,1,th,0,false)
							sound(7441099080,2,1,th,0,false)
							hiteffect("blood",th)
							instantkill(target,true,true)
							sound(18567893733,2.5,1,tt,0,false)
							makeblaudy(target,tt,th,15)
							if tt:FindFirstChild("Neck") then tt:FindFirstChild("Neck"):Destroy() end
							if th:FindFirstChild("Neck") then th:FindFirstChild("Neck"):Destroy() end
							for i,v in pairs(target:GetDescendants()) do
								if v:IsA("Hat") or v:IsA("Accessory") then
									if v:FindFirstChild("Handle") then
										v:FindFirstChild("Handle").CanCollide = true
									end
								end
							end
							th.CanCollide = true
							tt.Velocity = root.CFrame.lookVector * 125
							th.Velocity = root.CFrame.lookVector * 15 + root.CFrame.upVector * 30
						end
						local bpos = new("BodyPosition")
						bpos.Name = "FinisherMove"
						bpos.Parent = root
						bpos.MaxForce = vect3(39999,39999,39999)
						bpos.D = 1500
						bpos.Position = root.CFrame * cframe(0,0,-60).Position
						frame = 4
						task.wait(1.75)
						WeaponTrail.Enabled = false
						bpos:Destroy()
						frame = 5
						task.wait(0.068)
					end
				elseif killtype == "omoshiroi" then	--Five-Seven / Kamui Tokinomiya
					if not sword then
						anim = "fiveseven"
						frame = 1
						if target ~= nil then
							if tt:FindFirstChild("FinisherHitBy") then tt:FindFirstChild("FinisherHitBy"):Destroy() end
							local bpos = new("BodyPosition")
							bpos.Name = "FinisherHitBy"
							bpos.Parent = tt
							bpos.MaxForce = vect3(39999,39999,39999)
							bpos.D = 2000
							bpos.Position = root.CFrame * cframe(0,0,-25).Position
						end
						local pistol = makegun()
						task.wait(1)
						frame = 2
						sound(158037267,2,1,la,0,false)
						task.wait(0.575)
						sound(1583819337,2.5,random(90,110)/100,pistol,0.09,false)
						local gshot = new("Part")
						local gshotm = new("BlockMesh")
						local gshotl = new("PointLight")
						local gshotp = new("ParticleEmitter")
						local gshotw = new("Weld")
						gshot.Name = "Main"
						gshot.Parent = pistol
						gshot.Transparency = 1
						gshot.Size = vect3(0.294, 0.294, 0.299)
						gshot.CanCollide = false
						gshot.CanTouch = false
						gshot.Locked = true
						gshotm.Parent = gshot
						gshotm.Scale = vect3(0.218, 0.164, 0.082)
						gshotl.Name = "FlashFX"
						gshotl.Parent = gshot
						gshotl.Color = color(1, 1, 0)
						gshotl.Range = 6
						gshotl.Brightness = 10
						gshotl.Shadows = true
						gshotp.Name = "FX"
						gshotp.Parent = gshot
						gshotp.Speed = NumberRange.new(0, 0)
						gshotp.Rotation = NumberRange.new(-360, 360)
						gshotp.LightEmission = 0.5
						gshotp.Texture = "http://www.roblox.com/asset/?id=233113663"
						gshotp.Size = NumberSequence.new(2,2)
						gshotp.Lifetime = NumberRange.new(0.07500000298023224, 0.07500000298023224)
						gshotp.LockedToPart = true
						gshotp.Rate = 10
						gshotp.RotSpeed = NumberRange.new(-360, 360)
						gshotw.Parent = gshot
						gshotw.C0 = cframe(-1, -0.5, 0, 1, -0, 0, 0, 1, 0, -0, 0, 1)
						gshotw.Part0 = gshot
						gshotw.Part1 = pistol
						local bshell = new("Part")
						local bsc = {"New Yeller","Bright yellow","Gold"}
						bshell.Parent = script
						bshell.Name = "BulletShell"
						bshell.BrickColor = bc(bsc[random(#bsc)])
						bshell.CanCollide = true
						bshell.Locked = true
						bshell.CanTouch = false
						bshell.Size = vect3(0.001,0.001,0.001)
						bshell.CFrame = pistol.CFrame * cframe(random(-1,1),random(-1,1),random(-1,1))
						bshell.Velocity = vect3(random(-30,30),random(-30,30),random(-30,30))
						local shellm = new("SpecialMesh")
						shellm.Parent = bshell
						shellm.MeshId = "rbxassetid://1032136926"
						shellm.Scale = vect3(0.25, 0.25, 0.25)
						spawn(function()
							task.wait(5)
							local tween = tweens:Create(bshell, TweenInfo.new(2.5), {Transparency = 1})
							tween:Play()
							tween.Completed:Connect(function() bshell:Destroy() end)
						end)
						--darn it I hate stealing code
						local hi,posu = castproperyray(gshot.Position, tt.Position, 1000, char)
						local gtrail = new("Part")
						gtrail.formFactor = 3
						gtrail.Reflectance = 0
						gtrail.Transparency = 0.5
						gtrail.CanCollide = false
						gtrail.Locked = true
						gtrail.Anchored = true
						gtrail.BrickColor = bc("New Yeller")
						gtrail.Name = "Trail"
						gtrail.Size = vect3(0.001,0.001,0.001)
						gtrail.Position = torso.Position
						gtrail.Material = "Neon"
						gtrail:BreakJoints()
						gtrail.Parent = pistol
						local meshu = new("CylinderMesh",gtrail)
						local disu = (gshot.Position - posu).Magnitude
						gtrail.Size = vect3(0.25,disu,0.25)
						gtrail.CFrame = cframe(gshot.Position, posu) * cframe(0, 0, -disu/2) * angles(rad(90),rad(0),rad(0))
						local tween = tweens:Create(gtrail, TweenInfo.new(0.45), {Transparency = 1})
						tween:Play()
						tween.Completed:Connect(function() gtrail:Destroy() end)
						if target ~= nil then
							if tt:FindFirstChild("FinisherHitBy") then tt:FindFirstChild("FinisherHitBy"):Destroy() end
							hiteffect("sphere",tt)
							sound(144884872,4.5,1,tt,0,false)
							sound(17493997647,4.5,1,tt,0,false)
							sound(7441099080,2,1,tt,0,false)
							hiteffect("blood",tt)
							instantkill(target,true)
							tt.Velocity = root.CFrame.LookVector * 115 + root.CFrame.upVector * 45
							spawn(function()
								task.wait(4)
								local bpool = new("Part")
								bpool.Parent = workspace
								bpool.Name = "BloodPool"
								bpool.Size = vect3(0.1, 0.1, 0.1)
								bpool.Anchored = true
								bpool.BottomSurface = Enum.SurfaceType.Smooth
								bpool.BrickColor = bc("Crimson")
								bpool.CanCollide = false
								bpool.CanTouch = false
								bpool.Locked = true
								bpool.TopSurface = Enum.SurfaceType.Smooth
								bpool.Transparency = 1
								bpool.Shape = Enum.PartType.Cylinder
								bpool.CFrame = tt.CFrame * cframe(0,0,0.45) * angles(rad(90),rad(90),rad(90))
								local tween = tweens:Create(bpool, TweenInfo.new(5), {Size = vect3(0.1, 15, 15), Transparency = 0})
								tween:Play()
								tween.Completed:Connect(function() 
									task.wait(10)
									local tween2 = tweens:Create(bpool, TweenInfo.new(4.5), {Transparency = 1})
									tween2:Play()
									tween2.Completed:Connect(function() 
										bpool:Destroy()
									end)
								end)
							end)
						end
						task.wait(0.25)
						gshot:Destroy()
						task.wait(0.75)
						frame = 3
						sound2(139012056448635,3.25,1,pistol,0,false)
						task.wait(0.15)
						pistol:Destroy()
					else
						if target ~= nil then
							if tt:FindFirstChild("FinisherHitBy") then tt:FindFirstChild("FinisherHitBy"):Destroy() end
							local bpos = new("BodyPosition")
							bpos.Name = "FinisherHitBy"
							bpos.Parent = tt
							bpos.MaxForce = vect3(39999,39999,39999)
							bpos.D = 2000
							bpos.Position = root.CFrame * cframe(0,0,-25).Position
						end
						anim = "run"
						local bpos = new("BodyVelocity")
						bpos.Name = "FinisherMove"
						bpos.Parent = root
						bpos.MaxForce = vect3(math.huge,math.huge,math.huge)
						bpos.Velocity = root.CFrame.lookVector * 25
						task.wait(0.65)
						bpos:Destroy()
						if target ~= nil then
							if tt:FindFirstChild("FinisherHitBy") then tt:FindFirstChild("FinisherHitBy"):Destroy() end
							local bpos = new("BodyPosition")
							bpos.Name = "FinisherHitBy"
							bpos.Parent = tt
							bpos.MaxForce = vect3(39999,39999,39999)
							bpos.D = 2000
							bpos.Position = root.CFrame * cframe(0,0,-9.5).Position
						end
						anim = "slash"
						frame = 1
						sparker(Weapon)
						task.wait(1)
						local randomsound = random(0,9)
						if not dresst then
							if voices then
								if randomsound <= 2 then
									sound(83253261479036,3,1.05,head,0,false)
								elseif randomsound >= 7 then
									sound(90086411940906,3,1.05,head,0,false)
								end
							end
						else
							if voices then
								if randomsound <= 2 then
									sound(83253261479036,3,1.3,head,0,false)
								elseif randomsound >= 7 then
									sound(90086411940906,3,1.3,head,0,false)
								end
							end
						end
						anim = "hslash"
						frame = 1
						task.wait(0.15)
						WeaponTrail.Enabled = true
						sound(338586299,5,1,Weapon,0,false)
						anim = "slash"
						frame = 2
						if target ~= nil then
							if tt:FindFirstChild("FinisherHitBy") then tt:FindFirstChild("FinisherHitBy"):Destroy() end
							sound(3203895449,3.5,1,tt,0,false)
							hiteffect("sphere",tt)
							sound(17493997647,4.5,1,tt,0,false)
							sound(7441099080,2,1,tt,0,false)
							hiteffect("blood",tt)
							tt.CFrame = root.CFrame * cframe(0,0,-6.15) * angles(rad(-45),rad(180),0)
							tt.Anchored = true
							spawn(function() task.wait(0.008) tt.Anchored = false end)
							thum.PlatformStand = true
						end
						task.wait(0.045)
						frame = 4
						task.wait(0.1)
						frame = 3
						task.wait(1)
						WeaponTrail.Enabled = false
						task.wait(1.5)
						if target ~= nil then
							if tt:FindFirstChild("FinisherHitBy") then tt:FindFirstChild("FinisherHitBy"):Destroy() end
							hiteffect("sphere",tt)
							hiteffect("bsphere",tt)
							sound(17493997647,4.5,1,tt,0,false)
							sound(7441099080,2,1,tt,0,false)
							hiteffect("blood",tt)
							instantkill(target,true)
							local randsfx = random(0,11)
							if randsfx == 0 then
								sound(8238481799,3,1,tt,0,false)
							elseif randsfx == 1 then
								sound(8238481384,3,1,tt,0,false)
							elseif randsfx == 2 then
								sound(8238480935,3,1,tt,0,false)
							elseif randsfx == 3 then
								sound(8238481132,3,1,tt,0,false)
							elseif randsfx == 4 then
								sound(8535266847,3,1,tt,0,false)
							elseif randsfx == 5 then
								sound(8535266584,3,1,tt,0,false)
							elseif randsfx == 6 then
								sound(8535267070,3,1,tt,0,false)
							elseif randsfx == 7 then
								sound(8535265765,3,1,tt,0,false)
							elseif randsfx == 8 then
								sound(8535266190,3,1,tt,0,false)
							elseif randsfx == 9 then
								sound(8535265949,3,1,tt,0,false)
							elseif randsfx == 10 then
								sound(8535292823,3,1,tt,0,false)
							elseif randsfx == 11 then
								sound(8535292656,3,1,tt,0,false)
							else
								sound(8535292514,3,1,tt,0,false)
							end
							for i,v in pairs(target:GetDescendants()) do
								if v:IsA("BallSocketConstraint") then
									v:Destroy()
								end
							end
							target:BreakJoints()
							if target:FindFirstChild("HumanoidRootPart") then target:FindFirstChild("HumanoidRootPart").CanCollide = false end
							for i,v in pairs(target:GetDescendants()) do
								if v:IsA("BasePart") and v.Name ~= "HumanoidRootPart" then
									v.CanCollide = true
									v.Velocity = vect3(random(-15,15),random(-15,15),random(-15,15))
								end
							end
							sound(18567893733,2.5,1,tt,0,false)
							makeblaudy(target,tt,th,15)
						end
						task.wait(1.5)
					end
				elseif killtype == "gun" then	--Desert Eagle
					anim = "gunfinish"
					frame = 1
					local weapo = makebanisher()
					local handoru = weapo:WaitForChild("Weiss")
					local fira = weapo:WaitForChild("Eyezen")
					sound(240784215,3,1,handoru,0,false)
					task.wait(2.45)
					frame = 2
					sound(240784215,3,1,handoru,0,false)
					task.wait(0.1)
					sound(136523485,0.5,1,handoru,0,false)
					--darn it I hate stealing code
					local hi,posu = castproperyray(fira.Position, tt.Position, 1000, char)
					local gtrail = new("Part")
					gtrail.formFactor = 3
					gtrail.Reflectance = 0
					gtrail.Transparency = 0.5
					gtrail.CanCollide = false
					gtrail.Locked = true
					gtrail.Anchored = true
					gtrail.BrickColor = bc("Really red")
					gtrail.Name = "Trail"
					gtrail.Size = vect3(0.001,0.001,0.001)
					gtrail.Position = torso.Position
					gtrail.Material = "Neon"
					gtrail:BreakJoints()
					gtrail.Parent = Model0
					local meshu = new("CylinderMesh",gtrail)
					local disu = (fira.Position - posu).Magnitude
					gtrail.Size = vect3(0.25,disu,0.25)
					gtrail.CFrame = cframe(fira.Position, posu) * cframe(0, 0, -disu/2) * angles(rad(90),rad(0),rad(0))
					local tween = tweens:Create(gtrail, TweenInfo.new(0.45), {Transparency = 1})
					tween:Play()
					tween.Completed:Connect(function() gtrail:Destroy() end)
					local scream = nil
					if target ~= nil then
						if tt:FindFirstChild("FinisherHitBy") then tt:FindFirstChild("FinisherHitBy"):Destroy() end
						hiteffect("sphere",tt)
						sound(17493997647,4.5,1,tt,0,false)
						sound(7441099080,2,1,tt,0,false)
						hiteffect("blood",tt)
						local gunbleed = new("ParticleEmitter")
						gunbleed.Parent = tt
						gunbleed.Speed = NumberRange.new(10, 10)
						gunbleed.Color = ColorSequence.new(color(1, 0, 0),color(1, 0, 0))
						gunbleed.Texture = "http://www.roblox.com/asset/?id=241685484"
						gunbleed.Size = NumberSequence.new(0.10000000149011612,0.10000000149011612)
						gunbleed.Acceleration = vect3(0, -10, 0)
						gunbleed.Lifetime = NumberRange.new(1, 2)
						gunbleed.Rate = 99
						gunbleed.RotSpeed = NumberRange.new(260, 260)
						gunbleed.SpreadAngle = vect2(360, 360)
						gunbleed.VelocitySpread = 360
						local bpart = new("Part", tt)
						bpart.Size = vect3(0.2, 0.2, 0.2)
						bpart.CanTouch = false
						bpart.CanCollide = false
						bpart.Position = th.Position + vect3(0, 1, 0)
						bpart.Transparency = 1
						local bpartw = new("Weld", tt)
						bpartw.Part0 = tt
						bpartw.Part1 = bpart
						bpartw.C0 = angles(-1, 0, -0.35) * cframe(0, 1, 0.8)
						sound(18567893733,2.5,1,tt,0,false)
						makeblaudy(target,tt,th,3,true)
						spawn(function()
							task.wait(3)
							gunbleed.Enabled = false
							debris:AddItem(gunbleed,2.5)
						end)
						for i,v in pairs(th:GetDescendants()) do
							if v:IsA("Decal") then
								v.Texture = "rbxassetid://190328259"
							end
						end
						scream = new("Sound")
						scream.Parent = th
						scream.Volume = 2
						scream.Looped = true
						local randomscream = random(0,5)
						if randomscream == 0 then
							scream.SoundId = "rbxassetid://292124372"
						elseif randomscream == 1 then
							--Gachimuchi moment (R.I.P. Billy Herrington)
							scream.SoundId = "rbxassetid://4463242823"
						elseif randomscream == 2 then
							scream.SoundId = "rbxassetid://17521683584"
						elseif randomscream == 3 then
							scream.SoundId = "rbxassetid://4254922205"
						elseif randomscream == 4 then
							scream.SoundId = "rbxassetid://86205795914222"
						else
							scream.SoundId = "rbxassetid://99546010329907"
						end
						scream:Play()
						scream.TimePosition = 0
						local bpos = new("BodyPosition")
						bpos.Name = "FinisherHitBy"
						bpos.Parent = tt
						bpos.MaxForce = vect3(39999,39999,39999)
						bpos.D = 2000
						bpos.Position = root.CFrame * cframe(0,0,-28.5).Position
					end
					task.wait(0.45)
					local randomquote = random(0,5)
					--GTA M.U.G.E.N. character moment
					if randomquote == 0 then
						chatter("See? I got a gun!")
					elseif randomquote == 1 then
						chatter("Yeah, look at this gun! Now who's the boss?")
					elseif randomquote == 2 then
						chatter("Oh! You need it, don't you?")
					elseif randomquote == 3 then
						chatter("That you gonna be unhappy now...")
					elseif randomquote == 4 then
						chatter("Look at my nice gun.")
					else
						chatter("You're messing with the wrong guy!")
					end
					task.wait(1.55)
					frame = 3
					sound(240784215,3,1,handoru,0,false)
					task.wait(0.175)
					anim = "walk"
					local bpos = new("BodyVelocity")
					bpos.Name = "FinisherMove"
					bpos.Parent = root
					bpos.MaxForce = vect3(math.huge,math.huge,math.huge)
					bpos.Velocity = root.CFrame.lookVector * 25
					task.wait(1)
					bpos:Destroy()
					anim = "swin"
					frame = 1
					if target ~= nil then
						if tt:FindFirstChild("FinisherHitBy") then tt:FindFirstChild("FinisherHitBy"):Destroy() end
						tt.CFrame = root.CFrame * cframe(0,0,-10) * angles(rad(-45),rad(180),0)
						tt.Anchored = true
						spawn(function() task.wait(0.008) tt.Anchored = false end)
						thum.PlatformStand = true
					end
					task.wait(0.15)
					frame = 2
					task.wait(0.75)
					frame = 3
					if randomquote == 0 then
						chatter("You really messed up now, fool!")
					elseif randomquote == 1 then
						chatter("Man, you should have run!")
					elseif randomquote == 2 then
						chatter("Here you go!")
					elseif randomquote == 3 then
						chatter("Party time.")
					elseif randomquote == 4 then
						chatter("Yes... that is it...")
					else
						chatter("Screw off! I'll make you cry!")
					end
					task.wait(0.15)
					frame = 5
					sound(240784215,3,1,handoru,0,false)
					task.wait(1.75)
					sound(136523485,0.5,1,handoru,0,false)
					--darn it I hate stealing code
					local hi,posu = castproperyray(fira.Position, th.Position, 1000, char)
					local gtrail = new("Part")
					gtrail.formFactor = 3
					gtrail.Reflectance = 0
					gtrail.Transparency = 0.5
					gtrail.CanCollide = false
					gtrail.Locked = true
					gtrail.Anchored = true
					gtrail.BrickColor = bc("Really red")
					gtrail.Name = "Trail"
					gtrail.Size = vect3(0.001,0.001,0.001)
					gtrail.Position = torso.Position
					gtrail.Material = "Neon"
					gtrail:BreakJoints()
					gtrail.Parent = Model0
					local meshu = new("CylinderMesh",gtrail)
					local disu = (fira.Position - posu).Magnitude
					gtrail.Size = vect3(0.25,disu,0.25)
					gtrail.CFrame = cframe(fira.Position, posu) * cframe(0, 0, -disu/2) * angles(rad(90),rad(0),rad(0))
					local tween = tweens:Create(gtrail, TweenInfo.new(0.45), {Transparency = 1})
					tween:Play()
					tween.Completed:Connect(function() gtrail:Destroy() end)
					if scream ~= nil then
						scream:Destroy()
					end
					if target ~= nil then
						if tt:FindFirstChild("FinisherHitBy") then tt:FindFirstChild("FinisherHitBy"):Destroy() end
						hiteffect("sphere",th)
						sound(17493997647,4.5,1,th,0,false)
						sound(7441099080,2,1,th,0,false)
						sound(18567893733,5,1,th,0,false)
						hiteffect("blood",th)
						th.Transparency = 1
						makeblaudy(target,tt,th,15,false)
						for i,v in pairs(th:GetDescendants()) do
							if v:IsA("Decal") then
								v.Transparency = 1
							end
						end
						for i,v in pairs(target:GetDescendants()) do
							if v:IsA("Hat") or v:IsA("Accessory") then
								v:Destroy()
							end
						end
						instantkill(target,false)
					end
					frame = 6
					task.wait(0.1)
					frame = 5
					task.wait(3.5)
					sound(3422592990,3,1,torso,0,false)
					frame = 1
					task.wait(0.125)
					weapo:Destroy()
				end
				if target ~= nil then
					if tt:FindFirstChild("FinisherHitBy") then tt:FindFirstChild("FinisherHitBy"):Destroy() end
				end
			end
			hum.WalkSpeed = ogws
			hum.JumpPower = ogjp
			hum.JumpHeight = ogjh
			attack = false	
		end
	end,
	["tobu"] = function()
		if not (attack or guarding or hurt or hum.Sit == true or sitting or lying) then
			keycombo = ""
			if player.UserId ~= 50203523 then if mp < 40 then return end else if mp < (40/10) then return end end
			if player.UserId == 50203523 then
				mp = mp - (40/10)
			else
				mp = mp - 40
			end
			attack = true
			hum.WalkSpeed = 0
			hum.JumpPower = 0
			hum.JumpHeight = 0			
			if not sword then
				if not dresst then
					if voices then
						sound(75994767030916,4.5,1.2,head,0,false)
					end
				else
					if voices then
						sound(75994767030916,4.5,1.45,head,0,false)
					end
				end
				anim = "tobu"
				frame = 1
				local fireh = new("Part")
				local firehp = new("ParticleEmitter")
				local firehw = new("Weld")
				fireh.Name = "Fire"
				fireh.Parent = script
				fireh.Transparency = 1
				fireh.CanCollide = false
				fireh.CanTouch = false
				fireh.Locked = true
				fireh.Size = vect3(0.001, 0.001, 0.001)
				firehp.Name = "FireMain"
				firehp.Parent = fireh
				firehp.Orientation = Enum.ParticleOrientation.VelocityParallel
				firehp.Rotation = NumberRange.new(-360, 360)
				firehp.Color = ColorSequence.new(color(0.772549, 0.168627, 0.0627451),color(0.772549, 0.168627, 0.0627451))
				firehp.LightEmission = 0.800000011920929
				firehp.LightInfluence = 0.15000000596046448
				firehp.Texture = "http://www.roblox.com/asset/?id=4976779930"
				firehp.Transparency = NumberSequence.new(0,1)
				firehp.Size = NumberSequence.new(0.699999988079071,0.699999988079071,0)
				firehp.Brightness = 4.400000095367432
				firehp.Lifetime = NumberRange.new(0.25, 0.25)
				firehp.Rate = 80
				firehp.SpreadAngle = vect2(360, -360)
				firehp.VelocitySpread = 360
				firehw.Parent = fireh
				firehw.C0 = cframe(0, 1.5, 0, 1, -0, 0, 0, 1, 0, -0, 0, 1)
				firehw.Part0 = fireh
				firehw.Part1 = la
				spawn(function()
					task.wait(0.35)
					firehp.Enabled = false
					debris:AddItem(fireh,1.65)
				end)
				sound2(3518146972,5.5,1,torso,0,false)
				task.wait(0.15)
				frame = 2
				task.wait(0.1)
				frame = 3
			else
				chatter("Ashiru Flame!")
				if game.PlaceId == 11510416200 or game.PlaceId == 126783576555525 or game.PlaceId == 89201052571047 or game.PlaceId == 79868761121850 then
					local randoml = random(0,2)
					if not dresst then
						if voices then
							if randoml == 0 then
								sound(99813049652900,4.5,1.2,head,14.82,false,true,1.764)
							elseif randoml == 1 then
								sound(99813049652900,4.5,1.2,head,60.25,false,true,1.956)
							else
								sound(99813049652900,4.5,1.2,head,116.23,false,true,1.929)
							end
						end
					else
						if voices then
							if randoml == 0 then
								sound(99813049652900,4.5,1.6,head,14.82,false,true,1.412)
							elseif randoml == 1 then
								sound(99813049652900,4.5,1.6,head,60.25,false,true,1.564)
							else
								sound(99813049652900,4.5,1.6,head,116.23,false,true,1.543)
							end
						end
					end
				else
					if not dresst then
						if voices then
							sound(75994767030916,4.5,1.2,head,0,false)
						end
					else
						if voices then
							sound(75994767030916,4.5,1.45,head,0,false)
						end
					end
				end
				anim = "stobu"
				frame = 1
				WeaponTrail.Enabled = true
				task.wait(0.15)
				frame = 2
				task.wait(0.1)
				sound(3203893315,1,1,Weapon,0,false)
				frame = 3
			end
			spawn(function()
				local pos = root.CFrame
				local direction = pos.lookVector
				for i=1, 15 do
					local posit = pos+(direction*i*8)
					local gfp = new("Part")
					local gfpm = new("SpecialMesh")
					local gfp0 = new("Part")
					local gfpm0 = new("SpecialMesh")
					local gfp1 = new("Part")
					local gfpm1 = new("SpecialMesh")
					local gfp2 = new("Part")
					local gfpm2 = new("SpecialMesh")
					gfp2.Parent = script
					gfp2.Transparency = 0.05
					gfp2.Size = vect3(1, 1, 1)
					gfp2.Anchored = true
					gfp2.BottomSurface = Enum.SurfaceType.Smooth
					gfp2.BrickColor = bc("Br. yellowish orange")
					gfp2.CanCollide = false
					gfp2.TopSurface = Enum.SurfaceType.Smooth
					gfpm2.Parent = gfp2
					gfpm2.MeshId = "rbxassetid://20329976"
					gfpm2.Scale = vect3(3, 3, 3)
					gfpm2.MeshType = Enum.MeshType.FileMesh
					gfp.Name = "Part1"
					gfp.Parent = gfp2
					gfp.Transparency = 0.25
					gfp.Size = vect3(1, 1, 1)
					gfp.Anchored = true
					gfp.BottomSurface = Enum.SurfaceType.Smooth
					gfp.BrickColor = bc("Bright red")
					gfp.CanCollide = false
					gfp.TopSurface = Enum.SurfaceType.Smooth
					gfpm.Parent = gfp
					gfpm.MeshId = "rbxassetid://20329976"
					gfpm.Scale = vect3(3.5, 3.5, 3.5)
					gfpm.MeshType = Enum.MeshType.FileMesh
					gfp0.Name = "gfp0"
					gfp0.Parent = gfp2
					gfp0.Transparency = 0.25
					gfp0.Size = vect3(2.5, 5, 2.5)
					gfp0.Anchored = true
					gfp0.BottomSurface = Enum.SurfaceType.Smooth
					gfp0.BrickColor = bc("Maroon")
					gfp0.CanCollide = false
					gfp0.TopSurface = Enum.SurfaceType.Smooth
					gfpm0.Parent = gfp0
					gfpm0.MeshType = Enum.MeshType.Sphere
					gfp1.Name = "Part3"
					gfp1.Parent = gfp2
					gfp1.Transparency = 0.05
					gfp1.Size = vect3(2, 2.5, 2)
					gfp1.Anchored = true
					gfp1.BottomSurface = Enum.SurfaceType.Smooth
					gfp1.BrickColor = bc("Neon orange")
					gfp1.CanCollide = false
					gfp1.TopSurface = Enum.SurfaceType.Smooth
					gfpm1.Parent = gfp1
					gfpm1.MeshType = Enum.MeshType.Sphere
					gfp.Material = "Neon"
					gfp2.Material = "Neon"
					gfp0.Material = "Neon"
					gfp1.Material = "Neon"
					gfp2.CFrame = cframe(posit.x,posit.y-1.5,posit.z-1.5)
					gfp.CFrame = cframe(posit.x,posit.y-1.5,posit.z-1.5)
					gfp0.CFrame = cframe(posit.x,posit.y-1.5,posit.z-1.5)
					gfp1.CFrame = cframe(posit.x,posit.y-1.5,posit.z-1.5)
					gfp.CanTouch = false
					gfp0.CanTouch = false
					gfp1.CanTouch = false
					gfp2.CanTouch = false
					if i ~= 15 then
						magnitudedamage(2.25,"sphere", 0.125, 10, 9089368508, 6.5, 1, gfp0,true,"normal","flame")
					else
						magnitudedamage(8,"boom", 0.125, 10, 9089368508, 6.5, 1, gfp0,true,"burn","flame2")
					end
					sound(5129337934,1,1,gfp0,0,false)
					local tween = tweens:Create(gfp2,TweenInfo.new(1.15,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Transparency = 1})
					tween:Play()
					local tweenM = tweens:Create(gfpm2,TweenInfo.new(1.15,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Scale = vect3(15,0.05,15),Offset = vect3(0,-1.5,-1)})
					tweenM:Play()
					local tween1 = tweens:Create(gfp,TweenInfo.new(1.15,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Transparency = 1})
					tween1:Play()
					local tweenM1 = tweens:Create(gfpm,TweenInfo.new(1.15,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Scale = vect3(17.5,0.025,17.5),Offset = vect3(0,-1.5,-1)})
					tweenM1:Play()
					local tween2 = tweens:Create(gfp0,TweenInfo.new(1.15,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{CFrame = gfp0.CFrame * CFrame.Angles(0,math.rad(180),0),Size = vect3(3,45,3),Transparency = 1})
					tween2:Play()
					local tween3 = tweens:Create(gfp1,TweenInfo.new(1.15,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{CFrame = gfp0.CFrame * CFrame.Angles(0,math.rad(180),0),Size = vect3(2.75,35,2.75),Transparency = 1})
					tween3:Play()
					tween.Completed:Connect(function() gfp2:Destroy()end)
					tweenM.Completed:Connect(function() gfpm2=nil end)
					tween1.Completed:Connect(function() gfp:Destroy() end)
					tweenM1.Completed:Connect(function() gfpm=nil end)
					tween2.Completed:Connect(function() gfp0:Destroy()end)
					tween3.Completed:Connect(function() gfp1:Destroy() end)
					task.wait(.1)
				end
			end)
			task.wait(1)
			WeaponTrail.Enabled = false
			hum.WalkSpeed = ogws
			hum.JumpPower = ogjp
			hum.JumpHeight = ogjh
			attack = false
		end
	end;
	["tokagami"] = function()
		if not (attack or guarding or hurt or hum.Sit == true or sitting or lying) then
			keycombo = ""
			if player.UserId ~= 50203523 then if mp < 50 then return end else if mp < (50/10) then return end end
			if player.UserId == 50203523 then
				mp = mp - (25/10)
			else
				mp = mp - 25
			end
			attack = true
			hum.WalkSpeed = 0
			hum.JumpPower = 0
			hum.JumpHeight = 0
			if not sword then
				anim = "tokagami"
				frame = 1
				if game.PlaceId == 11510416200 or game.PlaceId == 126783576555525 or game.PlaceId == 89201052571047 or game.PlaceId == 79868761121850 then
					local randoml = random(0,2)
					if randoml == 0 then
						chatter("OCHIROU!!")
					elseif randoml == 1 then
						chatter("Tokagami-Ashiru!")
					else
						chatter("METEOR!!")
					end
					if not dresst then
						if voices then
							if randoml == 0 then
								sound(99813049652900,4.5,1.2,head,16.9,false,true,1.542)
							elseif randoml == 1 then
								sound(99813049652900,4.5,1.2,head,62.62,false,true,2.236)
							else
								sound(99813049652900,4.5,1.2,head,118.58,false,true,1.982)
							end
						end
					else
						if voices then
							if randoml == 0 then
								sound(99813049652900,4.5,1.5,head,16.9,false,true,1.234)
							elseif randoml == 1 then
								sound(99813049652900,4.5,1.5,head,62.62,false,true,1.788)
							else
								sound(99813049652900,4.5,1.5,head,118.58,false,true,1.586)
							end
						end
					end
				else
					chatter("Tokagami-Ashiru!")
				end
				task.wait(0.068)
				frame = 2
				local bpos = new("BodyPosition")
				bpos.Parent = root
				bpos.MaxForce = vect3(math.huge,math.huge,math.huge)
				bpos.D = 1499
				bpos.Position = root.CFrame * cframe(0,60,-22.5).Position
				sound(2692477,1.5,0.35,ra,0,false)
				spawn(function()
					wait(0.15)
					sound(28257433,1.5,0.55,ra,0,false)
					sound(28144425,1.5,0.275,ra,0,false)
				end)
				local jumppart = new("Part")
				local jumpmesh = new("SpecialMesh")
				jumppart.Parent = script
				jumppart.Transparency = 0
				jumppart.Size = vect3(1, 1, 1)
				jumppart.Anchored = true
				jumppart.BottomSurface = Enum.SurfaceType.Smooth
				jumppart.BrickColor = bc("Bright orange")
				jumppart.CanCollide = false
				jumppart.TopSurface = Enum.SurfaceType.Smooth
				jumpmesh.Parent = jumppart
				jumpmesh.MeshId = "rbxassetid://20329976"
				jumpmesh.Scale = vect3(3, 3, 3)
				jumpmesh.MeshType = Enum.MeshType.FileMesh
				jumppart.CFrame = root.CFrame * cframe(0,-1.5,0)
				local tween = tweens:Create(jumppart,TweenInfo.new(1.5,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Transparency = 1})
				tween:Play()
				local tweenM = tweens:Create(jumpmesh,TweenInfo.new(1.5,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Scale = vect3(30,0.025,30),Offset = vect3(0,-1.5,-1)})
				tweenM:Play()
				tween.Completed:Connect(function() jumppart:Destroy()end)
				spawn(function()
					for i = 1,10 do
						task.wait(0.05)
						local randomcolor = random(0,3)
						local firepart = new("Part")
						firepart.Parent = script
						firepart.Size = vect3(7.5,7.5,7.5)
						firepart.BottomSurface = Enum.SurfaceType.Smooth
						firepart.Anchored = true
						firepart.CanCollide = false
						firepart.CanTouch = false
						if randomcolor == 0 then
							firepart.BrickColor = bc("Crimson")
						elseif randomcolor == 1 then
							firepart.BrickColor = bc("Neon orange")
						elseif randomcolor == 2 then
							firepart.BrickColor = bc("Bright orange")
						elseif randomcolor == 3 then
							firepart.BrickColor = bc("Bright red")
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
								task.wait()
								firepart.CFrame = firepart.CFrame * angles(rad(7.5),rad(7.5),rad(7.5))
								firepart.Transparency = firepart.Transparency + 0.05
								firepart.Size = firepart.Size - vect3(0.5,0.5,0.5)
							end
						end)
						spawn(function()
							task.wait(0.5)
							fire.Enabled = false
							smoke.Enabled = false
							debris:AddItem(firepart,2)
						end)	
					end
				end)
				spawn(function()
					for i = 1,10 do
						magnitudedamage(3.5, "sphere", 0, 10, 9089368508, 3, 1, root,true,"normal","tokagami")
						task.wait(0.06)
					end
				end)
				task.wait(0.45)
				frame = 3
				task.wait(0.1)
				frame = 4
				task.wait(0.1)
				bpos:Destroy()
				if holdingx then
					anim = "tokagamik"
					frame = 1
					local bpos2 = new("BodyPosition")
					bpos2.Parent = root
					bpos2.MaxForce = vect3(math.huge,math.huge,math.huge)
					bpos2.D = 1750
					bpos2.Position = root.CFrame * cframe(0,30,0).Position
					local fire = new("Fire")
					fire.Parent = rl
					fire.Size = 6
					fire.Heat = 10
					fire.Color = color(1, 0.333333, 0)
					fire.SecondaryColor = color(0.666667, 0.333333, 0)
					sound(1273117535,4.5,1,rl,0,false)
					if random(0,6) <= 3 then
						chatter("There!")
						if voices then
							if not dresst then
								sound(6563654688,2.5,1.1,head,0,false)
							else
								sound(6563654688,2.5,1.35,head,0,false)
							end
						end
					else
						chatter("Watch your feet!")
						if voices then
							if not dresst then
								sound(4641676880,2.5,1.1,head,0,false)
							else
								sound(4641676880,2.5,1.35,head,0,false)
							end
						end
					end
					task.wait(0.1)
					frame = 2
					task.wait(0.1)
					sound(9557850099,1,1,rl,0,false)
					magnitudedamage(11.5, "sphere", 0.05, 10, 9557839833, 3, 1, root,true,"normal","tokagami2")
					frame = 3
					task.wait(0.1)
					fire.Enabled = false
					debris:AddItem(fire,3)
					bpos2:Destroy()
					task.wait(0.25)
				end
			else
				anim = "utsusemi"
				frame = 1
				chatter("Ensei Crusader!")
				if voices then
					if not dresst then
						sound(4553209666,2.5,1.1,head,0,false)
					else
						sound(4553209666,2.5,1.35,head,0,false)
					end
				end
				task.wait(0.115)
				anim = "crusader"
				frame = 1
				task.wait(0.068)
				frame = 2
				local bpos = new("BodyPosition")
				bpos.Parent = root
				bpos.MaxForce = vect3(math.huge,math.huge,math.huge)
				bpos.D = 1499
				bpos.Position = root.CFrame * cframe(0,60,-22.5).Position
				sound(2692477,1.5,0.35,Weapon,0,false)
				spawn(function()
					wait(0.15)
					sound(28257433,1.5,0.55,Weapon,0,false)
					sound(28144425,1.5,0.275,Weapon,0,false)
				end)
				local jumppart = new("Part")
				local jumpmesh = new("SpecialMesh")
				jumppart.Parent = script
				jumppart.Transparency = 0
				jumppart.Size = vect3(1, 1, 1)
				jumppart.Anchored = true
				jumppart.BottomSurface = Enum.SurfaceType.Smooth
				jumppart.BrickColor = bc("Bright orange")
				jumppart.CanCollide = false
				jumppart.TopSurface = Enum.SurfaceType.Smooth
				jumpmesh.Parent = jumppart
				jumpmesh.MeshId = "rbxassetid://20329976"
				jumpmesh.Scale = vect3(3, 3, 3)
				jumpmesh.MeshType = Enum.MeshType.FileMesh
				jumppart.CFrame = root.CFrame * cframe(0,-1.5,0)
				local tween = tweens:Create(jumppart,TweenInfo.new(1.5,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Transparency = 1})
				tween:Play()
				local tweenM = tweens:Create(jumpmesh,TweenInfo.new(1.5,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Scale = vect3(30,0.025,30),Offset = vect3(0,-1.5,-1)})
				tweenM:Play()
				tween.Completed:Connect(function() jumppart:Destroy()end)
				spawn(function()
					for i = 1,10 do
						task.wait(0.05)
						local randomcolor = random(0,3)
						local firepart = new("Part")
						firepart.Parent = script
						firepart.Size = vect3(7.5,7.5,7.5)
						firepart.BottomSurface = Enum.SurfaceType.Smooth
						firepart.Anchored = true
						firepart.CanCollide = false
						firepart.CanTouch = false
						if randomcolor == 0 then
							firepart.BrickColor = bc("Crimson")
						elseif randomcolor == 1 then
							firepart.BrickColor = bc("Neon orange")
						elseif randomcolor == 2 then
							firepart.BrickColor = bc("Bright orange")
						elseif randomcolor == 3 then
							firepart.BrickColor = bc("Bright red")
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
								task.wait()
								firepart.CFrame = firepart.CFrame * angles(rad(7.5),rad(7.5),rad(7.5))
								firepart.Transparency = firepart.Transparency + 0.05
								firepart.Size = firepart.Size - vect3(0.5,0.5,0.5)
							end
						end)
						spawn(function()
							task.wait(0.5)
							fire.Enabled = false
							smoke.Enabled = false
							debris:AddItem(firepart,2)
						end)	
					end
				end)
				spawn(function()
					for i = 1,10 do
						magnitudedamage(3.5, "sphere", 0, 10, 9089368508, 3, 1, root,true,"normal","tokagami")
						task.wait(0.06)
					end
				end)
				task.wait(0.45)
				frame = 3
				task.wait(0.1)
				frame = 4
				task.wait(0.1)
				bpos:Destroy()
				if holdingc then
					anim = "crusaderp"
					frame = 1
					local bpos = new("BodyPosition")
					bpos.Parent = root
					bpos.MaxForce = vect3(math.huge,math.huge,math.huge)
					bpos.D = 1750
					bpos.Position = root.CFrame * cframe(0,15,0).Position
					task.wait(0.1)
					frame = 2
					task.wait(0.1)
					sound(8679732323,4.5,1,la,0,false)
					magnitudedamage(15, "sphere", 0, 10, 386946017, 4.5, 1, root,true,"normal","seikujin")
					frame = 3
					task.wait(0.1)
					bpos:Destroy()
					frame = 4
					task.wait(0.1)
					frame = 5
					hum.WalkSpeed = ogws
					hum.JumpPower = ogjp
					hum.JumpHeight = ogjh
					if holdingx then
						task.wait(0.1)
						anim = "crusaderk"
						frame = 1
						local bpos = new("BodyPosition")
						bpos.Parent = root
						bpos.MaxForce = vect3(math.huge,math.huge,math.huge)
						bpos.D = 1750
						bpos.Position = root.CFrame * cframe(0,20,0).Position
						if random(0,6) <= 3 then
							chatter("Fall!")
							if voices then
								if not dresst then
									sound(4553208509,2.5,1.1,head,0,false)
								else
									sound(4553208509,2.5,1.35,head,0,false)
								end
							end
						end
						task.wait(0.1)
						frame = 2
						sound(9557857801,4.5,1,ll,0,false)
						task.wait(0.1)
						partdamage(19, "sphere", 0, 10, 9557897361, 4.5, 1, root,true,"normal","koruga",0.175,"koruga")
						frame = 3
						task.wait(0.175)
						bpos:Destroy()
						frame = 4
					elseif holdingz then
						task.wait(0.1)
						anim = "crusaderpu"
						frame = 1
						local bpos = new("BodyPosition")
						bpos.Parent = root
						bpos.MaxForce = vect3(math.huge,math.huge,math.huge)
						bpos.D = 1750
						bpos.Position = root.CFrame * cframe(0,20,0).Position
						local fire = new("Fire")
						fire.Parent = la
						fire.Size = 6
						fire.Heat = 10
						fire.Color = color(1, 0.333333, 0)
						fire.SecondaryColor = color(0.666667, 0.333333, 0)
						sound(1273117535,4.5,1,la,0,false)
						if random(0,6) <= 3 then
							chatter("Like a book!")
							if voices then
								if not dresst then
									sound(4634836940,2.5,1.1,head,0,false)
								else
									sound(4634836940,2.5,1.35,head,0,false)
								end
							end
						else
							chatter("Pierce!")
							if voices then
								if not dresst then
									sound(4641677444,2.5,1.1,head,0,false)
								else
									sound(4641677444,2.5,1.35,head,0,false)
								end
							end
						end
						task.wait(0.15)
						sound(9557850099,4.5,1,ra,0,false)
						magnitudedamage(23, "boom", 0, 10, 9557839833, 7.5, 1, root,true,"burn","koruga")
						frame = 2
						task.wait(0.125)
						fire.Enabled = false
						debris:AddItem(fire,3)
						bpos:Destroy()
						task.wait(0.001)
						frame = 3
						task.wait(0.1)
					end
				elseif holdingx then
					anim = "crusaderk"
					frame = 1
					local bpos = new("BodyPosition")
					bpos.Parent = root
					bpos.MaxForce = vect3(math.huge,math.huge,math.huge)
					bpos.D = 1750
					bpos.Position = root.CFrame * cframe(0,20,0).Position
					if random(0,6) <= 3 then
						chatter("Fall!")
						if voices then
							if not dresst then
								sound(4553208509,2.5,1.1,head,0,false)
							else
								sound(4553208509,2.5,1.35,head,0,false)
							end
						end
					end
					task.wait(0.1)
					frame = 2
					sound(9557857801,4.5,1,ll,0,false)
					task.wait(0.1)
					partdamage(19, "sphere", 0, 10, 9557897361, 4.5, 1, root,true,"normal","koruga",0.175,"koruga")
					frame = 3
					task.wait(0.175)
					bpos:Destroy()
					frame = 4
				elseif holdingz then
					anim = "crusaderpu"
					frame = 1
					local bpos = new("BodyPosition")
					bpos.Parent = root
					bpos.MaxForce = vect3(math.huge,math.huge,math.huge)
					bpos.D = 1750
					bpos.Position = root.CFrame * cframe(0,20,0).Position
					local fire = new("Fire")
					fire.Parent = la
					fire.Size = 6
					fire.Heat = 10
					fire.Color = color(1, 0.333333, 0)
					fire.SecondaryColor = color(0.666667, 0.333333, 0)
					sound(1273117535,4.5,1,la,0,false)
					if random(0,6) <= 3 then
						chatter("Like a book!")
						if voices then
							if not dresst then
								sound(4634836940,2.5,1.1,head,0,false)
							else
								sound(4634836940,2.5,1.35,head,0,false)
							end
						end
					else
						chatter("Pierce!")
						if voices then
							if not dresst then
								sound(4641677444,2.5,1.1,head,0,false)
							else
								sound(4641677444,2.5,1.35,head,0,false)
							end
						end
					end
					task.wait(0.15)
					sound(9557850099,4.5,1,ra,0,false)
					magnitudedamage(23, "boom", 0, 10, 9557839833, 7.5, 1, root,true,"burn","koruga")
					frame = 2
					task.wait(0.125)
					fire.Enabled = false
					debris:AddItem(fire,3)
					bpos:Destroy()
					task.wait(0.001)
					frame = 3
					task.wait(0.1)				
				end
			end
			hum.WalkSpeed = ogws
			hum.JumpPower = ogjp
			hum.JumpHeight = ogjh
			attack = false
		end
	end;
	["utsusemi"] = function()
		if not (attack or guarding or hurt or hum.Sit == true or sitting or lying) then
			keycombo = ""
			if player.UserId ~= 50203523 then if mp < 30 then return end else if mp < (30/10) then return end end
			if player.UserId == 50203523 then
				mp = mp - (30/10)
			else
				mp = mp - 30
			end
			attack = true
			hum.WalkSpeed = 0
			hum.JumpPower = 0
			hum.JumpHeight = 0
			if game.PlaceId == 11510416200 or game.PlaceId == 126783576555525 or game.PlaceId == 89201052571047 or game.PlaceId == 79868761121850 then
				local randoml = random(0,2)
				if not dresst then
					if voices then
						if randoml == 0 then
							sound(126094484790419,4.5,1.2,head,0,false,true,1.530)
						elseif randoml == 1 then
							sound(126094484790419,4.5,1.2,head,1.85,false,true,1.433)
						else
							sound(126094484790419,4.5,1.185,head,91.15,false,true,1.491)
						end
					end
				else
					if voices then
						if randoml == 0 then
							sound(126094484790419,4.5,1.525,head,0,false,true,1.204)
						elseif randoml == 1 then
							sound(126094484790419,4.5,1.575,head,1.85,false,true,1.092)
						else
							sound(126094484790419,4.5,1.6,head,91.15,false,true,1.104)
						end
					end
				end
			end
			if not sword then
				anim = "sora"
				frame = 1
				chatter("Utsusemi-Sora!")
				task.wait(0.175)
				frame = 2
				local bpos = new("BodyPosition")
				bpos.Parent = root
				bpos.MaxForce = vect3(math.huge,math.huge,math.huge)
				bpos.D = 2000
				bpos.Position = root.CFrame * cframe(0,15,-57.5).Position
				sound(536642316,2.5,1,torso,0,false)
				magnitudedamage(7.5, "sphere", 0, 10, 386946017, 2.5, 1, root,true,"normal","utsusemi")
				task.wait(0.2)
				bpos:Destroy()
				frame = 3
				local bpos = new("BodyPosition")
				bpos.Parent = root
				bpos.MaxForce = vect3(math.huge,math.huge,math.huge)
				bpos.D = 2000
				bpos.Position = root.CFrame * cframe(0,5,-90).Position
				task.wait(0.115)
				frame = 4
				sound(536642316,2.45,1,torso,0,false)
				magnitudedamage(10,"sphere", 0, 10, 386946017, 2.5, 0.7, root,true,"normal","utsusemi2")
				task.wait(0.175)
				bpos:Destroy()
				task.wait(0.15)
			else
				anim = "utsusemi"
				frame = 1
				chatter("Utsusemi-Chouyaku!")
				task.wait(0.175)
				frame = 3
				local bpos = new("BodyPosition")
				bpos.Parent = root
				bpos.MaxForce = vect3(math.huge,math.huge,math.huge)
				bpos.D = 2000
				bpos.Position = root.CFrame * cframe(0,15,-57.5).Position
				sound(536642316,2.25,1,torso,0,false)
				magnitudedamage(10, "sphere", 0, 10, 386946017, 2.5, 1, root,true,"normal","utsusemi")
				task.wait(0.2)
				bpos:Destroy()
				anim = "utsusemik"
				frame = 1
				local bpos = new("BodyPosition")
				bpos.Parent = root
				bpos.MaxForce = vect3(math.huge,math.huge,math.huge)
				bpos.D = 2000
				bpos.Position = root.CFrame * cframe(0,5,-90).Position
				task.wait(0.1)
				frame = 2
				task.wait(0.1)
				frame = 3
				sound(200632136,2.5,1,torso,0,false)
				task.wait(0.075)
				frame = 4
				magnitudedamage(12,"sphere", 0, 10, 386946017, 2.5, 0.7, root,true,"normal","utsusemi2")
				task.wait(0.175)
				bpos:Destroy()
				task.wait(0.15)
			end
			hum.WalkSpeed = ogws
			hum.JumpPower = ogjp
			hum.JumpHeight = ogjh
			attack = false
		end
	end;
	["danku"] = function()
		if not (attack or guarding or hurt or hum.Sit == true or sitting or lying) then
			keycombo = ""
			if player.UserId ~= 50203523 then if mp < 45 then return end else if mp < (45/10) then return end end
			if player.UserId == 50203523 then
				mp = mp - (45/10)
			else
				mp = mp - 45
			end
			attack = true
			hum.WalkSpeed = 0
			hum.JumpPower = 0
			hum.JumpHeight = 0
			if not sword then
				--Ensenga!
				anim = "eisen"
				frame = 1
				chatter("Eisenko!")
				if not dresst then
					if voices then
						sound(566988626,3,1.25,head,0,false)
					end
				else
					if voices then
						sound(566988626,3,1.45,head,0,false)
					end
				end
				local bpos = new("BodyPosition")
				bpos.Parent = root
				bpos.MaxForce = vect3(math.huge,math.huge,math.huge)
				bpos.D = 1750
				bpos.Position = root.CFrame * cframe(0,25,-30).Position
				local cola = new("Part")
				local colam = new("SpecialMesh")
				local colaw = new("Weld")
				cola.Parent = script
				cola.Name = "BloxyCola"
				cola.Locked = true
				cola.Size = vect3(0.78, 1.2, 0.79)
				cola.CanTouch = false
				cola.CanCollide = false
				colam.Parent = cola
				colam.MeshId = "http://www.roblox.com/asset/?id=10470609"
				colam.Scale = vect3(1.2, 1.2, 1.2)
				colam.TextureId = "http://www.roblox.com/asset/?id=10470600"
				colam.MeshType = Enum.MeshType.FileMesh
				colaw.Parent = cola
				colaw.C0 = cframe(0, -3, 2.5)
				colaw.Part0 = cola
				colaw.Part1 = root
				magnitudedamage(6.5, "sphere", 0, 10, 386946017, 2.5, 1, root,true,"normal","eisen")
				task.wait(0.05)
				sound(200632136,3,1,la,0,false)
				task.wait(0.1)
				frame = 2
				sound(338586299,3,1,Weapon,0,false)
				Weapon.Transparency = 0
				WeaponTrail.Enabled = true
				FWeapon.Transparency = 1
				colaw:Destroy()
				task.wait(0.1)
				spawn(function()
					for i = 1,random(20,30) do
						local blood = new("Part")
						local blc = {"Burnt Sienna","Pine Cone","Reddish brown"}
						blood.Parent = workspace
						blood.Name = "ColaSpill"
						blood.BrickColor = bc(blc[random(#blc)])
						blood.Material = "Glass"
						blood.CanCollide = false
						blood.Locked = true
						blood.CanTouch = true
						blood.Shape = Enum.PartType.Ball
						blood.Size = vect3(random(5)/10,0.45,0.45)
						blood.CFrame = cola.CFrame * cframe(random(-1,1),random(-1,1),random(-1,1))
						blood.Velocity = vect3(random(-30,30),random(-30,30),random(-30,30))
						blood.Touched:Connect(function(touch)
							if touch.Parent and not (touch.Parent:IsA("Tool") or touch:IsDescendantOf(char) or touch.Parent:IsDescendantOf(char) or touch.Parent.Parent:FindFirstChildOfClass("Humanoid") or touch.Parent:FindFirstChildOfClass("Humanoid") or touch.Name == "Bloodey" or touch.Name == "ColaSpill" or touch.Name == "Blaud" or touch.Name == "HeruSmashed" or touch.Parent == char or touch.Parent:IsA("Accessory") or touch.Parent:IsA("Hat")) then
								local bpud = new("Part")
								local bpudm = new("SpecialMesh")
								bpud.Name = "BloodPart"
								bpud.Parent = workspace
								bpud.Size = vect3(1, 0.1, 1)
								bpud.Anchored = true
								bpud.BottomSurface = Enum.SurfaceType.Smooth
								bpud.BrickColor = blood.BrickColor
								bpud.CanCollide = false
								bpud.Material = Enum.Material.Glass
								bpud.TopSurface = Enum.SurfaceType.Smooth
								bpud.CanTouch = false
								bpudm.Parent = bpud
								bpudm.Offset = vect3(0, -0.05, 0)
								bpudm.MeshType = Enum.MeshType.Sphere
								local rsi = random(2, 20) / 10
								bpud.CFrame = cframe(vect3(blood.Position.X,(touch.Position.Y+(touch.Size.Y/2))+0.02,blood.Position.Z)) + vect3(0, 0.05, 0)
								blood:Destroy()
								bpud.Size = vect3(rsi, 0.1, rsi)
								local ring = random(5, 10) / 10
								tweens:Create(bpud, TweenInfo.new(3, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {Size = vect3(bpud.Size.X + ring, 0.1, bpud.Size.Z + ring)}):Play()
								sound(180083298,2,1,bpud,0,false)
								spawn(function()
									task.wait(5)
									local tween = tweens:Create(bpud, TweenInfo.new(3), {Transparency = 1})
									tween:Play()
									tween.Completed:Connect(function() bpud:Destroy() end)
								end)
							end
						end)
					end
				end)
				spawn(function()
					for i = 1,random(20,30) do
						local sparklesp = new("Part")
						sparklesp.Parent = script
						sparklesp.Name = "ColaSparkles"
						sparklesp.CanTouch = false
						sparklesp.CanCollide = false
						sparklesp.Locked = true
						sparklesp.Shape = Enum.PartType.Ball
						sparklesp.Size = vect3(0.001,0.001,0.001)
						sparklesp.CFrame = cola.CFrame * cframe(random(-1,1),random(-1,1),random(-1,1))
						sparklesp.Velocity = vect3(random(-30,30),random(-30,30),random(-30,30))
						local sparkles = new("Sparkles")
						sparkles.Parent = sparklesp
						sparkles.SparkleColor = color(1, 0.427451, 0.0196078)
						debris:AddItem(sparklesp,5)
					end
				end)
				sound(3203893315,3,1,Weapon,0,false)
				local cross = new("Part")
				local crossm = new("SpecialMesh")
				local crossp = new("ParticleEmitter")
				local crosss = new("Smoke")
				cross.Parent = script
				cross.Anchored = true
				cross.BrickColor = bc("Neon orange")
				cross.Transparency = 1
				cross.CanCollide = false
				cross.Locked = true
				cross.CanTouch = false
				crossm.Parent = cross
				crossm.MeshId = "rbxassetid://13727981351"
				crossm.Scale = vect3(0.25, 0.25, 0.25)
				crossm.MeshType = Enum.MeshType.FileMesh
				crossp.Parent = cross
				crossp.Speed = NumberRange.new(10, 10)
				crossp.Rotation = NumberRange.new(1, 1)
				crossp.Color = ColorSequence.new(color(1, 1, 0),color(1, 0, 0))
				crossp.LightEmission = 0.3
				crossp.Texture = "http://www.roblox.com/asset/?id=160041569"
				crossp.Size = NumberSequence.new(3.25,0.9375)
				crossp.Lifetime = NumberRange.new(1, 1)
				crossp.Rate = 75
				crossp.RotSpeed = NumberRange.new(10, 10)
				crossp.SpreadAngle = vect2(10, 10)
				crossp.VelocitySpread = 10
				crosss.Parent = cross
				crosss.Color = color(0.329412, 0.329412, 0.329412)
				crosss.Size = 0.1
				crosss.Opacity = 1
				crosss.RiseVelocity = -9
				cross.CFrame = root.CFrame * cframe(0,0,-4.5)
				sound(128912290,2.25,2.5,cross,0,false)
				local tween = tweens:Create(cross, TweenInfo.new(0.75), {CFrame = cross.CFrame * cframe(0,0,-25), Transparency = 0})
				tween:Play()
				tween.Completed:Connect(function()
					crossp.Enabled = false
					crosss.Enabled = false
					local tween2 = tweens:Create(cross, TweenInfo.new(1), {Transparency = 1})
					tween2:Play()
					tween2.Completed:Connect(function()
						cross:Destroy()
					end)
				end)
				local explosion = new("Explosion")
				explosion.Parent = workspace
				explosion.Position = cola.Position
				explosion.BlastRadius = 0
				explosion.BlastPressure = 0
				sound2(2814354338,3,1,cola,0)
				cola:Destroy()
				frame = 3
				magnitudedamage(10, "boom", 0, 10, 386946017, 2.5, 1, root,true,"burn","eisen2")
				task.wait(0.1)
				frame = 4
				task.wait(0.1)
				frame = 5
				task.wait(0.1)
				frame = 6
				task.wait(0.1)
				frame = 7
				bpos:Destroy()
				sound(211134014,3.6,1,Weapon,0,false)
				WeaponTrail.Enabled = false
				Weapon.Transparency = 1
				FWeapon.Transparency = 0
				task.wait(0.1)
			else
				anim = "utsusemi"
				frame = 1
				chatter("Utsusemi-Danku!")
				task.wait(0.175)
				frame = 3
				local bpos = new("BodyPosition")
				bpos.Parent = root
				bpos.MaxForce = vect3(math.huge,math.huge,math.huge)
				bpos.D = 2000
				bpos.Position = root.CFrame * cframe(0,15,-57.5).Position
				sound(536642316,2,1,torso,0,false)
				magnitudedamage(6.5, "sphere", 0, 10, 386946017, 2.5, 1, root,true,"normal","utsusemi")
				task.wait(0.2)
				bpos:Destroy()
				anim = "danku"
				frame = 1
				local bpos = new("BodyPosition")
				bpos.Parent = root
				bpos.MaxForce = vect3(math.huge,math.huge,math.huge)
				bpos.D = 2000
				bpos.Position = root.CFrame * cframe(0,5,-90).Position
				local danku = new("ParticleEmitter")
				danku.Name = "Fire"
				danku.Parent = la
				danku.Speed = NumberRange.new(5, 7)
				danku.Rotation = NumberRange.new(4, 9)
				danku.Color = ColorSequence.new(color(1, 0.333333, 0),color(0.364706, 0, 0))
				danku.LightEmission = 0.8600000143051147
				danku.Texture = "http://www.roblox.com/asset/?id=248625108"
				danku.Transparency = NumberSequence.new(0,0.543749988079071,0.7374999523162842,0,0.7250000238418579,0.45625001192092896,0.637499988079071,0,0.5249999761581421,0)
				danku.Acceleration = vect3(8, 6, 6)
				danku.Lifetime = NumberRange.new(1.15,1.15)
				danku.Rate = 150
				danku.RotSpeed = NumberRange.new(5, 9)
				danku.SpreadAngle = vect2(28, 28)
				danku.VelocitySpread = 28
				local dankuf = new("Fire")
				dankuf.Parent = la
				dankuf.Color = color(1, 0.501961, 0)
				dankuf.Heat = 15
				dankuf.SecondaryColor = color(1, 0, 0)
				sound(3518167306,2,1,la,0,false)
				task.wait(0.25)
				frame = 2
				sound(128912290,1.75,2,la,0,false)
				sound(200632136,3,1,la,0,false)
				magnitudedamage(10,"boom", 0, 10, 386946017, 2.5, 0.7, root,true,"burn","utsusemi2")
				task.wait(0.25)
				danku.Enabled = false
				dankuf.Enabled = false
				debris:AddItem(danku,2)
				debris:AddItem(dankuf,2)
				bpos:Destroy()
				task.wait(0.15)
			end
			hum.WalkSpeed = ogws
			hum.JumpPower = ogjp
			hum.JumpHeight = ogjh
			attack = false
		end
	end;
	["lucas"] = function()
		if not (attack or guarding or hurt or hum.Sit == true or sitting or lying) then
			keycombo = ""
			if player.UserId ~= 50203523 then if mp < 60 then return end else if mp < (60/10) then return end end
			if player.UserId == 50203523 then
				mp = mp - (60/10)
			else
				mp = mp - 60
			end
			attack = true
			hum.WalkSpeed = 0
			hum.JumpPower = 0
			hum.JumpHeight = 0
			if not sword then
				anim = "fcut"
				frame = 1
				sound(3422592990,2.5,1,WeaponSheath,0,false)
				sound2(105047729701100,3,1.1,root,0,false)
				sparker(WeaponSheath)
				task.wait(0.15)
				WeaponTrail.Enabled = true
				Weapon.Transparency = 0
				FWeapon.Transparency = 1
				frame = 2
				sound(7058339337,4.5,1,Weapon,0,false)
				task.wait(0.045)
				sound(1598682218,2.75,1,torso,0,false)
				magnitudedamage(33.3,"sphere", 0, 12.5, 7131799080, 3, 1, root,true,"slash2","blackwound")
				root.CFrame = root.CFrame * cframe(0,0,-30)
				blackwound()
				frame = 3
				task.wait(0.25)
				sound(7058340527,2.5,1,Weapon,0,false)
				frame = 2
				task.wait(0.045)
				sound(211134014,3.6,1,Weapon,0,false)
				WeaponTrail.Enabled = false
				Weapon.Transparency = 1
				FWeapon.Transparency = 0
				frame = 5
				task.wait(0.3)
			else
				if random(0,6) <= 3 then
					chatter("Zio!")
					if voices then
						if not dresst then
							sound(4634839879,2.5,1.1,head,0,false)
						else
							sound(4634839879,2.5,1.35,head,0,false)
						end
					end
				else
					chatter("Izanagi!")
					if voices then
						if not dresst then
							sound(4634836598,2.5,1.1,head,0,false)
						else
							sound(4634836598,2.5,1.35,head,0,false)
						end
					end
				end
				anim = "whirlwind"
				frame = 2
				WeaponTrail.Enabled = true
				sound(5989944913,1.5,1,Weapon,0,false)
				task.wait(0.125)
				sound(5989940988,3,1,Weapon,0,false)
				local doingsaw = true
				spawn(function()
					while doingsaw do
						magnitudedamage(6, "sphere", 0, 10, 444667859, 2.5, 1, root,true,"slash2","utsusemi")
						sound(5989945551,1.5,1,Weapon,0,false)
						task.wait(0.115)
					end
				end)
				spawn(function()
					while doingsaw do
						spin = spin + 1
						task.wait()
					end
				end)
				local bpos = new("BodyPosition")
				bpos.Parent = root
				bpos.MaxForce = vect3(math.huge,math.huge,math.huge)
				bpos.D = 2000
				bpos.Position = root.CFrame * cframe(0,15,-60).Position
				frame = 3
				task.wait(1.5)
				WeaponTrail.Enabled = false
				bpos:Destroy()
				doingsaw = false
				spin = 0
			end
			hum.WalkSpeed = ogws
			hum.JumpPower = ogjp
			hum.JumpHeight = ogjh
			attack = false
		end
	end;
	["ky kiske"] = function()
		if not (attack or guarding or hurt or hum.Sit == true or sitting or lying) then
			keycombo = ""
			if player.UserId ~= 50203523 then if mp < 35 then return end else if mp < (35/10) then return end end
			if player.UserId == 50203523 then
				mp = mp - (35/10)
			else
				mp = mp - 35
			end
			attack = true
			hum.WalkSpeed = 0
			hum.JumpPower = 0
			hum.JumpHeight = 0
			anim = "counter"
			local manga = nil
			local mangaw = nil
			if not sword then
				manga = new("Part")
				local mangai = new("Decal")
				mangaw = new("Weld")
				manga.Name = "Manga"
				manga.Parent = script
				manga.Locked = true
				manga.CanCollide = false
				manga.CanTouch = false
				manga.Size = vect3(1.6700021028518677, 0.06999994814395905, 2.1800005435943604)
				manga.BottomSurface = Enum.SurfaceType.Smooth
				manga.TopSurface = Enum.SurfaceType.Smooth
				mangai.Parent = manga
				mangai.Texture = "http://www.roblox.com/asset/?id=1411856178"
				mangai.Face = Enum.NormalId.Top
				mangaw.Parent = manga
				mangaw.C0 = cframe(-1.25, 0.875, -0.150000006, -0.866025388, -0.5, -1.50995803e-07, -0.5, 0.866025388, -0, 1.30766196e-07, 7.54979013e-08, -1)
				mangaw.Part0 = manga
				mangaw.Part1 = ra
			end
			doingcounter = true
			spawn(function()
				task.wait(2)
				if doingcounter and not countered then
					doingcounter = false
				end
			end)
			local currenthp = hum.Health
			repeat
				task.wait()
				if hum.Health < currenthp then 
					if not countered then 
						countered = true 
						doingcounter = false 
					end 
					hum.Health = currenthp
				end
				if overdrive then
					if not countered then 
						countered = true 
						doingcounter = false 
					end 
				end
			until not doingcounter or countered
			if countered then
				if not sword then
					manga.CanCollide = true
					mangaw:Destroy()
					spawn(function()
						task.wait(4.5)
						local tween = tweens:Create(manga, TweenInfo.new(4.5), {Transparency = 1})
						tween:Play()
						tween.Completed:Connect(function() manga:Destroy() end)
					end)
					sound2(17618995140,3,1,torso,0,false)
					local exmark = new("Part")
					local exmarkm = new("SpecialMesh")
					exmark.Name = "!"
					exmark.Parent = script
					exmark.Size = vect3(0.001,0.001,0.001)
					exmark.Anchored = true
					exmark.CanTouch = false
					exmark.CanCollide = false
					exmark.Locked = true
					exmarkm.Name = "SpecialMesh"
					exmarkm.Parent = exmark
					exmarkm.MeshId = "rbxassetid://11413651063"
					exmarkm.Scale = vect3(3.5,3.5,3.5)
					exmarkm.TextureId = "rbxassetid://11413651147"
					exmarkm.MeshType = Enum.MeshType.FileMesh
					exmark.CFrame = root.CFrame
					spawn(function()
						task.wait(1)
						local tween = tweens:Create(exmark, TweenInfo.new(1), {Transparency = 1})
						tween:Play()
						tween.Completed:Connect(function() exmark:Destroy() end)
					end)
					root.CFrame = root.CFrame * cframe(0,0,-15) * angles(0,rad(180),0)
					local invisible = {}
					for z,v in pairs(char:GetDescendants()) do
						if v:IsA("BasePart") or v:IsA("Decal") then
							if v.Transparency ~= 1 then
								table.insert(invisible, v)
								v.Transparency = 1
							end
						end
					end
					task.wait(0.1)
					countered = false
					for _, v in pairs(invisible) do
						if v:IsA("BasePart") or v:IsA("Decal") then
							v.Transparency = 0
						end
					end
					local randomquote = random(0,3)
					if randomquote == 0 then
						chatter("Can't you see I'm reading my manga?!")
					elseif randomquote == 1 then
						chatter("You idiot!")
						if voices then
							if not dresst then
								sound(160212768,3,1.1,head,0,false)
							else
								sound(160212768,3,1.35,head,0,false)
							end
						end
					elseif randomquote == 2 then
						chatter("Get away from me!")
					else
						chatter("Back off!")
						local randomsound = random(0,9)
						if not dresst then
							if voices then
								if randomsound <= 2 then
									sound(4323235687,3,1.1,head,0,false)
								elseif randomsound >= 7 then
									sound(86235612395063,3,1.05,head,0,false)
								end
							end
						else
							if voices then
								if randomsound <= 2 then
									sound(4323235687,3,1.3,head,0,false)
								elseif randomsound >= 7 then
									sound(86235612395063,3,1.3,head,0,false)
								end
							end
						end
					end
					anim = "fskick"
					frame = 1
					local vel = new("BodyVelocity")
					vel.Parent = root
					vel.MaxForce = vect3(math.huge,math.huge,math.huge)
					vel.Velocity = root.CFrame.lookVector * 40
					debris:AddItem(vel,0.215)
					task.wait(0.075)		
					frame = 2
					task.wait(0.075)	
					frame = 3		
					task.wait(0.075)	
					sound(114235921050731,3,1,rl,0,false)
					frame = 4
					magnitudedamage(16,"sphere", 0, 8.88, 3509669748, 4.5, 1, root,true,"normal","ckick")
					task.wait(0.1)
					frame = 5
					task.wait(0.1)
				else
					countered = false
					sound2(17618995140,3,1,torso,0,false)
					local exmark = new("Part")
					local exmarkm = new("SpecialMesh")
					exmark.Name = "!"
					exmark.Parent = script
					exmark.Size = vect3(0.001,0.001,0.001)
					exmark.Anchored = true
					exmark.CanTouch = false
					exmark.CanCollide = false
					exmark.Locked = true
					exmarkm.Name = "SpecialMesh"
					exmarkm.Parent = exmark
					exmarkm.MeshId = "rbxassetid://11413651063"
					exmarkm.Scale = vect3(3.5,3.5,3.5)
					exmarkm.TextureId = "rbxassetid://11413651147"
					exmarkm.MeshType = Enum.MeshType.FileMesh
					exmark.CFrame = root.CFrame
					spawn(function()
						task.wait(1)
						local tween = tweens:Create(exmark, TweenInfo.new(1), {Transparency = 1})
						tween:Play()
						tween.Completed:Connect(function() exmark:Destroy() end)
					end)
					root.CFrame = root.CFrame * cframe(0,0,-10) * angles(0,rad(180),0)
					chatter("Useless!")
					if voices then
						if not dresst then
							sound(5186901203,2.5,1.1,head,0,false)
						else
							sound(5186901203,2.5,1.35,head,0,false)
						end
					end
					anim = "scounter"
					frame = 1
					local flames = new("ParticleEmitter")
					flames.Name = "BigFire"
					flames.Parent = la
					flames.Speed = NumberRange.new(10, 10)
					flames.Color = ColorSequence.new(color(1, 0, 0),color(0.917647, 1, 0))
					flames.Enabled = true
					flames.LightEmission = 1
					flames.Texture = "rbxassetid://1084982817"
					flames.Transparency = NumberSequence.new(0,1)
					flames.Size = NumberSequence.new(0.7103830575942993,0.05464494228363037)
					flames.Drag = 12
					flames.Lifetime = NumberRange.new(0.20000000298023224, 0.4000000059604645)
					flames.Rate = 200
					flames.SpreadAngle = vect2(999, 999)
					flames.VelocitySpread = 999
					task.wait(0.125)
					frame = 3
					task.wait(0.125)
					frame = 4
					task.wait(0.045)
					frame = 2
					local exp = new("Part")
					exp.Parent = script
					exp.Size = vect3(0.001,0.001,0.001)
					exp.Locked = true
					exp.CanCollide = false
					exp.Anchored = true
					exp.CFrame =  root.CFrame * cframe(0,2.5,-4.5)
					local boom = new("ParticleEmitter")
					boom.Name = "Explosion"
					boom.Parent = exp
					boom.Speed = NumberRange.new(0, 2)
					boom.Rotation = NumberRange.new(-180, 180)
					boom.Color = ColorSequence.new(color(1, 0.498039, 0.160784),color(1, 0.498039, 0.160784))
					boom.LightEmission = 0.4000000059604645
					boom.Texture = "rbxassetid://15194500627"
					boom.Transparency = NumberSequence.new(0,0,1)
					boom.ZOffset = 1
					boom.Size = NumberSequence.new(15,25)
					boom.Brightness = 5
					boom.Shape = Enum.ParticleEmitterShape.Sphere
					boom.Drag = 1
					boom.Lifetime = NumberRange.new(0.800000011920929, 1.5)
					boom.Orientation = "FacingCamera"
					boom.Squash = NumberSequence.new(0,0,0)
					boom.Transparency = NumberSequence.new(0,0.266,1)
					boom.EmissionDirection = "Top"
					boom.Rate = 20
					boom.ShapeInOut = "Outward"
					boom.ShapePartial = 1
					boom.ShapeStyle = "Volume"
					boom.FlipbookLayout = "Grid8x8"
					boom.FlipbookMode = "OneShot"
					local boom2 = new("Explosion")
					boom2.Parent = workspace
					boom2.Position = exp.Position
					boom2.BlastRadius = 10
					boom2.BlastPressure = 0
					spawn(function()
						sound2(157878578,5,1,exp,0)
						sound2(7405939280,5,1,exp,0.125)
						wait(0.065)
						boom.Enabled = false
						flames.Enabled = false
						debris:AddItem(flames,1.6)
						debris:AddItem(exp,1.6)
					end)
					magnitudedamage(15, "sphere", 0, 11.5, 75364604862973, 7.5, 1, root,true,"burn","shardb")
					task.wait(0.75)
				end
			else
				if not sword then
					manga:Destroy()
					mangaw = nil
				end
			end
			hum.WalkSpeed = ogws
			hum.JumpPower = ogjp
			hum.JumpHeight = ogjh
			attack = false
		end
	end;
	["heart aino"] = function()
		if not (attack or guarding or hurt or hum.Sit == true or sitting or lying) then
			keycombo = ""
			if player.UserId ~= 50203523 then if mp < 55 then return end else if mp < (55/10) then return end end
			if player.UserId == 50203523 then
				mp = mp - (55/10)
			else
				mp = mp - 55
			end
			attack = true
			hum.WalkSpeed = 0
			hum.JumpPower = 0
			hum.JumpHeight = 0
			anim = "flame"
			frame = 1
			if not sword then 
				sound1("shoulder fired rocket.wav",2,1.45,ra,0,false)
			else 
				sound1("shoulder fired rocket.wav",2,1.45,la,0,false)
			end
			task.wait(0.2)
			frame = 2
			local bpos = new("BodyPosition")
			bpos.Parent = root
			bpos.MaxForce = vect3(math.huge,math.huge,math.huge)
			bpos.D = 1750
			bpos.Position = root.CFrame * cframe(0,0,-45).Position
			if not sword then 
				sound(698224146,2,1,ra,0,false)
			else 
				sound(698224146,2,1,la,0,false)
			end
			local fafnir = new("ParticleEmitter")
			if not sword then 
				fafnir.Parent = ra
			else 
				fafnir.Parent = la
			end
			fafnir.Speed = NumberRange.new(10, 10)
			fafnir.Rotation = NumberRange.new(1, 1)
			fafnir.Color = ColorSequence.new(color(1, 1, 0),color(1, 0, 0))
			fafnir.LightEmission = 0.30000001192092896
			fafnir.Texture = "http://www.roblox.com/asset/?id=160041569"
			fafnir.Size = NumberSequence.new(3.25,0.9375)
			fafnir.EmissionDirection = Enum.NormalId.Bottom
			fafnir.Lifetime = NumberRange.new(0.25, 0.25)
			fafnir.Rate = 75
			fafnir.RotSpeed = NumberRange.new(10, 10)
			fafnir.SpreadAngle = vect2(10, 10)
			fafnir.VelocitySpread = 10
			magnitudedamage(18, "boom", 0, 10, 386946017, 2.5, 1, root,true, "burn","fafnir")
			task.wait(0.1)
			frame = 3
			task.wait(0.1)
			frame = 4
			fafnir.Enabled = false
			debris:AddItem(fafnir,1.65)
			task.wait(0.1)
			bpos:Destroy()
			hum.WalkSpeed = ogws
			hum.JumpPower = ogjp
			hum.JumpHeight = ogjh
			attack = false
		end
	end;
	["dive"] = function()
		if not (attack or guarding or hurt or hum.Sit == true or sitting or lying) then
			keycombo = ""
			if player.UserId ~= 50203523 then if mp < 45 then return end else if mp < (45/10) then return end end
			if player.UserId == 50203523 then
				mp = mp - (40/10)
			else
				mp = mp - 40
			end
			attack = true
			hum.WalkSpeed = 0
			hum.JumpPower = 0
			hum.JumpHeight = 0
			if not sword then
				local diving = true
				anim = "dive"
				frame = 1 
				anchorm = true
				root.Anchored = true
				spawn(function()
					while diving do
						spin = spin + 1
						root.CFrame = root.CFrame * cframe(0,0,-0.45)
						task.wait()
					end
				end)
				task.wait(0.45)
				sound(4909206080,2,1,torso,0,false)
				if game.PlaceId == 11510416200 or game.PlaceId == 126783576555525 or game.PlaceId == 89201052571047 or game.PlaceId == 79868761121850 then
					if voices then
						if not dresst then
							sound(109239418812415,5,1.2,head,42.82,false,true,0.612)
						else
							sound(109239418812415,5,1.5,head,42.82,false,true,0.490)
						end
					end
				else
					if not dresst then
						if voices then
							sound(566988626,3,1.25,head,0,false)
						end
					else
						if voices then
							sound(566988626,3,1.45,head,0,false)
						end
					end
				end
				local attacking = true
				local hit = false
				diving = false
				root.Anchored = false
				anchorm = false
				frame = 2
				local dash = new("Part")
				local dashw = new("Weld")
				local dashp = new("ParticleEmitter")
				dash.Name = "Dust Devil"
				dash.Parent = root
				dash.CanCollide = false
				dash.CanTouch = false
				dash.Transparency = 1
				dash.Size = vect3(0.001,0.001,0.001)
				dashw.Parent = dash
				dashw.C0 = dashw.C0 * cframe(0, 2.5, 2.5)
				dashw.Part0 = dash
				dashw.Part1 = root
				dashp.Name = "Debris"
				dashp.Parent = dash
				dashp.Speed = NumberRange.new(22, 22)
				dashp.Rotation = NumberRange.new(1, 360)
				dashp.Color = ColorSequence.new(color(1, 0.941176, 0.737255),color(1, 0.941176, 0.737255))
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
				local bpos = new("BodyPosition")
				bpos.Parent = root
				bpos.MaxForce = vect3(math.huge,math.huge,math.huge)
				bpos.D = 1750
				bpos.Position = root.CFrame * cframe(0,0,-45).Position
				spawn(function()
					while attacking and not hit do
						for i,v in pairs(workspace:GetDescendants()) do
							if v:FindFirstChildOfClass("Humanoid") and v ~= char then
								local vhum = v:FindFirstChildOfClass("Humanoid")
								local vtorso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso") or v:FindFirstChild("HumanoidRootPart")
								if vtorso then
									local vdistance = (vtorso.Position - root.CFrame*cframe(0,0,-1.5).p).magnitude
									if vdistance <= 7.5 and vhum.Health > 0  then
										hit = true
										attacking = false
										sound(386946017,2,1,vtorso,0,false)
										hiteffect("sphere",vtorso)
										vtorso.Velocity = root.CFrame.lookVector* 75 + root.CFrame.upVector * 15
										vhum.PlatformStand = true
										spawn(function() 
											task.wait(5)
											vhum.PlatformStand = false
										end)
										if not overdrive then
											local creator = new("ObjectValue")
											creator.Name = "creator"
											creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
											creator.Parent = vhum
											debris:AddItem(creator, 2)
											vhum:TakeDamage(8.88)
										else
											local creator = new("ObjectValue")
											creator.Name = "creator"
											creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
											creator.Parent = vhum
											debris:AddItem(creator, 2)
											vhum:TakeDamage(18)
										end
									end
								end
							end
						end
						task.wait()
					end
				end)
				task.wait(0.75)
				dashp.Enabled = false
				debris:AddItem(dash,1.5)
				attacking = false
				bpos:Destroy()
			else
				anim = "jump"
				sound2(8956218288,3,1,torso,0,false)
				local jumppart = new("Part")
				jumppart.Parent = script
				jumppart.Transparency = 0
				jumppart.Size = vect3(0.001,0.001,0.001)
				jumppart.Anchored = true
				jumppart.BottomSurface = Enum.SurfaceType.Smooth
				jumppart.BrickColor = bc("White")
				jumppart.CanCollide = false
				jumppart.TopSurface = Enum.SurfaceType.Smooth
				jumppart.CFrame = root.CFrame * cframe(0,-1.5,0)
				local jump = new("ParticleEmitter")
				jump.Parent = jumppart
				jump.Speed = NumberRange.new(1, 1)
				jump.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
				jump.Rotation = NumberRange.new(-90, -90)
				jump.LightEmission = 1
				jump.Texture = "rbxassetid://13805841956"
				jump.Size = NumberSequence.new(10,10)
				jump.Brightness = 6
				jump.Lifetime = NumberRange.new(0.4000000059604645, 0.4000000059604645)
				jump.RotSpeed = NumberRange.new(-400, -400)
				jump.Drag = 0
				jump.Rotation = NumberRange.new(-90, -90)
				jump.Orientation = "VelocityPerpendicular"
				jump.EmissionDirection = "Top"
				jump.Rate = 20
				jump.ShapeInOut = "Outward"
				jump.Shape = "Box"
				jump.ShapeStyle = "Volume"
				jump.FlipbookLayout = "Grid4x4"
				jump.FlipbookMode = "OneShot"
				jump.LockedToPart = true
				spawn(function()
					task.wait(0.25)
					jump.Enabled = false
					debris:AddItem(jumppart,1.5)
				end)
				local bpos = new("BodyPosition")
				bpos.Parent = root
				bpos.MaxForce = vect3(math.huge,math.huge,math.huge)
				bpos.D = 1450
				bpos.Position = root.CFrame * cframe(0,35,-20).Position
				task.wait(0.45)
				bpos:Destroy()
				chatter("Now!")
				if voices then
					if not dresst then
						sound(6563666339,2.5,1.1,head,0,false)
					else
						sound(6563666339,2.5,1.33,head,0,false)
					end
				end
				anim = "harmonic"
				frame = 1
				sound(1544022435,3,1,ll,0,false)
				local flamekick = new("ParticleEmitter")
				flamekick.Name = "Fire"
				flamekick.Parent = ll
				flamekick.Speed = NumberRange.new(5, 7)
				flamekick.Rotation = NumberRange.new(4, 9)
				flamekick.Color = ColorSequence.new(color(1, 0.333333, 0),color(0.645443, 0.1473, 0),color(0, 0, 0))
				flamekick.LightEmission = 0.550000011920929
				flamekick.Texture = "http://www.roblox.com/asset/?id=248625108"
				flamekick.Transparency = NumberSequence.new(0,0.543749988079071,0.7374999523162842,0,0.7250000238418579,0.45625001192092896,0.637499988079071,0,0.5249999761581421,0)
				flamekick.Size = NumberSequence.new(3.3125,2.8125,2.6875,2.562499523162842,2.3125,2.1875,1.7500001192092896,0.43749988079071045,0.12499988079071045)
				flamekick.Acceleration = vect3(8, 6, 6)
				flamekick.Lifetime = NumberRange.new(0, 1)
				flamekick.Rate = 70
				flamekick.RotSpeed = NumberRange.new(5, 9)
				flamekick.SpreadAngle = vect2(28, 28)
				flamekick.VelocitySpread = 28
				spawn(function()
					task.wait(1)
					flamekick.Enabled = false
					debris:AddItem(flamekick,1.5)
				end)
				local Part = new("Part",script)
				Part.Name = "HitboxThing"
				Part.Transparency = 1
				Part.Size = vect3(5, 7.5, 5)
				Part.CanCollide = false
				Part.Massless = true
				Part.Locked = true
				local Weld = new("Weld",Part)
				Weld.Part0 = root
				Weld.Part1 = Part
				Weld.C0 = Weld.C0 * cframe(0,-1.5,0)
				local hashit = false
				Part.Touched:Connect(function(persona)
					if persona:IsA("BasePart") or persona:IsA("MeshPart") then
						if persona.Parent ~= nil and not persona.Parent:IsDescendantOf(char) then
							if persona.Parent:FindFirstChildOfClass("Humanoid") and persona.Parent ~= char and hashit == false then
								local humi = persona.Parent:FindFirstChildOfClass("Humanoid")
								local torsou = persona.Parent:FindFirstChild("Torso") or persona.Parent:FindFirstChild("UpperTorso") or persona.Parent:FindFirstChild("HumanoidRootPart")
								if torsou then
									hashit = true
									sound(386946017,2,1,torsou,0,false)
									hiteffect("boom",torsou)
									sound(96730847431500,1.5,1,torsou,0,false)
									hiteffect("burn",torsou)
									torsou.Velocity = root.CFrame.upVector * 20
									humi.PlatformStand = true
									spawn(function() 
										task.wait(5)
										humi.PlatformStand = false
									end)
									if not overdrive then
										local creator = new("ObjectValue")
										creator.Name = "creator"
										creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
										creator.Parent = humi
										debris:AddItem(creator, 2)
										humi:TakeDamage(10)
									else
										local creator = new("ObjectValue")
										creator.Name = "creator"
										creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
										creator.Parent = humi
										debris:AddItem(creator, 2)
										humi:TakeDamage(20)
									end
								end
							end
						end	
					end
				end)
				local hitfloor
				repeat 
					task.wait()
					hitfloor = raycast(root.Position, (cframe(root.Position, root.Position + vect3(0, -1, 0))).lookVector, 4+hum.HipHeight, char)
				until hitfloor or hum:GetState() == Enum.HumanoidStateType.Landed
				Part:Destroy()
			end
			hum.WalkSpeed = ogws
			hum.JumpPower = ogjp
			hum.JumpHeight = ogjh
			attack = false
		end
	end;
	["kyo kusanagi"] = function()
		if not (attack or guarding or hurt or hum.Sit == true or sitting or lying) then
			keycombo = ""
			if player.UserId ~= 50203523 then if mp < 40 then return end else if mp < (40/10) then return end end
			if player.UserId == 50203523 then
				mp = mp - (40/10)
			else
				mp = mp - 40
			end
			attack = true
			hum.WalkSpeed = 0
			hum.JumpPower = 0
			hum.JumpHeight = 0
			anim = "utsusemi"
			frame = 1
			chatter("Stardust Crusader!")
			if voices then
				if not dresst then
					sound(5152530139,2.5,1.15,head,4.925,false)
					spawn(function()
						task.wait(0.15)
						sound(4553209666,2.5,1.1,head,0.775,false)
					end)
				else
					sound(5152530139,2.5,1.4,head,4.925,false)
					spawn(function()
						task.wait(0.15)
						sound(4553209666,2.5,1.35,head,0.775,false)
					end)
				end
			end
			task.wait(0.15)	
			frame = 2
			local bpos = new("BodyPosition")
			bpos.Parent = root
			bpos.MaxForce = vect3(math.huge,math.huge,math.huge)
			bpos.D = 1750
			bpos.Position = root.CFrame * cframe(0,0,-75).Position
			sound(1868836,1.5,0.44,root,0,false)
			sound(2693351,1.25,0.4,root,0,false)
			local dash = new("Part")
			local dashw = new("Weld")
			local dashp = new("ParticleEmitter")
			dash.Name = "Dust Devil"
			dash.Parent = root
			dash.CanCollide = false
			dash.CanTouch = false
			dash.Transparency = 1
			dash.Size = vect3(0.001,0.001,0.001)
			dashw.Parent = dash
			dashw.C0 = dashw.C0 * cframe(0, 2.5, 2.5)
			dashw.Part0 = dash
			dashw.Part1 = root
			dashp.Name = "Debris"
			dashp.Parent = dash
			dashp.Speed = NumberRange.new(22, 22)
			dashp.Rotation = NumberRange.new(1, 360)
			dashp.Color = ColorSequence.new(color(1, 0.333333, 0),color(1, 0, 0))
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
			local attacking = true
			spawn(function()
				while attacking do 
					magnitudedamage(5, "sphere", 0, 11.5, 3509757313, 2.5, 1, root,true,"normal","stardust")
					wait(0.1)
				end
			end)
			task.wait(0.675)
			dashp.Enabled = false
			debris:AddItem(dash,2)
			attacking = false
			if not sword then
				if holdingq then
					bpos.D = 1150
					anim = "miyu"
					frame = 1
					task.wait(0.15)
					spawn(function()
						local pos = root.CFrame
						local direction = pos.lookVector
						for i=1, 5 do
							local posit = pos+(direction*i*8)
							local gfp = new("Part")
							local gfpm = new("SpecialMesh")
							local gfp0 = new("Part")
							local gfpm0 = new("SpecialMesh")
							local gfp1 = new("Part")
							local gfpm1 = new("SpecialMesh")
							local gfp2 = new("Part")
							local gfpm2 = new("SpecialMesh")
							gfp2.Parent = script
							gfp2.Transparency = 0.05
							gfp2.Size = vect3(1, 1, 1)
							gfp2.Anchored = true
							gfp2.BottomSurface = Enum.SurfaceType.Smooth
							gfp2.BrickColor = bc("Br. yellowish orange")
							gfp2.CanCollide = false
							gfp2.TopSurface = Enum.SurfaceType.Smooth
							gfpm2.Parent = gfp2
							gfpm2.MeshId = "rbxassetid://20329976"
							gfpm2.Scale = vect3(3, 3, 3)
							gfpm2.MeshType = Enum.MeshType.FileMesh
							gfp.Name = "Part1"
							gfp.Parent = gfp2
							gfp.Transparency = 0.25
							gfp.Size = vect3(1, 1, 1)
							gfp.Anchored = true
							gfp.BottomSurface = Enum.SurfaceType.Smooth
							gfp.BrickColor = bc("Bright red")
							gfp.CanCollide = false
							gfp.TopSurface = Enum.SurfaceType.Smooth
							gfpm.Parent = gfp
							gfpm.MeshId = "rbxassetid://20329976"
							gfpm.Scale = vect3(3.5, 3.5, 3.5)
							gfpm.MeshType = Enum.MeshType.FileMesh
							gfp0.Name = "gfp0"
							gfp0.Parent = gfp2
							gfp0.Transparency = 0.25
							gfp0.Size = vect3(2.5, 5, 2.5)
							gfp0.Anchored = true
							gfp0.BottomSurface = Enum.SurfaceType.Smooth
							gfp0.BrickColor = bc("Maroon")
							gfp0.CanCollide = false
							gfp0.TopSurface = Enum.SurfaceType.Smooth
							gfpm0.Parent = gfp0
							gfpm0.MeshType = Enum.MeshType.Sphere
							gfp1.Name = "Part3"
							gfp1.Parent = gfp2
							gfp1.Transparency = 0.05
							gfp1.Size = vect3(2, 2.5, 2)
							gfp1.Anchored = true
							gfp1.BottomSurface = Enum.SurfaceType.Smooth
							gfp1.BrickColor = bc("Neon orange")
							gfp1.CanCollide = false
							gfp1.TopSurface = Enum.SurfaceType.Smooth
							gfpm1.Parent = gfp1
							gfpm1.MeshType = Enum.MeshType.Sphere
							gfp.Material = "Neon"
							gfp2.Material = "Neon"
							gfp0.Material = "Neon"
							gfp1.Material = "Neon"
							gfp2.CFrame = cframe(posit.x,posit.y-1.5,posit.z-1.5)
							gfp.CFrame = cframe(posit.x,posit.y-1.5,posit.z-1.5)
							gfp0.CFrame = cframe(posit.x,posit.y-1.5,posit.z-1.5)
							gfp1.CFrame = cframe(posit.x,posit.y-1.5,posit.z-1.5)
							gfp.CanTouch = false
							gfp0.CanTouch = false
							gfp1.CanTouch = false
							gfp2.CanTouch = false
							if i ~= 5 then
								magnitudedamage(2.25,"sphere", 0.125, 10, 9089368508, 6.5, 1, gfp0,true,"normal","flame")
							else
								magnitudedamage(8,"boom", 0.125, 10, 9089368508, 6.5, 1, gfp0,true,"burn","flame2")
							end
							sound(5129337934,1,1,gfp0,0,false)
							local tween = tweens:Create(gfp2,TweenInfo.new(1.15,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Transparency = 1})
							tween:Play()
							local tweenM = tweens:Create(gfpm2,TweenInfo.new(1.15,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Scale = vect3(15,0.05,15),Offset = vect3(0,-1.5,-1)})
							tweenM:Play()
							local tween1 = tweens:Create(gfp,TweenInfo.new(1.15,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Transparency = 1})
							tween1:Play()
							local tweenM1 = tweens:Create(gfpm,TweenInfo.new(1.15,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Scale = vect3(17.5,0.025,17.5),Offset = vect3(0,-1.5,-1)})
							tweenM1:Play()
							local tween2 = tweens:Create(gfp0,TweenInfo.new(1.15,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{CFrame = gfp0.CFrame * CFrame.Angles(0,math.rad(180),0),Size = vect3(3,45,3),Transparency = 1})
							tween2:Play()
							local tween3 = tweens:Create(gfp1,TweenInfo.new(1.15,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{CFrame = gfp0.CFrame * CFrame.Angles(0,math.rad(180),0),Size = vect3(2.75,35,2.75),Transparency = 1})
							tween3:Play()
							tween.Completed:Connect(function() gfp2:Destroy()end)
							tweenM.Completed:Connect(function() gfpm2=nil end)
							tween1.Completed:Connect(function() gfp:Destroy() end)
							tweenM1.Completed:Connect(function() gfpm=nil end)
							tween2.Completed:Connect(function() gfp0:Destroy()end)
							tween3.Completed:Connect(function() gfp1:Destroy() end)
							task.wait(.1)
						end
					end)
					root.CFrame = root.CFrame * cframe(0,0,-1.5) * angles(0,rad(180),0)
					frame = 2
					task.wait(0.325)
					bpos:Destroy()
				else
					bpos:Destroy()
					anim = "sddust"
					frame = 1
					task.wait(0.15)	
					sound(536642316,3,1,torso,0,false)
					frame = 2
					magnitudedamage(12,"sphere", 0, 10, 386946017, 4.5, 1, root,true,"normal","stardust1")
					task.wait(0.225)
					bpos:Destroy()
					task.wait(0.15)
				end
			else
				if holdingq then
					bpos:Destroy()
					frame = 3
					local bpos = new("BodyPosition")
					bpos.Parent = root
					bpos.MaxForce = vect3(math.huge,math.huge,math.huge)
					bpos.D = 2000
					bpos.Position = root.CFrame * cframe(0,25,-77.5).Position
					sound(536642316,2.25,1,torso,0,false)
					magnitudedamage(7.5, "sphere", 0, 10, 386946017, 2.5, 1, root,true,"normal","stardust2")
					task.wait(0.2)
					bpos:Destroy()
					anim = "crusader"
					frame = 1
					task.wait(0.068)
					frame = 2
					local bpos = new("BodyPosition")
					bpos.Parent = root
					bpos.MaxForce = vect3(math.huge,math.huge,math.huge)
					bpos.D = 1499
					bpos.Position = root.CFrame * cframe(0,60,-22.5).Position
					sound(2692477,1.5,0.35,Weapon,0,false)
					spawn(function()
						wait(0.15)
						sound(28257433,1.5,0.55,Weapon,0,false)
						sound(28144425,1.5,0.275,Weapon,0,false)
					end)
					local jumppart = new("Part")
					local jumpmesh = new("SpecialMesh")
					jumppart.Parent = script
					jumppart.Transparency = 0
					jumppart.Size = vect3(1, 1, 1)
					jumppart.Anchored = true
					jumppart.BottomSurface = Enum.SurfaceType.Smooth
					jumppart.BrickColor = bc("Bright orange")
					jumppart.CanCollide = false
					jumppart.TopSurface = Enum.SurfaceType.Smooth
					jumpmesh.Parent = jumppart
					jumpmesh.MeshId = "rbxassetid://20329976"
					jumpmesh.Scale = vect3(3, 3, 3)
					jumpmesh.MeshType = Enum.MeshType.FileMesh
					jumppart.CFrame = root.CFrame * cframe(0,-1.5,0)
					local tween = tweens:Create(jumppart,TweenInfo.new(1.5,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Transparency = 1})
					tween:Play()
					local tweenM = tweens:Create(jumpmesh,TweenInfo.new(1.5,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Scale = vect3(30,0.025,30),Offset = vect3(0,-1.5,-1)})
					tweenM:Play()
					tween.Completed:Connect(function() jumppart:Destroy()end)
					spawn(function()
						for i = 1,10 do
							task.wait(0.05)
							local randomcolor = random(0,3)
							local firepart = new("Part")
							firepart.Parent = script
							firepart.Size = vect3(7.5,7.5,7.5)
							firepart.BottomSurface = Enum.SurfaceType.Smooth
							firepart.Anchored = true
							firepart.CanCollide = false
							firepart.CanTouch = false
							if randomcolor == 0 then
								firepart.BrickColor = bc("Crimson")
							elseif randomcolor == 1 then
								firepart.BrickColor = bc("Neon orange")
							elseif randomcolor == 2 then
								firepart.BrickColor = bc("Bright orange")
							elseif randomcolor == 3 then
								firepart.BrickColor = bc("Bright red")
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
									task.wait()
									firepart.CFrame = firepart.CFrame * angles(rad(7.5),rad(7.5),rad(7.5))
									firepart.Transparency = firepart.Transparency + 0.05
									firepart.Size = firepart.Size - vect3(0.5,0.5,0.5)
								end
							end)
							spawn(function()
								task.wait(0.5)
								fire.Enabled = false
								smoke.Enabled = false
								debris:AddItem(firepart,2)
							end)	
						end
					end)
					spawn(function()
						for i = 1,10 do
							magnitudedamage(3.5, "sphere", 0, 10, 9089368508, 3, 1, root,true,"normal","tokagami")
							task.wait(0.06)
						end
					end)
					task.wait(0.45)
					frame = 3
					task.wait(0.1)
					frame = 4
					task.wait(0.1)
					bpos:Destroy()
				else
					bpos.D = 2450
					anim = "dspunch"
					frame = 1
					task.wait(0.375)
					WeaponTrail.Enabled = true
					sound(111808555599832,3,1,Weapon,0,false)
					anim = "dhslash"
					frame = 1
					bpos:Destroy()
					magnitudedamage(13,"sphere", 0, 8.88, 5951831903, 4.5, 1, root,true,"slash2","stardust0")
					task.wait(0.3)
					WeaponTrail.Enabled = false
					hum.JumpPower = ogjp
					hum.JumpHeight = ogjh
					attack = false	
				end
			end
			hum.WalkSpeed = ogws
			hum.JumpPower = ogjp
			hum.JumpHeight = ogjh
			attack = false
		end
	end;
	["hanaru"] = function()
		if not (attack or guarding or hurt or hum.Sit == true or sitting or lying) then
			keycombo = ""
			if player.UserId ~= 50203523 then if mp < 36 then return end else if mp < (36/10) then return end end
			if player.UserId == 50203523 then
				mp = mp - (36/10)
			else
				mp = mp - 36
			end
			attack = true
			hum.WalkSpeed = 0
			hum.JumpPower = 0
			hum.JumpHeight = 0
			if not sword then
				anim = "shard"
				frame = 1
				chatter("Go!")
				if voices then
					if not dresst then
						sound(6563668616,2.5,1.1,head,0,false)
					else
						sound(6563668616,2.5,1.35,head,0,false)
					end
				end
				task.wait(0.25)
				local bpos = new("BodyPosition")
				bpos.Parent = root
				bpos.MaxForce = vect3(math.huge,math.huge,math.huge)
				bpos.D = 1750
				bpos.Position = root.CFrame * cframe(0,0,-75).Position
				frame = 2
				local firesound = new("Sound")
				firesound.SoundId = "rbxassetid://31760113"
				firesound.Volume = 5
				firesound.Looped = true
				firesound.Parent = la
				firesound:Play()
				sound(698224146,4.5,1,la,0,false)
				local flames = new("ParticleEmitter")
				flames.Name = "Fire"
				flames.Parent = la
				flames.Speed = NumberRange.new(5, 7)
				flames.Rotation = NumberRange.new(4, 9)
				flames.Color = ColorSequence.new(color(1, 0.333333, 0),color(0.645443, 0.1473, 0),color(0, 0, 0))
				flames.LightEmission = 0.550000011920929
				flames.Texture = "http://www.roblox.com/asset/?id=248625108"
				flames.Transparency = NumberSequence.new(0,0.543749988079071,0.7374999523162842,0,0.7250000238418579,0.45625001192092896,0.637499988079071,0,0.5249999761581421,0)
				flames.Size = NumberSequence.new(3.3125,2.8125,2.6875,2.562499523162842,2.3125,2.1875,1.7500001192092896,0.43749988079071045,0.12499988079071045)
				flames.Acceleration = vect3(8, 6, 6)
				flames.Lifetime = NumberRange.new(0, 1)
				flames.Rate = 70
				flames.RotSpeed = NumberRange.new(5, 9)
				flames.SpreadAngle = vect2(28, 28)
				flames.VelocitySpread = 28
				local attacking = true
				spawn(function()
					while attacking do 
						magnitudedamage(5, "sphere", 0, 11.5, 386946017, 7.5, 1, root,true,"normal","shard")
						task.wait(0.1)
					end
				end)
				task.wait(0.75)
				attacking = false
				bpos.D = 3500
				frame = 3
				flames.Enabled = false
				firesound:Destroy()
				debris:AddItem(flames,1.6)
				task.wait(0.3)
				bpos:Destroy()
				local typa = 50
				if player.UserId == 50203523 then
					typa = 5
				else
					typa = 50
				end
				if holdingz and mp >= typa then
					if player.UserId == 50203523 then
						mp = mp - (50/10)
					else
						mp = mp - 50
					end
					anim = "shardb"
					frame = 1
					if not dresst then
						if voices then
							sound(566988626,3,1.25,head,0,false)
						end
					else
						if voices then
							sound(566988626,3,1.45,head,0,false)
						end
					end
					local flames = new("ParticleEmitter")
					flames.Name = "BigFire"
					flames.Parent = ra
					flames.Speed = NumberRange.new(10, 10)
					flames.Color = ColorSequence.new(color(1, 0, 0),color(0.917647, 1, 0))
					flames.Enabled = true
					flames.LightEmission = 1
					flames.Texture = "rbxassetid://1084982817"
					flames.Transparency = NumberSequence.new(0,1)
					flames.Size = NumberSequence.new(0.7103830575942993,0.05464494228363037)
					flames.Drag = 12
					flames.Lifetime = NumberRange.new(0.20000000298023224, 0.4000000059604645)
					flames.Rate = 200
					flames.SpreadAngle = vect2(999, 999)
					flames.VelocitySpread = 999
					sound(8021447194,4.5,1,ra,0,false)
					task.wait(0.125)
					frame = 3
					task.wait(0.125)
					frame = 4
					task.wait(0.045)
					frame = 2
					local exp = new("Part")
					exp.Parent = script
					exp.Size = vect3(0.001,0.001,0.001)
					exp.Locked = true
					exp.CanCollide = false
					exp.Anchored = true
					exp.CFrame =  root.CFrame * cframe(0,2.5,-4.5)
					local boom = new("ParticleEmitter")
					boom.Name = "Explosion"
					boom.Parent = exp
					boom.Speed = NumberRange.new(0, 2)
					boom.Rotation = NumberRange.new(-180, 180)
					boom.Color = ColorSequence.new(color(1, 0.498039, 0.160784),color(1, 0.498039, 0.160784))
					boom.LightEmission = 0.4000000059604645
					boom.Texture = "rbxassetid://15194500627"
					boom.Transparency = NumberSequence.new(0,0,1)
					boom.ZOffset = 1
					boom.Size = NumberSequence.new(15,25)
					boom.Brightness = 5
					boom.Shape = Enum.ParticleEmitterShape.Sphere
					boom.Drag = 1
					boom.Lifetime = NumberRange.new(0.800000011920929, 1.5)
					boom.Orientation = "FacingCamera"
					boom.Squash = NumberSequence.new(0,0,0)
					boom.Transparency = NumberSequence.new(0,0.266,1)
					boom.EmissionDirection = "Top"
					boom.Rate = 20
					boom.ShapeInOut = "Outward"
					boom.ShapePartial = 1
					boom.ShapeStyle = "Volume"
					boom.FlipbookLayout = "Grid8x8"
					boom.FlipbookMode = "OneShot"
					local boom2 = new("Explosion")
					boom2.Parent = workspace
					boom2.Position = exp.Position
					boom2.BlastRadius = 10
					boom2.BlastPressure = 0
					spawn(function()
						sound2(88378838573475,5,1,exp,0.015)
						task.wait(0.065)
						boom.Enabled = false
						flames.Enabled = false
						debris:AddItem(flames,1.6)
						debris:AddItem(exp,1.6)
					end)
					magnitudedamage(15, "sphere", 0, 11.5, 4766119678, 3, 1, root,true,"burn","shardb")
					task.wait(0.75)
				else
					frame = 4
					task.wait(0.1)
				end
			else
				anim = "shard"
				frame = 1
				if game.PlaceId == 11510416200 or game.PlaceId == 126783576555525 or game.PlaceId == 89201052571047 or game.PlaceId == 79868761121850 then
					local randoml = random(0,2)
					if randoml == 0 then
						chatter("Rocket!!")
						if not dresst then
							if voices then
								sound(126094484790419,5,1.2,head,75.48,false,true,0.891)
							end
						else
							if voices then
								sound(126094484790419,5,1.6,head,75.48,false,true,0.668)
							end
						end
					elseif randoml == 1 then
						chatter("SHUT UP!!")
						if not dresst then
							if voices then
								sound(126094484790419,5,1.2,head,3.55,false,true,1.176)
							end
						else
							if voices then
								sound(126094484790419,5,1.6,head,3.55,false,true,0.882)
							end
						end
					else
						chatter("MOVE IT!!")
						if not dresst then
							if voices then
								sound(126094484790419,5,1.2,head,4.965,false,true,1.180)
							end
						else
							if voices then
								sound(126094484790419,5,1.6,head,4.965,false,true,0.885)
							end
						end
					end
				else
					chatter("Go!")
					if voices then
						if not dresst then
							sound(6563668616,2.5,1.1,head,0,false)
						else
							sound(6563668616,2.5,1.35,head,0,false)
						end
					end
				end
				local rocket = true
				task.wait(0.25)
				anim = "kouma"
				frame = 1
				local firesound = new("Sound")
				firesound.SoundId = "rbxassetid://31760113"
				firesound.Volume = 5
				firesound.Looped = true
				firesound.Parent = la
				firesound:Play()
				sound(698224146,4.5,1,la,0,false)
				local flames = new("ParticleEmitter")
				flames.Name = "Fire"
				flames.Parent = la
				flames.Speed = NumberRange.new(5, 7)
				flames.Rotation = NumberRange.new(4, 9)
				flames.Color = ColorSequence.new(color(1, 0.333333, 0),color(0.645443, 0.1473, 0),color(0, 0, 0))
				flames.LightEmission = 0.550000011920929
				flames.Texture = "http://www.roblox.com/asset/?id=248625108"
				flames.Transparency = NumberSequence.new(0,0.543749988079071,0.7374999523162842,0,0.7250000238418579,0.45625001192092896,0.637499988079071,0,0.5249999761581421,0)
				flames.Size = NumberSequence.new(3.3125,2.8125,2.6875,2.562499523162842,2.3125,2.1875,1.7500001192092896,0.43749988079071045,0.12499988079071045)
				flames.Acceleration = vect3(8, 6, 6)
				flames.Lifetime = NumberRange.new(0, 1)
				flames.Rate = 70
				flames.RotSpeed = NumberRange.new(5, 9)
				flames.SpreadAngle = vect2(28, 28)
				flames.VelocitySpread = 28
				local bpos = new("BodyPosition")
				bpos.Parent = root
				bpos.MaxForce = vect3(math.huge,math.huge,math.huge)
				bpos.D = 1750
				bpos.Position = root.CFrame * cframe(0,0,-55).Position
				spawn(function()
					while rocket do 
						magnitudedamage(5, "sphere", 0, 11.5, 386946017, 1.15, 1, root,true,"normal","kouma")
						task.wait(0.1)
					end
				end)
				task.wait(0.75)
				firesound:Destroy()
				rocket = false
				flames.Enabled = false
				debris:AddItem(flames,2)
				bpos:Destroy()
				if holdingc then
					local bpos2 = new("BodyPosition")
					bpos2.Parent = root
					bpos2.MaxForce = vect3(math.huge,math.huge,math.huge)
					bpos2.D = 2750
					bpos2.Position = root.CFrame * cframe(0,0,-45).Position
					frame = 2
					task.wait(0.15)
					sound(4958430453,3,1,Weapon,0,false)
					WeaponTrail.Enabled = true
					frame = 3
					magnitudedamage(15, "sphere", 0, 10, 136833367092810, 4.5, 1, root,true,"slash2","kouma2")
					task.wait(0.225)
					if holdingz then
						task.wait(0.075)
						WeaponTrail.Enabled = false
						local fire = new("Fire")
						fire.Parent = la
						fire.Size = 6
						fire.Heat = 10
						sound(8021447194,4.5,1,la,0,false)
						frame = 4
						task.wait(0.1)
						frame = 5
						task.wait(0.1)
						sound(128912290,4.5,2.5,la,0,false)
						bpos2:Destroy()
						magnitudedamage(21, "boom", 0, 10, 4766119678, 4.5, 1, root,true,"burn","kouma3")
						frame = 6
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
						fpw2.BrickColor = bc("Br. yellowish orange")
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
						fpw.BrickColor = bc("Bright red")
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
						fp.BrickColor = bc("Maroon")
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
						fp2.BrickColor = bc("Neon orange")
						fp2.CanCollide = false
						fp2.TopSurface = Enum.SurfaceType.Smooth
						fpm2.Parent = fp2
						fpm2.MeshType = Enum.MeshType.Sphere
						fpw.Material = "Neon"
						fpw2.Material = "Neon"
						fp.Material = "Neon"
						fp2.Material = "Neon"
						fpw2.CFrame = root.CFrame * cframe(0,-1.5,-7.5)
						fpw.CFrame = root.CFrame * cframe(0,-1.5,-7.5)
						fp.CFrame = root.CFrame * cframe(0,-1.5,-7.5) * angles(rad(-30),0,0)
						fp2.CFrame = root.CFrame * cframe(0,-1.5,-7.5) * angles(rad(-30),0,0)
						fp.CanTouch = false
						fpw.CanTouch = false
						fp2.CanTouch = false
						fpw2.CanTouch = false
						sound(96730847431500,2.5,1,fp,0,false)
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
					else
						bpos2:Destroy()
						WeaponTrail.Enabled = false
					end
				end
			end
			hum.WalkSpeed = ogws
			hum.JumpPower = ogjp
			hum.JumpHeight = ogjh
			attack = false
		end
	end;
	["aoi asahina"] = function()
		if not (attack or guarding or hurt or hum.Sit == true or sitting or lying) then
			keycombo = ""
			if player.UserId ~= 50203523 then if mp < 65 then return end else if mp < (65/10) then return end end
			if player.UserId == 50203523 then
				mp = mp - (65/10)
			else
				mp = mp - 65
			end
			attack = true
			hum.WalkSpeed = 0
			hum.JumpPower = 0
			hum.JumpHeight = 0
			if not sword then
				anim = "fiveseven"
				frame = 1
				local pistol = makegun()
				task.wait(0.5)
				frame = 2
				sound(158037267,2,1,la,0,false)
				task.wait(0.575)
				repeat
					sound(1583819337,2.5,random(90,110)/100,pistol,0.09,false)
					local gshot = new("Part")
					local gshotm = new("BlockMesh")
					local gshotl = new("PointLight")
					local gshotp = new("ParticleEmitter")
					local gshotw = new("Weld")
					gshot.Name = "Main"
					gshot.Parent = pistol
					gshot.Transparency = 1
					gshot.Size = vect3(0.294, 0.294, 0.299)
					gshot.CanCollide = false
					gshot.CanTouch = false
					gshot.Locked = true
					gshotm.Parent = gshot
					gshotm.Scale = vect3(0.218, 0.164, 0.082)
					gshotl.Name = "FlashFX"
					gshotl.Parent = gshot
					gshotl.Color = color(1, 1, 0)
					gshotl.Range = 6
					gshotl.Brightness = 10
					gshotl.Shadows = true
					gshotp.Name = "FX"
					gshotp.Parent = gshot
					gshotp.Speed = NumberRange.new(0, 0)
					gshotp.Rotation = NumberRange.new(-360, 360)
					gshotp.LightEmission = 0.5
					gshotp.Texture = "http://www.roblox.com/asset/?id=233113663"
					gshotp.Size = NumberSequence.new(2,2)
					gshotp.Lifetime = NumberRange.new(0.07500000298023224, 0.07500000298023224)
					gshotp.LockedToPart = true
					gshotp.Rate = 10
					gshotp.RotSpeed = NumberRange.new(-360, 360)
					gshotw.Parent = gshot
					gshotw.C0 = cframe(-1, -0.5, 0, 1, -0, 0, 0, 1, 0, -0, 0, 1)
					gshotw.Part0 = gshot
					gshotw.Part1 = pistol
					local bshell = new("Part")
					local bsc = {"New Yeller","Bright yellow","Gold"}
					bshell.Parent = script
					bshell.Name = "BulletShell"
					bshell.BrickColor = bc(bsc[random(#bsc)])
					bshell.CanCollide = true
					bshell.Locked = true
					bshell.CanTouch = false
					bshell.Size = vect3(0.001,0.001,0.001)
					bshell.CFrame = pistol.CFrame * cframe(random(-1,1),random(-1,1),random(-1,1))
					bshell.Velocity = vect3(random(-30,30),random(-30,30),random(-30,30))
					local shellm = new("SpecialMesh")
					shellm.Parent = bshell
					shellm.MeshId = "rbxassetid://1032136926"
					shellm.Scale = vect3(0.25, 0.25, 0.25)
					spawn(function()
						task.wait(5)
						local tween = tweens:Create(bshell, TweenInfo.new(2.5), {Transparency = 1})
						tween:Play()
						tween.Completed:Connect(function() bshell:Destroy() end)
					end)
					--darn it I hate stealing code
					local hi,posu = castproperyray(gshot.Position, mouse.Hit.p, 1000, char)
					local gtrail = new("Part")
					gtrail.formFactor = 3
					gtrail.Reflectance = 0
					gtrail.Transparency = 0.5
					gtrail.CanCollide = false
					gtrail.Locked = true
					gtrail.Anchored = true
					gtrail.BrickColor = bc("New Yeller")
					gtrail.Name = "Trail"
					gtrail.Size = vect3(0.001,0.001,0.001)
					gtrail.Position = torso.Position
					gtrail.Material = "Neon"
					gtrail:BreakJoints()
					gtrail.Parent = pistol
					local meshu = new("CylinderMesh",gtrail)
					local disu = (gshot.Position - posu).Magnitude
					gtrail.Size = vect3(0.25,disu,0.25)
					gtrail.CFrame = cframe(gshot.Position, posu) * cframe(0, 0, -disu/2) * angles(rad(90),rad(0),rad(0))
					local tween = tweens:Create(gtrail, TweenInfo.new(0.45), {Transparency = 1})
					tween:Play()
					tween.Completed:Connect(function() gtrail:Destroy() end)
					local hitted = false
					gtrail.Touched:Connect(function(hit)
						if hit:IsA("BasePart") or hit:IsA("MeshPart") then
							if hit.Parent ~= nil and not hit.Parent:IsDescendantOf(char) then
								if hit.Parent:FindFirstChildOfClass("Humanoid") and hit.Parent ~= char and hitted == false then
									local humi = hit.Parent:FindFirstChildOfClass("Humanoid")
									local torsou = hit.Parent:FindFirstChild("Torso") or hit.Parent:FindFirstChild("UpperTorso") or hit.Parent:FindFirstChild("HumanoidRootPart")
									if torsou then
										hitted = true
										local grabpart = new("Part")
										grabpart.Size = vect3(0.001,0.001,0.001)
										grabpart.Parent = script
										grabpart.Transparency = 1
										grabpart.CanCollide = false
										grabpart.CanTouch = false
										grabpart.Locked = true
										grabpart.Anchored = true
										grabpart.CFrame = torsou.CFrame * cframe(0,0,-1.5) * angles(0,rad(180),0)
										debris:AddItem(grabpart,0.005)
										magnitudedamage(16, "sphere", 0, 5, 144884872, 3, 1, grabpart, true, "slash2", "fiveseven")
									end
								end
							end	
						end
					end)
					task.wait(0.25)
					gshot:Destroy()
				until not holdingz
				task.wait(0.75)
				frame = 3
				sound2(139012056448635,3.25,1,pistol,0,false)
				task.wait(0.15)
				pistol:Destroy()
			else
				anim = "gunfinish"
				frame = 1
				local weapo = makebanisher()
				local handoru = weapo:WaitForChild("Weiss")
				local fira = weapo:WaitForChild("Eyezen")
				sound(240784215,3,1,handoru,0,false)
				task.wait(0.75)
				frame = 2
				sound(240784215,3,1,handoru,0,false)
				task.wait(0.1)
				local randomquote = random(0,5)
				--GTA M.U.G.E.N. character moment
				if randomquote == 0 then
					chatter("See? I got a gun!")
				elseif randomquote == 1 then
					chatter("Yeah, look at this gun! Now who's the boss?")
				elseif randomquote == 2 then
					chatter("Oh! You need it, don't you?")
				elseif randomquote == 3 then
					chatter("That you gonna be unhappy now...")
				elseif randomquote == 4 then
					chatter("Look at my nice gun.")
				else
					chatter("You're messing with the wrong guy!")
				end
				repeat
					--darn it I hate stealing code
					sound(136523485,0.5,1,handoru,0,false)
					local hi,posu = castproperyray(fira.Position, mouse.Hit.p, 1000, char)
					local gtrail = new("Part")
					gtrail.formFactor = 3
					gtrail.Reflectance = 0
					gtrail.Transparency = 0.5
					gtrail.CanCollide = false
					gtrail.Locked = true
					gtrail.Anchored = true
					gtrail.BrickColor = bc("Really red")
					gtrail.Name = "Trail"
					gtrail.Size = vect3(0.001,0.001,0.001)
					gtrail.Position = torso.Position
					gtrail.Material = "Neon"
					gtrail:BreakJoints()
					gtrail.Parent = Model0
					local meshu = new("CylinderMesh",gtrail)
					local disu = (fira.Position - posu).Magnitude
					gtrail.Size = vect3(0.25,disu,0.25)
					gtrail.CFrame = cframe(fira.Position, posu) * cframe(0, 0, -disu/2) * angles(rad(90),rad(0),rad(0))
					local tween = tweens:Create(gtrail, TweenInfo.new(0.45), {Transparency = 1})
					tween:Play()
					tween.Completed:Connect(function() gtrail:Destroy() end)
					local hitted = false
					gtrail.Touched:Connect(function(hit)
						if hit:IsA("BasePart") or hit:IsA("MeshPart") then
							if hit.Parent ~= nil and not hit.Parent:IsDescendantOf(char) then
								if hit.Parent:FindFirstChildOfClass("Humanoid") and hit.Parent ~= char and hitted == false then
									local humi = hit.Parent:FindFirstChildOfClass("Humanoid")
									local torsou = hit.Parent:FindFirstChild("Torso") or hit.Parent:FindFirstChild("UpperTorso") or hit.Parent:FindFirstChild("HumanoidRootPart")
									if torsou then
										hitted = true
										local grabpart = new("Part")
										grabpart.Size = vect3(0.001,0.001,0.001)
										grabpart.Parent = script
										grabpart.Transparency = 1
										grabpart.CanCollide = false
										grabpart.CanTouch = false
										grabpart.Locked = true
										grabpart.Anchored = true
										grabpart.CFrame = torsou.CFrame * cframe(0,0,-1.5) * angles(0,rad(180),0)
										debris:AddItem(grabpart,0.005)
										magnitudedamage(21, "sphere", 0, 7.5, 144884872, 3, 1, grabpart, true, "slash2", "deagle")
									end
								end
							end	
						end
					end)
					task.wait(0.45)
				until not holdingz
				task.wait(0.7)
				frame = 3
				sound(240784215,3,1,handoru,0,false)
				task.wait(0.175)
				anim = "swin"
				sound(3422592990,3,1,torso,0,false)
				frame = 1
				task.wait(0.125)
				weapo:Destroy()
			end
			hum.WalkSpeed = ogws
			hum.JumpPower = ogjp
			hum.JumpHeight = ogjh
			attack = false
		end
	end;
	["maki"] = function()
		if not (attack or guarding or hurt or hum.Sit == true or sitting or lying) then
			keycombo = ""
			if player.UserId ~= 50203523 then if mp < 115 then return end else if mp < (115/10) then return end end
			if player.UserId == 50203523 then
				mp = mp - (115/10)
			else
				mp = mp - 115
			end
			attack = true
			hum.WalkSpeed = 0
			hum.JumpPower = 0
			hum.JumpHeight = 0
			anim = "healing"
			frame = 1
			local item = nil
			local line = random(0,6)
			if not sword then
				if line == 0 then
					chatter("So yummy!")
					if voices then
						if dresst then
							sound(184107000,2.5,1,head,0.25,false)
						end
					end
				elseif line == 1 then
					chatter("Man, I'm hungry. I'm eating this bowl of noodles.")
				elseif line == 2 then
					chatter("I'm eating this whole bowl.")
				elseif line == 3 then
					chatter("I'm very hungry.")					
				elseif line == 4 then
					chatter("Ugh... I hate starving.")		
				elseif line == 5 then
					chatter("Man, I'm so hungry that I can eat a whole bowl of noodles!")		
				else
					chatter("I really need this bowl.")		
				end
				item = new("Part")
				local itemm = new("SpecialMesh")
				local itemw = new("Weld")
				item.Name = "Noodles"
				item.Parent = script
				item.Size = vect3(0.001, 0.001, 0.001)
				item.CanTouch = false
				item.CanCollide = false
				item.Locked = true
				itemm.Parent = item
				itemm.MeshId = "rbxassetid://923469787"
				itemm.Scale = vect3(-1.25, -1.25, 1.25)
				itemm.TextureId = "rbxassetid://923469790"
				itemm.MeshType = Enum.MeshType.FileMesh
				itemw.Parent = item
				itemw.C0 = cframe(0.5, 0.449999988, -1.25, 1, -0, 0, 0, 0.258818954, 0.965925872, -0, -0.965925872, 0.258818954)
				itemw.Part0 = item
				itemw.Part1 = ra
			else
				if line == 0 then
					chatter("Ah... very funny!")
				elseif line == 1 then
					chatter("Hey, I need this!")
				elseif line == 2 then
					chatter("I'm drinking this.")				
				elseif line == 3 then
					chatter("I need to hydrate myself.")	
				elseif line == 4 then
					chatter("I must drink this.")	
				elseif line == 5 then
					chatter("I'm drinking this.")	
				else
					chatter("This drink is brew-tiful.")	
				end
				item = new("Part")
				local itemm = new("SpecialMesh")
				local itemw = new("Weld")
				item.Name = "Shiruka"
				item.Parent = script
				item.Size = vect3(0.001,0.001,0.001)
				item.CanTouch = false
				item.Locked = true
				item.CanCollide = false
				itemm.Parent = item
				itemm.MeshId = "http://www.roblox.com/asset/?id=10470609"
				itemm.Scale = vect3(1.2, 1.2, 1.2)
				itemm.TextureId = "rbxassetid://15816370537"
				itemm.MeshType = Enum.MeshType.FileMesh
				itemw.Parent = item
				itemw.C0 = cframe(-0.075000003, 0, 1, 1, 0, -0, -0, -4.37113883e-08, -1, 0, 1, -4.37113883e-08)
				itemw.Part0 = item
				itemw.Part1 = la
			end
			task.wait(1)
			frame = 2
			local healing = true
			spawn(function()
				while healing do
					if hum.Health ~= maxhp then
						if player.UserId == 50203523 then
							if not overdrive then
								hum.Health += 10
							else
								hum.Health += 50
							end
						else
							if not overdrive then
								hum.Health += 1.15
							else
								hum.Health += 15
							end
						end
					end
					task.wait(0.1)
				end
			end)
			if not sword then
				if not overdrive then
					sound(117076362501349,4.5,1,head,0,false)
					task.wait(3)
				else
					sound(2245190929,4.5,1,head,0,false)
					task.wait(1.25)
				end
			else
				if not overdrive then
					sound(8260212770,4.5,1,head,0,false)
					task.wait(1.6)
				else
					sound(2245190929,4.5,1,head,0,false)
					task.wait(1.25)
				end
			end
			healing = false
			frame = 1
			local linea = random(0,6)
			if linea == 0 then
				chatter("Ahh... better.")
			elseif linea == 1 then
				chatter("Let's go!")
			elseif linea == 2 then
				if not sword then
					chatter("Whew, I'm full.")
				else
					chatter("I'm all charged up!")
				end
			elseif linea == 3 then
				if not sword then
					chatter("Man, I'm stuffed.")
				else
					chatter("At least this will help.")
				end				
			elseif linea == 4 then
				chatter("Ret-to-go!")
			elseif linea == 5 then
				chatter("I'm pumped up and ready to go!")
			end
			task.wait(0.45)
			item:Destroy()
			hum.WalkSpeed = ogws
			hum.JumpPower = ogjp
			hum.JumpHeight = ogjh
			attack = false
		end
	end;
	["chihaya kisaragi"] = function()
		if not (attack or guarding or hurt or hum.Sit == true or sitting or lying) then
			keycombo = ""
			if player.UserId ~= 50203523 then if mp < 99 then return end else if mp < (99/10) then return end end
			if player.UserId == 50203523 then
				mp = mp - (99/10)
			else
				mp = mp - 99
			end
			attack = true
			hum.WalkSpeed = 0
			hum.JumpPower = 0
			hum.JumpHeight = 0
			anim = "ember"
			frame = 1
			local fball = new("Part")
			local fballl = new("PointLight")
			local fballp = new("ParticleEmitter")
			local fballp2 = new("ParticleEmitter")
			local fballw = new("Weld")
			fball.Name = "Fireball"
			fball.Parent = script
			fball.Transparency = 1
			fball.Size = vect3(1, 1, 1)
			fball.CanCollide = false
			fball.CanTouch = false
			fball.Locked = true
			fballl.Name = "Light"
			fballl.Parent = fball
			fballl.Color = color(1, 0.654902, 0.235294)
			fballl.Shadows = true
			fballp.Name = "Fire2"
			fballp.Parent = fball
			fballp.Speed = NumberRange.new(1.5, 1.5)
			fballp.Rotation = NumberRange.new(-180, 180)
			fballp.Color = ColorSequence.new(color(1, 0.980392, 0.364706),color(1, 0.0117647, 0.0117647))
			fballp.LightEmission = 1
			fballp.Texture = "http://www.roblox.com/asset/?id=http://www.roblox.com/fire-main-item?id=241922889"
			fballp.Transparency = NumberSequence.new(1,0.3687499761581421,0.05624997615814209,0.037499964237213135,0.13749998807907104,0.36250001192092896,0.65625,1)
			fballp.ZOffset = 1
			fballp.Size = NumberSequence.new(1.499999761581421,0.37499964237213135)
			fballp.Acceleration = vect3(0, 15, 0)
			fballp.Lifetime = NumberRange.new(0.30000001192092896, 0.550000011920929)
			fballp.Rate = 125
			fballp.RotSpeed = NumberRange.new(-90, 90)
			fballp.SpreadAngle = vect2(180, 180)
			fballp.VelocitySpread = 180
			fballp2.Name = "Fire1"
			fballp2.Parent = fball
			fballp2.Speed = NumberRange.new(0, 0)
			fballp2.Rotation = NumberRange.new(-180, 180)
			fballp2.Color = ColorSequence.new(color(1, 0.564706, 0.12549),color(0.984314, 0, 0),color(0.976471, 0, 0))
			fballp2.LightEmission = 0.5
			fballp2.Texture = "http://www.roblox.com/asset/?id=37332909"
			fballp2.Transparency = NumberSequence.new(1,0.768750011920929,0.59375,0.41874998807907104,0.28749996423721313,0.28125,0.34999996423721313,0.5499999523162842,1)
			fballp2.ZOffset = 1
			fballp2.Size = NumberSequence.new(3.040935516357422,0.7499998807907104)
			fballp2.Acceleration = vect3(0, 2.5, 0)
			fballp2.Lifetime = NumberRange.new(0.25, 0.44999998807907104)
			fballp2.Rate = 150
			fballp2.RotSpeed = NumberRange.new(-180, 180)
			fballp2.SpreadAngle = vect2(180, 180)
			fballp2.VelocitySpread = 180
			fballw.Parent = fball
			fballw.C0 = cframe(0, 1, 0)
			fballw.Part0 = fball
			fballw.Part1 = la
			sound(3518168170,3.5,1,fball,0,false)
			task.wait(1)
			fballw:Destroy()
			fballl.Enabled = false
			fball.Anchored = true
			fballp.Enabled = false
			fballp2.Enabled = false
			debris:AddItem(fball,2)
			frame = 2
			local line = random(0,2)
			if line == 0 then
				chatter("Woah!")
				if voices then
					if not dresst then
						sound(209527158,2.5,1.15,head,0,false)
					else
						sound(209527158,2.5,1.33,head,0,false)
					end
				end
			elseif line == 1 then
				chatter("Ugh!")
				if voices then
					if not dresst then
						sound(209527095,2.5,1.15,head,0,false)
					else
						sound(209527095,2.5,1.33,head,0,false)
					end
				end
			else
				chatter("Urgh!")
				if voices then
					if not dresst then
						sound(209527127,2.5,1.15,head,0,false)
					else
						sound(209527095,2.5,1.33,head,0,false)
					end
				end
			end
			local pospart = new("Part")
			pospart.Name = "PosPart"
			pospart.Parent = script
			pospart.CFrame = root.CFrame * cframe(0,0,-4.5)
			pospart.Size = vect3()
			pospart.Anchored = true
			pospart.CanTouch = false
			pospart.CanCollide = false
			pospart.Locked = true
			pospart.Transparency = 1
			local explosion = new("Explosion")
			explosion.Parent = workspace
			explosion.Position = pospart.Position
			explosion.BlastRadius = 15
			explosion.BlastPressure = 0
			sound2(88378838573475,3,1,pospart,0)
			magnitudedamage(21, "boom", 0, 6.66, 8021447194, 3, 1, root,true,"burn","fireball")
			debris:AddItem(pospart,0.005)
			local bpos = new("BodyPosition")
			bpos.Parent = root
			bpos.MaxForce = vect3(math.huge,math.huge,math.huge)
			bpos.D = 1500
			bpos.Position = root.CFrame * cframe(0,0,25).Position
			task.wait(1)
			bpos:Destroy()
			local chance = random(0,10)
			if chance <= 1 then
				frame = 3
				task.wait(0.1)
				chatter("Gah! I might have overcharged it.")
				if voices then
					if not dresst then
						sound(209527166,2.5,1.15,head,0,false)
					else
						sound(209527166,2.5,1.3,head,0,false)
					end
				end
				frame = 4
				task.wait(1)
			end
			hum.WalkSpeed = ogws
			hum.JumpPower = ogjp
			hum.JumpHeight = ogjh
			attack = false
		end
	end;
	["gatotsu"] = function()
		if not (attack or guarding or hurt or hum.Sit == true or sitting or lying) then
			keycombo = ""
			if player.UserId ~= 50203523 then if mp < 60 then return end else if mp < (60/10) then return end end
			if player.UserId == 50203523 then
				mp = mp - (60/10)
			else
				mp = mp - 60
			end
			attack = true
			hum.WalkSpeed = 0
			hum.JumpPower = 0
			hum.JumpHeight = 0
			anim = "fireball"
			frame = 1
			sound(158037267,2,1,la,0,false)
			task.wait(0.5)
			local fireball = new("Part")
			local fireballp = new("ParticleEmitter")
			fireball.Name = "FireBall"
			fireball.Parent = script
			fireball.Transparency = 0.4
			fireball.Size = vect3(1.8200026750564575, 1.8200026750564575, 1.8200026750564575)
			fireball.BottomSurface = Enum.SurfaceType.Smooth
			fireball.BrickColor = bc("Bright red")
			fireball.Material = Enum.Material.Neon
			fireball.TopSurface = Enum.SurfaceType.Smooth
			fireball.CanCollide = false
			fireball.Locked = true
			fireball.CFrame = root.CFrame * cframe(0,0,-4.5)
			fireball.Shape = Enum.PartType.Ball
			fireballp.Name = "FireParticle"
			fireballp.Parent = fireball
			fireballp.Speed = NumberRange.new(10, 10)
			fireballp.Rotation = NumberRange.new(-180, -180)
			fireballp.Color = ColorSequence.new(color(1, 0.333333, 0),color(1, 0, 0))
			fireballp.LightEmission = 0.7799999713897705
			fireballp.Texture = "rbxassetid://306272582"
			fireballp.Size = NumberSequence.new(1.9999998807907104,0.75,0.38461506366729736,0)
			fireballp.Drag = 1
			fireballp.Lifetime = NumberRange.new(0.44999998807907104, 0.44999998807907104)
			fireballp.Rate = 100
			fireballp.RotSpeed = NumberRange.new(180, 180)
			fireballp.SpreadAngle = vect2(600, 600)
			fireballp.VelocitySpread = 600
			sound(8021447194,3,1,fireball,0,false)
			local fire = new("Fire")
			fire.Parent = fireball
			fire.Size = 8
			fire.Heat = 10
			local bv = new("BodyVelocity")
			bv.MaxForce = vect3(math.huge,math.huge,math.huge)
			bv.Velocity = root.CFrame.LookVector * 100
			bv.Parent = fireball
			local hitted = false
			spawn(function()
				task.wait(7.5)
				if not hitted then
					fireball.Anchored = true
					fire.Enabled = false
					fireballp.Enabled = false
					local tween = tweens:Create(fireball, TweenInfo.new(1), {Transparency = 1})
					tween:Play()
					tween.Completed:Connect(function() fireball:Destroy() end)
				end
			end)
			fireball.Touched:Connect(function()
				if hitted then return end
				hitted = true
				local boom = new("Explosion")
				boom.Parent = workspace
				boom.Position = fireball.Position
				boom.BlastRadius = 0
				boom.BlastPressure = 0
				fireball.Anchored = true
				sound2(88378838573475,3,1,fireball,0)
				magnitudedamage(21, "boom", 0, 6.66, 8021447194, 3, 1, fireball,true,"burn","fireball")
				fireballp.Enabled = false
				fire.Enabled = false
				local tween = tweens:Create(fireball, TweenInfo.new(1), {Transparency = 1})
				tween:Play()
				tween.Completed:Connect(function() fireball:Destroy() end)
			end)
			task.wait(0.45)
			hum.WalkSpeed = ogws
			hum.JumpPower = ogjp
			hum.JumpHeight = ogjh
			attack = false
		end
	end;
	["yoma komatsu"] = function()
		if not (attack or guarding or hurt or hum.Sit == true or sitting or lying) then
			keycombo = ""
			if player.UserId ~= 50203523 then if mp < 40 then return end else if mp < (40/10) then return end end
			if player.UserId == 50203523 then
				mp = mp - (40/10)
			else
				mp = mp - 40
			end
			attack = true
			hum.WalkSpeed = 0
			hum.JumpPower = 0
			hum.JumpHeight = 0
			anim = "jump"
			local doingyoma = true
			local bpos = new("BodyPosition")
			bpos.Name = "CometBurst"
			bpos.Parent = root
			bpos.MaxForce = vect3(39999,39999,39999)
			bpos.D = 1150
			bpos.Position = root.CFrame * cframe(0,15,45).Position
			sound(18950367823,3.5,1,torso,0,false)
			task.wait(0.345)
			bpos:Destroy()
			anim = "yoma"
			local bpos = new("BodyPosition")
			bpos.Name = "CometBurst"
			bpos.Parent = root
			bpos.MaxForce = vect3(39999,39999,39999)
			bpos.D = 1250
			bpos.Position = root.CFrame * cframe(0,-6,-75).Position
			local hashit = false
			local Part = new("Part",script)
			Part.Name = "HitboxThing"
			Part.Transparency = 1
			Part.Size = vect3(5, 7.5, 5.75)
			Part.CanCollide = false
			Part.Massless = true
			Part.Locked = true
			local Weld = new("Weld",Part)
			Weld.Part0 = root
			Weld.Part1 = Part
			Weld.C0 = Weld.C0 * cframe(0, -1, -3.5)
			local stars = new("ParticleEmitter")
			stars.Name = "Stars"
			if not sword then
				stars.Parent = ll
			else
				stars.Parent = rl
			end
			stars.Speed = NumberRange.new(2, 6)
			stars.Rotation = NumberRange.new(-45, -45)
			stars.Color = ColorSequence.new(color(1, 0.968627, 0), color(1, 0.333333, 0))
			stars.LightEmission = 0.800000011920929
			stars.Texture = "http://www.roblox.com/asset/?id=5639840603"
			stars.Transparency = NumberSequence.new(0,0.28749996423721313,1)
			stars.ZOffset = 1
			stars.Size = NumberSequence.new(0.5,0.5)
			stars.EmissionDirection = Enum.NormalId.Front
			stars.Lifetime = NumberRange.new(1, 1)
			stars.Rate = 60
			sound(9085320874,3.5,1,torso,0,false)
			Part.Touched:Connect(function(persona)
				if persona:IsA("BasePart") or persona:IsA("MeshPart") then
					if persona.Parent ~= nil and not persona.Parent:IsDescendantOf(char) then
						if persona.Parent:FindFirstChildOfClass("Humanoid") and persona.Parent ~= char and hashit == false then
							local humi = persona.Parent:FindFirstChildOfClass("Humanoid")
							local torsou = persona.Parent:FindFirstChild("Torso") or persona.Parent:FindFirstChild("UpperTorso") or persona.Parent:FindFirstChild("HumanoidRootPart")
							if torsou then
								hashit = true
								local grabpart = new("Part")
								grabpart.Size = vect3(0.001,0.001,0.001)
								grabpart.Parent = script
								grabpart.Transparency = 1
								grabpart.CanCollide = false
								grabpart.CanTouch = false
								grabpart.Locked = true
								grabpart.Anchored = true
								grabpart.CFrame = torsou.CFrame * cframe(0,0,-1.5) * angles(0,rad(180),0)
								debris:AddItem(grabpart,0.005)
								magnitudedamage(25, "sphere", 0, 6.66, 260430079, 3, 1, grabpart, true, "normal", "yoma")
								doingyoma = false
							end
						end
					end	
				end
			end)
			spawn(function()
				task.wait(1)
				doingyoma = false
			end)
			repeat
				task.wait()
			until not doingyoma
			bpos:Destroy()
			Part:Destroy()
			stars.Enabled = false
			debris:AddItem(stars,1.75)
			hum.WalkSpeed = ogws
			hum.JumpPower = ogjp
			hum.JumpHeight = ogjh
			attack = false
		end
	end;
	["comet"] = function()
		if not (attack or guarding or hurt or hum.Sit == true or sitting or lying) then
			keycombo = ""
			if player.UserId ~= 50203523 then if mp < 333 then return end else if mp < (333/10) then return end end
			if player.UserId == 50203523 then
				mp = mp - (333/10)
			else
				mp = mp - 333
			end
			attack = true
			hum.WalkSpeed = 0
			hum.JumpPower = 0
			hum.JumpHeight = 0
			local function napalmdeath(pos,posp)
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
				fpw2.BrickColor = bc("Br. yellowish orange")
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
				fpw.BrickColor = bc("Bright red")
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
				fp.BrickColor = bc("Maroon")
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
				fp2.BrickColor = bc("Neon orange")
				fp2.CanCollide = false
				fp2.TopSurface = Enum.SurfaceType.Smooth
				fpm2.Parent = fp2
				fpm2.MeshType = Enum.MeshType.Sphere
				fpw.Material = "Neon"
				fpw2.Material = "Neon"
				fp.Material = "Neon"
				fp2.Material = "Neon"
				fpw2.CFrame = posp.CFrame * cframe(0,-1.5,pos)
				fpw.CFrame = posp.CFrame * cframe(0,-1.5,pos)
				fp.CFrame = posp.CFrame * cframe(0,-1.5,pos) * angles(rad(-30),0,0)
				fp2.CFrame = posp.CFrame * cframe(0,-1.5,pos) * angles(rad(-30),0,0)
				fp.CanTouch = false
				fpw.CanTouch = false
				fp2.CanTouch = false
				fpw2.CanTouch = false
				local tween = tweens:Create(fpw2,TweenInfo.new(1,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Transparency = 1})
				tween:Play()
				local tweenM = tweens:Create(fpwm2,TweenInfo.new(1,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Scale = vect3(10,0.05,10),Offset = vect3(0,-1.5,-1)})
				tweenM:Play()
				local tween1 = tweens:Create(fpw,TweenInfo.new(1,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Transparency = 1})
				tween1:Play()
				local tweenM1 = tweens:Create(fpwm,TweenInfo.new(1,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Scale = vect3(12.5,0.025,12.5),Offset = vect3(0,-1.5,-1)})
				tweenM1:Play()
				local tween2 = tweens:Create(fp,TweenInfo.new(1,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{CFrame = fp.CFrame * angles(0,rad(180),0),Size = vect3(3,45,3),Transparency = 1})
				tween2:Play()
				local tween3 = tweens:Create(fp2,TweenInfo.new(1,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{CFrame = fp.CFrame * angles(0,rad(180),0),Size = vect3(2.75,35,2.75),Transparency = 1})
				tween3:Play()
				tween.Completed:Connect(function() fpw2:Destroy()end)
				tween1.Completed:Connect(function() fpw:Destroy() end)
				tween2.Completed:Connect(function() fp:Destroy()end)
				tween3.Completed:Connect(function() fp2:Destroy() end)
			end
			super()
			chatter("Comet..... Burst!!")
			if game.PlaceId == 11510416200 or game.PlaceId == 126783576555525 or game.PlaceId == 89201052571047 or game.PlaceId == 79868761121850 then
				local randoml = random(0,6)
				if randoml == 0 then
					if not dresst then 
						if voices then
							sound(99813049652900,4.5,1.2,head,3.225,false,true,2.324)
						end
					else
						if voices then
							sound(99813049652900,4.5,1.5,head,3.225,false,true,1.86)
						end
					end
				elseif randoml == 1 then 
					if not dresst then
						if voices then
							sound(99813049652900,4.5,1.2,head,49.475,false,true,2.320)
						end
					else
						if voices then
							sound(99813049652900,4.5,1.5,head,49.475,false,true,1.856)
						end
					end
				elseif randoml == 2 then
					if not dresst then
						if voices then
							sound(99813049652900,4.5,1.2,head,106.425,false,true,2.022)
						end
					else
						if voices then
							sound(99813049652900,4.5,1.5,head,106.425,false,true,1.618)
						end
					end
				elseif randoml == 3 then
					if not dresst then
						if voices then
							sound(109239418812415,4.5,1.15,head,79.475,false,true,2.219)
						end
					else
						if voices then
							sound(109239418812415,4.5,1.575,head,79.475,false,true,1.62)
						end
					end
				elseif randoml == 4 then
					if not dresst then
						if voices then
							sound(121159169190170,4.5,2.7,head,9.9,false,true,1.57)
						end
					else
						if voices then
							sound(121159169190170,4.5,3.1,head,9.9,false,true,1.368)
						end
					end
				elseif randoml == 5 then 
					if not dresst then
						if voices then
							sound(121159169190170,4.5,2.4,head,53.475,false,true,1.892)
						end
					else
						if voices then
							sound(121159169190170,4.5,3.2,head,53.475,false,true,1.419)
						end
					end
				else
					if not dresst then
						if voices then
							sound(121159169190170,4.5,2.4,head,218.65,false,true,2.005)
						end
					else
						if voices then
							sound(121159169190170,4.5,3.2,head,218.65,false,true,1.503)
						end
					end
				end
			else
				if voices then
					if not dresst then
						sound(566988802,2.5,1.15,head,0,false)
					else
						sound(566988802,2.5,1.3,head,0,false)
					end
				end
			end
			anim = "comet"
			frame = 1
			task.wait(0.25)
			frame = 2
			task.wait(0.645)
			local pospart = new("Part")
			pospart.Name = "PosPart"
			pospart.Parent = script
			pospart.CFrame = root.CFrame
			pospart.Size = vect3()
			pospart.Anchored = true
			pospart.CanTouch = false
			pospart.CanCollide = false
			pospart.Locked = true
			pospart.Transparency = 1
			local cometb = new("Part")
			local cometbm = new("SpecialMesh")
			cometb.Name = "Explosion"
			cometb.Parent = script
			cometb.Size = vect3()
			cometb.Anchored = true
			cometb.BrickColor = bc("Neon orange")
			cometb.CanTouch = false
			cometb.CanCollide = false
			cometb.Locked = true
			cometbm.Parent = cometb
			cometbm.MeshId = "http://www.roblox.com/asset/?id=92588061"
			cometbm.Offset = vect3(0, 2, 0)
			cometbm.Scale = vect3(2, 2, 2)
			cometb.CFrame = root.CFrame * cframe(0,-1.5,0)
			local cometp = new("Part")
			cometp.Name = "GUN BLADE!!"
			cometp.Parent = script
			cometp.Transparency = 0.05
			cometp.Size = vect3(11.672, 2.218, 2.218)
			cometp.Anchored = true
			cometp.BottomSurface = Enum.SurfaceType.Smooth
			cometp.BrickColor = bc("Neon orange")
			cometp.CanCollide = false
			cometp.TopSurface = Enum.SurfaceType.Smooth
			cometp.Shape = Enum.PartType.Cylinder
			cometp.Material = "Neon"
			cometp.CanTouch = false
			cometp.Locked = true
			cometp.CFrame = root.CFrame * cframe(0,-1.5,0) * angles(rad(-30),0,rad(90))
			local cometw = new("Part")
			local cometwm = new("SpecialMesh")
			cometw.Name = "Moiroh"
			cometw.Parent = script
			cometw.Size = vect3()
			cometw.Anchored = true
			cometw.BrickColor = bc("Neon orange")
			cometw.CanTouch = false
			cometw.CanCollide = false
			cometw.Locked = true
			cometwm.Parent = cometw
			cometwm.MeshId = "http://www.roblox.com/asset/?id=5926727048"
			cometwm.Offset = vect3(0, 2, -0.5)
			cometwm.Scale = vect3(0.35, 0.35, 0.35)
			cometw.CFrame = root.CFrame * cframe(0,-1.5,0) * angles(rad(-30),0,0)
			local tweenZM = tweens:Create(cometbm,TweenInfo.new(1,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Scale = vect3(15, 0.5, 15),Offset = vect3(0, -0.65, -1)})
			tweenZM:Play()
			local tweenZ = tweens:Create(cometb,TweenInfo.new(1,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{CFrame = cometb.CFrame * angles(0,rad(180),0),Size = vect3(3,45,3),Transparency = 1})
			tweenZ:Play()
			local tweenZ0 = tweens:Create(cometp,TweenInfo.new(1,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Size = vect3(45, 5, 5),Transparency = 1})
			tweenZ0:Play()
			local tweenZE = tweens:Create(cometw,TweenInfo.new(1,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{CFrame = cometw.CFrame * angles(0,rad(180),0),Transparency = 1})
			tweenZE:Play()
			local tweenZM0 = tweens:Create(cometwm,TweenInfo.new(1,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Scale = vect3(1,1,1),Offset = vect3(0, 7.5, -1)})
			tweenZM0:Play()
			tweenZ.Completed:Connect(function() cometb:Destroy()end)
			tweenZ0.Completed:Connect(function() cometp:Destroy()end)
			tweenZE.Completed:Connect(function() cometw:Destroy()end)
			sound2(6892631834,4.5,1,pospart,0,false)
			if instakill then
				if player.UserId == 50203523 then
					magnitudedamage(0, "boom", 0, 6.66, 4766119678, 3, 1, pospart,true,"burn","comet")
				else
					magnitudedamage(115, "boom", 0, 6.66, 4766119678, 3, 1, pospart,true,"burn","comet")
				end
			else
				magnitudedamage(115, "boom", 0, 6.66, 4766119678, 3, 1, pospart,true,"burn","comet")
			end
			local bpos = new("BodyPosition")
			bpos.Name = "CometBurst"
			bpos.Parent = root
			bpos.MaxForce = vect3(39999,39999,39999)
			bpos.D = 1150
			bpos.Position = root.CFrame * cframe(0,45,-30).Position
			spawn(function()
				task.wait(0.015)
				napalmdeath(0,pospart)
				task.wait(0.027)
				for i = 1,2 do
					if i == 2 then
						napalmdeath(3.5,pospart)
					else
						napalmdeath(-3.5,pospart)
					end
					task.wait()
				end
				task.wait(0.045)
				for i = 1,2 do
					if i == 2 then
						napalmdeath(9,pospart)
					else
						napalmdeath(-9,pospart)
					end
					task.wait()
				end
			end)
			frame = 3
			task.wait(0.5)
			bpos:Destroy()
			hum.WalkSpeed = ogws
			hum.JumpPower = ogjp
			hum.JumpHeight = ogjh
			attack = false
		end
	end;
	["sol"] = function()
		if not (attack or guarding or hurt or hum.Sit == true or sitting or lying) then
			keycombo = ""
			if player.UserId ~= 50203523 then if mp < 250 then return end else if mp < (250/10) then return end end
			if player.UserId == 50203523 then
				mp = mp - (250/10)
			else
				mp = mp - 250
			end
			attack = true
			hum.WalkSpeed = 0
			hum.JumpPower = 0
			hum.JumpHeight = 0
			local hashit = false
			super()
			if not sword then
				anim = "ashiru"
			else
				anim = "shard"
			end
			frame = 1
			task.wait(1)
			if not sword then
				anim = "ashiru"
				frame = 2
			else
				anim = "kouma"
				frame = 1
			end
			local bpos = new("BodyPosition")
			bpos.Name = "AshiruDash"
			bpos.Parent = root
			bpos.MaxForce = vect3(39999,39999,39999)
			bpos.D = 1150
			bpos.Position = root.CFrame * cframe(0,0,-45).Position
			local Part = new("Part",script)
			Part.Name = "HitboxThing"
			Part.Transparency = 1
			Part.Size = vect3(5, 7.5, 5.5)
			Part.CanCollide = false
			Part.Massless = true
			Part.Locked = true
			local Weld = new("Weld",Part)
			Weld.Part0 = root
			Weld.Part1 = Part
			Weld.C0 = Weld.C0 * cframe(0, 0, -5)
			local weld = nil
			local dash = new("Part")
			local dashp = new("ParticleEmitter")
			dash.Name = "Dust Devil"
			dash.Parent = root
			dash.CanCollide = false
			dash.CanTouch = false
			dash.Anchored = true
			dash.Locked = true
			dash.Transparency = 1
			dash.Size = vect3(0.001,0.001,0.001)
			dashp.Name = "Debris"
			dashp.Parent = dash
			dashp.Speed = NumberRange.new(22, 22)
			dashp.Rotation = NumberRange.new(1, 360)
			dashp.Color = ColorSequence.new(color(1, 0.941176, 0.737255),color(1, 0.941176, 0.737255))
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
			dash.CFrame = root.CFrame * cframe(0,-2.5,0)
			spawn(function()
				task.wait(0.5)
				dashp.Enabled = false
				debris:AddItem(dash,2)
			end)
			local effect = new("ParticleEmitter")
			effect.Parent = torso
			effect.Rotation = NumberRange.new(0, 300)
			effect.Color = ColorSequence.new(color(1, 1, 1),color(0.427451, 0.427451, 0.427451))
			effect.LightInfluence = 1
			effect.Texture = "rbxassetid://7731347137"
			effect.Transparency = NumberSequence.new(0.5812499523162842,0.925000011920929,1)
			effect.Size = NumberSequence.new(1.5,0)
			effect.Acceleration = vect3(0, 0.10000000149011612, 0)
			effect.EmissionDirection = Enum.NormalId.Front
			effect.Lifetime = NumberRange.new(2, 3)
			effect.Rate = 100
			effect.RotSpeed = NumberRange.new(10, 13)
			effect.SpreadAngle = vect2(0, 360)
			effect.VelocityInheritance = 0.5
			spawn(function()
				task.wait(0.4)
				effect.Enabled = false
				debris:AddItem(effect,2.5)
			end)
			sound(4909206080,3.5,1,torso,0,false)
			Part.Touched:Connect(function(persona)
				if persona:IsA("BasePart") or persona:IsA("MeshPart") then
					if persona.Parent ~= nil and not persona.Parent:IsDescendantOf(char) then
						if persona.Parent:FindFirstChildOfClass("Humanoid") and persona.Parent ~= char and hashit == false then
							local humi = persona.Parent:FindFirstChildOfClass("Humanoid")
							local torsou = persona.Parent:FindFirstChild("Torso") or persona.Parent:FindFirstChild("UpperTorso") or persona.Parent:FindFirstChild("HumanoidRootPart")
							if torsou and humi.Health > 0 then
								hashit = true
								sound(240429615,3,1,torsou,0,false)
								hiteffect("grab",torsou)
								weld = new("Weld")
								weld.Parent = root
								weld.Part0 = root
								weld.Part1 = torsou
								weld.Name = "AshiruGrabWELD"
								weld.C0 = cframe(0.25, 0, -2.5) * angles(0,rad(-180),0)
								Part:Destroy()
								debris:AddItem(weld,1.15)
							end
						end
					end	
				end
			end)
			task.wait(0.5)
			bpos:Destroy()
			Part:Destroy()
			if weld ~= nil then
				debris:AddItem(weld,0.05)
			end
			if hashit then
				if not sword then
					anim = "ashiru"
					frame = 1
					task.wait(0.1)
					sound(121514852904179,3,1,la,0,false)
					anim = "wpunch"
					magnitudedamage(2.5,"sphere", 0, 6.66, 386946017, 4.5, 1, root,true,"normal","combo")
					task.wait(0.15)
					anim = "spunch"
					frame = 1
					task.wait(0.15)	
					sound(74238153433253,3,1,ra,0,false)
					frame = 2
					magnitudedamage(2,"sphere", 0, 6.66, 386946017, 4.5, 1, root,true,"normal","combo")
					task.wait(0.1)
					anim = "ashiru"
					frame = 1
					task.wait(0.1)
					anim = "wpunch"
					sound(121514852904179,3,1,la,0,false)
					magnitudedamage(2,"sphere", 0, 6.66, 386946017, 4.5, 1, root,true,"normal","combo")
					task.wait(0.25)
					anim = "dwkick"
					frame = 1
					sound(121514852904179,3,1,ll,0,false)
					magnitudedamage(2,"sphere", 0, 6.66, 386946017, 4.5, 1, root,true,"normal","combo")
					task.wait(0.225)
					anim = "aspunch"
					frame = 1
					sound(121514852904179,3,1,la,0,false)
					magnitudedamage(3,"sphere", 0, 6.66, 386946017, 4.5, 1, root,true,"normal","combo")
					task.wait(0.215)
					anim = "dwpunch"
					frame = 1
					sound(121514852904179,3,1,la,0,false)
					magnitudedamage(3,"sphere", 0, 6.66, 386946017, 4.5, 1, root,true,"normal","combo")
					task.wait(0.215)
					anim = "dspunch"
					frame = 1
					task.wait(0.1)
					frame = 2
					sound(74238153433253,3,1,ra,0,false)
					magnitudedamage(3,"sphere", 0, 6.66, 386946017, 4.5, 1, root,true,"normal","combo")
					task.wait(0.15)
					anim = "spunch"
					frame = 1
					task.wait(0.1)
					frame = 2
					sound(74238153433253,3,1,ra,0,false)
					magnitudedamage(3,"sphere", 0, 6.66, 386946017, 4.5, 1, root,true,"normal","combo")
					task.wait(0.15)
					anim = "ashiru"
					frame = 1
					task.wait(0.1)
					anim = "wpunch"
					sound(121514852904179,3,1,la,0,false)
					magnitudedamage(3,"sphere", 0, 6.66, 386946017, 4.5, 1, root,true,"normal","combo")
					task.wait(0.15)
					anim = "dwpunch"
					frame = 1
					sound(121514852904179,3,1,la,0,false)
					magnitudedamage(3,"sphere", 0, 6.66, 386946017, 4.5, 1, root,true,"normal","combo")
					task.wait(0.215)
					anim = "wkick"
					frame = 1
					task.wait(0.1)
					frame = 2
					sound(536642316,3,1,rl,0,false)
					magnitudedamage(3,"sphere", 0, 6.66, 386946017, 4.5, 1, root,true,"normal","combo")
					task.wait(0.15)
					anim = "dwkick"
					frame = 1
					sound(536642316,3,1,ll,0,false)
					magnitudedamage(3,"sphere", 0, 6.66, 386946017, 4.5, 1, root,true,"normal","combo")
					task.wait(0.225)
					anim = "aspunch"
					frame = 1
					sound(74238153433253,3,1,ra,0,false)
					magnitudedamage(3,"sphere", 0, 6.66, 386946017, 4.5, 1, root,true,"normal","combo")
					task.wait(0.225)
					anim = "dwkick"
					frame = 1
					sound(536642316,3,1,ll,0,false)
					magnitudedamage(3,"sphere", 0, 6.66, 386946017, 4.5, 1, root,true,"normal","combo")
					task.wait(0.175)
					anim = "dspunch"
					frame = 1
					task.wait(0.1)
					frame = 2
					sound(74238153433253,3,1,ra,0,false)
					magnitudedamage(3,"sphere", 0, 6.66, 386946017, 4.5, 1, root,true,"normal","combo")
					task.wait(0.15)
					anim = "ashiru"
					frame = 1
					task.wait(0.1)
					anim = "wpunch"
					sound(121514852904179,3,1,la,0,false)
					magnitudedamage(3,"sphere", 0, 6.66, 386946017, 4.5, 1, root,true,"normal","combo")
					task.wait(0.15)
					anim = "spunch"
					frame = 1
					task.wait(0.15)	
					frame = 2
					sound(74238153433253,3,1,ra,0,false)
					magnitudedamage(3,"sphere", 0, 6.66, 386946017, 4.5, 1, root,true,"normal","combo")
					task.wait(0.1)
					anim = "ashiru"
					frame = 1
					task.wait(0.1)
					anim = "wpunch"
					sound(121514852904179,3,1,la,0,false)
					magnitudedamage(3,"sphere", 0, 6.66, 386946017, 4.5, 1, root,true,"normal","combo")
					task.wait(0.15)
					anim = "wkick"
					frame = 1
					task.wait(0.1)
					frame = 2
					sound(536642316,3,1,rl,0,false)
					magnitudedamage(3,"sphere", 0, 6.66, 386946017, 4.5, 1, root,true,"normal","combo")
					task.wait(0.15)
					anim = "dwkick"
					frame = 1
					sound(536642316,3,1,ll,0,false)
					magnitudedamage(3,"sphere", 0, 6.66, 386946017, 4.5, 1, root,true,"normal","combo")
					task.wait(0.225)
					anim = "aspunch"
					frame = 1
					sound(74238153433253,3,1,ra,0,false)
					magnitudedamage(3,"sphere", 0, 6.66, 386946017, 4.5, 1, root,true,"normal","combo")
					task.wait(0.225)
					anim = "dwpunch"
					frame = 1
					sound(121514852904179,3,1,la,0,false)
					magnitudedamage(3,"sphere", 0, 6.66, 386946017, 4.5, 1, root,true,"normal","combo")
					task.wait(0.15)
					anim = "spunch"
					frame = 1
					task.wait(0.15)	
					sound(74238153433253,3,1,ra,0,false)
					frame = 2
					magnitudedamage(3,"sphere", 0, 6.66, 386946017, 4.5, 1, root,true,"normal","combo")
					task.wait(0.125)
					anim = "ashiru"
					frame = 1
					task.wait(0.1)
					anim = "wpunch"
					sound(121514852904179,3,1,la,0,false)
					magnitudedamage(3,"sphere", 0, 6.66, 386946017, 4.5, 1, root,true,"normal","combo")
					task.wait(0.15)
					anim = "dspunch"
					frame = 1
					task.wait(0.1)
					frame = 2
					sound(74238153433253,3,1,ra,0,false)
					if holdingc then
						magnitudedamage(7,"sphere", 0, 6.66, 386946017, 4.5, 1, root,true,"normal","combo2")
					else
						magnitudedamage(7,"sphere", 0, 6.66, 386946017, 4.5, 1, root,true,"normal","combo2a")
					end
					task.wait(0.45)
					local typa = 150
					if player.UserId == 50203523 then
						typa = 15
					else
						typa = 150
					end
					if holdingc and mp >= typa then
						mp = mp - typa
						super(3)
						anim = "giga"
						frame = 1
						if game.PlaceId == 11510416200 or game.PlaceId == 126783576555525 or game.PlaceId == 89201052571047 or game.PlaceId == 79868761121850 then
							local randoml = random(0,2)
							if randoml == 0 then
								chatter("G.I.G.A. Attack!!")
								if not dresst then
									if voices then
										sound(109239418812415,6.66,1.2,head,68.35,false,true,2.531)
									end
								else
									if voices then
										sound(109239418812415,6.66,1.45,head,68.35,false,true,2.094)
									end
								end
							elseif randoml == 1 then
								chatter("TAKE THIS!!")
								if not dresst then
									if voices then
										sound(109239418812415,6.66,1.2,head,71.375,false,true,1.908)
									end
								else
									if voices then
										sound(109239418812415,6.66,1.45,head,71.375,false,true,1.579)
									end
								end
							else
								chatter("ALL YOUR YAPPING IS TRASH!!")
								if not dresst then
									if voices then
										sound(109239418812415,6.66,1.15,head,73.675,false,true,2.226)
									end
								else
									if voices then
										sound(109239418812415,6.66,1.55,head,73.675,false,true,1.724)
									end
								end
							end
						else
							chatter("G.I.G.A. Attack!!")
							if voices then
								if not dresst then
									sound(565208983,2.5,1.2,head,0,false)
								else
									sound(565208983,2.5,1.45,head,0,false)
								end
							end
						end
						local fball = new("Part")
						local fballl = new("PointLight")
						local fballp = new("ParticleEmitter")
						local fballp2 = new("ParticleEmitter")
						local fballw = new("Weld")
						fball.Name = "Fireball"
						fball.Parent = script
						fball.Transparency = 1
						fball.Size = vect3(1, 1, 1)
						fball.CanCollide = false
						fball.CanTouch = false
						fball.Locked = true
						fballl.Name = "Light"
						fballl.Parent = fball
						fballl.Color = color(1, 0.654902, 0.235294)
						fballl.Shadows = true
						fballp.Name = "Fire2"
						fballp.Parent = fball
						fballp.Speed = NumberRange.new(1.5, 1.5)
						fballp.Rotation = NumberRange.new(-180, 180)
						fballp.Color = ColorSequence.new(color(1, 0.980392, 0.364706),color(1, 0.0117647, 0.0117647))
						fballp.LightEmission = 1
						fballp.Texture = "http://www.roblox.com/asset/?id=http://www.roblox.com/fire-main-item?id=241922889"
						fballp.Transparency = NumberSequence.new(1,0.3687499761581421,0.05624997615814209,0.037499964237213135,0.13749998807907104,0.36250001192092896,0.65625,1)
						fballp.ZOffset = 1
						fballp.Size = NumberSequence.new(1.499999761581421,0.37499964237213135)
						fballp.Acceleration = vect3(0, 15, 0)
						fballp.Lifetime = NumberRange.new(0.30000001192092896, 0.550000011920929)
						fballp.Rate = 125
						fballp.RotSpeed = NumberRange.new(-90, 90)
						fballp.SpreadAngle = vect2(180, 180)
						fballp.VelocitySpread = 180
						fballp2.Name = "Fire1"
						fballp2.Parent = fball
						fballp2.Speed = NumberRange.new(0, 0)
						fballp2.Rotation = NumberRange.new(-180, 180)
						fballp2.Color = ColorSequence.new(color(1, 0.564706, 0.12549),color(0.984314, 0, 0),color(0.976471, 0, 0))
						fballp2.LightEmission = 0.5
						fballp2.Texture = "http://www.roblox.com/asset/?id=37332909"
						fballp2.Transparency = NumberSequence.new(1,0.768750011920929,0.59375,0.41874998807907104,0.28749996423721313,0.28125,0.34999996423721313,0.5499999523162842,1)
						fballp2.ZOffset = 1
						fballp2.Size = NumberSequence.new(3.040935516357422,0.7499998807907104)
						fballp2.Acceleration = vect3(0, 2.5, 0)
						fballp2.Lifetime = NumberRange.new(0.25, 0.44999998807907104)
						fballp2.Rate = 150
						fballp2.RotSpeed = NumberRange.new(-180, 180)
						fballp2.SpreadAngle = vect2(180, 180)
						fballp2.VelocitySpread = 180
						fballw.Parent = fball
						fballw.C0 = cframe(0, 1, 0)
						fballw.Part0 = fball
						fballw.Part1 = la
						sound(3518146972,3,1,fball,0,false)
						task.wait(1)
						fballw:Destroy()
						fballl.Enabled = false
						fball.Anchored = true
						fballp.Enabled = false
						fballp2.Enabled = false
						debris:AddItem(fball,2)
						frame = 2
						tyrant()
						task.wait(0.5)
					end
				else
					anim = "stobu"
					frame = 1
					WeaponTrail.Enabled = true
					task.wait(0.1)
					frame = 2
					task.wait(0.1)
					sound(3203893315,1,1,Weapon,0,false)
					frame = 3
					magnitudedamage(4,"sphere", 0, 6.66, 386946017, 4.5, 1, root,true,"normal","combo")
					task.wait(0.1)
					frame = 1
					task.wait(0.1)
					frame = 2
					task.wait(0.1)
					sound(3203893315,1,1,Weapon,0,false)
					frame = 3
					magnitudedamage(4,"sphere", 0, 6.66, 386946017, 4.5, 1, root,true,"normal","combo")
					task.wait(0.1)
					anim = "kouma"
					frame = 2
					task.wait(0.15)
					sound(4958430453,3,1,Weapon,0,false)
					WeaponTrail.Enabled = true
					magnitudedamage(4.5,"sphere", 0, 6.66, 7131797117, 4.5, 1, root,true,"slash2","combo")
					frame = 3
					task.wait(0.25)
					anim = "slash"
					frame = 1
					task.wait(0.15)	
					WeaponTrail.Enabled = true
					sound(117297744119258,3,1,Weapon,0,false)
					frame = 2
					magnitudedamage(5,"sphere", 0, 6.66, 7131797117, 4.5, 1, root,true,"slash2","combo")
					task.wait(0.06)
					frame = 4
					task.wait(0.1)
					frame = 3
					task.wait(0.15)
					anim = "ashiruc"
					frame = 1
					task.wait(0.1)
					sound(553461718,3,1,Weapon,0,false)
					frame = 2
					magnitudedamage(5,"sphere", 0, 6.66, 17493997647, 6.66, 1, root,true,"slash2","combo")
					task.wait(0.1)
					anim = "gigar"
					frame = 1
					task.wait(0.15)
					frame = 2
					task.wait(0.125)
					sound(107784188693056,3,1,Weapon,0,false)
					if holdingc then
						magnitudedamage(0,"sphere", 0, 6.66, 17493997647, 6.66, 1, root,true,"slash2","combo0")
					else
						magnitudedamage(0,"sphere", 0, 6.66, 17493997647, 6.66, 1, root,true,"slash2","combo0a")
					end
					frame = 4
					task.wait(0.075)
					frame = 3
					task.wait(0.65)
					WeaponTrail.Enabled = false
					local typa = 115
					if player.UserId == 50203523 then
						typa = 11.5
					else
						typa = 115
					end
					if holdingc and mp >= typa then
						mp = mp - typa
						super(3)
						anim = "finisher"
						frame = 2
						task.wait(0.75)
						chatter("Let's go!")
						if voices then
							if not dresst then
								sound(81748152344233,2.5,1.05,head,0,false)
							else
								sound(81748152344233,2.5,1.3,head,0,false)
							end
						end
						sound(541909763,2,1,ll,0,false)
						frame = 1
						magnitudedamage(2.5,"sphere", 0, 6.66, 386946017, 4.5, 1, root,true,"normal","combo")
						task.wait(0.1)
						anim = "ashiruc"
						frame = 3
						task.wait(0.15)
						sound(541909763,2,1,ll,0,false)
						anim = "finisher"
						frame = 1
						magnitudedamage(2.5,"sphere", 0, 6.66, 386946017, 4.5, 1, root,true,"normal","combo")
						task.wait(0.215)
						anim = "ashiruc"
						frame = 4
						sound(536642316,2,1,ll,0,false)
						magnitudedamage(3,"sphere", 0, 6.66, 138752442741376, 4.5, 1, root,true,"normal","combo")
						task.wait(0.15)
						frame = 1
						WeaponTrail.Enabled = true
						task.wait(0.15)
						frame = 2
						sound(117462347304348,3,1,Weapon,0,false)
						magnitudedamage(3,"sphere", 0, 6.66, 7131797117, 4.5, 1, root,true,"slash2","combo")
						task.wait(0.175)
						WeaponTrail.Enabled = false
						anim = "sfpunch"
						frame = 1
						task.wait(0.1)
						frame = 2
						sound(5835032207,3,1,la,0,false)
						magnitudedamage(4.5,"sphere", 0, 6.66, 386946017, 4.5, 1, root,true,"normal","combo")
						task.wait(0.15)
						anim = "ashiruc"
						frame = 5
						WeaponTrail.Enabled = true
						task.wait(0.125)
						frame = 6
						sound(5276819732,3,1,Weapon,0,false)
						magnitudedamage(4.5,"sphere", 0, 6.66, 7131796029, 4.5, 1, root,true,"slash2","combo")
						task.wait(0.175)
						frame = 7
						task.wait(0.115)
						frame = 8
						sound(107784188693056,3,1,Weapon,0,false)
						magnitudedamage(4.5,"sphere", 0, 6.66, 17493997647, 6.66, 1, root,true,"slash2","combo1")
						task.wait(0.225)
						anim = "dslash"
						frame = 1
						task.wait(0.1)	
						sound(94287427538964,3,1,Weapon,0,false)
						frame = 2
						WeaponTrail.Enabled = true
						magnitudedamage(4.5,"sphere", 0, 6.66, 7131796029, 4.5, 1, root,true,"slash2","combo")
						task.wait(0.175)
						WeaponTrail.Enabled = false
						anim = "dspunch"
						frame = 1
						task.wait(0.13)
						WeaponTrail.Enabled = true
						sound(111808555599832,3,1,Weapon,0,false)
						anim = "dhslash"
						frame = 1
						if not holdingz then
							magnitudedamage(0,"sphere", 0, 4.5, 17493997647, 6.66, 1, root,true,"slash2","combo3a")
						else
							magnitudedamage(0,"sphere", 0, 4.5, 17493997647, 6.66, 1, root,true,"slash2","combo3")
						end
						task.wait(0.625)
						WeaponTrail.Enabled = false
						local typa = 15
						if player.UserId == 50203523 then
							typa = 15
						else
							typa = 150
						end
						if holdingz and mp >= typa then
							mp = mp - typa
							super(2)
							anim = "gigas"
							frame = 1
							task.wait(0.75)
							anim = "kouma"
							frame = 2
							local vel = new("BodyVelocity")
							vel.Parent = root
							vel.MaxForce = vect3(math.huge,math.huge,math.huge)
							vel.Velocity = root.CFrame.lookVector * 5.5
							task.wait(0.175)
							sound(4958430453,3,1,Weapon,0,false)
							WeaponTrail.Enabled = true
							magnitudedamage(4.5,"sphere", 0, 6.66, 7131798141, 4.5, 1, root,true,"slash2","combo4")
							frame = 3
							task.wait(0.25)
							WeaponTrail.Enabled = false
							anim = "flame"
							frame = 1
							task.wait(0.115)
							if not sword then 
								sound(85382616384849,2,1,ra,0,false)
							else 
								sound(85382616384849,2,1,la,0,false)
							end
							magnitudedamage(4.5,"sphere", 0, 6.66, 386946017, 4.5, 1, root,true,"normal","combo4")
							frame = 2
							task.wait(0.125)
							frame = 3
							task.wait(0.125)
							frame = 2
							task.wait(0.175)
							anim = "gigas"
							frame = 3
							task.wait(0.125)
							frame = 4
							sound(6633385559,3,0.75,ra,0,false)
							magnitudedamage(4.5,"sphere", 0, 6.66, 386946017, 4.5, 1, root,true,"normal","combo4")
							task.wait(0.175)
							frame = 3
							task.wait(0.175)
							frame = 2
							sound(104145773394320,3,1,la,0,false)
							magnitudedamage(4.5,"sphere", 0, 6.66, 386946017, 4.5, 1, root,true,"normal","combo5")
							task.wait(0.175)
							frame = 3
							task.wait(0.125)
							debris:AddItem(vel,0.075)
							anim = "riot"
							frame = 1
							task.wait(0.125)
							frame = 2
							sound(74238153433253,3,1,ll,0,false)
							magnitudedamage(4.5,"sphere", 0, 6.66, 386946017, 4.5, 1, root,true,"normal","combo5")
							task.wait(0.225)
							frame = 3
							task.wait(0.125)
							anim = "slash"
							frame = 1
							task.wait(0.15)	
							WeaponTrail.Enabled = true
							sound(117297744119258,3,1,Weapon,0,false)
							frame = 2
							magnitudedamage(3.33,"sphere", 0, 6.66, 7131798141, 4.5, 1, root,true,"slash2","combo5")
							task.wait(0.06)
							frame = 4
							task.wait(0.1)
							frame = 3
							task.wait(0.175)
							anim = "ashiruf"
							frame = 4
							local kfl = new("ParticleEmitter")
							local kfll = new("PointLight")
							kfl.Name = "Fire"
							kfl.Parent = Weapon
							kfl.Speed = NumberRange.new(2, 6)
							kfl.Rotation = NumberRange.new(-45, -45)
							kfl.Color = ColorSequence.new(color(1, 0.827451, 0.380392),color(1, 0.407843, 0.133333))
							kfl.LightEmission = 0.800000011920929
							kfl.Texture = "http://www.roblox.com/asset/?id=241936182"
							kfl.Transparency = NumberSequence.new(0,0.28749996423721313,1)
							kfl.ZOffset = 1
							kfl.Size = NumberSequence.new(0.5,0.5)
							kfl.EmissionDirection = Enum.NormalId.Front
							kfl.Lifetime = NumberRange.new(1, 1)
							kfl.Rate = 115
							kfll.Parent = Weapon
							kfll.Color = color(1, 0.8, 0.333333)
							kfll.Range = 14
							kfll.Shadows = true
							local kfla = new("ParticleEmitter")
							local kfla0 = new("ParticleEmitter")
							local kfla1 = new("ParticleEmitter")
							local kfla2 = new("ParticleEmitter")
							local kfla3 = new("ParticleEmitter")
							local kfla4 = new("ParticleEmitter")
							kfla.Name = "WaterDrops"
							kfla.Parent = Weapon
							kfla.Rotation = NumberRange.new(-65, -65)
							kfla.Color = ColorSequence.new(color(1, 0.368627, 0),color(1, 0.368627, 0))
							kfla.LightEmission = 0.4000000059604645
							kfla.LightInfluence = 1
							kfla.Texture = "http://www.roblox.com/asset/?id=4773310529"
							kfla.Transparency = NumberSequence.new(0.09999996423721313,0.6625000238418579,1)
							kfla.Size = NumberSequence.new(1,0)
							kfla.Drag = 1.5
							kfla.Lifetime = NumberRange.new(1, 1)
							kfla.Rate = 40
							kfla.SpreadAngle = vect2(30, 30)
							kfla.VelocitySpread = 30
							kfla0.Name = "WaterDrops"
							kfla0.Parent = Weapon
							kfla0.Color = ColorSequence.new(color(1, 0.4, 0),color(1, 0.4, 0))
							kfla0.LightEmission = 0.4000000059604645
							kfla0.LightInfluence = 1
							kfla0.Texture = "http://www.roblox.com/asset/?id=4773310157"
							kfla0.Transparency = NumberSequence.new(0.09375,0.6000000238418579,1)
							kfla0.Size = NumberSequence.new(0.800000011920929,0)
							kfla0.Drag = 1.5
							kfla0.Lifetime = NumberRange.new(1, 1)
							kfla0.Rate = 40
							kfla0.RotSpeed = NumberRange.new(140, 140)
							kfla0.SpreadAngle = vect2(30, 30)
							kfla0.VelocitySpread = 30
							kfla1.Name = "WaterDrops"
							kfla1.Parent = Weapon
							kfla1.Rotation = NumberRange.new(180, 180)
							kfla1.Color = ColorSequence.new(color(1, 0.172549, 0.00784314),color(1, 0.172549, 0.00784314))
							kfla1.LightEmission = 0.5
							kfla1.LightInfluence = 1
							kfla1.Texture = "http://www.roblox.com/asset/?id=4773310529"
							kfla1.Transparency = NumberSequence.new(0.006249964237213135,0.6625000238418579,1)
							kfla1.Size = NumberSequence.new(1,0)
							kfla1.Drag = 1.5
							kfla1.Lifetime = NumberRange.new(1, 1)
							kfla1.Rate = 40
							kfla1.SpreadAngle = vect2(30, 30)
							kfla1.VelocitySpread = 30
							kfla2.Name = "WaterDrops"
							kfla2.Parent = Weapon
							kfla2.Color = ColorSequence.new(color(1, 0.164706, 0),color(1, 0.164706, 0))
							kfla2.LightEmission = 0.5
							kfla2.LightInfluence = 1
							kfla2.Texture = "http://www.roblox.com/asset/?id=4773309959"
							kfla2.Transparency = NumberSequence.new(0.2124999761581421,0.6000000238418579,1)
							kfla2.Size = NumberSequence.new(1,0)
							kfla2.Drag = 1.5
							kfla2.Lifetime = NumberRange.new(1, 1)
							kfla2.Rate = 40
							kfla2.RotSpeed = NumberRange.new(140, 140)
							kfla2.SpreadAngle = vect2(30, 30)
							kfla2.VelocitySpread = 30
							kfla3.Name = "Water"
							kfla3.Parent = Weapon
							kfla3.Color = ColorSequence.new(color(1, 0.4, 0),color(1, 0.4, 0))
							kfla3.LightEmission = 0.6000000238418579
							kfla3.LightInfluence = 1
							kfla3.Texture = "http://www.roblox.com/asset/?id=4928844011"
							kfla3.Transparency = NumberSequence.new(0.5,0.5)
							kfla3.Size = NumberSequence.new(0.18750011920928955,0.9375,0.8125001192092896,1.3749998807907104,0.12499988079071045,0)
							kfla3.Lifetime = NumberRange.new(1, 1)
							kfla3.Rate = 40
							kfla3.RotSpeed = NumberRange.new(140, 140)
							kfla4.Name = "DarkWater"
							kfla4.Parent = Weapon
							kfla4.Speed = NumberRange.new(4, 4)
							kfla4.Rotation = NumberRange.new(-65, -65)
							kfla4.Color = ColorSequence.new(color(1, 0.235294, 0),color(1, 0.235294, 0))
							kfla4.LightEmission = 0.20000000298023224
							kfla4.LightInfluence = 1
							kfla4.Texture = "http://www.roblox.com/asset/?id=4928844011"
							kfla4.Transparency = NumberSequence.new(0.699999988079071,0.699999988079071)
							kfla4.Size = NumberSequence.new(1.812499761581421,0)
							kfla4.Lifetime = NumberRange.new(1, 1)
							kfla4.Rate = 12
							kfla.EmissionDirection = Enum.NormalId.Front
							kfla0.EmissionDirection = Enum.NormalId.Front
							kfla1.EmissionDirection = Enum.NormalId.Front
							kfla2.EmissionDirection = Enum.NormalId.Front
							kfla3.EmissionDirection = Enum.NormalId.Front
							kfla4.EmissionDirection = Enum.NormalId.Front
							sound(3518168170,2.5,1,Weapon,0,false)
							task.wait(0.1)
							frame = 5
							task.wait(0.1)
							frame = 1
							task.wait(0.1)
							frame = 2
							task.wait(0.1)
							frame = 3
							sound(117297744119258,3,1,Weapon,0,false)
							task.wait(0.066)
							sound(3203893315,3,1,Weapon,0,false)
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
							fpw2.BrickColor = bc("Br. yellowish orange")
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
							fpw.BrickColor = bc("Bright red")
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
							fp.BrickColor = bc("Maroon")
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
							fp2.BrickColor = bc("Neon orange")
							fp2.CanCollide = false
							fp2.TopSurface = Enum.SurfaceType.Smooth
							fpm2.Parent = fp2
							fpm2.MeshType = Enum.MeshType.Sphere
							fpw.Material = "Neon"
							fpw2.Material = "Neon"
							fp.Material = "Neon"
							fp2.Material = "Neon"
							fpw2.CFrame = root.CFrame * cframe(0,-1.5,-7.5)
							fpw.CFrame = root.CFrame * cframe(0,-1.5,-7.5)
							fp.CFrame = root.CFrame * cframe(0,-0.75,-7.5) * angles(rad(-30),0,0)
							fp2.CFrame = root.CFrame * cframe(0,-0.75,-7.5) * angles(rad(-30),0,0)
							fp.CanTouch = false
							fpw.CanTouch = false
							fp2.CanTouch = false
							fpw2.CanTouch = false
							sound(96730847431500,2.5,1,fp,0,false)
							local tween = tweens:Create(fpw2,TweenInfo.new(2,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Transparency = 1})
							tween:Play()
							local tweenM = tweens:Create(fpwm2,TweenInfo.new(2,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Scale = vect3(15,0.05,15),Offset = vect3(0,-1.5,-1)})
							tweenM:Play()
							local tween1 = tweens:Create(fpw,TweenInfo.new(2,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Transparency = 1})
							tween1:Play()
							local tweenM1 = tweens:Create(fpwm,TweenInfo.new(2,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Scale = vect3(17.5,0.025,17.5),Offset = vect3(0,-1.5,-1)})
							tweenM1:Play()
							local tween2 = tweens:Create(fp,TweenInfo.new(2,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{CFrame = fp.CFrame * angles(0,rad(180),0),Size = vect3(9, 60, 9),Transparency = 1})
							tween2:Play()
							local tween3 = tweens:Create(fp2,TweenInfo.new(2,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{CFrame = fp.CFrame * angles(0,rad(180),0),Size = vect3(7.5, 50, 7.5),Transparency = 1})
							tween3:Play()
							tween.Completed:Connect(function() fpw2:Destroy()end)
							tween1.Completed:Connect(function() fpw:Destroy() end)
							tween2.Completed:Connect(function() fp:Destroy()end)
							tween3.Completed:Connect(function() fp2:Destroy() end)
							local explosion = new("Explosion")
							explosion.Parent = workspace
							explosion.Position = Weapon.Position
							explosion.BlastRadius = 0
							explosion.BlastPressure = 0
							sound2(6892631834,4.5,1,Weapon,0,false)
							magnitudedamage(0, "boom", 0, 10, 4766119678, 3, 1, root,true,"burn","combo6")
							kfll:Destroy()
							kfl.Enabled = false
							kfla.Enabled = false
							kfla0.Enabled = false
							kfla1.Enabled = false
							kfla2.Enabled = false
							kfla3.Enabled = false
							kfla4.Enabled = false
							task.wait(0.375)
							debris:AddItem(kfl,2)
							debris:AddItem(kfla,2)
							debris:AddItem(kfla0,2)
							debris:AddItem(kfla1,2)
							debris:AddItem(kfla2,2)
							debris:AddItem(kfla3,2)
							debris:AddItem(kfla4,2)
							WeaponTrail.Enabled = false
							frame = 4
							task.wait(0.125)
						end
					end
				end
			end
			hum.WalkSpeed = ogws
			hum.JumpPower = ogjp
			hum.JumpHeight = ogjh
			attack = false
		end
	end;
	["giga"] = function()
		if not (attack or guarding or hurt or hum.Sit == true or sitting or lying) then
			keycombo = ""
			if player.UserId ~= 50203523 then if mp < 500 then return end else if mp < (500/10) then return end end
			if player.UserId == 50203523 then
				mp = mp - (500/10)
			else
				mp = mp - 500
			end
			attack = true
			hum.WalkSpeed = 0
			hum.JumpPower = 0
			hum.JumpHeight = 0
			super()
			if not sword then
				anim = "giga"
				frame = 1
				if game.PlaceId == 11510416200 or game.PlaceId == 126783576555525 or game.PlaceId == 89201052571047 or game.PlaceId == 79868761121850 then
					local randoml = random(0,2)
					if randoml == 0 then
						chatter("G.I.G.A. Attack!!")
						if not dresst then
							if voices then
								sound(109239418812415,6.66,1.2,head,68.35,false,true,2.531)
							end
						else
							if voices then
								sound(109239418812415,6.66,1.45,head,68.35,false,true,2.094)
							end
						end
					elseif randoml == 1 then
						chatter("TAKE THIS!!")
						if not dresst then
							if voices then
								sound(109239418812415,6.66,1.2,head,71.375,false,true,1.908)
							end
						else
							if voices then
								sound(109239418812415,6.66,1.45,head,71.375,false,true,1.579)
							end
						end
					else
						chatter("ALL YOUR YAPPING IS TRASH!!")
						if not dresst then
							if voices then
								sound(109239418812415,6.66,1.15,head,73.675,false,true,2.226)
							end
						else
							if voices then
								sound(109239418812415,6.66,1.55,head,73.675,false,true,1.724)
							end
						end
					end
				else
					chatter("G.I.G.A. Attack!!")
					if voices then
						if not dresst then
							sound(565208983,2.5,1.2,head,0,false)
						else
							sound(565208983,2.5,1.45,head,0,false)
						end
					end
				end
				local fball = new("Part")
				local fballl = new("PointLight")
				local fballp = new("ParticleEmitter")
				local fballp2 = new("ParticleEmitter")
				local fballw = new("Weld")
				fball.Name = "Fireball"
				fball.Parent = script
				fball.Transparency = 1
				fball.Size = vect3(1, 1, 1)
				fball.CanCollide = false
				fball.CanTouch = false
				fball.Locked = true
				fballl.Name = "Light"
				fballl.Parent = fball
				fballl.Color = color(1, 0.654902, 0.235294)
				fballl.Shadows = true
				fballp.Name = "Fire2"
				fballp.Parent = fball
				fballp.Speed = NumberRange.new(1.5, 1.5)
				fballp.Rotation = NumberRange.new(-180, 180)
				fballp.Color = ColorSequence.new(color(1, 0.980392, 0.364706),color(1, 0.0117647, 0.0117647))
				fballp.LightEmission = 1
				fballp.Texture = "http://www.roblox.com/asset/?id=http://www.roblox.com/fire-main-item?id=241922889"
				fballp.Transparency = NumberSequence.new(1,0.3687499761581421,0.05624997615814209,0.037499964237213135,0.13749998807907104,0.36250001192092896,0.65625,1)
				fballp.ZOffset = 1
				fballp.Size = NumberSequence.new(1.499999761581421,0.37499964237213135)
				fballp.Acceleration = vect3(0, 15, 0)
				fballp.Lifetime = NumberRange.new(0.30000001192092896, 0.550000011920929)
				fballp.Rate = 125
				fballp.RotSpeed = NumberRange.new(-90, 90)
				fballp.SpreadAngle = vect2(180, 180)
				fballp.VelocitySpread = 180
				fballp2.Name = "Fire1"
				fballp2.Parent = fball
				fballp2.Speed = NumberRange.new(0, 0)
				fballp2.Rotation = NumberRange.new(-180, 180)
				fballp2.Color = ColorSequence.new(color(1, 0.564706, 0.12549),color(0.984314, 0, 0),color(0.976471, 0, 0))
				fballp2.LightEmission = 0.5
				fballp2.Texture = "http://www.roblox.com/asset/?id=37332909"
				fballp2.Transparency = NumberSequence.new(1,0.768750011920929,0.59375,0.41874998807907104,0.28749996423721313,0.28125,0.34999996423721313,0.5499999523162842,1)
				fballp2.ZOffset = 1
				fballp2.Size = NumberSequence.new(3.040935516357422,0.7499998807907104)
				fballp2.Acceleration = vect3(0, 2.5, 0)
				fballp2.Lifetime = NumberRange.new(0.25, 0.44999998807907104)
				fballp2.Rate = 150
				fballp2.RotSpeed = NumberRange.new(-180, 180)
				fballp2.SpreadAngle = vect2(180, 180)
				fballp2.VelocitySpread = 180
				fballw.Parent = fball
				fballw.C0 = cframe(0, 1, 0)
				fballw.Part0 = fball
				fballw.Part1 = la
				sound(3518146972,3,1,fball,0,false)
				task.wait(1)
				fballw:Destroy()
				fballl.Enabled = false
				fball.Anchored = true
				fballp.Enabled = false
				fballp2.Enabled = false
				debris:AddItem(fball,2)
				frame = 2
				tyrant()
				task.wait(0.5)
			else
				anim = "gigas"
				frame = 1
				task.wait(1)
				magnitudedamage(30, "sphere", 0, 10, 4766119678, 3, 1, root,true,"normal","giga")
				frame = 2
				chatter("G.I.G.A...")
				local fball = new("Part")
				local fballl = new("PointLight")
				local fballp = new("ParticleEmitter")
				local fballp2 = new("ParticleEmitter")
				local fballw = new("Weld")
				fball.Name = "Fireball"
				fball.Parent = script
				fball.Transparency = 1
				fball.Size = vect3(1, 1, 1)
				fball.CanCollide = false
				fball.CanTouch = false
				fball.Locked = true
				fballl.Name = "Light"
				fballl.Parent = fball
				fballl.Color = color(1, 0.654902, 0.235294)
				fballl.Shadows = true
				fballp.Name = "Fire2"
				fballp.Parent = fball
				fballp.Speed = NumberRange.new(1.5, 1.5)
				fballp.Rotation = NumberRange.new(-180, 180)
				fballp.Color = ColorSequence.new(color(1, 0.980392, 0.364706),color(1, 0.0117647, 0.0117647))
				fballp.LightEmission = 1
				fballp.Texture = "http://www.roblox.com/asset/?id=http://www.roblox.com/fire-main-item?id=241922889"
				fballp.Transparency = NumberSequence.new(1,0.3687499761581421,0.05624997615814209,0.037499964237213135,0.13749998807907104,0.36250001192092896,0.65625,1)
				fballp.ZOffset = 1
				fballp.Size = NumberSequence.new(1.499999761581421,0.37499964237213135)
				fballp.Acceleration = vect3(0, 15, 0)
				fballp.Lifetime = NumberRange.new(0.30000001192092896, 0.550000011920929)
				fballp.Rate = 125
				fballp.RotSpeed = NumberRange.new(-90, 90)
				fballp.SpreadAngle = vect2(180, 180)
				fballp.VelocitySpread = 180
				fballp2.Name = "Fire1"
				fballp2.Parent = fball
				fballp2.Speed = NumberRange.new(0, 0)
				fballp2.Rotation = NumberRange.new(-180, 180)
				fballp2.Color = ColorSequence.new(color(1, 0.564706, 0.12549),color(0.984314, 0, 0),color(0.976471, 0, 0))
				fballp2.LightEmission = 0.5
				fballp2.Texture = "http://www.roblox.com/asset/?id=37332909"
				fballp2.Transparency = NumberSequence.new(1,0.768750011920929,0.59375,0.41874998807907104,0.28749996423721313,0.28125,0.34999996423721313,0.5499999523162842,1)
				fballp2.ZOffset = 1
				fballp2.Size = NumberSequence.new(3.040935516357422,0.7499998807907104)
				fballp2.Acceleration = vect3(0, 2.5, 0)
				fballp2.Lifetime = NumberRange.new(0.25, 0.44999998807907104)
				fballp2.Rate = 150
				fballp2.RotSpeed = NumberRange.new(-180, 180)
				fballp2.SpreadAngle = vect2(180, 180)
				fballp2.VelocitySpread = 180
				fballw.Parent = fball
				fballw.C0 = cframe(0, 1, 0)
				fballw.Part0 = fball
				fballw.Part1 = la
				spawn(function()
					task.wait(0.005)
					local sphere = new("Part")
					sphere.Parent = script
					sphere.Name = "SmallBoom"
					sphere.Shape = "Ball"
					sphere.Size = vect3(0.5,0.5,0.5)
					sphere.Transparency = 0
					sphere.BrickColor = bc("Neon orange")
					sphere.Material = "Neon"
					sphere.CanCollide = false
					sphere.Anchored = true
					sphere.CFrame = fball.CFrame
					local tween = tweens:Create(sphere, TweenInfo.new(0.35), {Size = vect3(5,5,5), Transparency = 1})
					tween:Play()
					tween.Completed:Connect(function() sphere:Destroy() end)
					local explosion = new("Explosion")
					explosion.Parent = workspace
					explosion.Position = sphere.Position
					explosion.BlastRadius = 0
					explosion.BlastPressure = 0
				end)
				local bpos = new("BodyPosition")
				bpos.Name = "GigaMove"
				bpos.Parent = root
				bpos.MaxForce = vect3(39999,39999,39999)
				bpos.D = 2000
				bpos.Position = root.CFrame * cframe(0,0,-30).Position
				debris:AddItem(bpos,0.2)
				if game.PlaceId == 11510416200 or game.PlaceId == 126783576555525 or game.PlaceId == 89201052571047 or game.PlaceId == 79868761121850 then
					if voices then
						if not dresst then
							sound(109239418812415,6.66,1.25,head,0,false,true,1.3)
						else
							sound(109239418812415,6.66,1.6,head,0,false,true,1.016)
						end
					end
				end
				sound(6892640563,3,1,fball,0,false)
				task.wait(0.315)
				bpos:Destroy()
				frame = 3
				fballw:Destroy()
				fballl.Enabled = false
				fball.Anchored = true
				fballp.Enabled = false
				fballp2.Enabled = false
				debris:AddItem(fball,2)
				task.wait(0.075)
				chatter("SMASH!!")
				if game.PlaceId == 11510416200 or game.PlaceId == 126783576555525 or game.PlaceId == 89201052571047 or game.PlaceId == 79868761121850 then
					if voices then
						if not dresst then
							sound(109239418812415,6.66,1.1,head,1.625,false,true,1.673)
						else
							sound(109239418812415,6.66,1.45,head,1.625,false,true,1.227)
						end
					end
				end
				tyrant()
				frame = 4
				task.wait(0.5)
			end
			hum.WalkSpeed = ogws
			hum.JumpPower = ogjp
			hum.JumpHeight = ogjh
			attack = false
		end
	end;
	["efireb"] = function()
		if not (attack or guarding or hurt or hum.Sit == true or sitting or lying) then
			keycombo = ""
			if player.UserId ~= 50203523 then if mp < 300 then return end else if mp < (300/10) then return end end
			if player.UserId == 50203523 then
				mp = mp - (300/10)
			else
				mp = mp - 300
			end
			attack = true
			hum.WalkSpeed = 0
			hum.JumpPower = 0
			hum.JumpHeight = 0
			super()
			if not sword then
				anim = "efball"
				frame = 1
				chatter("It all rides on this!")
				if voices then
					if not dresst then
						sound(4634836308,2.5,1.1,head,0,false)
					else
						sound(4634836308,2.5,1.33,head,0,false)
					end
				end
				local fball = new("Part")
				local fballl = new("PointLight")
				local fballp = new("ParticleEmitter")
				local fballp2 = new("ParticleEmitter")
				local fballw = new("Weld")
				fball.Name = "Fireball"
				fball.Parent = script
				fball.Transparency = 1
				fball.Size = vect3(1, 1, 1)
				fball.CanCollide = false
				fball.CanTouch = false
				fball.Locked = true
				fballl.Name = "Light"
				fballl.Parent = fball
				fballl.Color = color(1, 0.654902, 0.235294)
				fballl.Shadows = true
				fballp.Name = "Fire2"
				fballp.Parent = fball
				fballp.Speed = NumberRange.new(1.5, 1.5)
				fballp.Rotation = NumberRange.new(-180, 180)
				fballp.Color = ColorSequence.new(color(1, 0.980392, 0.364706),color(1, 0.0117647, 0.0117647))
				fballp.LightEmission = 1
				fballp.Texture = "http://www.roblox.com/asset/?id=http://www.roblox.com/fire-main-item?id=241922889"
				fballp.Transparency = NumberSequence.new(1,0.3687499761581421,0.05624997615814209,0.037499964237213135,0.13749998807907104,0.36250001192092896,0.65625,1)
				fballp.ZOffset = 1
				fballp.Size = NumberSequence.new(1.499999761581421,0.37499964237213135)
				fballp.Acceleration = vect3(0, 15, 0)
				fballp.Lifetime = NumberRange.new(0.30000001192092896, 0.550000011920929)
				fballp.Rate = 125
				fballp.RotSpeed = NumberRange.new(-90, 90)
				fballp.SpreadAngle = vect2(180, 180)
				fballp.VelocitySpread = 180
				fballp2.Name = "Fire1"
				fballp2.Parent = fball
				fballp2.Speed = NumberRange.new(0, 0)
				fballp2.Rotation = NumberRange.new(-180, 180)
				fballp2.Color = ColorSequence.new(color(1, 0.564706, 0.12549),color(0.984314, 0, 0),color(0.976471, 0, 0))
				fballp2.LightEmission = 0.5
				fballp2.Texture = "http://www.roblox.com/asset/?id=37332909"
				fballp2.Transparency = NumberSequence.new(1,0.768750011920929,0.59375,0.41874998807907104,0.28749996423721313,0.28125,0.34999996423721313,0.5499999523162842,1)
				fballp2.ZOffset = 1
				fballp2.Size = NumberSequence.new(3.040935516357422,0.7499998807907104)
				fballp2.Acceleration = vect3(0, 2.5, 0)
				fballp2.Lifetime = NumberRange.new(0.25, 0.44999998807907104)
				fballp2.Rate = 150
				fballp2.RotSpeed = NumberRange.new(-180, 180)
				fballp2.SpreadAngle = vect2(180, 180)
				fballp2.VelocitySpread = 180
				fballw.Parent = fball
				fballw.C0 = cframe(0, 1, 0)
				fballw.Part0 = fball
				fballw.Part1 = ra
				sound(3518168170,3.5,1,fball,0,false)
				task.wait(2)
				fballw:Destroy()
				fballl.Enabled = false
				fball.Anchored = true
				fballp.Enabled = false
				fballp2.Enabled = false
				debris:AddItem(fball,2)
				local fire = new("Fire")
				fire.Parent = la
				fire.Size = 6
				fire.Heat = 10
				spawn(function()
					task.wait(0.075)
					fire.Enabled = false
					debris:AddItem(fire,2)
				end)
				chatter("ZIO-BLAZE!!!")
				if voices then
					if not dresst then
						sound(4634840160,2.5,1.1,head,0,false)
					else
						sound(4634840160,2.5,1.33,head,0,false)
					end
				end
				frame = 2
				sound(128912290,4.5,2.5,la,0,false)
				local fireball = new("Part")
				local fireballp = new("ParticleEmitter")
				fireball.Name = "FireBall"
				fireball.Parent = script
				fireball.Transparency = 0.4
				fireball.Size = vect3(5.82, 5.82, 5.82)
				fireball.BottomSurface = Enum.SurfaceType.Smooth
				fireball.BrickColor = bc("Bright red")
				fireball.Material = Enum.Material.Neon
				fireball.TopSurface = Enum.SurfaceType.Smooth
				fireball.CanCollide = false
				fireball.Locked = true
				fireball.CFrame = root.CFrame * cframe(0,0.25,-7.5)
				fireball.Shape = Enum.PartType.Ball
				fireballp.Name = "FireParticle"
				fireballp.Parent = fireball
				fireballp.Speed = NumberRange.new(10, 10)
				fireballp.Rotation = NumberRange.new(-180, -180)
				fireballp.Color = ColorSequence.new(color(1, 0.333333, 0),color(1, 0, 0))
				fireballp.LightEmission = 0.7799999713897705
				fireballp.Texture = "rbxassetid://306272582"
				fireballp.Size = NumberSequence.new(1.9999998807907104,0.75,0.38461506366729736,0)
				fireballp.Drag = 1
				fireballp.Lifetime = NumberRange.new(0.44999998807907104, 0.44999998807907104)
				fireballp.Rate = 100
				fireballp.RotSpeed = NumberRange.new(180, 180)
				fireballp.SpreadAngle = vect2(600, 600)
				fireballp.VelocitySpread = 600
				sound(8021447194,3,1,fireball,0,false)
				local fire = new("Fire")
				fire.Parent = fireball
				fire.Size = 8
				fire.Heat = 10
				local bv = new("BodyVelocity")
				bv.MaxForce = vect3(math.huge,math.huge,math.huge)
				bv.Velocity = root.CFrame.LookVector * 250
				bv.Parent = fireball
				local hitted = false
				spawn(function()
					task.wait(7.5)
					if not hitted then
						fireball.Anchored = true
						fire.Enabled = false
						fireballp.Enabled = false
						local tween = tweens:Create(fireball, TweenInfo.new(1), {Transparency = 1})
						tween:Play()
						tween.Completed:Connect(function() fireball:Destroy() end)
					end
				end)
				fireball.Touched:Connect(function()
					if hitted then return end
					hitted = true
					local boom = new("Explosion")
					boom.Parent = workspace
					boom.Position = fireball.Position
					boom.BlastRadius = 0
					boom.BlastPressure = 0
					fireball.Anchored = true
					sound2(88378838573475,3,1,fireball,0)
					magnitudedamage(46, "boom", 0, 6.66, 8021447194, 3, 1, fireball,true,"burn","giga2")
					fireballp.Enabled = false
					fire.Enabled = false
					local tween = tweens:Create(fireball, TweenInfo.new(1), {Transparency = 1})
					tween:Play()
					tween.Completed:Connect(function() fireball:Destroy() end)
				end)
				task.wait(0.075)
				frame = 3
				task.wait(2)
			else
				local target = false
				local function checktarget()
					for i,v in pairs(workspace:GetDescendants()) do
						if v:FindFirstChildOfClass("Humanoid") and v ~= char and not target then
							local vhum = v:FindFirstChildOfClass("Humanoid")
							local vtorso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso") or v:FindFirstChild("HumanoidRootPart")
							local vhead = v:FindFirstChild("Head")
							if vtorso then
								local vdistance = (root.Position - vtorso.Position).magnitude
								if vdistance <= 12.5 and vhum.Health > 0 then
									vtorso.CFrame = root.CFrame * cframe(0,0,-4.5) * angles(0,rad(180),0)
									if not overdrive then
										if vhum.Health > 19 then
											local creator = new("ObjectValue")
											creator.Name = "creator"
											creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
											creator.Parent = vhum
											debris:AddItem(creator, 2)
											vhum:TakeDamage(19)
										end
									else
										if vhum.Health > 40 then
											local creator = new("ObjectValue")
											creator.Name = "creator"
											creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
											creator.Parent = vhum
											debris:AddItem(creator, 2)
											vhum:TakeDamage(40)
										end
									end
									local vel = new("BodyVelocity")
									vel.MaxForce = vect3(math.huge,math.huge,math.huge)
									vel.Parent = vtorso
									vel.Velocity = root.CFrame.LookVector * 5
									debris:AddItem(vel,3)
									vel.Name = "GuillotineMove"
									sound(17493997647,3,1,vtorso,0,false)
									hiteffect("sphere",vtorso)
									if random(0,6) <= 2 then
										sound(17493997647,4.5,1,vtorso,0,false)
										sound(7441099080,2,1,vtorso,0,false)
										hiteffect("blood",vtorso)
									end
									local boom = new("Explosion")
									boom.Parent = workspace
									boom.Position = vtorso.Position
									boom.BlastRadius = 0
									boom.BlastPressure = 0
									sound2(88378838573475,3,1,vtorso,0)
									hiteffect("burn",vtorso)
									target = true
								end
							end
						end
					end
				end
				anim = "guillotine"
				frame = 1
				WeaponTrail.Enabled = true
				chatter("Strike TRUE!")
				if voices then
					if not dresst then
						sound(4634837955,2.5,1.1,head,0,false)
					else
						sound(4634837955,2.5,1.33,head,0,false)
					end
				end
				local firesound = new("Sound")
				firesound.SoundId = "rbxassetid://269252174"
				firesound.Volume = 4.5
				firesound.Looped = true
				firesound.Parent = Weapon
				firesound:Play()
				local kfl = new("ParticleEmitter")
				local kfll = new("PointLight")
				kfl.Name = "Fire"
				kfl.Parent = Weapon
				kfl.Speed = NumberRange.new(2, 6)
				kfl.Rotation = NumberRange.new(-45, -45)
				kfl.Color = ColorSequence.new(color(1, 0.827451, 0.380392),color(1, 0.407843, 0.133333))
				kfl.LightEmission = 0.800000011920929
				kfl.Texture = "http://www.roblox.com/asset/?id=241936182"
				kfl.Transparency = NumberSequence.new(0,0.28749996423721313,1)
				kfl.ZOffset = 1
				kfl.Size = NumberSequence.new(0.5,0.5)
				kfl.EmissionDirection = Enum.NormalId.Front
				kfl.Lifetime = NumberRange.new(1, 1)
				kfl.Rate = 115
				kfll.Parent = Weapon
				kfll.Color = color(1, 0.8, 0.333333)
				kfll.Range = 14
				kfll.Shadows = true
				local kfla = new("ParticleEmitter")
				local kfla0 = new("ParticleEmitter")
				local kfla1 = new("ParticleEmitter")
				local kfla2 = new("ParticleEmitter")
				local kfla3 = new("ParticleEmitter")
				local kfla4 = new("ParticleEmitter")
				kfla.Name = "WaterDrops"
				kfla.Parent = Weapon
				kfla.Rotation = NumberRange.new(-65, -65)
				kfla.Color = ColorSequence.new(color(1, 0.368627, 0),color(1, 0.368627, 0))
				kfla.LightEmission = 0.4000000059604645
				kfla.LightInfluence = 1
				kfla.Texture = "http://www.roblox.com/asset/?id=4773310529"
				kfla.Transparency = NumberSequence.new(0.09999996423721313,0.6625000238418579,1)
				kfla.Size = NumberSequence.new(1,0)
				kfla.Drag = 1.5
				kfla.Lifetime = NumberRange.new(1, 1)
				kfla.Rate = 40
				kfla.SpreadAngle = vect2(30, 30)
				kfla.VelocitySpread = 30
				kfla0.Name = "WaterDrops"
				kfla0.Parent = Weapon
				kfla0.Color = ColorSequence.new(color(1, 0.4, 0),color(1, 0.4, 0))
				kfla0.LightEmission = 0.4000000059604645
				kfla0.LightInfluence = 1
				kfla0.Texture = "http://www.roblox.com/asset/?id=4773310157"
				kfla0.Transparency = NumberSequence.new(0.09375,0.6000000238418579,1)
				kfla0.Size = NumberSequence.new(0.800000011920929,0)
				kfla0.Drag = 1.5
				kfla0.Lifetime = NumberRange.new(1, 1)
				kfla0.Rate = 40
				kfla0.RotSpeed = NumberRange.new(140, 140)
				kfla0.SpreadAngle = vect2(30, 30)
				kfla0.VelocitySpread = 30
				kfla1.Name = "WaterDrops"
				kfla1.Parent = Weapon
				kfla1.Rotation = NumberRange.new(180, 180)
				kfla1.Color = ColorSequence.new(color(1, 0.172549, 0.00784314),color(1, 0.172549, 0.00784314))
				kfla1.LightEmission = 0.5
				kfla1.LightInfluence = 1
				kfla1.Texture = "http://www.roblox.com/asset/?id=4773310529"
				kfla1.Transparency = NumberSequence.new(0.006249964237213135,0.6625000238418579,1)
				kfla1.Size = NumberSequence.new(1,0)
				kfla1.Drag = 1.5
				kfla1.Lifetime = NumberRange.new(1, 1)
				kfla1.Rate = 40
				kfla1.SpreadAngle = vect2(30, 30)
				kfla1.VelocitySpread = 30
				kfla2.Name = "WaterDrops"
				kfla2.Parent = Weapon
				kfla2.Color = ColorSequence.new(color(1, 0.164706, 0),color(1, 0.164706, 0))
				kfla2.LightEmission = 0.5
				kfla2.LightInfluence = 1
				kfla2.Texture = "http://www.roblox.com/asset/?id=4773309959"
				kfla2.Transparency = NumberSequence.new(0.2124999761581421,0.6000000238418579,1)
				kfla2.Size = NumberSequence.new(1,0)
				kfla2.Drag = 1.5
				kfla2.Lifetime = NumberRange.new(1, 1)
				kfla2.Rate = 40
				kfla2.RotSpeed = NumberRange.new(140, 140)
				kfla2.SpreadAngle = vect2(30, 30)
				kfla2.VelocitySpread = 30
				kfla3.Name = "Water"
				kfla3.Parent = Weapon
				kfla3.Color = ColorSequence.new(color(1, 0.4, 0),color(1, 0.4, 0))
				kfla3.LightEmission = 0.6000000238418579
				kfla3.LightInfluence = 1
				kfla3.Texture = "http://www.roblox.com/asset/?id=4928844011"
				kfla3.Transparency = NumberSequence.new(0.5,0.5)
				kfla3.Size = NumberSequence.new(0.18750011920928955,0.9375,0.8125001192092896,1.3749998807907104,0.12499988079071045,0)
				kfla3.Lifetime = NumberRange.new(1, 1)
				kfla3.Rate = 40
				kfla3.RotSpeed = NumberRange.new(140, 140)
				kfla4.Name = "DarkWater"
				kfla4.Parent = Weapon
				kfla4.Speed = NumberRange.new(4, 4)
				kfla4.Rotation = NumberRange.new(-65, -65)
				kfla4.Color = ColorSequence.new(color(1, 0.235294, 0),color(1, 0.235294, 0))
				kfla4.LightEmission = 0.20000000298023224
				kfla4.LightInfluence = 1
				kfla4.Texture = "http://www.roblox.com/asset/?id=4928844011"
				kfla4.Transparency = NumberSequence.new(0.699999988079071,0.699999988079071)
				kfla4.Size = NumberSequence.new(1.812499761581421,0)
				kfla4.Lifetime = NumberRange.new(1, 1)
				kfla4.Rate = 12
				kfla.EmissionDirection = Enum.NormalId.Front
				kfla0.EmissionDirection = Enum.NormalId.Front
				kfla1.EmissionDirection = Enum.NormalId.Front
				kfla2.EmissionDirection = Enum.NormalId.Front
				kfla3.EmissionDirection = Enum.NormalId.Front
				kfla4.EmissionDirection = Enum.NormalId.Front
				sound(3518168170,2.5,1,Weapon,0,false)
				task.wait(0.666)
				frame = 2
				local breakdown = new("BodyPosition")
				breakdown.Parent = root
				breakdown.MaxForce = vect3(math.huge,math.huge,math.huge)
				breakdown.D = 1699
				breakdown.Position = root.CFrame * cframe(0,0,-50).Position
				local effect = new("ParticleEmitter")
				effect.Parent = torso
				effect.Rotation = NumberRange.new(0, 300)
				effect.Color = ColorSequence.new(color(1, 1, 1),color(0.427451, 0.427451, 0.427451))
				effect.LightInfluence = 1
				effect.Texture = "rbxassetid://7731347137"
				effect.Transparency = NumberSequence.new(0.5812499523162842,0.925000011920929,1)
				effect.Size = NumberSequence.new(1.5,0)
				effect.Acceleration = vect3(0, 0.10000000149011612, 0)
				effect.EmissionDirection = Enum.NormalId.Front
				effect.Lifetime = NumberRange.new(2, 3)
				effect.Rate = 100
				effect.RotSpeed = NumberRange.new(10, 13)
				effect.SpreadAngle = vect2(0, 360)
				effect.VelocityInheritance = 0.5
				sound(4909206080,4.5,0.5,torso,0,false)
				task.wait(0.6)
				frame = 3
				breakdown.D = 2750
				effect.Enabled = false
				debris:AddItem(effect,2.5)
				task.wait(0.15)
				sound(112896373260430,4.5,1,Weapon,0,false)
				breakdown:Destroy()
				checktarget()
				frame = 4
				task.wait(0.3)
				if target then
					task.wait(0.25)
					chatter("CROSS SLASH!!")
					if voices then
						if not dresst then
							sound(4634835311,2.5,1.1,head,0,false)
						else
							sound(4634835311,2.5,1.33,head,0,false)
						end
					end
					anim = "guillotineh"
					frame = 1
					root.CFrame = root.CFrame + root.CFrame.lookVector * 1
					task.wait(0.066)
					frame = 2
					root.CFrame = root.CFrame + root.CFrame.lookVector * 1
					task.wait(0.066)
					frame = 3
					root.CFrame = root.CFrame + root.CFrame.lookVector * 1
					task.wait(0.066)
					frame = 4
					firesound:Destroy()
					kfll:Destroy()
					kfl.Enabled = false
					kfla.Enabled = false
					kfla0.Enabled = false
					kfla1.Enabled = false
					kfla2.Enabled = false
					kfla3.Enabled = false
					kfla4.Enabled = false
					debris:AddItem(kfl,2)
					debris:AddItem(kfla,2)
					debris:AddItem(kfla0,2)
					debris:AddItem(kfla1,2)
					debris:AddItem(kfla2,2)
					debris:AddItem(kfla3,2)
					debris:AddItem(kfla4,2)
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
					fpw2.BrickColor = bc("Br. yellowish orange")
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
					fpw.BrickColor = bc("Bright red")
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
					fp.BrickColor = bc("Maroon")
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
					fp2.BrickColor = bc("Neon orange")
					fp2.CanCollide = false
					fp2.TopSurface = Enum.SurfaceType.Smooth
					fpm2.Parent = fp2
					fpm2.MeshType = Enum.MeshType.Sphere
					fpw.Material = "Neon"
					fpw2.Material = "Neon"
					fp.Material = "Neon"
					fp2.Material = "Neon"
					fpw2.CFrame = root.CFrame * cframe(0,-1.5,-5)
					fpw.CFrame = root.CFrame * cframe(0,-1.5,-5)
					fp.CFrame = root.CFrame * cframe(0,-0.75,-5) * angles(rad(-30),0,0)
					fp2.CFrame = root.CFrame * cframe(0,-0.75,-5) * angles(rad(-30),0,0)
					fp.CanTouch = false
					fpw.CanTouch = false
					fp2.CanTouch = false
					fpw2.CanTouch = false
					sound(96730847431500,2.5,1,fp,0,false)
					local tween = tweens:Create(fpw2,TweenInfo.new(2,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Transparency = 1})
					tween:Play()
					local tweenM = tweens:Create(fpwm2,TweenInfo.new(2,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Scale = vect3(15,0.05,15),Offset = vect3(0,-1.5,-1)})
					tweenM:Play()
					local tween1 = tweens:Create(fpw,TweenInfo.new(2,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Transparency = 1})
					tween1:Play()
					local tweenM1 = tweens:Create(fpwm,TweenInfo.new(2,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Scale = vect3(17.5,0.025,17.5),Offset = vect3(0,-1.5,-1)})
					tweenM1:Play()
					local tween2 = tweens:Create(fp,TweenInfo.new(2,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{CFrame = fp.CFrame * angles(0,rad(180),0),Size = vect3(9, 60, 9),Transparency = 1})
					tween2:Play()
					local tween3 = tweens:Create(fp2,TweenInfo.new(2,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{CFrame = fp.CFrame * angles(0,rad(180),0),Size = vect3(7.5, 50, 7.5),Transparency = 1})
					tween3:Play()
					tween.Completed:Connect(function() fpw2:Destroy()end)
					tween1.Completed:Connect(function() fpw:Destroy() end)
					tween2.Completed:Connect(function() fp:Destroy()end)
					tween3.Completed:Connect(function() fp2:Destroy() end)
					local explosion = new("Explosion")
					explosion.Parent = workspace
					explosion.Position = Weapon.Position
					explosion.BlastRadius = 0
					explosion.BlastPressure = 0
					sound2(6892640563,6.75,0.875,root,0)
					sound(10209640,7.5,0.5,Weapon,0,false)
					magnitudedamage(35,"boom", 0, 9.6, 17641902155, 7.5, 1, root,true,"burn","guillotine")
					task.wait(0.45)
					WeaponTrail.Enabled = false
				else
					kfll:Destroy()
					kfl.Enabled = false
					kfla.Enabled = false
					kfla0.Enabled = false
					kfla1.Enabled = false
					kfla2.Enabled = false
					kfla3.Enabled = false
					kfla4.Enabled = false
					debris:AddItem(kfl,2)
					debris:AddItem(kfla,2)
					debris:AddItem(kfla0,2)
					debris:AddItem(kfla1,2)
					debris:AddItem(kfla2,2)
					debris:AddItem(kfla3,2)
					debris:AddItem(kfla4,2)
					firesound:Destroy()
					task.wait(0.1)
					WeaponTrail.Enabled = false
				end
			end
			hum.WalkSpeed = ogws
			hum.JumpPower = ogjp
			hum.JumpHeight = ogjh
			attack = false
		end
	end;
	["judas"] = function() 
		if not (attack or guarding or hurt or hum.Sit == true or sitting or lying) then
			keycombo = ""
			if player.UserId ~= 50203523 then if mp < 444 then return end else if mp < (444/10) then return end end
			if player.UserId == 50203523 then
				mp = mp - (444/10)
			else
				mp = mp - 444
			end
			attack = true
			hum.WalkSpeed = 0
			hum.JumpPower = 0
			hum.JumpHeight = 0
			super(3)
			if not sword then
				anim = "dust"
				frame = 1
				task.wait(0.5)
				sound(541909763,2,1,torso,0,false)
				frame = 2
				local judashit = false
				local targets = {}
				for i,v in pairs(workspace:GetDescendants()) do
					if v:FindFirstChildOfClass("Humanoid") and v ~= char then
						local vhum = v:FindFirstChildOfClass("Humanoid")
						local vtorso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso") or v:FindFirstChild("HumanoidRootPart")
						if vtorso then
							local vdistance = (vtorso.Position - root.CFrame*cframe(0,0,-1.5).p).magnitude
							if vdistance <= 6.66 and vhum.Health > 0  then
								judashit = true
								sound(386946017,2,1,vtorso,0,false)
								hiteffect("sphere",vtorso)
								table.insert(targets, v)
								if not overdrive then
									if vhum.Health > 7.4 then
										local creator = new("ObjectValue")
										creator.Name = "creator"
										creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
										creator.Parent = vhum
										debris:AddItem(creator, 2)
										vhum:TakeDamage(7.4)
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
								vtorso.CFrame = root.CFrame * cframe(0,0,-4.5) * angles(0,rad(180),0)
								local bpos = new("BodyPosition")
								bpos.Name = "JudasHitBy"
								bpos.Parent = vtorso
								bpos.MaxForce = vect3(39999,39999,39999)
								bpos.D = 2000
								bpos.Position = root.CFrame * cframe(0,35,0).Position
							end
						end
					end
				end
				if judashit then
					task.wait(0.115)
					frame = 3
					local fstar = new("Part")
					local fstarm = new("SpecialMesh")
					local fstarp = new("ParticleEmitter")
					local fstars = new("Smoke")
					fstar.Parent = script
					fstar.Size = vect3()
					fstar.CanCollide = false
					fstar.CanTouch = false
					fstar.Anchored = true
					fstar.Locked = true
					fstar.CFrame = root.CFrame * cframe(0,35,0)
					fstar.Transparency = 1
					fstarm.Parent = fstar
					fstarm.MeshId = "rbxassetid://1361171250"
					fstarm.Scale = vect3()
					fstarm.MeshType = Enum.MeshType.FileMesh
					fstarp.Name = "Fire"
					fstarp.Parent = fstar
					fstarp.Speed = NumberRange.new(5, 7)
					fstarp.Rotation = NumberRange.new(4, 9)
					fstarp.Color = ColorSequence.new(color(1, 0.333333, 0),color(0.645443, 0.1473, 0),color(0, 0, 0))
					fstarp.LightEmission = 0.550000011920929
					fstarp.Texture = "http://www.roblox.com/asset/?id=248625108"
					fstarp.Transparency = NumberSequence.new(0,0.543749988079071,0.7374999523162842,0,0.7250000238418579,0.45625001192092896,0.637499988079071,0,0.5249999761581421,0)
					fstarp.Size = NumberSequence.new(3.3125,2.8125,2.6875,2.562499523162842,2.3125,2.1875,1.7500001192092896,0.43749988079071045,0.12499988079071045)
					fstarp.Acceleration = vect3(8, 6, 6)
					fstarp.Lifetime = NumberRange.new(0, 1)
					fstarp.Rate = 70
					fstarp.RotSpeed = NumberRange.new(5, 9)
					fstarp.SpreadAngle = vect2(28, 28)
					fstarp.VelocitySpread = 28
					fstars.Parent = fstar
					fstars.Color = color(0.329412, 0.329412, 0.329412)
					fstars.Size = 0.1
					fstars.Opacity = 1
					fstars.RiseVelocity = -9
					local fire = new("Fire")
					fire.Parent = fstar
					fire.Size = 30
					fire.Heat = 25
					fstar.BrickColor = bc("Bright red")
					local fstarl = new("PointLight")
					fstarl.Name = "FireLight"
					fstarl.Parent = fstar
					fstarl.Color = color(1, 0.333333, 0)
					fstarl.Range = 14
					fstarl.Shadows = true
					sound(32791565,4.5,1,fstar,0,false)
					sound(3518146972,5,1,fstar,0,false)
					local firesound = new("Sound")
					firesound.SoundId = "rbxassetid://31760113"
					firesound.Volume = 2.5
					firesound.Looped = true
					firesound.Parent = fstar
					firesound:Play()
					tweens:Create(fstar, TweenInfo.new(3), {Transparency = 0.45}):Play()
					tweens:Create(fstarm, TweenInfo.new(3), {Scale = vect3(0.3, 0.3, 0.3)}):Play()
					task.wait(3.5)
					anim = "judas"
					frame = 1
					task.wait(0.65)
					chatter("Kaboom.")
					if not dresst then
						if voices then
							sound(7358219350,4,1.2,head,0,false)
						end
					else
						if voices then
							sound(7358219350,4,1.5,head,0,false)
						end
					end
					task.wait(0.25)
					frame = 2
					spawn(function()
						for i = 1, #targets do
							coroutine.resume(coroutine.create(function()
								local v = targets[i]
								local vtorso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso") or v:FindFirstChild("HumanoidRootPart")
								local vhum = v:FindFirstChildOfClass("Humanoid")
								if v ~= nil then
									if vtorso:FindFirstChild("JudasHitBy") then vtorso:FindFirstChild("JudasHitBy"):Destroy() end
									vtorso.Velocity = root.CFrame.upVector*150
									vhum.PlatformStand = true
									spawn(function() 
										task.wait(10)
										vhum.PlatformStand = false
									end)
									if player.UserId == 50203523 then
										if random(0,25) <= 12 then
											sound(18835457941,4.44,1,vtorso,0,false) --Guilty Gear sound effect, I must listen to the audio closely to know where it came from.
										else
											sound(4418405082,4.44,1,vtorso,0,false)
										end
										hiteffect("boom",vtorso)
										hiteffect("burn",vtorso)
										if instakill and random(0,10) == 0 then
											if not game:GetService("Players"):GetPlayerFromCharacter(v) then
												if game.PlaceId == 11510416200 or game.PlaceId == 126783576555525 or game.PlaceId == 89201052571047 or game.PlaceId == 79868761121850 then
													sound(79887722971140,4.5,1,torso,52.075,false,true,2.4)
												else
													sound(17592192684,1.5,1,torso,0,false)
												end
												local fire = new("Fire")
												fire.Parent = vtorso
												fire.Size = 10
												fire.Heat = 25
												sound(303632290,5,1,vtorso,0,true)
												local flash = new("ScreenGui")
												flash.Parent = player:FindFirstChild("PlayerGui")
												local frame = new("Frame")
												frame.Parent = flash
												frame.Size = udim2(1,0,1,0)
												frame.BackgroundColor3 = color(1,1,1)
												frame.BackgroundTransparency = 0
												local death = new("ImageLabel")
												death.Parent = flash
												death.Position = udim2(0.286, 0, 0.1, 0)
												death.Size = udim2(0, 450, 0, 450)
												death.BackgroundTransparency = 1
												death.Image = "rbxassetid://12472046162"
												spawn(function()
													for i = 1,45 do
														task.wait()
														frame.BackgroundTransparency = frame.BackgroundTransparency + 1/45
														death.ImageTransparency = death.ImageTransparency + 1/45
													end
												end)
												debris:AddItem(flash, 5)
												instantkill(v,true)
												sound2(17561469788,3.5,1,root,0)
												sound(7441099080,2,1,vtorso,0,false)
												hiteffect("blood",vtorso)
											end
										else
											if not overdrive then
												local creator = new("ObjectValue")
												creator.Name = "creator"
												creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
												creator.Parent = vhum
												debris:AddItem(creator, 2)
												vhum:TakeDamage(75)
											else
												local creator = new("ObjectValue")
												creator.Name = "creator"
												creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
												creator.Parent = vhum
												debris:AddItem(creator, 2)
												vhum:TakeDamage(150)
											end
										end
									end	
								end
							end))
						end
					end)
					fstarp.Enabled = false
					fstars.Enabled = false
					fire.Enabled = false
					local tween2 = tweens:Create(fstar, TweenInfo.new(2), {Transparency = 1})
					tween2:Play()
					tween2.Completed:Connect(function() 
						fstarl.Enabled = false
						task.wait(0.1)
						fstar:Destroy()
					end)
					task.wait(0.888)
				else
					task.wait(0.115)
					frame = 3
					task.wait(0.115)
			end
			else
				if game.PlaceId == 11510416200 or game.PlaceId == 126783576555525 or game.PlaceId == 89201052571047 or game.PlaceId == 79868761121850 then
					local randoml = random(0,2)
					if randoml == 0 then
						chatter("G.I.G.A. Ring!!")
						if not dresst then
							if voices then
								sound(109239418812415,6.66,1.2,head,68.35,false,true,2.531)
							end
						else
							if voices then
								sound(109239418812415,6.66,1.45,head,68.35,false,true,2.094)
							end
						end
					elseif randoml == 1 then
						chatter("TAKE THIS!!")
						if not dresst then
							if voices then
								sound(109239418812415,6.66,1.2,head,71.375,false,true,1.908)
							end
						else
							if voices then
								sound(109239418812415,6.66,1.45,head,71.375,false,true,1.579)
							end
						end
					else
						chatter("ALL YOUR YAPPING IS TRASH!!")
						if not dresst then
							if voices then
								sound(109239418812415,6.66,1.15,head,73.675,false,true,2.226)
							end
						else
							if voices then
								sound(109239418812415,6.66,1.55,head,73.675,false,true,1.724)
							end
						end
					end
				else
					chatter("I'll blast ya away!")
					if voices then
						if not dresst then
							sound(122303409043236,2.5,1.05,head,0,false)
						else
							sound(122303409043236,2.5,1.35,head,0,false)
						end
					end
				end
				anim = "gigar"
				frame = 1
				WeaponTrail.Enabled = true
				local fball = new("Part")
				local fballl = new("PointLight")
				local fballp = new("ParticleEmitter")
				local fballp2 = new("ParticleEmitter")
				local fballw = new("Weld")
				fball.Name = "Fireball"
				fball.Parent = script
				fball.Transparency = 1
				fball.Size = vect3(1, 1, 1)
				fball.CanCollide = false
				fball.CanTouch = false
				fball.Locked = true
				fballl.Name = "Light"
				fballl.Parent = fball
				fballl.Color = color(1, 0.654902, 0.235294)
				fballl.Shadows = true
				fballp.Name = "Fire2"
				fballp.Parent = fball
				fballp.Speed = NumberRange.new(1.5, 1.5)
				fballp.Rotation = NumberRange.new(-180, 180)
				fballp.Color = ColorSequence.new(color(1, 0.980392, 0.364706),color(1, 0.0117647, 0.0117647))
				fballp.LightEmission = 1
				fballp.Texture = "http://www.roblox.com/asset/?id=http://www.roblox.com/fire-main-item?id=241922889"
				fballp.Transparency = NumberSequence.new(1,0.3687499761581421,0.05624997615814209,0.037499964237213135,0.13749998807907104,0.36250001192092896,0.65625,1)
				fballp.ZOffset = 1
				fballp.Size = NumberSequence.new(1.499999761581421,0.37499964237213135)
				fballp.Acceleration = vect3(0, 15, 0)
				fballp.Lifetime = NumberRange.new(0.30000001192092896, 0.550000011920929)
				fballp.Rate = 125
				fballp.RotSpeed = NumberRange.new(-90, 90)
				fballp.SpreadAngle = vect2(180, 180)
				fballp.VelocitySpread = 180
				fballp2.Name = "Fire1"
				fballp2.Parent = fball
				fballp2.Speed = NumberRange.new(0, 0)
				fballp2.Rotation = NumberRange.new(-180, 180)
				fballp2.Color = ColorSequence.new(color(1, 0.564706, 0.12549),color(0.984314, 0, 0),color(0.976471, 0, 0))
				fballp2.LightEmission = 0.5
				fballp2.Texture = "http://www.roblox.com/asset/?id=37332909"
				fballp2.Transparency = NumberSequence.new(1,0.768750011920929,0.59375,0.41874998807907104,0.28749996423721313,0.28125,0.34999996423721313,0.5499999523162842,1)
				fballp2.ZOffset = 1
				fballp2.Size = NumberSequence.new(3.040935516357422,0.7499998807907104)
				fballp2.Acceleration = vect3(0, 2.5, 0)
				fballp2.Lifetime = NumberRange.new(0.25, 0.44999998807907104)
				fballp2.Rate = 150
				fballp2.RotSpeed = NumberRange.new(-180, 180)
				fballp2.SpreadAngle = vect2(180, 180)
				fballp2.VelocitySpread = 180
				fballw.Parent = fball
				fballw.C0 = cframe(0, 1, 0)
				fballw.Part0 = fball
				fballw.Part1 = la
				task.wait(0.45)
				frame = 2
				task.wait(0.05)
				sound(107784188693056,3,1,Weapon,0,false)
				frame = 4
				task.wait(0.05)
				fballw:Destroy()
				fballl.Enabled = false
				fball.Anchored = true
				fballp.Enabled = false
				fballp2.Enabled = false
				debris:AddItem(fball,2)
				frame = 3
				local mul = 1
				local exp = new("Part")
				exp.Parent = script
				exp.Size = vect3(0.001,0.001,0.001)
				exp.Locked = true
				exp.CanCollide = false
				exp.Anchored = true
				exp.CFrame =  root.CFrame * cframe(0,0,-2.5)
				local boom = new("ParticleEmitter")
				boom.Name = "Explosion"
				boom.Parent = exp
				boom.Speed = NumberRange.new(0, 2)
				boom.Rotation = NumberRange.new(-180, 180)
				boom.Color = ColorSequence.new(color(1, 0.498039, 0.160784),color(1, 0.498039, 0.160784))
				boom.LightEmission = 0.4000000059604645
				boom.Texture = "rbxassetid://15194500627"
				boom.Transparency = NumberSequence.new(0,0,1)
				boom.ZOffset = 1
				boom.Size = NumberSequence.new(15,25)
				boom.Brightness = 5
				boom.Shape = Enum.ParticleEmitterShape.Sphere
				boom.Drag = 1
				boom.Lifetime = NumberRange.new(0.800000011920929, 1.5)
				boom.Orientation = "FacingCamera"
				boom.Squash = NumberSequence.new(0,0,0)
				boom.Transparency = NumberSequence.new(0,0.266,1)
				boom.EmissionDirection = "Top"
				boom.Rate = 20
				boom.ShapeInOut = "Outward"
				boom.ShapePartial = 1
				boom.ShapeStyle = "Volume"
				boom.FlipbookLayout = "Grid8x8"
				boom.FlipbookMode = "OneShot"
				local boom2 = new("Explosion")
				boom2.Parent = workspace
				boom2.Position = exp.Position
				boom2.BlastRadius = 10
				boom2.BlastPressure = 0
				spawn(function()
					sound2(88378838573475,5,1,exp,0.015)
					task.wait(0.065)
					boom.Enabled = false
					debris:AddItem(exp,1.6)
				end)
				spawn(function()
					sound2(6892640563,3,1,fball,0,false)
					local gr = new("Part")
					local grm = new("SpecialMesh")
					local gr0 = new("Part")
					local grm0 = new("SpecialMesh")
					local grw = new("Weld")
					local gr1 = new("Part")
					local grm1 = new("SpecialMesh")
					local grw0 = new("Weld")
					gr.Name = "Ring of Fire"
					gr.Parent = script
					gr.Size = vect3()
					gr.CanTouch = false
					gr.Anchored = true
					gr.CanCollide = false
					gr.Locked = true
					grm.Parent = gr
					grm.MeshId = "http://www.roblox.com/asset/?id=173770780"
					grm.Scale = vect3(1.5, 1.5, 1.5)
					grm.TextureId = "http://www.roblox.com/asset/?id=173770840"
					grm.MeshType = Enum.MeshType.FileMesh
					gr0.Name = "Handle"
					gr0.Parent = gr
					gr0.Size = vect3()
					gr0.CanTouch = false
					gr0.Anchored = false
					gr0.CanCollide = false
					gr0.Locked = true
					grm0.Parent = gr0
					grm0.MeshId = "http://www.roblox.com/asset/?id=11112101"
					grm0.Scale = Vector3.new(3, 3, 3)
					grm0.TextureId = "http://www.roblox.com/asset/?id=17961433"
					grm0.MeshType = Enum.MeshType.FileMesh
					grw.Parent = gr0
					grw.C0 = cframe(0, 0.25, 0, 1, -0, 0, 0, 1, 0, -0, 0, 1)
					grw.Part0 = gr0
					grw.Part1 = gr
					gr1.Name = "Fire"
					gr1.Parent = gr
					gr1.Size = vect3()
					gr1.CanTouch = false
					gr1.Anchored = false
					gr1.CanCollide = false
					gr1.Locked = true
					grm1.Parent = gr1
					grm1.MeshId = "http://www.roblox.com/asset/?id=25212400"
					grm1.TextureId = "http://www.roblox.com/asset/?id=41988084"
					grm1.MeshType = Enum.MeshType.FileMesh
					grw0.Parent = gr1
					grw0.C0 = cframe(0, -0.75, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
					grw0.Part0 = gr1
					grw0.Part1 = gr
					gr.CFrame = root.CFrame * cframe(0,2,0) * angles(rad(-90),0,rad(180))
					spawn(function()
						local pospart = new("Part")
						pospart.Name = "PosPart"
						pospart.Parent = script
						pospart.CFrame = root.CFrame * cframe(0,0,-4.5)
						pospart.Size = vect3()
						pospart.Anchored = true
						pospart.CanTouch = false
						pospart.CanCollide = false
						pospart.Locked = true
						pospart.Transparency = 1
						for i = 1,30 do
							pospart.CFrame = pospart.CFrame * cframe(0,0,-1)
							if i == 30 then
								magnitudedamage(6.66,"boom", 0, 5*mul, 129916536670903, 4.5, 1, pospart,true,"burn","ring2")
							else
								magnitudedamage(2.5,"sphere", 0, 5*mul, 138752442741376, 4.5, 1, pospart,true,"normal","ring")
							end
							task.wait(0.015)
						end
						pospart:Destroy()
					end)
					while gr ~= nil do
						mul = mul + 0.075
						if gr.Transparency >= 1 then
							if gr == nil then
								break
							end
							gr:Destroy()
							gr = nil
						end
						if gr == nil then
							break
						else
							gr.CFrame = gr.CFrame * CFrame.fromEulerAnglesXYZ(0,0.075,0)
							gr.CFrame = gr.CFrame * cframe(0,-0.5,0)
							grm.Scale = grm.Scale + vect3(0.25,0,0.25)
							grm0.Scale = grm0.Scale + vect3(0.75,0.75,0.75)
							grm1.Scale = grm1.Scale + vect3(0.25,0.25,0.25)
							grm1.Offset = grm1.Offset + vect3(0,0.25,0)
							gr0.Transparency = gr0.Transparency + 0.015
							gr.Transparency = gr.Transparency + 0.015
							gr1.Transparency = gr1.Transparency + 0.015
						end
						task.wait(0.005)
					end
				end)
				task.wait(0.666)
				WeaponTrail.Enabled = false
			end
			hum.WalkSpeed = ogws
			hum.JumpPower = ogjp
			hum.JumpHeight = ogjh
			attack = false
		end
	end;
	["turni"] = function()
		if not (attack or guarding or hurt or hum.Sit == true or sitting or lying) then
			keycombo = ""
			if player.UserId ~= 50203523 then if mp < 400 then return end else if mp < (400/10) then return end end
			if player.UserId == 50203523 then
				mp = mp - (400/10)
			else
				mp = mp - 400
			end
			attack = true
			hum.WalkSpeed = 0
			hum.JumpPower = 0
			hum.JumpHeight = 0
			anim = "mturn"
			frame = 1
			super()
			local targets = {}
			local doingfg = false
			local hastarget = false
			local toru = nil
			task.wait(1.5)
			frame = 2
			sound2(3264793,1.15,1,la,0,false)
			spawn(function()
				for i = 1,20 do
					task.wait(0.025)
					local firepart = new("Part")
					firepart.Parent = script
					firepart.Size = vect3(1.5,1.5,1.5)
					firepart.BottomSurface = Enum.SurfaceType.Smooth
					firepart.Anchored = true
					firepart.CanCollide = false
					firepart.CanTouch = false
					firepart.BrickColor = bc("Gold")
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
			part.CFrame = root.CFrame * cframe(0,0,-30)
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
			fatalr.BrickColor = bc("Gold")
			fatalr.CanCollide = false
			fatalr.CanTouch = false
			fatalrm.Parent = fatalr
			fatalrm.MeshId = "http://www.roblox.com/asset/?id=3270017"
			fatalrm.Scale = vect3(5, 5, 3)
			fatalrm.MeshType = Enum.MeshType.FileMesh
			fatalrs.Name = "FatalSphere"
			fatalrs.BrickColor = bc("Gold")
			fatalrs.Parent = script
			fatalrs.Size = vect3(0.8, 0.8, 0.8)
			fatalrs.Anchored = true
			fatalrs.CanCollide = false
			fatalrs.CanTouch = false
			fatalrsm.Parent = fatalrs
			fatalrsm.MeshType = Enum.MeshType.Sphere
			fatalrs2.Name = "FatalSphere"
			fatalrs2.BrickColor = bc("Gold")
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
			fatalrs1.BrickColor = bc("Gold")
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
				for i = 1,5 do
					local firepart = new("Part")
					firepart.Parent = workspace.Terrain
					firepart.Size = vect3(0.001,0.001,0.001)
					firepart.BottomSurface = Enum.SurfaceType.Smooth
					firepart.Anchored = true
					firepart.CanCollide = false
					firepart.CanTouch = false
					firepart.BrickColor = bc("Gold")
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
			gpart.CFrame = root.CFrame * cframe(0,0,-30)
			for i,v in pairs(workspace:GetDescendants()) do
				if v:FindFirstChildOfClass("Humanoid") and v ~= char then
					local vhum = v:FindFirstChildOfClass("Humanoid")
					local vtorso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso") or v:FindFirstChild("HumanoidRootPart")
					if vtorso then
						local vdistance = (vtorso.Position - part.CFrame*cframe(0,0,-1.5).p).magnitude
						if vdistance <= 15 and vhum.Health > 0 then
							doingfg = true
							hastarget = true
							toru = vtorso
							table.insert(targets, v)
							local sparkles = new("Sparkles")
							sparkles.Parent = vtorso
							sparkles.Name = "MTurnSparkles"
							sparkles.SparkleColor = color(1, 0.835294, 0)
							hiteffect("sphere",vtorso)
							sound(386946017,2,1,vtorso,0,false)
							sound(919429799,2,1,vtorso,22.25,false)
							local bpos = new("BodyVelocity")
							bpos.Name = "MTurnHitBy"
							bpos.Parent = vtorso
							bpos.MaxForce = vect3(math.huge,math.huge,math.huge)
							bpos.Velocity = vtorso.CFrame.lookVector * 0
							local highlight = new("Highlight")
							highlight.Parent = v
							highlight.Name = "MTurnHighlight"
							highlight.OutlineTransparency = 1
							highlight.FillTransparency = 1
							highlight.FillColor = color(1,1,1)
							highlight.OutlineColor = color(1,1,1)
							tweens:Create(highlight, TweenInfo.new(3.5), {FillTransparency = 0}):Play()
							tweens:Create(highlight, TweenInfo.new(3.5), {OutlineTransparency = 0}):Play()
							debris:AddItem(highlight,4.45)
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
									firepart.BrickColor = bc("Gold")
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
				spawn(function()
					while doingfg do
						task.wait(0.025)
						local firepart = new("Part")
						firepart.Parent = script
						firepart.Size = vect3(1.5,1.5,1.5)
						firepart.BottomSurface = Enum.SurfaceType.Smooth
						firepart.Anchored = true
						firepart.CanCollide = false
						firepart.CanTouch = false
						firepart.BrickColor = bc("Gold")
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
				task.wait(3.75)
				doingfg = false
				anim = "judas"
				frame = 1
				task.wait(0.45)
				spawn(function()
					for i = 1, #targets do
						coroutine.resume(coroutine.create(function()
							local v = targets[i]
							local vh = v:FindFirstChild("Head")
							local vhum = v:FindFirstChildOfClass("Humanoid")
							local vtorso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso") or v:FindFirstChild("HumanoidRootPart")
							if v ~= nil then
								if vtorso:FindFirstChild("MTurnSparkles") then 
									local spark = vtorso:FindFirstChild("MTurnSparkles")
									spark.Enabled = false 
									debris:AddItem(spark,2) 
								end
								local odn = new("StringValue")
								odn.Parent = v
								odn.Name = "MTurnDisplayName"
								if vhum.DisplayName ~= "" then
									odn.Value = vhum.DisplayName
								else
									odn.Value = ""
								end
								local ignore = {
									"Head",
									"Left Arm",
									"Right Arm",
									"Left Leg",
									"Right Leg",
									"Torso",
									"LeftFoot",
									"LeftHand",
									"LeftLowerArm",
									"LeftUpperArm",
									"LeftLowerLeg",
									"LeftUpperLeg",
									"LowerTorso",
									"UpperTorso",
									"RightFoot",
									"RightHand",
									"RightLowerArm",
									"RightLowerLeg",
									"RightUpperArm",
									"RightUpperLeg",
									"UpperTorso",
								}
								for i,v in pairs(v:GetDescendants()) do
									if v:IsA("BasePart") then
										local cval = new("NumberValue")
										cval.Value = v.Transparency
										cval.Name = "MTurnTransparency"
										cval.Parent = v
										local cval = new("Color3Value")
										cval.Value = v.Color
										cval.Name = "MTurnColor"
										cval.Parent = v
									end
								end
								local cmeshfolder = new("Folder")
								cmeshfolder.Parent = v
								cmeshfolder.Name = "MTurnCMeshes"
								for i,v in pairs(v:GetDescendants()) do
									if v:IsA("CharacterMesh") then
										v.Parent = cmeshfolder
									end
								end
								for i,v in pairs(v:GetDescendants()) do
									if v:IsA("BillboardGui") then
										local cval = new("BoolValue")
										cval.Value = v.Enabled
										cval.Name = "MTurnBBG"
										cval.Parent = v
									end
								end
								for i,v in pairs(v:GetDescendants()) do
									if v:IsA("Shirt") then
										local cval = new("StringValue")
										cval.Value = v.ShirtTemplate
										cval.Name = "MTurnShirtId"
										cval.Parent = v
									end
								end
								for i,v in pairs(v:GetDescendants()) do
									if v:IsA("Pants") then
										local cval = new("StringValue")
										cval.Value = v.PantsTemplate
										cval.Name = "MTurnPantsId"
										cval.Parent = v
									end
								end
								for i,v in pairs(v:GetDescendants()) do
									if v:IsA("ShirtGraphic") then
										local cval = new("StringValue")
										cval.Value = v.Graphic
										cval.Name = "MTurnShirtGraphic"
										cval.Parent = v
									end
								end
								for i,v in pairs(vh:GetDescendants()) do
									if v:IsA("Decal") then
										local cval = new("StringValue")
										cval.Value = v.Texture
										cval.Name = "MTurnDecalId"
										cval.Parent = v
									end
								end
								for i,v in pairs(v:GetDescendants()) do
									if not table.find(ignore,v.Name) and v:IsA("BasePart") then
										v.Transparency = 1
									end
								end
								for i,v in pairs(v:GetDescendants()) do
									if v:IsA("BillboardGui") then
										v.Enabled = false
									end
								end
								local highlight = new("Highlight")
								highlight.Parent = v
								highlight.Name = "MTurnHighlight"
								highlight.OutlineTransparency = 0
								highlight.FillTransparency = 0
								highlight.FillColor = color(1,1,1)
								highlight.OutlineColor = color(1,1,1)
								tweens:Create(highlight, TweenInfo.new(1), {FillTransparency = 1}):Play()
								tweens:Create(highlight, TweenInfo.new(1), {OutlineTransparency = 1}):Play()
								debris:AddItem(highlight,1.15)
								local sphere = new("Part")
								sphere.Parent = script
								sphere.Name = "Transform"
								sphere.Shape = "Ball"
								sphere.Size = vect3(2.5,2.5,2.5)
								sphere.Transparency = 0
								sphere.BrickColor = bc("Institutional white")
								sphere.Material = "Neon"
								sphere.CanCollide = false
								sphere.Anchored = true
								sphere.CFrame = vtorso.CFrame
								local tween = tweens:Create(sphere, TweenInfo.new(0.75), {Size = vect3(15,15,15), Transparency = 1})
								tween:Play()
								tween.Completed:Connect(function() sphere:Destroy() end)
								sound(642336941,3,1,vtorso,0,false)
								local vshirt = v:FindFirstChildOfClass("Shirt")
								local vpants = v:FindFirstChildOfClass("Pants")
								local vtshirt = v:FindFirstChildOfClass("ShirtGraphic")
								if vtshirt then vtshirt.Graphic = "" end --We don't need T-Shirts, eh?
								if vshirt == nil then
									vshirt = new("Shirt",v)
									vshirt.Name = "Shirt"
								end
								if vpants == nil then
									vpants = new("Pants",v)
									vpants.Name = "Pants"
								end
								local vhair = new("Part",v)
								vhair.Name = "MTurnCostumeHair"
								vhair.Material = "Neon"
								vhair.Transparency = 0
								vhair.CanCollide = false
								vhair.Locked = true
								vhair.CanTouch = false
								vhair.Massless = true
								vhair.Size = vect3(0.001,0.001,0.001)
								local vhairm = new("SpecialMesh",vhair)
								vhairm.MeshType = "FileMesh"
								vhairm.Scale = vect3(1,1,1)
								local vhairw =new("Weld",vhair)
								vhairw.Part0 = vhair
								vhairw.Part1 = vh
								arm1 = new("CharacterMesh", v)
								arm1.Name = "Arm1"
								arm1.BodyPart = "LeftArm"
								arm1.MeshId = "27111419"
								arm2 = new("CharacterMesh",v)
								arm2.Name = "Arm2"
								arm2.BodyPart = "RightArm"
								arm2.MeshId = "27111864"
								leg1 = new("CharacterMesh",v)
								leg1.Name = "Leg1"
								leg1.BodyPart = "LeftLeg"
								leg1.MeshId = "27111857"
								leg2 = new("CharacterMesh", v)
								leg2.Name = "Leg2"
								leg2.BodyPart = "RightLeg"
								leg2.MeshId = "27111882"
								torso2 = new("CharacterMesh",v)
								torso2.Name = "Toruso"
								torso2.BodyPart = "Torso"
								torso2.MeshId = "27111894"
								local randomchar = random(0, 3)
								local name = ""
								if randomchar == 0 then
									name = "Ibuki Mioda"
								elseif randomchar == 1 then
									name = "Yuuki Terumi"
								elseif randomchar == 2 then
									name = "Misaki Tokusatsu"
								else
									name = "Tomohiko Iwamoto"
								end
								vhum.DisplayName = name
								local mcos = new("StringValue")
								mcos.Parent = v
								mcos.Name = "MTurnCostumeName"
								mcos.Value = name
								if randomchar == 0 then
									vhairm.MeshId = "rbxassetid://14872795345"
									vhairm.TextureId = "rbxassetid://14861763072"
									vhairw.C0 = cframe(0, 0.5, -0.3)
									vshirt.ShirtTemplate = "rbxassetid://13722237378"
									vpants.PantsTemplate = "rbxassetid://13722222119"
									for i,v in pairs(vh:GetDescendants()) do
										if v:IsA("Decal") then
											v.Texture = "rbxassetid://6782361132"
										end
									end
								elseif randomchar == 1 then
									vhairm.MeshId = "rbxassetid://16952952"
									vhairm.TextureId = "rbxassetid://26884682"
									vhairm.Scale = vect3(1.2,1,1)
									vhairw.C0 = cframe(0, -0.15, -0.15)
									vshirt.ShirtTemplate = "rbxassetid://18274969674"
									vpants.PantsTemplate = "rbxassetid://18274986143"
									for i,v in pairs(vh:GetDescendants()) do
										if v:IsA("Decal") then
											v.Texture = "rbxassetid://117259643514839"
										end
									end
								elseif randomchar == 2 then
									vhairm.MeshId = "rbxassetid://1389678629"
									vhairm.TextureId = "rbxassetid://1389678737"
									vhairm.Scale = vect3(0.050, 0.050, 0.050)
									vhairw.C0 = cframe(0, 1.4, -0.2)*CFrame.fromEulerAnglesXYZ(0.1, 0, 0) 
									vshirt.ShirtTemplate = "rbxassetid://1177765208"
									vpants.PantsTemplate = "rbxassetid://587907973"
									for i,v in pairs(vh:GetDescendants()) do
										if v:IsA("Decal") then
											v.Texture = "rbxassetid://318927908"
										end
									end
								else
									vhairm.MeshId = "rbxassetid://724902976"
									vhairm.TextureId = "rbxassetid://610092640"
									vhairm.Scale = vect3(-0.75, 0.73, -0.7)
									vhairw.C0 = cframe(0, 0, -0.25)
									vshirt.ShirtTemplate = "rbxassetid://132242594729542"
									vpants.PantsTemplate = "rbxassetid://77912777140138"
									for i,v in pairs(vh:GetDescendants()) do
										if v:IsA("Decal") then
											v.Texture = "rbxassetid://114820106"
										end
									end
								end
							end
						end))
					end
				end)
				task.wait(2.5)
				anim = "idle"
				task.wait(0.75)
				spawn(function()
					for i = 1, #targets do
						coroutine.resume(coroutine.create(function()
							local v = targets[i]
							local vh = v:FindFirstChild("Head")
							if v ~= nil then
								if v:FindFirstChild("MTurnCostumeName") then
									if v:FindFirstChild("MTurnCostumeName").Value == "Ibuki Mioda" then
										vchatter(v,"Ibuki Mioda!!!")
										sound(6170999817,3,1,vh,0,false)
									elseif v:FindFirstChild("MTurnCostumeName").Value == "Yuuki Terumi" then
										local randomsfx = random(0,4)
										if randomsfx == 0 then
											vchatter(v,"Seriously wasting my time.")
											sound(159882609,3,1,vh,0,false)
										elseif randomsfx == 1 then
											vchatter(v,"Serious?")
											sound(159882612,3,1,vh,0,false)
										elseif randomsfx == 2 then
											vchatter(v,"Now you're dead.")
											sound(159882441,3,1,vh,0,false)	
										elseif randomsfx == 3 then
											vchatter(v,"Hehehehe.......")
											sound(159882430,3,1,vh,0,false)	
										else
											vchatter(v,"This is getting fun.")
											sound(159972582,3,1,vh,0,false)	
										end
									elseif v:FindFirstChild("MTurnCostumeName").Value == "Misaki Tokusatsu" then
										local randomsfx = random(0,3)
										if randomsfx == 0 then
											vchatter(v,"KAWAII!!!!")
											sound(924357545,0.045,1,vh,0,false)
										elseif randomsfx == 1 then
											vchatter(v,"Wow!!!!")
											sound(548341968,3,1,vh,0,false)
										elseif randomsfx == 2 then
											vchatter(v,"*laughing*")
											sound(82719020266339,3,1,vh,0,false)
										else
											vchatter(v,"Waaaahhhhh!!!!")
											sound(18129409227,3,1,vh,0,false)
										end
									elseif v:FindFirstChild("MTurnCostumeName").Value == "Tomohiko Iwamoto" then
										local randomsfx = random(0,9)
										if randomsfx == 0 then
											vchatter(v,"It's terrible.")
											sound(76013972865698,1,1,vh,0,false)
										elseif randomsfx == 1 then
											vchatter(v,"I'm feeling good today!")
											sound(101334805298100,3,1,vh,0,false)
										elseif randomsfx == 2 then
											vchatter(v,"*unintelligible japanese*")
											sound(128236220648072,3,1,vh,0,false)
										elseif randomsfx == 3 then
											vchatter(v,"Yaaaaaaaaa~!")
											sound(119413520365631,3,1,vh,0,false)
										elseif randomsfx == 4 then
											vchatter(v,"*unintelligible japanese*")
											sound(125528656039780,3,1,vh,0,false)
										elseif randomsfx == 5 then
											vchatter(v,"Super Pampampan Bomb.")
											sound(78826345828166,3,1,vh,0,false)
										elseif randomsfx == 6 then
											vchatter(v,"Eh, that's a lie...")
											sound(110910980941390,3,1,vh,0,false)
										else
											vchatter(v,"What are the Four Heavenly Kings? What are the Four Heavenly Kings?")
											sound(103109775583769,3,1,vh,0,false)
										end
									end
								end
							end
						end))
					end
				end)
				task.wait(2)	
				chatter("Ugh...")
				if game.PlaceId == 11510416200 or game.PlaceId == 126783576555525 or game.PlaceId == 89201052571047 or game.PlaceId == 79868761121850 then
					if voices then
						if not dresst then
							sound(109239418812415,5,1.2,head,6.1,false,true,0.604)
						else
							sound(109239418812415,5,1.6,head,6.1,false,true,0.453)
						end
					end
				end
				anim = "facepalm"
				frame = 1
				task.wait(2)
				anim = "fiveseven"
				frame = 1
				local pistol = makegun()
				task.wait(1)
				frame = 2
				sound(158037267,2,1,la,0,false)
				task.wait(0.575)
				sound(1583819337,2.5,random(90,110)/100,pistol,0.09,false)
				local gshot = new("Part")
				local gshotm = new("BlockMesh")
				local gshotl = new("PointLight")
				local gshotp = new("ParticleEmitter")
				local gshotw = new("Weld")
				gshot.Name = "Main"
				gshot.Parent = pistol
				gshot.Transparency = 1
				gshot.Size = vect3(0.294, 0.294, 0.299)
				gshot.CanCollide = false
				gshot.CanTouch = false
				gshot.Locked = true
				gshotm.Parent = gshot
				gshotm.Scale = vect3(0.218, 0.164, 0.082)
				gshotl.Name = "FlashFX"
				gshotl.Parent = gshot
				gshotl.Color = color(1, 1, 0)
				gshotl.Range = 6
				gshotl.Brightness = 10
				gshotl.Shadows = true
				gshotp.Name = "FX"
				gshotp.Parent = gshot
				gshotp.Speed = NumberRange.new(0, 0)
				gshotp.Rotation = NumberRange.new(-360, 360)
				gshotp.LightEmission = 0.5
				gshotp.Texture = "http://www.roblox.com/asset/?id=233113663"
				gshotp.Size = NumberSequence.new(2,2)
				gshotp.Lifetime = NumberRange.new(0.07500000298023224, 0.07500000298023224)
				gshotp.LockedToPart = true
				gshotp.Rate = 10
				gshotp.RotSpeed = NumberRange.new(-360, 360)
				gshotw.Parent = gshot
				gshotw.C0 = cframe(-1, -0.5, 0, 1, -0, 0, 0, 1, 0, -0, 0, 1)
				gshotw.Part0 = gshot
				gshotw.Part1 = pistol
				local bshell = new("Part")
				local bsc = {"New Yeller","Bright yellow","Gold"}
				bshell.Parent = script
				bshell.Name = "BulletShell"
				bshell.BrickColor = bc(bsc[random(#bsc)])
				bshell.CanCollide = true
				bshell.Locked = true
				bshell.CanTouch = false
				bshell.Size = vect3(0.001,0.001,0.001)
				bshell.CFrame = pistol.CFrame * cframe(random(-1,1),random(-1,1),random(-1,1))
				bshell.Velocity = vect3(random(-30,30),random(-30,30),random(-30,30))
				local shellm = new("SpecialMesh")
				shellm.Parent = bshell
				shellm.MeshId = "rbxassetid://1032136926"
				shellm.Scale = vect3(0.25, 0.25, 0.25)
				spawn(function()
					task.wait(5)
					local tween = tweens:Create(bshell, TweenInfo.new(2.5), {Transparency = 1})
					tween:Play()
					tween.Completed:Connect(function() bshell:Destroy() end)
				end)
				--darn it I hate stealing code
				local hi,posu = castproperyray(gshot.Position, toru.Position, 1000, char)
				local gtrail = new("Part")
				gtrail.formFactor = 3
				gtrail.Reflectance = 0
				gtrail.Transparency = 0.5
				gtrail.CanCollide = false
				gtrail.Locked = true
				gtrail.Anchored = true
				gtrail.BrickColor = bc("New Yeller")
				gtrail.Name = "Trail"
				gtrail.Size = vect3(0.001,0.001,0.001)
				gtrail.Position = torso.Position
				gtrail.Material = "Neon"
				gtrail:BreakJoints()
				gtrail.Parent = pistol
				local meshu = new("CylinderMesh",gtrail)
				local disu = (gshot.Position - posu).Magnitude
				gtrail.Size = vect3(0.25,disu,0.25)
				gtrail.CFrame = cframe(gshot.Position, posu) * cframe(0, 0, -disu/2) * angles(rad(90),rad(0),rad(0))
				local tween = tweens:Create(gtrail, TweenInfo.new(0.45), {Transparency = 1})
				tween:Play()
				tween.Completed:Connect(function() gtrail:Destroy() end)
				spawn(function()
					for i = 1, #targets do
						coroutine.resume(coroutine.create(function()
							local v = targets[i]
							local vh = v:FindFirstChild("Head")
							local vhum = v:FindFirstChildOfClass("Humanoid")
							local vtorso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso") or v:FindFirstChild("HumanoidRootPart")
							if v ~= nil then
								if v:FindFirstChild("MTurnCostumeName") then
									if v:FindFirstChild("MTurnCostumeName").Value == "Yuuki Terumi" then
										local randomsfx = random(0,3)
										if randomsfx == 0 then
											sound2(159882404,3,1,vh,0,false)
										elseif randomsfx == 1 then
											sound2(159882410,3,1,vh,0,false)
										elseif randomsfx == 2 then
											sound2(159972491,3,1,vh,0,false)	
										else
											sound2(159972468,3,1,vh,0,false)	
										end
									elseif v:FindFirstChild("MTurnCostumeName").Value == "Misaki Tokusatsu" then
										sound2(127342258358185,3,1,vh,0,false)
									elseif v:FindFirstChild("MTurnCostumeName").Value == "Tomohiko Iwamoto" then
										local randomsfx = random(0,3)
										if randomsfx == 0 then
											sound2(81409274334077,3,1,vh,0,false)
										else
											sound2(122169625314241,3,1,vh,0,false)
										end
									end
									v:FindFirstChild("MTurnCostumeName"):Destroy()
								end
								if vtorso:FindFirstChild("MTurnHitBy") then vtorso:FindFirstChild("MTurnHitBy"):Destroy() end
								if v:FindFirstChild("MTurnCostumeHair") then v:FindFirstChild("MTurnCostumeHair"):Destroy() end
								if v:FindFirstChild("MTurnDisplayName") then 
									vhum.DisplayName = v:FindFirstChild("MTurnDisplayName").Value
									v:FindFirstChild("MTurnDisplayName"):Destroy() 
								end
								local vshirt = v:FindFirstChildOfClass("Shirt")
								local vpants = v:FindFirstChildOfClass("Pants")
								local vtshirt = v:FindFirstChildOfClass("ShirtGraphic")
								if vtshirt then vtshirt.Graphic = "" end --We don't need T-Shirts, eh?
								if vshirt == nil then
									vshirt = new("Shirt",v)
									vshirt.Name = "Shirt"
								end
								if vpants == nil then
									vpants = new("Pants",v)
									vpants.Name = "Pants"
								end
								for i,v in pairs(v:GetChildren()) do
									if v:IsA("CharacterMesh") then
										v:Destroy()
									end
								end
								vshirt.ShirtTemplate = ""
								vpants.PantsTemplate = ""
								hiteffect("boom",vtorso)
								hiteffect("burn",vtorso)
								local highlight = new("Highlight")
								highlight.Parent = v
								highlight.Name = "MTurnHighlight"
								highlight.OutlineTransparency = 0
								highlight.FillTransparency = 0
								highlight.FillColor = color(1,1,1)
								highlight.OutlineColor = color(1,1,1)
								tweens:Create(highlight, TweenInfo.new(1), {FillTransparency = 1}):Play()
								tweens:Create(highlight, TweenInfo.new(1), {OutlineTransparency = 1}):Play()
								debris:AddItem(highlight,1.15)
								local sphere = new("Part")
								sphere.Parent = script
								sphere.Name = "Transform"
								sphere.Shape = "Ball"
								sphere.Size = vect3(2.5,2.5,2.5)
								sphere.Transparency = 0
								sphere.BrickColor = bc("Institutional white")
								sphere.Material = "Neon"
								sphere.CanCollide = false
								sphere.Anchored = true
								sphere.CFrame = vtorso.CFrame
								sound(642336941,3,1,vtorso,0,false)
								local tween = tweens:Create(sphere, TweenInfo.new(0.75), {Size = vect3(15,15,15), Transparency = 1})
								tween:Play()
								tween.Completed:Connect(function() sphere:Destroy() end)
								if not overdrive then
									local creator = new("ObjectValue")
									creator.Name = "creator"
									creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
									creator.Parent = vhum
									debris:AddItem(creator, 2)
									vhum:TakeDamage(60)
								else
									local creator = new("ObjectValue")
									creator.Name = "creator"
									creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
									creator.Parent = vhum
									debris:AddItem(creator, 2)
									vhum:TakeDamage(120)
								end
								for i,ve in pairs(v:GetDescendants()) do
									if ve:IsA("NumberValue") and ve.Name == "MTurnTransparency" then
										ve.Parent.Transparency = ve.Value
										ve:Destroy()
									end
								end
								if v:FindFirstChild("MTurnCMeshes") then 
									for i,ve in pairs(v:FindFirstChild("MTurnCMeshes"):GetDescendants()) do
										if ve:IsA("CharacterMesh") then
											ve.Parent = v
										end
									end
									v:FindFirstChild("MTurnCMeshes"):Destroy() 
								end
								for i,ve in pairs(v:GetDescendants()) do
									if ve:IsA("BoolValue") and ve.Name == "MTurnBBG" then
										ve.Parent.Enabled = ve.Value
										ve:Destroy()
									end
								end
								for i,ve in pairs(v:GetDescendants()) do
									if ve:IsA("Color3Value") and ve.Name == "MTurnColor" then
										ve.Parent.Color = ve.Value
										ve:Destroy()
									end
								end
								for i,ve in pairs(v:GetDescendants()) do
									if ve:IsA("StringValue") and ve.Name == "MTurnShirtId" then
										ve.Parent.ShirtTemplate = ve.Value
										ve:Destroy()
									end
								end
								for i,ve in pairs(v:GetDescendants()) do
									if ve:IsA("StringValue") and ve.Name == "MTurnPantsId" then
										ve.Parent.PantsTemplate = ve.Value
										ve:Destroy()
									end
								end
								for i,ve in pairs(v:GetDescendants()) do
									if ve:IsA("StringValue") and ve.Name == "MTurnShirtGraphic" then
										ve.Parent.Graphic = ve.Value
										ve:Destroy()
									end
								end
								for i,ve in pairs(v:GetDescendants()) do
									if ve:IsA("StringValue") and ve.Name == "MTurnDecalId" then
										ve.Parent.Texture = ve.Value
										ve:Destroy()
									end
								end
								vtorso.Velocity = root.CFrame.lookVector * 75 + root.CFrame.upVector * 75
								vhum.PlatformStand = true
								spawn(function() 
									task.wait(7.5)
									vhum.PlatformStand = false
								end)
							end
						end))
					end
				end)
				task.wait(0.25)
				gshot:Destroy()
				task.wait(0.75)
				frame = 3
				sound2(139012056448635,3.25,1,pistol,0,false)
				task.wait(0.15)
				pistol:Destroy()
			else
				task.wait(0.5)
			end
			hum.WalkSpeed = ogws
			hum.JumpPower = ogjp
			hum.JumpHeight = ogjh
			attack = false
		end
	end;
	["toko"] = function() 
		if not (attack or guarding or hurt or hum.Sit == true or sitting or lying) then
			keycombo = ""
			if player.UserId ~= 50203523 then if mp < 600 then return end else if mp < (600/10) then return end end
			if player.UserId == 50203523 then
				mp = mp - (600/10)
			else
				mp = mp - 600
			end
			attack = true
			hum.WalkSpeed = 0
			hum.JumpPower = 0
			hum.JumpHeight = 0
			if not sword then
				anim = "dust"
			else
				anim = "sdust"
			end
			frame = 1
			super()
			task.wait(1)
			local randomsound = random(0,9)
			if not dresst then
				if voices then
					if randomsound <= 2 then
						sound(4323235687,3,1.1,head,0,false)
					elseif randomsound >= 7 then
						sound(119764591428121,3,1.1,head,0,false)
					end
				end
			else
				if voices then
					if randomsound <= 2 then
						sound(4323235687,3,1.3,head,0,false)
					elseif randomsound >= 7 then
						sound(119764591428121,3,1.35,head,0,false)
					end
				end
			end
			task.wait(0.15)	
			sound(536642316,3,1,torso,0,false)
			frame = 2
			local tokohit = false
			local target = nil
			local tt = nil
			local thum = nil
			for i,v in pairs(workspace:GetDescendants()) do
				if v:FindFirstChildOfClass("Humanoid") and v ~= char then
					local vhum = v:FindFirstChildOfClass("Humanoid")
					local vtorso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso") or v:FindFirstChild("HumanoidRootPart")
					if vtorso then
						local vdistance = (vtorso.Position - root.CFrame*cframe(0,0,-1.5).p).magnitude
						if vdistance <= 6.66 and vhum.Health > 0 and not tokohit  then
							tokohit = true
							sound(386946017,2,1,vtorso,0,false)
							hiteffect("sphere",vtorso)
							target = v
							tt = vtorso
							thum = vhum
							vhum.PlatformStand = true
							if not overdrive then
								if vhum.Health > 7.4 then
									local creator = new("ObjectValue")
									creator.Name = "creator"
									creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
									creator.Parent = vhum
									debris:AddItem(creator, 2)
									vhum:TakeDamage(7.4)
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
							vtorso.CFrame = root.CFrame * cframe(0,0,-4.5) * angles(0,rad(180),0)
							local bpos = new("BodyPosition")
							bpos.Name = "TokoHitBy"
							bpos.Parent = vtorso
							bpos.MaxForce = vect3(39999,39999,39999)
							bpos.D = 1000
							bpos.Position = root.CFrame * cframe(0,75,-5).Position
						end
					end
				end
			end
			task.wait(0.45)
			frame = 3
			if tokohit then
				task.wait(0.175)
				sound(8956218288,3,1,torso,0,false)
				local jumppart = new("Part")
				jumppart.Parent = script
				jumppart.Transparency = 0
				jumppart.Size = vect3(0.001,0.001,0.001)
				jumppart.Anchored = true
				jumppart.BottomSurface = Enum.SurfaceType.Smooth
				jumppart.BrickColor = bc("White")
				jumppart.CanCollide = false
				jumppart.TopSurface = Enum.SurfaceType.Smooth
				jumppart.CFrame = root.CFrame * cframe(0,-1.5,0)
				local jump = new("ParticleEmitter")
				jump.Parent = jumppart
				jump.Speed = NumberRange.new(1, 1)
				jump.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
				jump.Rotation = NumberRange.new(-90, -90)
				jump.LightEmission = 1
				jump.Texture = "rbxassetid://13805841956"
				jump.Size = NumberSequence.new(10,10)
				jump.Brightness = 6
				jump.Lifetime = NumberRange.new(0.4000000059604645, 0.4000000059604645)
				jump.RotSpeed = NumberRange.new(-400, -400)
				jump.Drag = 0
				jump.Rotation = NumberRange.new(-90, -90)
				jump.Orientation = "VelocityPerpendicular"
				jump.EmissionDirection = "Top"
				jump.Rate = 20
				jump.ShapeInOut = "Outward"
				jump.Shape = "Box"
				jump.ShapeStyle = "Volume"
				jump.FlipbookLayout = "Grid4x4"
				jump.FlipbookMode = "OneShot"
				jump.LockedToPart = true
				spawn(function()
					task.wait(0.25)
					jump.Enabled = false
					debris:AddItem(jumppart,1.5)
				end)
				anim = "jump"
				local bposu = new("BodyPosition")
				bposu.Name = "TokoGo"
				bposu.Parent = root
				bposu.MaxForce = vect3(39999,39999,39999)
				bposu.D = 1150
				bposu.Position = root.CFrame * cframe(0,75,-0).Position
				task.wait(1.15)
				bposu:Destroy()
				if tt:FindFirstChild("TokoHitBy") then tt:FindFirstChild("TokoHitBy"):Destroy() end
				chatter("How about this?")
				if voices then
					if not dresst then
						sound(123109098383495,3,1.05,head,0,false)
					else
						sound(123109098383495,3,1.375,head,0,false)
					end
				end	
				anim = "toko"
				frame = 1
				sound(240429615,3,1,tt,0,false)
				hiteffect("grab",tt)
				local grabpart = new("Part")
				grabpart.Size = vect3(0.001,0.001,0.001)
				grabpart.Parent = target
				grabpart.Transparency = 1
				grabpart.CanCollide = false
				grabpart.CanTouch = false
				grabpart.Locked = true
				grabpart.CFrame = root.CFrame * cframe(0,0,-2.5) * angles(0,rad(180),0)
				grabpart.Anchored = false
				grabpart.CFrame = root.CFrame * cframe(0,0,-2.5) * angles(0,rad(180),0)
				local weld = new("Weld")
				weld.Parent = grabpart
				weld.Part0 = grabpart
				weld.Part1 = tt
				weld.C0 = weld.C0 * cframe(0, 0, 0)
				local Gweld = new("Weld")
				Gweld.Parent = la
				Gweld.Part0 = la
				Gweld.Name = "GRABWELD"
				Gweld.Part1 = grabpart
				Gweld.C0 = cframe(-0.75, -0.5, 0, 8.27919777e-08, 0.258819044, -0.965925813, -1.45850748e-07, -0.965925813, -0.258819044, -1, 1.62309135e-07, -4.22219593e-08)
				task.wait(0.1)
				frame = 2
				local bposa = new("BodyPosition")
				bposa.Name = "TokoGo"
				bposa.Parent = root
				bposa.MaxForce = vect3(39999,39999,39999)
				bposa.D = 750
				bposa.Position = root.CFrame * cframe(0,-75,-0).Position
				local hitfloor
				local asura = false
				spawn(function()
					task.wait(4.5)
					asura = true
				end)
				repeat 
					wait()
					hitfloor = raycast(root.Position, (cframe(root.Position, root.Position + vect3(0, -1, 0))).lookVector, 4+hum.HipHeight, char)
				until hitfloor or hum:GetState() == Enum.HumanoidStateType.Landed or asura
				grabpart:Destroy()
				Gweld:Destroy()
				bposa:Destroy()
				sound(168586621,2.5,0.5,tt,0,false)
				hiteffect("sphere",tt)
				tt.Anchored = true
				anchorm = true
				root.Anchored = true
				local sphere = new("Part")
				sphere.Parent = script
				sphere.Name = "BigHit"
				sphere.Shape = "Ball"
				sphere.Size = vect3(2.5,2.5,2.5)
				sphere.Transparency = 0
				sphere.BrickColor = bc("Institutional white")
				sphere.Material = "Neon"
				sphere.CanCollide = false
				sphere.Anchored = true
				sphere.CFrame = tt.CFrame
				local tween = tweens:Create(sphere, TweenInfo.new(1), {Size = vect3(15,15,15), Transparency = 1})
				tween:Play()
				tween.Completed:Connect(function() sphere:Destroy() end)
				if player.UserId == 50203523 then
					if instakill and random(0,10) == 0 then
						hiteffect("sphere",tt)
						tt.Anchored = true
						if not game:GetService("Players"):GetPlayerFromCharacter(target) then
							instantkill(target,true)
						end
						sound(17493997647,4.5,1,tt,0,false)
						sound(7441099080,2,1,tt,0,false)
						hiteffect("blood",tt)
						thum.PlatformStand = true
					else
						if not overdrive then
							local creator = new("ObjectValue")
							creator.Name = "creator"
							creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
							creator.Parent = thum
							debris:AddItem(creator, 2)
							thum:TakeDamage(45)
						else
							local creator = new("ObjectValue")
							creator.Name = "creator"
							creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
							creator.Parent = thum
							debris:AddItem(creator, 2)
							thum:TakeDamage(90)
						end
					end
				else
					if not overdrive then
						local creator = new("ObjectValue")
						creator.Name = "creator"
						creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
						creator.Parent = thum
						debris:AddItem(creator, 2)
						thum:TakeDamage(45)
					else
						local creator = new("ObjectValue")
						creator.Name = "creator"
						creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
						creator.Parent = thum
						debris:AddItem(creator, 2)
						thum:TakeDamage(90)
					end
				end
				spawn(function()
					task.wait(10)
					tt.Anchored = false
					thum.PlatformStand = false
				end)
				makeslam(tt,1)
				task.wait(2.5)
				root.Anchored = false
				anchorm = false
			else
				task.wait(0.15)
			end
			hum.WalkSpeed = ogws
			hum.JumpPower = ogjp
			hum.JumpHeight = ogjh
			attack = false
		end
	end;
	["sol badguy"] = function()
		if not (attack or guarding or hurt or hum.Sit == true or sitting or lying) then
			keycombo = ""
			if player.UserId ~= 50203523 then if not (hum.Health <= 1000 or overdrive) then return end end
			if player.UserId ~= 50203523 then if mp < 1000 then return end else if mp < (1000/10) then return end end
			if player.UserId == 50203523 then
				mp = mp - (1000/10)
			else
				mp = mp - 1000
			end
			attack = true
			hum.WalkSpeed = 0
			hum.JumpPower = 0
			hum.JumpHeight = 0
			super(2)
			anim = "finisher"
			frame = 2
			task.wait(1)
			sound(541909763,2,1,torso,0,false)
			frame = 1
			local solhit = false
			local targets = {}
			for i,v in pairs(workspace:GetDescendants()) do
				if v:FindFirstChildOfClass("Humanoid") and v ~= char then
					local vhum = v:FindFirstChildOfClass("Humanoid")
					local vtorso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso") or v:FindFirstChild("HumanoidRootPart")
					if vtorso then
						local vdistance = (vtorso.Position - root.CFrame*cframe(0,0,-1.5).p).magnitude
						if vdistance <= 5 and vhum.Health > 0  then
							solhit = true
							sound(386946017,2,1,vtorso,0,false)
							hiteffect("sphere",vtorso)
							table.insert(targets, v)
							if not overdrive then
								if vhum.Health > 7.4 then
									local creator = new("ObjectValue")
									creator.Name = "creator"
									creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
									creator.Parent = vhum
									debris:AddItem(creator, 2)
									vhum:TakeDamage(7.4)
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
							vtorso.CFrame = root.CFrame * cframe(0,0,-4.5) * angles(0,rad(180),0)
							local bpos = new("BodyPosition")
							bpos.Name = "SolBadguyHitBy"
							bpos.Parent = vtorso
							bpos.MaxForce = vect3(39999,39999,39999)
							bpos.D = 2000
							bpos.Position = root.CFrame * cframe(0,0,-20).Position
						end
					end
				end
			end
			task.wait(0.35)
			if solhit then
				if not sword then
					spawn(function()
						for i = 1, #targets do
							coroutine.resume(coroutine.create(function()
								local v = targets[i]
								local vtorso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso") or v:FindFirstChild("HumanoidRootPart")
								if v ~= nil then
									if vtorso:FindFirstChild("SolBadguyHitBy") then vtorso:FindFirstChild("SolBadguyHitBy").Position = root.CFrame * cframe(0,0,-14.5).Position end
								end
							end))
						end
					end)
					anim = "shapeshift"
					frame = 1
					local name = "Hakurei Reimu"
					local card = new("Part")
					local cardm = new("SpecialMesh")
					local cardw = new("Weld")
					local characterc = new("Part")
					local charg = new("SurfaceGui")
					local chari = new("ImageLabel")
					local charg2 = new("SurfaceGui")
					local chari2 = new("ImageLabel")
					local charw = new("Weld")
					card.Name = "Card"
					card.Parent = script
					card.Size = vect3(1, 2, 1)
					card.CanTouch = false
					card.CanCollide = false
					card.Locked = true
					card.BrickColor = bc("Institutional white")
					cardm.Parent = card
					cardm.MeshId = "http://www.roblox.com/asset/?id=28657079"
					cardm.Scale = vect3(0.3, 0.3, 0.3)
					cardm.TextureId = ""
					cardm.MeshType = Enum.MeshType.FileMesh
					cardw.Parent = card
					cardw.C0 = cframe(-1.25, -0.5, 0, -4.37113883e-08, -1, 4.37113883e-08, -0, -4.37113883e-08, -1, 1, -4.37113883e-08, 1.91068547e-15)
					cardw.Part0 = card
					cardw.Part1 = ra
					characterc.Name = "character"
					characterc.Parent = card
					characterc.Transparency = 1
					characterc.CanTouch = false
					characterc.CanCollide = false
					characterc.Locked = true
					characterc.Size = vect3(0.8, 1.364, 0.035)
					charg.Name = "fr"
					charg.Parent = characterc
					charg.LightInfluence = 1
					charg.ClipsDescendants = true
					charg.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
					chari.Name = "Frame"
					chari.Parent = charg
					chari.Size = udim2(1, 0, 1, 0)
					chari.BackgroundColor = bc("Toothpaste")
					chari.BackgroundColor3 = color(0.333333, 1, 1)
					chari.BackgroundTransparency = 1
					chari.BorderColor3 = color(0.105882, 0.164706, 0.207843)
					chari.Image = "rbxassetid://11314579"
					chari.ScaleType = Enum.ScaleType.Fit
					chari.SliceCenter = Rect.new(12, 12, 12, 12)
					chari.TileSize = udim2(1, 0, 0.5, 0)
					charg2.Name = "bk"
					charg2.Parent = characterc
					charg2.LightInfluence = 1
					charg2.Face = Enum.NormalId.Back
					charg2.ClipsDescendants = true
					charg2.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
					chari2.Name = "Frame"
					chari2.Parent = charg2
					chari2.Size = udim2(1, 0, 1, 0)
					chari2.BackgroundColor = bc("Toothpaste")
					chari2.BackgroundColor3 = color(0.333333, 1, 1)
					chari2.BackgroundTransparency = 1
					chari2.BorderColor3 = color(0.105882, 0.164706, 0.207843)
					chari2.Image = "rbxassetid://11314579"
					chari2.ScaleType = Enum.ScaleType.Fit
					chari2.SliceCenter = Rect.new(12, 12, 12, 12)
					chari2.TileSize = udim2(1, 0, 0.5, 0)
					charw.Parent = characterc
					charw.C0 = cframe(0, 0, -0.0500000007, 1, 0, 0, 0, 1, -0, 0, 0, 1)
					charw.Part0 = characterc
					charw.Part1 = card
					local randomchar = random(0, 11)
					if randomchar == 0 then
						name = "Hakurei Reimu"
						chari.Image = "rbxassetid://11314579"
						chari2.Image = "rbxassetid://11314579"
					elseif randomchar == 1 then
						name = "May from Guilty Gear"
						chari.Image = "rbxassetid://158085146"
						chari2.Image = "rbxassetid://158085146"
					elseif randomchar == 2 then
						name = "Chihiro Fujisaki"
						chari.Image = "rbxassetid://4866670320"
						chari2.Image = "rbxassetid://4866670320"
					elseif randomchar == 3 then
						name = "Dio Brando"
						chari.Image = "rbxassetid://4532819196"
						chari2.Image = "rbxassetid://4532819196"
					elseif randomchar == 4 then
						name = "Konata Izumi"
						chari.Image = "rbxassetid://3775840"
						chari2.Image = "rbxassetid://3775840"
					elseif randomchar == 5 then
						name = "Ayumu 'Osaka' Kasuga"
						chari.Image = "rbxassetid://5806493108"
						chari2.Image = "rbxassetid://5806493108"
					elseif randomchar == 6 then
						name = "the most generic Noob ever"
						chari.Image = "rbxassetid://753015086"
						chari2.Image = "rbxassetid://753015086"
					elseif randomchar == 7 then
						name = "Elliot from Work at a Pizza Place"
						chari.Image = "rbxassetid://118127052580166"
						chari2.Image = "rbxassetid://118127052580166"
					elseif randomchar == 8 then
						name = "Frisk from Undertale"
						chari.Image = "rbxassetid://320485378"
						chari2.Image = "rbxassetid://320485378"
					elseif randomchar == 9 then
						name = "BongBong from Lobotomy Corporation"
						chari.Image = "rbxassetid://15152634584"
						chari2.Image = "rbxassetid://15152634584"
					elseif randomchar == 10 then
						name = "Don Quixote from Limbus Company"
						chari.Image = "rbxassetid://14058746465"
						chari2.Image = "rbxassetid://14058746465"
					else
						name = "Kokichi Oma"
						chari.Image = "rbxassetid://1271485175"
						chari2.Image = "rbxassetid://1271485175"
					end
					super(1)
					sound(5121745384,3.5,1,card,0.025,false)
					task.wait(1.3)	
					frame = 2
					cardw:Destroy()
					sound(743521549,2,1,ra,0.025,false)
					sound(5121748357,3.15,1,card,0.025,false)
					local bpos = new("BodyPosition")
					bpos.Name = "SolBadguyMove"
					bpos.Parent = card
					bpos.MaxForce = vect3(39999,39999,39999)
					bpos.D = 500
					bpos.Position = root.CFrame * cframe(0,0,-14.5).Position
					task.wait(0.125)
					spawn(function()
						for i = 1, #targets do
							coroutine.resume(coroutine.create(function()
								local v = targets[i]
								local vh = v:FindFirstChild("Head")
								local vhum = v:FindFirstChildOfClass("Humanoid")
								local vtorso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso") or v:FindFirstChild("HumanoidRootPart")
								if v ~= nil then
									if vtorso:FindFirstChild("SolBadguyHitBy") then vtorso:FindFirstChild("SolBadguyHitBy"):Destroy() end
									hiteffect("sphere",vtorso)
									sound(386946017,2,1,vtorso,0,false)
									vhum.DisplayName = name
									vhum.DisplayDistanceType = "Viewer"
									local ignore = {
										"Head",
										"Left Arm",
										"Right Arm",
										"Left Leg",
										"Right Leg",
										"Torso",
										"LeftFoot",
										"LeftHand",
										"LeftLowerArm",
										"LeftUpperArm",
										"LeftLowerLeg",
										"LeftUpperLeg",
										"LowerTorso",
										"UpperTorso",
										"RightFoot",
										"RightHand",
										"RightLowerArm",
										"RightLowerLeg",
										"RightUpperArm",
										"RightUpperLeg",
										"UpperTorso",
									}
									for i,v in pairs(v:GetDescendants()) do
										if not table.find(ignore,v.Name) and v:IsA("BasePart") then
											v.Transparency = 1
										end
									end
									local highlight = new("Highlight")
									highlight.Parent = v
									highlight.Name = "SolBadguyHighlight"
									highlight.OutlineTransparency = 0
									highlight.FillTransparency = 0
									highlight.FillColor = color(1,1,1)
									highlight.OutlineColor = color(1,1,1)
									tweens:Create(highlight, TweenInfo.new(1), {FillTransparency = 1}):Play()
									tweens:Create(highlight, TweenInfo.new(1), {OutlineTransparency = 1}):Play()
									debris:AddItem(highlight,1.15)
									local sphere = new("Part")
									sphere.Parent = script
									sphere.Name = "Transform"
									sphere.Shape = "Ball"
									sphere.Size = vect3(2.5,2.5,2.5)
									sphere.Transparency = 0
									sphere.BrickColor = bc("Institutional white")
									sphere.Material = "Neon"
									sphere.CanCollide = false
									sphere.Anchored = true
									sphere.CFrame = vtorso.CFrame
									local tween = tweens:Create(sphere, TweenInfo.new(0.75), {Size = vect3(15,15,15), Transparency = 1})
									tween:Play()
									tween.Completed:Connect(function() sphere:Destroy() end)
									sound(642336941,3,1,vtorso,0,false)
									for i,v in pairs(v:GetDescendants()) do
										if v:IsA("Accessory") or v:IsA("Hat") or v:IsA("CharacterMesh") then
											v:Destroy()
										end
									end
									for i,v in pairs(vh:GetDescendants()) do
										if v:IsA("BillboardGui") then
											v:Destroy()
										end
									end
									local vshirt = v:FindFirstChildOfClass("Shirt")
									local vpants = v:FindFirstChildOfClass("Pants")
									local vtshirt = v:FindFirstChildOfClass("ShirtGraphic")
									if vtshirt then vtshirt:Destroy() end --We don't need T-Shirts, eh?
									if vshirt == nil then
										vshirt = new("Shirt",v)
										vshirt.Name = "Shirt"
									end
									if vpants == nil then
										vpants = new("Pants",v)
										vpants.Name = "Pants"
									end
									local vhair = new("Part",v)
									vhair.Name = "CostumeHair"
									vhair.Material = "Neon"
									vhair.Transparency = 0
									vhair.CanCollide = false
									vhair.Locked = true
									vhair.CanTouch = false
									vhair.Massless = true
									vhair.Size = vect3(0.001,0.001,0.001)
									local vhairm = new("SpecialMesh",vhair)
									vhairm.MeshType = "FileMesh"
									vhairm.Scale = vect3(1,1,1)
									local vhairw =new("Weld",vhair)
									vhairw.Part0 = vhair
									vhairw.Part1 = vh
									vhairw.C0 = cframe(0, 0.45, -0.175)
									if randomchar == 0 then
										arm1 = new("CharacterMesh", v)
										arm1.Name = "Arm1"
										arm1.BodyPart = "LeftArm"
										arm1.MeshId = "83001137"
										arm2 = new("CharacterMesh",v)
										arm2.Name = "Arm2"
										arm2.BodyPart = "RightArm"
										arm2.MeshId = "83001181"
										leg1 = new("CharacterMesh",v)
										leg1.Name = "Leg1"
										leg1.BodyPart = "LeftLeg"
										leg1.MeshId = "81628361"
										leg2 = new("CharacterMesh", v)
										leg2.Name = "Leg2"
										leg2.BodyPart = "RightLeg"
										leg2.MeshId = "81628308"
										torso2 = new("CharacterMesh",v)
										torso2.Name = "Toruso"
										torso2.BodyPart = "Torso"
										torso2.MeshId = "82987757"
									elseif (randomchar == 3 or randomchar == 4 or randomchar == 9 or randomchar == 10 or randomchar == 11) then
										arm1 = new("CharacterMesh", v)
										arm1.Name = "Arm1"
										arm1.BodyPart = "LeftArm"
										arm1.MeshId = "27111419"
										arm2 = new("CharacterMesh",v)
										arm2.Name = "Arm2"
										arm2.BodyPart = "RightArm"
										arm2.MeshId = "27111864"
										leg1 = new("CharacterMesh",v)
										leg1.Name = "Leg1"
										leg1.BodyPart = "LeftLeg"
										leg1.MeshId = "27111857"
										leg2 = new("CharacterMesh", v)
										leg2.Name = "Leg2"
										leg2.BodyPart = "RightLeg"
										leg2.MeshId = "27111882"
										torso2 = new("CharacterMesh",v)
										torso2.Name = "Toruso"
										torso2.BodyPart = "Torso"
										torso2.MeshId = "27111894"
									elseif randomchar == 5 then
										torso2 = new("CharacterMesh",v)
										torso2.Name = "Toruso"
										torso2.BodyPart = "Torso"
										torso2.MeshId = "48112070"
									end
									if randomchar == 0 then
										vhairm.MeshId = "rbxassetid://18678571356"
										vhairm.TextureId = "rbxassetid://18678571502"
										vhairw.C0 = cframe(0, 0.45, -0.175)
										vshirt.ShirtTemplate = "rbxassetid://18981403265"
										vpants.PantsTemplate = "rbxassetid://18981407285"
										for i,v in pairs(vh:GetDescendants()) do
											if v:IsA("Decal") then
												v.Texture = "rbxassetid://14077754930"
											end
										end
									elseif randomchar == 1 then
										local mh = new("Part")
										local mhm = new("SpecialMesh")
										local mhw = new("Motor6D")
										mh.Name = "PUFFY"
										mh.Parent = v
										mh.Size = vect3(0.001,0.001,0.001)
										mh.BottomSurface = Enum.SurfaceType.Smooth
										mh.CanCollide = false
										mh.TopSurface = Enum.SurfaceType.Smooth
										mhm.Name = "SpecialMesh"
										mhm.Parent = mh
										mhm.MeshId = "rbxassetid://13604298648"
										mhm.TextureId = "rbxassetid://13604298651"
										mhm.MeshType = Enum.MeshType.FileMesh
										mhw.Name = "PUFFY"
										mhw.Parent = mh
										mhw.C0 = cframe(0, -0.593, 0, 1, -0, 0, 0, 1, 0, -0, 0, 1)
										mhw.Part0 = mh
										mhw.Part1 = vh
										vhairm.MeshId = "rbxassetid://15210306576"
										vhairm.TextureId = "rbxassetid://15135854402"
										vhairw.C0 = cframe(0, 0.45, -0.15)
										vshirt.ShirtTemplate = "rbxassetid://15613914628"
										vpants.PantsTemplate = "rbxassetid://15613917015"
										for i,v in pairs(vh:GetDescendants()) do
											if v:IsA("Decal") then
												v.Texture = "rbxassetid://66054946" -- I can't find a proper face decal...
											end
										end
										vchatter(v,"Totsugeki!")
										sound(7288427352,1,1,vh,0,false)
									elseif randomchar == 2 then
										vhairm.MeshId = "rbxassetid://82671976089962"
										vhairm.TextureId = "rbxassetid://97793338764432"
										vhairm.Scale = vect3(0.063, 0.063, 0.063)
										vhairw.C0 = cframe(0, -0.072, -0.185)
										vshirt.ShirtTemplate = "rbxassetid://6602036956"
										vpants.PantsTemplate = "rbxassetid://6602041471"
										for i,v in pairs(vh:GetDescendants()) do
											if v:IsA("Decal") then
												v.Texture = "rbxassetid://6666102642"
											end
										end
										vchatter(v,"If I don't do something, nothing's ever going to change.")
									elseif randomchar == 3 then
										vhairm.MeshId = "rbxassetid://4515070482"
										vhairm.TextureId = "rbxassetid://3954228963"
										vhairw.C0 = cframe(-0.085, -0.05, -0.2)
										vshirt.ShirtTemplate = "rbxassetid://517329482"
										vpants.PantsTemplate = "rbxassetid://549915531"
										for i,v in pairs(vh:GetDescendants()) do
											if v:IsA("Decal") then
												v.Texture = "rbxassetid://4612741672"
											end
										end
										local randomquote = random(0,9)
										if randomquote == 0 then
											vchatter(v,"So lame, so lame!")
											sound(2553967788,1,1,vh,0,false)
										elseif randomquote == 1 then
											vchatter(v,"WRYYYYYYYYYYYYYY!")
											sound(616576437,1,1,vh,0,false)
										elseif randomquote == 2 then
											vchatter(v,"This is the greatest high!")
											sound(6177204732,1,1,vh,0,false)
										elseif randomquote == 3 then
											vchatter(v,"You puny humans, I shall rule you all!")
											sound(6177205434,1,1,vh,0,false)
										elseif randomquote == 4 then
											vchatter(v,"The World! Time will stop!")
											sound(2553929805,1,1,vh,0,false)
										elseif randomquote == 5 then
											vchatter(v,"You thought you would be able to defeat me?!")
											sound(2553966123,1,1,vh,0,false)
										elseif randomquote == 6 then
											vchatter(v,"Behold, The Oblivion of Death!")
											sound(2553976974,1,1,vh,0,false)
										elseif randomquote == 7 then
											vchatter(v,"This fits me... This fits me well! HAHAHAHAHAHA!")
											sound(6177203138,1,1,vh,0,false)
										elseif randomquote == 8 then
											vchatter(v,"You're gonna have to die then.")
											sound(4580053145,1,1,vh,0,false)
										else
											vchatter(v,"Garbage!")
											sound(2553924562,1,1,vh,0,false)
										end
									elseif randomchar == 4 then
										vhairm.MeshId = "rbxassetid://5591722850"
										vhairm.TextureId = "rbxassetid://17292712"
										vhairm.Scale = vect3(-0.12, 0.12, -0.12)
										vhairw.C0 = cframe(-0.325, 1.5, 0)
										vshirt.ShirtTemplate = "rbxassetid://16174738428"
										vpants.PantsTemplate = "rbxassetid://16174755770"
										for i,v in pairs(vh:GetDescendants()) do
											if v:IsA("Decal") then
												v.Texture = "rbxassetid://2769430640"
											end
										end
										local randomquote = random(0,6)
										if randomquote == 0 then
											vchatter(v,"Pupue!")
											sound(101685860155742,2,1,vh,0,false)
										elseif randomquote == 1 then
											vchatter(v,"Piku!")
											sound(95101968049295,1,1,vh,0,false)
										elseif randomquote == 2 then
											vchatter(v,"Miyuki-san, Good Job!")
											sound(126989864412379,1,1,vh,0,false)
										elseif randomquote == 3 then
											vchatter(v,"Chuarsu!!!")
											sound(117221358207825,1,1,vh,0,false)
										elseif randomquote == 4 then
											vchatter(v,"Miteimitei!")
											sound(86445213105476,1,1,vh,0,false)
										elseif randomquote == 5 then
											vchatter(v,"Uuuuuuuuuhhhhhhhhh........")
											sound(100644705443218,1,1,vh,0,false)
										else
											vchatter(v,"Timotei! Timotei! Timotei!")
											sound(106860764639981,1,1,vh,0,false)
										end
									elseif randomchar == 5 then
										vhairm.MeshId = "rbxassetid://15238383398"
										vhairm.TextureId = "rbxassetid://15248412066"
										vhairw.C0 = cframe(-0.035, 0.115, -0.05)
										vshirt.ShirtTemplate = "rbxassetid://14194725746"
										vpants.PantsTemplate = "rbxassetid://14194722370"
										for i,v in pairs(vh:GetDescendants()) do
											if v:IsA("Decal") then
												v.Texture = "rbxassetid://15249315602"
											end
										end
										vchatter(v,"Sata andagi!! :)")
										sound(8941612531,1.5,1,vh,0,false)
									elseif randomchar == 6 then
										vshirt.ShirtTemplate = "rbxassetid://1696798321"
										vpants.PantsTemplate = "rbxassetid://7017826543"
										for i,v in pairs(vh:GetDescendants()) do
											if v:IsA("Decal") then
												v.Texture = "rbxassetid://2381712417"
											end
										end
									elseif randomchar == 7 then
										vhairm.MeshId = "rbxassetid://1081088"
										vhairm.TextureId = "rbxassetid://2646470932"
										vhairm.Scale = vect3(1.02, 1.02, 1.02)
										vhairw.C0 = cframe(0, -0.39, 0.18)
										vshirt.ShirtTemplate = "rbxassetid://2571213423"
										vpants.PantsTemplate = "rbxassetid://12798335773"
										for i,v in pairs(vh:GetDescendants()) do
											if v:IsA("Decal") then
												v.Texture = "rbxassetid://28664518"
											end
										end
										local randomquote = random(0,7)
										if randomquote == 0 then
											vchatter(v,"*laughing*")
											sound(1601659619,2,1,vh,0,false)
										elseif randomquote == 1 then
											vchatter(v,"Hi!")
											sound(154147007,2,1,vh,0,false)
										elseif randomquote == 2 then
											vchatter(v,"Wahh!!")
											sound(154157524,2,1,vh,0,false)
										elseif randomquote == 3 then
											vchatter(v,"*laughing*")
											sound(154157543,2,1,vh,0,false)
										elseif randomquote == 4 then
											vchatter(v,"Bye!")
											sound(154157386,2,1,vh,0,false)
										elseif randomquote == 5 then
											vchatter(v,"Hmm...")
											sound(154157584,2,1,vh,0,false)
										elseif randomquote == 6 then
											vchatter(v,"Huh?")
											sound(154157416,2,1,vh,0,false)
										else
											vchatter(v,"Woah!!")
											sound(154157291,2,1,vh,0,false)
										end
									elseif randomchar == 8 then
										vhairm.MeshId = "rbxassetid://18781815098"
										vhairm.TextureId = "rbxassetid://18781815198"
										vhairm.Scale = vect3(-1, 1, -1)
										vhairw.C0 = cframe(-0.007, -0.149, -0.026)
										vshirt.ShirtTemplate = "rbxassetid://596240571"
										vpants.PantsTemplate = "rbxassetid://487904468"
										for i,v in pairs(vh:GetDescendants()) do
											if v:IsA("Decal") then
												v.Texture = "rbxassetid://6182468451"
											end
										end
									elseif randomchar == 9 then
										vhairm.MeshId = "rbxassetid://11491946288"
										vhairm.TextureId = "rbxassetid://11491946322"
										vhairw.C0 = cframe(0, 0.85, -0.215)
										vshirt.ShirtTemplate = "rbxassetid://13390384692"
										vpants.PantsTemplate = "rbxassetid://13390074835"
										for i,v in pairs(vh:GetDescendants()) do
											if v:IsA("Decal") then
												v.Texture = "rbxassetid://11482582738"
											end
										end
										for i,v in pairs(v:GetDescendants()) do
											if v:IsA("BasePart") then
												v.BrickColor = bc("Institutional white")
											end
										end
									elseif randomchar == 10 then
										vhairm.MeshId = "rbxassetid://18965599058"
										vhairm.TextureId = "rbxassetid://18965701795"
										vhairm.Scale = vect3(-1,1,-1)
										vhairw.C0 = cframe(0.015, 0, 0)
										vshirt.ShirtTemplate = "rbxassetid://18239448608"
										vpants.PantsTemplate = "rbxassetid://18267162304"
										for i,v in pairs(vh:GetDescendants()) do
											if v:IsA("Decal") then
												v.Texture = "rbxassetid://124482082516285"
											end
										end
										for i,v in pairs(v:GetDescendants()) do
											if v:IsA("BasePart") then
												v.BrickColor = bc("Pastel brown")
											end
										end
										local randomquote = random(0,9)
										if randomquote == 0 then
											vchatter(v,"LIMBUS COMPANY!!")
											sound(75063114543626,2,1,vh,0,false)
										elseif randomquote == 1 then
											vchatter(v,"Chaigun, chaigun!")
											sound(119360026132735,2,1,vh,0,false)
										elseif randomquote == 2 then
											vchatter(v,"Ahh, this was... I beg forgiveness.")
											sound(133044882495284,2,1,vh,0,false)
										elseif randomquote == 3 then
											vchatter(v,"*laughing*")
											sound(119360026132735,2,1,vh,0,false)
										elseif randomquote == 4 then
											vchatter(v,"*unintelligible Korean war cry*")
											sound(84672293680231,2,1,vh,0,false)
										elseif randomquote == 5 then
											vchatter(v,"Uagh?!")
											sound(123878695619298,2,1,vh,0,false)
										elseif randomquote == 6 then
											vchatter(v,"Sungeso!!")
											sound(118491580819277,2,1,vh,0,false)
										elseif randomquote == 7 then
											vchatter(v,"Onward, Rocinante!")
											sound(84529225502965,2,1,vh,0,false)
										elseif randomquote == 8 then
											vchatter(v,"Limbus Company!")
											sound(79490653490688,2,1,vh,0,false)
										else
											vchatter(v,"*unintelligible Korean talk*")
											sound(134876278168566,2,1,vh,0,false)
										end
									else
										vhairm.MeshId = "rbxassetid://658532021"
										vhairm.TextureId = "rbxassetid://658532037"
										vhairm.Scale = vect3(0.048, 0.048, 0.048)
										vhairw.C0 = cframe(0.05, -0.125, -0.35)
										vshirt.ShirtTemplate = "rbxassetid://2822670904"
										vpants.PantsTemplate = "rbxassetid://3356091763"
										for i,v in pairs(vh:GetDescendants()) do
											if v:IsA("Decal") then
												v.Texture = "rbxassetid://6815440173"
											end
										end
										for i,v in pairs(v:GetDescendants()) do
											if v:IsA("BasePart") then
												v.BrickColor = bc("Seashell")
											end
										end
										local randomquote = random(0,2)
										if randomquote == 0 then
											vchatter(v,"*laughing*")
											sound(94932305899372,2,1,vh,0,false)
										elseif randomquote == 1 then
											vchatter(v,"*laughing*")
											sound(6324569800,2,1,vh,0,false)
										else
											vchatter(v,"*mischievous glee*")
											sound(114218142554259,2,1,vh,0,false)
										end
									end
									local bpos = new("BodyVelocity")
									bpos.Name = "SolBadguyHitBy"
									bpos.Parent = vtorso
									bpos.MaxForce = vect3(math.huge,math.huge,math.huge)
									bpos.Velocity = vtorso.CFrame.lookVector * 0
								end
							end))
						end
					end)
					card:Destroy()
					task.wait(0.1)
					anim = "walk"
					local bpos = new("BodyVelocity")
					bpos.Name = "SolBadguyMove"
					bpos.Parent = root
					bpos.MaxForce = vect3(math.huge,math.huge,math.huge)
					bpos.Velocity = root.CFrame.lookVector * 19.25
					task.wait(0.475)
					bpos:Destroy()
					anim = "shapeshift"
					frame = 3
					sound(3422592990,2.5,1,WeaponSheath,0,false)
					local randomquote = random(0,4)
					if randomquote == 0 then
						chatter("You are... "..name..".")
					elseif randomquote == 1 then
						chatter("It seems I picked "..name.."...")
					elseif randomquote == 2 then
						chatter("I picked "..name.."!")
					elseif randomquote == 3 then
						chatter("The end...")
					else
						chatter("Go see the stars...")
					end
					task.wait(2.75)	
					frame = 4
					Weapon.Transparency = 0
					FWeapon.Transparency = 1
					WeaponTrail.Enabled = true
					sound(4958430453,3,1,Weapon,0,false)
					if randomquote == 0 then
						chatter("Or not.")
					end
					task.wait(0.05)	
					frame = 5
					task.wait(0.05)	
					frame = 6
					sound(7131798141,2.5,1,Weapon,0,false)
					spawn(function()
						for i = 1, #targets do
							coroutine.resume(coroutine.create(function()
								local v = targets[i]
								local vh = v:FindFirstChild("Head")
								local vtorso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso") or v:FindFirstChild("HumanoidRootPart")
								if v ~= nil then
									if vtorso:FindFirstChild("SolBadguyHitBy") then vtorso:FindFirstChild("SolBadguyHitBy"):Destroy() end
									instantkill(v,false,false,true)
									destruction(v,vtorso)
									if randomchar == 0 then
										sound(138251332,2,1,vtorso,0,false)
									elseif randomchar == 1 then
										vchatter(v,"Johnny, you idiot!!")
									elseif randomchar == 2 then
										vchatter(v,"I... I can't take it!")
									elseif randomchar == 3 then
										local randomquote = random(0,4)
										if randomquote == 0 then
											vchatter(v,"I- I can't move! I-Impossible!")
											sound(6946266008,2,1,vh,0,false)
										elseif randomquote == 1 then
											vchatter(v,"I am DIO!!!!")
											sound(5665525241,2,1,vh,0,false)
										elseif randomquote == 2 then
											vchatter(v,"I-Impossible!")
											sound(6480982647,2,1,vh,0,false)
										elseif randomquote == 3 then
											sound(98673378319646,4.5,1,vh,0,false)
										else
											vchatter(v,"I am DIO!!!!")
											sound(5665525241,2,1,vh,2.225,false)
										end
									elseif randomchar == 4 then
										vchatter(v,"*Akane Owari cry sound effect*")
									elseif randomchar == 5 then
										local randomquote = random(0,2)
										if randomquote == 0 then
											vchatter(v,"AAAAAAAAAHHHHHHHHHH")
											sound(125231171064891,2,1,vh,0,false)
										elseif randomquote == 1 then
											vchatter(v,"Oh!! I'm a sorry!!")
											sound(94733700783879,2,1,vh,0,false)
										else
											vchatter(v,"OH MY GAH!!!")
											sound(4496966777,2,1,vh,0,false)
										end
									elseif randomchar == 6 then
										vchatter(v,"OOF")
										sound(18404418062,2,1,vh,0,false)
									elseif randomchar == 7 then
										local randomquote = random(0,2)
										if randomquote == 0 then
											vchatter(v,"AAAAAAAAAHHHHHHHHHH")
											sound(154157563,2,1,vh,0,false)
										elseif randomquote == 1 then
											vchatter(v,"*cries*")
											sound(154146535,2,1,vh,0,false)
										else
											sound(1602111066,2,1,vh,0,false)
										end
									elseif randomchar == 8 then
										local randomquote = random(0,2)
										if randomquote == 0 then
											sound(427025525,2,1,vh,0,false)
										elseif randomquote == 1 then
											sound(136646497145219,2,1,vh,0,false)
										else
											sound(7022295490,2,1,vh,0,false)
										end
									elseif randomchar == 9 then --The Agents in Lobotomy Corporation have no sounds that play when they die, so I decided to reuse some sounds from Makoto, and change it's pitch.
										local rdeath = random(0,8)
										if rdeath == 0 then
											sound(209527245,2.5,1.5,vh,0,false)
										elseif rdeath == 1 then
											sound(209527203,2.5,1.5,vh,0,false)
										elseif rdeath == 2 then
											sound(209527206,2.5,1.5,vh,0,false)
										elseif rdeath == 3 then
											sound(209527183,2.5,1.5,vh,0,false)
										elseif rdeath == 4 then
											sound(566988981,2.5,1.5,vh,0,false)
										elseif rdeath == 5 then
											sound(209527175,2.5,1.5,vh,0,false)
										elseif rdeath == 6 then
											sound(6108565657,2.5,1.45,vh,0,false)
										elseif rdeath == 7 then
											sound(6108540937,2.5,1.45,vh,0,false)
										else
											sound(6108566293,2.5,1.45,vh,0,false)
										end
									elseif randomchar == 10 then
										local randomquote = random(0,1)
										if randomquote == 0 then
											vchatter(v,"MANAGER ESQUIREEEEE!!!")
											sound(138814246971789,2,1,vh,0,false)
										else
											vchatter(v,"SIR SQUIRREL!!!")
											sound(104032566606115,2,1,vh,0,false)
										end
									else
										vchatter(v,"WAAAAAAAAAAAHHHHHHH!!! YOU'RE SO MEEEEEAAAANNNN!!!!!")
									end
								end
							end))
						end
					end)
					if game.PlaceId == 11510416200 or game.PlaceId == 126783576555525 or game.PlaceId == 89201052571047 or game.PlaceId == 79868761121850 then
						sound(79887722971140,4.5,1,torso,52.075,false,true,2.4)
					else
						sound(17592192684,1.5,1,torso,0,false)
					end
					spawn(function()
						local flash = new("ScreenGui")
						flash.Parent = pgui
						local frame = new("Frame")
						frame.Parent = flash
						frame.Size = udim2(1,0,1,0)
						frame.BackgroundColor3 = color(1,1,1)
						frame.BackgroundTransparency = 0
						local death = new("ImageLabel")
						death.Parent = flash
						death.Position = udim2(0.286, 0, 0.1, 0)
						death.Size = udim2(0, 450, 0, 450)
						death.BackgroundTransparency = 1
						death.Image = "rbxassetid://12472046162"
						spawn(function()
							for i = 1,45 do
								task.wait()
								frame.BackgroundTransparency = frame.BackgroundTransparency + 1/45
								death.ImageTransparency = death.ImageTransparency + 1/45
							end
						end)
						debris:AddItem(flash, 5)
						task.wait(0.5)
						sound(17561469788,3,1,torso,0,false)
					end)
					task.wait(2.5)		
					frame = 8
					sound(211134014,3.6,1,Weapon,0,false)
					task.wait(0.1)
					frame = 7
					WeaponTrail.Enabled = false
					Weapon.Transparency = 1
					FWeapon.Transparency = 0
					task.wait(0.45)
				else
					anim = "utsusemi"
					frame = 1
					task.wait(0.75)	
					frame = 2
					local bpos = new("BodyPosition")
					bpos.Parent = root
					bpos.MaxForce = vect3(math.huge,math.huge,math.huge)
					bpos.D = 1750
					bpos.Position = root.CFrame * cframe(0,0,-45).Position
					sound(1868836,1.5,0.44,root,0,false)
					sound(2693351,1.25,0.4,root,0,false)
					local dash = new("Part")
					local dashw = new("Weld")
					local dashp = new("ParticleEmitter")
					dash.Name = "Dust Devil"
					dash.Parent = root
					dash.CanCollide = false
					dash.CanTouch = false
					dash.Transparency = 1
					dash.Size = vect3(0.001,0.001,0.001)
					dashw.Parent = dash
					dashw.C0 = dashw.C0 * cframe(0, 2.5, 2.5)
					dashw.Part0 = dash
					dashw.Part1 = root
					dashp.Name = "Debris"
					dashp.Parent = dash
					dashp.Speed = NumberRange.new(22, 22)
					dashp.Rotation = NumberRange.new(1, 360)
					dashp.Color = ColorSequence.new(color(1, 0.333333, 0),color(1, 0, 0))
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
					debris:AddItem(dash,2)
					anim = "blazing"
					frame = 1
					task.wait(0.45)
					bpos:Destroy()
					local randomquote = random(0,3)
					--Thank you, whatto / pointypease668 for uploading Sol Badguy's voiceclips! You're the best!
					if randomquote == 0 then
						chatter("Goodbye.")
						if game.PlaceId == 11510416200 or game.PlaceId == 126783576555525 or game.PlaceId == 89201052571047 or game.PlaceId == 79868761121850 then
							if voices then
								if not dresst then
									sound(99813049652900,3,1.2,head,108.84,false,true,0.455)
								else
									sound(99813049652900,3,1.5,head,108.84,false,true,0.365)
								end
							end
						end
					elseif randomquote == 1 then
						chatter("Let's make it showy!")
						if game.PlaceId == 11510416200 or game.PlaceId == 126783576555525 or game.PlaceId == 89201052571047 or game.PlaceId == 79868761121850 then
							if voices then
								if not dresst then
									sound(117469104266808,3,1.175,head,8.05,false,true,0.587)
								else
									sound(117469104266808,3,1.625,head,8.05,false,true,0.425)
								end
							end
						end
					elseif randomquote == 2 then
						chatter("Sorry, but it's over!")
						if game.PlaceId == 11510416200 or game.PlaceId == 126783576555525 or game.PlaceId == 89201052571047 or game.PlaceId == 79868761121850 then
							if voices then
								if not dresst then
									sound(99813049652900,3,1.2,head,104.95,false,true,1.214)
								else
									sound(99813049652900,3,1.5,head,104.95,false,true,0.975)
								end
							end
						end
					elseif randomquote == 3 then
						chatter("Take care...")
						if game.PlaceId == 11510416200 or game.PlaceId == 126783576555525 or game.PlaceId == 89201052571047 or game.PlaceId == 79868761121850 then
							if voices then
								if not dresst then
									sound(117469104266808,3,1.15,head,58.93,false,true,0.844)
								else
									sound(117469104266808,3,1.6,head,58.93,false,true,0.606)
								end
							end
						end
					end
					task.wait(1.5)
					spawn(function()
						for i = 1, #targets do
							coroutine.resume(coroutine.create(function()
								local v = targets[i]
								local vtorso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso") or v:FindFirstChild("HumanoidRootPart")
								if v ~= nil then
									if vtorso:FindFirstChild("SolBadguyHitBy") then vtorso:FindFirstChild("SolBadguyHitBy"):Destroy() end
									local bpos = new("BodyPosition")
									bpos.Name = "SolBadguyHitBy"
									bpos.Parent = vtorso
									bpos.MaxForce = vect3(39999,39999,39999)
									bpos.D = 2000
									bpos.Position = root.CFrame * cframe(0,0,200).Position
								end
							end))
						end
					end)
					spawn(function()
						local pos = root.CFrame
						local direction = pos.lookVector
						for i=1, 30 do
							local posit = pos-(direction*i*8)
							local gfp = new("Part")
							local gfpm = new("SpecialMesh")
							local gfp0 = new("Part")
							local gfpm0 = new("SpecialMesh")
							local gfp1 = new("Part")
							local gfpm1 = new("SpecialMesh")
							local gfp2 = new("Part")
							local gfpm2 = new("SpecialMesh")
							gfp2.Parent = script
							gfp2.Transparency = 0.05
							gfp2.Size = vect3(1, 1, 1)
							gfp2.Anchored = true
							gfp2.BottomSurface = Enum.SurfaceType.Smooth
							gfp2.BrickColor = bc("Br. yellowish orange")
							gfp2.CanCollide = false
							gfp2.TopSurface = Enum.SurfaceType.Smooth
							gfpm2.Parent = gfp2
							gfpm2.MeshId = "rbxassetid://20329976"
							gfpm2.Scale = vect3(3, 3, 3)
							gfpm2.MeshType = Enum.MeshType.FileMesh
							gfp.Name = "Part1"
							gfp.Parent = gfp2
							gfp.Transparency = 0.25
							gfp.Size = vect3(1, 1, 1)
							gfp.Anchored = true
							gfp.BottomSurface = Enum.SurfaceType.Smooth
							gfp.BrickColor = bc("Bright red")
							gfp.CanCollide = false
							gfp.TopSurface = Enum.SurfaceType.Smooth
							gfpm.Parent = gfp
							gfpm.MeshId = "rbxassetid://20329976"
							gfpm.Scale = vect3(3.5, 3.5, 3.5)
							gfpm.MeshType = Enum.MeshType.FileMesh
							gfp0.Name = "gfp0"
							gfp0.Parent = gfp2
							gfp0.Transparency = 0.25
							gfp0.Size = vect3(2.5, 5, 2.5)
							gfp0.Anchored = true
							gfp0.BottomSurface = Enum.SurfaceType.Smooth
							gfp0.BrickColor = bc("Maroon")
							gfp0.CanCollide = false
							gfp0.TopSurface = Enum.SurfaceType.Smooth
							gfpm0.Parent = gfp0
							gfpm0.MeshType = Enum.MeshType.Sphere
							gfp1.Name = "Part3"
							gfp1.Parent = gfp2
							gfp1.Transparency = 0.05
							gfp1.Size = vect3(2, 2.5, 2)
							gfp1.Anchored = true
							gfp1.BottomSurface = Enum.SurfaceType.Smooth
							gfp1.BrickColor = bc("Neon orange")
							gfp1.CanCollide = false
							gfp1.TopSurface = Enum.SurfaceType.Smooth
							gfpm1.Parent = gfp1
							gfpm1.MeshType = Enum.MeshType.Sphere
							gfp.Material = "Neon"
							gfp2.Material = "Neon"
							gfp0.Material = "Neon"
							gfp1.Material = "Neon"
							gfp2.CFrame = cframe(posit.x,posit.y-1.5,posit.z-1.5)
							gfp.CFrame = cframe(posit.x,posit.y-1.5,posit.z-1.5)
							gfp0.CFrame = cframe(posit.x,posit.y-1.5,posit.z-1.5)
							gfp1.CFrame = cframe(posit.x,posit.y-1.5,posit.z-1.5)
							gfp.CanTouch = false
							gfp0.CanTouch = false
							gfp1.CanTouch = false
							gfp2.CanTouch = false
							sound(5129337934,1,1,gfp0,0,false)
							local tween = tweens:Create(gfp2,TweenInfo.new(1.15,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Transparency = 1})
							tween:Play()
							local tweenM = tweens:Create(gfpm2,TweenInfo.new(1.15,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Scale = vect3(15,0.05,15),Offset = vect3(0,-1.5,-1)})
							tweenM:Play()
							local tween1 = tweens:Create(gfp,TweenInfo.new(1.15,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Transparency = 1})
							tween1:Play()
							local tweenM1 = tweens:Create(gfpm,TweenInfo.new(1.15,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Scale = vect3(17.5,0.025,17.5),Offset = vect3(0,-1.5,-1)})
							tweenM1:Play()
							local tween2 = tweens:Create(gfp0,TweenInfo.new(1.15,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{CFrame = gfp0.CFrame * CFrame.Angles(0,math.rad(180),0),Size = vect3(3,45,3),Transparency = 1})
							tween2:Play()
							local tween3 = tweens:Create(gfp1,TweenInfo.new(1.15,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{CFrame = gfp0.CFrame * CFrame.Angles(0,math.rad(180),0),Size = vect3(2.75,35,2.75),Transparency = 1})
							tween3:Play()
							tween.Completed:Connect(function() gfp2:Destroy()end)
							tween1.Completed:Connect(function() gfp:Destroy() end)
							tween2.Completed:Connect(function() gfp0:Destroy()end)
							tween3.Completed:Connect(function() gfp1:Destroy() end)
							task.wait(.1)
						end
					end)
					task.wait(3)
					spawn(function()
						for i = 1, #targets do
							coroutine.resume(coroutine.create(function()
								local v = targets[i]
								local vtorso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso") or v:FindFirstChild("HumanoidRootPart")
								if v ~= nil then
									if vtorso:FindFirstChild("SolBadguyHitBy") then vtorso:FindFirstChild("SolBadguyHitBy"):Destroy() end
									local pos = vtorso.CFrame
									local bp = new("Part")
									local bpm = new("SpecialMesh")
									local bp0 = new("Part")
									local bpm0 = new("SpecialMesh")
									local bp1 = new("Part")
									local bpm1 = new("SpecialMesh")
									local bp2 = new("Part")
									local bpm2 = new("SpecialMesh")
									bp2.Parent = script
									bp2.Transparency = 0.05
									bp2.Size = vect3(1, 1, 1)
									bp2.Anchored = true
									bp2.BottomSurface = Enum.SurfaceType.Smooth
									bp2.BrickColor = bc("Br. yellowish orange")
									bp2.CanCollide = false
									bp2.TopSurface = Enum.SurfaceType.Smooth
									bpm2.Parent = bp2
									bpm2.MeshId = "rbxassetid://20329976"
									bpm2.Scale = vect3(3, 3, 3)
									bpm2.MeshType = Enum.MeshType.FileMesh
									bp.Name = "Part1"
									bp.Parent = bp2
									bp.Color = color(0.768627, 0.156863, 0.109804)
									bp.Transparency = 0.25
									bp.Size = vect3(1, 1, 1)
									bp.Anchored = true
									bp.BottomSurface = Enum.SurfaceType.Smooth
									bp.BrickColor = bc("Bright red")
									bp.CanCollide = false
									bp.TopSurface = Enum.SurfaceType.Smooth
									bpm.Parent = bp
									bpm.MeshId = "rbxassetid://20329976"
									bpm.Scale = vect3(3.5, 3.5, 3.5)
									bpm.MeshType = Enum.MeshType.FileMesh
									bp0.Name = "bp0"
									bp0.Parent = bp2
									bp0.Transparency = 0.25
									bp0.Size = vect3(2.5, 5, 2.5)
									bp0.Anchored = true
									bp0.BottomSurface = Enum.SurfaceType.Smooth
									bp0.BrickColor = bc("Maroon")
									bp0.CanCollide = false
									bp0.TopSurface = Enum.SurfaceType.Smooth
									bpm0.Parent = bp0
									bpm0.MeshType = Enum.MeshType.Sphere
									bp1.Name = "Part3"
									bp1.Parent = bp2
									bp1.Transparency = 0.05
									bp1.Size = vect3(2, 2.5, 2)
									bp1.Anchored = true
									bp1.BottomSurface = Enum.SurfaceType.Smooth
									bp1.BrickColor = bc("Neon orange")
									bp1.CanCollide = false
									bp1.TopSurface = Enum.SurfaceType.Smooth
									bpm1.Parent = bp1
									bpm1.MeshType = Enum.MeshType.Sphere
									bp.Material = "Neon"
									bp2.Material = "Neon"
									bp0.Material = "Neon"
									bp1.Material = "Neon"
									bp2.CFrame = cframe(pos.x,pos.y-1.5,pos.z-1.5)
									bp.CFrame = cframe(pos.x,pos.y-1.5,pos.z-1.5)
									bp0.CFrame = cframe(pos.x,pos.y-1.5,pos.z-1.5)
									bp1.CFrame = cframe(pos.x,pos.y-1.5,pos.z-1.5)
									sound(17773030827,3,1,bp0,0,false)
									local tween = tweens:Create(bp2,TweenInfo.new(2,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Transparency = 1})
									tween:Play()
									local tweenM = tweens:Create(bpm2,TweenInfo.new(2,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Scale = vect3(15,0.025,15),Offset = vect3(0,-1.5,-1)})
									tweenM:Play()
									local tween1 = tweens:Create(bp,TweenInfo.new(2,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Transparency = 1})
									tween1:Play()
									local tweenM1 = tweens:Create(bpm,TweenInfo.new(2,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Scale = vect3(17.5,0.015,17.5),Offset = vect3(0,-1.5,-1)})
									tweenM1:Play()
									local tween2 = tweens:Create(bp0,TweenInfo.new(2,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{CFrame = bp0.CFrame * angles(0,rad(180),0),Size = vect3(7.5,60,7.5),Transparency = 1})
									tween2:Play()
									local tween3 = tweens:Create(bp1,TweenInfo.new(2,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{CFrame = bp0.CFrame * angles(0,rad(180),0),Size = vect3(5,45,5),Transparency = 1})
									tween3:Play()
									tween.Completed:Connect(function() bp2:Destroy()end)
									tween1.Completed:Connect(function() bp:Destroy() end)
									tween2.Completed:Connect(function() bp0:Destroy()end)
									tween3.Completed:Connect(function() bp1:Destroy() end)
									hiteffect("boom",vtorso)
									local fire = new("Fire")
									fire.Parent = vtorso
									fire.Size = 10
									fire.Heat = 25
									sound(303632290,5,1,vtorso,0,true)
									instantkill(v,true)
									vtorso.Velocity = root.CFrame.lookVector*50 + root.CFrame.upVector*450
								end
							end))
						end
					end)
					if game.PlaceId == 11510416200 or game.PlaceId == 126783576555525 or game.PlaceId == 89201052571047 or game.PlaceId == 79868761121850 then
						sound(79887722971140,4.5,1,torso,52.075,false,true,2.4)
					else
						sound(17592192684,1.5,1,torso,0,false)
					end
					spawn(function()
						local flash = new("ScreenGui")
						flash.Parent = pgui
						local frame = new("Frame")
						frame.Parent = flash
						frame.Size = udim2(1,0,1,0)
						frame.BackgroundColor3 = color(1,1,1)
						frame.BackgroundTransparency = 0
						local death = new("ImageLabel")
						death.Parent = flash
						death.Position = udim2(0.286, 0, 0.1, 0)
						death.Size = udim2(0, 450, 0, 450)
						death.BackgroundTransparency = 1
						death.Image = "rbxassetid://12472046162"
						spawn(function()
							for i = 1,45 do
								task.wait()
								frame.BackgroundTransparency = frame.BackgroundTransparency + 1/45
								death.ImageTransparency = death.ImageTransparency + 1/45
							end
						end)
						debris:AddItem(flash, 5)
						task.wait(0.5)
						sound(17561469788,3,1,torso,0,false)
					end)
				end
			end
			hum.WalkSpeed = ogws
			hum.JumpPower = ogjp
			hum.JumpHeight = ogjh
			attack = false
		end
	end;
	["ryuga"] = function() 
		if not (attack or guarding or hurt or hum.Sit == true or sitting or lying) then
			keycombo = ""
			if player.UserId ~= 50203523 then if not (hum.Health <= 400 or overdrive) then return end end
			if player.UserId ~= 50203523 then if mp < 1000 then return end else if mp < (1000/10) then return end end
			if player.UserId == 50203523 then
				mp = mp - (1000/10)
			else
				mp = mp - 1000
			end
			attack = true
			hum.WalkSpeed = 0
			hum.JumpPower = 0
			hum.JumpHeight = 0
			super(2)
			local targets = {}
			local ryugahit = false
			if not sword then
				anim = "fcut"
				frame = 1
				sound(3422592990,2.5,1,WeaponSheath,0,false)
				task.wait(1)
				sound2(105047729701100,3,1.1,root,0,false)
				sparker(WeaponSheath)
				task.wait(0.15)
				WeaponTrail.Enabled = true
				Weapon.Transparency = 0
				FWeapon.Transparency = 1
				frame = 2
				sound(7058339337,4.5,1,Weapon,0,false)
				task.wait(0.045)
				sound(1598682218,2.75,1,torso,0,false)
				for i,v in pairs(workspace:GetDescendants()) do
					if v:FindFirstChildOfClass("Humanoid") and v ~= char then
						local vhum = v:FindFirstChildOfClass("Humanoid")
						local vtorso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso") or v:FindFirstChild("HumanoidRootPart")
						if vtorso then
							local vdistance = (vtorso.Position - root.CFrame*cframe(0,0,-1.5).p).magnitude
							if vdistance <= 12.5 and vhum.Health > 0  then
								ryugahit = true
								sound(444667859,2,1,vtorso,0,false)
								if random(0,6) <= 2 then
									sound(17493997647,4.5,1,vtorso,0,false)
									sound(7441099080,2,1,vtorso,0,false)
									hiteffect("blood",vtorso)
								end
								hiteffect("sphere",vtorso)
								table.insert(targets, v)
								if not overdrive then
									if vhum.Health > 7.4 then
										local creator = new("ObjectValue")
										creator.Name = "creator"
										creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
										creator.Parent = vhum
										debris:AddItem(creator, 2)
										vhum:TakeDamage(7.4)
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
								local bpos = new("BodyVelocity")
								bpos.Name = "BlackwoundHitBy"
								bpos.Parent = vtorso
								bpos.MaxForce = vect3(math.huge,math.huge,math.huge)
								bpos.Velocity = root.CFrame.lookVector * 0
							end
						end
					end
				end
				root.CFrame = root.CFrame * cframe(0,0,-30)
				blackwound()
				frame = 3
				task.wait(0.5)
				if ryugahit then
					task.wait(1)
					spawn(function()
						for i = 1, #targets do
							coroutine.resume(coroutine.create(function()
								local v = targets[i]
								local vh = v:FindFirstChild("Head")
								local vtorso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso") or v:FindFirstChild("HumanoidRootPart")
								if v ~= nil then
									for i = 1,75 do
										local cutpl = new("Part")
										local cutplm = new("SpecialMesh")
										cutpl.Name = "CutWave"
										cutpl.Parent = script
										cutpl.Transparency = 0.25
										cutpl.Size = vect3(1,1,1)
										cutpl.Anchored = true
										cutpl.BottomSurface = Enum.SurfaceType.Smooth
										cutpl.BrickColor = bc("Institutional white")
										cutpl.CanCollide = false
										cutpl.CanTouch = false
										cutpl.Locked = true
										cutpl.TopSurface = Enum.SurfaceType.Smooth
										cutpl.Material = "Neon"
										cutpl.CFrame = vtorso.CFrame * CFrame.fromEulerAnglesXYZ((random(-10,10)/20),0,random(-10,10)/12)
										cutplm.Parent = cutpl
										cutplm.MeshType = Enum.MeshType.Sphere
										local tween = tweens:Create(cutpl,TweenInfo.new(0.45,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{CFrame = cutpl.CFrame * angles(0,rad(180),0),Size = vect3(0.5,75,0.5),Transparency = 1})
										tween:Play()
										tween.Completed:Connect(function() cutpl:Destroy()end)
										local ran = random(0,2)
										if ran == 0 then
											sound(444667824,1,1,vtorso,0,false)
										elseif ran == 1 then
											sound(444667844,1,1,vtorso,0,false)
										else
											sound(444667859,1,1,vtorso,0,false)
										end
										task.wait(0.025)
									end
								end
							end))
						end
					end)
					task.wait(2.5)
					sound(7058340527,2.5,1,Weapon,0,false)
					frame = 2
					task.wait(0.045)
					sound(211134014,3.6,1,Weapon,0,false)
					WeaponTrail.Enabled = false
					Weapon.Transparency = 1
					FWeapon.Transparency = 0
					frame = 5
					task.wait(0.45)
					anim = "ryuga"
					frame = 1
					task.wait(1.15)
					local ef = new("Part")
					local efw = new("Weld")
					ef.Name = "EffectPart"
					ef.Parent = script
					ef.Transparency = 1
					ef.Size = vect3()
					ef.CanCollide = false
					ef.CanTouch = false
					ef.Locked = true
					efw.Parent = ef
					efw.C0 = cframe(0, 1, 0)
					efw.Part0 = ef
					efw.Part1 = la
					hiteffect("grab",ef)
					frame = 2
					sound(73434355710525,4.5,1,la,0,false)
					chatter("Goodbye.")
					if game.PlaceId == 11510416200 or game.PlaceId == 126783576555525 or game.PlaceId == 89201052571047 or game.PlaceId == 79868761121850 then
						if voices then
							if not dresst then
								sound(99813049652900,6.66,1.2,head,108.84,false,true,0.455)
							else
								sound(99813049652900,6.66,1.5,head,108.84,false,true,0.365)
							end
						end
					end
					task.wait(1)
					efw:Destroy()
					spawn(function()
						for i = 1, #targets do
							coroutine.resume(coroutine.create(function()
								local v = targets[i]
								local vh = v:FindFirstChild("Head")
								local vtorso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso") or v:FindFirstChild("HumanoidRootPart")
								if v ~= nil then
									if vtorso:FindFirstChild("BlackwoundHitBy") then vtorso:FindFirstChild("BlackwoundHitBy"):Destroy() end
									instantkill(v,false,false,true)
									destruction(v,vtorso)
								end
							end))
						end
					end)
					if game.PlaceId == 11510416200 or game.PlaceId == 126783576555525 or game.PlaceId == 89201052571047 or game.PlaceId == 79868761121850 then
						sound(79887722971140,4.5,1,torso,52.075,false,true,2.4)
					else
						sound(17592192684,1.5,1,torso,0,false)
					end
					spawn(function()
						local flash = new("ScreenGui")
						flash.Parent = pgui
						local frame = new("Frame")
						frame.Parent = flash
						frame.Size = udim2(1,0,1,0)
						frame.BackgroundColor3 = color(1,1,1)
						frame.BackgroundTransparency = 0
						local death = new("ImageLabel")
						death.Parent = flash
						death.Position = udim2(0.286, 0, 0.1, 0)
						death.Size = udim2(0, 450, 0, 450)
						death.BackgroundTransparency = 1
						death.Image = "rbxassetid://12472046162"
						spawn(function()
							for i = 1,45 do
								task.wait()
								frame.BackgroundTransparency = frame.BackgroundTransparency + 1/45
								death.ImageTransparency = death.ImageTransparency + 1/45
							end
						end)
						debris:AddItem(flash, 5)
						task.wait(0.5)
						sound(17561469788,3,1,torso,0,false)
					end)
					task.wait(2.5)
				else
					task.wait(0.25)
					sound(7058340527,2.5,1,Weapon,0,false)
					frame = 2
					task.wait(0.045)
					sound(211134014,3.6,1,Weapon,0,false)
					WeaponTrail.Enabled = false
					Weapon.Transparency = 1
					FWeapon.Transparency = 0
					frame = 5
					task.wait(0.3)
				end
			else
				anim = "dspunch"
				frame = 1
				task.wait(1)
				local randomsound = random(0,9)
				if not dresst then
					if voices then
						if randomsound <= 2 then
							sound(4323235687,3,1.1,head,0,false)
						elseif randomsound >= 7 then
							sound(119764591428121,3,1.1,head,0,false)
						end
					end
				else
					if voices then
						if randomsound <= 2 then
							sound(4323235687,3,1.325,head,0,false)
						elseif randomsound >= 7 then
							sound(119764591428121,3,1.35,head,0,false)
						end
					end
				end
				WeaponTrail.Enabled = true
				sound(111808555599832,3,1,Weapon,0,false)
				hum.JumpHeight = 0
				anim = "dhslash"
				frame = 1
				for i,v in pairs(workspace:GetDescendants()) do
					if v:FindFirstChildOfClass("Humanoid") and v ~= char then
						local vhum = v:FindFirstChildOfClass("Humanoid")
						local vtorso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso") or v:FindFirstChild("HumanoidRootPart")
						if vtorso then
							local vdistance = (vtorso.Position - root.CFrame*cframe(0,0,-1.5).p).magnitude
							if vdistance <= 6.66 and vhum.Health > 0 then
								ryugahit = true
								sound(444667859,2,1,vtorso,0,false)
								if random(0,6) <= 2 then
									sound(17493997647,4.5,1,vtorso,0,false)
									sound(7441099080,2,1,vtorso,0,false)
									hiteffect("blood",vtorso)
								end
								hiteffect("sphere",vtorso)
								table.insert(targets, v)
								if not overdrive then
									if vhum.Health > 7.4 then
										local creator = new("ObjectValue")
										creator.Name = "creator"
										creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
										creator.Parent = vhum
										debris:AddItem(creator, 2)
										vhum:TakeDamage(7.4)
									end
								else
									if vhum.Health > 15 then
										local creator = new("ObjectValue")
										creator.Name = "creator"
										creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
										creator.Parent = vhum
										debris:AddItem(creator, 2)
										vhum:TakeDamage(15)
									end
								end
								vtorso.CFrame = root.CFrame * cframe(0,0,-4.5) * angles(0,rad(180),0)
								local bpos = new("BodyPosition")
								bpos.Name = "ShizumiHitBy"
								bpos.Parent = vtorso
								bpos.MaxForce = vect3(39999,39999,39999)
								bpos.D = 2000
								bpos.Position = root.CFrame * cframe(0,0,-5).Position
							end
						end
					end
				end
				task.wait(0.25)
				WeaponTrail.Enabled = false
				if ryugahit then
					task.wait(0.5)
					anim = "slash"
					frame = 1
					local randomsound = random(0,9)
					if not dresst then
						if voices then
							if randomsound <= 2 then
								sound(83253261479036,3,1.05,head,0,false)
							elseif randomsound >= 7 then
								sound(90086411940906,3,1.05,head,0,false)
							end
						end
					else
						if voices then
							if randomsound <= 2 then
								sound(83253261479036,3,1.3,head,0,false)
							elseif randomsound >= 7 then
								sound(90086411940906,3,1.3,head,0,false)
							end
						end
					end
					task.wait(0.15)	
					WeaponTrail.Enabled = true
					sound(117297744119258,3,1,Weapon,0,false)
					frame = 2
					spawn(function()
						for i = 1, #targets do
							coroutine.resume(coroutine.create(function()
								local v = targets[i]
								local vtorso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso") or v:FindFirstChild("HumanoidRootPart")
								local vhum = v:FindFirstChildOfClass("Humanoid")
								if v ~= nil then
									local ran = random(0,2)
									if ran == 0 then
										sound(444667824,1,1,vtorso,0,false)
									elseif ran == 1 then
										sound(444667844,1,1,vtorso,0,false)
									else
										sound(444667859,1,1,vtorso,0,false)
									end
									if random(0,6) <= 2 then
										sound(17493997647,4.5,1,vtorso,0,false)
										sound(7441099080,2,1,vtorso,0,false)
										hiteffect("blood",vtorso)
									end
									hiteffect("sphere",vtorso)
									if not overdrive then
										if vhum.Health > 7.4 then
											local creator = new("ObjectValue")
											creator.Name = "creator"
											creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
											creator.Parent = vhum
											debris:AddItem(creator, 2)
											vhum:TakeDamage(7.4)
										end
									else
										if vhum.Health > 15 then
											local creator = new("ObjectValue")
											creator.Name = "creator"
											creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
											creator.Parent = vhum
											debris:AddItem(creator, 2)
											vhum:TakeDamage(15)
										end
									end
								end
							end))
						end
					end)
					task.wait(0.06)
					frame = 4
					task.wait(0.1)
					frame = 3
					task.wait(0.15)
					WeaponTrail.Enabled = false
					anim = "riot"
					frame = 1
					task.wait(0.125)
					frame = 2
					sound(74238153433253,3,1,ll,0,false)
					spawn(function()
						for i = 1, #targets do
							coroutine.resume(coroutine.create(function()
								local v = targets[i]
								local vtorso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso") or v:FindFirstChild("HumanoidRootPart")
								local vhum = v:FindFirstChildOfClass("Humanoid")
								if v ~= nil then
									if vtorso:FindFirstChild("ShizumiHitBy") then vtorso:FindFirstChild("ShizumiHitBy").Position = root.CFrame * cframe(0,0,-15).Position end
									sound(386946017,2,1,vtorso,0,false)
									hiteffect("sphere",vtorso)
									if not overdrive then
										if vhum.Health > 7.4 then
											local creator = new("ObjectValue")
											creator.Name = "creator"
											creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
											creator.Parent = vhum
											debris:AddItem(creator, 2)
											vhum:TakeDamage(7.4)
										end
									else
										if vhum.Health > 15 then
											local creator = new("ObjectValue")
											creator.Name = "creator"
											creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
											creator.Parent = vhum
											debris:AddItem(creator, 2)
											vhum:TakeDamage(15)
										end
									end
								end
							end))
						end
					end)
					task.wait(0.225)
					frame = 3
					task.wait(0.125)
					anim = "shizumi"
					frame = 1
					local flare = new("Part")
					local flarew = new("Weld")
					flare.Name = "Flare"
					flare.Parent = script
					flare.Size = vect3(0.5,0.5,0.5)
					flare.Transparency = 1
					flare.CanTouch = false
					flare.CanCollide = false
					flare.Locked = true
					flarew.Parent = flare
					flarew.C0 = cframe(0,1,0)
					flarew.Part0 = flare
					flarew.Part1 = la
					local fire = new("Fire")
					fire.Parent = flare
					fire.Size = 6
					fire.Heat = 10
					fire.Color = color(1, 0.333333, 0)
					fire.SecondaryColor = color(0.666667, 0.333333, 0)
					sound(3518168170,3,1,flare,0,false)
					super(1)
					task.wait(1.3)	
					frame = 2
					flarew:Destroy()
					sound(743521549,2,1,la,0.025,false)
					sound(3518146972,3,1,flare,0,false)
					local bpos = new("BodyPosition")
					bpos.Name = "ShizumiMove"
					bpos.Parent = flare
					bpos.MaxForce = vect3(39999,39999,39999)
					bpos.D = 1500
					bpos.Position = root.CFrame * cframe(0,0,-45).Position
					task.wait(1)
					fire.Enabled = false
					debris:AddItem(flare,3)
					spawn(function()
						for i = 1, #targets do
							coroutine.resume(coroutine.create(function()
								local v = targets[i]
								local vtorso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso") or v:FindFirstChild("HumanoidRootPart")
								if v ~= nil then
									if vtorso:FindFirstChild("ShizumiHitBy") then vtorso:FindFirstChild("ShizumiHitBy"):Destroy() end
									local bpos = new("BodyPosition")
									bpos.Name = "ShizumiHitBy"
									bpos.Parent = vtorso
									bpos.MaxForce = vect3(39999,39999,39999)
									bpos.D = 3500
									bpos.Position = root.CFrame * cframe(0,0,-200).Position
								end
							end))
						end
					end)
					spawn(function()
						local pos = root.CFrame
						local direction = pos.lookVector
						for i=1, 25 do
							local posit = pos+(direction*i*8)
							local gfp = new("Part")
							local gfpm = new("SpecialMesh")
							local gfp0 = new("Part")
							local gfpm0 = new("SpecialMesh")
							local gfp1 = new("Part")
							local gfpm1 = new("SpecialMesh")
							local gfp2 = new("Part")
							local gfpm2 = new("SpecialMesh")
							gfp2.Parent = script
							gfp2.Transparency = 0.05
							gfp2.Size = vect3(1, 1, 1)
							gfp2.Anchored = true
							gfp2.BottomSurface = Enum.SurfaceType.Smooth
							gfp2.BrickColor = bc("Br. yellowish orange")
							gfp2.CanCollide = false
							gfp2.TopSurface = Enum.SurfaceType.Smooth
							gfpm2.Parent = gfp2
							gfpm2.MeshId = "rbxassetid://20329976"
							gfpm2.Scale = vect3(3, 3, 3)
							gfpm2.MeshType = Enum.MeshType.FileMesh
							gfp.Name = "Part1"
							gfp.Parent = gfp2
							gfp.Transparency = 0.25
							gfp.Size = vect3(1, 1, 1)
							gfp.Anchored = true
							gfp.BottomSurface = Enum.SurfaceType.Smooth
							gfp.BrickColor = bc("Bright red")
							gfp.CanCollide = false
							gfp.TopSurface = Enum.SurfaceType.Smooth
							gfpm.Parent = gfp
							gfpm.MeshId = "rbxassetid://20329976"
							gfpm.Scale = vect3(3.5, 3.5, 3.5)
							gfpm.MeshType = Enum.MeshType.FileMesh
							gfp0.Name = "gfp0"
							gfp0.Parent = gfp2
							gfp0.Transparency = 0.25
							gfp0.Size = vect3(2.5, 5, 2.5)
							gfp0.Anchored = true
							gfp0.BottomSurface = Enum.SurfaceType.Smooth
							gfp0.BrickColor = bc("Maroon")
							gfp0.CanCollide = false
							gfp0.TopSurface = Enum.SurfaceType.Smooth
							gfpm0.Parent = gfp0
							gfpm0.MeshType = Enum.MeshType.Sphere
							gfp1.Name = "Part3"
							gfp1.Parent = gfp2
							gfp1.Transparency = 0.05
							gfp1.Size = vect3(2, 2.5, 2)
							gfp1.Anchored = true
							gfp1.BottomSurface = Enum.SurfaceType.Smooth
							gfp1.BrickColor = bc("Neon orange")
							gfp1.CanCollide = false
							gfp1.TopSurface = Enum.SurfaceType.Smooth
							gfpm1.Parent = gfp1
							gfpm1.MeshType = Enum.MeshType.Sphere
							gfp.Material = "Neon"
							gfp2.Material = "Neon"
							gfp0.Material = "Neon"
							gfp1.Material = "Neon"
							gfp2.CFrame = cframe(posit.x,posit.y-1.5,posit.z-1.5)
							gfp.CFrame = cframe(posit.x,posit.y-1.5,posit.z-1.5)
							gfp0.CFrame = cframe(posit.x,posit.y-1.5,posit.z-1.5)
							gfp1.CFrame = cframe(posit.x,posit.y-1.5,posit.z-1.5)
							gfp.CanTouch = false
							gfp0.CanTouch = false
							gfp1.CanTouch = false
							gfp2.CanTouch = false
							sound(5129337934,1,1,gfp0,0,false)
							local tween = tweens:Create(gfp2,TweenInfo.new(1.15,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Transparency = 1})
							tween:Play()
							local tweenM = tweens:Create(gfpm2,TweenInfo.new(1.15,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Scale = vect3(15,0.05,15),Offset = vect3(0,-1.5,-1)})
							tweenM:Play()
							local tween1 = tweens:Create(gfp,TweenInfo.new(1.15,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Transparency = 1})
							tween1:Play()
							local tweenM1 = tweens:Create(gfpm,TweenInfo.new(1.15,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Scale = vect3(17.5,0.025,17.5),Offset = vect3(0,-1.5,-1)})
							tweenM1:Play()
							local tween2 = tweens:Create(gfp0,TweenInfo.new(1.15,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{CFrame = gfp0.CFrame * CFrame.Angles(0,math.rad(180),0),Size = vect3(3,45,3),Transparency = 1})
							tween2:Play()
							local tween3 = tweens:Create(gfp1,TweenInfo.new(1.15,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{CFrame = gfp0.CFrame * CFrame.Angles(0,math.rad(180),0),Size = vect3(2.75,35,2.75),Transparency = 1})
							tween3:Play()
							tween.Completed:Connect(function() gfp2:Destroy()end)
							tween1.Completed:Connect(function() gfp:Destroy() end)
							tween2.Completed:Connect(function() gfp0:Destroy()end)
							tween3.Completed:Connect(function() gfp1:Destroy() end)
							task.wait(.1)
						end
					end)
					task.wait(2)
					spawn(function()
						for i = 1, #targets do
							coroutine.resume(coroutine.create(function()
								local v = targets[i]
								local vtorso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso") or v:FindFirstChild("HumanoidRootPart")
								if v ~= nil then
									if vtorso:FindFirstChild("ShizumiHitBy") then vtorso:FindFirstChild("ShizumiHitBy"):Destroy() end
									local pos = vtorso.CFrame
									local bp = new("Part")
									local bpm = new("SpecialMesh")
									local bp0 = new("Part")
									local bpm0 = new("SpecialMesh")
									local bp1 = new("Part")
									local bpm1 = new("SpecialMesh")
									local bp2 = new("Part")
									local bpm2 = new("SpecialMesh")
									bp2.Parent = script
									bp2.Transparency = 0.05
									bp2.Size = vect3(1, 1, 1)
									bp2.Anchored = true
									bp2.BottomSurface = Enum.SurfaceType.Smooth
									bp2.BrickColor = bc("Br. yellowish orange")
									bp2.CanCollide = false
									bp2.TopSurface = Enum.SurfaceType.Smooth
									bpm2.Parent = bp2
									bpm2.MeshId = "rbxassetid://20329976"
									bpm2.Scale = vect3(3, 3, 3)
									bpm2.MeshType = Enum.MeshType.FileMesh
									bp.Name = "Part1"
									bp.Parent = bp2
									bp.Color = color(0.768627, 0.156863, 0.109804)
									bp.Transparency = 0.25
									bp.Size = vect3(1, 1, 1)
									bp.Anchored = true
									bp.BottomSurface = Enum.SurfaceType.Smooth
									bp.BrickColor = bc("Bright red")
									bp.CanCollide = false
									bp.TopSurface = Enum.SurfaceType.Smooth
									bpm.Parent = bp
									bpm.MeshId = "rbxassetid://20329976"
									bpm.Scale = vect3(3.5, 3.5, 3.5)
									bpm.MeshType = Enum.MeshType.FileMesh
									bp0.Name = "bp0"
									bp0.Parent = bp2
									bp0.Transparency = 0.25
									bp0.Size = vect3(2.5, 5, 2.5)
									bp0.Anchored = true
									bp0.BottomSurface = Enum.SurfaceType.Smooth
									bp0.BrickColor = bc("Maroon")
									bp0.CanCollide = false
									bp0.TopSurface = Enum.SurfaceType.Smooth
									bpm0.Parent = bp0
									bpm0.MeshType = Enum.MeshType.Sphere
									bp1.Name = "Part3"
									bp1.Parent = bp2
									bp1.Transparency = 0.05
									bp1.Size = vect3(2, 2.5, 2)
									bp1.Anchored = true
									bp1.BottomSurface = Enum.SurfaceType.Smooth
									bp1.BrickColor = bc("Neon orange")
									bp1.CanCollide = false
									bp1.TopSurface = Enum.SurfaceType.Smooth
									bpm1.Parent = bp1
									bpm1.MeshType = Enum.MeshType.Sphere
									bp.Material = "Neon"
									bp2.Material = "Neon"
									bp0.Material = "Neon"
									bp1.Material = "Neon"
									bp2.CFrame = cframe(pos.x,pos.y-1.5,pos.z-1.5)
									bp.CFrame = cframe(pos.x,pos.y-1.5,pos.z-1.5)
									bp0.CFrame = cframe(pos.x,pos.y-1.5,pos.z-1.5)
									bp1.CFrame = cframe(pos.x,pos.y-1.5,pos.z-1.5)
									sound(17773030827,3,1,bp0,0,false)
									local tween = tweens:Create(bp2,TweenInfo.new(2,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Transparency = 1})
									tween:Play()
									local tweenM = tweens:Create(bpm2,TweenInfo.new(2,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Scale = vect3(15,0.025,15),Offset = vect3(0,-1.5,-1)})
									tweenM:Play()
									local tween1 = tweens:Create(bp,TweenInfo.new(2,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Transparency = 1})
									tween1:Play()
									local tweenM1 = tweens:Create(bpm,TweenInfo.new(2,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Scale = vect3(17.5,0.015,17.5),Offset = vect3(0,-1.5,-1)})
									tweenM1:Play()
									local tween2 = tweens:Create(bp0,TweenInfo.new(2,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{CFrame = bp0.CFrame * angles(0,rad(180),0),Size = vect3(7.5,60,7.5),Transparency = 1})
									tween2:Play()
									local tween3 = tweens:Create(bp1,TweenInfo.new(2,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{CFrame = bp0.CFrame * angles(0,rad(180),0),Size = vect3(5,45,5),Transparency = 1})
									tween3:Play()
									tween.Completed:Connect(function() bp2:Destroy()end)
									tween1.Completed:Connect(function() bp:Destroy() end)
									tween2.Completed:Connect(function() bp0:Destroy()end)
									tween3.Completed:Connect(function() bp1:Destroy() end)
									hiteffect("boom",vtorso)
									local fire = new("Fire")
									fire.Parent = vtorso
									fire.Size = 10
									fire.Heat = 25
									sound(303632290,5,1,vtorso,0,true)
									instantkill(v,true)
									vtorso.Velocity = root.CFrame.lookVector*50 + root.CFrame.upVector*450
								end
							end))
						end
					end)
					if game.PlaceId == 11510416200 or game.PlaceId == 126783576555525 or game.PlaceId == 89201052571047 or game.PlaceId == 79868761121850 then
						sound(79887722971140,4.5,1,torso,52.075,false,true,2.4)
					else
						sound(17592192684,1.5,1,torso,0,false)
					end
					spawn(function()
						local flash = new("ScreenGui")
						flash.Parent = pgui
						local frame = new("Frame")
						frame.Parent = flash
						frame.Size = udim2(1,0,1,0)
						frame.BackgroundColor3 = color(1,1,1)
						frame.BackgroundTransparency = 0
						local death = new("ImageLabel")
						death.Parent = flash
						death.Position = udim2(0.286, 0, 0.1, 0)
						death.Size = udim2(0, 450, 0, 450)
						death.BackgroundTransparency = 1
						death.Image = "rbxassetid://12472046162"
						spawn(function()
							for i = 1,45 do
								task.wait()
								frame.BackgroundTransparency = frame.BackgroundTransparency + 1/45
								death.ImageTransparency = death.ImageTransparency + 1/45
							end
						end)
						debris:AddItem(flash, 5)
						task.wait(0.5)
						sound(17561469788,3,1,torso,0,false)
					end)
				end
				hum.JumpPower = ogjp
				hum.JumpHeight = ogjh
				attack = false	
			end
			task.wait(1)
			hum.WalkSpeed = ogws
			hum.JumpPower = ogjp
			hum.JumpHeight = ogjh
			attack = false
		end
	end;
	["overdrive"] = function()
		if not (attack or guarding or hurt or hum.Sit == true or sitting or lying) then
			keycombo = ""
			if overdrive then return end
			attack = true
			hum.WalkSpeed = 0
			hum.JumpPower = 0
			hum.JumpHeight = 0
			anim = "overdrive"
			task.wait(0.125)
			chatter("Let's get this over with.")
			if game.PlaceId == 11510416200 or game.PlaceId == 126783576555525 or game.PlaceId == 89201052571047 or game.PlaceId == 79868761121850 then
				if voices then
					if not dresst then
						sound(105094738430794,3,1.2,head,36.85,false,true,1.062)
					else
						sound(105094738430794,3,1.45,head,36.85,false,true,0.88)
					end
				end
			end
			local highlight = new("Highlight")
			highlight.Parent = char
			highlight.Name = "OverdriveHighlight"
			highlight.OutlineTransparency = 1
			highlight.FillTransparency = 1
			highlight.FillColor = color(1, 0.333333, 0)
			highlight.OutlineColor = color(0.666667, 0.333333, 0)
			tweens:Create(highlight, TweenInfo.new(0.45), {FillTransparency = 0.875}):Play()
			tweens:Create(highlight, TweenInfo.new(0.45), {OutlineTransparency = 0.3}):Play()
			overdrive = true
			spawn(function()
				for i = 1, 18 do
					local shard = new("Part")
					local shardm = new("SpecialMesh")
					shard.Name = "Shard"
					shard.Parent = script
					shard.Transparency = 0
					shard.Size = vect3(1, 0.4, 1)
					shard.BrickColor = bc("Neon orange")
					shard.CanCollide = false
					shard.CanTouch = false
					shard.Anchored = true
					shard.Locked = true
					shardm.Parent = shard
					shardm.MeshId = "http://www.roblox.com/asset/?id=9547466"
					shardm.Scale =vect3(1, 2, 1)
					shard.CFrame = root.CFrame*cframe(random(-2,2), -3, random(-2,2))
					local fire = new("Fire")
					fire.Parent = shard
					tweens:Create(shardm, TweenInfo.new(0.25), {Scale = vect3(0.1, 10, 0.1)}):Play()
					local tween = tweens:Create(shard, TweenInfo.new(0.25), {CFrame = shard.CFrame * cframe(0,10,0), Transparency = 1})
					tween:Play()
					tween.Completed:Connect(function() fire.Enabled = false task.wait(2.5) shard:Destroy() end)
					task.wait(0.045)
				end
			end)
			local wings = nil
			spawn(function()
				--guilty gear moment
				if game.PlaceId == 11510416200 or game.PlaceId == 126783576555525 or game.PlaceId == 89201052571047 or game.PlaceId == 79868761121850 then
					sound(79887722971140,4.5,1,torso,54.48,false,true,1.45)
				else
					sound(153092315,2.5,1.1,root,0,false)
				end
				spawn(function()
					wings = new("Model")
					local wing1 = new("Part")
					local Weld3 = new("Weld")
					local Weld4 = new("Weld")
					local Weld5 = new("Weld")
					local Weld6 = new("Weld")
					local Weld7 = new("Weld")
					local Weld8 = new("Weld")
					local Weld9 = new("Weld")
					local Weld10 = new("Weld")
					local Weld11 = new("Weld")
					local Weld12 = new("Weld")
					local Weld13 = new("Weld")
					local Weld14 = new("Weld")
					local Weld15 = new("Weld")
					local wing16 = new("Part")
					local SpecialMesh17 = new("SpecialMesh")
					local wing18 = new("Part")
					local SpecialMesh19 = new("SpecialMesh")
					local wing20 = new("Part")
					local SpecialMesh21 = new("SpecialMesh")
					local wing22 = new("Part")
					local SpecialMesh23 = new("SpecialMesh")
					local wing24 = new("Part")
					local SpecialMesh25 = new("SpecialMesh")
					local wing26 = new("Part")
					local SpecialMesh27 = new("SpecialMesh")
					local wing28 = new("Part")
					local SpecialMesh29 = new("SpecialMesh")
					local wing30 = new("Part")
					local SpecialMesh31 = new("SpecialMesh")
					local wing32 = new("Part")
					local SpecialMesh33 = new("SpecialMesh")
					local wing34 = new("Part")
					local SpecialMesh35 = new("SpecialMesh")
					local wing36 = new("Part")
					local SpecialMesh37 = new("SpecialMesh")
					local Weld38 = new("Weld")
					local wing39 = new("Part")
					local SpecialMesh40 = new("SpecialMesh")
					local wing41 = new("Part")
					local SpecialMesh42 = new("SpecialMesh")
					local wing43 = new("Part")
					local SpecialMesh44 = new("SpecialMesh")
					wings.Name = "Wings"
					wings.Parent = script
					wing1.Name = "Middle"
					wing1.Parent = wings
					wing1.Transparency = 1
					wing1.Size = vect3(0.001, 0.001, 0.001)
					wing1.CanTouch = false
					wing1.CanCollide = false
					Weld3.Parent = wing1
					Weld3.C0 = cframe(0, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
					Weld3.C1 = cframe(3.88124084, 1.39083862, 1, 7.28236884e-08, -0.555578709, 0.831464052, 3.61461403e-08, 0.831463993, 0.555578709, -1, -1.04050839e-08, 8.06323044e-08)
					Weld3.Part0 = wing1
					Weld3.Part1 = wing16
					Weld3.Part1 = wing16
					Weld4.Parent = wing1
					Weld4.C0 = cframe(0, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
					Weld4.C1 = cframe(2.5, -0.999999285, 1, 0, 0, 1, 0, 1, -0, -1, 0, 0)
					Weld4.Part0 = wing1
					Weld4.Part1 = wing18
					Weld4.Part1 = wing18
					Weld5.Parent = wing1
					Weld5.C0 = cframe(0, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
					Weld5.C1 = cframe(-4.99236298, 1.97290802, 1, 6.17251104e-08, 0.55557853, 0.831464171, -1.15937766e-08, 0.831464171, -0.55557853, -1, 2.46533105e-08, 5.77634651e-08)
					Weld5.Part0 = wing1
					Weld5.Part1 = wing20
					Weld5.Part1 = wing20
					Weld6.Parent = wing1
					Weld6.C0 = cframe(0, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
					Weld6.C1 = cframe(-3.99999237, -0.300000191, 1, 0, 0, 1, 0, 1, -0, -1, 0, 0)
					Weld6.Part0 = wing1
					Weld6.Part1 = wing22
					Weld6.Part1 = wing22
					Weld7.Parent = wing1
					Weld7.C0 = cframe(0, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
					Weld7.C1 = cframe(1.5, 0.199999809, 1, 0, 0, 1, 0, 1, -0, -1, 0, 0)
					Weld7.Part0 = wing1
					Weld7.Part1 = wing24
					Weld7.Part1 = wing24
					Weld8.Parent = wing1
					Weld8.C0 = cframe(0, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
					Weld8.C1 = cframe(2.38311768, 1.83300781, 1, 7.28236884e-08, -0.555578709, 0.831464052, 3.61461403e-08, 0.831463993, 0.555578709, -1, -1.04050839e-08, 8.06323044e-08)
					Weld8.Part0 = wing1
					Weld8.Part1 = wing26
					Weld8.Part1 = wing26
					Weld9.Parent = wing1
					Weld9.C0 = cframe(0, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
					Weld9.C1 = cframe(-2.99999237, 1.20000005, 1, 0, 0, 1, 0, 1, -0, -1, 0, 0)
					Weld9.Part0 = wing1
					Weld9.Part1 = wing28
					Weld9.Part1 = wing28
					Weld10.Parent = wing1
					Weld10.C0 = cframe(0, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
					Weld10.C1 = cframe(-3.32762146, 2.66455078, 1, 6.17251104e-08, 0.55557853, 0.831464171, -1.15937766e-08, 0.831464171, -0.55557853, -1, 2.46533105e-08, 5.77634651e-08)
					Weld10.Part0 = wing1
					Weld10.Part1 = wing30
					Weld10.Part1 = wing30
					Weld11.Parent = wing1
					Weld11.C0 = cframe(0, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
					Weld11.C1 = cframe(-3.29999995, 3.80000305, -1, 0, 1, 0, 0, 0, 1, 1, 0, 0)
					Weld11.Part0 = wing1
					Weld11.Part1 = wing32
					Weld11.Part1 = wing32
					Weld12.Parent = wing1
					Weld12.C0 = cframe(0, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
					Weld12.C1 = cframe(-3.60765076, 2.15945435, -0.999992371, 5.77637813e-08, 0.831471741, -0.555567205, 2.46561509e-08, 0.555567205, 0.831471741, 1, -6.17270572e-08, 1.15907541e-08)
					Weld12.Part0 = wing1
					Weld12.Part1 = wing34
					Weld12.Part1 = wing34
					Weld13.Parent = wing1
					Weld13.C0 = cframe(0, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
					Weld13.C1 = cframe(2, 0.799999714, -1, 0, 0, -1, 0, 1, 0, 1, 0, 0)
					Weld13.Part0 = wing1
					Weld13.Part1 = wing39
					Weld13.Part1 = wing39
					Weld14.Parent = wing1
					Weld14.C0 = cframe(0, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
					Weld14.C1 = cframe(-3.91383362, 3.15773773, 1, 7.28265519e-08, 0.831475258, 0.55556196, 3.61485881e-08, 0.55556196, -0.831475198, -1, 8.06362124e-08, 1.04030002e-08)
					Weld14.Part0 = wing1
					Weld14.Part1 = wing41
					Weld14.Part1 = wing41
					Weld15.Parent = wing1
					Weld15.C0 = cframe(0, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
					Weld15.C1 = cframe(-2.99999976, 4.79998779, 1, 0, 1, 0, 0, 0, -1, -1, 0, 0)
					Weld15.Part0 = wing1
					Weld15.Part1 = wing43
					Weld15.Part1 = wing43
					wing16.Name = "Handle"
					wing16.Parent = wings
					wing16.Transparency = 1
					wing16.Size = vect3(0.001, 0.001, 0.001)
					wing16.BottomSurface = Enum.SurfaceType.Smooth
					wing16.BrickColor = bc("Really red")
					wing16.CanCollide = false
					wing16.FrontSurface = Enum.SurfaceType.Weld
					wing16.Reflectance = 0.20000000298023224
					wing16.TopSurface = Enum.SurfaceType.Smooth
					wing16.brickColor = bc("Really red")
					SpecialMesh17.Parent = wing16
					SpecialMesh17.MeshId = "http://www.roblox.com/asset/?id=1172117"
					SpecialMesh17.Scale = vect3(3, 1.2999999523162842, 0.10000000149011612)
					SpecialMesh17.MeshType = Enum.MeshType.FileMesh
					wing18.Name = "Handle"
					wing18.Parent = wings
					wing18.Transparency = 1
					wing18.Size = vect3(0.001, 0.001, 0.001)
					wing18.BottomSurface = Enum.SurfaceType.Smooth
					wing18.BrickColor = bc("Really red")
					wing18.CanCollide = false
					wing18.FrontSurface = Enum.SurfaceType.Weld
					wing18.Reflectance = 0.20000000298023224
					wing18.TopSurface = Enum.SurfaceType.Smooth
					wing18.brickColor = bc("Really red")
					SpecialMesh19.Parent = wing18
					SpecialMesh19.MeshId = "http://www.roblox.com/asset/?id=1172117"
					SpecialMesh19.Scale = vect3(3, 1.2999999523162842, 0.10000000149011612)
					SpecialMesh19.MeshType = Enum.MeshType.FileMesh
					wing20.Name = "Handle"
					wing20.Parent = wings
					wing20.Transparency = 1
					wing20.Size = vect3(0.001, 0.001, 0.001)
					wing20.BottomSurface = Enum.SurfaceType.Smooth
					wing20.BrickColor = bc("Really red")
					wing20.CanCollide = false
					wing20.FrontSurface = Enum.SurfaceType.Weld
					wing20.Reflectance = 0.20000000298023224
					wing20.TopSurface = Enum.SurfaceType.Smooth
					wing20.brickColor = bc("Really red")
					SpecialMesh21.Parent = wing20
					SpecialMesh21.MeshId = "http://www.roblox.com/asset/?id=1172117"
					SpecialMesh21.Scale = vect3(3, 1.2999999523162842, 0.10000000149011612)
					SpecialMesh21.MeshType = Enum.MeshType.FileMesh
					wing22.Name = "Handle"
					wing22.Parent = wings
					wing22.Transparency = 1
					wing22.Size = vect3(0.001, 0.001, 0.001)
					wing22.BottomSurface = Enum.SurfaceType.Smooth
					wing22.BrickColor = bc("Really red")
					wing22.CanCollide = false
					wing22.FrontSurface = Enum.SurfaceType.Weld
					wing22.Reflectance = 0.20000000298023224
					wing22.TopSurface = Enum.SurfaceType.Smooth
					wing22.brickColor = bc("Really red")
					SpecialMesh23.Parent = wing22
					SpecialMesh23.MeshId = "http://www.roblox.com/asset/?id=1172117"
					SpecialMesh23.Scale = vect3(3, 1.2999999523162842, 0.10000000149011612)
					SpecialMesh23.MeshType = Enum.MeshType.FileMesh
					wing24.Name = "Handle"
					wing24.Parent = wings
					wing24.Transparency = 1
					wing24.Size = vect3(0.001, 0.001, 0.001)
					wing24.BottomSurface = Enum.SurfaceType.Smooth
					wing24.BrickColor = bc("Really red")
					wing24.CanCollide = false
					wing24.FrontSurface = Enum.SurfaceType.Weld
					wing24.Reflectance = 0.20000000298023224
					wing24.TopSurface = Enum.SurfaceType.Smooth
					wing24.brickColor = bc("Really red")
					SpecialMesh25.Parent = wing24
					SpecialMesh25.MeshId = "http://www.roblox.com/asset/?id=1172117"
					SpecialMesh25.Scale = vect3(3, 1.2999999523162842, 0.10000000149011612)
					SpecialMesh25.MeshType = Enum.MeshType.FileMesh
					wing26.Name = "Handle"
					wing26.Parent = wings
					wing26.Transparency = 1
					wing26.Size = vect3(0.001, 0.001, 0.001)
					wing26.BottomSurface = Enum.SurfaceType.Smooth
					wing26.BrickColor = bc("Really red")
					wing26.CanCollide = false
					wing26.FrontSurface = Enum.SurfaceType.Weld
					wing26.Reflectance = 0.20000000298023224
					wing26.TopSurface = Enum.SurfaceType.Smooth
					wing26.brickColor = bc("Really red")
					SpecialMesh27.Parent = wing26
					SpecialMesh27.MeshId = "http://www.roblox.com/asset/?id=1172117"
					SpecialMesh27.Scale = vect3(3, 1.2999999523162842, 0.10000000149011612)
					SpecialMesh27.MeshType = Enum.MeshType.FileMesh
					wing28.Name = "Handle"
					wing28.Parent = wings
					wing28.Transparency = 1
					wing28.Size = vect3(0.001, 0.001, 0.001)
					wing28.BottomSurface = Enum.SurfaceType.Smooth
					wing28.BrickColor = bc("Really red")
					wing28.CanCollide = false
					wing28.FrontSurface = Enum.SurfaceType.Weld
					wing28.Reflectance = 0.20000000298023224
					wing28.TopSurface = Enum.SurfaceType.Smooth
					wing28.brickColor = bc("Really red")
					SpecialMesh29.Parent = wing28
					SpecialMesh29.MeshId = "http://www.roblox.com/asset/?id=1172117"
					SpecialMesh29.Scale = vect3(3, 1.2999999523162842, 0.10000000149011612)
					SpecialMesh29.MeshType = Enum.MeshType.FileMesh
					wing30.Name = "Handle"
					wing30.Parent = wings
					wing30.Transparency = 1
					wing30.Size = vect3(0.001, 0.001, 0.001)
					wing30.BottomSurface = Enum.SurfaceType.Smooth
					wing30.BrickColor = bc("Really red")
					wing30.CanCollide = false
					wing30.FrontSurface = Enum.SurfaceType.Weld
					wing30.Reflectance = 0.20000000298023224
					wing30.TopSurface = Enum.SurfaceType.Smooth
					wing30.brickColor = bc("Really red")
					SpecialMesh31.Parent = wing30
					SpecialMesh31.MeshId = "http://www.roblox.com/asset/?id=1172117"
					SpecialMesh31.Scale = vect3(3, 1.2999999523162842, 0.10000000149011612)
					SpecialMesh31.MeshType = Enum.MeshType.FileMesh
					wing32.Name = "Handle"
					wing32.Parent = wings
					wing32.Transparency = 1
					wing32.Size = vect3(0.001, 0.001, 0.001)
					wing32.BottomSurface = Enum.SurfaceType.Smooth
					wing32.BrickColor = bc("Really red")
					wing32.CanCollide = false
					wing32.FrontSurface = Enum.SurfaceType.Weld
					wing32.Reflectance = 0.20000000298023224
					wing32.TopSurface = Enum.SurfaceType.Smooth
					wing32.brickColor = bc("Really red")
					SpecialMesh33.Parent = wing32
					SpecialMesh33.MeshId = "http://www.roblox.com/asset/?id=1172117"
					SpecialMesh33.Scale = vect3(3, 1.2999999523162842, 0.10000000149011612)
					SpecialMesh33.MeshType = Enum.MeshType.FileMesh
					wing34.Name = "Handle"
					wing34.Parent = wings
					wing34.Transparency = 1
					wing34.Size = vect3(0.001, 0.001, 0.001)
					wing34.BottomSurface = Enum.SurfaceType.Smooth
					wing34.BrickColor = bc("Really red")
					wing34.CanCollide = false
					wing34.FrontSurface = Enum.SurfaceType.Weld
					wing34.Reflectance = 0.20000000298023224
					wing34.TopSurface = Enum.SurfaceType.Smooth
					wing34.brickColor = bc("Really red")
					SpecialMesh35.Parent = wing34
					SpecialMesh35.MeshId = "http://www.roblox.com/asset/?id=1172117"
					SpecialMesh35.Scale = vect3(3, 1.2999999523162842, 0.10000000149011612)
					SpecialMesh35.MeshType = Enum.MeshType.FileMesh
					wing36.Name = "Handle"
					wing36.Parent = wings
					wing36.Transparency = 1
					wing36.Size = vect3(0.001, 0.001, 0.001)
					wing36.BottomSurface = Enum.SurfaceType.Smooth
					wing36.BrickColor = bc("Really red")
					wing36.CanCollide = false
					wing36.FrontSurface = Enum.SurfaceType.Weld
					wing36.Reflectance = 0.20000000298023224
					wing36.TopSurface = Enum.SurfaceType.Weld
					wing36.brickColor = bc("Really red")
					SpecialMesh37.Parent = wing36
					SpecialMesh37.MeshId = "http://www.roblox.com/asset/?id=1172117"
					SpecialMesh37.Scale = vect3(3, 1.2999999523162842, 0.10000000149011612)
					SpecialMesh37.MeshType = Enum.MeshType.FileMesh
					Weld38.Parent = wing36
					Weld38.C0 = cframe(0, 0, -0.5, -1, 0, 0, 0, 1, 0, 0, 0, -1)
					Weld38.C1 = cframe(-0.5, -0.799999952, 0.5, -1, 0, 0, 0, 1, 0, 0, 0, -1)
					Weld38.Part0 = wing36
					Weld38.Part1 = wing1
					Weld38.Part1 = wing1
					wing39.Name = "Handle"
					wing39.Parent = wings
					wing39.Transparency = 1
					wing39.Size = vect3(0.001, 0.001, 0.001)
					wing39.BottomSurface = Enum.SurfaceType.Smooth
					wing39.BrickColor = bc("Really red")
					wing39.CanCollide = false
					wing39.FrontSurface = Enum.SurfaceType.Weld
					wing39.Reflectance = 0.20000000298023224
					wing39.TopSurface = Enum.SurfaceType.Weld
					wing39.brickColor = bc("Really red")
					SpecialMesh40.Parent = wing39
					SpecialMesh40.MeshId = "http://www.roblox.com/asset/?id=1172117"
					SpecialMesh40.Scale = vect3(3, 1.2999999523162842, 0.10000000149011612)
					SpecialMesh40.MeshType = Enum.MeshType.FileMesh
					wing41.Name = "Handle"
					wing41.Parent = wings
					wing41.Transparency = 1
					wing41.Size = vect3(0.001, 0.001, 0.001)
					wing41.BottomSurface = Enum.SurfaceType.Smooth
					wing41.BrickColor = bc("Really red")
					wing41.CanCollide = false
					wing41.FrontSurface = Enum.SurfaceType.Weld
					wing41.Reflectance = 0.20000000298023224
					wing41.TopSurface = Enum.SurfaceType.Smooth
					wing41.brickColor = bc("Really red")
					SpecialMesh42.Parent = wing41
					SpecialMesh42.MeshId = "http://www.roblox.com/asset/?id=1172117"
					SpecialMesh42.Scale = vect3(3, 1.2999999523162842, 0.10000000149011612)
					SpecialMesh42.MeshType = Enum.MeshType.FileMesh
					wing43.Name = "Handle"
					wing43.Parent = wings
					wing43.Transparency = 1
					wing43.Size = vect3(0.001, 0.001, 0.001)
					wing43.BottomSurface = Enum.SurfaceType.Smooth
					wing43.BrickColor = bc("Really red")
					wing43.CanCollide = false
					wing43.FrontSurface = Enum.SurfaceType.Weld
					wing43.Reflectance = 0.20000000298023224
					wing43.TopSurface = Enum.SurfaceType.Smooth
					wing43.brickColor = bc("Really red")
					SpecialMesh44.Parent = wing43
					SpecialMesh44.MeshId = "http://www.roblox.com/asset/?id=1172117"
					SpecialMesh44.Scale = vect3(3, 1.2999999523162842, 0.10000000149011612)
					SpecialMesh44.MeshType = Enum.MeshType.FileMesh
					local weld = new("Weld")
					weld.Part0 = torso
					weld.Part1 = wing1
					weld.Parent = torso
					for i,v in pairs(wings:GetDescendants()) do
						if v:IsA("BasePart")  then
							v.CanTouch = false
							v.Locked = true
							v.CanCollide = false
							v.Massless = true
							local tween = tweens:Create(v, TweenInfo.new(3), {Transparency = 0.2})
							tween:Play()
						end
					end
				end)
				local judas = true
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
					spellcd.Texture = "http://www.roblox.com/asset/?id=986913394"
					spellcd.Face = Enum.NormalId.Top
					spellcd.Transparency = 1
					spellcl.Parent = spellc
					spellcl.Brightness = 1.75
					spellcl.Range = 15
					spellcl.Color = color(1, 0.333333, 0)
					local tween = tweens:Create(spellcd, TweenInfo.new(1), {Transparency = 0})
					tween:Play()
					local angle = 0
					while judas do
						wait()
						angle = angle + 15
						if overdrive then
							spellc.CFrame = root.CFrame * cframe(0, -3, 0) * angles(0, rad(angle), 0)
						else
							if spellcd.Transparency < 1 then
								if spellc ~= nil then
									spellcd.Transparency = spellcd.Transparency + 0.05
								end
							else
								spellc:Destroy()
								judas = false
								break							
							end
						end
					end
				end)
			end)
			task.wait(1.5)
			spawn(function()
				task.wait(60)
				for i,v in pairs(wings:GetDescendants()) do
					if v:IsA("BasePart") then
						local tween = tweens:Create(v, TweenInfo.new(0.25), {Transparency = 1})
						tween:Play()
					end
				end
				tweens:Create(highlight, TweenInfo.new(0.45), {FillTransparency = 1}):Play()
				tweens:Create(highlight, TweenInfo.new(0.45), {OutlineTransparency = 1}):Play()
				overdrive = false
				task.wait(0.45)
				wings:Destroy()
				highlight:Destroy()
			end)
			hum.WalkSpeed = ogws
			hum.JumpPower = ogjp
			hum.JumpHeight = ogjh
			attack = false
		end
	end;
}

--key stuff
mouse.KeyDown:connect(function(key)
	keycombotime = tick()
	if key == "leftcontrol" and not (ducking or hum.Sit == true or sitting or lying) then
		hum.WalkSpeed = 0
		hum.JumpPower = 0
		hum.JumpHeight = 0
		ducking = true
	end
	if key == "2" and not (ducking or hum.Sit == true or sitting or lying) then
		hum.WalkSpeed = 0
		hum.JumpPower = 0
		hum.JumpHeight = 0
		ducking = true
	end
	if key == "r" and not (attack or guarding or hurt or hum.Sit == true or sitting or lying) then
		hum.WalkSpeed = 0
		guarding = true
	end
	if key == "leftshift" and not (attack or ducking or guarding or hurt or hum.Sit == true or sitting or lying) then
		hum.WalkSpeed = 75
	end
	if key == "0" and not (attack or ducking or guarding or hurt or hum.Sit == true or sitting or lying) then
		hum.WalkSpeed = 75
	end
	if key == "g" and not (attack or guarding or hurt or hum.Sit == true or sitting or lying) then
		if not holdingw then
			emote("Taunt")
		else
			emote("Respect")
		end
	end	
	if key == "b" and not (attack or guarding or hurt or hum.Sit == true or sitting or lying) then
		emote("Sit")
	end	
	if key == "b" and (attack or sitting) and not (guarding or hum.Sit == true or lying) then
		sitting = false
	end	
	if key == "n" and not (attack or guarding or hurt or hum.Sit == true or sitting or lying) then
		emote("Liedown")
	end
	if key == "n" and (attack or lying) and not (guarding  or hum.Sit == true or sitting) then
		lying = false
	end	
	if key == "p" and not (attack or guarding or hurt or hum.Sit == true or sitting or lying) then
		emote("Sword")
	end	
	if key == "h" and not (attack or guarding or hurt or hum.Sit == true or sitting or lying) then
		if keycombo == "sd" then
			if player.UserId == 50203523 then
				moves["finisher"]()
			else
				chatter("I can't use that.")
			end
		elseif keycombo == "sawa" then
			if player.UserId == 50203523 then
				if not customize then
					chatter("I want to change.")
				else
					chatter("Let's get back to where I was before.")
				end
				customize = not customize
			else
				chatter("I can't use that.")
			end
		else
			moves["grab"]()
		end
		keycombo = ""
		keycount = 0
		keytime = 0
	end
	if key == "w" then
		holdingw = true
	end	
	if key == "w" and not (attack or guarding or hurt or hum.Sit == true or sitting or lying) then
		if keycombo == "w" then
			moves["run"]()
			keycombo = ""
			keycount = 0
			keytime = 0
		end
	end	
	if key == "s" then
		holdings = true
	end	
	if key == "a" then
		holdinga = true
	end	
	if key == "d" then
		holdingd = true
	end	
	if key == "c" then
		holdingc = true
	end	
	if key == "z" then
		holdingz = true
	end
	if key == "x" then
		holdingx = true
	end	
	if key == "q" then
		holdingq = true
	end
	if key == "e" then
		holdinge = true
	end
	if key == "v" then
		holdingv = true
	end
	if key == "v" and not (attack or guarding or hurt or hum.Sit == true or sitting or lying) then
		moves["dash"]()
		keycombo = ""
		keycount = 0
		keytime = 0
	end	
	if key == "e" and not (attack or guarding or hurt or hum.Sit == true or sitting or lying) then
		if keycombo == "sd" then
			moves["charge"]()
		elseif keycombo == "sdsa" then
			emote("Transform")
		elseif keycombo == "sawada" then
			if instakill then
				chatter("I guess everyone has a softer side.")
			else
				chatter("Once you're dead...that's that...")
			end
			instakill = not instakill
		else
			moves["dust"]()
		end
		keycombo = ""
		keycount = 0
		keytime = 0
	end	
	if key == "z" and not (attack or guarding or hurt or hum.Sit == true or sitting or lying) then
		if keycombo == "sd" then
			moves["hanaru"]()
		elseif keycombo == "sa" then
			moves["aoi asahina"]()
		else
			moves["punch"]()
		end
		keycombo = ""
		keycount = 0
		keytime = 0
	end
	if key == "x" and not (attack or guarding or hurt or hum.Sit == true or sitting or lying) then
		if keycombo == "sa" then
			moves["utsusemi"]()
		elseif keycombo == "sad" then
			moves["danku"]()
		elseif keycombo == "da" then
			moves["yoma komatsu"]()
		elseif keycombo == "sd" then
			moves["dive"]()
		else
			moves["kick"]()
		end
		keycombo = ""
		keycount = 0
		keytime = 0
	end	
	if key == "c" and not (attack or guarding or hurt or hum.Sit == true or sitting or lying) then
		if keycombo == "sd" then
			moves["heart aino"]()
		elseif keycombo == "dds" then
			moves["tokagami"]()
		elseif keycombo == "asd" then
			moves["kyo kusanagi"]()
		elseif (keycombo == "aad" or keycombo == "add") then
			moves["chihaya kisaragi"]()
		elseif keycombo == "dsadd" then
			moves["giga"]()
		else
			moves["slash"]()
		end
		keycombo = ""
		keycount = 0
		keytime = 0
	end	
	if key == "q" and not (attack or guarding or hurt or hum.Sit == true or sitting or lying) then
		if keycombo == "sd" then
			moves["tobu"]()
		elseif keycombo == "asd" then
			moves["lucas"]()
		elseif keycombo == "aad" then
			moves["ky kiske"]()
		elseif keycombo == "das" then
			moves["maki"]()
		elseif keycombo == "sws" then
			moves["gatotsu"]()
		elseif keycombo == "dsadsa" or keycombo == "dsasda" then
			moves["ryuga"]()
		elseif keycombo == "ssad" then
			moves["comet"]()
		elseif keycombo == "asdasd" or keycombo == "asdsad" then
			moves["sol badguy"]()
		elseif keycombo == "dsasd" then
			moves["sol"]()	
		elseif keycombo == "dsadd" then
			moves["efireb"]()
		elseif keycombo == "asdsd" then
			moves["judas"]()
		elseif keycombo == "adadw" then
			moves["turni"]()
		elseif keycombo == "asdww" then
			moves["toko"]()
		elseif keycombo == "adadad" then
			moves["overdrive"]()
		else
			moves["hslash"]()
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
			if moves[keycombo] then
				--moves[keycombo]()
				keycombo = ""
				keycount = 0
				keytime = 0
			end
		end
	end
end)

mouse.KeyUp:connect(function(key)
	if key == "leftcontrol" and ducking and not (hum.Sit == true or sitting or lying) then
		hum.WalkSpeed = ogws
		hum.JumpPower = ogjp
		hum.JumpHeight = ogjh
		ducking = false
	end
	if key == "2" and ducking and not (hum.Sit == true or sitting or lying) then
		hum.WalkSpeed = ogws
		hum.JumpPower = ogjp
		hum.JumpHeight = ogjh
		ducking = false
	end
	if key == "r" and guarding and not (attack or hum.Sit == true or sitting or lying) then
		if not ducking then
			hum.WalkSpeed = ogws
		end
		hum.JumpPower = ogjp
		hum.JumpHeight = ogjh
		guarding = false
	end
	if key == "w" then
		holdingw = false
	end	
	if key == "s" then
		holdings = false
	end	
	if key == "a" then
		holdinga = false
	end	
	if key == "d" then
		holdingd = false
	end	
	if key == "c" then
		holdingc = false
	end	
	if key == "z" then
		holdingz = false
	end
	if key == "x" then
		holdingx = false
	end	
	if key == "q" then
		holdingq = false
	end
	if key == "e" then
		holdinge = false
	end
	if key == "v" then
		holdingv = false
	end
	if key == "leftshift" and not (attack or ducking or guarding or hurt or hum.Sit == true or sitting or lying) then
		hum.WalkSpeed = ogws
	end
	if key == "0" and not (attack or ducking or guarding or hurt or hum.Sit == true or sitting or lying) then
		hum.WalkSpeed = ogws
	end
end)

--main stuff
rservice.Heartbeat:Connect(function()
	sine = tick()*60
	maxhp = hum.MaxHealth
	--key combo stuff
	keytime = keytime - 0.5
	if keytime < 0.5 then
		keycombo = ""
		keycount = 0
	end
	statstext.Text = string.upper(keycombo)
	if mptext ~= nil then
		mptext.Text = "MP: "..mp
		local exp2 = mp/1000
		mptext.Parent.Size = udim2(exp2,0,1,0)
	end
	if char:FindFirstChild("FakeHead") then
		if not customize then
			char.FakeHead.face.Texture = face.Texture
		end
	end
	if not dresst then
		if face == nil then
			face = new("Decal",head)
			face.Name = "face"
			face.Texture = "rbxassetid://112647639651751"
		else
			if not customize then
				face.Texture = "rbxassetid://112647639651751"
			end
		end
		if not (customize or countered) then
			hair2.Transparency = 0
			hair0.Transparency = 1
		end
	else
		if face == nil then
			face = new("Decal",head)
			face.Name = "face"
			face.Texture = "rbxassetid://6815352990"
		else
			if not customize then
				face.Texture = "rbxassetid://6815352990"
			end
		end
		if not (customize or countered) then
			hair2.Transparency = 1
			hair0.Transparency = 0
		end
	end
	if anim == "idle" then
		if not ducking then
			if not guarding then
				if hum.Health > (maxhp/2) or maxhp == math.huge then
					if not sword then
						rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0+ 0.125 * sin(sine / 38)) * angles(rad(0), rad(0), rad(-0)), 0.1)
						nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0- 20 * sin(sine / 38)), rad(0), rad(0)), 0.1)
						rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.5+ 0.125 * sin(sine / 38), 0) * angles(rad(0), rad(0), rad(8)) * rsC0, 0.1)
						ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.5+ 0.125 * sin(sine / 38), 0) * angles(rad(0), rad(0), rad(-8)) * lsC0, 0.1)
						rh.C0 = rh.C0:Lerp(cframe(1 , -1- 0.125 * sin(sine / 38), 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-7.5), rad(-0), rad(0)), 0.1)
						lh.C0 = lh.C0:Lerp(cframe(-1 , -1- 0.125 * sin(sine / 38), -0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(0)), 0.1)
						WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
						WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
					else
						rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0+ 0.125 * sin(sine / 38)) * angles(rad(0), rad(0), rad(-0)), 0.1)
						nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(20), rad(0), rad(0)), 0.1)
						rs.C0 = rs.C0:Lerp(cframe(1.3 , 0.45+ 0.125 * sin(sine / 38), 0) * angles(rad(0), rad(0), rad(3)) * rsC0, 0.1)
						ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.15, 0) * angles(rad(15), rad(0), rad(25)) * lsC0, 0.1)
						rh.C0 = rh.C0:Lerp(cframe(1 , -1- 0.125 * sin(sine / 38), 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-7.5), rad(-0), rad(0)), 0.1)
						lh.C0 = lh.C0:Lerp(cframe(-1.1, -1- 0.125 * sin(sine / 38), -0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(0)), 0.1)
						WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
						WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
					end
				elseif hum.Health < (maxhp/2) and maxhp ~= math.huge then
					if not sword then
						rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0.5 + 0.05 * sin(sine / 25)) * angles(rad(30), rad(0), rad(-0)), 0.1)
						nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(40 + 5 * sin(sine / 25)), rad(0), rad(0)), 0.1)
						rs.C0 = rs.C0:Lerp(cframe(1.25, .5, -0.45 + 0.05 * sin(sine / 25)) * angles(rad(0), rad(125), rad(55)) * angles(rad(15), rad(-0), rad(-0)) * rsC0, 0.1)
						ls.C0 = ls.C0:Lerp(cframe(-1.25, .5, -0.45 + 0.05 * sin(sine / 25)) * angles(rad(0), rad(-125), rad(-55)) * angles(rad(15), rad(-0), rad(-0)) * lsC0, 0.1)
						rh.C0 = rh.C0:Lerp(cframe(1.15, -0.25 - 0.05 * sin(sine / 25), -0.75 + 0.05 * sin(sine / 25)) *  angles(rad(35), rad(90), rad(0)), 0.1)
						lh.C0 = lh.C0:Lerp(cframe(-1.15, -0.25 - 0.05 * sin(sine / 25), -0.75 + 0.05 * sin(sine / 25)) *  angles(rad(35), rad(-90), rad(0)), 0.1)
						WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
						WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
					else
						rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -1.25) * angles(rad(45), rad(-0), rad(-0)), 0.1)
						nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(35), rad(0), rad(0)), 0.1)
						rs.C0 = rs.C0:Lerp(cframe(1 , 0.5, -1) * angles(rad(40), rad(75), rad(-0)) * angles(rad(-10), rad(0), rad(-10)) * rsC0, 0.1)
						ls.C0 = ls.C0:Lerp(cframe(-1.25, 0.25, -0.5) * angles(rad(65), rad(-45), rad(30)) * angles(rad(60), rad(0), rad(30)) * lsC0, 0.1)
						rh.C0 = rh.C0:Lerp(cframe(1.25, -0.6, -0.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(10), rad(-20), rad(-35)), 0.1)
						lh.C0 = lh.C0:Lerp(cframe(-1 , 0.9, -0.75) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(-0), rad(-30)), 0.1)
						WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
						WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
					end
				end
			else
				if not sword then
					rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0+ 0.05 * sin(sine / 30)) * angles(rad(0), rad(0), rad(-60)), 0.3)
					nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0- 0.025 * sin(sine / 30)) * angles(rad(-0), rad(0), rad(40)), 0.3)
					rs.C0 = rs.C0:Lerp(cframe(1 , 0.5+ 0.05 * sin(sine / 45), -0.75) * angles(rad(90), rad(0), rad(-60)) * rsC0, 0.3)
					ls.C0 = ls.C0:Lerp(cframe(-1, 0.5+ 0.05 * sin(sine / 45), -1) * angles(rad(180), rad(30), rad(0)) * lsC0, 0.3)
					rh.C0 = rh.C0:Lerp(cframe(1 , -1- 0.05 * sin(sine / 30) , 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-20), rad(-0), rad(0)), 0.3)
					lh.C0 = lh.C0:Lerp(cframe(-1 , -1- 0.05 * sin(sine / 30) , 0 ) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(30), rad(0)), 0.3)
					WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
					WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
				else
					rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(115)), 0.3)
					nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(-75)), 0.3)
					rs.C0 = rs.C0:Lerp(cframe(1, 0.5, -0.45) * angles(rad(100), rad(10), rad(110)) * angles(rad(-0), rad(90), rad(0)) * rsC0, 0.3)
					ls.C0 = ls.C0:Lerp(cframe(-1.5 , 0.25, 0.5) * angles(rad(45), rad(0), rad(-0)) * lsC0, 0.3)
					rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(0), rad(-45), rad(0)), 0.3)
					lh.C0 = lh.C0:Lerp(cframe(-1 , -1, -0.15) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-0), rad(-0), rad(0)), 0.3)
					WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
					WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
				end
			end
		else
			if not guarding then
				if not sword then
					rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0.75+ 0.05 * cos(sine / 35)) * angles(rad(10), rad(-15), rad(-60)), 0.2)
					nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0+ 0.025 * cos(sine / 35)) * angles(rad(-0), rad(0), rad(45)), 0.2)
					rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.5- 0.1 * cos(sine / 35), 0) * angles(rad(0), rad(0), rad(30)) * rsC0, 0.2)
					ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.5- 0.1 * cos(sine / 35), -0.5) * angles(rad(0), rad(-40), rad(-15)) * lsC0, 0.2)
					rh.C0 = rh.C0:Lerp(cframe(1.25, -0.1- 0.05 * cos(sine / 35), -0.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(10), rad(-30), rad(15)), 0.2)
					lh.C0 = lh.C0:Lerp(cframe(-1 , -0.65- 0.05 * cos(sine / 35), -1) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(10), rad(45)), 0.2)
					WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
					WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
				else
					rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0.75+ 0.05 * cos(sine / 15)) * angles(rad(10), rad(15), rad(60)), 0.3)
					nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0+ 0.025 * cos(sine / 15)) * angles(rad(-0), rad(0), rad(-45)), 0.3)
					rs.C0 = rs.C0:Lerp(cframe(1.25, 0.25+ 0.05 * cos(sine / 15), 0.25) * angles(rad(10+ 5 * cos(sine / 15)), rad(-55), rad(0)) * rsC0, 0.3)
					ls.C0 = ls.C0:Lerp(cframe(-1.5 , 0.5- 0.025 * cos(sine / 15), 0) * angles(rad(40), rad(0), rad(15)) * lsC0, 0.3)
					rh.C0 = rh.C0:Lerp(cframe(1 , -0.65- 0.05 * cos(sine / 15), -1) *  angles(rad(0), rad(90), rad(0)) * angles(rad(0), rad(10), rad(-45)), 0.3)
					lh.C0 = lh.C0:Lerp(cframe(-1.25, -0.1- 0.05 * cos(sine / 15), -0.5) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(10), rad(30), rad(-15)), 0.3)
					WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
					WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
				end
			else
				if not sword then
					rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0.75+ 0.05 * cos(sine / 35)) * angles(rad(10), rad(-15), rad(-60)), 0.2)
					nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0+ 0.05 * sin(sine / 35)) * angles(rad(10), rad(10), rad(50)), 0.2)
					rs.C0 = rs.C0:Lerp(cframe(1 , 0.5+ 0.05 * sin(sine / 35), -0.75) * angles(rad(90), rad(0), rad(-75)) * rsC0, 0.2)
					ls.C0 = ls.C0:Lerp(cframe(-1, 0.5+ 0.05 * sin(sine / 35), -1) * angles(rad(180), rad(30), rad(0)) * lsC0, 0.2)
					rh.C0 = rh.C0:Lerp(cframe(1.25, -0.1- 0.05 * cos(sine / 35), -0.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(10), rad(-30), rad(15)), 0.2)
					lh.C0 = lh.C0:Lerp(cframe(-1 , -0.65- 0.05 * cos(sine / 35), -1) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(10), rad(45)), 0.2)
					WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
					WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
				else
					rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0.75+ 0.05 * cos(sine / 35)) * angles(rad(10), rad(-15), rad(-60)), 0.2)
					nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0+ 0.025 * cos(sine / 35)) * angles(rad(-0), rad(0), rad(45)), 0.2)
					rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.5- 0.1 * cos(sine / 35), 0) * angles(rad(0), rad(0), rad(30)) * rsC0, 0.2)
					ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.75- 0.1 * cos(sine / 35), -0.75) * angles(rad(160), rad(20), rad(-0)) * angles(rad(30), rad(-0), rad(30)) * lsC0, 0.2)
					rh.C0 = rh.C0:Lerp(cframe(1.25, -0.1- 0.05 * cos(sine / 35), -0.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(10), rad(-30), rad(15)), 0.2)
					lh.C0 = lh.C0:Lerp(cframe(-1 , -0.65- 0.05 * cos(sine / 35), -1) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(10), rad(45)), 0.2)
					WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
					WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
				end
			end
		end
	elseif anim == "walk" then
		if not sword then
			--I really hate making walking animations. It's just too hard.
			if not guarding then
				rj.C0 = rj.C0:Lerp(rjC0 *cframe(0,0,sin((time()*20))/4.5) * angles(rad(5) + cos((time()*20))/10,rad(0) - root.RotVelocity.Y/75,-sin((time()*10))/7.5),0.15)
				nk.C0 = nk.C0:Lerp(nkC0 * cframe(0,0,0) * angles(cos((time()*20))/10,rad(0),rad(0)),0.15)
				rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.5, 0) * angles(sin((time()*10))/1 + root.RotVelocity.Y/75,rad(0),rad(0)) * rsC0,0.15)
				ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.5, 0) * angles(-sin((time()*10))/1 - root.RotVelocity.Y/75,rad(0),rad(0)) * lsC0,0.15)
				rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0 ) *  angles(rad(0), rad(90), rad(0)) * cframe(cos((time()*10))/4,cos((time()*10))/3,0) * angles(rad(0),rad(0),rad(-15) + sin((time()*10))/1.5),0.15)
				lh.C0 = lh.C0:Lerp(cframe(-1 , -1, 0 ) *  angles(rad(0), rad(-90), rad(0)) * cframe(cos((time()*10))/4,-cos((time()*10))/3,0) * angles(rad(0),rad(0),rad(15) + sin((time()*10))/1.5),0.15)
				WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
				WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
			else
				rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0+ 0.05 * sin(sine / 30)) * angles(rad(0), rad(0), rad(-60)), 0.3)
				nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0- 0.025 * sin(sine / 30)) * angles(rad(-0), rad(0), rad(40)), 0.3)
				rs.C0 = rs.C0:Lerp(cframe(1 , 0.5+ 0.05 * sin(sine / 45), -0.75) * angles(rad(90), rad(0), rad(-60)) * rsC0, 0.3)
				ls.C0 = ls.C0:Lerp(cframe(-1, 0.5+ 0.05 * sin(sine / 45), -1) * angles(rad(180), rad(30), rad(0)) * lsC0, 0.3)
				rh.C0 = rh.C0:Lerp(cframe(1 , -1- 0.05 * sin(sine / 30) , 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-20), rad(-0), rad(0)), 0.3)
				lh.C0 = lh.C0:Lerp(cframe(-1 , -1- 0.05 * sin(sine / 30) , 0 ) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(30), rad(0)), 0.3)
				WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
				WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
			end	
		else
			if not guarding then
				rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0 + 0.15 * sin(sine/8.88)) * angles(rad(-15), rad(0), rad(-0)), 0.3)
				nk.C0 = nk.C0:Lerp(nkC0 *cframe(0, -0.15, -0) * angles(rad(25), rad(0), rad(0)), 0.3)
				rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.5, 0  - (0.25 * sin(sine/8.88))) * angles(rad(-20 + 25 * sin(sine/8.88)), rad(0), rad(-0)) * rsC0, 0.3)
				ls.C0 = ls.C0:Lerp(cframe(-1.35,0.45, 0) * angles(rad(-15 + 5 * sin(sine/8.88)), rad(0), rad(20)) * lsC0, 0.3)
				rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0 ) *  angles(rad(0), rad(90), rad(0)) * cframe(cos((time()*10))/4,cos((time()*10))/3,0) * angles(rad(0),rad(0),rad(-15) + sin((time()*10))/1.5),0.15)
				lh.C0 = lh.C0:Lerp(cframe(-1 , -1, 0 ) *  angles(rad(0), rad(-90), rad(0)) * cframe(cos((time()*10))/4,-cos((time()*10))/3,0) * angles(rad(0),rad(0),rad(15) + sin((time()*10))/1.5),0.15)
				WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
				WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
			else
				rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(115)), 0.3)
				nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(-75)), 0.3)
				rs.C0 = rs.C0:Lerp(cframe(1, 0.5, -0.45) * angles(rad(100), rad(10), rad(110)) * angles(rad(-0), rad(90), rad(0)) * rsC0, 0.3)
				ls.C0 = ls.C0:Lerp(cframe(-1.5 , 0.25, 0.5) * angles(rad(45), rad(0), rad(-0)) * lsC0, 0.3)
				rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(0), rad(-45), rad(0)), 0.3)
				lh.C0 = lh.C0:Lerp(cframe(-1 , -1, -0.15) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-0), rad(-0), rad(0)), 0.3)
				WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
				WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
			end	
		end
	elseif anim == "run" then
		if not sword then
			-- i hate making run animations dang it
			if not guarding then
				rj.C0=rj.C0:Lerp(rjC0*cframe(0,0,-0.125 + 0.125 * cos(sine / 3))*angles(rad(25),rad(0),rad(0 - 15 * cos(sine / 6))),.1)
				nk.C0=nk.C0:Lerp(nkC0*angles(rad(-10 + 2.5 * cos(sine / 100)),rad(0),rad(0 + 15 * cos(sine / 6))),.1)
				rs.C0=rs.C0:Lerp(cframe(1.5,0.5,0)*angles(rad(0 - 160 * cos(sine / 6)),rad(0),rad(5 - 10 * cos(sine / 3))) * rsC0,.1)
				ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.5, 0) * angles(rad(15), rad(0), rad(25)) * lsC0, 0.1)
				rh.C0=rh.C0:Lerp(cframe(1,-0.75 - 0.25 * cos(sine / 3),-0.25 - 0.25 * cos(sine / 3))*angles(rad(0),rad(90),rad(0))*angles(rad(0),rad(0),rad(0 + 115 * cos(sine / 6))),.1)
				lh.C0=lh.C0:Lerp(cframe(-1,-0.75 + 0.25 * cos(sine / 3),-0.25 + 0.25 * cos(sine / 3))*angles(rad(0),rad(-90),rad(0))*angles(rad(0),rad(0),rad(0 + 115 * cos(sine / 6))),.1)
				WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
				WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
			else
				rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0+ 0.05 * sin(sine / 30)) * angles(rad(0), rad(0), rad(-60)), 0.3)
				nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0- 0.025 * sin(sine / 30)) * angles(rad(-0), rad(0), rad(40)), 0.3)
				rs.C0 = rs.C0:Lerp(cframe(1 , 0.5+ 0.05 * sin(sine / 45), -0.75) * angles(rad(90), rad(0), rad(-60)) * rsC0, 0.3)
				ls.C0 = ls.C0:Lerp(cframe(-1, 0.5+ 0.05 * sin(sine / 45), -1) * angles(rad(180), rad(30), rad(0)) * lsC0, 0.3)
				rh.C0 = rh.C0:Lerp(cframe(1 , -1- 0.05 * sin(sine / 30) , 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-20), rad(-0), rad(0)), 0.3)
				lh.C0 = lh.C0:Lerp(cframe(-1 , -1- 0.05 * sin(sine / 30) , 0 ) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(30), rad(0)), 0.3)
				WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
				WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
			end	
		else
			if not guarding then
				rj.C0=rj.C0:Lerp(rjC0*cframe(0,0,-0.125 + 0.125 * cos(sine / 3))*angles(rad(45),rad(0),rad(0 - 15 * cos(sine / 6))),.1)
				nk.C0=nk.C0:Lerp(nkC0*angles(rad(-40 + 2.5 * cos(sine / 100)),rad(0),rad(0 + 15 * cos(sine / 6))),.1)
				rs.C0=rs.C0:Lerp(cframe(1.5,0.5,0)*angles(rad(0 - 160 * cos(sine / 6)),rad(0),rad(5 - 10 * cos(sine / 3))) * rsC0,.1)
				ls.C0=ls.C0:Lerp(cframe(-1.5,0.5,0)*angles(rad(0 + 160 * cos(sine / 6)),rad(0),rad(-5 + 10 * cos(sine / 3))) * lsC0,.1)
				rh.C0=rh.C0:Lerp(cframe(1,-0.75 - 0.25 * cos(sine / 3),-0.5 - 0.25 * cos(sine / 3))*angles(rad(0),rad(90),rad(0))*angles(rad(0),rad(0),rad(0 + 115 * cos(sine / 6))),.1)
				lh.C0=lh.C0:Lerp(cframe(-1,-0.75 + 0.25 * cos(sine / 3),-0.5 + 0.25 * cos(sine / 3))*angles(rad(0),rad(-90),rad(0))*angles(rad(0),rad(0),rad(0 + 115 * cos(sine / 6))),.1)
				WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
				WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
			else
				rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(115)), 0.3)
				nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(-75)), 0.3)
				rs.C0 = rs.C0:Lerp(cframe(1, 0.5, -0.45) * angles(rad(100), rad(10), rad(110)) * angles(rad(-0), rad(90), rad(0)) * rsC0, 0.3)
				ls.C0 = ls.C0:Lerp(cframe(-1.5 , 0.25, 0.5) * angles(rad(45), rad(0), rad(-0)) * lsC0, 0.3)
				rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(0), rad(-45), rad(0)), 0.3)
				lh.C0 = lh.C0:Lerp(cframe(-1 , -1, -0.15) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-0), rad(-0), rad(0)), 0.3)
				WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
				WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
			end	
		end
	elseif anim == "jump" then
		if not guarding then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(30), rad(0), rad(-0)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5, 0.5, -0.25) * angles(rad(50), rad(20), rad(-30)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.5, -0.25) * angles(rad(50), rad(-20), rad(30)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -0, -0.75) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-15), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -0.25, -1.15) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(35)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		else
			if not sword then
				rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(-20), rad(0), rad(-0)), 0.3)
				nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, -0.1, 0.1) * angles(rad(35), rad(0), rad(0)), 0.3)
				rs.C0 = rs.C0:Lerp(cframe(0.8 , 0.15, -0.8) * angles(rad(160), rad(0), rad(-10)) * rsC0, 0.3)
				ls.C0 = ls.C0:Lerp(cframe(-0.8, 0.15, -0.8) * angles(rad(160), rad(-0), rad(10)) * lsC0, 0.3)
				rh.C0 = rh.C0:Lerp(cframe(1 , -0.25, -0.75) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-0), rad(-15)), 0.3)
				lh.C0 = lh.C0:Lerp(cframe(-1, -0.45, -0.75) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(45)), 0.3)
				WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
				WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
			else
				rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-0)), 0.3)
				nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(15), rad(0), rad(0)), 0.3)
				rs.C0 = rs.C0:Lerp(cframe(1.25, 0.5, -0.75) * angles(rad(90), rad(0), rad(-30)) * rsC0, 0.3)
				ls.C0 = ls.C0:Lerp(cframe(-1.25 , 0.25, -0.75) * angles(rad(50), rad(0), rad(45)) * lsC0, 0.3)
				rh.C0 = rh.C0:Lerp(cframe(1.25, -0.75, -0.75) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-25), rad(-60)), 0.3)
				lh.C0 = lh.C0:Lerp(cframe(-1 , -1, -0.65) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(75)), 0.3)
				WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
				WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
			end
		end
	elseif anim == "fall" then
		if not guarding then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(-10), rad(0), rad(-0)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, -0.1, 0.1) * angles(rad(30), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.5, 0) * angles(rad(200), rad(0), rad(-0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.5, 0) * angles(rad(200), rad(0), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -0.45, -0.75) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-0), rad(-45)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1, -0.75, -0.4) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(10)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		else
			if not sword then
				rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(-20), rad(0), rad(-0)), 0.3)
				nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, -0.1, 0.1) * angles(rad(35), rad(0), rad(0)), 0.3)
				rs.C0 = rs.C0:Lerp(cframe(0.8 , 0.15, -0.8) * angles(rad(160), rad(0), rad(-10)) * rsC0, 0.3)
				ls.C0 = ls.C0:Lerp(cframe(-0.8, 0.15, -0.8) * angles(rad(160), rad(-0), rad(10)) * lsC0, 0.3)
				rh.C0 = rh.C0:Lerp(cframe(1 , -0.25, -0.75) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-0), rad(-15)), 0.3)
				lh.C0 = lh.C0:Lerp(cframe(-1, -0.45, -0.75) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(45)), 0.3)
				WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
				WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
			else
				rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-0)), 0.3)
				nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(15), rad(0), rad(0)), 0.3)
				rs.C0 = rs.C0:Lerp(cframe(1.25, 0.5, -0.75) * angles(rad(90), rad(0), rad(-30)) * rsC0, 0.3)
				ls.C0 = ls.C0:Lerp(cframe(-1.25 , 0.25, -0.75) * angles(rad(50), rad(0), rad(45)) * lsC0, 0.3)
				rh.C0 = rh.C0:Lerp(cframe(1.25, -0.75, -0.75) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-25), rad(-60)), 0.3)
				lh.C0 = lh.C0:Lerp(cframe(-1 , -1, -0.65) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(75)), 0.3)
				WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
				WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
			end
		end
	elseif anim == "swimidle" then
		rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-0)), 0.3)
		nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(15), rad(0), rad(0)), 0.3)
		rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.5, -0.25+ 0.15 * cos(sine / 30)) * angles(rad(75), rad(0), rad(25- 40 * cos(sine / 30))) * rsC0, 0.3)
		ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.5, -0.25+ 0.15 * cos(sine / 30)) * angles(rad(80), rad(0), rad(-10+ 40 * cos(sine / 30))) * lsC0, 0.3)
		rh.C0 = rh.C0:Lerp(cframe(1, -0.5, -0.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(0), rad(-0), rad(-25)), 0.3)
		lh.C0 = lh.C0:Lerp(cframe(-1 , -1, -0) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(10)), 0.3)
		WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
		WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
	elseif anim == "swim" then
		rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-0)), 0.3)
		nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-15), rad(0), rad(0)), 0.3)
		rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.5, -0) * angles(rad(90+ 80 * cos(sine / 10)), rad(0), rad(0)) * rsC0, 0.3)
		ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.5, -0) * angles(rad(90+ 80 * cos(sine / 10)), rad(0), rad(-0)) * lsC0, 0.3)
		rh.C0 = rh.C0:Lerp(cframe(1, -1, -0.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(0), rad(-0), rad(-25+ 40 * cos(sine / 10))), 0.3)
		lh.C0 = lh.C0:Lerp(cframe(-1 , -1, -0) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(10+ 40 * cos(sine / 10))), 0.3)
		WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
		WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
	elseif anim == "sit" then
		if not sword then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0.25 - 0.025 * cos(sine / 90)) * angles(rad(0), rad(0), rad(-0)), 0.15)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(15), rad(0), rad(0)), 0.15)
			rs.C0 = rs.C0:Lerp(cframe(1 , 0.25, -0.75) * angles(rad(60), rad(-5), rad(-80 - 5 * cos(sine / 90))) * rsC0, 0.15)
			ls.C0 = ls.C0:Lerp(cframe(-1, 0.25, -0.75) * angles(rad(60), rad(-5), rad(80 + 5 * cos(sine / 90))) * lsC0, 0.15)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, -0.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(55 + 5 * cos(sine / 90)), rad(0), rad(30)), 0.15)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, -0.45) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(35 + 5 * cos(sine / 90)), rad(-0), rad(-15)), 0.15)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		else
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0.25 - 0.025 * cos(sine / 90)) * angles(rad(0), rad(0), rad(-0)), 0.15)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(15), rad(0), rad(0)), 0.15)
			rs.C0 = rs.C0:Lerp(cframe(1.15, 0.65, -0.5) * angles(rad(60), rad(70), rad(-40 + 5 * cos(sine / 90))) * rsC0, 0.15)
			ls.C0 = ls.C0:Lerp(cframe(-1, 0.25, -0.75) * angles(rad(60), rad(-5), rad(80 + 5 * cos(sine / 90))) * lsC0, 0.15)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, -0.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(55 + 5 * cos(sine / 90)), rad(0), rad(30)), 0.15)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, -0.45) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(35 + 5 * cos(sine / 90)), rad(-0), rad(-15)), 0.15)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		end
	elseif anim == "climbidle" then
		rj.C0 = rj.C0:lerp(cframe(0,0 + 0.05 * cos(sine / 20),0)*angles(rad(0),rad(0),rad(0))*rjC0,0.3)
		nk.C0 = nk.C0:lerp(cframe(0,0.1,-0.5)*angles(rad(30),rad(0),rad(0))*nkC0,.1)
		rs.C0 = rs.C0:lerp(cframe(1.5, 0.75 - 0.05 * cos(sine / 20), -0.5) * angles(rad(130), rad(0), rad(-15)) * rsC0, 0.3)
		ls.C0 = ls.C0:lerp(cframe(-1.5, 0.75 - 0.05 * cos(sine / 20), -0.5) * angles(rad(130), rad(0), rad(15)) * lsC0, 0.3)
		rh.C0 = rh.C0:lerp(cframe(1,-0.5 - 0.05 * cos(sine / 20),-0.6)*angles(rad(-25),rad(0),rad(0))*angles(rad(0),rad(90),rad(0)),0.3)
		lh.C0 = lh.C0:lerp(cframe(-1,-1 - 0.05 * cos(sine / 20),-0.1)*angles(rad(11),rad(0),rad(0))*angles(rad(0),rad(-90),rad(0)),0.3)
	elseif anim == "climbing" then
		rj.C0 = rj.C0:lerp(cframe(0,0 + 0.05 * cos(sine / 13),0)*angles(rad(0),rad(0),rad(0))*rjC0,0.3)
		nk.C0 = nk.C0:lerp(cframe(0,0.1,-0.5)*angles(rad(28.4),rad(0),rad(0))*nkC0,.1)
		rs.C0 = rs.C0:lerp(cframe(1.5, 0.75 - 0.05 * cos(sine / 20), -0.5) * angles(rad(130+ 35 * cos(sine / 13)), rad(0), rad(-15)) * rsC0, 0.3)
		ls.C0 = ls.C0:lerp(cframe(-1.5, 0.75 - 0.05 * cos(sine / 20), -0.5) * angles(rad(130+ 35 * cos(sine / 13)), rad(0), rad(15)) * lsC0, 0.3)
		rh.C0 = rh.C0:lerp(cframe(1, -0.5 + 0.5 * cos(sine / 7) / 2, -0.6) * angles(rad(-15 - 35 * cos(sine / 7)) + -sin(sine / 7) / 2.5, rad(90 - 2 * cos(sine / 7)), rad(0)) * angles(rad(0 + 2.5 * cos(sine / 7)), rad(0), rad(0)), 0.3)
		lh.C0 = lh.C0:lerp(cframe(-1, -0.5 + 0.5 * cos(sine / 7) / 2, -0.6) * angles(rad(-15 + 35 * cos(sine / 7)) + sin(sine / 7) / 2.5, rad(-90 - 2 * cos(sine / 7)), rad(0)) * angles(rad(0 - 2.5 * cos(sine / 7)), rad(0), rad(0)),0.3)
	elseif anim == "sitground" then
		if not sword then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -2+ 0.05 * sin(sine / 30)) * angles(rad(-0), rad(0), rad(-0)), 0.15)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(15), rad(0), rad(0)), 0.15)
			rs.C0 = rs.C0:Lerp(cframe(1 , 0.25, -0.75) * angles(rad(60), rad(-5), rad(-80 - 5 * cos(sine / 30))) * rsC0, 0.15)
			ls.C0 = ls.C0:Lerp(cframe(-1, 0.25, -0.75) * angles(rad(60), rad(-5), rad(80 + 5 * cos(sine / 30))) * lsC0, 0.15)
			rh.C0 = rh.C0:Lerp(cframe(1.25, -1- 0.05 * sin(sine / 30), -0.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(75), rad(-0), rad(20)), 0.15)
			lh.C0 = lh.C0:Lerp(cframe(-1.5, -0.5- 0.05 * sin(sine / 30), -1) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(60), rad(0), rad(-20)), 0.15)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		else
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -2+ 0.05 * sin(sine / 30)) * angles(rad(-0), rad(0), rad(-0)), 0.15)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(15), rad(0), rad(0)), 0.15)
			rs.C0 = rs.C0:Lerp(cframe(0.75, 0.6 - 0.025 * cos(sine / 90), -0.35) * angles(rad(75), rad(90), rad(-0)) * angles(rad(65), rad(30), rad(-20)) * rsC0, 0.15)
			ls.C0 = ls.C0:Lerp(cframe(-0.75, 0.25 - 0.025 * cos(sine / 90), -0.5) * angles(rad(75), rad(-90), rad(0)) * angles(rad(80), rad(-30), rad(15)) * lsC0, 0.15)
			rh.C0 = rh.C0:Lerp(cframe(1.25, -1- 0.05 * sin(sine / 30), -0.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(75), rad(-0), rad(20)), 0.15)
			lh.C0 = lh.C0:Lerp(cframe(-1.5, -0.5- 0.05 * sin(sine / 30), -1) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(60), rad(0), rad(-20)), 0.15)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		end
	elseif anim == "lay" then
		if not sword then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -2.65 - 0.015 * sin(sine / 50)) * angles(rad(-90), rad(0), rad(-0)), 0.15)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(-0, -0.25, -0) * angles(rad(45 - 6.5 * sin(sine / 50)), rad(0), rad(0)), 0.15)
			rs.C0 = rs.C0:Lerp(cframe(1, 0.75, 0) * angles(rad(0), rad(0), rad(-150 - 5 * sin(sine / 50))) * rsC0, 0.15)
			ls.C0 = ls.C0:Lerp(cframe(-1, 0.75, 0) * angles(rad(0), rad(0), rad(150 + 5 * sin(sine / 50))) * lsC0, 0.15)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0 - 0.015 * sin(sine / 50)) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-10), rad(-0), rad(0)), 0.15)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -0.5, -0.75 - 0.015 * sin(sine / 50)) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-10), rad(0), rad(35)), 0.15)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		else
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -2.65 - 0.015 * sin(sine / 50)) * angles(rad(-90), rad(0), rad(-0)), 0.15)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(-0, -0.25, -0) * angles(rad(45 - 6.5 * sin(sine / 50)), rad(0), rad(0)), 0.15)
			rs.C0 = rs.C0:Lerp(cframe(1, 1.25, 0) * angles(rad(0), rad(-90), rad(-180 - 5 * sin(sine / 50))) * angles(rad(-7.5), rad(0), rad(-0)) * rsC0, 0.15)
			ls.C0 = ls.C0:Lerp(cframe(-1, 0.75, 0) * angles(rad(0), rad(0), rad(150 + 5 * sin(sine / 50))) * lsC0, 0.15)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0 - 0.015 * sin(sine / 50)) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-10), rad(-0), rad(0)), 0.15)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -0.5, -0.75 - 0.015 * sin(sine / 50)) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-10), rad(0), rad(35)), 0.15)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		end
	elseif anim == "facepalm" then
		if not sword then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-20)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(20), rad(-20), rad(-30)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(0.65, -0, -0.65) * angles(rad(-50), rad(-25), rad(0)) * angles(rad(35), rad(-75), rad(-205)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.4, 0.5, 0.15) * angles(rad(0), rad(30), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1, -1, -0.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-10), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, 0 ) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-10), rad(35), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		else
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(20)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(30), rad(-20), rad(20)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.4, 0.5, 0.15) * angles(rad(0), rad(-30), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-0.65, -0, -0.875) * angles(rad(-50), rad(25), rad(0)) * angles(rad(45), rad(90), rad(205)) * angles(rad(-5), rad(-0), rad(-10)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1, -1, -0.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-10), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, 0 ) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-10), rad(35), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		end
	elseif anim == "fail" then
		if not sword then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0.75) * angles(rad(15), rad(-0), rad(-0)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(35), rad(0), rad(0 + 15 * sin(sine / 7.5))), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25- 0.05 * sin(sine / 7.5) , 0.5, -0.75) * angles(rad(85), rad(-30), rad(-85)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.35, 0.6, -0.25) * angles(rad(90), rad(-45), rad(45)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1.25, -0.6, -1.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(10), rad(10), rad(-50)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -0, -1) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(10), rad(-5)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		else
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0.75) * angles(rad(15), rad(-0), rad(-0)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(35), rad(0), rad(0 + 15 * sin(sine / 7.5))), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.35, 0.6, -0.25) * angles(rad(90), rad(45), rad(-45)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25- 0.05 * sin(sine / 7.5) , 0.5, -0.75) * angles(rad(85), rad(30), rad(85)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1.25, -0.6, -1.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(10), rad(10), rad(-50)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -0, -1) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(10), rad(-5)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		end
	elseif anim == "yes" then
		if not sword then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0+ 0.125 * sin(sine / 38)) * angles(rad(0), rad(0), rad(-0)), 0.1)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0+ 0.025 * sin(sine / 25)) * angles(rad(0+ 35 * sin(sine / 5)), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.5+ 0.125 * sin(sine / 38), 0) * angles(rad(0), rad(0), rad(8)) * rsC0, 0.1)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.5+ 0.125 * sin(sine / 38), 0) * angles(rad(0), rad(0), rad(-8)) * lsC0, 0.1)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1- 0.125 * sin(sine / 38), 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-7.5), rad(-0), rad(0)), 0.1)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1- 0.125 * sin(sine / 38), -0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(0)), 0.1)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		else
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0+ 0.125 * sin(sine / 38)) * angles(rad(0), rad(0), rad(-0)), 0.1)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0+ 0.025 * sin(sine / 25)) * angles(rad(0+ 35 * sin(sine / 5)), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.3 , 0.45+ 0.125 * sin(sine / 38), 0) * angles(rad(0), rad(0), rad(3)) * rsC0, 0.1)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.15, 0) * angles(rad(15), rad(0), rad(25)) * lsC0, 0.1)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1- 0.125 * sin(sine / 38), 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-7.5), rad(-0), rad(0)), 0.1)
			lh.C0 = lh.C0:Lerp(cframe(-1.1, -1- 0.125 * sin(sine / 38), -0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(0)), 0.1)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		end
	elseif anim == "no" then
		if not sword then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0+ 0.125 * sin(sine / 38)) * angles(rad(0), rad(0), rad(-0)), 0.1)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0+ 0.025 * sin(sine / 30)) * angles(rad(-0), rad(0), rad(0+ 60 * sin(sine / 5))), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.5+ 0.125 * sin(sine / 38), 0) * angles(rad(0), rad(0), rad(8)) * rsC0, 0.1)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.5+ 0.125 * sin(sine / 38), 0) * angles(rad(0), rad(0), rad(-8)) * lsC0, 0.1)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1- 0.125 * sin(sine / 38), 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-7.5), rad(-0), rad(0)), 0.1)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1- 0.125 * sin(sine / 38), -0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(0)), 0.1)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		else
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0+ 0.125 * sin(sine / 38)) * angles(rad(0), rad(0), rad(-0)), 0.1)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0+ 0.025 * sin(sine / 30)) * angles(rad(-0), rad(0), rad(0+ 60 * sin(sine / 5))), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.3 , 0.45+ 0.125 * sin(sine / 38), 0) * angles(rad(0), rad(0), rad(3)) * rsC0, 0.1)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.15, 0) * angles(rad(15), rad(0), rad(25)) * lsC0, 0.1)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1- 0.125 * sin(sine / 38), 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-7.5), rad(-0), rad(0)), 0.1)
			lh.C0 = lh.C0:Lerp(cframe(-1.1, -1- 0.125 * sin(sine / 38), -0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(0)), 0.1)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		end
	elseif anim == "wave" then
		if not sword then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0+ 0.125 * sin(sine / 38)) * angles(rad(0), rad(0), rad(-0)), 0.1)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0- 20 * sin(sine / 38)), rad(0), rad(0)), 0.1)
			rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.75+ 0.025 * sin(sine / 45), 0) * angles(rad(0), rad(0), rad(160 + 45 * sin(sine/2.75))) * angles(rad(0), rad(-90), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.5+ 0.125 * sin(sine / 38), 0) * angles(rad(0), rad(0), rad(-8)) * lsC0, 0.1)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1- 0.125 * sin(sine / 38), 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-7.5), rad(-0), rad(0)), 0.1)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1- 0.125 * sin(sine / 38), -0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(0)), 0.1)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		else
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0+ 0.125 * sin(sine / 38)) * angles(rad(0), rad(0), rad(-0)), 0.1)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(0)), 0.1)
			rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.75+ 0.025 * sin(sine / 45), 0) * angles(rad(0), rad(0), rad(160 + 45 * sin(sine/2.75))) * angles(rad(0), rad(-90), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.15, 0) * angles(rad(15), rad(0), rad(25)) * lsC0, 0.1)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1- 0.125 * sin(sine / 38), 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-7.5), rad(-0), rad(0)), 0.1)
			lh.C0 = lh.C0:Lerp(cframe(-1.1, -1- 0.125 * sin(sine / 38), -0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(0)), 0.1)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		end
	elseif anim == "laugh" then
		if not sword then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0+ 0.1 * sin(sine / 2.25)) * angles(rad(-30), rad(0), rad(-0)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0+ 0.1 * sin(sine / 2.25)) * angles(rad(-10), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25, 0.75+ 0.1 * sin(sine / 2.25), -0.75) * angles(rad(100), rad(-30), rad(-90)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.5+ 0.1 * sin(sine / 2.25), 0) * angles(rad(60), rad(0), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1- 0.1 * sin(sine / 2.25), 0- 0-0.05 * sin(sine / 2.25)) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-0), rad(-30)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1- 0.1 * sin(sine / 2.25), 0- 0-0.05 * sin(sine / 2.25)) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(30)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		else
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0+ 0.1 * sin(sine / 2.25)) * angles(rad(-30), rad(0), rad(-0)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0+ 0.1 * sin(sine / 2.25)) * angles(rad(-10), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5, 0.5+ 0.1 * sin(sine / 2.25), 0) * angles(rad(-30), rad(0), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 0.75+ 0.1 * sin(sine / 2.25), -0.75) * angles(rad(100), rad(30), rad(90)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1- 0.1 * sin(sine / 2.25), 0- 0-0.05 * sin(sine / 2.25)) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-0), rad(-30)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1- 0.1 * sin(sine / 2.25), 0- 0-0.05 * sin(sine / 2.25)) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(30)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		end
	elseif anim == "dash" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0+ 0.075 * sin(sine / 6)) * angles(rad(25), rad(0), rad(-0)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-15), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.5+ 0.1 * sin(sine / 6), 0- 0.1 * sin(sine / 6)) * angles(rad(-30), rad(0), rad(25)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.5+ 0.1 * sin(sine / 6), 0- 0.1 * sin(sine / 6)) * angles(rad(-30), rad(0), rad(-25)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1- 0.1 * sin(sine / 6), -0.5- 0.1 * sin(sine / 6)) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-0), rad(-65)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -0.75- 0.1 * sin(sine / 6), -0.75- 0.1 * sin(sine / 6)) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(15)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0+ 0.075 * sin(sine / 6), 0) * angles(rad(20), rad(0), rad(-0)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.5, -0+ 0.1 * sin(sine / 6)) * angles(rad(65), rad(0), rad(25)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.5, -0+ 0.1 * sin(sine / 6)) * angles(rad(65), rad(0), rad(-25)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1, -0.75, -0- 0.075 * sin(sine / 6)) *  angles(rad(0), rad(90), rad(0)) * angles(rad(0), rad(-0), rad(50)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -0.75, -0.45- 0.075 * sin(sine / 6)) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-0), rad(0), rad(30)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		end	
	elseif anim == "point" then
		if not sword then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0+ 0.125 * sin(sine / 38)) * angles(rad(0), rad(0), rad(-0)), 0.1)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0- 20 * sin(sine / 38)), rad(0), rad(0)), 0.1)
			rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.5+ 0.125 * sin(sine / 38), 0) * angles(rad(90), rad(0), rad(8)) * rsC0, 0.1)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.5+ 0.125 * sin(sine / 38), 0) * angles(rad(0), rad(0), rad(-8)) * lsC0, 0.1)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1- 0.125 * sin(sine / 38), 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-7.5), rad(-0), rad(0)), 0.1)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1- 0.125 * sin(sine / 38), -0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(0)), 0.1)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		else
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0+ 0.125 * sin(sine / 38)) * angles(rad(0), rad(0), rad(-0)), 0.1)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(0)), 0.1)
			rs.C0 = rs.C0:Lerp(cframe(1.3 , 0.45+ 0.125 * sin(sine / 38), 0) * angles(rad(0), rad(0), rad(3)) * rsC0, 0.1)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.5, 0) * angles(rad(90), rad(0), rad(0)) * lsC0, 0.1)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1- 0.125 * sin(sine / 38), 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-7.5), rad(-0), rad(0)), 0.1)
			lh.C0 = lh.C0:Lerp(cframe(-1.1, -1- 0.125 * sin(sine / 38), -0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(0)), 0.1)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		end
	elseif anim == "thumbs" then
		if not sword then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-0)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25 , 0.15, -0.75) * angles(rad(90), rad(0), rad(-25)) * angles(rad(15), rad(-0), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.5, 0) * angles(rad(0), rad(0), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(0.875, -1, 0.35) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-45), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, -0.15) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		else
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-0)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5, 0.5, 0) * angles(rad(0), rad(0), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25 , 0.15, -0.75) * angles(rad(90), rad(0), rad(25)) * angles(rad(15), rad(-0), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(0.875, -1, 0.35) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-45), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, -0.15) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		end
	elseif anim == "sneeze" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-0.25, -0) * angles(rad(30), rad(0), rad(-0)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-30), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1 , 0.75, -0.15) * angles(rad(0), rad(15), rad(140)) * angles(rad(120), rad(0), rad(15)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1, 0.75, -0.15) * angles(rad(0), rad(-15), rad(-140)) * angles(rad(120), rad(0), rad(-15)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1, -1, -0.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-0), rad(5)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -0.95, -0.5) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(-30)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-0.5, -0.15) * angles(rad(60), rad(0), rad(-0)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(20), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1 , 0.75, -0) * angles(rad(0), rad(15), rad(140)) * angles(rad(120), rad(0), rad(30)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1, 0.75, -0) * angles(rad(0), rad(-15), rad(-140)) * angles(rad(120), rad(0), rad(-30)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1, -1, -0.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-0), rad(35)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -0.95, -0.5) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(-75)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 3 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-0.15, -0) * angles(rad(35), rad(0), rad(-0)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(40), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1- 0.1 * sin(sine / 4.5), 0.75, -0.15) * angles(rad(0), rad(15), rad(140)) * angles(rad(120), rad(0), rad(15)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1- 0.1 * sin(sine / 4.5), 0.75, -0.15) * angles(rad(0), rad(-15), rad(-140)) * angles(rad(120), rad(0), rad(-15)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1, -1, -0.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-0), rad(15)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -0.95, -0.5) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(-35)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		end
	elseif anim == "lose" then
		if not sword then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-0)), 0.1)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-10), rad(0), rad(0)), 0.1)
			rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.25, -0.3) * angles(rad(0), rad(0), rad(90)) * angles(rad(30), rad(-180), rad(15)) * rsC0, 0.1)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.25, -0.3) * angles(rad(0), rad(0), rad(-90)) * angles(rad(30), rad(180), rad(-15)) * lsC0, 0.1)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-7.5), rad(-0), rad(0)), 0.1)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, -0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(0)), 0.1)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		else
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -1.25) * angles(rad(45), rad(-0), rad(-0)), 0.1)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(35), rad(0), rad(0)), 0.1)
			rs.C0 = rs.C0:Lerp(cframe(1 , 0.5, -1) * angles(rad(40), rad(75), rad(-0)) * angles(rad(-10), rad(0), rad(-10)) * rsC0, 0.1)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 0.25, -0.5) * angles(rad(65), rad(-45), rad(30)) * angles(rad(25), rad(0), rad(-0)) * lsC0, 0.1)
			rh.C0 = rh.C0:Lerp(cframe(1.25, -0.6, -0.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(10), rad(-20), rad(-35)), 0.1)
			lh.C0 = lh.C0:Lerp(cframe(-1 , 0.15, -0.75) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(-15), rad(-15)), 0.1)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		end
	elseif anim == "win" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0.15) * angles(rad(0), rad(0), rad(-75)), 0.1)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(20), rad(0), rad(0)), 0.1)
			rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.15, -1.15) * angles(rad(0), rad(-75), rad(-180)) * angles(rad(-15), rad(30), rad(-30)) * rsC0, 0.1)
			ls.C0 = ls.C0:Lerp(cframe(-0.75, -0.25, 0.75) * angles(rad(0), rad(90), rad(60)) * angles(rad(30), rad(-0), rad(0)) * lsC0, 0.1)
			rh.C0 = rh.C0:Lerp(cframe(1 , -0.85, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-20), rad(-35), rad(-10)), 0.1)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -0.85, -0.45) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(0)), 0.1)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0) * angles(rad(-10), rad(15), rad(-115)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25 , 0, 0.45) * angles(rad(90), rad(10), rad(-30)) * angles(rad(0), rad(0), rad(30)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-2, 1, 0) * angles(rad(165), rad(-20), rad(-10)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -0.75, -0.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-20), rad(-25), rad(-10)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1, -1.15, 0.15) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-10), rad(30), rad(10)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		end
	elseif anim == "win2" then
		rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-75)), 0.3)
		nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(60)), 0.3)
		rs.C0 = rs.C0:Lerp(cframe(1.25, 0.15, -0.75) * angles(rad(0), rad(60), rad(-0)) * rsC0, 0.3)
		ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.15, 0.75) * angles(rad(0), rad(0), rad(30)) * angles(rad(30), rad(0), rad(0)) * lsC0, 0.3)
		rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-30), rad(0)), 0.3)
		lh.C0 = lh.C0:Lerp(cframe(-1.1, -1, -0.45) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-5), rad(-15), rad(0)), 0.3)
		WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
		WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
	elseif anim == "swin" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-45)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(10), rad(0), rad(40)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.35, 0.5, -0.25) * angles(rad(-15), rad(35), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5 , 0.5, 0) * angles(rad(45), rad(0), rad(-0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, -0.45) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(30), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-0.75, -1, 0.5) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(75), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-1, 0) * angles(rad(-0), rad(-0), rad(-90)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(15), rad(0), rad(30)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5, 0.35, -0.25) * angles(rad(-25), rad(15), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-0.5, 0.5, -0.9) * angles(rad(75), rad(25), rad(105)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1, -1 , 0.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-5), rad(-45), rad(-0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-0.875, -1, 0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-0), rad(45), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 3 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-1, 0) * angles(rad(-10), rad(-0), rad(-75)), 0.1)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(45)), 0.1)
			rs.C0 = rs.C0:Lerp(cframe(1.45, 0.5, -0.25) * angles(rad(0), rad(30), rad(0)) * rsC0, 0.1)
			ls.C0 = ls.C0:Lerp(cframe(-1.45, 1.75, -0) * angles(rad(0), rad(-60), rad(-90)) * angles(rad(0), rad(-0), rad(-45)) * angles(rad(15), rad(-0), rad(0)) * lsC0, 0.1)
			rh.C0 = rh.C0:Lerp(cframe(1, -0.75 , 0.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-15), rad(-30), rad(-0)), 0.1)
			lh.C0 = lh.C0:Lerp(cframe(-0.875, -1.15, 0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(5), rad(45), rad(5)), 0.1)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 4 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-1, 0) * angles(rad(-5), rad(-0), rad(-75)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(20), rad(0), rad(45)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.45, 0.5, -0.25) * angles(rad(0), rad(15), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.25, -0.5) * angles(rad(65), rad(180), rad(85)) * angles(rad(-0), rad(-145), rad(0)) * angles(rad(-30), rad(-0), rad(0)) * rsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1, -1 , 0.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-10), rad(-30), rad(-0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-0.875, -1.15, 0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(45), rad(5)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 5 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-1, 0) * angles(rad(-5), rad(-0), rad(-75)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(20), rad(0), rad(45)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.45, 0.5, -0.25) * angles(rad(0), rad(15), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.75, 0.3, 0.15) * angles(rad(65), rad(180), rad(85)) * angles(rad(-0), rad(-0), rad(0)) * angles(rad(30), rad(-0), rad(-30)) * rsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1, -1 , 0.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-10), rad(-30), rad(-0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-0.875, -1.15, 0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(45), rad(5)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 6 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-1, 0) * angles(rad(-5), rad(-0), rad(-75)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(20), rad(0), rad(45)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.45, 0.5, -0.25) * angles(rad(0), rad(15), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.3, 0.15) * angles(rad(65), rad(180), rad(85)) * angles(rad(-0), rad(-0), rad(0)) * angles(rad(20), rad(-0), rad(-30)) * rsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1, -1 , 0.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-10), rad(-30), rad(-0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-0.875, -1.15, 0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(45), rad(5)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		end
	elseif anim == "swin2" then
		rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-75)), 0.3)
		nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(60)), 0.3)
		rs.C0 = rs.C0:Lerp(cframe(1.25, 0.15, -0.75) * angles(rad(0), rad(60), rad(-0)) * rsC0, 0.3)
		ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.5, 0) * angles(rad(0), rad(0), rad(-75)) * angles(rad(15), rad(0), rad(0)) * lsC0, 0.3)
		rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-30), rad(0)), 0.3)
		lh.C0 = lh.C0:Lerp(cframe(-1.1, -1, -0.45) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-5), rad(-15), rad(0)), 0.3)
		WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
		WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
	elseif anim == "spawn" then
		rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-75)), 0.3)
		nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(60)), 0.3)
		rs.C0 = rs.C0:Lerp(cframe(1.25, 0.45, -0.75) * angles(rad(0), rad(60), rad(-0)) * rsC0, 0.3)
		ls.C0 = ls.C0:Lerp(cframe(-1, 0.5, 0.45) * angles(rad(0), rad(60), rad(0)) * lsC0, 0.3)
		rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-30), rad(0)), 0.3)
		lh.C0 = lh.C0:Lerp(cframe(-1.1, -1, -0.45) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-5), rad(-15), rad(0)), 0.3)
		WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
		WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
	elseif anim == "spawn2" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -2) * angles(rad(0), rad(-20), rad(-105)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25 , 0.5, -0.75) * angles(rad(60), rad(0), rad(-60)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 0.75, -0) * angles(rad(110), rad(-50), rad(50)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1.25, -1, -0.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(90), rad(-0), rad(20)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1.5, -0.5, -1) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(75), rad(0), rad(-20)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -2) * angles(rad(-0), rad(-20), rad(-105)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(60)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25 , 0.5, -0.75) * angles(rad(60), rad(0), rad(-60)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 0.75, -0) * angles(rad(110), rad(-50), rad(50)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1.25, -1, -0.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(90), rad(-0), rad(20)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1.5, -0.5, -1) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(75), rad(0), rad(-20)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 3 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0.25) * angles(rad(10), rad(-10), rad(-60)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.35 , 0.5, -0.4) * angles(rad(0), rad(45), rad(-0)) * angles(rad(-15), rad(-0), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.4, 0.5, -0.15) * angles(rad(30), rad(0), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1, -0.75, -0.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(0), rad(-35), rad(-0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -0.75, -0.65) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(10), rad(-10)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		end
	elseif anim == "sspawn" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-75)), 1)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(60)), 1)
			rs.C0 = rs.C0:Lerp(cframe(1.25, 0.15, -0.75) * angles(rad(0), rad(60), rad(-0)) * rsC0, 1)
			ls.C0 = ls.C0:Lerp(cframe(-1.15, 0.5, 0.75) * angles(rad(0), rad(0), rad(0)) * angles(rad(0), rad(60), rad(0)) * angles(rad(15), rad(-0), rad(0)) * lsC0, 1)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-30), rad(0)), 1)
			lh.C0 = lh.C0:Lerp(cframe(-1.1, -1, -0.45) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-5), rad(-15), rad(0)), 1)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(1.25, -1.45, 0.825) *  angles(rad(-25), rad(180), rad(180)) * angles(rad(15), rad(-60), rad(0)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-90)), 1)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 1)
			rs.C0 = rs.C0:Lerp(cframe(1.25 , 0.3, -0.6) * angles(rad(0), rad(-90), rad(-105)) * rsC0, 1)
			ls.C0 = ls.C0:Lerp(cframe(-1.15, 0.75, -0.45) * angles(rad(0), rad(-90), rad(-90)) * lsC0, 1)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-7.5), rad(-0), rad(0)), 1)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, -0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(0)), 1)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.75, -2.25, 1.75) *  angles(rad(-25), rad(180), rad(180)) *  angles(rad(30), rad(90), rad(0)) *  angles(rad(-90), rad(0), rad(0)), 1)
		elseif frame == 3 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-90)), 1)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 1)
			rs.C0 = rs.C0:Lerp(cframe(1.25 , 0.3, -0.6) * angles(rad(0), rad(-90), rad(-105)) * angles(rad(60), rad(0), rad(-0)) * rsC0, 1)
			ls.C0 = ls.C0:Lerp(cframe(-1.15, 0.75, -0.45) * angles(rad(0), rad(-90), rad(-90)) * angles(rad(-60), rad(0), rad(-0)) * lsC0, 1)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-7.5), rad(-0), rad(0)), 1)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, -0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(0)), 1)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.75, -3, 1.25) *  angles(rad(-25), rad(180), rad(180)) *  angles(rad(90), rad(90), rad(0)) *  angles(rad(-90), rad(0), rad(0)), 1)
		elseif frame == 4 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-45)), 1)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(20), rad(0), rad(0)), 0.1)
			rs.C0 = rs.C0:Lerp(cframe(1.3 , 0.45, 0) * angles(rad(0), rad(0), rad(30)) * rsC0, 0.1)
			ls.C0 = ls.C0:Lerp(cframe(-1.15, 0.75, -0.45) * angles(rad(0), rad(-90), rad(-90)) * angles(rad(-60), rad(0), rad(60)) * lsC0, 1)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-7.5), rad(-0), rad(0)), 0.1)
			lh.C0 = lh.C0:Lerp(cframe(-1.1, -1, -0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(0)), 0.1)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(1.45, -1.5, 0.875) *  angles(rad(-25), rad(180), rad(180)) *  angles(rad(90), rad(90), rad(0)) *  angles(rad(-90), rad(0), rad(-60)) * angles(rad(30), rad(0), rad(0)), 1)
		elseif frame == 5 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-45)), 1)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 1)
			rs.C0 = rs.C0:Lerp(cframe(1.25 , 0.3, -0.6) * angles(rad(0), rad(-90), rad(-105)) * rsC0, 1)
			ls.C0 = ls.C0:Lerp(cframe(-1.15, 0.75, -0.45) * angles(rad(0), rad(-90), rad(-90)) * lsC0, 1)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-7.5), rad(-0), rad(0)), 1)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, -0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(0)), 1)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.75, -2.25, 1.75) *  angles(rad(-25), rad(180), rad(180)) *  angles(rad(30), rad(90), rad(0)) *  angles(rad(-90), rad(0), rad(0)), 1)
		end	
	elseif anim == "sspawn2" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-0)), 0.1)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.1)
			rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.5, 0) * angles(rad(0), rad(0), rad(0)) * rsC0, 0.1)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.5, 0) * angles(rad(0), rad(-20), rad(0)) * lsC0, 0.1)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, -0) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-20), rad(0)), 0.1)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, 0.15) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-10), rad(30), rad(0)), 0.1)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(10), rad(-10), rad(-90)), 0.2)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(-30)), 0.2)
			rs.C0 = rs.C0:Lerp(cframe(1.5 , 0, 0) * angles(rad(0), rad(-90), rad(0)) * angles(rad(90), rad(0), rad(-30)) * rsC0, 0.2)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 0.25, 0) * angles(rad(0), rad(20), rad(-30)) * angles(rad(20), rad(-0), rad(0)) * lsC0, 0.2)
			rh.C0 = rh.C0:Lerp(cframe(0.15, -0.75, -1.15) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-20), rad(75), rad(0)) * angles(rad(-10), rad(-0), rad(20)), 0.2)
			lh.C0 = lh.C0:Lerp(cframe(-0.15, -1.15, 1) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-10), rad(120), rad(0)), 0.2)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 3 then	
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(0)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(-20)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.75, 0) * angles(rad(0), rad(45), rad(90)) * rsC0, 0.75)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.45, -0.15) * angles(rad(0), rad(-90), rad(-30)) * angles(rad(30), rad(-10), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0.15) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-10), rad(-30), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, -0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-0), rad(-10), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 4 then		
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(45)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(-20)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(-0.15 , 1, -0.75) * angles(rad(0), rad(90), rad(90)) * angles(rad(120), rad(0), rad(15)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.45, -0.15) * angles(rad(0), rad(-90), rad(-30)) * angles(rad(30), rad(-10), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0.15) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-10), rad(-30), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, -0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-0), rad(-10), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		end
	elseif anim == "taunt" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-0)), 0.1)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.1)
			rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.5, 0) * angles(rad(0), rad(0), rad(8)) * rsC0, 0.1)
			ls.C0 = ls.C0:Lerp(cframe(-1.5 , 0.65, 0.25) * angles(rad(210), rad(-25), rad(35)) * angles(rad(25), rad(-20), rad(30)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-7.5), rad(-0), rad(0)), 0.1)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, -0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(0)), 0.1)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-0)), 0.1)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-10), rad(-17), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.5, 0) * angles(rad(0), rad(0), rad(8)) * rsC0, 0.1)
			ls.C0 = ls.C0:Lerp(cframe(-1.5 , 0.65, 0.25) * angles(rad(210), rad(-25), rad(35)) * angles(rad(25), rad(-20), rad(20)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-7.5), rad(-0), rad(0)), 0.1)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, -0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(0)), 0.1)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 3 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-0)), 0.1)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-10), rad(15), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.5, 0) * angles(rad(0), rad(0), rad(8)) * rsC0, 0.1)
			ls.C0 = ls.C0:Lerp(cframe(-1.5 , 0.65, 0.25) * angles(rad(210), rad(-25), rad(35)) * angles(rad(25), rad(-20), rad(20)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-7.5), rad(-0), rad(0)), 0.1)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, -0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(0)), 0.1)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		end
	elseif anim == "staunt" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-0.1, 0) * angles(rad(0), rad(0), rad(45)), 0.1)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(-20)), 0.1)
			rs.C0 = rs.C0:Lerp(cframe(1.5, 0.45, 0.3) * angles(rad(0), rad(-30), rad(0)) * angles(rad(60), rad(0), rad(15)) * rsC0, 0.1)
			ls.C0 = ls.C0:Lerp(cframe(-0.25, 0.25, -1.15) * angles(rad(150), rad(0), rad(25)) * angles(rad(20), rad(30), rad(30)) * lsC0, 0.1)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1.05, 0) *  angles(rad(0), rad(90), rad(0)) * angles(rad(0), rad(-10), rad(5)), 0.1)
			lh.C0 = lh.C0:Lerp(cframe(-0.9, -1, 0.4) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-12.5), rad(45), rad(0)), 0.1)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-0.125, 0) * angles(rad(0), rad(0), rad(45)), 0.45)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(-20)), 0.45)
			rs.C0 = rs.C0:Lerp(cframe(1.5, 0.45, 0.3) * angles(rad(0), rad(-30), rad(0)) * angles(rad(60), rad(0), rad(15)) * rsC0, 0.666)
			ls.C0 = ls.C0:Lerp(cframe(-2, 0.05, 0) * angles(rad(0), rad(30), rad(-25)) * angles(rad(165), rad(0), rad(10)) * lsC0, 0.666)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0) *  angles(rad(0), rad(90), rad(0)) * angles(rad(0), rad(-10), rad(2.5)), 0.45)
			lh.C0 = lh.C0:Lerp(cframe(-0.9, -1, 0.4) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-15), rad(45), rad(0)), 0.45)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		end
	elseif anim == "respect" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-165)), 0.1)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(20), rad(0), rad(0)), 0.1)
			rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.5, 0.15) * angles(rad(0), rad(-20), rad(-0)) * rsC0, 0.1)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 0.5, -0.45) * angles(rad(150), rad(0), rad(45)) * lsC0, 0.1)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-20), rad(0)), 0.1)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, 0 ) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(20)), 0.1)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-1, 0) * angles(rad(0), rad(0), rad(-135)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(60)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.15 , 0.5, 0.75) * angles(rad(0), rad(-45), rad(-0)) * angles(rad(-30), rad(-0), rad(-0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 0.5, 0.25) * angles(rad(90), rad(0), rad(-125)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(0.75, -1, 0.75) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-45), rad(-20)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-0.75, -1, -0.75) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(-35), rad(-20)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		end	
	elseif anim == "ftrans" then
		rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-22.5)), 0.3)
		nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(10), rad(-10), rad(20)), 0.3)
		rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.25, -0.75) * angles(rad(180), rad(15), rad(-45)) * rsC0, 0.3)
		ls.C0 = ls.C0:Lerp(cframe(-1.15, 0.5, -0.5) * angles(rad(0), rad(-45), rad(0)) * lsC0, 0.3)
		rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0.35) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-30), rad(0)) * angles(rad(-0), rad(-0), rad(-30)), 0.3)
		lh.C0 = lh.C0:Lerp(cframe(-0.75, -1, -0.6) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(-45), rad(0)) * angles(rad(-0), rad(-0), rad(0)), 0.3)
		WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
		WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
	elseif anim == "mtrans" then
		rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-30)), 0.3)
		nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(15)), 0.3)
		rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.5, 0) * angles(rad(30), rad(0), rad(-0)) * rsC0, 0.3)
		ls.C0 = ls.C0:Lerp(cframe(-1.75, 1, 0) * angles(rad(150), rad(-30), rad(0)) * angles(rad(-0), rad(-0), rad(30)) * lsC0, 0.3)
		rh.C0 = rh.C0:Lerp(cframe(1 , -1, -0) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-20), rad(0)), 0.1)
		lh.C0 = lh.C0:Lerp(cframe(-1 , -1, 0.15) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-10), rad(30), rad(0)), 0.1)
		WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
		WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
	elseif anim == "wpunch" then	
		rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0.25) * angles(rad(0), rad(0), rad(-90)), 0.6)
		nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(75)), 0.6)
		rs.C0 = rs.C0:Lerp(cframe(1.45, 0.15, -0.5) * angles(rad(60), rad(0), rad(-30)) * rsC0, 0.6)
		ls.C0 = ls.C0:Lerp(cframe(-1.75, 0.75, -0) * angles(rad(90), rad(0), rad(-90)) * angles(rad(0), rad(-75), rad(0)) * lsC0, 0.6)
		rh.C0 = rh.C0:Lerp(cframe(1 , -0.75, -0.15) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-15), rad(-20), rad(0)), 0.6)
		lh.C0 = lh.C0:Lerp(cframe(-1, -0.75, -0) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(50), rad(0)), 0.6)
		WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
		WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
	elseif anim == "dwpunch" then	
		rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0.75) * angles(rad(10), rad(-15), rad(-75)), 0.3)
		nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(45)), 0.3)
		rs.C0 = rs.C0:Lerp(cframe(1.45, 0.15, -0.5) * angles(rad(60), rad(0), rad(-30)) * rsC0, 0.6)
		ls.C0 = ls.C0:Lerp(cframe(-2, 0.75, -0.25) * angles(rad(90), rad(0), rad(-90)) * angles(rad(0), rad(-75), rad(0)) * angles(rad(15), rad(-0), rad(0)) * lsC0, 0.6)
		rh.C0 = rh.C0:Lerp(cframe(1.25, -0.1, -0.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(10), rad(-30), rad(15)), 0.3)
		lh.C0 = lh.C0:Lerp(cframe(-1 , -0.65, -1) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(10), rad(45)), 0.3)
		WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
		WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
	elseif anim == "awpunch" then	
		rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0.25) * angles(rad(50), rad(0), rad(-90)), 0.3)
		nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-15), rad(0), rad(50)), 0.3)
		rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.5, 0) * angles(rad(60), rad(0), rad(25)) * rsC0, 0.3)
		ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.5, -0.75) * angles(rad(120), rad(0), rad(35)) * lsC0, 0.3)
		rh.C0 = rh.C0:Lerp(cframe(1, -1, -0.65) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-0), rad(-15)), 0.3)
		lh.C0 = lh.C0:Lerp(cframe(-1 , -0.6, -1) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(35)), 0.3)
		WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
		WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
	elseif anim == "spunch" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0.25) * angles(rad(-10), rad(0), rad(-75)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(20), rad(0), rad(25)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.5, 0) * angles(rad(90), rad(75), rad(25)) * angles(rad(-30), rad(20), rad(30)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.25, 0) * angles(rad(145), rad(-30), rad(20)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -0.75, -0.15) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-15), rad(-20), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1, -1, -0) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(30), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(10), rad(-0), rad(60)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(15), rad(0), rad(-30)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25 , 0.75, -0.5) * angles(rad(100), rad(15), rad(30)) * angles(rad(10), rad(75), rad(-30)) * angles(rad(-30), rad(-0), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.3, 0.75, 0) * angles(rad(0), rad(-30), rad(-65)) * angles(rad(10), rad(20), rad(-15)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(-0.25, -1, 1) *  angles(rad(7.5), rad(90), rad(0)) * angles(rad(25), rad(-135), rad(20)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-0.25, -0.85, -1.25) *  angles(rad(10), rad(-90), rad(0)) * angles(rad(25), rad(-90), rad(20)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 3 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0.45) * angles(rad(20), rad(0), rad(45)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(15), rad(0), rad(-30)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1 , 0.25, -0.75) * angles(rad(30), rad(75), rad(50)) * angles(rad(50), rad(0), rad(-20)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.25, 0) * angles(rad(50), rad(0), rad(30)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(-0.25, -0.75, 0.75) *  angles(rad(7.5), rad(90), rad(0)) * angles(rad(5), rad(-105), rad(10)) * angles(rad(-20), rad(-30), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-0.25, -0.5, -1.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(-45), rad(-20)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		end
	elseif anim == "fspunch" then	
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0.25) * angles(rad(0), rad(0), rad(-75)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(20), rad(0), rad(45)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.5, 0) * angles(rad(90), rad(75), rad(25)) * angles(rad(30), rad(-0), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.25, 0) * angles(rad(145), rad(0), rad(-20)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -0.75, -0.15) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-15), rad(-20), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1, -0.75, -0) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(30), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0.5) * angles(rad(30), rad(-0), rad(45)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(15), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1, 0.75, -1) * angles(rad(100), rad(90), rad(-60)) * angles(rad(-15), rad(15), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-0.75, 0.15, 0.75) * angles(rad(30), rad(-0), rad(-60)) * angles(rad(30), rad(30), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -0.75, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-0), rad(-20)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-0.75 , -0.75, -0.5) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(20), rad(0)) * angles(rad(30), rad(-0), rad(-10)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)	
		elseif frame == 3 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0.25) * angles(rad(10), rad(-0), rad(25)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(15), rad(0), rad(-20)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.3, 0.25, -0.25) * angles(rad(50), rad(-15), rad(-45)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.4, 0.45, 0) * angles(rad(60), rad(-20), rad(-15)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(0.25, -0.75, 0.75) *  angles(rad(7.5), rad(90), rad(0)) * angles(rad(5), rad(-105), rad(10)) * angles(rad(-20), rad(-0), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-0.5, -0.65, -1) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(-25), rad(-10)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)	
		end	
	elseif anim == "dspunch" then	
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -1.45) * angles(rad(0), rad(-10), rad(-20)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(20), rad(0), rad(-20)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5, 0.5, 0) * angles(rad(45), rad(20), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.5, 0) * angles(rad(90), rad(0), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(0.5, -1, 1) *  angles(rad(0), rad(90), rad(0)) * angles(rad(0), rad(-100), rad(-105)) * angles(rad(-30), rad(-0), rad(30)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1, 0.25, -1) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(-0), rad(-0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0.25) * angles(rad(0), rad(0), rad(30)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-20), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5, 1, -0.25) * angles(rad(160), rad(0), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.5, 0.5) * angles(rad(70), rad(0), rad(-40)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(0.75, -1, 1) *  angles(rad(0), rad(90), rad(0)) * angles(rad(0), rad(-40), rad(-20)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-0.55, -1, -1) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(-30), rad(10)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		end
	elseif anim == "aspunch" then	
		rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0.25) * angles(rad(50), rad(0), rad(90)), 0.5)
		nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(15), rad(0), rad(-75)), 0.5)
		rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.5, 0) * angles(rad(60), rad(0), rad(75)) * rsC0, 0.5)
		ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.5, -0) * angles(rad(120), rad(0), rad(-20)) * lsC0, 0.5)
		rh.C0 = rh.C0:Lerp(cframe(-0.25, -1, 0.75) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-30), rad(-150), rad(-65)), 0.5)
		lh.C0 = lh.C0:Lerp(cframe(1, 0, -.5) *  angles(rad(60), rad(-90), rad(0)) * angles(rad(0), rad(-120), rad(-45)), 0.5)
		WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
		WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
	elseif anim == "wkick" then	
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0, 0, -0.15) * angles(rad(15), rad(0), rad(-30)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-20), rad(10), rad(-10)), 0.3)
			rs.C0 = rs.C0:Lerp( cframe(1.15, 1, -0.75) * angles(rad(140), rad(0), rad(-30)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 0.25, 0) * angles(rad(90), rad(-75), rad(0)) * angles(rad(-15), rad(-0), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1, -0.5, -0.15) * angles(rad(0), rad(90), rad(0)) * angles(rad(-30), rad(-20), rad(-20)) * angles(rad(-0), rad(-20), rad(-15)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1, -0.85, -0.25) * angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(25), rad(-20)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(-15), rad(-5), rad(45)), 0.5)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(-30)), 0.5)
			rs.C0 = rs.C0:Lerp(cframe(1.25, 0.25, 0.25) * angles(rad(0), rad(-10), rad(45)) * angles(rad(-20), rad(-0), rad(0)) * rsC0, 0.5)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 0.5, 0.15) * angles(rad(75), rad(0), rad(40)) * angles(rad(-0), rad(75), rad(-140)) * lsC0, 0.5)
			rh.C0 = rh.C0:Lerp(cframe(1, -0.5, -0.75) * angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-45), rad(75)) * angles(rad(-0), rad(90), rad(0)), 0.5)
			lh.C0 = lh.C0:Lerp(cframe(-0.5, -0.75, 0.6) *  angles(rad(-15), rad(-90), rad(0)) * angles(rad(0), rad(75), rad(-10)), 0.5)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		end
	elseif anim == "dwkick" then	
		rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -1.25) * angles(rad(-25), rad(0), rad(-90)), 0.3)
		nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(10), rad(10), rad(50)), 0.3)
		rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.25, 0) * angles(rad(90), rad(0), rad(15)) * rsC0, 0.3)
		ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.5, -0.5) * angles(rad(50), rad(-40), rad(-15)) * lsC0, 0.3)
		rh.C0 = rh.C0:Lerp(cframe(0.5, 0.5, -0.45) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-20), rad(-10), rad(-5)), 0.3)
		lh.C0 = lh.C0:Lerp(cframe(-1 , -0.25, -0.5) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-40), rad(15), rad(0)), 0.3)
		WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
		WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
	elseif anim == "awkick" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-15)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(15), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25 , 0.5, -0.75) * angles(rad(90), rad(0), rad(-45)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 0.5, -0.75) * angles(rad(50), rad(0), rad(30)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -0, -0.75) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-15), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -0.25, -1.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(35)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(15), rad(0), rad(-115)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(90)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.25, 0) * angles(rad(60), rad(0), rad(-0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 0.75, -0.25) * angles(rad(0), rad(-0), rad(-90)) * angles(rad(30), rad(0), rad(0))  * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(0.75, -0.45, -0.75) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(15), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1, -0.5, 0) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-75), rad(0), rad(30)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		end	
	elseif anim == "skick" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-115)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(45)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.5, 0) * angles(rad(0), rad(0), rad(-0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.5, -0.25) * angles(rad(0), rad(-45), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, -0.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-10), rad(-0), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, 0 ) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-15), rad(30), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0.25) * angles(rad(-10), rad(10), rad(135)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(-45)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25 , 0.75, 0) * angles(rad(0), rad(0), rad(90)) * angles(rad(-50), rad(-0), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.25, 0) * angles(rad(75), rad(0), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(0.25, -0.25, -1.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-10), rad(45), rad(-0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-0.25 , -1, 0.5) *  angles(rad(20), rad(-90), rad(0)) * angles(rad(5), rad(135), rad(-10)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 3 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0) * angles(rad(-30), rad(0), rad(45)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(-45)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25 , 0.75, 0) * angles(rad(0), rad(0), rad(90)) * angles(rad(-50), rad(-0), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.25, 0) * angles(rad(75), rad(0), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-45), rad(60)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1.25, -0.5, 0.5) *  angles(rad(-15), rad(-90), rad(0)) * angles(rad(-45), rad(60), rad(20)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 4 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0) * angles(rad(-0), rad(0), rad(15)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(-0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25 , 0.75, 0.15) * angles(rad(15), rad(-45), rad(20)) * angles(rad(15), rad(20), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.5, -0.5) * angles(rad(0), rad(-30), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1.25, -1, -0.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-40), rad(-55)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1, -1, 0.25) *  angles(rad(-15), rad(-90), rad(0)) * angles(rad(10), rad(40), rad(-15)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 5 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0) * angles(rad(0), rad(-0), rad(-60)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(45)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.35 , 0.5, -0.4) * angles(rad(0), rad(45), rad(-0)) * angles(rad(15), rad(-0), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.4, 0.5, -0.15) * angles(rad(0), rad(0), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1, -1, 0.15) *  angles(rad(0), rad(90), rad(0)) * angles(rad(0), rad(-45), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, -0.65) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(10), rad(-0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		end
	elseif anim == "fskick" then	
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0.75) * angles(rad(10), rad(15), rad(90)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(45)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.3, 0.5, -0.5) * angles(rad(90), rad(0), rad(-75)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 0.5, 0) * angles(rad(0), rad(-45), rad(-90))* angles(rad(30), rad(-0), rad(45)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1.25, -0.1, -0.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(10), rad(-30), rad(15)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -0.65, -1) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(10), rad(45)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0.45) * angles(rad(10), rad(0), rad(165)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(20), rad(20), rad(60)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1, 0.15, -0.75) * angles(rad(90), rad(0), rad(-80)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 0.75, 0) * angles(rad(90), rad(0), rad(-15)) * angles(rad(-0), rad(-90), rad(30)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -0.5, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-15), rad(-15)) * angles(rad(-10), rad(-0), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1.15, -0.65, -0.15) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(20), rad(10)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 3 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0.25) * angles(rad(-15), rad(0), rad(-90)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(-30)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5 ,-0.15, -0.75) * angles(rad(90), rad(-30), rad(-75)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.5, 0) * angles(rad(90), rad(0), rad(-90))* angles(rad(-30), rad(-150), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(0.75, -0.5, 0.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-15), rad(-55), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-0.45, 0.15, -0.6) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(-90), rad(0))* angles(rad(-90), rad(-0), rad(-60)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 4 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0) * angles(rad(-15), rad(0), rad(-75)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(30)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.15 ,0.25, -0.75) * angles(rad(90), rad(-30), rad(-75)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.5, 0) * angles(rad(90), rad(0), rad(-90))* angles(rad(-30), rad(-150), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(0.75, -0.75, 0.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-15), rad(-55), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1.25, -0.5, -0.6) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(-90), rad(0))* angles(rad(-90), rad(-0), rad(75)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 5 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0) * angles(rad(-7.5), rad(0), rad(-60)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(30)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1 ,0.25, -1) * angles(rad(75), rad(-15), rad(-75)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.5, 0) * angles(rad(90), rad(0), rad(-90))* angles(rad(-45), rad(-150), rad(30)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1, -0.75, -0.15) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-15), rad(-25), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1, -0.5, -0.6) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(-90), rad(0))* angles(rad(-135), rad(30), rad(150)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		end	
	elseif anim == "dskick" then	
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -1.25) * angles(rad(0), rad(0), rad(-30)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(5), rad(5), rad(35)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1, 0.5, -0.75) * angles(rad(45), rad(0), rad(-30)) * angles(rad(40), rad(50), rad(-40)) * rsC0, 0.1)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 0.5, 0.45) * angles(rad(0), rad(30), rad(0)) * angles(rad(-40), rad(-0), rad(-0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(0.5, -0.5, -0) *  angles(rad(-75), rad(90), rad(0)) * angles(rad(0), rad(-90), rad(30)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -0.75, -0.75) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(60)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -1.4) * angles(rad(-10), rad(0), rad(-15)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(5), rad(5), rad(10)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25, 0.75, -0) * angles(rad(0), rad(0), rad(90)) * angles(rad(-15), rad(0), rad(0)) * rsC0, 0.1)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 0.25, 0.25) * angles(rad(0), rad(30), rad(0)) * angles(rad(55), rad(-0), rad(15)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(0.5, -0.5, -0.5) *  angles(rad(75), rad(90), rad(0)) * angles(rad(0), rad(90), rad(30)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-0.5, -1.25, 1) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(60), rad(105)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 3 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -1) * angles(rad(5), rad(-5), rad(-60)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(5), rad(5), rad(35)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.5, -0.25) * angles(rad(0), rad(60), rad(30)) * angles(rad(-0), rad(-30), rad(20)) * rsC0, 0.1)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.15, -0.5) * angles(rad(15), rad(-25), rad(-0)) * lsC0, 0.1)
			rh.C0 = rh.C0:Lerp(cframe(1 , -0, -0.45) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-20), rad(-20), rad(-10)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1.15, -0.5) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-10), rad(45), rad(80)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		end
	elseif anim == "askick" then	
		rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(15), rad(0), rad(-115)), 0.3)
		nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(90)), 0.3)
		rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.25, 0.5) * angles(rad(60), rad(0), rad(-0)) * rsC0, 0.3)
		ls.C0 = ls.C0:Lerp(cframe(-1.25, 0.75, -0.25) * angles(rad(90), rad(-90), rad(0)) * lsC0, 0.3)
		rh.C0 = rh.C0:Lerp(cframe(1, -1, -1) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(0), rad(-75)), 0.3)
		lh.C0 = lh.C0:Lerp(cframe(-1, -0.5, -0.5) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-75), rad(0), rad(30)), 0.3)
		WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
		WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
	elseif anim == "dust" then	
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0.45) *  angles(rad(60), rad(-30), rad(10)) * angles(rad(0), rad(20), rad(25)), 0.1)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(20), rad(0), rad(30)), 0.1)
			rs.C0 = rs.C0:Lerp(cframe(1, 1.15, -0.75) * angles(rad(15), rad(60), rad(90)) * angles(rad(75), rad(0), rad(-15)) * rsC0, 0.1)
			ls.C0 = ls.C0:Lerp(cframe(-1.75,0.45, -0.15) * angles(rad(-10), rad(10), rad(-60)) * angles(rad(-60), rad(45), rad(60)) * lsC0, 0.1)
			rh.C0 = rh.C0:Lerp(cframe(0, -1.45, 0.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-120), rad(0)) * angles(rad(30), rad(0), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-0.5, -0.45, -1) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-0), rad(-30), rad(0)) * angles(rad(-0), rad(0), rad(-45)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-0.5, 0) * angles(rad(0), rad(-0), rad(-120)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(50)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.25, 0) * angles(rad(45), rad(0), rad(-0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 1.25, 0.75) * angles(rad(150), rad(-90), rad(0)) * angles(rad(0), rad(-0), rad(-20)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(0.75 , -1, -0.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-15), rad(30)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1.15, -1, -0.5) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-10), rad(0), rad(25)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 3 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-90)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(30)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1 , 0.25, 0.5) * angles(rad(0), rad(-45), rad(-0)) * angles(rad(45), rad(-0), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 1, -0.4) * angles(rad(90), rad(-90), rad(0)) * angles(rad(60), rad(-0), rad(-15)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-30), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, 0 ) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-20), rad(20), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		end
	elseif anim == "ddust" then	
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -1.5) * angles(rad(-20), rad(20), rad(120)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25 , 0.5, -0.75) * angles(rad(125), rad(0), rad(-45)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1, 0.75, 0.25) * angles(rad(-90), rad(90), rad(30)) * angles(rad(-30), rad(-0), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1.25, 0.5) *  angles(rad(0), rad(75), rad(0)) * angles(rad(30), rad(-45), rad(-45)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-0.5, -0.75, -0.75) *  angles(rad(0), rad(-120), rad(0)) * angles(rad(-75), rad(-60), rad(30)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -1.75) * angles(rad(-20), rad(-20), rad(180)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.5, -0.25) * angles(rad(105), rad(0), rad(15)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.75, 0) * angles(rad(20), rad(0), rad(-45)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(0.75, -1,-1.25) *  angles(rad(20), rad(150), rad(0)) * angles(rad(20), rad(-40), rad(-65)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-0.25, -0.5, 0.5) *  angles(rad(-75), rad(-90), rad(0)) * angles(rad(0), rad(115), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 3 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -1) * angles(rad(15), rad(-15), rad(-60)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(5), rad(5), rad(35)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.5, -0.25) * angles(rad(0), rad(90), rad(30)) * angles(rad(0), rad(-30), rad(20)) * rsC0, 0.1)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0, -0.5) * angles(rad(30), rad(-40), rad(0)) * lsC0, 0.1)
			rh.C0 = rh.C0:Lerp(cframe(1 , -0, -0.45) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-20), rad(-20), rad(-10)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1.15, -0.5) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-10), rad(45), rad(80)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		end
	elseif anim == "adust" then	
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(20), rad(15), rad(-120)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, -0.1, 0.1) * angles(rad(30), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.5, 0) * angles(rad(200), rad(0), rad(-0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.5, 0) * angles(rad(200), rad(0), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -0.75, -1.15) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-0), rad(-45)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1, -0.75, -0.4) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-30), rad(30), rad(10)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(120), rad(0), rad(-180)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, -0.1, 0.1) * angles(rad(30), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.5, 0) * angles(rad(200), rad(0), rad(-0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.5, 0) * angles(rad(200), rad(0), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1.25, -0.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-0), rad(-75)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -0.15, -1.15) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(-135)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 3 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(30), rad(0), rad(-105)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5, 0.5, -0.25) * angles(rad(50), rad(20), rad(-30)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.5, -0.25) * angles(rad(50), rad(-20), rad(30)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -0, -0.75) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-15), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -0.25, -1.15) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(35)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		end
	elseif anim == "snpunch" then	
		rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(30)), 0.5)
		nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(-30)), 0.5)
		rs.C0 = rs.C0:Lerp(cframe(1.3 , 0.45, -0.45) * angles(rad(45), rad(-15), rad(15)) * rsC0, 0.5)
		ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.15, 0) * angles(rad(15), rad(0), rad(-25)) * lsC0, 0.5)
		rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-7.5), rad(-0), rad(0)), 0.5)
		lh.C0 = lh.C0:Lerp(cframe(-1.1, -1, -0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(0)), 0.5)
		WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 1) *  angles(rad(-30), rad(180), rad(0)), 1)
		WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
	elseif anim == "sfpunch" then		
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(-10), rad(0), rad(105)), 0.15)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(5), rad(0), rad(-60)), 0.15)
			rs.C0 = rs.C0:Lerp(cframe(1.25, 0.55, 0.45) * angles(rad(30), rad(-50), rad(25)) * rsC0, 0.15)
			ls.C0 = ls.C0:Lerp(cframe(-1.5 , 0.5, -0.25) * angles(rad(35), rad(-20), rad(-25)) * lsC0, 0.15)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1.15, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-7.5), rad(-45), rad(0)), 0.15)
			lh.C0 = lh.C0:Lerp(cframe(-1, -0.85, -0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-10), rad(0), rad(0)), 0.15)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0.45) * angles(rad(30), rad(-0), rad(-45)), 0.45)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(15), rad(0), rad(30)), 0.45)
			rs.C0 = rs.C0:Lerp(cframe(1.45, 0.75, 0) * angles(rad(0), rad(30), rad(65)) * rsC0, 0.45)
			ls.C0 = ls.C0:Lerp(cframe(-2, 0.25, -0.45) * angles(rad(100), rad(-15), rad(-30))* angles(rad(10), rad(0), rad(-0)) * lsC0, 0.45)
			rh.C0 = rh.C0:Lerp(cframe(0.5, -0.45, -1) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(45), rad(0)) * angles(rad(-0), rad(-0), rad(30)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-0.5, -1, 1) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(45), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		end
	elseif anim == "sdpunch" then	
		rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0.75) * angles(rad(10), rad(15), rad(60)), 0.3)
		nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(-45)), 0.3)
		rs.C0 = rs.C0:Lerp(cframe(1.75, 0.45, 0.45) * angles(rad(45), rad(-60), rad(30)) * angles(rad(20), rad(0), rad(-10)) * rsC0, 0.5)
		ls.C0 = ls.C0:Lerp(cframe(-1.5 , 0.5, 0) * angles(rad(40), rad(0), rad(15)) * lsC0, 0.3)
		rh.C0 = rh.C0:Lerp(cframe(1 , -0.65, -1) *  angles(rad(0), rad(90), rad(0)) * angles(rad(0), rad(10), rad(-45)), 0.3)
		lh.C0 = lh.C0:Lerp(cframe(-1.25, -0.1, -0.5) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(10), rad(30), rad(-15)), 0.3)
		WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 1) *  angles(rad(-30), rad(180), rad(0)), 1)
		WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
	elseif anim == "sapunch" then	
		rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(30), rad(-10), rad(-60)), 0.3)
		nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(50)), 0.3)
		rs.C0 = rs.C0:Lerp(cframe(1.35 , 0.25, 0.15) * angles(rad(0), rad(-25), rad(-20)) * angles(rad(75), rad(35), rad(0)) * rsC0, 0.3)
		ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.65, -0.15) * angles(rad(90), rad(-90), rad(0)) * angles(rad(-60), rad(-0), rad(30)) * lsC0, 0.3)
		rh.C0 = rh.C0:Lerp(cframe(1 , -0.5, -0.75) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-0), rad(0)), 0.3)
		lh.C0 = lh.C0:Lerp(cframe(-1 , -0.75, -0.75) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(35)), 0.3)
		WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
		WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
	elseif anim == "snkick" then
		if frame == 1 then 
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(-15), rad(0), rad(-0)), 0.2)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.2)
			rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.5, 0) * angles(rad(150), rad(0), rad(-0)) * rsC0, 0.2)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 0.75, -0.15) * angles(rad(55), rad(0), rad(-0)) * angles(rad(-0), rad(-90), rad(0)) * lsC0, 0.2)
			rh.C0 = rh.C0:Lerp(cframe(0.5 , -0.75, 0.75) *  angles(rad(-20), rad(90), rad(0)) * angles(rad(-0), rad(-100), rad(0)), 0.2)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, 0 ) *  angles(rad(-10), rad(-90), rad(0)) * angles(rad(0), rad(25), rad(5)), 0.2)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(-25), rad(-5), rad(45)), 0.45)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(-30)), 0.45)
			rs.C0 = rs.C0:Lerp(cframe(1.25 , 1, 0.25) * angles(rad(0), rad(-30), rad(-0))  * angles(rad(-25), rad(0), rad(90)) * rsC0, 0.45)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 0.5, 0.15) * angles(rad(75), rad(0), rad(40)) * angles(rad(-0), rad(75), rad(-140)) * angles(rad(75), rad(45), rad(-0)) * lsC0, 0.45)
			rh.C0 = rh.C0:Lerp(cframe(1.5, -0.75, -0.75) * angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-45), rad(110)), 0.45)
			lh.C0 = lh.C0:Lerp(cframe(-0.5, -0.75, 0.6) *  angles(rad(-15), rad(-90), rad(0)) * angles(rad(0), rad(75), rad(-10)) * angles(rad(-10), rad(15), rad(0)), 0.45)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		end
	elseif anim == "dsnkick" then	
		rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -1.25) * angles(rad(-25), rad(0), rad(-90)), 0.3)
		nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(10), rad(10), rad(50)), 0.3)
		rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.75, 0) * angles(rad(-25), rad(0), rad(45)) * rsC0, 0.3)
		ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.5, -0.5) * angles(rad(50), rad(-40), rad(-15)) * lsC0, 0.3)
		rh.C0 = rh.C0:Lerp(cframe(0.5, 0.5, -0.45) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-20), rad(-10), rad(-5)), 0.3)
		lh.C0 = lh.C0:Lerp(cframe(-1 , -0.25, -0.5) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-40), rad(15), rad(0)), 0.3)
		WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
		WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
	elseif anim == "asnkick" then	
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-45)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(15), rad(0), rad(30)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.35 , 0.5, -0.15) * angles(rad(90), rad(0), rad(45)) * angles(rad(0), rad(60), rad(-0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 0.5, -0.75) * angles(rad(50), rad(0), rad(30)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -0, -0.75) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-15), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -0.25, -1.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(35)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(15), rad(-5), rad(-115)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(90)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.25, 0) * angles(rad(60), rad(30), rad(-0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 0.75, 0.25) * angles(rad(0), rad(-0), rad(-90)) * angles(rad(30), rad(60), rad(0))  * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(0.45, -0.75, -1.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(45), rad(-30)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1, -0.5, 0) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-75), rad(0), rad(30)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		end
	elseif anim == "slash" then	
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-45)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(45)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.75, 0.5) * angles(rad(0), rad(45), rad(90)) * angles(rad(-30), rad(0), rad(-0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.25, -0.25) * angles(rad(90), rad(-60), rad(0)) * angles(rad(15), rad(0), rad(-0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(0.45, -1, -1) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(45), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-0.5, -1, 1) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(45), rad(15)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0.25) * angles(rad(0), rad(0), rad(90)), 0.6)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(-60)), 0.6)
			rs.C0 = rs.C0:Lerp(cframe(1.75, 0.75, -0.25) * angles(rad(90), rad(0), rad(90)) * angles(rad(0), rad(90), rad(0)) * rsC0, 0.6)
			ls.C0 = ls.C0:Lerp(cframe(-1.45, 0.15, -0.5) * angles(rad(60), rad(0), rad(-30)) * lsC0, 0.6)
			rh.C0 = rh.C0:Lerp(cframe(1.15, -0.65, -0.75) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-15), rad(20), rad(0)), 0.6)
			lh.C0 = lh.C0:Lerp(cframe(-1, -0.75, -0) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(50), rad(0)), 0.6)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 3 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-0, 0) * angles(rad(0), rad(0), rad(135)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(20), rad(0), rad(-60)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(0.6, 0.45, -1.15) * angles(rad(0), rad(180), rad(75)) * angles(rad(20), rad(0), rad(-0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.15, 0.45, -0.45) * angles(rad(0), rad(-15), rad(0)) * angles(rad(135), rad(-0), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0.45) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-25), rad(-45), rad(-15)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, -0.75) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-10), rad(-15), rad(-10)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 4 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-0, 0) * angles(rad(0), rad(0), rad(105)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(20), rad(0), rad(-60)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(0.6, 0.45, -1.15) * angles(rad(0), rad(180), rad(75)) * angles(rad(-90), rad(0), rad(-0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.15, 0.45, -0.45) * angles(rad(0), rad(-15), rad(0)) * angles(rad(135), rad(-0), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0.45) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-25), rad(-45), rad(-15)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, -0.75) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-10), rad(-15), rad(-10)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		end
	elseif anim == "fslash" then	
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0.45) * angles(rad(20), rad(0), rad(-60)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(20), rad(0), rad(60)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25, 0.45, -0.5) * angles(rad(0), rad(90), rad(90)) * angles(rad(-45), rad(0), rad(-0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-0.5, 0.15, 0.25) * angles(rad(0), rad(-30), rad(-90))* angles(rad(-0), rad(-0), rad(15)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -0.75, -0.15) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-5), rad(-20), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1, -0.5, -0) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(50), rad(-20)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)	
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(10), rad(-0), rad(60)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(15), rad(0), rad(-30)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25 , 0.75, -0.5) * angles(rad(100), rad(0), rad(30)) * angles(rad(10), rad(90), rad(-30)) * angles(rad(-30), rad(-0), rad(15)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.3, 0.75, 0) * angles(rad(0), rad(-30), rad(-65)) * angles(rad(25), rad(45), rad(-15)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(-0.25, -0.9, 1) *  angles(rad(7.5), rad(90), rad(0)) * angles(rad(25), rad(-135), rad(20)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-0, -0.9, -1.25) *  angles(rad(10), rad(-90), rad(0)) * angles(rad(15), rad(-60), rad(7.5)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 3 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(-0), rad(90)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(0.75, 0.75, -0.75) * angles(rad(90), rad(90), rad(-0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.5, 0) * angles(rad(90), rad(0), rad(-30)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-45), rad(-60)) * angles(rad(-20), rad(-0), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-0.75, -1, -1) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(-30), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 4 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(-0), rad(180)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(60)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(0.75, 0.75, -0.75) * angles(rad(90), rad(90), rad(-0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.5, 0) * angles(rad(90), rad(0), rad(-30)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-45), rad(-60)) * angles(rad(-20), rad(-0), rad(30)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1, -1, -0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(30), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)	
		end
	elseif anim == "dslash" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0.75) * angles(rad(10), rad(15), rad(115)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(-45)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25, 0.35, 0.25) * angles(rad(10), rad(-35), rad(0)) * angles(rad(75), rad(-75), rad(-25))* angles(rad(-45), rad(-0), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5 , 0.65, -0.35) * angles(rad(110), rad(0), rad(25)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1.5, -0.65, -0.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(0), rad(-50), rad(-45)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1.25, -0.5, -0.75) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(10), rad(-15), rad(-10)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -1.25) * angles(rad(20), rad(10), rad(-15)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, -0.25, -0.05) * angles(rad(60), rad(0), rad(25)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25, 0.25, 0.25) * angles(rad(10), rad(-125), rad(0)) * angles(rad(75), rad(-90), rad(-25)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25 , 1, -0.35) * angles(rad(200), rad(0), rad(60)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(0.5, -0.15, -1.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(0), rad(30), rad(-45)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1, 0.35, 0.5) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(10), rad(75), rad(-25)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)	
		end
	elseif anim == "aslash" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(12.5), rad(15), rad(-0)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(30)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25, 1, -0.25) * angles(rad(0), rad(-0), rad(90)) *  angles(rad(30), rad(-0), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25 , 0.5, -0.5) * angles(rad(120), rad(-30), rad(30)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1.15, -0.75, -0.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(0), rad(-30), rad(-50)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1.15, -0.5, -1) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-0), rad(15), rad(35)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(-15), rad(-180)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(-30)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25, 0.75, -0) * angles(rad(60), rad(-15), rad(30)) *  angles(rad(-25), rad(60), rad(15)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 1, -0.25) * angles(rad(30), rad(10), rad(-60)) *  angles(rad(0), rad(-40), rad(-30)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0.75) *  angles(rad(0), rad(90), rad(0)) * angles(rad(0), rad(-75), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-0.5, -1.15, -1) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(10), rad(-30), rad(75)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 3 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(10), rad(0), rad(-75)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(20)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1, 0.35, -0.75) * angles(rad(30), rad(90), rad(60)) * angles(rad(30), rad(0), rad(-0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-0.75, 0.5, -0.35) * angles(rad(90), rad(-90), rad(10))* angles(rad(60), rad(0), rad(-0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1.25, -0.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(20), rad(0), rad(-90)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -0.85, 0 ) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-30), rad(-0), rad(55)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 4 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(30), rad(0), rad(-0)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5, 0.25, -0.25) * angles(rad(60), rad(0), rad(-25)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.5, -0.15) * angles(rad(-10), rad(-30), rad(0)) * angles(rad(-15), rad(-0), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -0, -0.75) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-0), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -0.25, -1.15) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(35)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		end
	elseif anim == "hslash" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(15), rad(-0), rad(-45)), 0.2)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(10), rad(0), rad(30)), 0.2)
			rs.C0 = rs.C0:Lerp(cframe(1.45, 0.5, 0.25) * angles(rad(15), rad(0), rad(60))*  angles(rad(0), rad(-20), rad(0)) * rsC0, 0.2)
			ls.C0 = ls.C0:Lerp(cframe(-1.5 , 0.25, 0) * angles(rad(65), rad(0), rad(-40)) * lsC0, 0.2)
			rh.C0 = rh.C0:Lerp(cframe(0.25 , -0.8, -1.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-7.5), rad(60), rad(-15)), 0.2)
			lh.C0 = lh.C0:Lerp(cframe(0, -1, 1) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-0), rad(125), rad(0)), 0.2)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(15), rad(140)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(10), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.45, 0.5, -0.25) * angles(rad(15), rad(0), rad(60))*  angles(rad(90), rad(25), rad(-60)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25 , 0.75, -0.25) * angles(rad(65), rad(0), rad(-40)) *  angles(rad(0), rad(-45), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -0.85, 0.45) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-7.5), rad(-75), rad(-5)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, -0.75) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-30), rad(-35), rad(-30)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		end		
	elseif anim == "dhslash" then	
		rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-0.3, 0) * angles(rad(0), rad(-0), rad(120)), 0.3)
		nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(-50)), 0.3)
		rs.C0 = rs.C0:Lerp(cframe(1.25, 0.75, 0.75) * angles(rad(150), rad(90), rad(0)) * angles(rad(15), rad(30), rad(20)) * rsC0, 0.3)
		ls.C0 = ls.C0:Lerp(cframe(-1.5 , 0.25, 0) * angles(rad(45), rad(0), rad(-0)) * lsC0, 0.3)
		rh.C0 = rh.C0:Lerp(cframe(0, -1.25, 0.65) *  angles(rad(0), rad(90), rad(0)) * angles(rad(0), rad(-75), rad(-45)), 0.3)
		lh.C0 = lh.C0:Lerp(cframe(0.5 , -1, -1) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-0), rad(-60), rad(0)), 0.3)
		WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
		WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
	elseif anim == "ahslash" then	
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(-0), rad(-0)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-20), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.4, 0.75, 0) * angles(rad(172), rad(0), rad(-15)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.4, 0.75, 0) * angles(rad(172), rad(0), rad(15)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -0.5, -0.75) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-15), rad(-45)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -0.25, -1.15) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(35)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(-20), rad(0), rad(-0)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(30), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.1, 0.5, -0.5) * angles(rad(62), rad(0), rad(-50)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 0.5, -0.5) * angles(rad(62), rad(0), rad(40)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -0.25, -0.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-15), rad(45)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -0.5, -1) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(-25)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		end	
	elseif anim == "sdust" then		
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0.5) * angles(rad(75), rad(0), rad(-0)), 0.1)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(20), rad(0), rad(0)), 0.1)
			rs.C0 = rs.C0:Lerp(cframe(1.3 , 0.75, 0) * angles(rad(0), rad(0), rad(60)) * angles(rad(30), rad(0), rad(-0)) * rsC0, 0.1)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.15, 0) * angles(rad(15), rad(0), rad(25)) * lsC0, 0.1)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-7.5), rad(-0), rad(-50)), 0.1)
			lh.C0 = lh.C0:Lerp(cframe(-1.1, -0.5, -0.45) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(-75)), 0.1)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0) * angles(rad(-30), rad(0), rad(-0)), 0.5)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(20), rad(0), rad(0)), 0.5)
			rs.C0 = rs.C0:Lerp(cframe(1.3 , 0.45, 0) * angles(rad(0), rad(0), rad(3)) * rsC0, 0.5)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.15, 0) * angles(rad(-2.5), rad(0), rad(35)) * lsC0, 0.5)
			rh.C0 = rh.C0:Lerp(cframe(1, -1, -0.45) *  angles(rad(0), rad(90), rad(0)) * angles(rad(0), rad(0), rad(120)), 0.5)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, 0 ) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-7.5), rad(-0), rad(50)), 0.5)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 3 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0) * angles(rad(0), rad(0), rad(-0)), 0.25)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(20), rad(0), rad(0)), 0.25)
			rs.C0 = rs.C0:Lerp(cframe(1.3 , 0.45, 0) * angles(rad(0), rad(0), rad(3)) * rsC0, 0.25)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.15, 0) * angles(rad(-2.5), rad(0), rad(35)) * lsC0, 0.25)
			rh.C0 = rh.C0:Lerp(cframe(1, -1, -0.45) *  angles(rad(0), rad(90), rad(0)) * angles(rad(0), rad(0), rad(30)), 0.25)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, 0 ) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(-0), rad(0)), 0.25)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		end
	elseif anim == "sddust" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-0.5, -2) * angles(rad(-90), rad(20), rad(90)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25 , 0.5, 0.5) * angles(rad(-45), rad(-30), rad(-0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-0.25, 0.75, -0.85) * angles(rad(165), rad(-180), rad(20)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-0), rad(-90)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -0.8, -1) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(45)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-0.5, -2) * angles(rad(-90), rad(20), rad(90)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25 , 0.5, 0.5) * angles(rad(-45), rad(-30), rad(-0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-0.25, 0.75, -0.85) * angles(rad(165), rad(-180), rad(20)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-0), rad(90)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -0.8, -1) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(45)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		end
	elseif anim == "sadust" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(20), rad(0), rad(-45)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25, 0.25, 0.75) * angles(rad(-45), rad(30), rad(-0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.5, -0.25) * angles(rad(120), rad(0), rad(-30)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(0.25, -0.75, -1.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(0), rad(50), rad(-35)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -0.5, -0) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-45), rad(30), rad(30)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(-0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(20), rad(0), rad(105)),1)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(-45)),1)
			rs.C0 = rs.C0:Lerp(cframe(1.5, 0.5, 0.45) * angles(rad(90), rad(30), rad(90)) * angles(rad(0), rad(180), rad(-0)) * lsC0,1)
			ls.C0 = ls.C0:Lerp(cframe(-1.25 , 0.3, 0) * angles(rad(110), rad(30), rad(-60)) * rsC0,1)
			rh.C0 = rh.C0:Lerp(cframe(1 , -0.5, -0.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-20), rad(-30), rad(-30)),1)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -0.5, -0.75) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-0), rad(-0), rad(-115)),1)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.15, 0.7) *  angles(rad(-90), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		end
	elseif anim == "grab" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0.25) * angles(rad(0), rad(0), rad(-90)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(75)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(0.5, 0.45, -1) * angles(rad(90), rad(0), rad(-75)) * angles(rad(-0), rad(60), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.45, 0.75, -0) * angles(rad(90), rad(0), rad(-90)) * angles(rad(20), rad(-0), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -0.75, -0.15) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-15), rad(-20), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1, -0.75, -0) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(50), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-0.45, -0.45) * angles(rad(10), rad(-20), rad(-110)), 0.45)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(20), rad(70)), 0.45)
			rs.C0 = rs.C0:Lerp(cframe(0.5, 0.5, -1) * angles(rad(90), rad(0), rad(-90)) * rsC0, 0.45)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.5, 0) * angles(rad(50), rad(0), rad(-30)) * lsC0, 0.45)
			rh.C0 = rh.C0:Lerp(cframe(1 , -0.75, -0.45) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-15), rad(-20), rad(20)), 0.45)
			lh.C0 = lh.C0:Lerp(cframe(-1, -0.25, -0.45) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(30), rad(-20)), 0.45)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 3 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0, 0, -0.15) * angles(rad(15), rad(-0), rad(-0)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(5), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1, 0.25, -1) * angles(rad(90), rad(0), rad(-45)) * angles(rad(15), rad(0), rad(15)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.15, -0.25, -0.75) * angles(rad(90), rad(0), rad(30)) * angles(rad(15), rad(-10), rad(15)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(0.45, -0.95, 0.75) * angles(rad(0), rad(90), rad(0)) * angles(rad(5), rad(-90), rad(-0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-0.75, -0.65, -1) * angles(rad(0), rad(-90), rad(0)) * angles(rad(-10), rad(-15), rad(-15)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		end
	elseif anim == "graba" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-90)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-20), rad(-20), rad(60)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25, 0.5, -0.5) * angles(rad(0), rad(60), rad(15)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-2, 1.25, 0) * angles(rad(90), rad(0), rad(-90)) * angles(rad(90), rad(45), rad(30)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-10), rad(-0), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, 0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(45), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0.75) * angles(rad(-10), rad(-10), rad(-120)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(-0), rad(60)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5 , 0, 0.25) * angles(rad(90), rad(-30), rad(-0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1, 0.75, 0) * angles(rad(90), rad(0), rad(-90)) * angles(rad(90), rad(-45), rad(30)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -0, -1.15) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-0), rad(10)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1.25, -0.25, -0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-30), rad(30), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 3 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-0.5, -0.5) * angles(rad(20), rad(-0), rad(60)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(15), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.75 , 0.75, -0.5) * angles(rad(0), rad(0), rad(90)) * angles(rad(30), rad(-0), rad(15)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.15, 0.5, 0) * angles(rad(90), rad(0), rad(-90)) * angles(rad(-20), rad(-90), rad(-0)) * angles(rad(-30), rad(0), rad(-0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(-0.5, -0.75, 1) *  angles(rad(7.5), rad(90), rad(0)) * angles(rad(25), rad(-150), rad(20)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-0, -0.35, -1.25) *  angles(rad(10), rad(-90), rad(0)) * angles(rad(20), rad(-60), rad(20)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 4 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(15), rad(0), rad(15)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(10), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.25, 0) * angles(rad(75), rad(0), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.45, 0.6, 0) * angles(rad(15), rad(0), rad(-15)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(0.45, -1.15, 1) *  angles(rad(7.5), rad(90), rad(0)) * angles(rad(-0), rad(-95), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-0.45 , -0.8, -0.9) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-7.5), rad(-40), rad(-15)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		end
	elseif anim == "agrab" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0, 0, -0) * angles(rad(25), rad(0), rad(50)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(-40)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.5, 0) * angles(rad(0), rad(-50), rad(-0)) * angles(rad(75), rad(30), rad(-0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.75, 0.5) * angles(rad(30), rad(0), rad(-100)) * angles(rad(60), rad(-0), rad(-15)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(0.5, -1, 0.75) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-75), rad(-30)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-0.25, -0.75, -1.25) *  angles(rad(10), rad(-90), rad(0)) * angles(rad(-20), rad(-75), rad(-40)) * angles(rad(-0), rad(30), rad(-30)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0.3) * angles(rad(5), rad(-30), rad(-110)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(15), rad(0), rad(45)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25 , 0.25, -0.5) * angles(rad(30), rad(-15), rad(-0)) * angles(rad(30), rad(-20), rad(-10)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.55, 0.75, -0.5) * angles(rad(0), rad(-45), rad(-20)) * angles(rad(0), rad(-0), rad(-10)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1, -0, -1) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-20), rad(20), rad(20)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , 0.35, -0.5) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(40), rad(-10)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		end
	elseif anim == "bgrab" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0, 0.5, -2) * angles(rad(-60), rad(-0), rad(-0)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(45), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1, 0.25, -1) * angles(rad(90), rad(0), rad(-45)) * angles(rad(15), rad(0), rad(15)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.15, -0.25, -0.75) * angles(rad(90), rad(0), rad(30)) * angles(rad(15), rad(-10), rad(15)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1, -0.5, -1.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(0), rad(45)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1, -0.75, -1.5) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-0), rad(-0), rad(60)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0, 1.5, -2.45) * angles(rad(-105), rad(-0), rad(-0)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(60), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.45, 0.5, -1) * angles(rad(90), rad(0), rad(-45)) * angles(rad(45), rad(0), rad(30)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.45, 0.5, -1) * angles(rad(90), rad(0), rad(45)) * angles(rad(45), rad(0), rad(-30)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1, -0.5, -0.75) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(0), rad(115)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1, -0.25, -1) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-0), rad(-0), rad(30)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 3 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0, 1, -2.25) * angles(rad(-90), rad(-0), rad(-135)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-75), rad(30), rad(-0)) * angles(rad(15), rad(-0), rad(-0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25, 0.45, 0.75) * angles(rad(180), rad(135), rad(-15)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1, 0.5, -1.5) * angles(rad(180), rad(-45), rad(15)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(0.5, -0.5, -1) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(45), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1.25, -0.5, -1) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-0), rad(-0), rad(30)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		end
	elseif anim == "sgrab" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(15)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(-0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5, 0.5, 0) * angles(rad(15), rad(0), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 0.25, -0.5) * angles(rad(50), rad(0), rad(15)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1.05, -1, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-7.5), rad(-0), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1.1, -1, -0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0, 0, 0) * angles(rad(10), rad(0), rad(-30)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(20), rad(0), rad(30)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.35, 0.5, -0.5) * angles(rad(25), rad(0), rad(-15)) * angles(rad(0), rad(30), rad(-0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-2, 0.4, -0.75) * angles(rad(100), rad(-5), rad(-20)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(0.6, -1, -1) * angles(rad(0), rad(90), rad(0)) * angles(rad(0), rad(35), rad(10)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(0.25, -1, 0.75) * angles(rad(0), rad(-90), rad(0)) * angles(rad(10), rad(145), rad(-0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 3 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(0)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(-0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5, 0.5, 0) * angles(rad(15), rad(0), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1, 0.4, -1.25) * angles(rad(100), rad(0), rad(35)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1.05, -1, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-7.5), rad(-0), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1.1, -1, -0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		end
	elseif anim == "sgraba" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0, 0, 0) * angles(rad(-15), rad(5), rad(-45)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-35), rad(0), rad(-30)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5, 0.5, -0.45) * angles(rad(-15), rad(45), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.3, -0.5) * angles(rad(75), rad(0), rad(-30)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1.05, -1, -0.45) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-7.5), rad(45), rad(-20)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1, -1.1, 0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(45), rad(15)) * angles(rad(-10), rad(-0), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0, 0, 0) * angles(rad(15), rad(0), rad(0)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(35), rad(0), rad(-0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5, 0.5, 0) * angles(rad(35), rad(0), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 0.4, -1.25) * angles(rad(140), rad(55), rad(45)) * angles(rad(-40), rad(-0), rad(-0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1.05, -1, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-7.5), rad(-0), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-0.9, -1, -0.5) * angles(rad(0), rad(-90), rad(0)) * angles(rad(-0), rad(5), rad(-20)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 3 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0, 0, 0) * angles(rad(15), rad(0), rad(0)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(12.5), rad(0), rad(-0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5, 0.5, 0) * angles(rad(35), rad(0), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 0.4, -1.25) * angles(rad(140), rad(55), rad(45)) * angles(rad(-40), rad(-0), rad(-0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1.05, -1, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-7.5), rad(-0), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-0.9, -1, -0.5) * angles(rad(0), rad(-90), rad(0)) * angles(rad(-0), rad(5), rad(-20)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		end	
	elseif anim == "sagrab" then
		rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0,0) * angles(rad(-10), rad(-0), rad(-90)),0.3)
		nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-10), rad(0), rad(75)), 0.3)
		rs.C0 = rs.C0:Lerp(cframe(1.5, 0.5, -0) * angles(rad(-15), rad(0), rad(30)) * rsC0, 0.3)
		ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.75, 0.25) * angles(rad(120), rad(-30), rad(-45)) * lsC0, 0.3)
		rh.C0 = rh.C0:Lerp(cframe(1 , -0.75, -0) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-30), rad(0), rad(15)) * angles(rad(0), rad(-0), rad(-20)), 0.3)
		lh.C0 = lh.C0:Lerp(cframe(-1.25, -0.75, -0.15) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-10), rad(15), rad(60)) * angles(rad(10), rad(-0), rad(0)), 0.3)
		WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
		WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
	elseif anim == "sbgrab" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(-60)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(-60)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25, 0.65, 0.15) * angles(rad(75), rad(0), rad(-15)) * angles(rad(-15), rad(45), rad(60)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.35, 0.4, 0.25) * angles(rad(90), rad(-5), rad(-45)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1, -0.5, -1) *  angles(rad(0), rad(90), rad(0)) * angles(rad(0), rad(45), rad(60)) * angles(rad(10), rad(-0), rad(-30)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, 0.75) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-0), rad(60), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0, 0, 0) * angles(rad(7.5), rad(0), rad(-90)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(-60)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25, 0.65, 0.15) * angles(rad(75), rad(0), rad(-15)) * angles(rad(-15), rad(45), rad(60)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.15, 0.4, 0.35) * angles(rad(90), rad(-5), rad(-90)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1, -0.5, -0) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-60), rad(-7.5), rad(-30)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -0.75, 0.75) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-15), rad(60), rad(5)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 3 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0, 0, 0) * angles(rad(-10), rad(10), rad(-135)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(-60)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(0.75, 0.65, 0.25) * angles(rad(75), rad(-25), rad(60)) * angles(rad(-15), rad(90), rad(45)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.15, 0.4, 0.5) * angles(rad(90), rad(-5), rad(-90)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -0.75, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-20), rad(-35), rad(30)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, 0 ) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-0), rad(-25), rad(20)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 4 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-0.15, -0.45) * angles(rad(-0), rad(45), rad(60)), 0.75)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5, 0.75, 0) * angles(rad(-50), rad(-75), rad(30)) * angles(rad(30), rad(-0), rad(0)) * rsC0, 0.75)
			ls.C0 = ls.C0:Lerp(cframe(-1.25 , 0.5, -0.5) * angles(rad(90), rad(-45), rad(25)) * lsC0, 0.75)
			rh.C0 = rh.C0:Lerp(cframe(0.85, -0.5, -0.65) *  angles(rad(0), rad(100), rad(0)) * angles(rad(-30), rad(40), rad(60)) * angles(rad(-0), rad(-55), rad(0)), 0.75)
			lh.C0 = lh.C0:Lerp(cframe(-0.5, -0.45, 0 ) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(30), rad(0)) * angles(rad(-0), rad(0), rad(-45)) * angles(rad(-90), rad(0), rad(0)) * angles(rad(0), rad(0), rad(45)), 0.75)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		end
	elseif anim == "finisher" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-0.45, 0) * angles(rad(-10), rad(0), rad(-0)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.5, 0) * angles(rad(0), rad(-20), rad(45)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.5, 0) * angles(rad(-60), rad(0), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-0), rad(-20)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-0.25, -0.45, -1.75) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-90), rad(0), rad(90)) * angles(rad(0), rad(0), rad(-30)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 2 then		
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(-15), rad(0), rad(-0)), 0.2)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.2)
			rs.C0 = rs.C0:Lerp(cframe(1.25, 0.75, -0.15) * angles(rad(55), rad(0), rad(-0)) * angles(rad(-0), rad(90), rad(0)) * rsC0, 0.2)
			ls.C0 = ls.C0:Lerp(cframe(-1.5 , 0.5, 0) * angles(rad(150), rad(0), rad(-0)) * lsC0, 0.2)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0 ) *  angles(rad(-10), rad(90), rad(0)) * angles(rad(0), rad(-25), rad(-5)), 0.2)
			lh.C0 = lh.C0:Lerp(cframe(-0.5 , -0.75, 0.75) *  angles(rad(-20), rad(-90), rad(0)) * angles(rad(-0), rad(100), rad(0)), 0.2)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		end
	elseif anim == "riot" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-30)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(10), rad(0), rad(15)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25 , 0.45, 0.2) * angles(rad(60), rad(-30), rad(60)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 0.25, 0.25) * angles(rad(30), rad(30), rad(-15)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0.45) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-60), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , 0.25, -0.5) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(15), rad(-20)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(-10), rad(0), rad(-45)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(10), rad(0), rad(30)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25 , 0.75, 0) * angles(rad(60), rad(60), rad(0))* angles(rad(-90), rad(-0), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 0.25, 0.25) * angles(rad(45), rad(45), rad(-30)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-10), rad(-45), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1.25, -1, -0.25) *  angles(rad(0), rad(-60), rad(0)) * angles(rad(0), rad(15), rad(-80)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 3 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0.25) * angles(rad(5), rad(-15), rad(-60)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(30)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.35 , 0.5, -0.4) * angles(rad(0), rad(45), rad(-0)) * angles(rad(-15), rad(-0), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.4, 0.5, -0.15) * angles(rad(30), rad(0), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1, -0.5, -0.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(0), rad(-35), rad(10)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -0.5, -0.65) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(10), rad(-10)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 4 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0,-0.15) * angles(rad(10), rad(-10), rad(45)),0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(20), rad(0), rad(-40)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.35, 0.5, 0) * angles(rad(140), rad(45), rad(20))* angles(rad(-25), rad(0), rad(-15)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 0.5, -0.25) * angles(rad(15), rad(-30), rad(15))* angles(rad(-95), rad(30), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(0, -0.8, 1) *  angles(rad(0), rad(90), rad(0)) * angles(rad(10), rad(-115), rad(20)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(0.5, -1, -1) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(-90), rad(60)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 5 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-2.5,-0.25) * angles(rad(10), rad(-15), rad(-115)),0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(45)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25 , 0.5, -0.3) * angles(rad(90), rad(120), rad(30)) * angles(rad(-0), rad(-60), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 0.5, -0.15) * angles(rad(30), rad(15), rad(-90)) * angles(rad(-0), rad(-60), rad(15)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(0.75, -1, -0.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-25), rad(30)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1.25 , -0.5, -0) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(75), rad(-25)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 6 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-1.5,-0.25) * angles(rad(10), rad(-15), rad(-115)),0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(45)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25 , 0.5, -0.3) * angles(rad(90), rad(120), rad(30)) * angles(rad(-0), rad(-60), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 0.5, -0.15) * angles(rad(30), rad(15), rad(-90)) * angles(rad(-0), rad(-60), rad(15)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(0.75, -1, -0.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-25), rad(30)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1.25 , -0.5, -0) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(75), rad(-25)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		end	
	elseif anim == "shostart" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0.25) * angles(rad(20), rad(0), rad(0)), 0.1)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(15), rad(0), rad(0)), 0.1)
			rs.C0 = rs.C0:Lerp(cframe(1.25, 0.5, -0.25) * angles(rad(120), rad(0), rad(15)) * rsC0, 0.1)
			ls.C0 = ls.C0:Lerp(cframe(-1.25 , 0.65, -0.5) * angles(rad(30), rad(-50), rad(0)) * lsC0, 0.1)
			rh.C0 = rh.C0:Lerp(cframe(1, -1, -0.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(20), rad(-35), rad(20)), 0.1)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -0.65, -0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(25), rad(-25)), 0.1)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		else
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0.25) * angles(rad(35), rad(0), rad(0)), 1)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(15), rad(0), rad(0)), 1)
			rs.C0 = rs.C0:Lerp(cframe(1.25, 0, -1) * angles(rad(120), rad(0), rad(0)) * rsC0, 1)
			ls.C0 = ls.C0:Lerp(cframe(-1.25 , 0.65, -0.5) * angles(rad(30), rad(-50), rad(0)) * lsC0, 1)
			rh.C0 = rh.C0:Lerp(cframe(1, -0.65, -0.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(20), rad(-35), rad(35)), 1)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -0.65, -0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(25), rad(-40)), 1)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		end
	elseif anim == "shoshiro" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-0)), 0.1)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.1)
			rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.5, 0) * angles(rad(0), rad(0), rad(8)) * rsC0, 0.1)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.5, 0) * angles(rad(0), rad(0), rad(-8)) * lsC0, 0.1)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-7.5), rad(-0), rad(0)), 0.1)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, -0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(0)), 0.1)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-0)), 0.45)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.45)
			rs.C0 = rs.C0:Lerp(cframe(1.75 , 0.5, -0.5) * angles(rad(100), rad(0), rad(-45)) * rsC0, 0.45)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.5, -0.75) * angles(rad(90), rad(0), rad(75)) * lsC0, 0.1)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-7.5), rad(-0), rad(0)), 0.45)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, -0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(0)), 0.45)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 3 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-0)), 0.5)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.5)
			rs.C0 = rs.C0:Lerp(cframe(1.25 , 0.5, -0.75) * angles(rad(100), rad(0), rad(-75)) * rsC0, 0.5)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.5, -0.85) * angles(rad(90), rad(0), rad(90)) * lsC0, 0.5)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-7.5), rad(-0), rad(0)), 0.5)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, -0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(0)), 0.5)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 4 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-0)), 0.1)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(30), rad(0)), 0.5)
			rs.C0 = rs.C0:Lerp(cframe(1.25 , 0.5, -0.75) * angles(rad(100), rad(0), rad(-75)) * rsC0, 0.5)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.5, -0.85) * angles(rad(90), rad(0), rad(90)) * lsC0, 0.5)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-7.5), rad(-0), rad(0)), 0.1)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, -0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(0)), 0.1)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 5 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-0)), 0.1)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(-30), rad(0)), 0.5)
			rs.C0 = rs.C0:Lerp(cframe(1.25 , 0.5, -0.75) * angles(rad(100), rad(0), rad(-75)) * rsC0, 0.5)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.5, -0.85) * angles(rad(90), rad(0), rad(90)) * lsC0, 0.5)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-7.5), rad(-0), rad(0)), 0.1)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, -0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(0)), 0.1)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		end
	elseif anim == "fcut" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-0, 0) * angles(rad(0), rad(0), rad(135)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(20), rad(0), rad(-60)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(0.6, 0.15, -1.15) * angles(rad(0), rad(180), rad(75)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.15, 0.45, 0.45) * angles(rad(0), rad(-15), rad(0)) * angles(rad(35), rad(-0), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0.45) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-25), rad(-45), rad(-15)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, -0.75) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-10), rad(-15), rad(-10)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-1, 0) * angles(rad(10), rad(0), rad(30)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(10), rad(0), rad(15)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25, 0.75, -1) * angles(rad(90), rad(90), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.15, 0.45, 0.45) * angles(rad(0), rad(-15), rad(0)) * angles(rad(35), rad(-0), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(0.5, -1, 1) *  angles(rad(-10), rad(90), rad(0)) * angles(rad(0), rad(-75), rad(-15)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-0.85, -0.9, -1.15) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-0), rad(-30), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(0), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 3 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0, -1.5, -0.15) * angles(rad(25), rad(0), rad(-50)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(40)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1, 0.75, 0.5) * angles(rad(30), rad(0), rad(100)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.15, 0.45, 0.45) * angles(rad(0), rad(-15), rad(0)) * angles(rad(35), rad(-0), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(0.25, -0.75, -1.15) *  angles(rad(10), rad(90), rad(0)) * angles(rad(-20), rad(75), rad(40)) * angles(rad(-0), rad(-30), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(0, -1.15, 0.5) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-0), rad(125), rad(0)) * angles(rad(-0), rad(25), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(0), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 4 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-0, 0) * angles(rad(0), rad(0), rad(135)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(20), rad(0), rad(20)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(0.6, 0.15, -1.15) * angles(rad(0), rad(180), rad(75)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.15, 0.45, 0.45) * angles(rad(0), rad(-15), rad(0)) * angles(rad(35), rad(-0), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0.45) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-25), rad(-45), rad(-15)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, -0.75) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-10), rad(-15), rad(-10)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 5 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(90)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(15), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25 , 1, -1.5) * angles(rad(90), rad(0), rad(-75)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 0, -0.75) * angles(rad(90), rad(0), rad(45)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-7.5), rad(-0), rad(0)), 0.1)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, -0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(0)), 0.1)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(1.875, -0.15, 1.75) *  angles(rad(0), rad(180), rad(180)) * angles(rad(-90), rad(90), rad(0)), 1)
		end
	elseif anim == "sfcut" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(45)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(-25)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1, 0.75, 0.5) * angles(rad(30), rad(-120), rad(45)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25 , 0.25, -0.5) * angles(rad(75), rad(0), rad(30)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(0), rad(-45), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, 0 ) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-20), rad(30), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-0.5, 0) * angles(rad(0), rad(0), rad(-105)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(30)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25, 0.75, 0.25) * angles(rad(-90), rad(-90), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5 , 1, 0) * angles(rad(160), rad(0), rad(-0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(0.75, -1, -0.75) *  angles(rad(0), rad(90), rad(0)) * angles(rad(0), rad(30), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1.15, 0 ) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(20), rad(-0), rad(30)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 3 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-1, 0) * angles(rad(10), rad(0), rad(30)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(10), rad(0), rad(15)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25, 0.75, -1) * angles(rad(90), rad(90), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25 , 0.75, 0) * angles(rad(0), rad(15), rad(-90)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(0.5, -1, 1) *  angles(rad(-10), rad(90), rad(0)) * angles(rad(0), rad(-75), rad(-15)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-0.85, -0.9, -1.15) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-0), rad(-30), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 4 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-1, 0) * angles(rad(10), rad(0), rad(60)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(10), rad(0), rad(15)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(0.5, 0.75, -0.75) * angles(rad(90), rad(135), rad(-30)) * angles(rad(60), rad(0), rad(30)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25 , 0.75, 0) * angles(rad(0), rad(15), rad(-90)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(0.5, -1, 1) *  angles(rad(-10), rad(90), rad(0)) * angles(rad(0), rad(-75), rad(-15)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-0.85, -0.9, -1.15) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-0), rad(-30), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 5 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-0.45, 0) * angles(rad(15), rad(10), rad(60)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(0.75, 0.75, -1) * angles(rad(0), rad(90), rad(0)) * angles(rad(15), rad(30), rad(20)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25 , 0.75, -0.25) * angles(rad(0), rad(-45), rad(-45)) * angles(rad(0), rad(20), rad(-30)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1, -1.25, 0.75) * angles(rad(15), rad(90), rad(0)) * angles(rad(0), rad(-60), rad(15)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-0.5, -1.15, -0.75) * angles(rad(10), rad(-90), rad(0)) * angles(rad(0), rad(-45), rad(20)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		end
	elseif anim == "fiveseven" then	
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-15)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.35 , 0.25, -0.15) * angles(rad(0), rad(-45), rad(-0)) * angles(rad(45), rad(-0), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.4, -0.15, 0.15) * angles(rad(90), rad(30), rad(30)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-30), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, 0 ) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(20), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-60)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(60)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.35 , 0.25, 0.15) * angles(rad(0), rad(-25), rad(-20)) * angles(rad(45), rad(-0), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.4, 0.65, -0.4) * angles(rad(90), rad(-90), rad(0)) * angles(rad(-60), rad(-0), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-30), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, 0 ) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(20), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 3 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-15)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.35 , 0.25, -0.15) * angles(rad(0), rad(-45), rad(-0)) * angles(rad(45), rad(-0), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.4, 0.65, -0.4) * angles(rad(90), rad(-90), rad(0)) * angles(rad(-60), rad(-0), rad(90)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-30), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, 0 ) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(20), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		end
	elseif anim == "gunfinish" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(45)), 0.1)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(-45)), 0.1)
			rs.C0 = rs.C0:Lerp(cframe(1.4, 0.5, 0) * angles(rad(0), rad(0), rad(-15)) * rsC0, 0.1)
			ls.C0 = ls.C0:Lerp(cframe(-1.15, -0.15, -0.5) * angles(rad(60), rad(0), rad(60)) * angles(rad(0), rad(-20), rad(-0)) * lsC0, 0.1)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-7.5), rad(-35), rad(0)), 0.1)
			lh.C0 = lh.C0:Lerp(cframe(-1.1, -1, -0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(0)), 0.1)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(30)), 0.45)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(-30)), 0.45)
			rs.C0 = rs.C0:Lerp(cframe(1.4, 0.5, 0) * angles(rad(0), rad(0), rad(-15)) * rsC0, 0.45)
			ls.C0 = ls.C0:Lerp(cframe(-0.75, 0.15, -1) * angles(rad(60), rad(0), rad(60)) * angles(rad(20), rad(-20), rad(-15)) * lsC0, 0.45)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-7.5), rad(-35), rad(0)), 0.45)
			lh.C0 = lh.C0:Lerp(cframe(-1.1, -1, -0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(0)), 0.45)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 3 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(45)), 0.1)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(-45)), 0.1)
			rs.C0 = rs.C0:Lerp(cframe(1.4, 0.5, 0) * angles(rad(0), rad(0), rad(-15)) * rsC0, 0.1)
			ls.C0 = ls.C0:Lerp(cframe(-1.15, 0.15, -0.5) * angles(rad(60), rad(0), rad(60)) * angles(rad(-15), rad(-20), rad(-0)) * lsC0, 0.1)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-7.5), rad(-35), rad(0)), 0.1)
			lh.C0 = lh.C0:Lerp(cframe(-1.1, -1, -0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(0)), 0.1)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		end
	elseif anim == "charge" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(-20), rad(0), rad(-0)), 0.15)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-20), rad(0), rad(0)), 0.15)
			rs.C0 = rs.C0:Lerp(cframe(1.15 , 1, -0.5) * angles(rad(165), rad(0), rad(-35)) * rsC0, 0.15)
			ls.C0 = ls.C0:Lerp(cframe(-1.15, 1, -0.5) * angles(rad(165), rad(0), rad(35)) * lsC0, 0.15)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-7.5), rad(-0), rad(-20)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, -0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(20)), 0.15)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		else
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(-5), rad(0), rad(-0)), 0.5)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-15), rad(0), rad(0)), 0.5)
			rs.C0 = rs.C0:Lerp(cframe(1.25 , -0.15, 0) * angles(rad(110), rad(-55), rad(15)) * angles(rad(20), rad(10), rad(20)) * rsC0, 0.5)
			ls.C0 = ls.C0:Lerp(cframe(-1.45, 0.15, 0.15) * angles(rad(85), rad(25), rad(-20)) * lsC0, 0.5)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-7.5), rad(-0), rad(-5)), 0.5)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, -0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(5)), 0.5)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		end
	elseif anim == "tobu" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-0, 0.15) * angles(rad(0), rad(0), rad(-100)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-10), rad(10), rad(40)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1, 0.5, -0.5) * angles(rad(90), rad(10), rad(-60)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-0.45, 1, -0.75) * angles(rad(150), rad(0), rad(45)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1, -1.1, -0) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-5), rad(-20), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1, -1, -0) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-25), rad(20), rad(-0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-0, 0) * angles(rad(0), rad(0), rad(-70)), 0.15)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(40)), 0.15)
			rs.C0 = rs.C0:Lerp(cframe(1.5, 0.5, -0.5) * angles(rad(75), rad(10), rad(-60)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-0.5, 0.75, -0.5) * angles(rad(160), rad(0), rad(70)) * angles(rad(-60), rad(0), rad(0)) * lsC0, 0.15)
			rh.C0 = rh.C0:Lerp(cframe(1, -1, -0) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-15), rad(-0), rad(0)), 0.15)
			lh.C0 = lh.C0:Lerp(cframe(-1, -1, -0) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-15), rad(30), rad(-0)), 0.15)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 3 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-0, -0.15) * angles(rad(25), rad(0), rad(50)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(-40)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5, 0.5, -0.5) * angles(rad(40), rad(10), rad(50)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.75, 0.75, 0.45) * angles(rad(60), rad(-30), rad(-100)) * angles(rad(-30), rad(0), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(0.75, -1, 0.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-45), rad(-20)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-0.25, -0.75, -1.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-5), rad(-45), rad(-40)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		end	
	elseif anim == "stobu" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0.15) * angles(rad(10), rad(-15), rad(-150)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(20), rad(-10), rad(30)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5, 1, -0) * angles(rad(180), rad(0), rad(-30)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1 , 0.5, 0.25) * angles(rad(90), rad(0), rad(-125))* lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(-0.75, -0.25, -0.15) *  angles(rad(20), rad(90), rad(0)) * angles(rad(10), rad(125), rad(-10))* angles(rad(0), rad(-10), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(1, -1, 0.5) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-10), rad(150), rad(0))* angles(rad(-0), rad(-0), rad(20)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(10), rad(0), rad(-30)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(15), rad(0), rad(20)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.35, 0.85, 0) * angles(rad(0), rad(0), rad(45)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5 , 0.5, 0) * angles(rad(75), rad(0), rad(-0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(0.5, -1, -1) *  angles(rad(0), rad(90), rad(0)) * angles(rad(0), rad(30), rad(20)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-0.25, -1, 1) *  angles(rad(-15), rad(-90), rad(0)) * angles(rad(-0), rad(90), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 3 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-0.5, -0.85) * angles(rad(0), rad(0), rad(115)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(-10), rad(15)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5, 0.3, 0.25) * angles(rad(90), rad(0), rad(105)) * angles(rad(-15), rad(0), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5 , -0.15, 0) * angles(rad(120), rad(0), rad(-0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1.15, -0.25, 0.5) *  angles(rad(-30), rad(90), rad(0)) * angles(rad(0), rad(-75), rad(-25)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-0.65, -0.5, -0.75) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-60), rad(-15), rad(-15)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		end	
	elseif anim == "tokagami" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -1.5) * angles(rad(20), rad(0), rad(45)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1, -0.25, -0.45) * angles(rad(0), rad(-45), rad(-0)) * angles(rad(150), rad(0), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 0.75, 0) * angles(rad(0), rad(-15), rad(-90)) * angles(rad(-15), rad(45), rad(-30)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(0.5, -1, 1) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-45), rad(0)) * angles(rad(-0), rad(0), rad(-70)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-0.75, 0.75,-1.56) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(-45), rad(0)) * angles(rad(-0), rad(0), rad(-20)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(5), rad(5), rad(45)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-20), rad(0), rad(-30)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.75, 1, -0.15) * angles(rad(0), rad(-45), rad(0)) * angles(rad(155), rad(-0), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.15, 0.5, 0.25) * angles(rad(0), rad(75), rad(-30)) * angles(rad(-0), rad(45), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-0), rad(-30)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1, -1, -0.45) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(-30), rad(-30)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 3 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(5), rad(135)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-20), rad(0), rad(-30)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.75, 1, -0.15) * angles(rad(0), rad(-45), rad(0)) * angles(rad(155), rad(-0), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.15, 0.5, 0.25) * angles(rad(0), rad(75), rad(-30)) * angles(rad(-0), rad(45), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-0), rad(-30)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1, -1, -0.45) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(-30), rad(-30)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 4 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-125)), 0.15)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(20), rad(0), rad(30)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.75, 1, -0.15) * angles(rad(0), rad(-45), rad(0)) * angles(rad(155), rad(-0), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.45, 0.5, 0) * angles(rad(0), rad(15), rad(-30)) * angles(rad(30), rad(0), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-0), rad(-30)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, -0.15) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(15)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		end
	elseif anim == "tokagamik" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(-10), rad(0), rad(-110)), 0.15)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(20), rad(0), rad(-30)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5 , 1, -0.45) * angles(rad(0), rad(90), rad(135)) * angles(rad(-30), rad(0), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.75, 0) * angles(rad(0), rad(0), rad(-60)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -0.25, -0.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(60), rad(0)) * angles(rad(-75), rad(0), rad(-15)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -0.5, -0.5) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-30), rad(0), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(-30), rad(0), rad(-165)), 0.15)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(20), rad(0), rad(-30)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5 , 1, -0.45) * angles(rad(0), rad(90), rad(135)) * angles(rad(30), rad(0), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.75, 0) * angles(rad(0), rad(0), rad(-60)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(0.5, -0.5, 1.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-30), rad(0)) *  angles(rad(-90), rad(0), rad(-90)) * angles(rad(30), rad(-0), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -0.5, -0.5) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-15), rad(0), rad(0)) * angles(rad(-0), rad(-0), rad(-30)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 3 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(-15), rad(-15), rad(120)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-20), rad(0), rad(60)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5, 0.5, 0.5) * angles(rad(135), rad(0), rad(60)) * angles(rad(-65), rad(35), rad(75)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.75, 0) * angles(rad(0), rad(0), rad(-60)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(0.75, -1, 1.15) *  angles(rad(0), rad(120), rad(0)) * angles(rad(-0), rad(-60), rad(-60)) * angles(rad(-0), rad(-45), rad(30)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -0.75, -0.5) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-15), rad(0), rad(0)) * angles(rad(-0), rad(-0), rad(-120)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		end
	elseif anim == "crusader" then	
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0.75) * angles(rad(20), rad(-10), rad(125)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-10), rad(0), rad(15)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5, 0.25, 0) * angles(rad(90), rad(20), rad(0)) * angles(rad(-20), rad(-10), rad(60)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25 , -0.15, 0) * angles(rad(30), rad(60), rad(-30)) * angles(rad(75), rad(0), rad(-0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1.15, -0.15, -0.15) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-35), rad(-25), rad(-15)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-0.75, -0.7, -0.75) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(15), rad(-15), rad(20)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(30), rad(-5), rad(160)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.1, 0.75, 0.2) * angles(rad(30), rad(0), rad(120)) * angles(rad(45), rad(30), rad(30))* angles(rad(-15), rad(-0), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-0.8, 0.5, 0.25) * angles(rad(-65), rad(-180), rad(-0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0 ) *  angles(rad(-20), rad(90), rad(0)) * angles(rad(0), rad(-45), rad(-20)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -0.5, 0 ) *  angles(rad(0), rad(-60), rad(0)) * angles(rad(-55), rad(-0), rad(-90)) * angles(rad(-0), rad(-0), rad(30)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 3 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(60), rad(-5), rad(-90)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.15, 0.75, -0.25) * angles(rad(30), rad(0), rad(120)) * angles(rad(115), rad(-45), rad(-40)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 0.5, 0.25) * angles(rad(-65), rad(-180), rad(60)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -0.75, 0.25) *  angles(rad(-20), rad(90), rad(0)) * angles(rad(-25), rad(-45), rad(15)) * angles(rad(30), rad(15), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -0.5, 0 ) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-25), rad(-0), rad(20)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 4 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(45), rad(0), rad(0)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(0.75, 0.5, -1.15) * angles(rad(90), rad(30), rad(-75)) * angles(rad(40), rad(35), rad(-20)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1, 0.5, 0.25) * angles(rad(-65), rad(-180), rad(45)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0.5) *  angles(rad(-20), rad(90), rad(0)) * angles(rad(-0), rad(0), rad(-45)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-0.8, -1, -0.45) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-0), rad(-40), rad(20)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		end
	elseif anim == "crusaderp" then	
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(75), rad(-0), rad(35)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(30), rad(0), rad(-30)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25 , 0.75, 0.25) * angles(rad(-180), rad(90), rad(90)) * angles(rad(-30), rad(150), rad(-60)) * angles(rad(15), rad(-0), rad(0)) * rsC0, 1)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.5, 0) * angles(rad(0), rad(-90), rad(0)) * angles(rad(90), rad(45), rad(215)) * lsC0, 1)
			rh.C0 = rh.C0:Lerp(cframe(1.45, -0.5, 0.25) *  angles(rad(0), rad(135), rad(0)) * angles(rad(-75), rad(-125), rad(-60)) * angles(rad(-30), rad(-0), rad(-55)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-0.5, -1, -1) *  angles(rad(0), rad(-110), rad(0)) * angles(rad(0), rad(-15), rad(-75)) * angles(rad(-0), rad(30), rad(30)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(90), rad(0), rad(-90)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(-30)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.15, 0.5, -1) * angles(rad(90), rad(0), rad(-50)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1, 0.5, 0.5) * angles(rad(90), rad(0), rad(-45)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-30), rad(-30)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, 0 ) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-30), rad(20), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 3 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(15), rad(0), rad(165)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-20), rad(0), rad(-30)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(0.75, 0, 0.75) * angles(rad(0), rad(-135), rad(-20)) * angles(rad(20), rad(-0), rad(-10)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.15, 1, 0.5) * angles(rad(180), rad(-55), rad(15)) * angles(rad(-10), rad(-0), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(0.8, -0.5, -1.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(20), rad(-30)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-0.5, -1, 0.65) *  angles(rad(-12.5), rad(-90), rad(0)) * angles(rad(0), rad(85), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 4 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(52.5), rad(5), rad(90)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(0.75, 0.5, 0.75) * angles(rad(-65), rad(200), rad(-60)) * angles(rad(-10), rad(15), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.15, 1, 0.5) * angles(rad(180), rad(-55), rad(15)) * angles(rad(-60), rad(-0), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(0.5, -1, -0.45) *  angles(rad(-45), rad(90), rad(0)) * angles(rad(-25), rad(45), rad(-20)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-0.75, -1.5, 0 ) *  angles(rad(20), rad(-90), rad(0)) * angles(rad(30), rad(25), rad(30)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 5 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(30), rad(0), rad(-0)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(30), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5, 0.3, -0.25) * angles(rad(60), rad(45), rad(10)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 0.75, -0.75) * angles(rad(90), rad(-75), rad(25)) * angles(rad(10), rad(-0), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, -1) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-0), rad(-50)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, -0.5) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(75)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		end	
	elseif anim == "crusaderk" then	
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(60), rad(0), rad(75)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5, 0.5, -0.25) * angles(rad(60), rad(15), rad(-25)) * angles(rad(-0), rad(20), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.2, 0.75, 0.2) * angles(rad(90), rad(-30), rad(-90)) * angles(rad(-0), rad(-45), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(0.75, -1, 0.75) *  angles(rad(0), rad(90), rad(0)) * angles(rad(0), rad(-60), rad(-60)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-0.5, -1, -1) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-0), rad(-75), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(-30), rad(15), rad(-120)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-20), rad(-20), rad(-0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.4, 0.5, 0.25) * angles(rad(0), rad(-30), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.5, 0.5) * angles(rad(135), rad(0), rad(-60)) * angles(rad(-65), rad(-35), rad(-75)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(0.75, -1, 0.75) *  angles(rad(0), rad(120), rad(0)) * angles(rad(-20), rad(-60), rad(-60)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-0, -0.5, -1) *  angles(rad(0), rad(-45), rad(0)) * angles(rad(30), rad(-90), rad(-90)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 3 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(-75), rad(-30), rad(-150)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0.25) * angles(rad(-30), rad(30), rad(50)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.4, 0.5, 0.25) * angles(rad(60), rad(-30), rad(40)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.5, 0.5) * angles(rad(135), rad(0), rad(-60)) * angles(rad(-65), rad(35), rad(-75)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(0.85, -0.8, 0.35) *  angles(rad(0), rad(40), rad(30)) * angles(rad(-20), rad(0), rad(60)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-0.85, -1, 0.35) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-75), rad(90), rad(0)) * angles(rad(-0), rad(-0), rad(45)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 4 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(20), rad(-25), rad(-45)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.35, 0.5, -0.65) * angles(rad(30), rad(45), rad(-15)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1, 0.75, 0.2) * angles(rad(45), rad(60), rad(-70)) * angles(rad(0), rad(-0), rad(-85)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(0.75, -1, -0.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(0), rad(55), rad(-30)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-0.85, -1, 0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-15), rad(45), rad(5)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		end
	elseif anim == "crusaderpu" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(25), rad(0), rad(105)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-10), rad(0), rad(-35)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5, 0.75, 0) * angles(rad(0), rad(0), rad(35)) * angles(rad(-35), rad(-0), rad(-0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5 , 0.25, -0.25) * angles(rad(90), rad(-40), rad(-0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1, -0.5, -0.25) *  angles(rad(-20), rad(90), rad(-15)) * angles(rad(-30), rad(-60), rad(-45)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -0.75, -0.75) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-10), rad(-10), rad(25)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(25), rad(0), rad(-75)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(20)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5, 0.5, 0) * angles(rad(30), rad(-20), rad(90)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.75 , 0.5, 0.25) * angles(rad(90), rad(-15), rad(-75)) * angles(rad(10), rad(0), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(0.5, -0.5, -0.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-90), rad(0), rad(30)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, 0 ) *  angles(rad(0), rad(-75), rad(0)) * angles(rad(0), rad(-0), rad(65)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 3 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(15), rad(10), rad(160)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(10), rad(0), rad(10)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5, 0.75, -0.45) * angles(rad(-20), rad(55), rad(60)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.15, 0.65, -0.25) * angles(rad(90), rad(-15), rad(-75)) * angles(rad(0), rad(-105), rad(20)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -0.75, -0.5) *  angles(rad(-0), rad(90), rad(0)) * angles(rad(0), rad(15), rad(65)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, -0.5) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-0), rad(20), rad(75)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		end
	elseif anim == "utsusemi" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -1.15) *  angles(rad(60), rad(30), rad(-10)) * angles(rad(0), rad(-20), rad(-25)), 0.1)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(20), rad(0), rad(30)), 0.1)
			rs.C0 = rs.C0:Lerp(cframe(1.75,0.45, -0.15) * angles(rad(-10), rad(-10), rad(60)) * angles(rad(60), rad(-45), rad(-0)) * rsC0, 0.1)
			ls.C0 = ls.C0:Lerp(cframe(-1, 1.15, -0.75) * angles(rad(15), rad(-60), rad(-90)) * angles(rad(75), rad(0), rad(15)) * lsC0, 0.1)
			rh.C0 = rh.C0:Lerp(cframe(0.75,-0.15,-1.15) *  angles(rad(0), rad(90), rad(0)) *  angles(rad(-45), rad(75), rad(30)) *  angles(rad(0), rad(0), rad(20)) * angles(rad(20), rad(-60), rad(0)), 0.1)
			lh.C0 = lh.C0:Lerp(cframe(-0.5, -1, 0.5) *  angles(rad(0), rad(-90), rad(0)) *  angles(rad(-30), rad(60), rad(30)) *  angles(rad(0), rad(60), rad(0)), 0.1)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -2.25) * angles(rad(90), rad(0), rad(0)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-35), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25, 0.25, 0.5) * angles(rad(0), rad(-75), rad(0))*  angles(rad(60), rad(0), rad(30)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1 , 1.75, -0.25) * angles(rad(175), rad(-60), rad(15))*  angles(rad(30), rad(0), rad(15)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -0.25, -0.75) *  angles(rad(0), rad(90), rad(0)) * angles(rad(0), rad(0), rad(-25)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, -0.45) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-0), rad(-0), rad(10)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 3 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0) * angles(rad(15), rad(-0), rad(-15)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(15), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25, 0.75, 0) * angles(rad(0), rad(0), rad(120)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 0.5, -0.25) * angles(rad(-20), rad(-25), rad(-60)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(0.75, -0.15, -1.75) *  angles(rad(0), rad(90), rad(0)) * angles(rad(0), rad(15), rad(-45)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -0.75, -0) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-30), rad(60), rad(15)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		end
	elseif anim == "utsusemik" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0) * angles(rad(0), rad(10), rad(75)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(20), rad(0), rad(15)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25, 0.75, 0) * angles(rad(0), rad(0), rad(60)) * angles(rad(45), rad(30), rad(-0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 0.75, -0) * angles(rad(-20), rad(-25), rad(-60)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -0.75, -1.15) *  angles(rad(0), rad(90), rad(0)) * angles(rad(0), rad(0), rad(-45)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -0.75, -0) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-15), rad(60), rad(-50)) * angles(rad(10), rad(-0), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0) * angles(rad(10), rad(-0), rad(-180)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-20), rad(0), rad(-0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25, 1.25, -0.75) * angles(rad(0), rad(0), rad(120)) * angles(rad(115), rad(-30), rad(60)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.5, 0.25) * angles(rad(-20), rad(25), rad(0)) * angles(rad(-30), rad(0), rad(-45)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -0.75, -0.75) *  angles(rad(0), rad(90), rad(0)) * angles(rad(0), rad(0), rad(-30)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -0.75, -1) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-0), rad(0), rad(-135)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 3 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0) * angles(rad(20), rad(-0), rad(-90)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(-0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.75, 1, -0.5) * angles(rad(0), rad(0), rad(120)) * angles(rad(75), rad(-45), rad(-15)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 0.35, 0.45) * angles(rad(-0), rad(125), rad(0)) * angles(rad(75), rad(0), rad(45)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1, -1.25, -0.05) *  angles(rad(0), rad(90), rad(0)) * angles(rad(45), rad(0), rad(-15)) * angles(rad(0), rad(0), rad(-15)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1, 1.15, -1) *  angles(rad(0), rad(-120), rad(0)) * angles(rad(-60), rad(45), rad(-160)) * angles(rad(5), rad(0), rad(20)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 4 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0) * angles(rad(-7.5), rad(-0), rad(-45)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(25), rad(-0), rad(45)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25, 0.75, -0) * angles(rad(0), rad(0), rad(120)) * angles(rad(15), rad(-15), rad(-15)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 1.15, 0.25) * angles(rad(-0), rad(125), rad(0)) * angles(rad(90), rad(50), rad(90)) * angles(rad(45), rad(-30), rad(45)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1, -0.75, -0.45) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-30), rad(-30), rad(-75))* angles(rad(-10), rad(25), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, 0 ) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-0), rad(25), rad(15)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		end
	elseif anim == "sora" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(-20), rad(0), rad(50)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(-30)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.15, 0.15) * angles(rad(30), rad(0), rad(30)) * angles(rad(0), rad(-60), rad(-0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1, 0.5, -0.5) * angles(rad(90), rad(0), rad(60)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1.45, -1, 0.15) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-45), rad(-0)) * angles(rad(15), rad(0), rad(-75)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1, -0.75, 0.45) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-20), rad(0), rad(0)) * angles(rad(0), rad(45), rad(-0)) * angles(rad(0), rad(0), rad(20)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(-20), rad(0), rad(75)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(-30)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25 , 0.35, 0.45) * angles(rad(30), rad(0), rad(0)) * angles(rad(0), rad(-60), rad(60)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1, 0.5, -0.5) * angles(rad(90), rad(0), rad(60)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1, -0.5, -0.15) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-75), rad(0), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1, -0.75, 0.45) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-0), rad(0), rad(0)) * angles(rad(0), rad(45), rad(-0)) * angles(rad(0), rad(0), rad(45)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 3 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(-20), rad(0), rad(150)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(45)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.5, 0) * angles(rad(60), rad(0), rad(-0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.45, 0.45, -0.15) * angles(rad(90), rad(0), rad(-15)) * angles(rad(20), rad(0), rad(-0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -0.75, 0.45) *  angles(rad(0), rad(90), rad(0)) * angles(rad(0), rad(0), rad(-45)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1, -0.25, -0.75) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-15), rad(-15), rad(0)) * angles(rad(0), rad(0), rad(30)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 4 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(-2.5), rad(10), rad(-90)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(30)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5, 1, -0.5) * angles(rad(160), rad(0), rad(-40)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.5, -0) * angles(rad(90), rad(0), rad(-60)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1, -1, -0) *  angles(rad(0), rad(90), rad(0)) * angles(rad(0), rad(-30), rad(-25))* angles(rad(-0), rad(-0), rad(-30)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1, -0.15, 0) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-0), rad(90), rad(-90)) * angles(rad(-0), rad(-90), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		end
	elseif anim == "eisen" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-0)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-20), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(0.6, 0.15, -1.15) * angles(rad(0), rad(180), rad(75)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-0.5, 0.75, -0.75) * angles(rad(150), rad(15), rad(30)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, -0.75) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-15), rad(-60)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1.25, -0.45) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(75)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(0), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0, 0, -0) * angles(rad(5), rad(5), rad(-15)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(-30)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25, 0.75, -1) * angles(rad(90), rad(90), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.15, 0.45, 0.45) * angles(rad(0), rad(-15), rad(0)) * angles(rad(35), rad(-0), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(0.75, -0.5, -0.35) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-75), rad(0), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -0.45, -0.45) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(45)) * angles(rad(-20), rad(30), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(0), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 3 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0, 0, -0) * angles(rad(10), rad(20), rad(-120)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(40)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1, 0.75, 0.5) * angles(rad(30), rad(0), rad(100)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.15, 0.45, 0.45) * angles(rad(0), rad(-15), rad(0)) * angles(rad(35), rad(-0), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, -0.15) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-15), rad(-60)) * angles(rad(-30), rad(-0), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1.25, -0.45) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(75)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(0), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 4 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0, 0, -0) * angles(rad(30), rad(20), rad(-215)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(-60)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.3, 0.75, 0.25) * angles(rad(0), rad(-30), rad(45)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.15, 0.45, 0.45) * angles(rad(0), rad(-15), rad(0)) * angles(rad(35), rad(-0), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, -0.15) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-15), rad(-60)) * angles(rad(-30), rad(-0), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1.25, -0.45) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(75)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(0), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 5 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0, 0, -0) * angles(rad(30), rad(20), rad(-330)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(-60)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1, 0.75, -0.25) * angles(rad(0), rad(30), rad(45)) * angles(rad(60), rad(60), rad(-0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.15, 0.45, 0.45) * angles(rad(0), rad(-15), rad(0)) * angles(rad(35), rad(-0), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, -0.15) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-15), rad(-60)) * angles(rad(-30), rad(-0), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1.25, -0.45) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(75)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(0), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 6 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0, 0, -0) * angles(rad(10), rad(20), rad(-380)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1, 0.75, 0.5) * angles(rad(30), rad(0), rad(100)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.15, 0.45, 0.45) * angles(rad(0), rad(-15), rad(0)) * angles(rad(35), rad(-0), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, -0.15) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-15), rad(-60)) * angles(rad(-30), rad(-0), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1.25, -0.45) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(75)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(0), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 7 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-0, 0) * angles(rad(0), rad(0), rad(30)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(20), rad(0), rad(20)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(0.6, 0.15, -1.15) * angles(rad(0), rad(180), rad(75)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.15, 0.45, 0.45) * angles(rad(0), rad(-15), rad(0)) * angles(rad(35), rad(-0), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1.25, -0.75, -0.3) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-30), rad(-45)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1, -1, -0.75) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(-30), rad(10)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		end
	elseif anim == "danku" then	
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(5), rad(-10), rad(105)), 0.15)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-10), rad(0), rad(-45)), 0.15)
			rs.C0 = rs.C0:Lerp(cframe(1.25, 0.75, 0) * angles(rad(0), rad(0), rad(65)) * angles(rad(-15), rad(-0), rad(-0)) * rsC0, 0.15)
			ls.C0 = ls.C0:Lerp(cframe(-1.5 , 0.5, 0) * angles(rad(90), rad(-40), rad(-0)) * lsC0, 0.15)
			rh.C0 = rh.C0:Lerp(cframe(1.15, -0.5, -0.5) *  angles(rad(-20), rad(90), rad(0)) * angles(rad(-45), rad(-25), rad(-60)), 0.15)
			lh.C0 = lh.C0:Lerp(cframe(-1.05, -0.875, -0.5) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-0), rad(10), rad(25)), 0.15)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0.25) * angles(rad(90), rad(0), rad(-0)) * angles(rad(0), rad(0), rad(-0)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-25), rad(0), rad(25)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25, 0.5, 0.15) * angles(rad(120), rad(0), rad(75)) * angles(rad(30), rad(30), rad(0))  * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-0.75, 1.5, -1) * angles(rad(60), rad(0), rad(-55)) * angles(rad(55), rad(-0), rad(30))* angles(rad(-0), rad(30), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(0.25, -0.5, -0.5) *  angles(rad(75), rad(90), rad(0)) * angles(rad(0), rad(90), rad(15)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, 0 ) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-0), rad(-0), rad(30)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		end
	elseif anim == "whirlwind" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-0.25, -0.45) * angles(rad(-0), rad(-20), rad(160)), 0.1)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(75)), 0.1)
			rs.C0 = rs.C0:Lerp(cframe(1.25 , 1.5, -0.15) * angles(rad(0), rad(30), rad(90)) * angles(rad(30), rad(-0), rad(0)) * rsC0, 0.1)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0, 0.15) * angles(rad(-10), rad(20), rad(-15)) * lsC0, 0.1)
			rh.C0 = rh.C0:Lerp(cframe(-0.5, -0.5, -1) *  angles(rad(40), rad(90), rad(0)) * angles(rad(-0), rad(90), rad(30)), 0.1)
			lh.C0 = lh.C0:Lerp(cframe(0.15, -0.75, 0.75) *  angles(rad(-60), rad(-90), rad(0)) * angles(rad(0), rad(110), rad(0)), 0.1)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-0.25, -0.15) * angles(rad(12.5), rad(-0), rad(15)), 0.2)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(-40)), 0.2)
			rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.75, 0) * angles(rad(0), rad(-12.5), rad(30)) * angles(rad(-30), rad(0), rad(-0)) * rsC0, 0.2)
			ls.C0 = ls.C0:Lerp(cframe(-1, 0.75, 0.5) * angles(rad(30), rad(-10), rad(-100)) * angles(rad(-0), rad(-20), rad(0)) * lsC0, 0.2)
			rh.C0 = rh.C0:Lerp(cframe(0.5, -1, 1) *  angles(rad(-10), rad(90), rad(0)) * angles(rad(-0), rad(-75), rad(0)) , 0.2)
			lh.C0 = lh.C0:Lerp(cframe(-0.25, -0.75, -1.25) *  angles(rad(20), rad(-90), rad(0)) * angles(rad(-0), rad(-90), rad(-15)), 0.2)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 3 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0.5 ,-0, 0) * angles(rad(0), rad(-90), rad(0+(30*spin))), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(10), rad(-20), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.5, 0) * angles(rad(0), rad(0), rad(90)) * angles(rad(-30), rad(-0), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.5, 0) * angles(rad(0), rad(0), rad(-60)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-20), rad(-0), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, 0 ) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-20), rad(0), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		end
	elseif anim == "counter" then
		if not sword then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0+ 0.125 * sin(sine / 38)) * angles(rad(0), rad(0), rad(-0)), 0.1)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(20), rad(0), rad(0)), 0.1)
			rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.5+ 0.125 * sin(sine / 38), -0.5) * angles(rad(90), rad(0), rad(-30)) * rsC0, 0.1)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.5+ 0.125 * sin(sine / 38), -0.5) * angles(rad(90), rad(0), rad(30)) * lsC0, 0.1)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1- 0.125 * sin(sine / 38), 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-7.5), rad(-0), rad(0)), 0.1)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1- 0.125 * sin(sine / 38), -0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(0)), 0.1)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		else
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(60)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(-60)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.5, -0.45) * angles(rad(90), rad(0), rad(-30)) * angles(rad(75), rad(-0), rad(-15)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5 , 0.25, 0.5) * angles(rad(15), rad(0), rad(30)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(0), rad(-45), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, 0.3) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-20), rad(30), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		end	
	elseif anim == "scounter" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0.5, -1.25) * angles(rad(-20), rad(20), rad(-180)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(-60)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5, 0.25, -0.25) * angles(rad(20), rad(0), rad(45)) * angles(rad(40), rad(30), rad(-0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25 , 0.5, -0) * angles(rad(105), rad(0), rad(-45)) * angles(rad(0), rad(-45), rad(-0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(0.25, -0.75, 0.5) *  angles(rad(-75), rad(90), rad(0)) * angles(rad(0), rad(-90), rad(20)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-0.75, 0.45, -0.875) *  angles(rad(20), rad(-150), rad(0)) * angles(rad(20), rad(40), rad(-15)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-0.75, -0.25) * angles(rad(-10), rad(10), rad(-90)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-10), rad(-10), rad(50)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5, 0.5, -0.25) * angles(rad(60), rad(75), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5 , 0.75, 0.25) * angles(rad(90), rad(0), rad(-75)) * angles(rad(30), rad(0), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(0.5, -1, -0.5) *  angles(rad(-10), rad(90), rad(0)) * angles(rad(25), rad(90), rad(-75)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1, -0.75, 0.5) *  angles(rad(-7.5), rad(-90), rad(0)) * angles(rad(-7.5), rad(25), rad(5)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 3 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-0.25, -0.25) * angles(rad(-0), rad(45), rad(80)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-10), rad(-10), rad(-40)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25, 0.75, -0) * angles(rad(90), rad(0), rad(75)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25 , 0.5, 0.25) * angles(rad(90), rad(0), rad(-105)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1, -0.5, -0.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-15), rad(-15), rad(45)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1, -0.25, -0.5) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-0), rad(30), rad(-40)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 4 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-0.5, -0.25) * angles(rad(-0), rad(25), rad(-45)), 1)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-10), rad(-10), rad(-25)), 1)
			rs.C0 = rs.C0:Lerp(cframe(1.25, 0.75, -0) * angles(rad(90), rad(0), rad(75)) * rsC0, 1)
			ls.C0 = ls.C0:Lerp(cframe(-1.25 , 0.5, 0.25) * angles(rad(90), rad(0), rad(-105)) * lsC0, 1)
			rh.C0 = rh.C0:Lerp(cframe(0.75, -1.3, -0.5) *  angles(rad(-10), rad(90), rad(0)) * angles(rad(25), rad(45), rad(0)), 1)
			lh.C0 = lh.C0:Lerp(cframe(-0.9, -0.25, 1) *  angles(rad(-30), rad(-90), rad(0)) * angles(rad(-0), rad(60), rad(5)), 1)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		end		
	elseif anim == "flame" then
		if not sword then
			if frame == 1 then
				rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0.45) * angles(rad(10), rad(-20), rad(-60)), 0.15)
				nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(20)), 0.15)
				rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.75, -0.25) * angles(rad(90), rad(30), rad(-20)) * angles(rad(45), rad(45), rad(-40)) * rsC0, 0.15)
				ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.5, 0) * angles(rad(0), rad(0), rad(-60)) * angles(rad(30), rad(0), rad(-0)) * lsC0, 0.15)
				rh.C0 = rh.C0:Lerp(cframe(1, -0.25, -0.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-20), rad(-40), rad(0)), 0.15)
				lh.C0 = lh.C0:Lerp(cframe(-1, -0.15, -0.75) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-5), rad(10), rad(7.5)), 0.15)
				WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
				WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
			elseif frame == 2 then
				rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(10), rad(-0), rad(45)), 0.3)
				nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(15), rad(0), rad(0)), 0.3)
				rs.C0 = rs.C0:Lerp(cframe(1.25 , 0.75, -0.5) * angles(rad(100), rad(15), rad(30)) * angles(rad(10), rad(135), rad(-30)) * rsC0, 0.3)
				ls.C0 = ls.C0:Lerp(cframe(-1.3, 0.75, 0) * angles(rad(0), rad(-30), rad(-65)) * angles(rad(10), rad(20), rad(-15)) * lsC0, 0.3)
				rh.C0 = rh.C0:Lerp(cframe(-0.25, -1, 1) *  angles(rad(7.5), rad(90), rad(0)) * angles(rad(25), rad(-135), rad(20)), 0.3)
				lh.C0 = lh.C0:Lerp(cframe(-0.25, -0.85, -1.25) *  angles(rad(10), rad(-90), rad(0)) * angles(rad(25), rad(-90), rad(20)), 0.3)
				WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
				WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
			elseif frame == 3 then
				rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(5), rad(-0), rad(30)), 0.2)
				nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(15), rad(0), rad(0)), 0.2)
				rs.C0 = rs.C0:Lerp(cframe(1.15 , 0.75, -1.15) * angles(rad(100), rad(15), rad(30)) * angles(rad(60), rad(-90), rad(0)) * rsC0, 0.2)
				ls.C0 = ls.C0:Lerp(cframe(-1.3, 0.75, 0) * angles(rad(0), rad(-30), rad(-65)) * angles(rad(-10), rad(20), rad(-15)) * lsC0, 0.2)
				rh.C0 = rh.C0:Lerp(cframe(-0.25, -1, 1) *  angles(rad(7.5), rad(90), rad(0)) * angles(rad(25), rad(-135), rad(20)), 0.2)
				lh.C0 = lh.C0:Lerp(cframe(-0.25, -0.85, -1.25) *  angles(rad(10), rad(-90), rad(0)) * angles(rad(25), rad(-90), rad(20)), 0.2)
				WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
				WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
			elseif frame == 4 then
				rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(5), rad(-0), rad(-45)), 0.3)
				nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(0)), 0.3)
				rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.75, -0.75) * angles(rad(100), rad(15), rad(30)) * angles(rad(60), rad(-30), rad(-45)) * rsC0, 0.3)
				ls.C0 = ls.C0:Lerp(cframe(-1.3, 0.75, 0) * angles(rad(0), rad(-30), rad(-65)) * angles(rad(10), rad(20), rad(30)) * lsC0, 0.3)
				rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-60), rad(0)), 0.3)
				lh.C0 = lh.C0:Lerp(cframe(-0.75, -0.75, -0.75) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-15), rad(-20), rad(0)), 0.3)
				WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
				WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
			end	
		else
			if frame == 1 then
				rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0.45) * angles(rad(15), rad(-0), rad(45)), 0.3)
				nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(15), rad(-10), rad(-45)), 0.3)
				rs.C0 = rs.C0:Lerp(cframe(1.25 , 1, -0.5) * angles(rad(15), rad(0), rad(90)) * angles(rad(105), rad(0), rad(-30)) * rsC0, 0.3)
				ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.5, 1) * angles(rad(90), rad(-30), rad(0)) * angles(rad(-60), rad(-30), rad(-0)) * angles(rad(-15), rad(0), rad(-30)) * lsC0, 0.3)
				rh.C0 = rh.C0:Lerp(cframe(1 , -1, -0.75) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-15), rad(-60)), 0.3)
				lh.C0 = lh.C0:Lerp(cframe(-1 , -0.6, -0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-20), rad(30), rad(0)), 0.3)
				WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
				WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
			elseif frame == 2 then
				rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(10), rad(-0), rad(-45)), 0.3)
				nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(15), rad(0), rad(30)), 0.3)
				rs.C0 = rs.C0:Lerp(cframe(1.3, 0.75, 0) * angles(rad(0), rad(30), rad(65)) * angles(rad(10), rad(-20), rad(15)) * rsC0, 0.3)
				ls.C0 = ls.C0:Lerp(cframe(-1.25 , 0.75, -0.5) * angles(rad(100), rad(-15), rad(-30)) * angles(rad(10), rad(-135), rad(30)) * lsC0, 0.3)
				rh.C0 = rh.C0:Lerp(cframe(0.25, -0.85, -1.25) *  angles(rad(10), rad(90), rad(0)) * angles(rad(25), rad(60), rad(-20)) * angles(rad(-7.5), rad(-0), rad(0)), 0.3)
				lh.C0 = lh.C0:Lerp(cframe(0.5, -1, 0.75) *  angles(rad(7.5), rad(-90), rad(0)) * angles(rad(25), rad(135), rad(-20)), 0.3)
				WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
				WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
			elseif frame == 3 then
				rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(5), rad(-0), rad(-30)), 0.2)
				nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(15), rad(0), rad(0)), 0.2)
				rs.C0 = rs.C0:Lerp(cframe(1.3, 0.75, 0) * angles(rad(0), rad(30), rad(65)) * angles(rad(-10), rad(-20), rad(15)) * rsC0, 0.2)
				ls.C0 = ls.C0:Lerp(cframe(-1.15 , 0.75, -1.15) * angles(rad(100), rad(15), rad(30)) * angles(rad(60), rad(-90), rad(0)) * lsC0, 0.2)
				rh.C0 = rh.C0:Lerp(cframe(0.25, -0.85, -1.25) *  angles(rad(10), rad(90), rad(0)) * angles(rad(25), rad(60), rad(-20)) * angles(rad(-7.5), rad(-0), rad(0)), 0.3)
				lh.C0 = lh.C0:Lerp(cframe(0.5, -1, 0.75) *  angles(rad(7.5), rad(-90), rad(0)) * angles(rad(25), rad(135), rad(-20)), 0.3)
				WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
				WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
			elseif frame == 4 then
				rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(5), rad(-0), rad(15)), 0.3)
				nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(-15)), 0.3)
				rs.C0 = rs.C0:Lerp(cframe(1.3, 0.75, 0) * angles(rad(0), rad(30), rad(65)) * angles(rad(10), rad(-20), rad(-30)) * rsC0, 0.3)
				ls.C0 = ls.C0:Lerp(cframe(-1.5 , 0.75, -0.75) * angles(rad(100), rad(-15), rad(-30)) * angles(rad(60), rad(30), rad(45)) * lsC0, 0.3)
				rh.C0 = rh.C0:Lerp(cframe(0.75, -0.75, -0.75) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-15), rad(20), rad(0)), 0.3)
				lh.C0 = lh.C0:Lerp(cframe(-1 , -1, 0 ) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-0), rad(60), rad(0)), 0.3)
				WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
				WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
			end	
		end
	elseif anim == "dive" then	
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -2) * angles(rad(90+(15*spin)), rad(0), rad(-0)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5, 0.5, -0.25) * angles(rad(50), rad(20), rad(-30)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.5, -0.25) * angles(rad(50), rad(-20), rad(30)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , 0.5, -0.75) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-15), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , 0.25, -1.15) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(35)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -1.5) * angles(rad(-25), rad(0), rad(-90)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(10), rad(10), rad(50)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.25, 0) * angles(rad(90), rad(90), rad(15)) * angles(rad(-30), rad(30), rad(-45)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.5, -0.5) * angles(rad(50), rad(-40), rad(-15)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(0.75, 0.85, -1.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-20), rad(-10), rad(-5)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -0.25, -0.5) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-40), rad(15), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		end
	elseif anim == "harmonic" then	
		rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(-0), rad(0), rad(-105)), 0.3)
		nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, -0.1, 0.1) * angles(rad(30), rad(-10), rad(15)), 0.3)
		rs.C0 = rs.C0:Lerp(cframe(1.5 , 1, 0) * angles(rad(200), rad(30), rad(-0)) * rsC0, 0.3)
		ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.5, 0) * angles(rad(200), rad(0), rad(0)) * lsC0, 0.3)
		rh.C0 = rh.C0:Lerp(cframe(1.25, -0.75, -0.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-30), rad(-45)), 0.3)
		lh.C0 = lh.C0:Lerp(cframe(-1, -1, -0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-5), rad(0), rad(0)), 0.3)
		WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
		WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
	elseif anim == "shard" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0.25, -0.25) * angles(rad(-10), rad(0), rad(60)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(30)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.5, 0) * angles(rad(90), rad(0), rad(60)) * angles(rad(20), rad(-0), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-0.9, 0.5, 0.3) * angles(rad(120), rad(0), rad(-120)) * angles(rad(-0), rad(-20), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -0.9, 0.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-5), rad(-60), rad(-15)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -0.65, 0 ) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-5), rad(-45), rad(20)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-0.75, -0.5) * angles(rad(30), rad(-30), rad(-45)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(60), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25 , 0.75, 0) * angles(rad(0), rad(45), rad(60)) * angles(rad(-0), rad(-30), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.5, -0.5) * angles(rad(0), rad(60), rad(30)) * angles(rad(115), rad(-20), rad(30)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0.25) *  angles(rad(-10), rad(90), rad(0)) * angles(rad(-30), rad(-60), rad(15)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -0.5, -0.75) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(30)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 3 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0.5, -1.5) * angles(rad(-20), rad(-20), rad(180)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(60)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25 , 0.5, -0) * angles(rad(105), rad(0), rad(45)) * angles(rad(0), rad(45), rad(-0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.25, -0.25) * angles(rad(20), rad(0), rad(-45)) * angles(rad(40), rad(-30), rad(-0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(0.75, -0.45, -1) *  angles(rad(20), rad(150), rad(0)) * angles(rad(20), rad(-40), rad(-45)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-0.25, -0.75, 0.5) *  angles(rad(-75), rad(-90), rad(0)) * angles(rad(0), rad(90), rad(-20)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 4 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0.25) * angles(rad(-2.5), rad(-15), rad(-90)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(60)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.35 , 0.5, -0.4) * angles(rad(0), rad(45), rad(-0)) * angles(rad(15), rad(-0), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 0.5, -0.5) * angles(rad(30), rad(-60), rad(20)) * angles(rad(-15), rad(-15), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1, -0.65, -0.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-5), rad(-15), rad(10)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -0.65, -0.45) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(25), rad(-10)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		end	
	elseif anim == "shardb" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0.5, -1.25) * angles(rad(-20), rad(-20), rad(180)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(60)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25 , 0.5, -0) * angles(rad(105), rad(0), rad(45)) * angles(rad(0), rad(45), rad(-0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.25, -0.25) * angles(rad(20), rad(0), rad(-45)) * angles(rad(40), rad(-30), rad(-0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(0.75, 0.45, -0.875) *  angles(rad(20), rad(150), rad(0)) * angles(rad(20), rad(-40), rad(15)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-0.25, -0.75, 0.5) *  angles(rad(-75), rad(-90), rad(0)) * angles(rad(0), rad(90), rad(-20)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-0.75, -0.25) * angles(rad(-10), rad(-10), rad(90)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-10), rad(10), rad(-50)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.75, 0.25) * angles(rad(90), rad(0), rad(75)) * angles(rad(30), rad(0), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 0.25, 0.25) * angles(rad(60), rad(37.5), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1, -0.75, 0.5) *  angles(rad(-7.5), rad(90), rad(0)) * angles(rad(-7.5), rad(-25), rad(-5)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-0.5, -1, -0.5) *  angles(rad(-10), rad(-90), rad(0)) * angles(rad(25), rad(-90), rad(75)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 3 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-0.25, -0.25) * angles(rad(-0), rad(-45), rad(-80)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-10), rad(10), rad(40)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25 , 0.5, 0.25) * angles(rad(90), rad(0), rad(105)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 0.75, -0) * angles(rad(90), rad(0), rad(-75)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1, -0.25, -0.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-30), rad(40)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1, -0.5, -0.5) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-15), rad(15), rad(-45)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 4 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-0.5, -0.25) * angles(rad(-0), rad(-25), rad(45)), 1)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-10), rad(10), rad(25)), 1)
			rs.C0 = rs.C0:Lerp(cframe(1.25 , 0.5, 0.25) * angles(rad(90), rad(0), rad(105)) * rsC0, 1)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 0.75, -0) * angles(rad(90), rad(0), rad(-75)) * lsC0, 1)
			rh.C0 = rh.C0:Lerp(cframe(0.9, -0.25, 1) *  angles(rad(-30), rad(90), rad(0)) * angles(rad(-0), rad(-60), rad(-5)), 1)
			lh.C0 = lh.C0:Lerp(cframe(-0.75, -1.3, -0.5) *  angles(rad(-10), rad(-90), rad(0)) * angles(rad(25), rad(-45), rad(-0)), 1)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		end		
	elseif anim == "kouma" then	
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0, -0.75, -0.5) * angles(rad(45), rad(0), rad(-60)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(60)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.5, 0) * angles(rad(60), rad(0), rad(60)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 1.15, -0.25) * angles(rad(0), rad(-30), rad(-90)) * angles(rad(-0), rad(-0), rad(-35)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(0.5, -0.75, -1) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(60), rad(0)) * angles(rad(-0), rad(0), rad(30)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-0.65, -1, 0.5) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(60), rad(30)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-0, -0.15) * angles(rad(12.5), rad(-0), rad(-15)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(-0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1, 0.75, 0.5) * angles(rad(30), rad(10), rad(100)) * angles(rad(-0), rad(20), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25 , 0, 0.5) * angles(rad(0), rad(90), rad(-0)) * angles(rad(60), rad(15), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(0.85, -0.75, -1) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(15), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, 0.45) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(15), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 3 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-0.75, -0.5) * angles(rad(0), rad(-0), rad(135)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(30), rad(0), rad(-45)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.15, 0.25, -0.45) * angles(rad(0), rad(45), rad(0)) * angles(rad(25), rad(-0), rad(20)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-0.75, 0.75, -1) * angles(rad(90), rad(0), rad(75)) * angles(rad(30), rad(-60), rad(30)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -0.5, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(0), rad(-45), rad(0)) * angles(rad(-45), rad(-0), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -0.6, -0.75) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-0), rad(15), rad(-10)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 4 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0.45) * angles(rad(0), rad(30), rad(45)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(-15)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.5, 0) * angles(rad(0), rad(-30), rad(90)) * angles(rad(75), rad(0), rad(-0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.5, 0) * angles(rad(0), rad(45), rad(0)) * angles(rad(90), rad(0), rad(-60)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1.25, -1.15, -0.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-30), rad(0)) * angles(rad(30), rad(-0), rad(10)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -0.25, 0 ) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(45), rad(0))* angles(rad(-30), rad(-0), rad(-30)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 5 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-0.5, -0.25) * angles(rad(-0), rad(25), rad(-45)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-10), rad(-10), rad(25)), 1)
			rs.C0 = rs.C0:Lerp(cframe(1.25, 0.75, -0) * angles(rad(90), rad(0), rad(75)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25 , 0.5, 0.25) * angles(rad(90), rad(0), rad(-105)) * angles(rad(-45), rad(0), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(0.75, -1.3, -0.5) *  angles(rad(-10), rad(90), rad(0)) * angles(rad(25), rad(45), rad(-0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-0.9, -0.25, 1) *  angles(rad(-30), rad(-90), rad(0)) * angles(rad(-0), rad(60), rad(5)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 6 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-0.75, -0.25) * angles(rad(-10), rad(10), rad(-90)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-10), rad(-10), rad(50)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25, 0.25, 0.25) * angles(rad(60), rad(-37.5), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.45 , 1.15, -0.3) * angles(rad(90), rad(0), rad(-75)) * angles(rad(30), rad(90), rad(90)) * angles(rad(-30), rad(-0), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(0.5, -1, -0.5) *  angles(rad(-10), rad(90), rad(0)) * angles(rad(25), rad(90), rad(-75)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1, -0.75, 0.5) *  angles(rad(-7.5), rad(-90), rad(0)) * angles(rad(-7.5), rad(25), rad(5)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		end		
	elseif anim == "miyu" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(1.5 ,0,-1.25) * angles(rad(-10), rad(0), rad(-90)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(20), rad(0), rad(-30)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(0.75, 0.5, -1) * angles(rad(90), rad(45), rad(-0)) * angles(rad(45), rad(0), rad(-45)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1, 0, -1) * angles(rad(90), rad(0), rad(60)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1.5,-0.15,-0.15) *  angles(rad(0), rad(90), rad(0))  *  angles(rad(-15), rad(-45), rad(45)) * angles(rad(-0), rad(0), rad(-105)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1,-0.5,-0.45) *  angles(rad(0), rad(-90), rad(0)) *  angles(rad(-60), rad(10), rad(-0)) * angles(rad(-0), rad(0), rad(60)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0,0,-1.5) * angles(rad(10), rad(0), rad(-60)), 1)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(45)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.55 , 1, 0.25)  * angles(rad(0), rad(0), rad(105)) * angles(rad(-30), rad(0), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.25, 0.25)  * angles(rad(0), rad(30), rad(-30)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1,0.35,-0.5) *  angles(rad(0), rad(90), rad(0))  *  angles(rad(10), rad(-20), rad(10)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1,-0.75,-1.1) *  angles(rad(0), rad(-90), rad(0)) *  angles(rad(0), rad(0), rad(75)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		end
	elseif anim == "healing" then
		if not sword then
			if frame == 1 then
				rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0+ 0.125 * sin(sine / 38)) * angles(rad(0), rad(0), rad(-0)), 0.1)
				nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(20), rad(0), rad(0)), 0.1)
				rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.5+ 0.125 * sin(sine / 38), -0.5) * angles(rad(90), rad(0), rad(-35)) * rsC0, 0.1)
				ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.5+ 0.125 * sin(sine / 38), -0.5) * angles(rad(90), rad(0), rad(40)) * lsC0, 0.1)
				rh.C0 = rh.C0:Lerp(cframe(1 , -1- 0.125 * sin(sine / 38), 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-7.5), rad(-0), rad(0)), 0.1)
				lh.C0 = lh.C0:Lerp(cframe(-1 , -1- 0.125 * sin(sine / 38), -0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(0)), 0.1)
				WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
				WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
			elseif frame == 2 then
				rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0+ 0.125 * sin(sine / 38)) * angles(rad(-20), rad(0), rad(-0)), 0.1)
				nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-20), rad(0), rad(0)), 0.1)
				rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.875, -0) * angles(rad(115+ 2.5 * sin(sine / 38)), rad(0), rad(-35)) * rsC0, 0.1)
				ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.875, -0) * angles(rad(115+ 2.5 * sin(sine / 38)), rad(0), rad(40)) * lsC0, 0.1)
				rh.C0 = rh.C0:Lerp(cframe(1 , -1- 0.125 * sin(sine / 38), 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-7.5), rad(-0), rad(-20)), 0.1)
				lh.C0 = lh.C0:Lerp(cframe(-1 , -1.15- 0.125 * sin(sine / 38), -0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(20)), 0.1)
				WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
				WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
			end
		else
			if frame == 1 then
				rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0+ 0.125 * sin(sine / 38)) * angles(rad(0), rad(0), rad(-0)), 0.1)
				nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(20), rad(0), rad(0)), 0.1)
				rs.C0 = rs.C0:Lerp(cframe(1.3 , 0.45+ 0.125 * sin(sine / 38), 0) * angles(rad(0), rad(0), rad(3)) * rsC0, 0.1)
				ls.C0 = ls.C0:Lerp(cframe(-1.25, 0.25, -0.45) * angles(rad(90), rad(0), rad(45)) * lsC0, 0.1)
				rh.C0 = rh.C0:Lerp(cframe(1 , -1- 0.125 * sin(sine / 38), 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-7.5), rad(-0), rad(0)), 0.1)
				lh.C0 = lh.C0:Lerp(cframe(-1.1, -1- 0.125 * sin(sine / 38), -0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(0)), 0.1)
				WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
				WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
			elseif frame == 2 then
				rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0+ 0.125 * sin(sine / 38)) * angles(rad(-20), rad(0), rad(-0)), 0.1)
				nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-20), rad(0), rad(0)), 0.1)
				rs.C0 = rs.C0:Lerp(cframe(1.3 , 0.45+ 0.125 * sin(sine / 38), 0) * angles(rad(-20), rad(0), rad(3)) * rsC0, 0.1)
				ls.C0 = ls.C0:Lerp(cframe(-1.25, 0.45, -0.7) * angles(rad(150), rad(0), rad(60)) * lsC0, 0.1)
				rh.C0 = rh.C0:Lerp(cframe(1 , -1- 0.125 * sin(sine / 38), 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-7.5), rad(-0), rad(-20)), 0.1)
				lh.C0 = lh.C0:Lerp(cframe(-1.1, -1.15- 0.125 * sin(sine / 38), -0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(20)), 0.1)
				WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
				WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
			end
		end		
	elseif anim == "ember" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0.25) * angles(rad(0), rad(0), rad(-90)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(75)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.5, -0.25) * angles(rad(0), rad(45), rad(20)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.75, 0.75, -0) * angles(rad(90), rad(0), rad(-90)) * angles(rad(0), rad(-75), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -0.75, -0.15) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-15), rad(-20), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1, -0.75, -0) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(50), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -1) * angles(rad(-60), rad(-20), rad(-30)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(40), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25 , 0.75, 0) * angles(rad(100), rad(60), rad(-0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.5, 0) * angles(rad(55), rad(0), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -0.5, -1) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-30), rad(30), rad(-30)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-0.85, -1.25, 0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(20), rad(30), rad(60)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 3 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0.25) * angles(rad(0), rad(0), rad(-30)), 0.1)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(30), rad(0), rad(0)), 0.1)
			rs.C0 = rs.C0:Lerp(cframe(1.25 , 0.425, 0.45) * angles(rad(0), rad(-30), rad(0)) * angles(rad(90), rad(-0), rad(45)) * rsC0, 0.1)
			ls.C0 = ls.C0:Lerp(cframe(-0.75, 0.25, -0.75) * angles(rad(90), rad(0), rad(60)) * angles(rad(-0), rad(30), rad(0)) * lsC0, 0.1)
			rh.C0 = rh.C0:Lerp(cframe(1 , -0.5, -0.75) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-0), rad(0)), 0.1)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -0.75, -0.45) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(30), rad(30)), 0.1)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.5, 1.25) *  angles(rad(-60), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 4 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -1) * angles(rad(-90), rad(-60), rad(125)), 0.1)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(45), rad(0), rad(0)), 0.1)
			rs.C0 = rs.C0:Lerp(cframe(0.25, 0, -0.75) * angles(rad(90), rad(30), rad(-60)) * angles(rad(30), rad(-10), rad(-0)) * rsC0, 0.1)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 1, 0.25) * angles(rad(90), rad(-90), rad(0)) * angles(rad(30), rad(0), rad(30)) * lsC0, 0.1)
			rh.C0 = rh.C0:Lerp(cframe(1 , -0.45, -1.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-0), rad(90)) * angles(rad(25), rad(20), rad(-0)), 0.1)
			lh.C0 = lh.C0:Lerp(cframe(-0.5, -1, 0.5) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(-90)) * angles(rad(-90), rad(30), rad(-0)), 0.1)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		end
	elseif anim == "fireball" then
		if not sword then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-0, 0) * angles(rad(0), rad(0), rad(-45)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(15), rad(10), rad(45)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(0.75, 0.45, -0.75) * angles(rad(0), rad(135), rad(90)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-0.875, 0.75, -0.45) * angles(rad(0), rad(-135), rad(-90)) * angles(rad(15), rad(0), rad(15)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-10), rad(-25), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, 0 ) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-20), rad(30), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		else
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-60)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(60)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25 , 0.45, 0) * angles(rad(0), rad(15), rad(20)) * angles(rad(0), rad(-0), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.4, 0.65, -0.4) * angles(rad(90), rad(-90), rad(0)) * angles(rad(-60), rad(-0), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-30), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, 0 ) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(20), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		end		
	elseif anim == "yoma" then
		if not sword then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(10), rad(0), rad(30)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(20), rad(0), rad(-30)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.5, 0) * angles(rad(125), rad(0), rad(30)) * angles(rad(10), rad(-0), rad(-15)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 0.65, 0.5) * angles(rad(90), rad(0), rad(-120)) * angles(rad(-45), rad(-75), rad(-45)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(0, -1.25, 0.75) *  angles(rad(-10), rad(90), rad(0)) * angles(rad(-50), rad(-160), rad(-60)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-0.45, -0.75, -1) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(-45), rad(-90)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		else
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(10), rad(0), rad(-30)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(20), rad(0), rad(30)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25, 0.65, 0.5) * angles(rad(90), rad(0), rad(120)) * angles(rad(-45), rad(75), rad(45)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5 , 0.5, 0) * angles(rad(125), rad(0), rad(-30)) * angles(rad(10), rad(-0), rad(15)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(0.45, -0.75, -1) *  angles(rad(0), rad(90), rad(0)) * angles(rad(0), rad(45), rad(90)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-0, -1.25, 0.75) *  angles(rad(-10), rad(-90), rad(0)) * angles(rad(-50), rad(160), rad(60)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		end	
	elseif anim == "comet" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0.15) * angles(rad(-20), rad(0), rad(0)), 0.1)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-55), rad(0), rad(0)), 0.1)
			rs.C0 = rs.C0:Lerp(cframe(1.25, 1.45, -0.5) * angles(rad(165), rad(30), rad(65)) * angles(rad(10), rad(-60), rad(-75)) * rsC0, 0.1)
			ls.C0 = ls.C0:Lerp(cframe(-0.75, 2, -0.5) * angles(rad(150), rad(15), rad(90)) * lsC0, 0.1)
			rh.C0 = rh.C0:Lerp(cframe(1 , -0.925, -0.15) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-7.5), rad(-0), rad(-20)), 0.1)
			lh.C0 = lh.C0:Lerp(cframe(-1.1, -1, -0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(20)), 0.1)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -1.75) * angles(rad(110), rad(0), rad(0)), 0.115)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(25), rad(0), rad(-0)), 0.115)
			rs.C0 = rs.C0:Lerp(cframe(1.5, 0.5, 0.5) * angles(rad(0), rad(-80), rad(0)) * angles(rad(75), rad(-0), rad(0)) * rsC0, 0.115)
			ls.C0 = ls.C0:Lerp(cframe(-1.5 , 0.5, 0) * angles(rad(45), rad(0), rad(-25)) * lsC0, 0.115)
			rh.C0 = rh.C0:Lerp(cframe(1, -0.25, -0.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(0), rad(0), rad(30)), 0.115)
			lh.C0 = lh.C0:Lerp(cframe(-1, 0.25, -1) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-0), rad(15), rad(15)), 0.115)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 3 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0) * angles(rad(15), rad(-0), rad(-15)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(15), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.15, 0.75, 0.15) * angles(rad(30), rad(15), rad(90)) * angles(rad(-30), rad(0), rad(-0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25 , 0.5, 0.5) * angles(rad(90), rad(0), rad(-130)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1.075, 0.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-25), rad(-15)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -0.75, -1.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-0), rad(-0), rad(60)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		end
	elseif anim == "ashiru" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0.25) * angles(rad(25), rad(-0), rad(-0)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25 , 0.75, -0.25) * angles(rad(0), rad(45), rad(30)) * angles(rad(0), rad(0), rad(30)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.5, 0) * angles(rad(60), rad(0), rad(-30)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1, -0.75, -0.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(0), rad(-20), rad(-0)) * angles(rad(-10), rad(-0), rad(30)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -0.5, -0.65) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(10), rad(-25)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(25), rad(0), rad(-0)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-15), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1 , 0.75, -1) * angles(rad(0), rad(90), rad(115)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1, 0.75, -1) * angles(rad(0), rad(-90), rad(-115)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, -0.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-0), rad(-65)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -0.75, -0.75) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(15)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		end
	elseif anim == "ashiruc" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(25), rad(105)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(30), rad(0), rad(-10)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(0.88, 0.25, -0.5) * angles(rad(45), rad(-30), rad(-60)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5 , 0.5, 0) * angles(rad(60), rad(0), rad(-30)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-20), rad(0), rad(-15)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, 0 ) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-0), rad(-0), rad(-25)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-0.125, -0.15) * angles(rad(30), rad(0), rad(15)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-20), rad(0), rad(-10)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.5, 0) * angles(rad(0), rad(-90), rad(-120)) * angles(rad(60), rad(0), rad(-30)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25 , 0.25, 0.5) * angles(rad(-20), rad(45), rad(40)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(0.5, -1.15, 0.5) *  angles(rad(10), rad(90), rad(0)) * angles(rad(-0), rad(-90), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-0.75 , -0.25, -1) *  angles(rad(30), rad(-90), rad(0)) * angles(rad(0), rad(-60), rad(10)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 3 then 
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(-15), rad(0), rad(-0)), 0.2)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.2)
			rs.C0 = rs.C0:Lerp(cframe(1.25, 0.75, -0.15) * angles(rad(55), rad(0), rad(-0)) * angles(rad(-0), rad(90), rad(0)) * rsC0, 0.2)
			ls.C0 = ls.C0:Lerp(cframe(-1.5 , 0.5, 0) * angles(rad(150), rad(0), rad(-0)) * lsC0, 0.2)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0 ) *  angles(rad(-10), rad(90), rad(0)) * angles(rad(0), rad(-25), rad(-5)), 0.2)
			lh.C0 = lh.C0:Lerp(cframe(-0.5 , -0.75, 0.75) *  angles(rad(-20), rad(-90), rad(0)) * angles(rad(-0), rad(100), rad(0)), 0.2)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 4 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(-25), rad(5), rad(-45)), 0.45)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(30)), 0.45)
			rs.C0 = rs.C0:Lerp(cframe(1.25, 0.5, 0.15) * angles(rad(75), rad(0), rad(-40)) * angles(rad(-0), rad(-75), rad(140)) * angles(rad(75), rad(-45), rad(-0)) * rsC0, 0.45)
			ls.C0 = ls.C0:Lerp(cframe(-1.25 , 1, 0.25) * angles(rad(0), rad(30), rad(-0))  * angles(rad(-25), rad(0), rad(-90)) * lsC0, 0.45)
			rh.C0 = rh.C0:Lerp(cframe(0.5, -0.75, 0.6) *  angles(rad(-15), rad(90), rad(0)) * angles(rad(0), rad(-75), rad(10)) * angles(rad(-10), rad(-15), rad(0)), 0.45)
			lh.C0 = lh.C0:Lerp(cframe(-1.5, -0.75, -0.75) * angles(rad(0), rad(-90), rad(0)) * angles(rad(-0), rad(45), rad(-110)), 0.45)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 5 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(45)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(15), rad(0), rad(-30)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1 , -0.25, -0.75) * angles(rad(30), rad(75), rad(0)) * angles(rad(50), rad(-60), rad(-20)) * angles(rad(30), rad(-15), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.25, 0) * angles(rad(55), rad(0), rad(30)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(-0.5, -1, 0.5) *  angles(rad(-20), rad(90), rad(0)) * angles(rad(-0), rad(-140), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-0.25, -1, -1.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(-45), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 6 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-0.25, -0.75) * angles(rad(0), rad(0), rad(-100)), 0.45)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(45)), 0.45)
			rs.C0 = rs.C0:Lerp(cframe(1.15, 0.25, -0.25) * angles(rad(0), rad(-45), rad(-30)) * angles(rad(150), rad(-45), rad(90)) * angles(rad(-30), rad(20), rad(10)) * angles(rad(0), rad(-0), rad(-45)) * rsC0, 0.45)
			ls.C0 = ls.C0:Lerp(cframe(-1.75, 1, -0.5) * angles(rad(0), rad(-90), rad(0)) * angles(rad(90), rad(-75), rad(-45)) * lsC0, 0.45)
			rh.C0 = rh.C0:Lerp(cframe(1 , -0.15, -0.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-30), rad(-0), rad(0)), 0.45)
			lh.C0 = lh.C0:Lerp(cframe(-1, -0.25, -0.15) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(45), rad(0)), 0.45)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 7 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0.15) * angles(rad(7.5), rad(-0), rad(180)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5, 0.75, 0) * angles(rad(40), rad(30), rad(65)) * angles(rad(10), rad(-60), rad(-45)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25 , 1.15, -0.75) * angles(rad(100), rad(-15), rad(-30)) * angles(rad(60), rad(30), rad(45)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -0.85, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-10), rad(0), rad(-10)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, -0.5) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 8 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0.15) * angles(rad(20), rad(-0), rad(180)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-10), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5, 1.45, 0.15) * angles(rad(165), rad(30), rad(65)) * angles(rad(10), rad(-60), rad(-70)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-0.5, 2, -0.75) * angles(rad(170), rad(35), rad(75)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, -0.15) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-10), rad(-20), rad(-30)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, -0.5) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(-10), rad(20)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, -0.45, 2.5) *  angles(rad(0), rad(180), rad(0)) * angles(rad(-120), rad(-0), rad(0)), 0.3)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		end
	elseif anim == "ashiruf" then	
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0.25) * angles(rad(10), rad(0), rad(-60)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1, 0.75, -0.75) * angles(rad(75), rad(30), rad(-30)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1, 0.5, -1) * angles(rad(90), rad(0), rad(45)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0.75) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-75), rad(-20)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -0.65, -0.45) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-10), rad(-30), rad(7.5)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 2 then	
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-0.75, 0) * angles(rad(30), rad(0), rad(180)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-20), rad(0), rad(-30)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.15, 1, -0.5) * angles(rad(0), rad(90), rad(90)) * angles(rad(30), rad(-0), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-0.45, 0.45, -0.75) * angles(rad(0), rad(180), rad(-90))* lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(0.25, -0.45, -1) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-90), rad(-0), rad(-15)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1.25, -0.15) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-10), rad(-15), rad(30)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 3 then	
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-1.5, -0.5) * angles(rad(30), rad(0), rad(120)), 0.75)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(-45)), 0.75)
			rs.C0 = rs.C0:Lerp(cframe(1.25 , 0.25, 0.75) * angles(rad(125), rad(0), rad(75)) * angles(rad(20), rad(75), rad(0)) * angles(rad(20), rad(-15), rad(-45)) * rsC0, 0.75)
			ls.C0 = ls.C0:Lerp(cframe(-1, 0, 0.45) * angles(rad(90), rad(0), rad(-20)) * lsC0, 0.75)
			rh.C0 = rh.C0:Lerp(cframe(1 , -0.275, -0.75) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-30), rad(-0), rad(0)) * angles(rad(-0), rad(-10), rad(-22.5)), 0.75)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, 0 ) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-10), rad(0), rad(15)), 0.75)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 4 then	
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(15), rad(0), rad(30)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(-30)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5, 0.5, 0) * angles(rad(60), rad(0), rad(25)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25 , 0.5, -0.75) * angles(rad(15), rad(-60), rad(-0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1, -0.75, -0.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(0), rad(0), rad(-15)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1, -1, 0 ) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(5), rad(25), rad(-15)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 5 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0.25) * angles(rad(10), rad(0), rad(-30)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25 , 0.5, -0.5) * angles(rad(45), rad(15), rad(-15)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.45, 0.25, -0.5) * angles(rad(45), rad(0), rad(15)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -0.75, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-30), rad(10)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-0.75, -0.65, -1.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-10), rad(-60), rad(-2.5)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		end
	elseif anim == "efball" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0.25) * angles(rad(-0), rad(0), rad(-75)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(20), rad(0), rad(25)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25 , -0.15, 0) * angles(rad(110), rad(-55), rad(15)) * angles(rad(20), rad(10), rad(20)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, -0.15, 0.15) * angles(rad(85), rad(25), rad(-10)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -0.75, -0.15) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-15), rad(-20), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1, -1, -0) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(30), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(10), rad(-0), rad(60)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(15), rad(0), rad(-30)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.45, -0) * angles(rad(0), rad(-60), rad(-0)) * angles(rad(100), rad(0), rad(-0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.3, 0.75, 0) * angles(rad(0), rad(-30), rad(-65)) * angles(rad(10), rad(20), rad(-15)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(-0.25, -1, 1) *  angles(rad(7.5), rad(90), rad(0)) * angles(rad(25), rad(-135), rad(20)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-0.25, -0.85, -1.25) *  angles(rad(10), rad(-90), rad(0)) * angles(rad(25), rad(-90), rad(20)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 3 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0.45) * angles(rad(20), rad(0), rad(45)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(15), rad(0), rad(-30)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1 , 0.25, -0.75) * angles(rad(30), rad(75), rad(50)) * angles(rad(50), rad(-90), rad(-20)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.25, 0) * angles(rad(50), rad(0), rad(30)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(-0.25, -0.75, 0.75) *  angles(rad(7.5), rad(90), rad(0)) * angles(rad(5), rad(-105), rad(10)) * angles(rad(-20), rad(-30), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-0.25, -0.5, -1.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(-45), rad(-20)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		end
	elseif anim == "guillotine" then	
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-0, -0.15) * angles(rad(12.5), rad(-0), rad(-15)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(-0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1, 0.75, 0.5) * angles(rad(30), rad(10), rad(100)) * angles(rad(-0), rad(20), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25 , 0, 0.5) * angles(rad(0), rad(90), rad(-0)) * angles(rad(60), rad(15), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(0.25, -0.75, -1.25) *  angles(rad(20), rad(90), rad(0)) * angles(rad(-0), rad(90), rad(15)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-0.5, -1, 1) *  angles(rad(-10), rad(-90), rad(0)) * angles(rad(-0), rad(75), rad(0)) , 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-0, -0.15) * angles(rad(45), rad(-0), rad(0)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(-0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1, 0.75, 0.5) * angles(rad(30), rad(10), rad(100)) * angles(rad(-0), rad(-30), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25 , -0.15, 0.25) * angles(rad(0), rad(90), rad(-0)) * angles(rad(60), rad(15), rad(30)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -0.3, -0.75) *  angles(rad(0), rad(90), rad(0)) * angles(rad(0), rad(0), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, 0 ) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-0), rad(-0), rad(25)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 3 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-0.25, -0) * angles(rad(0), rad(-0), rad(60)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(-40)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5, 1.25, 0) * angles(rad(-50), rad(-45), rad(90)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5 , 0.75, 0) * angles(rad(90), rad(-90), rad(-0)) * angles(rad(-45), rad(-0), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, -0.6) *  angles(rad(0), rad(90), rad(0)) * angles(rad(0), rad(15), rad(30)) * angles(rad(-15), rad(-0), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -0.75, 0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-0), rad(30), rad(0)) * angles(rad(-15), rad(-0), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 4 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-0.75, -0.5) * angles(rad(0), rad(-0), rad(135)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(30), rad(0), rad(-45)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(0.8, 0.25, -1) * angles(rad(0), rad(45), rad(0)) * angles(rad(50), rad(-0), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-0.75, 0.75, -1) * angles(rad(90), rad(0), rad(75)) * angles(rad(30), rad(-60), rad(30)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -0.5, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(0), rad(-45), rad(0)) * angles(rad(-45), rad(-0), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -0.6, -0.75) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-0), rad(15), rad(-10)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.65, 1.25) *  angles(rad(-45), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		end	
	elseif anim == "guillotineh" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-0, -0.75) * angles(rad(0), rad(-0), rad(145)), 0.65)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(20), rad(0), rad(35)), 0.65)
			rs.C0 = rs.C0:Lerp(cframe(1, 0.5, -0.5) * angles(rad(0), rad(45), rad(0)) * angles(rad(0), rad(-0), rad(60)) * rsC0, 0.65)
			ls.C0 = ls.C0:Lerp(cframe(-0.5, 0.5, -1.25) * angles(rad(90), rad(0), rad(-75)) * angles(rad(30), rad(-60), rad(30)) * angles(rad(-30), rad(-0), rad(0)) * lsC0, 0.65)
			rh.C0 = rh.C0:Lerp(cframe(1 , -0.25, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(0), rad(-45), rad(0)) * angles(rad(-45), rad(-0), rad(0)), 0.65)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -0.25, -0.75) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-0), rad(55), rad(7.5)), 0.65)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-0.5, -0.75) * angles(rad(-0), rad(-30), rad(-90)), 0.65)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.65)
			rs.C0 = rs.C0:Lerp(cframe(1.35, 0.75, 0.25) * angles(rad(-65), rad(-20), rad(35)) * angles(rad(30), rad(-30), rad(15)) * rsC0, 0.65)
			ls.C0 = ls.C0:Lerp(cframe(-1.5 , 0.5, 0.5) * angles(rad(115), rad(0), rad(-45)) * angles(rad(-0), rad(-75), rad(40)) * lsC0, 0.65)
			rh.C0 = rh.C0:Lerp(cframe(1.3, -0.45, -0.75) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(0), rad(-15)) * angles(rad(20), rad(-15), rad(0)), 0.65)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -0.5, -1) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-15), rad(-30), rad(30)), 0.65)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 3 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0.15) * angles(rad(10), rad(-15), rad(30)), 0.65)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.65)
			rs.C0 = rs.C0:Lerp(cframe(1.5, 0.5, 0) * angles(rad(45), rad(-20), rad(0)) * rsC0, 0.65)
			ls.C0 = ls.C0:Lerp(cframe(-1.5 , 0.5, 0) * angles(rad(90), rad(-90), rad(-30))* angles(rad(-30), rad(-0), rad(0)) * lsC0, 0.65)
			rh.C0 = rh.C0:Lerp(cframe(0.75, -0.85, 0.75) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-20), rad(-45), rad(-45)), 0.65)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1.3, -0.5) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(15), rad(-30), rad(-45)) * angles(rad(-0), rad(-20), rad(0)), 0.65)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 4 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0) * angles(rad(0), rad(0), rad(60)), 0.25)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(-30)), 0.25)
			rs.C0 = rs.C0:Lerp(cframe(0.45, 0.75, -0.75) * angles(rad(90), rad(90), rad(0)) * angles(rad(75), rad(-0), rad(0))* angles(rad(30), rad(-0), rad(15)) * rsC0, 0.25)
			ls.C0 = ls.C0:Lerp(cframe(-1, 0.25, -0.3) * angles(rad(90), rad(-90), rad(0)) * angles(rad(40), rad(-0), rad(0)) * lsC0, 0.25)
			rh.C0 = rh.C0:Lerp(cframe(0.25, -1.25, 1) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-45), rad(-45)) * angles(rad(10), rad(-0), rad(0)), 0.25)
			lh.C0 = lh.C0:Lerp(cframe(-0.5, -1.15, -1) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(15), rad(-45), rad(-25)) * angles(rad(-0), rad(-20), rad(0)), 0.25)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		end		
	elseif anim == "giga" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0.75, -0.45) * angles(rad(-10), rad(-10), rad(45)), 0.1)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-10), rad(0), rad(-30)), 0.1)
			rs.C0 = rs.C0:Lerp(cframe(0.75, 0.5, 0.75) * angles(rad(0), rad(0), rad(90)) * angles(rad(45), rad(0), rad(-15)) * rsC0, 0.1)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.5, 0.5) * angles(rad(30), rad(0), rad(-90)) * lsC0, 0.1)
			rh.C0 = rh.C0:Lerp(cframe(1.45, -0.5, -0.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(25), rad(-20)) * angles(rad(-20), rad(-0), rad(0)), 0.1)
			lh.C0 = lh.C0:Lerp(cframe(-1.25, -0.5, 0.5) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(15), rad(30)) * angles(rad(-15), rad(-0), rad(20)), 0.1)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-0.5, -0.15) * angles(rad(5), rad(-10), rad(-125)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(90)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.15, 0.5, 0.45) * angles(rad(0), rad(0), rad(90)) * angles(rad(75), rad(0), rad(-15)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.75, 0.75, 0.45) * angles(rad(0), rad(45), rad(-90)) * angles(rad(10), rad(10), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(-0.5, -0.75, -1.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(115), rad(0)) * angles(rad(-10), rad(0), rad(30)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(1, -1, 0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(125), rad(30)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		end
	elseif anim == "gigas" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0.5) * angles(rad(50), rad(10), rad(-35)), 0.1)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-30), rad(0), rad(20)), 0.1)
			rs.C0 = rs.C0:Lerp(cframe(1.5, 0.5, 0) * angles(rad(90), rad(0), rad(90)) * angles(rad(35), rad(45), rad(-45)) * rsC0, 0.1)
			ls.C0 = ls.C0:Lerp(cframe(-1.5 , 0.25, 0.75) * angles(rad(0), rad(30), rad(-0)) * angles(rad(115), rad(-0), rad(0)) * lsC0, 0.1)
			rh.C0 = rh.C0:Lerp(cframe(0.75, -1.5, -1) *  angles(rad(0), rad(90), rad(0)) * angles(rad(10), rad(35), rad(0)) * angles(rad(0), rad(-0), rad(-15)), 0.1)
			lh.C0 = lh.C0:Lerp(cframe(-1, 0.35, -0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-0), rad(35), rad(-30)) * angles(rad(-10), rad(-0), rad(-10)), 0.1)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0, -0.25, -0.15) * angles(rad(0), rad(15), rad(-115)), 0.75)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.75)
			rs.C0 = rs.C0:Lerp(cframe(1.25, 0.25, 0.5) * angles(rad(0), rad(-60), rad(0)) * angles(rad(55), rad(75), rad(0)) * rsC0, 0.75)
			ls.C0 = ls.C0:Lerp(cframe(-2, 0.25, 0.15) * angles(rad(25), rad(-60), rad(-115)) * angles(rad(0), rad(0), rad(-15)) * lsC0, 0.75)
			rh.C0 = rh.C0:Lerp(cframe(1 , -0.75, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-35), rad(0), rad(-15)), 0.75)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -0.875, 1) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-0), rad(60), rad(30)) * angles(rad(-10), rad(-0), rad(-15)), 0.75)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 3 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-0.5, -0.15) * angles(rad(20), rad(0), rad(-30)), 0.2)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(30)), 0.2)
			rs.C0 = rs.C0:Lerp(cframe(1, 0.5, 0.75) * angles(rad(15), rad(-15), rad(50)) * angles(rad(75), rad(30), rad(-0)) * rsC0, 0.2)
			ls.C0 = ls.C0:Lerp(cframe(-1.4 , 0, -0.45) * angles(rad(45), rad(0), rad(0)) * angles(rad(75), rad(-0), rad(30)) * lsC0, 0.2)
			rh.C0 = rh.C0:Lerp(cframe(0.5 , -1, 0.5) *  angles(rad(-10), rad(90), rad(0)) * angles(rad(-15), rad(-30), rad(15)), 0.2)
			lh.C0 = lh.C0:Lerp(cframe(-1, -0.75, 0.25) *  angles(rad(10), rad(-90), rad(0)) * angles(rad(-0), rad(75), rad(-15)), 0.2)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 4 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-0.75, -0.25) * angles(rad(10), rad(20), rad(60)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(-20)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5, 0.75, -0.5) * angles(rad(15), rad(-45), rad(60)) * angles(rad(75), rad(25), rad(-0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.4 , 0.5, -0.45) * angles(rad(45), rad(0), rad(0)) * angles(rad(25), rad(-0), rad(30)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(0.75, -1.5, 0.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(30), rad(-50), rad(-20)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1, -0.5, -0.75) *  angles(rad(10), rad(-90), rad(0)) * angles(rad(-0), rad(-0), rad(-10)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		end
	elseif anim == "judas" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-90)), 0.1)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(25), rad(-25), rad(-15)), 0.1)
			rs.C0 = rs.C0:Lerp(cframe(1.25, 0.25, 0) * angles(rad(-30), rad(-30), rad(-30)) * rsC0, 0.1)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 2, -0.45) * angles(rad(180), rad(60), rad(0)) * lsC0, 0.1)
			rh.C0 = rh.C0:Lerp(cframe(1, -1, -0) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-5), rad(-30), rad(0)), 0.1)
			lh.C0 = lh.C0:Lerp(cframe(-1, -1, -0) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-5), rad(25), rad(0)), 0.1)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-90)), 0.1)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(25), rad(-25), rad(-15)), 0.1)
			rs.C0 = rs.C0:Lerp(cframe(1.25, 0.25, 0) * angles(rad(-30), rad(-30), rad(-30)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 1, -0.15) * angles(rad(180), rad(60), rad(0)) * angles(rad(0), rad(0), rad(10)) * lsC0, 0.1)
			rh.C0 = rh.C0:Lerp(cframe(1, -1, -0) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-5), rad(-30), rad(0)), 0.1)
			lh.C0 = lh.C0:Lerp(cframe(-1, -1, -0) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-5), rad(25), rad(0)), 0.1)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		end
	elseif anim == "gigar" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -1.25) * angles(rad(90), rad(0), rad(0)), 0.115)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(25), rad(0), rad(-0)), 0.115)
			rs.C0 = rs.C0:Lerp(cframe(1.5, 0.5, 0.5) * angles(rad(0), rad(-80), rad(0)) * angles(rad(75), rad(-0), rad(30)) * rsC0, 0.115)
			ls.C0 = ls.C0:Lerp(cframe(-1.5 , 0.5, 0) * angles(rad(90), rad(0), rad(-25)) * lsC0, 0.115)
			rh.C0 = rh.C0:Lerp(cframe(1, 0.25, -0.15) *  angles(rad(0), rad(90), rad(0)) * angles(rad(0), rad(0), rad(60)), 0.115)
			lh.C0 = lh.C0:Lerp(cframe(-1, -0.5, -0.75) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-0), rad(0), rad(-20)), 0.115)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0.5) * angles(rad(20), rad(-0), rad(30)), 0.2)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(-30)), 0.2)
			rs.C0 = rs.C0:Lerp(cframe(1.5, 0.5, 0) * angles(rad(90), rad(0), rad(30)) * angles(rad(-30), rad(0), rad(0)) * rsC0, 0.2)
			ls.C0 = ls.C0:Lerp(cframe(-1.5 , 0.5, 0) * angles(rad(60), rad(0), rad(0)) * lsC0, 0.2)
			rh.C0 = rh.C0:Lerp(cframe(1, -0.25, -0.45) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-10), rad(0), rad(15)) * angles(rad(0), rad(-30), rad(0)), 0.2)
			lh.C0 = lh.C0:Lerp(cframe(-1, -0.5, -0.75) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-0), rad(0), rad(-20)) * angles(rad(-20), rad(0), rad(0)), 0.2)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 3 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0.15) * angles(rad(-20), rad(0), rad(0)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-55), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25, 1.45, -0.5) * angles(rad(180), rad(30), rad(65)) * angles(rad(10), rad(-60), rad(-75)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-0.75, 2, -0.45) * angles(rad(165), rad(15), rad(90)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, -0.45) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-7.5), rad(-0), rad(-20)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1, -1, 0.15) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(20)) * angles(rad(-15), rad(45), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 4 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0.125) * angles(rad(-5), rad(0), rad(0)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25 , 0.5, -0.5) * angles(rad(115), rad(0), rad(-0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 0.5, -0.5) * angles(rad(115), rad(0), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, -0.45) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-7.5), rad(-0), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1, -1, 0.15) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-15), rad(45), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		end
	elseif anim == "mturn" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0.15) * angles(rad(0), rad(-10), rad(-135)), 0.1)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(45)) * angles(rad(45), rad(0), rad(-0)), 0.1)
			rs.C0 = rs.C0:Lerp(cframe(1.45, 0.5, -0.3) * angles(rad(0), rad(30), rad(20)) * rsC0, 0.1)
			ls.C0 = ls.C0:Lerp(cframe(-0.95, 0.15, -0.45) * angles(rad(0), rad(-150), rad(-95))*  angles(rad(-15), rad(0), rad(0)) * lsC0, 0.1)
			rh.C0 = rh.C0:Lerp(cframe(0.45, -0.875, -1) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(45), rad(0)) * angles(rad(10), rad(-0), rad(10)), 0.1)
			lh.C0 = lh.C0:Lerp(cframe(-0.45, -1, 1) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(45), rad(0)) * angles(rad(10), rad(-0), rad(10)), 0.1)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0.1) * angles(rad(15), rad(10), rad(-105)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(25)) * angles(rad(15), rad(0), rad(-0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.3, 0.5, 0.15) * angles(rad(0), rad(-30), rad(20)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.75, 1.25, -0.45) * angles(rad(180), rad(15), rad(0)) * angles(rad(-15), rad(20), rad(-20)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1,-1,0) *  angles(rad(0), rad(90), rad(0)) *  angles(rad(-15), rad(0), rad(-15)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1,-0.75,-0.25) *  angles(rad(0), rad(-90), rad(0)) *  angles(rad(-20), rad(15), rad(10)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		end
	elseif anim == "toko" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-0.25, -0.35) * angles(rad(5), rad(-25), rad(-75)), 0.1)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(15), rad(0), rad(60)), 0.1)
			rs.C0 = rs.C0:Lerp(cframe(1.25 , 0.5, -0.5) * angles(rad(30), rad(30), rad(-0)) * rsC0, 0.1)
			ls.C0 = ls.C0:Lerp(cframe(-1.55, 0.75, -0) * angles(rad(0), rad(0), rad(-75)) * angles(rad(15), rad(-0), rad(0)) * lsC0, 0.1)
			rh.C0 = rh.C0:Lerp(cframe(1.1, -0.5, -0.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-5), rad(-15), rad(20)), 0.1)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -0.5, -0.65) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(10), rad(-10)), 0.1)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-0.5, -0.75) * angles(rad(5), rad(-30), rad(-110)), 0.1)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(15), rad(0), rad(45)), 0.1)
			rs.C0 = rs.C0:Lerp(cframe(1.25 , 0.25, -0.5) * angles(rad(30), rad(-15), rad(-0)) * angles(rad(30), rad(-20), rad(-10)) * rsC0, 0.1)
			ls.C0 = ls.C0:Lerp(cframe(-1.75, -0.25, 0) * angles(rad(0), rad(-45), rad(-20)) * angles(rad(0), rad(60), rad(-15)) * lsC0, 0.1)
			rh.C0 = rh.C0:Lerp(cframe(1, -0, -1) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-20), rad(20), rad(20)), 0.1)
			lh.C0 = lh.C0:Lerp(cframe(-1 , 0.35, -0.5) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(40), rad(-10)), 0.1)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		end
	elseif anim == "shapeshift" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(135)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(-90)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(0.45, 1, -1.15) * angles(rad(150), rad(0), rad(-45)) * angles(rad(0), rad(-45), rad(-15)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.15, 0.45, 0.45) * angles(rad(0), rad(-15), rad(0)) * angles(rad(35), rad(-0), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0.45) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-25), rad(-60), rad(-15)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, -0.75) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-0), rad(-0), rad(-0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(90)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(-75)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5, 0.65, -0) * angles(rad(90), rad(90), rad(0)) * angles(rad(-90), rad(-0), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.15, 0.45, 0.45) * angles(rad(0), rad(-15), rad(0)) * angles(rad(35), rad(-0), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, -0.15) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-10), rad(-30), rad(-0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, -0.15) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-10), rad(-15), rad(-0)) * angles(rad(0), rad(30), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 3 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-0, 0) * angles(rad(0), rad(0), rad(135)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(20), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(0.6, 0.15, -1.15) * angles(rad(0), rad(180), rad(75)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.15, 0.45, 0.45) * angles(rad(0), rad(-15), rad(0)) * angles(rad(35), rad(-0), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0.45) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-25), rad(-45), rad(-15)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, -0.75) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-10), rad(-15), rad(-10)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 4 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-0, 0) * angles(rad(0), rad(0), rad(120)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(30)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5, 1.5, 0.45) * angles(rad(0), rad(60), rad(0)) * angles(rad(-0), rad(0), rad(165)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.15, 0.45, 0.45) * angles(rad(0), rad(-15), rad(0)) * angles(rad(35), rad(-0), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0.45) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-25), rad(-45), rad(-15)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, -0.75) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-10), rad(-15), rad(-10)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(0), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 5 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-0, 0) * angles(rad(0), rad(0), rad(120)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(30)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.15, 0.45, 1.45) * angles(rad(0), rad(60), rad(0)) * angles(rad(-0), rad(30), rad(165)) * angles(rad(-90), rad(-0), rad(0)) * angles(rad(-0), rad(60), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.15, 0.45, 0.45) * angles(rad(0), rad(-15), rad(0)) * angles(rad(35), rad(-0), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0.45) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-25), rad(-45), rad(-15)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, -0.75) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-10), rad(-15), rad(-10)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(0), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 6 then	
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-0, 0) * angles(rad(0), rad(0), rad(120)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(30)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1, 0.5, 1.45) * angles(rad(0), rad(120), rad(0)) * angles(rad(-0), rad(30), rad(135)) * angles(rad(-210), rad(-0), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.15, 0.45, 0.45) * angles(rad(0), rad(-15), rad(0)) * angles(rad(35), rad(-0), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0.45) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-25), rad(-45), rad(-15)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, -0.75) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-10), rad(-15), rad(-10)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(0), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 7 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-0, 0) * angles(rad(0), rad(0), rad(135)), 0.75)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(20), rad(0), rad(0)), 0.75)
			rs.C0 = rs.C0:Lerp(cframe(0.6, 0.15, -1.15) * angles(rad(0), rad(180), rad(75)) * rsC0, 0.75)
			ls.C0 = ls.C0:Lerp(cframe(-1.15, 0.45, 0.45) * angles(rad(0), rad(-15), rad(0)) * angles(rad(35), rad(-0), rad(0)) * lsC0, 0.75)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0.45) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-25), rad(-45), rad(-15)), 0.75)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, -0.75) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-10), rad(-15), rad(-10)), 0.75)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 8 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-0, 0) * angles(rad(0), rad(0), rad(135)), 0.45)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(20), rad(0), rad(0)), 0.45)
			rs.C0 = rs.C0:Lerp(cframe(1.35, 0.75, -0.75) * angles(rad(0), rad(180), rad(75)) * angles(rad(-90), rad(-0), rad(0)) * rsC0, 0.45)
			ls.C0 = ls.C0:Lerp(cframe(-1.15, 0.45, 0.45) * angles(rad(0), rad(-15), rad(0)) * angles(rad(35), rad(-0), rad(0)) * lsC0, 0.45)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0.45) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-25), rad(-45), rad(-15)), 0.45)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, -0.75) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-10), rad(-15), rad(-10)), 0.45)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(0), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		end
	elseif anim == "blazing" then
		rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0.75) * angles(rad(20), rad(0), rad(0)), 0.3)
		nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, -0.25, -0.05) * angles(rad(45), rad(0), rad(-0)), 0.3)
		rs.C0 = rs.C0:Lerp(cframe(1, 0.75, 0.25) * angles(rad(20), rad(-30), rad(60)) * angles(rad(0), rad(-30), rad(0)) * rsC0, 0.3)
		ls.C0 = ls.C0:Lerp(cframe(-1.5 , 0.15, -0) * angles(rad(105), rad(0), rad(-0)) * lsC0, 0.3)
		rh.C0 = rh.C0:Lerp(cframe(0.5, -0.9, -1.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(0), rad(30), rad(-60)), 0.3)
		lh.C0 = lh.C0:Lerp(cframe(-1, -0.5, 0.5) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(10), rad(75), rad(-10)), 0.3)
		WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
		WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
	elseif anim == "ryuga" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0.45) * angles(rad(0), rad(0), rad(-115)), 0.1)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, -0.15, 0) * angles(rad(25), rad(-10), rad(10)), 0.1)
			rs.C0 = rs.C0:Lerp(cframe(1.25 , 0.5, 0.45) * angles(rad(0), rad(-30), rad(-0)) * rsC0, 0.1)
			ls.C0 = ls.C0:Lerp(cframe(-1, 0.25, -0.75) * angles(rad(90), rad(0), rad(75)) *  angles(rad(45), rad(0), rad(0)) * lsC0, 0.1)
			rh.C0 = rh.C0:Lerp(cframe(1,-0.75,-0.8) *  angles(rad(0), rad(90), rad(0)) *  angles(rad(0), rad(5), rad(-25)), 0.1)
			lh.C0 = lh.C0:Lerp(cframe(-0.75,-0.5,-0.25) *  angles(rad(0), rad(-90), rad(0)) *  angles(rad(-30), rad(35), rad(5)), 0.1)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0.45) * angles(rad(0), rad(0), rad(-115)), 0.1)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, -0.15, 0) * angles(rad(25), rad(-10), rad(10)), 0.1)
			rs.C0 = rs.C0:Lerp(cframe(1.25 , 0.5, 0.45) * angles(rad(0), rad(-30), rad(-0)) * rsC0, 0.1)
			ls.C0 = ls.C0:Lerp(cframe(-0.45, 0.5, -1.5) * angles(rad(90), rad(0), rad(75)) *  angles(rad(15), rad(0), rad(0)) * lsC0, 1)
			rh.C0 = rh.C0:Lerp(cframe(1,-0.75,-0.8) *  angles(rad(0), rad(90), rad(0)) *  angles(rad(0), rad(5), rad(-25)), 0.1)
			lh.C0 = lh.C0:Lerp(cframe(-0.75,-0.5,-0.25) *  angles(rad(0), rad(-90), rad(0)) *  angles(rad(-30), rad(35), rad(5)), 0.1)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		end	
	elseif anim == "shizumi" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-135)), 0.1)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(90)), 0.1)
			rs.C0 = rs.C0:Lerp(cframe(1.15, 0.45, 0.45) * angles(rad(0), rad(15), rad(0)) * angles(rad(35), rad(-0), rad(0)) * rsC0, 0.1)
			ls.C0 = ls.C0:Lerp(cframe(-0.45, 1, -1.15) * angles(rad(150), rad(0), rad(45)) * angles(rad(0), rad(45), rad(15)) * lsC0, 0.1)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, -0.75) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-0), rad(-0)), 0.1)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, 0.45) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-25), rad(60), rad(15)), 0.1)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-90)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(75)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5, 0.6, -0.25) * angles(rad(0), rad(15), rad(30)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.65, -0) * angles(rad(90), rad(-90), rad(0)) * angles(rad(-90), rad(-0), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, -0.15) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-10), rad(15), rad(-0)) * angles(rad(0), rad(-30), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, -0.15) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-10), rad(30), rad(-0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
			WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
		end	
	elseif anim == "overdrive" then
		rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,1, 0) * angles(rad(0), rad(0), rad(50)), 0.1)
		nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(-45)), 0.1)
		rs.C0 = rs.C0:Lerp(cframe(1, 0.5, -0.6) * angles(rad(160), rad(25), rad(-75)) * rsC0, 0.1)
		ls.C0 = ls.C0:Lerp(cframe(-0.75, 0.75, -0.5) * angles(rad(20), rad(-160), rad(-80)) * lsC0, 0.1)
		rh.C0 = rh.C0:Lerp(cframe(1 , -1, -0.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(0), rad(-15), rad(-25)), 0.1)
		lh.C0 = lh.C0:Lerp(cframe(-0.9, -1, -0.75) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-0), rad(-45), rad(0)), 0.1)
		WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
		WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
	elseif anim == "reference" then
		rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-0)), 0.3)
		nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
		rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.5, 0) * angles(rad(0), rad(0), rad(-0)) * rsC0, 0.3)
		ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.5, 0) * angles(rad(0), rad(0), rad(0)) * lsC0, 0.3)
		rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-0), rad(0)), 0.3)
		lh.C0 = lh.C0:Lerp(cframe(-1 , -1, 0 ) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(0)), 0.3)
		WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0, 0.8, 2) *  angles(rad(0), rad(180), rad(0)), 1)
		WeaponSheathWeld.C0 = WeaponSheathWeld.C0:Lerp(cframe(0.85, -1.15, 1.75) *  angles(rad(-25), rad(180), rad(180)), 1)
	end
	--hit floor stuff
	local tv = (root.Velocity * vect3(1, 0, 1)).magnitude
	local tvv = root.Velocity.y
	local hf = raycast(root.Position, (cframe(root.Position, root.Position + vect3(0, -1, 0))).lookVector, 4+hum.HipHeight, char)
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
		elseif tv > 1 and tv < 20 and hf ~= nil and hum.Sit == false then
			if attack == false then
				anim = "walk"
			end
		elseif tv > 20 and hf ~= nil and hum.Sit == false then
			if attack == false then
				anim = "run"
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
end)
if mptext ~= nil then
	mptext.Text = "MP: "..mp
	local exp2 = mp/1000 
	mptext.Parent.Size = udim2(exp2,0,1,0)
end
if toggle == true then
	sword = true
	Weapon.Transparency = 0
	FWeapon.Transparency = 1
else
	sword = false
	Weapon.Transparency = 1
	FWeapon.Transparency = 0
end
hair2.Transparency = 1
hair0.Transparency = 0
emote("Intro")
--[[
TRIVIA:

Makoto Nakagawa is heavily based off Makoto Naegi from Danganronpa (namesake included), Yu Narukami 
and Yosuke Hanamura from Persona 4, Kirito (Kazuto Kirigaya) from Sword Art Online, Astolfo from the Fate series,
and various typical anime guys who dress up as girls. (Theres a ton of them out there)

Moveset is a highly modified mixture of Kyo Kusanagi from KOF (I love this fighting game franchise), 
Sol Badguy from Guilty Gear (I love this franchise too), as well as many others.

All of the finishers are based from two Daimonmau M.U.G.E.N. characters, Sol Engrenado (Dark Order Sol included) and Ragna Mau.

Most of the move namesakes come from various media and resources.

Heavily inspired by two Black Magic classes, Ravager and Berzerker.

Also, big thank you to whatto / pointypease668 for uploading Sol Badguy's voiceclips! (it's for Lua Sandbox only though) You're the best!

]]