--NOTE: these script lines are made for studio testing only
require(11007181783)()
local owner = game:GetService("Players"):GetPlayerFromCharacter(script.Parent)
local NLS = require(13482937602)
--NOTE: up here these are script lines for studio testing only

print([[
--Tomomi Kawasaki--
By Hiko Zukusanagi / IkariGames                            
--------------------------------
(BACKSTORY)
--------------------------------
Tomomi is an upbeat and energetic female student of Mirusabi High School. 
She loves to talk, though she almost always ends up going off on weird adventures and tangents. 
She forgets things sometimes, so she tries to write memos to help her remember.

Before she was controlled by a unknown spirit called Mawagurena, 
Tomomi is very quirky as she loves to do all sort of weird and bizzare things 
and has a habit of breaking the fourth wall. When she gets upset, Tomomi says 
things twice to who upsetted her. She also tends to scream when she panics.
She doesn't enjoy panicking when there is no real danger, especially 
when she watches horror movies or goes into haunted houses.

She carries Epubura Patricia Guitar
ever since she formed her own band, 
Guitarzinga! with some of her friends.

On the day she was about to perform with her band, 
Guitarzinga! in a concert, one of her friends sees an 
aura coming out of her Epubura Patricia Guitar
which confuses both Tomomi and her friends at first
because they thought that there was something inside 
her guitar, but they don't know if it is a spirit or not.

When Tomomi equipped her what is to be thought a 
Epubura Patricia guitar, she senses something coming 
out of the guitar, eventually revealing itself as 
Mawagurena, who survived its death many years ago 
after it inserted itself into a rock.

Not only Tomomi was screaming in fear and agony as
the aura came into her, she became sardonic, rude, 
and abrasive to anyone she comes across that aren't 
her friends, and was also quick to anger, stubborn, 
and never misses a chance to use as much hate words 
and insults as possible.

This is caused mainly by Mawagurena sporting its 
personality to Tomomi's, which has created a mass 
heat in her; and became stronger than that of any 
other individual. However, even in cases where she 
cannot win or is on the brink of death, Tomomi possesses 
an undying will of courage and persistence, refusing to 
give up even when she is clearly out matched, something 
many people either hate or admire. This spirit possessing
her however, has a softer, more compassionate side, which 
allows the spirit to keep up its public front because of the 
path it has chosen to that of revenge, as well as accepting 
the fact that she's still someone who has committed sins such 
as murder. It does genuinely care for certain people, such as 
their friends, but disdains killing sometimes.

Not only it allowed her to change her personalities,
she was also stronger than her friends, allowing her
to protect them from danger and the people who tries 
to attack her and her friends.
--------------------------------
(Moves)
Taunt: G
Grab (can be done in air): H
Punch: Z
Kick: X
Swing Guitar: C
Esperanda: V
Teikani: T
Hyakuman-Kasui: SDC
Amami-Sutoraiku: SDZ
BIGBANG: hold Z during Amami-Sutoraiku
Kyubey-Madoka: DDSC
Margatroid: hold Z or C during Kyubey-Madoka
Noel Vermillion: hold Z during Margatroid
Sawatari: hold C during Margatroid
Yuki-Hanafuda: SAX (hold X for followup)
Miki-Hoshii: SAC
Tsuzura-Insho-teki-ken (affects humanoids that have PlatformStand active): ASDWAH
Naoto Kurogane: SDX 
A.B.A.: hold X during Naoto Kurogane landing
Mirai-Hyakuman-Kasui: SDV
Ritsuko Akizuki: V during Mirai-Hyakuman-Kasui
Hibiki Ganaha: V during Ritsuko Akizuki
Let's-go-Ibuki-Mioda-chan!: SASDC
Invite to Hell: DSASDX
Tengoku-no-Mon-no-Ochiru-Hane (Instant Kill, must be on half or low health or have Turn of the Crank activated): ASDASDC
Turn of the Crank: DSADSAV
Go shoot! (must have Turn of the Crank activated): ADADWT
Do that later, just get away!: DWT
]])

--setup player
local user = owner
local chara = user.Character
local human = chara:FindFirstChildOfClass("Humanoid")
--animation disabler
if chara:FindFirstChild("Animate") then
	Anim = chara:FindFirstChild("Animate")
	Anim.Disabled = true
	Anim:Destroy()
	--fake animate
	Instance.new("LocalScript",chara).Name = "Animate"
end	
NLS([==[local model = owner.Character
local humanoid = model:FindFirstChildOfClass("Humanoid") or model:FindFirstChildOfClass("AnimationController")
local animator = humanoid:FindFirstChildOfClass("Animator")
for i,v in ipairs(animator:GetPlayingAnimationTracks()) do
	v:Stop()
end
--disables script so it will be automanically destroyed when script is disabled and automanically stop scripts are on (Lua Sandbox only)
script.Disabled = true]==])
if human.RigType == Enum.HumanoidRigType.R15 then
	error([[You cannot run this script with R15.
	Switch to the R6 avatar type to get this script to work.
	]])
end
local head =  chara.Head
local torso = chara.Torso
local la = chara["Left Arm"]
local ra = chara["Right Arm"]
local ll = chara["Left Leg"]
local rl = chara["Right Leg"]
local rt = chara.HumanoidRootPart
local rj = rt:FindFirstChild("Root Hip") or rt:FindFirstChild("RootJoint")
local nk = torso.Neck
local lh = torso["Left Hip"]
local rh = torso["Right Hip"]
local ls = torso["Left Shoulder"]
local rs = torso["Right Shoulder"]

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
local runservice = game:GetService("RunService")
local debris = game:GetService("Debris")
local tweens = game:GetService("TweenService")
local color = Color3.new

--animation stuff
local anim = "idle"
local frame = 1
local sine = tick()*60

--setup rig C0s to prevent weird limb stuff in animations
local rjC0 = cframe(0, 0, 0) * angles(rad(-90), rad(0), rad(180))
local nkC0 = cframe(0, 1, 0) * angles(rad(-90), rad(0), rad(180))
local rsC0 = cframe(-0.5, 0, 0) * angles(rad(0), rad(90), rad(0))
local lsC0 = cframe(0.5, 0, 0) * angles(rad(0), rad(-90), rad(0))

--mouse and key stuff
local mouse = user:GetMouse()
local keycombo = ""
local keycombotime = 0
local keycombobreaktime = 0.5
local keycount = 0
local keytime = 0
local holdings = false
local holdingc = false
local holdingz = false
local holdingx = false
local holdingv = false
local holdingy = false

--adventure game type stuff
local running = false
local sitting = false
local attack = chara:FindFirstChild("CSAttack")
if attack == nil then
	attackv = new("BoolValue")
	attackv.Name = "CSAttack"
	attackv.Parent = chara
	attack = attackv.Value
else
	attack = chara:FindFirstChild("CSAttack").Value
end

local hurt = chara:FindFirstChild("CSHurt")
if hurt == nil then
	hurtv = new("BoolValue")
	hurtv.Name = "CSHurt"
	hurtv.Parent = chara
	hurt = hurtv.Value
else
	hurt = chara:FindFirstChild("CSHurt").Value
end

local mp = 500

--fighting game type stuff
local ducking = false
local aerial = false
local guarding = chara:FindFirstChild("CSGuarding")
if guarding == nil then
	guardingv = new("BoolValue")
	guardingv.Name = "CSGuarding"
	guardingv.Parent = chara
	guarding = guardingv.Value
else
	guarding = chara:FindFirstChild("CSGuarding").Value
end

--other stuff
local waitin = false
local moving = false
local overheat = false
local voices = true
local dead = false
local damagemult = 1

--weapon
local Weapon = chara:FindFirstChild("EpuburaPatricia")
local WeaponWeld = nil
local WeaponMesh = nil
local WeaponTrail = nil
if Weapon ~= nil then
	WeaponWeld = Weapon:FindFirstChild("PatriciaW")
	WeaponMesh = Weapon:FindFirstChild("PatriciaM")
	WeaponTrail = Weapon:FindFirstChild("PatriciaT")
	Trail = WeaponTrail
end
if Weapon == nil then
	Weapon = new("Part")
	Weapon.Name = "EpuburaPatricia"
	Weapon.Parent = chara
	Weapon.Size = vect3(5,1,1)
	Weapon.BottomSurface = Enum.SurfaceType.Smooth
	Weapon.CanCollide = false
	Weapon.Locked = true
	Weapon.TopSurface = Enum.SurfaceType.Smooth
	Weapon.Transparency = 1
	WeaponMesh = new("SpecialMesh")
	WeaponMesh.Name = "PatriciaM"
	WeaponMesh.Parent = Weapon
	WeaponMesh.MeshId = "rbxassetid://1082816"
	WeaponMesh.Scale = vect3(1,1,1)
	WeaponMesh.Offset = vect3(0, 0, 0)
	WeaponMesh.TextureId = "rbxassetid://10504421"
	WeaponMesh.MeshType = Enum.MeshType.FileMesh
	WeaponWeld = new("Weld")
	WeaponWeld.Name = "PatriciaW"
	WeaponWeld.Parent = Weapon
	WeaponWeld.C0 = cframe(-0.75, -1, 0) * angles(rad(0),rad(90),rad(-180))
	WeaponWeld.Part0 = Weapon
	WeaponWeld.Part1 = la
	Trail0 = new("Trail")
	Trail0.Parent = Weapon
	local attachment0 = new("Attachment",Weapon)
	attachment0.Position = vect3(0,0,0)
	local attachment1 = new("Attachment",Weapon)
	attachment1.Position = vect3(2.525, 0, 0)
	Trail0.Attachment0 = attachment0
	Trail0.Attachment1 = attachment1
	Trail0.Name = "PatriciaT"
	Trail0.LightInfluence = 1
	Trail0.LightEmission = 0
	Trail0.Texture = "http://www.roblox.com/asset/?id=5155825850"
	Trail0.MinLength = 1
	Trail0.MaxLength = 0
	Trail0.Lifetime = 0.1
	Trail0.TextureMode = "Stretch"
	Trail0.TextureLength = 1
	Trail0.Transparency = NumberSequence.new(0,0.5)
	Trail0.WidthScale = NumberSequence.new(1)
	Trail0.Enabled = false 
	Trail = Trail0
end

--cosmetic
local Cosmetic = chara:FindFirstChild("FakeEP")
local CosmeticW = nil
local CosmeticM = nil
if Cosmetic ~= nil then
	CosmeticW = Cosmetic:FindFirstChild("FakeEPW")
	CosmeticM = Cosmetic:FindFirstChild("FakeEPM")
end
if Cosmetic == nil then
	Cosmetic = new("Part")
	Cosmetic.Name = "FakeEP"
	Cosmetic.Parent = chara
	Cosmetic.Size = vect3(0.001,0.001,0.001)
	Cosmetic.BottomSurface = Enum.SurfaceType.Smooth
	Cosmetic.CanCollide = false
	Cosmetic.Locked = true
	Cosmetic.TopSurface = Enum.SurfaceType.Smooth
	CosmeticM = WeaponMesh:Clone()
	CosmeticM.Name = "FakeEPM"
	CosmeticM.Parent = Cosmetic
	CosmeticW = new("Weld")
	CosmeticW.Name = "FakeEPW"
	CosmeticW.Parent = Cosmetic
	CosmeticW.C0 = cframe(-0.25, 0.5, -0.5) * angles(rad(0),rad(0),rad(25))
	CosmeticW.Part0 = Cosmetic
	CosmeticW.Part1 = torso
end

--character outfit
local hair = chara:FindFirstChild("Hair")
local hair1 = chara:FindFirstChild("Hair1")
local hair2 = chara:FindFirstChild("Hair2")
local shirt = chara:FindFirstChildOfClass("Shirt")
local pants = chara:FindFirstChildOfClass("Pants")
local face = head:FindFirstChild("face")
local gender = nil
if user.Name == "ninjakaiden1" then
	if chara:FindFirstChild("Gender") then
		gender = chara:FindFirstChild("Gender").Value
	else
		gender = "Male"
	end
end
if user.Name == "ninjakaiden1" then
	if hair ~= nil then
		for i,v in pairs(chara:children()) do
			if v:IsA("Accessory") or v:IsA("Hat") then
				v:Destroy()
			end
		end
	end
else
	for i,v in pairs(chara:children()) do
		if v:IsA("Accessory") or v:IsA("Hat") or v:IsA("CharacterMesh") then
			v:Destroy()
		end
	end
	arm1 = new("CharacterMesh", chara)
	arm1.Name = "Arm1"
	arm1.BodyPart = "LeftArm"
	arm1.MeshId = "27111419"
	arm2 = new("CharacterMesh",chara)
	arm2.Name = "Arm2"
	arm2.BodyPart = "RightArm"
	arm2.MeshId = "27111864"
	leg1 = new("CharacterMesh",chara)
	leg1.Name = "Leg1"
	leg1.BodyPart = "LeftLeg"
	leg1.MeshId = "27111857"
	leg2 = new("CharacterMesh", chara)
	leg2.Name = "Leg2"
	leg2.BodyPart = "RightLeg"
	leg2.MeshId = "27111882"
	torso2 = new("CharacterMesh",chara)
	torso2.Name = "Torso"
	torso2.BodyPart = "Torso"
	torso2.MeshId = "27111894"
end
if user.Name ~= "ninjakaiden1" then
	ra.BrickColor = bc'Pastel brown'
	la.BrickColor = bc'Pastel brown'
	rl.BrickColor = bc'Pastel brown'
	ll.BrickColor = bc'Pastel brown'
	torso.BrickColor = bc'Pastel brown'
	head.BrickColor = bc'Pastel brown'
	if chara:FindFirstChildOfClass("BodyColors") ~= nil then
		chara:FindFirstChildOfClass("BodyColors").HeadColor = bc'Pastel brown'
		chara:FindFirstChildOfClass("BodyColors").TorsoColor = bc'Pastel brown'
		chara:FindFirstChildOfClass("BodyColors").RightArmColor = bc'Pastel brown'
		chara:FindFirstChildOfClass("BodyColors").LeftArmColor = bc'Pastel brown'
		chara:FindFirstChildOfClass("BodyColors").RightLegColor = bc'Pastel brown'
		chara:FindFirstChildOfClass("BodyColors").LeftLegColor = bc'Pastel brown'
	end
end
if shirt == nil then
	shirt = new("Shirt",chara)
	shirt.Name = "Shirt"
end
if user.Name ~= "ninjakaiden1" then
	shirt.ShirtTemplate = "rbxassetid://3843649944"
end
if pants == nil then
	pants = new("Pants",chara)
	pants.Name = "Pants"
end
if user.Name ~= "ninjakaiden1" then
	pants.PantsTemplate = "rbxassetid://3843677756"
end
local headmesh = head:FindFirstChildOfClass("SpecialMesh")
if headmesh ~= nil then
	headmesh = new("SpecialMesh",head)
	headmesh.MeshType = "Head"
	headmesh.Scale = vect3(1.25, 1.25, 1.25)
else
	headmesh.MeshType = "Head"
	headmesh.Scale = vect3(1.25, 1.25, 1.25)
end
if user.Name ~= "ninjakaiden1" then
	if hair == nil then
		hair = new("Part",chara)
		hair.Name = "Hair"
		hair.BrickColor = bc("Medium brown")
		hair.Material = "Neon"
		hair.Transparency = 0
		hair.CanCollide = false
		hair.Locked = true
		hair.Size=vect3(0.001,0.001,0.001)
		local hairm = new("SpecialMesh",hair)
		hairm.MeshType = "FileMesh"
		hairm.Offset = vect3(0.325, -2, -0.3)
		hairm.Scale = vect3(0.185, 0.225, 0.2)
		hairm.MeshId = "rbxassetid://14622860414"
		local hairw =new("Weld",hair)
		hairw.Part0 = head
		hairw.Part1 = hair
		hairw.C0 = cframe(-.25, 1.2, .34)
	end
	if hair1 == nil then
		hair1 = new("Part",chara)
		hair1.Name = "Hair1"
		hair1.BrickColor = bc("Medium brown")
		hair1.Material = "Neon"
		hair1.Transparency = 0
		hair1.CanCollide = false
		hair1.Locked = true
		hair1.Size=vect3(0.001,0.001,0.001)
		local hairm = new("SpecialMesh",hair1)
		hairm.MeshType = "FileMesh"
		hairm.Offset = vect3(0.25, 1.15, -2.1)
		hairm.Scale = vect3(1, 1, 1)
		hairm.MeshId = "rbxassetid://86306135828507"
		local hairw =new("Weld",hair1)
		hairw.Part0 = head
		hairw.Part1 = hair1
		hairw.C0 = cframe(-0.25, -1, 1.5)
	end
	if hair2 == nil then
		hair2 = new("Part",chara)
		hair2.Name = "Hair2"
		hair2.BrickColor = bc("Medium brown")
		hair2.Material = "Neon"
		hair2.Transparency = 0
		hair2.CanCollide = false
		hair2.Locked = true
		hair2.Size=vect3(0.001,0.001,0.001)
		local hairm = new("SpecialMesh",hair2)
		hairm.MeshType = "FileMesh"
		hairm.Offset = vect3(0.15, 1, -1.3)
		hairm.Scale = vect3(1.05, 1.1, 1.05)
		hairm.MeshId = "rbxassetid://76056263"
		local hairw =new("Weld",hair2)
		hairw.Part0 = head
		hairw.Part1 = hair2
		hairw.C0 = cframe(-0.25, -1, 1.5)
	end
end
if user.Name ~= "ninjakaiden1" then
	hair.Mesh.MeshId = "rbxassetid://14622860414"
	hair.Mesh.Scale = vect3(0.185, 0.225, 0.2)
	hair.Mesh.Offset = vect3(0.325, -2, -0.3)
	hair.Mesh.TextureId = ""
	hair.Transparency = 0
	hair1.Mesh.MeshId = "rbxassetid://86306135828507"
	hair1.Mesh.TextureId = ""
	hair1.Mesh.Offset = vect3(0.25, 1.15, -2.1)
	hair1.Mesh.Scale = vect3(1, 1, 1)
	hair1.Transparency = 0
	hair2.Mesh.MeshId = "rbxassetid://76056263"
	hair2.Mesh.Offset = vect3(0.15, 1, -1.3)
	hair2.Mesh.Scale = vect3(1.05, 1.1, 1.05)
	hair2.Mesh.TextureId = ""
	hair2.Transparency = 0
	hair.BrickColor = bc("Medium brown")
	hair1.BrickColor = bc("Medium brown")
	hair2.BrickColor = bc("Medium brown")
end
if face == nil then
	face = new("Decal",head)
	face.Name = "face"
	face.Texture = "rbxassetid://7978813818"
else
	if user.Name ~= "ninjakaiden1" then
		face.Texture = "rbxassetid://7978813818"
	end
end
if user.Name ~= "ninjakaiden1" then
	if chara:FindFirstChild("FakeHead") then
		chara.FakeHead.face.Texture = face.Texture
	end
end
--humanoid stuff
human.WalkSpeed = 18
human.BreakJointsOnDeath = false
if human.MaxHealth < 444 then
	human.MaxHealth = 444
	human.Health = human.MaxHealth
end
local ogws = human.WalkSpeed
local ogjp = human.JumpPower
local ogjh = human.JumpHeight
local maxhp = human.MaxHealth


--gui stuff
local pgui = user:FindFirstChild("PlayerGui")
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
	Frame1.Position = UDim2.new(-0.0015, 0, 0, 0)
	Frame1.Size = UDim2.new(0.351000011, 0, 0.179000005, 0)
	Frame1.BackgroundColor = bc("Really black")
	Frame1.BackgroundColor3 = color(0, 0, 0)
	Frame1.BackgroundTransparency = 1
	Frame1.BorderColor3 = color(0.105882, 0.164706, 0.207843)
	Frame1.BorderSizePixel = 0
	Frame2.Name = "Health"
	Frame2.Parent = Frame1
	Frame2.Position = UDim2.new(0.291594148, 0, 0.304758459, 0)
	Frame2.Size = UDim2.new(0.751230896, 0, 0.262787163, 0)
	Frame2.BackgroundColor = bc("Black")
	Frame2.BackgroundColor3 = color(0.168627, 0.168627, 0.168627)
	Frame2.BorderColor3 = color(0.105882, 0.164706, 0.207843)
	Frame2.BorderSizePixel = 0
	Frame3.Name = "Flame"
	Frame3.Parent = Frame2
	Frame3.Position = UDim2.new(0, 0, 0.103869386, 0)
	Frame3.Size = UDim2.new(0.986928344, 0, 0.778514206, 0)
	Frame3.BackgroundColor = bc("Really red")
	Frame3.BackgroundColor3 = color(1, 0.0823529, 0.0823529)
	Frame3.BorderColor3 = color(0.105882, 0.164706, 0.207843)
	Frame3.BorderSizePixel = 0
	Frame4.Parent = Frame3
	Frame4.Size = UDim2.new(1, 0, 1, 0)
	Frame4.BackgroundColor = bc("Lime green")
	Frame4.BackgroundColor3 = color(0.0823529, 0.854902, 0)
	Frame4.BorderColor3 = color(0.105882, 0.164706, 0.207843)
	Frame4.BorderSizePixel = 0
	TextLabel5.Parent = Frame3
	TextLabel5.Position = UDim2.new(0.350894421, 0, -0.0424999222, 0)
	TextLabel5.Size = UDim2.new(0.333701938, 0, 1.06249809, 0)
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
	ImageLabel6.Position = UDim2.new(0.0125685055, 0, 0.0556026287, 0)
	ImageLabel6.Size = UDim2.new(0.32114774, 0, 0.95083338, 0)
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
	Frame7.Position = UDim2.new(0.291594118, 0, 0.546824098, 0)
	Frame7.Size = UDim2.new(0.66877985, 0, 0.19949533, 0)
	Frame7.BackgroundColor = bc("Black")
	Frame7.BackgroundColor3 = color(0.168627, 0.168627, 0.168627)
	Frame7.BorderColor3 = color(0.105882, 0.164706, 0.207843)
	Frame7.BorderSizePixel = 0
	Frame8.Parent = Frame7
	Frame8.Position = UDim2.new(9.40595584e-08, 0, 0.103869386, 0)
	Frame8.Size = UDim2.new(0.986928284, 0, 0.778514206, 0)
	Frame8.BackgroundColor = bc("Pastel blue-green")
	Frame8.BackgroundColor3 = color(0.607843, 0.929412, 1)
	Frame8.BorderColor3 = color(0.105882, 0.164706, 0.207843)
	Frame8.BorderSizePixel = 0
	Frame9.Parent = Frame8
	Frame9.Position = UDim2.new(4.765268e-08, 0, 0, 0)
	Frame9.Size = UDim2.new(0.999999821, 0, 1, 0)
	Frame9.BackgroundColor = bc("Electric blue")
	Frame9.BackgroundColor3 = color(0, 0.584314, 0.854902)
	Frame9.BorderColor3 = color(0.105882, 0.164706, 0.207843)
	Frame9.BorderSizePixel = 0
	TextLabel10.Parent = Frame8
	TextLabel10.Position = UDim2.new(0.350894421, 0, -0.0424999222, 0)
	TextLabel10.Size = UDim2.new(0.333701938, 0, 1.06249809, 0)
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
	TextLabel11.Position = UDim2.new(0.33821103, 0, 0.746319294, 0)
	TextLabel11.Size = UDim2.new(0.508925557, 0, 0.179140329, 0)
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
	TextLabel13.Position = UDim2.new(0.00183190638, 0, 0.0300984792, 0)
	TextLabel13.Size = UDim2.new(0.342627108, 0, 1.01724708, 0)
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
	TextLabel14.Position = UDim2.new(0.220269948, 0, 0.746319413, 0)
	TextLabel14.Size = UDim2.new(0.8127352, 0, 0.17914021, 0)
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
	TextLabel15.Position = UDim2.new(0.168738112, 0, 0.138032123, 0)
	TextLabel15.Size = UDim2.new(0.592754722, 0, 0.17914021, 0)
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
	TextLabel16.Position = UDim2.new(0.340034634, 0, 0.138032004, 0)
	TextLabel16.Size = UDim2.new(0.421458423, 0, 0.179140255, 0)
	TextLabel16.BackgroundColor = bc("Institutional white")
	TextLabel16.BackgroundColor3 = color(1, 1, 1)
	TextLabel16.BackgroundTransparency = 1
	TextLabel16.BorderColor3 = color(0.105882, 0.164706, 0.207843)
	TextLabel16.Font = Enum.Font.SourceSansBold
	TextLabel16.FontSize = Enum.FontSize.Size14
	TextLabel16.Text = "Tomomi Kawasaki"
	TextLabel16.TextColor = bc("Institutional white")
	TextLabel16.TextColor3 = color(1, 1, 1)
	TextLabel16.TextScaled = true
	TextLabel16.TextSize = 14
	TextLabel16.TextWrap = true
	TextLabel16.TextWrapped = true
	TextLabel16.TextXAlignment = Enum.TextXAlignment.Left
	Frame17.Name = "MusicFrame"
	Frame17.Parent = ScreenGui0
	Frame17.Position = UDim2.new(0.0015, 0, 0.5, -25)
	Frame17.Size = UDim2.new(0, 110, 0, 85)
	Frame17.BackgroundColor = bc("Toothpaste")
	Frame17.BackgroundColor3 = color(0.333333, 1, 1)
	Frame17.BorderColor = bc("Toothpaste")
	Frame17.BorderColor3 = color(0.333333, 1, 1)
	Frame17.Style = Enum.FrameStyle.RobloxRound
	TextBox18.Name = "Songu"
	TextBox18.Parent = Frame17
	TextBox18.Position = UDim2.new(0, 0, 0.0500000007, 0)
	TextBox18.Size = UDim2.new(1, 0, 0.349999994, 0)
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
	TextBox19.Position = UDim2.new(0, 0, 0.600000024, 0)
	TextBox19.Size = UDim2.new(1, 0, 0.349999994, 0)
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
		charname.Text = "Tomomi Kawasaki"
		charimg.Image = "rbxassetid://252784925"
	else
		charname.Text = "樫本裕介"
		charimg.Image = "rbxassetid://15055381615"
	end
	local hpbar = MainFrame.Health.Flame
	hpbar.TextLabel.Text = "HP: "..math.floor(hum.Health)

	local song = Instance.new("Sound", playergui)
	song.Name = "CSUFMusic"
	song.Looped = true
	local id = "78744747224727"
	song.SoundId = "rbxassetid://" .. id
	if plr.Name == "ninjakaiden1" then
		song.SoundId = "rbxasset://sounds/agb.mp3"
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

function sound3(id, volume, pitch, parent, tpos)
	local sound = new("Sound")
	sound.SoundId = "rbxasset://sounds/"..id
	sound.Volume = volume
	sound.Pitch = pitch
	sound.Parent = parent
	sound.TimePosition = tpos or 0
	sound.PlayOnRemove = true
	sound:Destroy()
end

--CREATOR EXCLUSIVE.
function voice(id, volume, pitch, parent, tpos, looped)
	local sound = new("Sound")
	sound.SoundId = "rbxasset://voices/"..id
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
function voice2(id, volume, pitch, parent, tpos)
	local sound = new("Sound")
	sound.SoundId = "rbxasset://voices/"..id
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
	creator.Value = game:GetService("Players"):GetPlayerFromCharacter(chara)
	creator.Parent = huma
	debris:AddItem(creator, 2)
	--Damage the humanoid. Decided to use :TakeDamage() instead.
	sound(hitsfx, hitvol, hitpitch, hitpart, hittpos, false)
	--Give me a break...
	if huma.Parent:IsA("Model") and huma.Parent.Name ~= "ninjakaiden1" then
		if huma.MaxHealth >= 1000000 then
			huma.MaxHealth = 100
			huma.Health = 100
		end
	end
	huma:TakeDamage(damage * damagemult)
	hiteffect(effect,hitpart)
end
function magnitudedamage(dmg, effect, hitpos, hitarea, hitsfx, hitvol, hitpitch, part, move, typa, type2)
	for i,v in pairs(workspace:GetDescendants()) do
		if v:FindFirstChildOfClass("Humanoid") and v ~= chara then
			local vhum = v:FindFirstChildOfClass("Humanoid")
			local vtorso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso") or v:FindFirstChild("HumanoidRootPart")
			if vtorso then
				local vdistance = (vtorso.Position - part.CFrame*cframe(0,0,-1.5).p).magnitude
				if vdistance <= hitarea and vhum.Health > 0 then
					damage(vhum, dmg, hitsfx, hitvol, hitpitch, vtorso, hitpos, effect)
					if move == true then
						if type2 == "fpunch" then
							local vel = new("BodyVelocity")
							vel.Parent = vtorso
							vel.MaxForce = vect3(math.huge,math.huge,math.huge)
							vel.Velocity = rt.CFrame.lookVector * 15 + rt.CFrame.upVector * 45
							debris:AddItem(vel,0.15)
						elseif type2 == "fkick" then
							local vel = new("BodyVelocity")
							vel.Parent = vtorso
							vel.MaxForce = vect3(math.huge,math.huge,math.huge)
							vel.Velocity = rt.CFrame.lookVector * 30
							debris:AddItem(vel,0.15)
						elseif type2 == "fguitar" then
							local vel = new("BodyVelocity")
							vel.Parent = vtorso
							vel.MaxForce = vect3(math.huge,math.huge,math.huge)
							vel.Velocity = rt.CFrame.lookVector * 15
							debris:AddItem(vel,0.15)
						elseif type2 == "fguitar2" then
							local vel = new("BodyVelocity")
							vel.Parent = vtorso
							vel.MaxForce = vect3(math.huge,math.huge,math.huge)
							vel.Velocity = rt.CFrame.lookVector * 25 + rt.CFrame.upVector * 45
							debris:AddItem(vel,0.15)
						elseif type2 == "esper" then
							local vel = new("BodyVelocity")
							vel.Parent = vtorso
							vel.MaxForce = vect3(math.huge,math.huge,math.huge)
							vel.Velocity = rt.CFrame.lookVector * 25 + rt.CFrame.upVector * 30
							debris:AddItem(vel,0.15)
						elseif type2 == "knockdown" then
							local vel = new("BodyVelocity")
							vel.Parent = vtorso
							vel.MaxForce = vect3(math.huge,math.huge,math.huge)
							vel.Velocity = rt.CFrame.lookVector * 55
							debris:AddItem(vel,0.025)
							vhum.PlatformStand = true
							spawn(function() 
								wait(5)
								vhum.PlatformStand = false
							end)
						elseif type2 == "kyubey" then
							if vtorso:FindFirstChild("BodyPosition") then vtorso:FindFirstChild("BodyPosition"):Destroy() end
							local bpos = new("BodyPosition")
							bpos.Parent = vtorso
							bpos.MaxForce = vect3(39999,39999,39999)
							bpos.D = 1500
							bpos.Position = rt.CFrame * cframe(0,45,-15).Position
							debris:AddItem(bpos,0.1)
						elseif type2 == "knockdown1" then
							local vel = new("BodyVelocity")
							vel.Parent = vtorso
							vel.MaxForce = vect3(math.huge,math.huge,math.huge)
							vel.Velocity = rt.CFrame.upVector * 12.5
							debris:AddItem(vel,0.05)
							vhum.PlatformStand = true
							spawn(function() 
								wait(5)
								vhum.PlatformStand = false
							end)
						elseif type2 == "margatroid" then
							if vtorso:FindFirstChild("BodyPosition") then vtorso:FindFirstChild("BodyPosition"):Destroy() end
							local vel = new("BodyVelocity")
							vel.Parent = vtorso
							vel.MaxForce = vect3(math.huge,math.huge,math.huge)
							vel.Velocity = rt.CFrame.upVector * 45
							debris:AddItem(vel,0.05)
							vhum.PlatformStand = true
							spawn(function() 
								wait(5)
								vhum.PlatformStand = false
							end)	
						elseif type2 == "sawatari" then
							vtorso.Velocity = rt.CFrame.lookVector*25 + rt.CFrame.upVector * -50
							vhum.PlatformStand = true
							spawn(function() 
								wait(5)
								vhum.PlatformStand = false
							end)
							if user.Name == "ninjakaiden1" then
								if random(0,10) == 0 then
									instantkill(v)
									sound2(108119385019346,3,1,ll,0)
									vtorso.Velocity = rt.CFrame.lookVector*500
								end
							end
						elseif type2 == "knockdown2" then
							local vel = new("BodyVelocity")
							vel.Parent = vtorso
							vel.MaxForce = vect3(math.huge,math.huge,math.huge)
							vel.Velocity = rt.CFrame.lookVector * 5 + rt.CFrame.upVector * 45
							debris:AddItem(vel,0.05)
							vhum.PlatformStand = true
							spawn(function() 
								wait(5)
								vhum.PlatformStand = false
							end)
						elseif type2 == "dtl" then
							vtorso.Velocity = rt.CFrame.lookVector*100
							vhum.PlatformStand = true
							spawn(function() 
								wait(5)
								vhum.PlatformStand = false
							end)
							if user.Name == "ninjakaiden1" then
								if random(0,10) == 0 then
									instantkill(v)
									sound2(108119385019346,3,1,ll,0)
									vtorso.Velocity = rt.CFrame.lookVector*500
								end
							end
						elseif type2 == "ibuki" then
							if vtorso:FindFirstChild("IbukiMove") then vtorso:FindFirstChild("IbukiMove"):Destroy() end
							vtorso.Velocity = rt.CFrame.lookVector*75 + rt.CFrame.upVector * 50
							vhum.PlatformStand = true
							spawn(function() 
								wait(5)
								vhum.PlatformStand = false
							end)
							if user.Name == "ninjakaiden1" then
								if random(0,10) == 0 then
									instantkill(v)
									sound2(108119385019346,3,1,Weapon,0)
									vtorso.Velocity = rt.CFrame.lookVector*500+ rt.CFrame.upVector * 100
								end
							end
						elseif type2 == "trip" then
							local vel = new("BodyVelocity")
							vel.Parent = vtorso
							vel.MaxForce = vect3(math.huge,math.huge,math.huge)
							vel.Velocity = rt.CFrame.lookVector * 7.5 + rt.CFrame.upVector * 7.5
							debris:AddItem(vel,0.05)
							vhum.PlatformStand = true
							spawn(function() 
								wait(5)
								vhum.PlatformStand = false
							end)
						elseif type2 == "spike" then
							vtorso.Velocity = rt.CFrame.lookVector * 25 + rt.CFrame.upVector * 60
							vhum.PlatformStand = true
							spawn(function() 
								wait(5)
								vhum.PlatformStand = false
							end)
						elseif type2 == "amami" then
							if vtorso:FindFirstChild("BodyPosition") then vtorso:FindFirstChild("BodyPosition"):Destroy() end
							local bpos = new("BodyPosition")
							bpos.Parent = vtorso
							bpos.MaxForce = vect3(39999,39999,39999)
							bpos.D = 1750
							bpos.Position = rt.CFrame * cframe(0,0,-78.9).Position
							debris:AddItem(bpos,0.1)
						elseif type2 == "amami2" then
							vtorso.Velocity = rt.CFrame.lookVector * 45 + rt.CFrame.upVector * 75
							vhum.PlatformStand = true
							spawn(function() 
								wait(5)
								vhum.PlatformStand = false
							end)
							if user.Name == "ninjakaiden1" then
								if random(0,10) == 0 then
									instantkill(v)
									sound2(108119385019346,3,1,Weapon,0)
									vtorso.Velocity = rt.CFrame.lookVector*500+ rt.CFrame.upVector * 100
								end
							end
						elseif type2 == "mirai" then
							vtorso.Velocity = rt.CFrame.lookVector * 2.5 + rt.CFrame.upVector * 25
							vhum.PlatformStand = true
							spawn(function() 
								wait(5)
								vhum.PlatformStand = false
							end)
						elseif type2 == "mirai2" then
							vtorso.Velocity = rt.CFrame.lookVector * 5 + rt.CFrame.upVector * 37.5
							vhum.PlatformStand = true
							spawn(function() 
								wait(5)
								vhum.PlatformStand = false
							end)
						elseif type2 == "mirai3" then
							vtorso.Velocity = rt.CFrame.lookVector * 100
							vhum.PlatformStand = true
							spawn(function() 
								wait(5)
								vhum.PlatformStand = false
							end)
							if user.Name == "ninjakaiden1" then
								if random(0,10) == 0 then
									instantkill(v)
									sound2(108119385019346,3,1,Weapon,0)
									vtorso.Velocity = rt.CFrame.lookVector*300
								end
							end
						elseif type2 == "aba" then
							vtorso.Velocity = rt.CFrame.lookVector * 150
							vhum.PlatformStand = true
							local explosion = new("Explosion")
							explosion.Position = vtorso.Position
							explosion.Parent = workspace
							explosion.BlastRadius = 0
							explosion.DestroyJointRadiusPercent = 0
							explosion.BlastPressure = 0
							sound2(2761841,7.5,1.05,vtorso,0)
							spawn(function() 
								wait(5)
								vhum.PlatformStand = false
							end)
							if user.Name == "ninjakaiden1" then
								if random(0,10) == 0 then
									instantkill(v)
									sound2(108119385019346,3,1,Weapon,0)
									vtorso.Velocity = rt.CFrame.lookVector*450
								end
							end
						elseif type2 == "yuki" then
							if vtorso:FindFirstChild("BodyPosition") then vtorso:FindFirstChild("BodyPosition"):Destroy() end
							vtorso.Velocity = rt.CFrame.lookVector * 100 + rt.CFrame.upVector * 30
							local bpos = new("BodyPosition")
							bpos.Parent = vtorso
							bpos.MaxForce = vect3(39999,39999,39999)
							bpos.D = 2000
							bpos.Position = rt.CFrame * cframe(0,35,-80).Position
							debris:AddItem(bpos,0.1)
						elseif type2 == "yuki2" then
							if vtorso:FindFirstChild("BodyPosition") then vtorso:FindFirstChild("BodyPosition"):Destroy() end
							vtorso.Velocity = rt.CFrame.lookVector * 75 + rt.CFrame.upVector * 45
							vhum.PlatformStand = true
							spawn(function() 
								wait(5)
								vhum.PlatformStand = false
							end)
							if user.Name == "ninjakaiden1" then
								if random(0,10) == 0 then
									instantkill(v)
									sound2(108119385019346,3,1,ll,0)
									vtorso.Velocity = rt.CFrame.lookVector*500 + rt.CFrame.upVector * 50
								end
							end
						elseif type2 == "shoot" then
							if vtorso:FindFirstChild("GoShootMove") then vtorso:FindFirstChild("GoShootMove"):Destroy() end
							vtorso.Velocity = rt.CFrame.lookVector * 125 + rt.CFrame.upVector * 100
							vhum.PlatformStand = true
							spawn(function() 
								wait(5)
								vhum.PlatformStand = false
							end)
							if user.Name == "ninjakaiden1" then
								if random(0,10) == 0 then
									instantkill(v)
									sound2(108119385019346,3,1,Weapon,0)
									vtorso.Velocity = rt.CFrame.lookVector*350 + rt.CFrame.upVector * 100
								end
							end
						else
							local vel = new("BodyVelocity")
							vel.Parent = vtorso
							vel.MaxForce = vect3(math.huge,math.huge,math.huge)
							vel.Velocity = rt.CFrame.lookVector * 5
							debris:AddItem(vel,0.5)
						end
					end
					if typa == "guitar" then
						local randomu = random(0,9)
						if randomu <= 2 then
							sound(8641752150,2,1,Weapon,0,false)
						elseif randomu == 3 then
							sound(8641752058,2,1,Weapon,0,false)	
						elseif randomu == 4 then
							sound(8641751961,2,1,Weapon,0,false)	
						elseif randomu == 5 then
							sound(8641751865,2,1,Weapon,0,false)	
						elseif randomu >= 6 then
							sound(8641751761,2,1,Weapon,0,false)	
						end
					elseif typa == "guitar2" then
						local randomu = random(0,9)
						if random(0,9) <= 4 then
							if randomu <= 2 then
								sound(8641752150,2,1,Weapon,0,false)
							elseif randomu == 3 then
								sound(8641752058,2,1,Weapon,0,false)	
							elseif randomu == 4 then
								sound(8641751961,2,1,Weapon,0,false)	
							elseif randomu == 5 then
								sound(8641751865,2,1,Weapon,0,false)	
							elseif randomu >= 6 then
								sound(8641751761,2,1,Weapon,0,false)	
							end
						end	
					elseif typa == "burn" then
						sound(698224146,4.5,1,vtorso,0,false)
						hiteffect("burn",vtorso)
					elseif typa == "slash" then
						sound(7441099080,3,1,vtorso,0,false)
						hiteffect("blood",vtorso)
						hiteffect("blood2",vtorso)
					elseif typa == "slash2" then
						if random(0,10) <= 2 then
							sound(7441099080,3,1,vtorso,0,false)
							hiteffect("blood",vtorso)
							hiteffect("blood2",vtorso)
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
	if pos == "yuki2" then
		Part.Size = vect3(5, 8.5, 5)
	elseif pos == "naoto" then
		Part.Size = vect3(5.5, 8.5, 5.5)
	elseif pos == "scythe" then
		Part.Size = vect3(5.5, 11.5, 5.5)
	else
		Part.Size = vect3(5, 7.5, 5)
	end
	Part.CanCollide = false
	Part.Massless = true
	Part.Locked = true
	debris:AddItem(Part,dtime)
	local Weld = new("Weld",Part)
	Weld.Part0 = rt
	Weld.Part1 = Part
	if pos == "ateikani" then
		Weld.C0 = Weld.C0 * cframe(0, -1.5, -2.5)
	elseif pos == "yuki" then
		Weld.C0 = Weld.C0 * cframe(0, -1, -3.5)
	elseif pos == "yuki2" then
		Weld.C0 = Weld.C0 * cframe(0, -1.5, -4)
	elseif pos == "naoto" then
		Weld.C0 = Weld.C0 * cframe(0.75, -1.5, 0)
	elseif pos == "sawatari" then
		Weld.C0 = Weld.C0 * cframe(0, -1.15, -3)
	elseif pos == "scythe" then
		Weld.C0 = Weld.C0 * cframe(0, -1.75,-3.5)
	else
		Weld.C0 = Weld.C0 * cframe(0,0,-4)
	end
	Part.Touched:Connect(function(persona)
		if persona:IsA("BasePart") or persona:IsA("MeshPart") then
			if persona.Parent ~= nil and not persona.Parent:IsDescendantOf(chara) then
				if persona.Parent:FindFirstChildOfClass("Humanoid") and persona.Parent ~= chara and hashit == false then
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
	if effect == "burn" then
		local hum = hitpart.Parent:FindFirstChildOfClass("Humanoid")
		local fire = new("Fire")
		fire.Parent = hitpart
		fire.Size = 10
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
				hum:TakeDamage(1 * damagemult)
				--creator value
				local creator = new("ObjectValue")
				creator.Name = "creator"
				creator.Value = game:GetService("Players"):GetPlayerFromCharacter(chara)
				creator.Parent = hum
				wait(1)
				creator:Destroy()
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
	if effect == "blood" then
		coroutine.wrap(function()
			for i = 1,5 do
				local blood = new("Part")
				blood.Parent = workspace
				blood.Name = "Blood"
				blood.BrickColor = bc("Really red")
				blood.Material = "Glass"
				blood.Size = vect3(0.5,0.5,0.5)
				blood.CFrame = hitpart.CFrame * cframe(random(-1,1),random(-1,1),random(-1,1))
				blood.AssemblyLinearVelocity = vect3(random(-1,1),random(-1,1),random(-1,1))
				debris:AddItem(blood,5)
			end
		end)()
	end
	if effect == "blood2" then
		coroutine.wrap(function()
			for i = 1,random(20,30) do
				local blood = new("Part")
				local blc = {"Bright red","Really red","Crimson","Maroon"}
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
		end)()
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
		local tween = tweens:Create(slam, TweenInfo.new(0.5), {Size = vect3(25,25,2.5), Transparency = 1})
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
end

function super()
	sound(153092315,2.5,1.1,rt,0,false)
	coroutine.wrap(function()
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
		debris:AddItem(sphere,2.5)
	end)()
end

function ultimate()
	sound(17618970363,3,1,rt,0,false)
	coroutine.wrap(function()
		local zbb = new("BillboardGui")
		local ilc = new("ImageLabel")
		local ils = new("ImageLabel")
		zbb.Name = "Ultimate"
		zbb.Parent = rt
		zbb.LightInfluence = 1
		zbb.Size = UDim2.new(10, 10, 10, 10)
		zbb.Active = true
		zbb.ClipsDescendants = true
		zbb.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
		ils.Name = "Spirit"
		ils.Parent = zbb
		ils.Size = UDim2.new(1, 0, 1, 0)
		ils.BackgroundColor = bc("Institutional white")
		ils.BackgroundColor3 = color(1, 1, 1)
		ils.BackgroundTransparency = 1
		ils.BorderColor = bc("Really black")
		ils.BorderColor3 = color(0, 0, 0)
		ils.BorderSizePixel = 0
		ils.ZIndex = 0
		ils.Image = "rbxassetid://252784925"
		ils.ScaleType = Enum.ScaleType.Fit
		ils.ResampleMode = "Pixelated"
		if user.Name == "ninjakaiden1" then
			local randomsp = random(0,15)
			if randomsp == 0 then
				ils.Image = "rbxassetid://15055381615"	
			elseif randomsp == 1 then
				ils.Image = "rbxassetid://462936355"	
			elseif randomsp == 2 then
				ils.Image = "rbxassetid://2878505316"	
			elseif randomsp == 3 then
				ils.Image = "rbxassetid://4851236833"	
			elseif randomsp == 4 then
				ils.Image = "rbxassetid://671056895"	
			elseif randomsp == 5 then
				ils.Image = "rbxassetid://669522226"	
			elseif randomsp == 6 then
				ils.Image = "rbxassetid://696766247"	
			elseif randomsp == 7 then
				ils.Image = "rbxassetid://4531852602"	
			elseif randomsp == 8 then
				ils.Image = "rbxassetid://305095049"	
			elseif randomsp == 9 then
				ils.Image = "rbxassetid://6282779820"	
			elseif randomsp == 10 then
				ils.Image = "rbxassetid://14128097171"	
			elseif randomsp == 11 then
				ils.Image = "rbxassetid://8152625475"	
			elseif randomsp == 12 then
				ils.Image = "rbxassetid://13792382048"	
			elseif randomsp == 13 then
				ils.Image = "rbxassetid://14208551450"	
			elseif randomsp == 14 then
				ils.Image = "rbxassetid://305126743"	
			else
				ils.Image = "rbxassetid://252784925"	
			end
		else
			ils.Image = "rbxassetid://252784925"
		end
		local sphere = new("Part")
		sphere.Parent = script
		sphere.Name = "SuperSphere"
		sphere.Size = vect3(60,60,60)
		sphere.Transparency = 1
		sphere.BrickColor = bc("Bright blue")
		sphere.Material = "Neon"
		sphere.CanCollide = false
		sphere.Anchored = true
		sphere.Locked = true
		sphere.CFrame = rt.CFrame
		local spherem = new("SpecialMesh")
		spherem.Parent = sphere
		spherem.MeshType = "Sphere"
		local mul = 0
		spawn(function()
			while zbb ~= nil do
				mul = mul + 15
				if ils.ImageTransparency  >= 1 then
					if zbb == nil then
						break
					end
					ils:Destroy()
					ilc:Destroy()
					zbb = nil
				end
				if zbb == nil then
					break
				else
					zbb.StudsOffset = zbb.StudsOffset + vect3(0,0.25,0)
					zbb.Size = zbb.Size + UDim2.new(0.25,0.25,0.25,0.25)
					ilc.Rotation = ilc.Rotation + mul
					ilc.ImageTransparency = ilc.ImageTransparency + 0.025
					ils.ImageTransparency = ilc.ImageTransparency + 0.025
				end
				wait(0.005)
			end
		end)
		local tween = tweens:Create(sphere, TweenInfo.new(1), {Size = vect3(0.15,0.15,0.15), Transparency = 0})
		tween:Play()
		wait(1)
		local tweenu = tweens:Create(sphere, TweenInfo.new(1), {Size = vect3(75,75,75), Transparency = 1})
		tweenu:Play()
		spawn(function()
			for i = 1,5 do
				local cb = new("Part")
				cb.Name = "Thing"
				sphere.Shape = "Ball"
				cb.Size = vect3(0.275, 0.22, 3.254)
				cb.Anchored = true
				cb.BrickColor = bc("Bright blue")
				cb.CanCollide = false
				cb.Material = Enum.Material.Neon
				cb.Parent = script
				cb.CFrame = sphere.CFrame * cframe(random(-2,2),random(-2,2),random(-2,2))
				cb.CFrame = cframe(cb.Position, sphere.Position)
				cb.Transparency = 0
				debris:AddItem(cb,3)
				tweens:Create(cb,TweenInfo.new(0.5,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut),{CFrame = cb.CFrame + cb.CFrame.lookVector * -15,Transparency = 1,Size = vect3(0.045, 0.03, 4.5)}):Play()
			end
		end)
		tweenu.Completed:Connect(function() sphere:Destroy()end)
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

--Instant Kill (only if I'm using the script, doesn't affect players)
function instantkill(victim)
	if user.Name ~= "ninjakaiden1" then return end
	if not game:GetService("Players"):GetPlayerFromCharacter(victim) or victim:FindFirstChild("CSDeathByHiko") then
		new("BoolValue",victim).Name = "CSDeathByHiko"
		local vhum = victim:FindFirstChildOfClass("Humanoid")
		local vtorso = victim:FindFirstChild("Torso") or victim:FindFirstChild("UpperTorso") or victim:FindFirstChild("HumanoidRootPart")
		local vhead = victim:FindFirstChild("Head")
		ragdoll(victim)
		hiteffect("blood",vtorso)
		hiteffect("blood2",vtorso)
		sound2(5951833277, 4.5, 1, vtorso, 0,false)
		vhum.BreakJointsOnDeath = false
		for i,v in pairs(victim:GetDescendants()) do
			if v:IsA("BasePart") then
				v.CanCollide = true
			end
		end
		scream(vhead)
		vhum:TakeDamage(math.huge)
		vhum:TakeDamage(math.huge)
		vhum.Health = 0
		vhum:SetStateEnabled(Enum.HumanoidStateType.Dead, true)
		vhum:ChangeState(Enum.HumanoidStateType.Dead)
		if vhum.Health >= vhum.MaxHealth then
			victim:BreakJoints()
		end
	end
end

--scream
function scream(part)
	local scream = random(0,30)
	if scream == 1 then
		sound(2898498516,4.5,1,part,0,false)
	elseif scream == 2 then
		sound(4602905960,4.5,1,part,0.155,false)
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
		sound(1543452819,1,1,part,0,false)
	elseif scream == 28 then
		sound(7817657151,4.5,1,part,0,false)
		--Mortal Kombat 2 moment
	elseif scream == 29 then
		sound(9058794788,4.5,1,part,0,false)
	else
		sound(6413066681,4.5,1,part,0,false)
	end					
end

--chat stuff
local canchat = true

function chatter(message)
	if not canchat then return end
	local chattext = coroutine.wrap(function()
		if chara:FindFirstChild("zachatboard") then
			chara:FindFirstChild("zachatboard"):Destroy()
		end
		local BillboardGui0 = new("BillboardGui")
		local TextLabel1 = new("TextLabel")
		BillboardGui0.Parent = chara
		BillboardGui0.LightInfluence = 1
		BillboardGui0.Size = UDim2.new(9, 0, 3, 0)
		BillboardGui0.Active = true
		BillboardGui0.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
		BillboardGui0.Adornee = head
		BillboardGui0.AlwaysOnTop = true
		BillboardGui0.StudsOffset = vect3(0, 2.5, 0)
		BillboardGui0.Name = "zachatboard"
		TextLabel1.Parent = BillboardGui0
		TextLabel1.Size = UDim2.new(1, 0, 1, 0)
		TextLabel1.Active = true
		TextLabel1.BackgroundColor = bc("Institutional white")
		TextLabel1.BackgroundColor3 = color(1, 1, 1)
		TextLabel1.BackgroundTransparency = 1
		TextLabel1.BorderColor = bc("Really black")
		TextLabel1.BorderColor3 = color(0, 0, 0)
		TextLabel1.BorderSizePixel = 0
		TextLabel1.Font = Enum.Font.Arcade
		TextLabel1.FontSize = Enum.FontSize.Size36
		TextLabel1.Text = ""
		TextLabel1.TextColor = bc("Institutional white")
		TextLabel1.TextColor3 = color(1, 1, 1)
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
		human.WalkSpeed = 0
		human.JumpPower = 0
		human.JumpHeight = 0
		anim = "taunt"
		frame = 1
		local randomquote = random(0,3)
		if user.Name == "ninjakaiden1" then
			if gender == "Male" then
				if randomquote <= 1 then
					chatter("What's the matter? I ain't got all day.")
					if voices then
						voice("scorpion/scorp_195-0.wav",2.5,1.05,head,0,false)
					end
				else
					chatter("You scared?")
					if voices then
						voice("scorpion/scorp_195-1.wav",2.5,1.05,head,0,false)
					end
				end
			else
				if randomquote <= 1 then
					chatter("Hm? Do you have anything to say?")
					if voices then
						sound(80334205518765,2.5,1.05,head,0,false)
					end
				else
					chatter("Just saying, I'm only good at fighting.")
					if voices then
						sound(5699425504,2.5,1.05,head,1,false)
					end
				end
			end
		else
			if randomquote <= 1 then
				chatter("Hm? Do you have anything to say?")
				if voices then
					sound(80334205518765,2.5,1.05,head,0,false)
				end
			else
				chatter("Just saying, I'm only good at fighting")
				if voices then
					sound(5699425504,2.5,1.05,head,1,false)
				end
			end
		end
		wait(0.1)
		frame = 2
		wait(0.1)
		frame = 3
		sound(99564490958733,7.5,1,torso,0,false)
		wait(0.75)
		frame = 4
		wait(0.5)
		sound(136224586361044,5,1,torso,0,false)
		frame = 5
		wait(0.3)
		human.WalkSpeed = ogws
		human.JumpPower = ogjp
		human.JumpHeight = ogjh
		attack = false
		frame = 1
	elseif emotetype == "Lose" then
		attack = true
		human.WalkSpeed = 0
		human.JumpPower = 0
		human.JumpHeight = 0
		anim = "lose"
		frame = 1
		wait(0.1)
		local randomquote = random(0,3)
		if randomquote <= 1 then
			if user.Name == "ninjakaiden1" then
				if gender == "Male" then
					chatter("I don't believe this.")
					if voices then
						voice("scorpion/scorp_170-0.wav",2.5,1.05,head,0,false)
					end
				else
					chatter("Wait, what?")
					if voices then
						sound(236170360,2.5,1.05,head,0,false)
					end
				end
			else
				chatter("Wait, what?")
				if voices then
					sound(236170360,2.5,1.05,head,0,false)
				end
			end
		else
			if user.Name == "ninjakaiden1" then
				if gender == "Male" then
					chatter("I messed up.")
					if voices then
						voice("scorpion/scorp_170-1.wav",2.5,1.05,head,0,false)
					end
				else
					chatter("Not good!")
					if voices then
						sound(184106919,2.5,1.05,head,0,false)
					end
				end
			else
				chatter("Not good!")
				if voices then
					sound(184106919,2.5,1.05,head,0,false)
				end
			end
		end
		frame = 2
		wait(2.5)
		human.WalkSpeed = ogws
		human.JumpPower = ogjp
		human.JumpHeight = ogjh
		attack = false
	elseif emotetype == "Win" then
		attack = true
		human.WalkSpeed = 0
		human.JumpPower = 0
		human.JumpHeight = 0
		local randomanim = random(0,3)
		if randomanim <= 1 then
			anim = "win"
			frame = 1
			local randomquote = random(0,2)	
			if user.Name == "ninjakaiden1" then
				if gender == "Male" then
					if randomquote == 0 then
						chatter("Tch... Is that the best you got?")
						if voices then
							voice("scorpion/scorp_181-0.wav",3,1.05,head,0,false)
						end
					elseif randomquote == 1 then
						chatter("See what you're dealing with now?")
						if voices then
							voice("scorpion/scorp_181-1.wav",3,1.05,head,0,false)
						end
					else
						chatter("How's that?")
						if voices then
							voice("scorpion/scorp_181-2.wav",3,1.05,head,0,false)
						end
					end
				else
					if randomquote == 0 then
						chatter("Enemy down.")
						if voices then
							sound(81277396339991,3,1.05,head,0,false)
						end
					elseif randomquote == 1 then
						chatter("Too weak.")
						if voices then
							sound(130621409302599,3,1.05,head,0,false)
						end
					else
						chatter("Idiot...")
						if voices then
							sound(923321477,3,1.05,head,0,false)
						end
					end
				end
			else
				if randomquote == 0 then
					chatter("Enemy down.")
					if voices then
						sound(81277396339991,3,1.05,head,0,false)
					end
				elseif randomquote == 1 then
					chatter("Too weak.")
					if voices then
						sound(130621409302599,3,1.05,head,0,false)
					end
				else
					chatter("Idiot...")
					if voices then
						sound(923321477,3,1.05,head,0,false)
					end
				end
			end
			wait(0.1)
			frame = 2
		else
			anim = "win2"
			frame = 1
			local randomquote = random(0,2)	
			if user.Name == "ninjakaiden1" then
				if gender == "Male" then
					if randomquote == 0 then
						chatter("Back as far as you go.")
						if voices then
							voice("scorpion/scorp_182-0.wav",3,1.05,head,0,false)
						end
					elseif randomquote == 1 then
						chatter("You better stay down, or you won't get up again.")
						if voices then
							voice("scorpion/scorp_182-1.wav",3,1.05,head,0,false)
						end
					else
						chatter("Close, but I never lose to you.")
						if voices then
							voice("scorpion/scorp_182-2.wav",3,1.05,head,0,false)
						end
					end
				else
					if randomquote == 0 then
						chatter("Bye bye!")
						if voices then
							sound(115044676553154,3,1.05,head,0,false)
						end
					elseif randomquote == 1 then
						chatter("LOL. Haha!")
						if voices then
							sound(8219574030,3,1.05,head,0,false)
						end
					else
						chatter("Give me a break...")
						if voices then
							sound(4178274935,3,1.05,head,0,false)
						end
					end
				end
			else
				if randomquote == 0 then
					chatter("Bye bye!")
					if voices then
						sound(115044676553154,3,1.05,head,0,false)
					end
				elseif randomquote == 1 then
					chatter("LOL. Haha!")
					if voices then
						sound(8219574030,3,1.05,head,0,false)
					end
				else
					chatter("Give me a break...")
					if voices then
						sound(4178274935,3,1.05,head,0,false)
					end
				end
			end
			wait(0.1)
			frame = 2
			wait(0.25)
			frame = 3
		end
		wait(2)
		human.WalkSpeed = ogws
		human.JumpPower = ogjp
		human.JumpHeight = ogjh
		attack = false
	elseif emotetype == "Intro" then
		attack = true
		human.WalkSpeed = 0
		human.JumpPower = 0
		human.JumpHeight = 0
		local randomanim = random(0,3)
		if randomanim <= 1 then
			anim = "spawn"
			frame = 1
			Weapon.Transparency = 0
			Cosmetic.Transparency = 1
			local randomquote = random(0,2)
			wait(2.5)
			if user.Name == "ninjakaiden1" then
				if gender == "Male" then
					if randomquote == 0 then
						chatter("Tch. What a pain in my sight.")
						if voices then
							voice("scorpion/scorp_191-0.wav",3,1.05,head,0,false)
						end
					elseif randomquote == 1 then
						chatter("You should have seen this coming, baka.")
						if voices then
							voice("scorpion/scorp_191-1.wav",3,1.05,head,0,false)
						end
					else
						chatter("Ugh... Give me a break...")
						if voices then
							voice("scorpion/scorp_191-2.wav",3,1.05,head,0,false)
						end
					end
				else
					if randomquote == 0 then
						chatter("Hey, hey!")
						if voices then
							sound(5004374539,3,1.05,head,0,false)
						end
					elseif randomquote == 1 then
						chatter("Time to shine!")
						if voices then
							sound(95101189991456,3,1.05,head,0,false)
						end
					else
						chatter("I got this!")
						if voices then
							sound(134581332976889,3,1.05,head,0,false)
						end
					end
				end
			else
				if randomquote == 0 then
					chatter("Hey, hey!")
					if voices then
						sound(5004374539,3,1.05,head,0,false)
					end
				elseif randomquote == 1 then
					chatter("Time to shine!")
					if voices then
						sound(95101189991456,3,1.05,head,0,false)
					end
				else
					chatter("I got this!")
					if voices then
						sound(134581332976889,3,1.05,head,0,false)
					end
				end
			end
			wait(1.5)
			frame = 2
			wait(1)
			frame = 6
			sound(444895479,3,1.05,Weapon,0,false)
			wait(0.005)
			frame = 5
			wait(0.005)
			frame = 3
			wait(1)
			frame = 4
			sound(130785407,4.5,1,Weapon,0,false)
			wait(0.1)
			Weapon.Transparency = 1
			Cosmetic.Transparency = 0
		else
			anim = "spawn2"
			frame = 1
			Weapon.Transparency = 0
			Cosmetic.Transparency = 1
			frame = 1
			wait(0.9)
			if user.Name == "ninjakaiden1" then
				if gender == "Male" then
					chatter("This ain't exactly a playground, you know.")
					if voices then
						sound1("playground.wav",3,1.05,head,0,false)
					end
				else
					chatter("Gonna beat you up!")
					if voices then
						sound(4958428608,3,1.05,head,0,false)
					end
				end
			else
				chatter("Gonna beat you up!")
				if voices then
					sound(4958428608,3,1.05,head,0,false)
				end
			end
			frame = 2
			sound(5989944913,3.5,1,Weapon,0,false)
			wait(0.2)
			frame = 3
			wait(0.2)
			frame = 4
			sound(5989940988,3.5,1,Weapon,0,false)
			wait(0.45)
			sound(9105467029,4.5,1,Weapon,0.182,false)	
			frame = 5
			wait(0.2)
			frame = 6
			wait(0.12)
			sound(130785407,4.5,1,Weapon,0,false)
			frame = 7
			wait(0.5)
			Weapon.Transparency = 1
			Cosmetic.Transparency = 0
		end
		human.WalkSpeed = ogws
		human.JumpPower = ogjp
		human.JumpHeight = ogjh
		attack = false
	elseif emotetype == "Fail" then
		attack = true
		human.WalkSpeed = 0
		human.JumpPower = 0
		human.JumpHeight = 0
		anim = "fail"
		frame = 1
		if user.Name == "ninjakaiden1" then
			if gender == "Male" then
				chatter("I messed up.")
				if voices then
					voice("scorpion/scorp_170-1.wav",2.5,1.05,head,0,false)
				end
			else
				chatter("Wait, what?")
				if voices then
					sound(236170360,2.5,1.05,head,0,false)
				end
			end
		else
			chatter("Wait, what?")
			if voices then
				sound(236170360,2.5,1.05,head,0,false)
			end
		end
		wait(2)
		human.WalkSpeed = ogws
		human.JumpPower = ogjp
		human.JumpHeight = ogjh
		attack = false	
	elseif emotetype == "Yes" then
		attack = true
		human.WalkSpeed = 0
		human.JumpPower = 0
		human.JumpHeight = 0
		anim = "yes"
		frame = 1
		wait(1)
		human.WalkSpeed = ogws
		human.JumpPower = ogjp
		human.JumpHeight = ogjh
		attack = false	
	elseif emotetype == "No" then
		attack = true
		human.WalkSpeed = 0
		human.JumpPower = 0
		human.JumpHeight = 0
		anim = "no"
		frame = 1
		wait(1)
		human.WalkSpeed = ogws
		human.JumpPower = ogjp
		human.JumpHeight = ogjh
		attack = false
	elseif emotetype == "Sit" then
		sitting = true
		attack = true
		human.WalkSpeed = 0
		human.JumpPower = 0
		human.JumpHeight = 0
		repeat 
			wait()
			anim = "sitground"
		until sitting == false
		attack = false
		human.WalkSpeed = ogws
		human.JumpPower = ogjp
		human.JumpHeight = ogjh
	elseif emotetype == "Waiting" then
		waitin = true
		attack = true
		human.WalkSpeed = 0
		human.JumpPower = 0
		human.JumpHeight = 0
		anim = "waiting"
		frame = 1
		repeat 
			wait()
			anim = "waiting"
		until waitin == false
		attack = false
		human.WalkSpeed = ogws
		human.JumpPower = ogjp
		human.JumpHeight = ogjh
	elseif emotetype == "Facepalm" then
		attack = true
		anim = "win"
		human.WalkSpeed = 0
		human.JumpPower = 0
		human.JumpHeight = 0
		frame = 1
		local randomquote = random(0,2)
		if user.Name == "ninjakaiden1" then
			if gender == "Male" then
				if randomquote == 0 then
					chatter("Tch. What a pain in my sight.")
					if voices then
						voice("scorpion/scorp_191-0.wav",3,1.05,head,0,false)
					end
				elseif randomquote == 1 then
					chatter("You should have seen this coming, baka.")
					if voices then
						voice("scorpion/scorp_191-1.wav",3,1.05,head,0,false)
					end
				else
					chatter("Ugh... Give me a break...")
					if voices then
						voice("scorpion/scorp_191-2.wav",3,1.05,head,0,false)
					end
				end
			else
				if randomquote == 0 then
					chatter("Hey, hey!")
					if voices then
						sound(5004374539,3,1.05,head,0,false)
					end
				elseif randomquote == 1 then
					chatter("Time to shine!")
					if voices then
						sound(95101189991456,3,1.05,head,0,false)
					end
				else
					chatter("I got this!")
					if voices then
						sound(134581332976889,3,1.05,head,0,false)
					end
				end
			end
		else
			if randomquote == 0 then
				chatter("Hey, hey!")
				if voices then
					sound(5004374539,3,1.05,head,0,false)
				end
			elseif randomquote == 1 then
				chatter("Time to shine!")
				if voices then
					sound(95101189991456,3,1.05,head,0,false)
				end
			else
				chatter("I got this!")
				if voices then
					sound(134581332976889,3,1.05,head,0,false)
				end
			end
		end
		wait(0.1)
		frame = 2
		wait(2)
		human.WalkSpeed = ogws
		human.JumpPower = ogjp
		human.JumpHeight = ogjh
		attack = false
	end
end

user.Chatted:connect(function(message)
	if message:sub(1,2) ~= "/e" then
		chatter(message)
	else
		if message:sub(1,7) == "/e chat" then
			canchat = not canchat
		end
		if message:sub(1,7) == "/e lose" and not (attack or guarding or hurt or human.Sit == true or sitting or waitin) then
			emote("Lose")
		end
		if message:sub(1,6) == "/e win" and not (attack or guarding or hurt or human.Sit == true or sitting or waitin) then
			emote("Win")
		end
		if message:sub(1,10) == "/e intro" and not (attack or guarding or hurt or human.Sit == true or sitting or waitin) then
			emote("Intro")
		end
		if message:sub(1,10) == "/e fail" and not (attack or guarding or hurt or human.Sit == true or sitting or waitin) then
			emote("Fail")
		end
		if message:sub(1,10) == "/e taunt" and not (attack or guarding or hurt or human.Sit == true or sitting or waitin) then
			emote("Taunt")
		end
		if message:sub(1,10) == "/e yes" and not (attack or guarding or hurt or human.Sit == true or sitting or waitin) then
			emote("Yes")
		end
		if message:sub(1,10) == "/e no" and not (attack or guarding or hurt or human.Sit == true or sitting or waitin) then
			emote("No")
		end
		if message:sub(1,11) == "/e facepalm" and not (attack or guarding or hurt or human.Sit == true or sitting or waitin) then
			emote("Facepalm")
		end
		if message:sub(1,9) == "/e voices" then
			voices = not voices
		end
		if message:sub(1,9) == "/e fix" then
			human.WalkSpeed = ogws
			human.JumpPower = ogjp
			human.JumpHeight = ogjh
			rt.Anchored = false
			attack = false
		end
	end
end)

--attacks

local moves = {
	["punch"] = function()
		--Punch
		if not (attack or guarding or hurt or human.Sit == true or sitting or waitin) then
			keycombo = ""
			if not inair then
				if not ducking then
					attack = true
					human.WalkSpeed = 0
					human.JumpPower = 0
					human.JumpHeight = 0
					if not moving then
						anim = "punch"
						frame = 1
						wait(0.1)
						local randomsound = random(0,9)
						if user.Name == "ninjakaiden1" then
							if gender == "Male" then
								if voices then
									if randomsound <= 2 then
										voice("scorpion/scorp_200-0.wav",3,1.05,head,0,false)
									elseif randomsound >= 7 then
										voice("scorpion/scorp_200-1.wav",3,1.05,head,0,false)
									elseif randomsound == 5 or randomsound == 6 then
										voice("scorpion/scorp_200-2.wav",3,1.05,head,0,false)
									end
								end
							else
								if voices then
									if randomsound <= 2 then
										sound(119204455949800,3,1.05,head,0,false)
									elseif randomsound >= 7 then
										sound(72932039412605,3,1.05,head,0,false)
									elseif randomsound == 5 or randomsound == 6 then
										sound(140089995568757,3,1.05,head,0,false)
									end
								end
							end
						else
							if voices then
								if randomsound <= 2 then
									sound(119204455949800,3,1.05,head,0,false)
								elseif randomsound >= 7 then
									sound(72932039412605,3,1.05,head,0,false)
								elseif randomsound == 5 or randomsound == 6 then
									sound(140089995568757,3,1.05,head,0,false)
								end
							end
						end
						sound(102467795158298,3,1,la,0,false)
						frame = 2
						magnitudedamage(6,"sphere", 0, 4.5, 153092249, 8, 1, rt,true,"normal","normal")
						wait(0.12)
						frame = 3
						wait(0.1)
					else
						anim = "fpunch"
						frame = 1
						local vel = new("BodyVelocity")
						vel.Parent = rt
						vel.MaxForce = vect3(math.huge,math.huge,math.huge)
						vel.Velocity = rt.CFrame.lookVector * 45
						debris:AddItem(vel,0.15)
						local randomsound = random(0,9)
						if user.Name == "ninjakaiden1" then
							if gender == "Male" then
								if voices then
									if randomsound <= 2 then
										voice("scorpion/scorp_210-0.wav",3,1.05,head,0,false)
									elseif randomsound >= 7 then
										voice("scorpion/scorp_210-1.wav",3,1.05,head,0,false)
									elseif randomsound == 3 or randomsound == 4 then
										voice("scorpion/scorp_210-2.wav",3,1.05,head,0,false)
									elseif randomsound == 5 or randomsound == 6 then
										voice("scorpion/scorp_210-3.wav",3,1.05,head,0,false)
									end
								end
							else
								if voices then
									if randomsound <= 2 then
										sound(119204455949800,3,1.05,head,0,false)
									elseif randomsound >= 7 then
										sound(72932039412605,3,1.05,head,0,false)
									else
										sound(140089995568757,3,1.05,head,0,false)
									end
								end
							end
						else
							if voices then
								if randomsound <= 2 then
									sound(119204455949800,3,1.05,head,0,false)
								elseif randomsound >= 7 then
									sound(72932039412605,3,1.05,head,0,false)
								else
									sound(140089995568757,3,1.05,head,0,false)
								end
							end
						end
						wait(0.15)
						sound(102467795158298,3,1,la,0,false)
						frame = 2
						magnitudedamage(8,"sphere", 0, 7.5, 153092249, 8, 1, rt,true,"normal","fpunch")
						wait(0.3)
						frame = 3
						wait(0.1)
					end
					human.WalkSpeed = ogws
					human.JumpPower = ogjp
					human.JumpHeight = ogjh
					attack = false	
				else
					attack = true
					human.WalkSpeed = 0
					human.JumpPower = 0
					human.JumpHeight = 0
					anim = "dpunch"
					frame = 1
					wait(0.1)
					local randomsound = random(0,9)
					if user.Name == "ninjakaiden1" then
						if gender == "Male" then
							if voices then
								if randomsound <= 2 then
									voice("scorpion/scorp_200-0.wav",3,1.05,head,0,false)
								elseif randomsound >= 7 then
									voice("scorpion/scorp_200-1.wav",3,1.05,head,0,false)
								elseif randomsound == 5 or randomsound == 6 then
									voice("scorpion/scorp_200-2.wav",3,1.05,head,0,false)
								end
							end
						else
							if voices then
								if randomsound <= 2 then
									sound(119204455949800,3,1.05,head,0,false)
								elseif randomsound >= 7 then
									sound(72932039412605,3,1.05,head,0,false)
								elseif randomsound == 5 or randomsound == 6 then
									sound(140089995568757,3,1.05,head,0,false)
								end
							end
						end
					else
						if voices then
							if randomsound <= 2 then
								sound(119204455949800,3,1.05,head,0,false)
							elseif randomsound >= 7 then
								sound(72932039412605,3,1.05,head,0,false)
							elseif randomsound == 5 or randomsound == 6 then
								sound(140089995568757,3,1.05,head,0,false)
							end
						end
					end
					sound(102467795158298,3,1,la,0,false)
					frame = 2
					magnitudedamage(6,"sphere", 0, 4.5, 153092249, 8, 1, rt,true,"normal","normal")
					wait(0.12)
					frame = 3
					wait(0.1)
					attack = false	
				end
			else
				attack = true
				anim = "apunch"
				frame = 1
				wait(0.1)
				local randomsound = random(0,9)
				if user.Name == "ninjakaiden1" then
					if gender == "Male" then
						if voices then
							if randomsound <= 2 then
								voice("scorpion/scorp_200-0.wav",3,1.05,head,0,false)
							elseif randomsound >= 7 then
								voice("scorpion/scorp_200-1.wav",3,1.05,head,0,false)
							elseif randomsound == 5 or randomsound == 6 then
								voice("scorpion/scorp_200-2.wav",3,1.05,head,0,false)
							end
						end
					else
						if voices then
							if randomsound <= 2 then
								sound(119204455949800,3,1.05,head,0,false)
							elseif randomsound >= 7 then
								sound(72932039412605,3,1.05,head,0,false)
							elseif randomsound == 5 or randomsound == 6 then
								sound(140089995568757,3,1.05,head,0,false)
							end
						end
					end
				else
					if voices then
						if randomsound <= 2 then
							sound(119204455949800,3,1.05,head,0,false)
						elseif randomsound >= 7 then
							sound(72932039412605,3,1.05,head,0,false)
						elseif randomsound == 5 or randomsound == 6 then
							sound(140089995568757,3,1.05,head,0,false)
						end
					end
				end
				sound(102467795158298,3,1,la,0,false)
				frame = 2
				partdamage(6,"sphere", 0, 6.25, 153092249, 8, 1, rt,true,"normal","normal",0.25)
				wait(0.12)
				frame = 3
				wait(0.1)
				attack = false	
			end
		end
	end;
	["kick"] = function()
		--Kick
		if not (attack or guarding or hurt or human.Sit == true or sitting or waitin) then
			keycombo = ""
			if not inair then
				if not ducking then
					attack = true
					human.WalkSpeed = 0
					human.JumpPower = 0
					human.JumpHeight = 0
					if not moving then
						anim = "kick"
						frame = 1
						wait(0.075)
						local randomsound = random(0,9)
						if user.Name == "ninjakaiden1" then
							if gender == "Male" then
								if voices then
									if randomsound <= 2 then
										voice("scorpion/scorp_200-0.wav",3,1.05,head,0,false)
									elseif randomsound >= 7 then
										voice("scorpion/scorp_200-1.wav",3,1.05,head,0,false)
									elseif randomsound == 5 or randomsound == 6 then
										voice("scorpion/scorp_200-2.wav",3,1.05,head,0,false)
									end
								end
							else
								if voices then
									if randomsound <= 2 then
										sound(119204455949800,3,1.05,head,0,false)
									elseif randomsound >= 7 then
										sound(72932039412605,3,1.05,head,0,false)
									elseif randomsound == 5 or randomsound == 6 then
										sound(140089995568757,3,1.05,head,0,false)
									end
								end
							end
						else
							if voices then
								if randomsound <= 2 then
									sound(119204455949800,3,1.05,head,0,false)
								elseif randomsound >= 7 then
									sound(72932039412605,3,1.05,head,0,false)
								elseif randomsound == 5 or randomsound == 6 then
									sound(140089995568757,3,1.05,head,0,false)
								end
							end
						end
						frame = 2
						wait(0.075)	
						sound(7013431508,3,1,rl,0,false)
						frame = 3
						magnitudedamage(6,"sphere", 0, 7.5, 153092249, 7.5, 1, rt,true,"normal","normal")
						wait(0.12)
						frame = 4
						wait(0.12)
						frame = 5
						wait(0.1)
					else
						anim = "fkick"
						frame = 1
						local vel = new("BodyVelocity")
						vel.Parent = rt
						vel.MaxForce = vect3(math.huge,math.huge,math.huge)
						vel.Velocity = rt.CFrame.lookVector * 15
						debris:AddItem(vel,0.2)
						wait(0.1)
						local randomsound = random(0,9)
						if user.Name == "ninjakaiden1" then
							if gender == "Male" then
								if randomsound <= 2 then
									chatter("Weak!")
								elseif randomsound >= 7 then
									chatter("Up here!")
								end
								if voices then
									if randomsound <= 2 then
										voice("scorpion/scorp_230-0.wav",3,1.05,head,0,false)
									elseif randomsound >= 7 then
										voice("scorpion/scorp_230-1.wav",3,1.05,head,0,false)
									end
								end
							else
								if voices then
									if randomsound <= 2 then
										sound(72932039412605,3,1.05,head,0,false)
									elseif randomsound >= 7 then
										sound(140089995568757,3,1.05,head,0,false)
									end
								end
							end
						else
							if voices then
								if randomsound <= 2 then
									sound(72932039412605,3,1.05,head,0,false)
								elseif randomsound >= 7 then
									sound(140089995568757,3,1.05,head,0,false)
								end
							end
						end
						frame = 2
						sound(6767836089,4.5,1,ll,0,false)
						wait(0.1)
						frame = 3
						magnitudedamage(8,"sphere", 0, 7.5, 153092238, 7.5, 1, rt,true,"normal","fkick")
						local vel = new("BodyVelocity")
						vel.Parent = rt
						vel.MaxForce = vect3(math.huge,math.huge,math.huge)
						vel.Velocity = rt.CFrame.lookVector * 25
						debris:AddItem(vel,0.25)
						wait(0.3)
						frame = 4
						magnitudedamage(8,"sphere", 0, 7.5, 153092213, 7.5, 1, rt,true,"normal","fkick")
						sound(119268338332839,4.5,1,ll,0,false)	
						wait(0.1)
						frame = 5
						sound(74054153559436,4.5,1,torso,0,false)	
						wait(0.15)
						frame = 6
						wait(0.1)
						frame = 7
						wait(0.1)
					end
					human.WalkSpeed = ogws
					human.JumpPower = ogjp
					human.JumpHeight = ogjh
					attack = false	
				else
					attack = true
					human.WalkSpeed = 0
					human.JumpPower = 0
					human.JumpHeight = 0
					anim = "dkick"
					frame = 1
					wait(0.1)
					local randomsound = random(0,9)
					if user.Name == "ninjakaiden1" then
						if gender == "Male" then
							if voices then
								if randomsound <= 2 then
									voice("scorpion/scorp_200-0.wav",3,1.05,head,0,false)
								elseif randomsound >= 7 then
									voice("scorpion/scorp_200-1.wav",3,1.05,head,0,false)
								elseif randomsound == 5 or randomsound == 6 then
									voice("scorpion/scorp_200-2.wav",3,1.05,head,0,false)
								end
							end
						else
							if voices then
								if randomsound <= 2 then
									sound(119204455949800,3,1.05,head,0,false)
								elseif randomsound >= 7 then
									sound(72932039412605,3,1.05,head,0,false)
								elseif randomsound == 5 or randomsound == 6 then
									sound(140089995568757,3,1.05,head,0,false)
								end
							end
						end
					else
						if voices then
							if randomsound <= 2 then
								sound(119204455949800,3,1.05,head,0,false)
							elseif randomsound >= 7 then
								sound(72932039412605,3,1.05,head,0,false)
							elseif randomsound == 5 or randomsound == 6 then
								sound(140089995568757,3,1.05,head,0,false)
							end
						end
					end
					sound(102467795158298,3,1,rl,0,false)
					frame = 2
					magnitudedamage(6,"sphere", 0, 4.5, 153092249, 7.5, 1, rt,true,"normal","normal")
					wait(0.12)
					frame = 3
					wait(0.1)
					human.WalkSpeed = ogws
					human.JumpPower = ogjp
					human.JumpHeight = ogjh
					attack = false	
				end
			else
				attack = true
				anim = "akick"
				frame = 1
				wait(0.1)
				local randomsound = random(0,9)
				if user.Name == "ninjakaiden1" then
					if gender == "Male" then
						if voices then
							if randomsound <= 2 then
								voice("scorpion/scorp_200-0.wav",3,1.05,head,0,false)
							elseif randomsound >= 7 then
								voice("scorpion/scorp_200-1.wav",3,1.05,head,0,false)
							elseif randomsound == 5 or randomsound == 6 then
								voice("scorpion/scorp_200-2.wav",3,1.05,head,0,false)
							end
						end
					else
						if voices then
							if randomsound <= 2 then
								sound(119204455949800,3,1.05,head,0,false)
							elseif randomsound >= 7 then
								sound(72932039412605,3,1.05,head,0,false)
							elseif randomsound == 5 or randomsound == 6 then
								sound(140089995568757,3,1.05,head,0,false)
							end
						end
					end
				else
					if voices then
						if randomsound <= 2 then
							sound(119204455949800,3,1.05,head,0,false)
						elseif randomsound >= 7 then
							sound(72932039412605,3,1.05,head,0,false)
						elseif randomsound == 5 or randomsound == 6 then
							sound(140089995568757,3,1.05,head,0,false)
						end
					end
				end
				sound(102467795158298,3,1,ll,0,false)
				frame = 2
				partdamage(6,"sphere", 0, 6.25, 153092249, 7.5, 1, rt,true,"normal","normal",0.25)
				wait(0.12)
				frame = 3
				wait(0.1)
				attack = false
			end
		end
	end;
	["guitar"] = function()
		--Guitar Swing
		if not (attack or guarding or hurt or human.Sit == true or sitting or waitin) then
			keycombo = ""
			if not inair then
				if not ducking then
					attack = true
					human.WalkSpeed = 0
					human.JumpPower = 0
					human.JumpHeight = 0
					if not moving then
						anim = "guitar"
						frame = 1
						wait(0.1)
						Cosmetic.Transparency = 1
						Weapon.Transparency = 0
						frame = 2
						wait(0.1)
						local randomsound = random(0,9)
						if user.Name == "ninjakaiden1" then
							if gender == "Male" then
								if voices then
									if randomsound <= 2 then
										voice("scorpion/scorp_200-0.wav",3,1.05,head,0,false)
									elseif randomsound >= 7 then
										voice("scorpion/scorp_200-1.wav",3,1.05,head,0,false)
									elseif randomsound == 5 or randomsound == 6 then
										voice("scorpion/scorp_200-2.wav",3,1.05,head,0,false)
									end
								end
							else
								if voices then
									if randomsound <= 2 then
										sound(119204455949800,3,1.05,head,0,false)
									elseif randomsound >= 7 then
										sound(72932039412605,3,1.05,head,0,false)
									elseif randomsound == 5 or randomsound == 6 then
										sound(140089995568757,3,1.05,head,0,false)
									end
								end
							end
						else
							if voices then
								if randomsound <= 2 then
									sound(119204455949800,3,1.05,head,0,false)
								elseif randomsound >= 7 then
									sound(72932039412605,3,1.05,head,0,false)
								elseif randomsound == 5 or randomsound == 6 then
									sound(140089995568757,3,1.05,head,0,false)
								end
							end
						end
						Trail.Enabled = true
						sound(3521528211,3,1,Weapon,0,false)
						frame = 3
						magnitudedamage(10,"sphere", 0, 7.5, 153092227, 5, 1, rt,true,"guitar","normal")
						wait(0.12)
						frame = 4
						wait(0.1)
						Trail.Enabled = false
						frame = 5
						wait(0.1)
						frame = 6
						sound(130785407,4.5,1,Weapon,0,false)
						wait(0.1)
						Cosmetic.Transparency = 0
						Weapon.Transparency = 1
					else
						anim = "fguitar"
						frame = 1
						wait(0.1)
						Cosmetic.Transparency = 1
						Weapon.Transparency = 0
						local randomsound = random(0,9)
						if user.Name == "ninjakaiden1" then
							if gender == "Male" then
								if randomsound >= 7 then
									chatter("SCOUNDREL!")
								elseif randomsound == 5 or randomsound == 6 then
									chatter("Eat it!")
								end
								if voices then
									if randomsound <= 2 then
										voice("scorpion/scorp_240-0.wav",3,1.05,head,0,false)
									elseif randomsound >= 7 then
										voice("scorpion/scorp_240-1.wav",3,1.05,head,0,false)
									elseif randomsound == 5 or randomsound == 6 then
										voice("scorpion/scorp_240-2.wav",3,1.05,head,0,false)
									end
								end
							else
								if voices then
									if randomsound <= 2 then
										sound(72932039412605,3,1.05,head,0,false)
									elseif randomsound >= 7 then
										sound(140089995568757,3,1.05,head,0,false)
									end
								end
							end
						else
							if voices then
								if randomsound <= 2 then
									sound(72932039412605,3,1.05,head,0,false)
								elseif randomsound >= 7 then
									sound(140089995568757,3,1.05,head,0,false)
								end
							end
						end
						local vel = new("BodyVelocity")
						vel.Parent = rt
						vel.MaxForce = vect3(math.huge,math.huge,math.huge)
						vel.Velocity = rt.CFrame.lookVector * 25
						debris:AddItem(vel,0.25)
						Trail.Enabled = true
						sound(3521528211,3,1,Weapon,0,false)
						frame = 2
						magnitudedamage(10,"sphere", 0, 7.5, 153092227, 7.5, 1, rt,true,"guitar","fguitar")
						wait(0.35)
						sound(3521528211,3,1,Weapon,0,false)
						frame = 3
						magnitudedamage(13,"sphere", 0.115, 7.5, 153092217, 7.5, 1, rt,true,"guitar","fguitar2")
						wait(0.35)
						frame = 4
						wait(0.1)
						Trail.Enabled = false
						frame = 5
						sound(130785407,4.5,1,Weapon,0,false)
						wait(0.1)
						Cosmetic.Transparency = 0
						Weapon.Transparency = 1
					end
					human.WalkSpeed = ogws
					human.JumpPower = ogjp
					human.JumpHeight = ogjh
					attack = false	
				else
					attack = true
					human.WalkSpeed = 0
					human.JumpPower = 0
					human.JumpHeight = 0
					anim = "dguitar"
					frame = 1
					Cosmetic.Transparency = 1
					Weapon.Transparency = 0
					wait(0.1)
					Trail.Enabled = true
					sound(3521528211,3,1,Weapon,0,false)
					frame = 2
					magnitudedamage(10,"sphere", 0, 7.5, 153092227, 5, 1, rt,true,"guitar","normal")
					wait(0.12)
					Trail.Enabled = false
					frame = 3
					sound(130785407,4.5,1,Weapon,0,false)
					wait(0.1)
					Cosmetic.Transparency = 0
					Weapon.Transparency = 1
					human.WalkSpeed = ogws
					human.JumpPower = ogjp
					human.JumpHeight = ogjh
					attack = false	
				end
			else
				attack = true
				anim = "aguitar"
				frame = 1
				Cosmetic.Transparency = 1
				Weapon.Transparency = 0
				wait(0.1)
				local randomsound = random(0,9)
				if user.Name == "ninjakaiden1" then
					if gender == "Male" then
						if voices then
							if randomsound <= 2 then
								voice("scorpion/scorp_200-0.wav",3,1.05,head,0,false)
							elseif randomsound >= 7 then
								voice("scorpion/scorp_200-1.wav",3,1.05,head,0,false)
							elseif randomsound == 5 or randomsound == 6 then
								voice("scorpion/scorp_200-2.wav",3,1.05,head,0,false)
							end
						end
					else
						if voices then
							if randomsound <= 2 then
								sound(119204455949800,3,1.05,head,0,false)
							elseif randomsound >= 7 then
								sound(72932039412605,3,1.05,head,0,false)
							elseif randomsound == 5 or randomsound == 6 then
								sound(140089995568757,3,1.05,head,0,false)
							end
						end
					end
				else
					if voices then
						if randomsound <= 2 then
							sound(119204455949800,3,1.05,head,0,false)
						elseif randomsound >= 7 then
							sound(72932039412605,3,1.05,head,0,false)
						elseif randomsound == 5 or randomsound == 6 then
							sound(140089995568757,3,1.05,head,0,false)
						end
					end
				end
				sound(3521528211,3,1,Weapon,0,false)
				Trail.Enabled = true
				frame = 2
				partdamage(10,"sphere", 0.115, 7.5, 153092217, 9, 1, rt,true,"guitar","normal",0.25)
				wait(0.1)
				frame = 3
				wait(0.1)
				frame = 4
				sound(130785407,4.5,1,Weapon,0,false)
				wait(0.1)
				Cosmetic.Transparency = 0
				Weapon.Transparency = 1
				Trail.Enabled = false
				attack = false
			end
		end
	end;
	["esperanda"] = function()
		--Esperanda Attack
		if not (attack or guarding or hurt or human.Sit == true or sitting or waitin) then
			keycombo = ""
			if not inair then
				if not ducking then
					attack = true
					human.WalkSpeed = 0
					human.JumpPower = 0
					human.JumpHeight = 0
					if not moving then
						anim = "esper"
						frame = 1
						wait(0.1)
						local randomsound = random(0,9)
						if user.Name == "ninjakaiden1" then
							if gender == "Male" then
								if randomsound >= 7 then
									chatter("SCOUNDREL!")
								elseif randomsound == 5 or randomsound == 6 then
									chatter("Eat it!")
								end
								if voices then
									if randomsound <= 2 then
										voice("scorpion/scorp_240-0.wav",3,1.05,head,0,false)
									elseif randomsound >= 7 then
										voice("scorpion/scorp_240-1.wav",3,1.05,head,0,false)
									elseif randomsound == 5 or randomsound == 6 then
										voice("scorpion/scorp_240-2.wav",3,1.05,head,0,false)
									end
								end
							else
								if voices then
									if randomsound <= 2 then
										sound(72932039412605,3,1.05,head,0,false)
									elseif randomsound >= 7 then
										sound(140089995568757,3,1.05,head,0,false)
									end
								end
							end
						else
							if voices then
								if randomsound <= 2 then
									sound(72932039412605,3,1.05,head,0,false)
								elseif randomsound >= 7 then
									sound(140089995568757,3,1.05,head,0,false)
								end
							end
						end
						sound(3521528211,3,1,Weapon,0,false)
						Cosmetic.Transparency = 1
						Weapon.Transparency = 0
						Trail.Enabled = true
						frame = 2
						magnitudedamage(12,"sphere", 0.115, 5, 153092217, 5, 1, rt,true,"guitar","fguitar")
						wait(0.12)
						frame = 3
						wait(0.15)
						sound(3521528211,3,1,Weapon,0,false)
						local randomu = random(0,9)
						if randomu <= 2 then
							sound(8641752150,2,1,Weapon,0,false)
						elseif randomu == 3 then
							sound(8641752058,2,1,Weapon,0,false)	
						elseif randomu == 4 then
							sound(8641751961,2,1,Weapon,0,false)	
						elseif randomu == 5 then
							sound(8641751865,2,1,Weapon,0,false)	
						elseif randomu >= 6 then
							sound(8641751761,2,1,Weapon,0,false)	
						end
						frame = 4
						magnitudedamage(12,"sphere", 0.115, 7.5, 153092217, 5, 1, rt,true,"guitar","knockdown")
						wait(0.25)
						Cosmetic.Transparency = 1
						Weapon.Transparency = 0
						Trail.Enabled = false
						frame = 5
						wait(0.1)
						frame = 6
						sound(130785407,4.5,1,Weapon,0,false)
						wait(0.1)
						Cosmetic.Transparency = 0
						Weapon.Transparency = 1
					else
						anim = "fesper"
						frame = 1
						wait(0.1)
						Cosmetic.Transparency = 1
						Weapon.Transparency = 0
						Trail.Enabled = true
						local randomsound = random(0,9)
						if user.Name == "ninjakaiden1" then
							if gender == "Male" then
								if randomsound >= 7 then
									chatter("SCOUNDREL!")
								elseif randomsound == 5 or randomsound == 6 then
									chatter("Eat it!")
								end
								if voices then
									if randomsound <= 2 then
										voice("scorpion/scorp_240-0.wav",3,1.05,head,0,false)
									elseif randomsound >= 7 then
										voice("scorpion/scorp_240-1.wav",3,1.05,head,0,false)
									elseif randomsound == 5 or randomsound == 6 then
										voice("scorpion/scorp_240-2.wav",3,1.05,head,0,false)
									end
								end
							else
								if voices then
									if randomsound <= 2 then
										sound(72932039412605,3,1.05,head,0,false)
									elseif randomsound >= 7 then
										sound(140089995568757,3,1.05,head,0,false)
									end
								end
							end
						else
							if voices then
								if randomsound <= 2 then
									sound(72932039412605,3,1.05,head,0,false)
								elseif randomsound >= 7 then
									sound(140089995568757,3,1.05,head,0,false)
								end
							end
						end
						frame = 2
						wait(0.1)
						frame = 3
						local vel = new("BodyVelocity")
						vel.Parent = rt
						vel.MaxForce = vect3(math.huge,math.huge,math.huge)
						vel.Velocity = rt.CFrame.lookVector * 5 + rt.CFrame.upVector * 25
						debris:AddItem(vel,0.15)
						wait(0.1)
						sound(3521528211,3,1,Weapon,0,false)
						frame = 4
						magnitudedamage(12,"sphere", 0.115, 7.5, 153092217, 5, 1, rt,true,"guitar","knockdown")
						wait(0.1)
						frame = 5
						local hitfloor = nil
						repeat 
							wait()
							hitfloor = raycast(rt.Position, (cframe(rt.Position, rt.Position + vect3(0, -1, 0))).lookVector, 4+human.HipHeight, chara)
						until hitfloor or human:GetState() == Enum.HumanoidStateType.Landed
						frame = 6
						wait(0.1)
						sound(130785407,4.5,1,Weapon,0,false)
						Cosmetic.Transparency = 0
						Weapon.Transparency = 1
						Trail.Enabled = false
					end
					human.WalkSpeed = ogws
					human.JumpPower = ogjp
					human.JumpHeight = ogjh
					attack = false	
				else
					attack = true
					human.WalkSpeed = 0
					human.JumpPower = 0
					human.JumpHeight = 0
					anim = "desper"
					frame = 1
					Cosmetic.Transparency = 1
					Weapon.Transparency = 0
					Trail.Enabled = true
					wait(0.1)
					local randomsound = random(0,9)
					if user.Name == "ninjakaiden1" then
						if gender == "Male" then
							if voices then
								if randomsound <= 2 then
									voice("scorpion/scorp_200-0.wav",3,1.05,head,0,false)
								elseif randomsound >= 7 then
									voice("scorpion/scorp_200-1.wav",3,1.05,head,0,false)
								elseif randomsound == 5 or randomsound == 6 then
									voice("scorpion/scorp_200-2.wav",3,1.05,head,0,false)
								end
							end
						else
							if voices then
								if randomsound <= 2 then
									sound(119204455949800,3,1.05,head,0,false)
								elseif randomsound >= 7 then
									sound(72932039412605,3,1.05,head,0,false)
								elseif randomsound == 5 or randomsound == 6 then
									sound(140089995568757,3,1.05,head,0,false)
								end
							end
						end
					else
						if voices then
							if randomsound <= 2 then
								sound(119204455949800,3,1.05,head,0,false)
							elseif randomsound >= 7 then
								sound(72932039412605,3,1.05,head,0,false)
							elseif randomsound == 5 or randomsound == 6 then
								sound(140089995568757,3,1.05,head,0,false)
							end
						end
					end
					sound(3521528211,3,1,Weapon,0,false)
					local randomu = random(0,9)
					if randomu <= 2 then
						sound(8641752150,2,1,Weapon,0,false)
					elseif randomu == 3 then
						sound(8641752058,2,1,Weapon,0,false)	
					elseif randomu == 4 then
						sound(8641751961,2,1,Weapon,0,false)	
					elseif randomu == 5 then
						sound(8641751865,2,1,Weapon,0,false)	
					elseif randomu >= 6 then
						sound(8641751761,2,1,Weapon,0,false)	
					end
					frame = 2
					magnitudedamage(10,"sphere", 0, 7.5, 153092249, 8, 1, rt,true,"guitar","knockdown1")
					wait(0.12)
					frame = 3
					wait(0.1)
					Cosmetic.Transparency = 0
					Weapon.Transparency = 1
					Trail.Enabled = false
					human.WalkSpeed = ogws
					human.JumpPower = ogjp
					human.JumpHeight = ogjh
					attack = false	
				end
			else
				attack = true
				anim = "aesper"
				frame = 1
				Cosmetic.Transparency = 1
				Weapon.Transparency = 0
				wait(0.1)
				local randomsound = random(0,9)
				if user.Name == "ninjakaiden1" then
					if gender == "Male" then
						if voices then
							if randomsound <= 2 then
								voice("scorpion/scorp_200-0.wav",3,1.05,head,0,false)
							elseif randomsound >= 7 then
								voice("scorpion/scorp_200-1.wav",3,1.05,head,0,false)
							elseif randomsound == 5 or randomsound == 6 then
								voice("scorpion/scorp_200-2.wav",3,1.05,head,0,false)
							end
						end
					else
						if voices then
							if randomsound <= 2 then
								sound(119204455949800,3,1.05,head,0,false)
							elseif randomsound >= 7 then
								sound(72932039412605,3,1.05,head,0,false)
							elseif randomsound == 5 or randomsound == 6 then
								sound(140089995568757,3,1.05,head,0,false)
							end
						end
					end
				else
					if voices then
						if randomsound <= 2 then
							sound(119204455949800,3,1.05,head,0,false)
						elseif randomsound >= 7 then
							sound(72932039412605,3,1.05,head,0,false)
						elseif randomsound == 5 or randomsound == 6 then
							sound(140089995568757,3,1.05,head,0,false)
						end
					end
				end
				sound(3521528211,3,1,Weapon,0,false)
				Trail.Enabled = true
				frame = 2
				partdamage(12,"sphere", 0.115, 7.5, 153092217, 9, 1, rt,true,"guitar","fguitar",0.25)
				wait(0.1)
				frame = 3
				wait(0.1)
				frame = 4
				Trail.Enabled = false
				sound(130785407,4.5,1,Weapon,0,false)
				wait(0.1)
				Cosmetic.Transparency = 0
				Weapon.Transparency = 1
				attack = false
			end
		end
	end;
	["teikani"] = function()
		--Teikani Slash
		if not (attack or guarding or hurt or human.Sit == true or sitting or waitin) then
			keycombo = ""
			if not inair then
				if not ducking then
					attack = true
					attack = true
					human.WalkSpeed = 0
					human.JumpPower = 0
					human.JumpHeight = 0
					anim = "teikani"
					frame = 1
					local randomsound = random(0,5)
					if user.Name == "ninjakaiden1" then
						if gender == "Male" then
							if randomsound == 2 then
								chatter("Take this!")
							elseif randomsound == 4 then
								chatter("BAKA!")
							elseif randomsound == 5 then
								chatter("GET LOST!")
							end
							if voices then
								if randomsound == 0 then
									voice("scorpion/scorp_203-0.wav",3,1.05,head,0,false)
								elseif randomsound == 1 then
									voice("scorpion/scorp_203-1.wav",3,1.05,head,0,false)
								elseif randomsound == 2 then
									voice("scorpion/scorp_203-2.wav",3,1.05,head,0,false)
								elseif randomsound == 3 then
									voice("scorpion/scorp_203-3.wav",3,1.05,head,0,false)
								elseif randomsound == 4 then
									voice("scorpion/scorp_204-0.wav",3,1.05,head,0,false)
								elseif randomsound == 5 then
									voice("scorpion/scorp_204-1.wav",3,1.05,head,0,false)
								end
							end
						else
							if randomsound == 5 then
								chatter("Too slow.")
							end
							if voices then
								if randomsound == 0 then
									sound(72932039412605,3,1.05,head,0,false)
								elseif randomsound == 1 then
									sound(140089995568757,3,1.05,head,0,false)
								elseif randomsound == 2 then
									sound(119376585618707,3,1.05,head,0,false)
								elseif randomsound == 3 then
									sound(121552139441143,3,1.05,head,0,false)
								elseif randomsound == 4 then
									sound(97961002752387,3,1.05,head,0,false)
								elseif randomsound == 5 then
									sound(109023574948978,3,1.05,head,0,false)
								end
							end
						end
					else
						if randomsound == 5 then
							chatter("Too slow.")
						end
						if voices then
							if randomsound == 0 then
								sound(72932039412605,3,1.05,head,0,false)
							elseif randomsound == 1 then
								sound(140089995568757,3,1.05,head,0,false)
							elseif randomsound == 2 then
								sound(119376585618707,3,1.05,head,0,false)
							elseif randomsound == 3 then
								sound(121552139441143,3,1.05,head,0,false)
							elseif randomsound == 4 then
								sound(97961002752387,3,1.05,head,0,false)
							elseif randomsound == 5 then
								sound(109023574948978,3,1.05,head,0,false)
							end
						end
					end
					local claw = new("Part")
					local clawm = new("SpecialMesh")
					local claww = new("Weld")
					claw.Name = "BluesteelClawd"
					claw.Parent = script
					claw.Size = vect3(0.001,0.001,0.001)
					claw.Transparency = 1
					claw.BottomSurface = Enum.SurfaceType.Smooth
					claw.TopSurface = Enum.SurfaceType.Smooth
					claw.FormFactor = Enum.FormFactor.Plate
					clawm.Parent = claw
					clawm.MeshId = "http://www.roblox.com/asset/?id=10681506"
					clawm.TextureId = "http://www.roblox.com/asset/?id=10681501"
					clawm.Scale = vect3(0.15,0.15,0.1)
					clawm.Offset = vect3(0, 0, -1)
					clawm.MeshType = Enum.MeshType.FileMesh
					claww.Parent = claw
					claww.C0 = cframe(-0.349999994, 0, -1.5, 1, 0, 0, 0, -4.37113883e-08, 1, 0, -1, -4.37113883e-08)
					claww.Part0 = claw
					claww.Part1 = ra
					local tween = tweens:Create(clawm, TweenInfo.new(0.45), {Scale = vect3(3, 3, 2), Offset = vect3(0, 0, 1)})
					tween:Play()
					local tweenA = tweens:Create(claw, TweenInfo.new(0.45), {Transparency = 0})
					tweenA:Play()
					sound(463010917,2.5,1,ra,0,false)
					wait(0.5)
					sound(158037267,3.5,0.5,ra,0,false)
					frame = 2
					magnitudedamage(18,"sphere", 0, 7.5, 153092274, 8, 1, rt,true,"slash","fguitar")
					wait(0.12)
					frame = 3
					wait(0.1)
					local tweenu = tweens:Create(claw, TweenInfo.new(0.25), {Transparency = 1})
					tweenu:Play()
					sound(6938611595, 2.5, 1, ra, 0, false)
					tweenu.Completed:Connect(function() claw:Destroy()end)
					human.WalkSpeed = ogws
					human.JumpPower = ogjp
					human.JumpHeight = ogjh
					attack = false	
				else
					attack = true
					human.WalkSpeed = 0
					human.JumpPower = 0
					human.JumpHeight = 0
					anim = "dteikani"
					frame = 1
					wait(0.1)
					local randomsound = random(0,9)
					if user.Name == "ninjakaiden1" then
						if gender == "Male" then
							if voices then
								if randomsound <= 2 then
									voice("scorpion/scorp_200-0.wav",3,1.05,head,0,false)
								elseif randomsound >= 7 then
									voice("scorpion/scorp_200-1.wav",3,1.05,head,0,false)
								elseif randomsound == 5 or randomsound == 6 then
									voice("scorpion/scorp_200-2.wav",3,1.05,head,0,false)
								end
							end
						else
							if voices then
								if randomsound <= 2 then
									sound(119204455949800,3,1.05,head,0,false)
								elseif randomsound >= 7 then
									sound(72932039412605,3,1.05,head,0,false)
								elseif randomsound == 5 or randomsound == 6 then
									sound(140089995568757,3,1.05,head,0,false)
								end
							end
						end
					else
						if voices then
							if randomsound <= 2 then
								sound(119204455949800,3,1.05,head,0,false)
							elseif randomsound >= 7 then
								sound(72932039412605,3,1.05,head,0,false)
							elseif randomsound == 5 or randomsound == 6 then
								sound(140089995568757,3,1.05,head,0,false)
							end
						end
					end
					sound(5835032207,3,1,torso,0,false)
					frame = 2
					magnitudedamage(14,"sphere", 0, 4.5, 621571142, 8, 1, rt,true,"normal","trip")
					wait(0.12)
					frame = 3
					wait(0.1)
					human.WalkSpeed = ogws
					human.JumpPower = ogjp
					human.JumpHeight = ogjh
					attack = false	
				end
			else
				attack = true
				anim = "ateikani"
				frame = 1
				Cosmetic.Transparency = 1
				Weapon.Transparency = 0
				local randomsound = random(0,9)
				if user.Name == "ninjakaiden1" then
					if gender == "Male" then
						if randomsound <= 2 then
							chatter("Go!")
						elseif randomsound >= 7 then
							chatter("Belial Edge!")
						else
							chatter("Here I go!")
						end
						if voices then
							if randomsound <= 2 then
								voice("scorpion/scorp_620-0.wav",3,1.05,head,0,false)
							elseif randomsound >= 7 then
								voice("scorpion/scorp_620-1.wav",3,1.05,head,0,false)
							else
								voice("scorpion/scorp_620-2.wav",3,1.05,head,0,false)
							end
						end
					else
						if randomsound <= 2 then
							chatter("Eat this!")
						elseif randomsound >= 7 then
							chatter("Take this!")
						end
						if voices then
							if randomsound <= 2 then
								sound(122960152462925,3,1.05,head,0,false)
							elseif randomsound >= 7 then
								sound(5930263267,3,1.05,head,0,false)
							else
								sound(17681803832,7.5,1.05,head,0,false)
							end
						end
					end
				else
					if randomsound <= 2 then
						chatter("Eat this!")
					elseif randomsound >= 7 then
						chatter("Take this!")
					end
					if voices then
						if randomsound <= 2 then
							sound(122960152462925,3,1.05,head,0,false)
						elseif randomsound >= 7 then
							sound(5930263267,3,1.05,head,0,false)
						else
							sound(17681803832,7.5,1.05,head,0,false)
						end
					end
				end
				local slide = new("BodyPosition")
				slide.Parent = rt
				slide.MaxForce = vect3(math.huge,math.huge,math.huge)
				slide.D = 3000
				slide.Position = rt.CFrame * cframe(0,60,-45).Position
				human.PlatformStand = true
				wait(0.1)
				frame = 2
				wait(0.1)
				frame = 3
				Trail.Enabled = true
				slide.D = 2500
				slide.Position = rt.CFrame * cframe(0,-50,-100).Position
				debris:AddItem(slide,4.5)
				sound(1043228969,3.3,1,torso,0,false)
				local noland = true
				spawn(function()
					while noland do 
						partdamage(5, "sphere", 0, 10, 175024455, 7.5, 1, rt,true,"guitar","fguitar",0.075,"ateikani")
						wait(0.075)
					end
				end)
				local hitfloor = nil
				repeat 
					wait()
					hitfloor = raycast(rt.Position, (cframe(rt.Position, rt.Position + vect3(0, -1, 0))).lookVector, 4+human.HipHeight, chara)
				until hitfloor or human:GetState() == Enum.HumanoidStateType.Landed
				if slide ~= nil then
					slide:Destroy()
				end
				rt.Anchored = true
				noland = false
				human.PlatformStand = false
				spawn(function()
					for i = 1,10 do
						rt.CFrame = rt.CFrame + rt.CFrame.lookVector * 1
						wait(0.015)
					end
				end)
				frame = 4
				magnitudedamage(14,"sphere", 0, 7.5, 153092249, 6.5, 1, rt,true,"guitar","knockdown1")
				Trail.Enabled = false
				wait(0.15)
				rt.Anchored = false
				sound(130785407,4.5,1,Weapon,0,false)
				Cosmetic.Transparency = 0
				Weapon.Transparency = 1
				frame = 5
				wait(0.1)
				attack = false	
			end
		end
	end;
	["grab"] = function()
		--Grab Attack
		if not (attack or guarding or hurt or human.Sit == true or sitting or waitin) then
			keycombo = ""
			if not inair then
				attack = true
				human.WalkSpeed = 0
				human.JumpPower = 0
				human.JumpHeight = 0
				anim = "grab"
				frame = 1
				local grabbed = false
				local gv = nil
				local gvhum = nil
				local gvhead = nil
				local gvtorso = nil
				local function checkgrab()
					for i,v in pairs(workspace:GetDescendants()) do
						if v:FindFirstChildOfClass("Humanoid") and v ~= chara and not grabbed then
							local vhum = v:FindFirstChildOfClass("Humanoid")
							local vtorso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso") or v:FindFirstChild("HumanoidRootPart")
							local vhead = v:FindFirstChild("Head")
							if vtorso then
								local vdistance = (rt.Position - vtorso.Position).magnitude
								if vdistance <= 5 and vhum.Health > 0 then
									sound(153092304,3.25,1,vtorso,0,false)
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
					sound(3755636638,2.5,1.8,ra,0,false)
					local rng = random(0,5)
					if rng <= 3 then
						local randomsound = random(0,9)
						if user.Name == "ninjakaiden1" then
							if gender == "Male" then
								if randomsound <= 2 then
									chatter("Gah...")
								elseif randomsound >= 7 then
									chatter("Wha-?!")
								end
								if voices then
									if randomsound <= 2 then
										voice("scorpion/scorp_801-0.wav",3,1.05,head,0,false)
									elseif randomsound >= 7 then
										voice("scorpion/scorp_801-1.wav",3,1.05,head,0,false)
									end
								end
							else
								if randomsound <= 2 then
									chatter("Eh?")
								elseif randomsound >= 7 then
									chatter("What?")
								end
								if voices then
									if randomsound <= 2 then
										sound(83847366055125,3,1.05,head,2.325,false)
									elseif randomsound >= 7 then
										sound(89428544292125,3,1.05,head,0,false,true,0.325)
									end
								end
							end
						else
							if randomsound <= 2 then
								chatter("Eh?")
							elseif randomsound >= 7 then
								chatter("What?")
							end
							if voices then
								if randomsound <= 2 then
									sound(83847366055125,3,1.05,head,2.325,false)
								elseif randomsound >= 7 then
									sound(89428544292125,3,1.05,head,0,false,true,0.325)
								end
							end
						end
					end
					frame = 2
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
					weld.C0 = weld.C0 * cframe(0.25, 0, 0)
					frame = 1
					wait(0.075)
					frame = 2
					wait(0.5)
					if not holdings then
						anim = "graba"
						frame = 1
						Weapon.Transparency = 0
						Cosmetic.Transparency = 1
						Trail.Enabled = true
						weld.C0 = weld.C0:Lerp(cframe(-0.5, 0, 0.75) * angles(rad(-0), rad(0), rad(0)), 1)
						wait(0.025)
						if user.Name == "ninjakaiden1" then
							if gender == "Male" then
								chatter("This will hurt!")
								if voices then
									voice("scorpion/scorp_800-0.wav",3,1.05,head,0,false)
								end
							else
								chatter("Useless.")
								if voices then
									sound(79247244994293,3,1.05,head,0,false)
								end
							end
						else
							chatter("Useless.")
							if voices then
								sound(79247244994293,3,1.05,head,0,false)
							end
						end
						wait(0.075)
						frame = 2
						weld.C0 = weld.C0:Lerp(cframe(1.25, 2, -0.5) * angles(rad(-0), rad(0), rad(0)), 1)
						wait(1.25)
						sound(137463821,5,1.05,Weapon,0,false)
						local chance = random(0,10)
						if user.Name == "ninjakaiden1" then
							if chance == 0 then
								sound(108119385019346,3,1,Weapon,0,false)
							else
								sound(103167667606303,1,1,Weapon,0,false)
							end
						else
							if random(0,50) == 0 then
								sound(108119385019346,3,1,Weapon,0,false)
							else
								sound(103167667606303,1,1,Weapon,0,false)
							end
						end
						WeaponMesh.Scale = vect3(2,1,1)
						WeaponMesh.Offset = vect3(1,0,0)
						frame = 3
						weld.C0 = weld.C0:Lerp(cframe(1.25, 2, -0.5) * angles(rad(-0), rad(0), rad(0)), 1)
						debris:AddItem(weld,0.01)
						Trail.Enabled = false
						wait(0.001)
						local tween = tweens:Create(WeaponMesh, TweenInfo.new(0.55), {Scale = vect3(1,1,1), Offset = vect3(0,0,0)})
						tween:Play()
						grabpart:Destroy()
						gvhum.PlatformStand = true
						coroutine.wrap(function()
							wait(3)
							gvhum.PlatformStand = false
						end)()
						damage(gvhum, 18, 8701825353, 8.5, 1, gvhead, 0, "sphere")
						local randomu = random(0,9)
						if randomu <= 2 then
							sound(8641752150,2,1,Weapon,0,false)
						elseif randomu == 3 then
							sound(8641752058,2,1,Weapon,0,false)	
						elseif randomu == 4 then
							sound(8641751961,2,1,Weapon,0,false)	
						elseif randomu == 5 then
							sound(8641751865,2,1,Weapon,0,false)	
						elseif randomu >= 6 then
							sound(8641751761,2,1,Weapon,0,false)	
						end
						gvtorso.Velocity = rt.CFrame.lookVector*30 + rt.CFrame.upVector*75
						if user.Name == "ninjakaiden1" then
							if chance == 0 then
								instantkill(gv)
								gvtorso.Velocity = rt.CFrame.lookVector*100 + rt.CFrame.upVector*150
							end
						end
						wait(0.05)
						frame = 5
						wait(0.005)
						frame = 2
						wait(0.75)
						sound(130785407,4.5,1,Weapon,0,false)
						frame = 4
						rt.Anchored = false
						wait(0.1)
						Weapon.Transparency = 1
						Cosmetic.Transparency = 0
					else
						anim = "bgrab"
						frame = 1
						Weapon.Transparency = 0
						Cosmetic.Transparency = 1
						Trail.Enabled = true
						weld.C0 = weld.C0:Lerp(cframe(0.15, 0.25, 0.5) * angles(rad(-0), rad(0), rad(0)), 1)
						wait(0.025)
						if user.Name == "ninjakaiden1" then
							if gender == "Male" then
								chatter("This will hurt!")
								if voices then
									voice("scorpion/scorp_800-0.wav",3,1.05,head,0,false)
								end
							else
								chatter("Take that!")
								if voices then
									sound(103200460084925,3,1.05,head,0,false)
								end
							end
						else
							chatter("Take that!")
							if voices then
								sound(103200460084925,3,1.05,head,0,false)
							end
						end
						Trail.Enabled = false
						sound(112896373260430,2,1,ra,0,false)
						wait(0.075)
						Weapon.Transparency = 1
						Cosmetic.Transparency = 0
						frame = 2
						weld.C0 = weld.C0:Lerp(cframe(0, -2.5, -1) * angles(rad(90), rad(0), rad(-90)), 1)
						hiteffect("slam",gvtorso)
						sound(112444846023457, 3.5, 1, gvtorso, 0, false)
						wait(0.65)
						frame = 6
						weld.C0 = weld.C0:Lerp(cframe(-1, 2, -7.5) * angles(rad(-90), rad(0), rad(0)), 1)
						debris:AddItem(weld,0.01)
						sound(17577462807,3,1,ra,0,false)
						wait(0.001)
						frame = 3
						grabpart:Destroy()
						gvhum.PlatformStand = true
						coroutine.wrap(function()
							wait(3)
							gvhum.PlatformStand = false
						end)()
						gvtorso.Velocity = rt.CFrame.lookVector*-60
						coroutine.wrap(function()
							local hitfloor
							repeat 
								wait()
								hitfloor = raycast(gvtorso.Position, vect3(0, -1, 0), 2+gvhum.HipHeight, gv)
							until hitfloor or gvhum:GetState() == Enum.HumanoidStateType.Landed
							damage(gvhum, 14, 8255306220, 6.75, 1, gvhead, 0, "slam")
						end)()
						wait(0.75)
						frame = 4
						wait(0.1)
						frame = 5
						rt.Anchored = false
						wait(0.1)
						Weapon.Transparency = 1
						Cosmetic.Transparency = 0
						rt.CFrame = rt.CFrame * angles(0,rad(180),0)
						wait(0.005)
					end
				end
				human.WalkSpeed = ogws
				human.JumpPower = ogjp
				human.JumpHeight = ogjh
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
						if persona.Parent ~= nil and not persona.Parent:IsDescendantOf(chara) then
							if persona.Parent:FindFirstChildOfClass("Humanoid") and persona.Parent ~= chara and not grabbed then
								local humi = persona.Parent:FindFirstChildOfClass("Humanoid")
								local torsou = persona.Parent:FindFirstChild("HumanoidRootPart") or persona.Parent:FindFirstChild("Torso") or persona.Parent:FindFirstChild("UpperTorso")
								local headu = persona.Parent:FindFirstChild("Head")
								if torsou and humi.Health > 0 then
									sound(153092304,3.25,1,torsou,0,false)
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
									weld.C0 = cframe(0.75, 0, -3) * angles(0,rad(-180),0)
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
				sound(1295417556,3,1,torso,0,false)
				wait(0.135)
				if not grabbed then
					sound(3755636638,2.5,1.8,ra,0,false)
					frame = 1
					wait(0.425)
				else
					Part:Destroy()
					weld.C0 = cframe(0.75, 0, -3) * angles(0,rad(-180),0)
					rt.Anchored = true
					anim = "agrab"
					frame = 1
					wait(0.1)
					frame = 2
					rt.Anchored = false
					weld.C0 = weld.C0:Lerp(cframe(0, 0, -3) * angles(rad(0), rad(180), rad(-0)), 1)
					if user.Name == "ninjakaiden1" then
						if gender == "Male" then
							chatter("Eat it!")
							if voices then
								voice("scorpion/scorp_800-2.wav",3,1.05,head,0,false)
							end
						else
							if voices then
								sound(121552139441143,3,1.05,head,0,false)
							end
						end
					else
						if voices then
							sound(121552139441143,3,1.05,head,0,false)
						end
					end
					rt.Velocity = rt.CFrame.lookVector*60 + rt.CFrame.upVector*75
					local slide = new("BodyPosition")
					slide.Parent = rt
					slide.MaxForce = vect3(math.huge,math.huge,math.huge)
					slide.D = 3500
					slide.Position = rt.CFrame * cframe(0,100,-75).Position
					wait(0.3)
					frame = 3
					weld.C0 = weld.C0:Lerp(cframe(0, -0.75, -1.5) * angles(rad(0), rad(180), rad(-0)), 1)
					debris:AddItem(weld,0.01)
					slide.D = 2222
					sound(5835032207,3,1,torso,0,false)
					wait(0.01)
					gvhum.PlatformStand = true
					gvtorso.Velocity = rt.CFrame.lookVector*60 + rt.CFrame.upVector*75
					damage(gvhum, 12, 4810749120, 5, 1, gvhead, 0, "sphere")
					coroutine.wrap(function()
						wait(3)
						gvhum.PlatformStand = false
					end)()
					if user.Name == "ninjakaiden1" then
						if random(0,10) == 0 then
							instantkill(gv)
							sound2(108119385019346,3,1,rt,0)
							gvtorso.Velocity = rt.CFrame.lookVector*150 + rt.CFrame.upVector*75
						end
					end
					frame = 3
					debris:AddItem(slide,0.35)
					wait(0.5)
					frame = 4
					rt.Anchored = false
					wait(0.05)
				end
				attack = false
			end
		end
	end;
	["aura charge"] = function()
		--MP Charge
		if not (attack or guarding or hurt or human.Sit == true or sitting or waitin) then
			keycombo = ""
			if mp >= 500 then return end
			attack = true
			anim = "charge"
			frame = 1
			local randomsound = random(0,9)
			if user.Name == "ninjakaiden1" then
				if gender == "Male" then
					if not overheat then
						if randomsound <= 6 then
							chatter("Jerk!")
						elseif randomsound >= 7 then
							chatter("Buzz off!")
						end
						if voices then
							if randomsound <= 6 then
								voice("scorpion/scorp_8000-0.wav",3,1.05,head,0,false)
							elseif randomsound >= 7 then
								voice("scorpion/scorp_8000-1.wav",3,1.05,head,0,false)
							end
						end
					else
						chatter("P.Y.R.A. Engine: Engaged!")
						if voices then
							voice("scorpion/scorp_8000-2.wav",3,1.05,head,0,false)
						end
					end
				else
					if voices then
						if randomsound <= 6 then
							sound(108298137812721,3,1.05,head,0,false)
						elseif randomsound >= 7 then
							sound(17681803832,7.5,1.05,head,0,false)
						end
					end
				end
			else
				if voices then
					if randomsound <= 6 then
						sound(108298137812721,3,1.05,head,0,false)
					elseif randomsound >= 7 then
						sound(17681803832,7.5,1.05,head,0,false)
					end
				end
			end
			wait(0.1)
			rt.Anchored = true
			for i = 1,8 do
				rt.Position = rt.Position  + vect3(0,2.5,0)
				wait(0.01)
			end
			local ParticleEmitter0 = new("ParticleEmitter")
			local ParticleEmitter1 = new("ParticleEmitter")
			ParticleEmitter0.Name = "Aura"
			ParticleEmitter0.Parent = torso
			ParticleEmitter0.Color = ColorSequence.new(color(0, 0.6, 1),color(1, 1, 1))
			ParticleEmitter0.LightEmission = 1
			ParticleEmitter0.LightInfluence = 1.9500000476837158
			ParticleEmitter0.Texture = "rbxassetid://4506318595"
			ParticleEmitter0.Transparency = NumberSequence.new(0.9800000190734863,0.9800000190734863)
			ParticleEmitter0.ZOffset = -1
			ParticleEmitter0.Size = NumberSequence.new(4,4)
			ParticleEmitter0.Lifetime = NumberRange.new(1, 1)
			ParticleEmitter0.Rate = 9.900000262306711e+28
			ParticleEmitter1.Name = "Aura"
			ParticleEmitter1.Parent = torso
			ParticleEmitter1.LightEmission = 1
			ParticleEmitter1.LightInfluence = 1.9500000476837158
			ParticleEmitter1.Texture = "rbxassetid://4506318595"
			ParticleEmitter1.Transparency = NumberSequence.new(0.9800000190734863,0.9800000190734863)
			ParticleEmitter1.Size = NumberSequence.new(3,3)
			ParticleEmitter1.Lifetime = NumberRange.new(1, 1)
			ParticleEmitter1.Rate = 9.900000262306711e+28
			local electric = new("ParticleEmitter")
			electric.Name = "Electricity"
			electric.Parent = torso
			electric.Rotation = NumberRange.new(0, 360)
			electric.Color = ColorSequence.new(color(0, 1, 0.968627),color(0, 0.901961, 1))
			electric.LightEmission = 1
			electric.LightInfluence = 1
			electric.Texture = "rbxassetid://257173628"
			electric.ZOffset = 1
			electric.Lifetime = NumberRange.new(0.10000000149011612, 0.10000000149011612)
			electric.LockedToPart = true
			electric.Rate = 5
			electric.RotSpeed = NumberRange.new(3, 3)
			frame = 2
			--My sound function won't probably work well, so this is what I had to do instead.
			local snd = new("Sound")
			snd.Name = "AuraPart1"
			snd.SoundId = "rbxassetid://8627570021"
			snd.Volume = 2
			snd.Looped = true
			snd.Parent = torso
			snd:Play()
			local snd1 = new("Sound")
			snd1.Name = "AuraPart2"
			snd1.SoundId = "rbxassetid://7329185203"
			snd1.Volume = 1
			snd1.Looped = true
			snd1.Parent = torso
			snd1:Play()
			local snd2 = new("Sound")
			snd2.Name = "ElectricitySFX"
			snd2.SoundId = "rbxassetid://379557765"
			snd2.Volume = 1.5
			snd2.Looped = true
			snd2.Parent = torso
			snd2:Play()
			repeat
				mp = mp + random(1,3)
				wait(0.015)
			until not holdingy or mp >= 500
			if mp > 500 then
				mp = 500
			end
			frame = 3
			rt.Anchored = false
			ParticleEmitter0.Enabled = false
			ParticleEmitter1.Enabled = false
			electric.Enabled = false
			debris:AddItem(ParticleEmitter0,2)
			debris:AddItem(ParticleEmitter1,2)
			debris:AddItem(electric,2)
			snd:Destroy()
			snd1:Destroy()
			snd2:Destroy()
			wait(0.1)
			attack = false
		end
	end;
	["tsuzura"] = function()
		--Tsuzura-Insho-teki-ken
		if not (attack or guarding or hurt or human.Sit == true or sitting or waitin) then
			keycombo = ""
			attack = true
			human.WalkSpeed = 0
			human.JumpPower = 0
			human.JumpHeight = 0
			anim = "tsuzura"
			frame = 1
			local grabbed = false
			local gv = nil
			local gvhum = nil
			local gvhead = nil
			local gvtorso = nil
			local function checkgrab()
				for i,v in pairs(workspace:GetDescendants()) do
					if v:FindFirstChildOfClass("Humanoid") and v ~= chara and not grabbed then
						local vhum = v:FindFirstChildOfClass("Humanoid")
						local vtorso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso") or v:FindFirstChild("HumanoidRootPart")
						local vhead = v:FindFirstChild("Head")
						if vtorso then
							local vdistance = (rt.Position - vtorso.Position).magnitude
							if vdistance <= 5 and vhum.PlatformStand == true and vhum.Health > 0 then
								sound(153092304,3.25,1,vtorso,0,false)
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
			wait(0.05)
			if not grabbed then
				sound(3755636638,2.5,1.8,ra,0,false)
				local rng = random(0,5)
				if rng <= 3 then
					local randomsound = random(0,9)
					if user.Name == "ninjakaiden1" then
						if gender == "Male" then
							if randomsound <= 2 then
								chatter("Gah...")
							elseif randomsound >= 7 then
								chatter("Wha-?!")
							end
							if voices then
								if randomsound <= 2 then
									voice("scorpion/scorp_801-0.wav",3,1.05,head,0,false)
								elseif randomsound >= 7 then
									voice("scorpion/scorp_801-1.wav",3,1.05,head,0,false)
								end
							end
						else
							if randomsound <= 2 then
								chatter("Eh?")
							elseif randomsound >= 7 then
								chatter("What?")
							end
							if voices then
								if randomsound <= 2 then
									sound(83847366055125,3,1.05,head,2.325,false)
								elseif randomsound >= 7 then
									sound(89428544292125,3,1.05,head,0,false,true,0.325)
								end
							end
						end
					else
						if randomsound <= 2 then
							chatter("Eh?")
						elseif randomsound >= 7 then
							chatter("What?")
						end
						if voices then
							if randomsound <= 2 then
								sound(83847366055125,3,1.05,head,2.325,false)
							elseif randomsound >= 7 then
								sound(89428544292125,3,1.05,head,0,false,true,0.325)
							end
						end
					end
				end
				frame = 2
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
				weld.C0 = weld.C0 * cframe(-0.75, -2.5, -1.5) * angles(rad(90), rad(0), rad(0))
				frame = 1
				wait(0.075)
				frame = 2
				wait(0.5)
				anim = "tsuzurah"
				frame = 1
				weld.C0 = weld.C0:Lerp(cframe(-0.25, 2.5, -0.5) * angles(rad(-30), rad(0), rad(0)), 1)
				wait(0.025)
				if user.Name == "ninjakaiden1" then
					if gender == "Male" then
						if random(0,5) >= 3 then
							chatter("Beat it.")
							if voices then
								voice("scorpion/scorp_213-0.wav",3,1.05,head,0,false)
							end
						else
							chatter("Weak!")
							if voices then
								voice("scorpion/scorp_830-0.wav",3,1.05,head,0,false)
							end
						end
					else
						chatter("SHUT UP AND GET LOST!")
						if voices then
							sound(5845978470,3,1.05,head,0,false)
						end
					end
				else
					chatter("SHUT UP AND GET LOST!")
					if voices then
						sound(5845978470,3,1.05,head,0,false)
					end
				end
				wait(0.5)
				frame = 2
				weld.C0 = weld.C0:Lerp(cframe(-0.5, 0.5, 0.5) * angles(rad(-0), rad(0), rad(0)), 1)
				wait(0.125)
				frame = 3
				weld.C0 = weld.C0:Lerp(cframe(-0.5, -0.5, 1) * angles(rad(-0), rad(0), rad(0)), 1)
				debris:AddItem(weld,0.01)
				sound(8679732323,4.5,1,ra,0,false)
				wait(0.001)
				grabpart:Destroy()
				gvhum.PlatformStand = true
				coroutine.wrap(function()
					wait(3)
					gvhum.PlatformStand = false
				end)()
				hiteffect("blood",gvtorso)
				hiteffect("blood2",gvtorso)
				gvtorso.Velocity = rt.CFrame.lookVector*75
				damage(gvhum, 17, 8348699396, 8.5, 1, gvtorso, 0, "sphere")
				if user.Name == "ninjakaiden1" then
					if random(0,10) == 0 then
						instantkill(gv)
						sound2(108119385019346,3,1,ra,0)
						gvtorso.Velocity = rt.CFrame.lookVector*420
					end
				end
				wait(0.75)
				frame = 4
				rt.Anchored = false
				wait(0.1)
			end
			human.WalkSpeed = ogws
			human.JumpPower = ogjp
			human.JumpHeight = ogjh
			attack = false
		end
	end;
	["kasui"] = function()
		--Hyakuman-Kasui
		if not (attack or guarding or hurt or human.Sit == true or sitting or waitin) then
			keycombo = ""
			if user.Name ~= "ninjakaiden1" then if mp < 18 then return end
			else if mp < (18/4) then return end end
			if user.Name == "ninjakaiden1" then
				if overheat then
					mp = mp - (18/10)
				else
					mp = mp - (18/4)
				end
			else
				if overheat then
					mp = mp - (18/2)
				else
					mp = mp - 18
				end
			end
			attack = true
			human.WalkSpeed = 0
			human.JumpPower = 0
			human.JumpHeight = 0
			anim = "spike"
			frame = 1
			Weapon.Transparency = 0
			Cosmetic.Transparency = 1
			Trail.Enabled = true
			local randomquote = random(0,3)	
			if user.Name == "ninjakaiden1" then
				if gender == "Male" then
					if randomquote > 1 then
						chatter("Deadspike!")
						if voices then
							voice("scorpion/scorp_1400-0.wav",3,1.05,head,0,false)
						end
					else
						chatter("Crush!")
						if voices then
							voice("scorpion/scorp_1400-1.wav",3,1.05,head,0,false)
						end
					end
				else
					if randomquote > 1 then
						chatter("Uwaaaa!!")
						if voices then
							sound(7626950772,5,1.05,head,0,false)
						end
					else
						chatter("Time to use...... this!")
						if voices then
							sound(5930265174,3,1.05,head,0,false)
						end
					end
				end
			else
				if randomquote > 1 then
					chatter("Uwaaaa!!")
					if voices then
						sound(7626950772,5,1.05,head,0,false)
					end
				else
					chatter("Time to use...... this!")
					if voices then
						sound(5930265174,3,1.05,head,0,false)
					end
				end
			end
			wait(0.1)
			frame = 8
			wait(0.1)
			frame = 2
			wait(0.1)
			frame = 3
			wait(0.1)
			frame = 7
			sound(3624807031,5,1,Weapon,0,false)
			spawn(function()
				local maxspikes = random(9,18)
				for i = 1, maxspikes do
					wait(0.01)
					spawn(function()
						magnitudedamage(10, "sphere", 0, 5, 6603295565, 7.5, 1, rt,true,"slash2","spike")
						local spike = new("Part")
						local spikem = new("SpecialMesh")
						spike.Name = "Spike"
						spike.Parent = script
						spike.BottomSurface = Enum.SurfaceType.Weld
						spike.TopSurface = Enum.SurfaceType.Smooth
						spike.Locked = true
						spike.CanCollide = false
						spike.Anchored = true
						spikem.Parent = spike
						spikem.MeshId = "http://www.roblox.com/asset/?id=1033714"
						spikem.Scale = vect3(0.9, 4.8, 0.9)
						spikem.TextureId = "http://www.roblox.com/asset?id=39251676"
						spikem.MeshType = Enum.MeshType.FileMesh
						spike.CFrame = rt.CFrame * cframe(0,-5,-7.5)
						spike.CFrame = spike.CFrame  * angles(rad(random(-8,8)),rad(random(-8,8)),rad(random(-8,8)))
						local tween = tweens:Create(spike,TweenInfo.new(0.25,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{CFrame = spike.CFrame * cframe(0,7.5,0),Transparency = 0})
						local d = tweens:Create(spike,TweenInfo.new(1,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{CFrame = spike.CFrame * cframe(0,-15,-0),Transparency = 1})
						local meshtween = tweens:Create(spikem,TweenInfo.new(0.5,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Scale = vect3(0.5, 15, 0.5),Offset = vect3(0, 0, 0)})
						local transparency = tweens:Create(spike,TweenInfo.new(0.5,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Transparency = 1})
						meshtween:Play()
						tween:Play()
						sound(8389443538,6,1,spike,0,false)
						local hitbox = new("Part")
						hitbox.Parent = script
						hitbox.Anchored = true
						hitbox.CanCollide = false
						hitbox.Size = vect3(5, 11, 5)
						hitbox.BottomSurface = Enum.SurfaceType.Smooth
						hitbox.TopSurface = Enum.SurfaceType.Smooth
						hitbox.CFrame = rt.CFrame * cframe(0,0,-3)
						hitbox.Transparency = 1
						magnitudedamage(10, "sphere", 0, 7.5, 6603295565, 7.5, 1, hitbox,true,"slash2","spike")
						debris:AddItem(hitbox,0.15)
						wait(2.5)
						transparency:Play()
						d:Play()
						transparency.Completed:Connect(function() wait(0.75) spike.Transparency=1 spikem:Destroy() spike:Destroy()end)
					end)
				end
			end)
			wait(0.1)
			frame = 6
			wait(0.05)
			frame = 4
			wait(0.75)
			frame = 5
			wait(0.1)
			sound(130785407,4.5,1,Weapon,0,false)
			Trail.Enabled = false
			Weapon.Transparency = 1
			Cosmetic.Transparency = 0
			human.WalkSpeed = ogws
			human.JumpPower = ogjp
			human.JumpHeight = ogjh
			attack = false
		end
	end;
	["kyubey"] = function()
		--Kyubey-Madoka
		if not (attack or guarding or hurt or human.Sit == true or sitting or waitin) then
			keycombo = ""
			if user.Name ~= "ninjakaiden1" then if mp < 23 then return end
			else if mp < (23/4) then return end end
			if user.Name == "ninjakaiden1" then
				if overheat then
					mp = mp - (23/10)
				else
					mp = mp - (23/4)
				end
			else
				if overheat then
					mp = mp - (23/2)
				else
					mp = mp - 23
				end
			end
			attack = true
			human.WalkSpeed = 0
			human.JumpPower = 0
			human.JumpHeight = 0
			anim = "kyubey madoka"
			frame = 1
			Trail.Enabled = true
			Weapon.Transparency = 0
			Cosmetic.Transparency = 1
			local randomquote = random(0,5)	
			if user.Name == "ninjakaiden1" then
				if gender == "Male" then
					if randomquote <= 1 then
						chatter("Inferno Divider!")
						if voices then
							voice("scorpion/scorp_1300-0.wav",3,1.05,head,0,false)
						end
					elseif randomquote >= 4 then
						chatter("Pathetic!")
						if voices then
							voice("scorpion/scorp_1300-2.wav",3,1.05,head,0,false)
						end
					else
						chatter("You're in my way!")
						if voices then
							voice("scorpion/scorp_1300-1.wav",3,1.05,head,0,false)
						end
					end
				else
					if randomquote >= 3 then
						chatter("EAT THIS!!")
						if voices then
							sound(122960152462925,5,1.05,head,0,false)
						end
					else
						chatter("Here I go!")
						if voices then
							sound(100778479370366,3,1.05,head,0,false)
						end
					end
				end
			else
				if randomquote >= 3 then
					chatter("EAT THIS!!")
					if voices then
						sound(122960152462925,5,1.05,head,0,false)
					end
				else
					chatter("Here I go!")
					if voices then
						sound(100778479370366,3,1.05,head,0,false)
					end
				end
			end
			sound(4678959,5,0.75,rt,0,false)
			wait(0.068)
			frame = 2
			wait(0.068)
			frame = 3
			local jumppart = new("Part")
			jumppart.Parent = script
			jumppart.Transparency = 0
			jumppart.Size = vect3(0.001,0.001,0.001)
			jumppart.Anchored = true
			jumppart.BottomSurface = Enum.SurfaceType.Smooth
			jumppart.BrickColor = bc("White")
			jumppart.CanCollide = false
			jumppart.TopSurface = Enum.SurfaceType.Smooth
			jumppart.CFrame = rt.CFrame * cframe(0,-1.5,0)
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
			sound(940938624,4.5,0.8,jumppart,0,false)
			local bpos = new("BodyPosition")
			bpos.Parent = rt
			bpos.MaxForce = vect3(math.huge,math.huge,math.huge)
			bpos.D = 1499
			bpos.Position = rt.CFrame * cframe(0,60,-22.5).Position
			local guitarflame = Instance.new("ParticleEmitter")
			guitarflame.Name = "Flame"
			guitarflame.Parent = Weapon
			guitarflame.Speed = NumberRange.new(2, 2)
			guitarflame.Rotation = NumberRange.new(-180, 180)
			guitarflame.Color = ColorSequence.new(color(1, 0.494118, 0.239216),color(1, 0.572549, 0.223529))
			guitarflame.LightEmission = 0.75
			guitarflame.Texture = "http://www.roblox.com/asset/?id=304437537"
			guitarflame.Transparency = NumberSequence.new(1,0.5,0.25,0.25,0.5,1)
			guitarflame.Size = NumberSequence.new(1.5,0.5624997615814209)
			guitarflame.Acceleration = vect3(0, 2.5, 0)
			guitarflame.Lifetime = NumberRange.new(1, 1.125)
			guitarflame.Rate = 500
			guitarflame.RotSpeed = NumberRange.new(-200, 200)
			local guitarflame2 = new("ParticleEmitter")
			local guitarfl = new("SurfaceLight")
			guitarflame2.Name = "Sparks"
			guitarflame2.Parent = Weapon
			guitarflame2.Speed = NumberRange.new(2, 3)
			guitarflame2.Rotation = NumberRange.new(-180, 180)
			guitarflame2.Color = ColorSequence.new(color(1, 0.72549, 0.482353),color(1, 0.72549, 0.482353))
			guitarflame2.LightEmission = 0.5
			guitarflame2.Texture = "http://www.roblox.com/asset/?id=301261210"
			guitarflame2.Transparency = NumberSequence.new(1,0,0,1)
			guitarflame2.Size = NumberSequence.new(0,0.07500000298023224,0.02500000037252903)
			guitarflame2.Acceleration = Vector3.new(0, 2.5, 0)
			guitarflame2.Lifetime = NumberRange.new(1, 3)
			guitarflame2.Rate = 50
			guitarflame2.SpreadAngle = vect2(22.5, 22.5)
			guitarflame2.VelocitySpread = 22.5
			guitarfl.Parent = Weapon
			guitarfl.Color = color(1, 0.639216, 0.227451)
			guitarfl.Face = Enum.NormalId.Top
			guitarfl.Angle = 135
			local boom = new("Explosion")
			boom.Parent = workspace
			boom.Position = Weapon.Position
			boom.BlastRadius = 0
			boom.BlastPressure = 0
			sound(2692477,6.33,0.325,Weapon,0,false)
			spawn(function()
				sound(8956218288,3,0.9,Weapon,0,false)
				wait(0.2)
				sound(1598682218,3.5,0.75,Weapon,0,false)
			end)
			spawn(function()
				for i = 1,10 do
					magnitudedamage(5, "sphere", 0, 10, 101223840807091, 7.5, 1, rt,true,"guitar2","kyubey")
					wait(0.06)
				end
			end)
			wait(0.45)
			frame = 4
			wait(0.1)
			frame = 5
			wait(0.1)
			bpos:Destroy()
			guitarflame.Enabled = false
			guitarflame2.Enabled = false
			guitarfl:Destroy()
			debris:AddItem(guitarflame,1.6)
			debris:AddItem(guitarflame2,1.6)
			jump.Enabled = false
			debris:AddItem(jumppart,1.5)
			--Margatroid
			if holdingz or holdingc then
				anim = "margatroid"
				frame = 1
				Trail.Enabled = false
				local bpos = new("BodyPosition")
				bpos.Parent = rt
				bpos.MaxForce = vect3(math.huge,math.huge,math.huge)
				bpos.D = 1750
				bpos.Position = rt.CFrame * cframe(0,15,0).Position
				wait(0.1)
				sound(130785407,4.5,1,Weapon,0,false)
				Trail.Enabled = false
				Weapon.Transparency = 1
				Cosmetic.Transparency = 0
				frame = 2
				wait(0.1)
				sound(8679732323,4.5,1,la,0,false)
				magnitudedamage(15, "sphere", 0, 10, 77177116417959, 7.5, 1, rt,true,"normal","margatroid")
				frame = 3
				wait(0.1)
				bpos:Destroy()
				frame = 4
				wait(0.1)
				frame = 5
				--Sawatari
				if holdingc then
					wait(0.1)
					local randomquote = random(0,5)	
					if user.Name == "ninjakaiden1" then
						if gender == "Male" then
							if randomquote <= 1 then
								chatter("Break!")
								if voices then
									voice("scorpion/scorp_1310-0.wav",3,1.05,head,0,false)
								end
							elseif randomquote >= 4 then
								chatter("Stay down!")
								if voices then
									voice("scorpion/scorp_1310-2.wav",3,1.05,head,0,false)
								end
							else
								--*insert funny Star Glitcher joke*
								chatter("SHATTER!")
								if voices then
									voice("scorpion/scorp_1310-1.wav",3,1.05,head,0,false)
								end
							end
						else
							if randomquote >= 3 then
								if voices then
									sound(140089995568757,5,1.05,head,0,false)
								end
							else
								if voices then
									sound(72932039412605,3,1.05,head,0,false)
								end
							end
						end
					else
						if randomquote >= 3 then
							if voices then
								sound(140089995568757,5,1.05,head,0,false)
							end
						else
							if voices then
								sound(72932039412605,3,1.05,head,0,false)
							end
						end
					end
					anim = "sawatari"
					frame = 1
					local bpos = new("BodyPosition")
					bpos.Parent = rt
					bpos.MaxForce = vect3(math.huge,math.huge,math.huge)
					bpos.D = 1750
					bpos.Position = rt.CFrame * cframe(0,20,0).Position
					sound(115832447005485,4.5,1,ll,0,false)
					wait(0.1)
					frame = 2
					wait(0.1)
					partdamage(19, "sphere", 0, 10, 8348700441, 7.5, 1, rt,true,"normal","sawatari",0.175,"sawatari")
					frame = 3
					wait(0.175)
					bpos:Destroy()
					frame = 4
					wait(0.1)
					frame = 5
					--Noel Vermillion
				elseif holdingz then
					wait(0.1)
					local randomquote = random(0,5)	
					if user.Name == "ninjakaiden1" then
						if gender == "Male" then
							if randomquote <= 1 then
								chatter("Break!")
								if voices then
									voice("scorpion/scorp_1310-0.wav",3,1.05,head,0,false)
								end
							elseif randomquote >= 4 then
								chatter("Stay down!")
								if voices then
									voice("scorpion/scorp_1310-2.wav",3,1.05,head,0,false)
								end
							else
								--*insert funny Star Glitcher joke*
								chatter("SHATTER!")
								if voices then
									voice("scorpion/scorp_1310-1.wav",3,1.05,head,0,false)
								end
							end
						else
							if randomquote >= 3 then
								if voices then
									sound(140089995568757,5,1.05,head,0,false)
								end
							else
								if voices then
									sound(72932039412605,3,1.05,head,0,false)
								end
							end
						end
					else
						if randomquote >= 3 then
							if voices then
								sound(140089995568757,5,1.05,head,0,false)
							end
						else
							if voices then
								sound(72932039412605,3,1.05,head,0,false)
							end
						end
					end
					anim = "noel"
					frame = 1
					local bpos = new("BodyPosition")
					bpos.Parent = rt
					bpos.MaxForce = vect3(math.huge,math.huge,math.huge)
					bpos.D = 1750
					bpos.Position = rt.CFrame * cframe(0,20,0).Position
					wait(0.245)
					sound(112896373260430,4.5,1,ra,0,false)
					magnitudedamage(23, "sphere", 0, 10, 8348702045, 7.5, 1, rt,true,"normal","dtl")
					frame = 2
					wait(0.125)
					bpos:Destroy()
					wait(0.175)
					bpos:Destroy()
					frame = 3
					wait(0.1)
					--random chance to use either Sawatari or Noel Vermillion if both Z and C are pressed
				elseif holdingc and holdingz then
					if random(0,5) <= 2 then
						wait(0.1)
						local randomquote = random(0,5)	
						if user.Name == "ninjakaiden1" then
							if gender == "Male" then
								if randomquote <= 1 then
									chatter("Break!")
									if voices then
										voice("scorpion/scorp_1310-0.wav",3,1.05,head,0,false)
									end
								elseif randomquote >= 4 then
									chatter("Stay down!")
									if voices then
										voice("scorpion/scorp_1310-2.wav",3,1.05,head,0,false)
									end
								else
									--*insert funny Star Glitcher joke*
									chatter("SHATTER!")
									if voices then
										voice("scorpion/scorp_1310-1.wav",3,1.05,head,0,false)
									end
								end
							else
								if randomquote >= 3 then
									if voices then
										sound(140089995568757,5,1.05,head,0,false)
									end
								else
									if voices then
										sound(72932039412605,3,1.05,head,0,false)
									end
								end
							end
						else
							if randomquote >= 3 then
								if voices then
									sound(140089995568757,5,1.05,head,0,false)
								end
							else
								if voices then
									sound(72932039412605,3,1.05,head,0,false)
								end
							end
						end
						anim = "sawatari"
						frame = 1
						local bpos = new("BodyPosition")
						bpos.Parent = rt
						bpos.MaxForce = vect3(math.huge,math.huge,math.huge)
						bpos.D = 1750
						bpos.Position = rt.CFrame * cframe(0,20,0).Position
						sound(115832447005485,4.5,1,ll,0,false)
						wait(0.1)
						frame = 2
						wait(0.1)
						magnitudedamage(19, "sphere", 0, 10, 8348700441, 7.5, 1, rt,true,"normal","sawatari")
						frame = 3
						wait(0.175)
						bpos:Destroy()
						frame = 4
						wait(0.1)
						frame = 5
					else
						wait(0.1)
						local randomquote = random(0,5)	
						if user.Name == "ninjakaiden1" then
							if gender == "Male" then
								if randomquote <= 1 then
									chatter("Break!")
									if voices then
										voice("scorpion/scorp_1310-0.wav",3,1.05,head,0,false)
									end
								elseif randomquote >= 4 then
									chatter("Stay down!")
									if voices then
										voice("scorpion/scorp_1310-2.wav",3,1.05,head,0,false)
									end
								else
									--*insert funny Star Glitcher joke*
									chatter("SHATTER!")
									if voices then
										voice("scorpion/scorp_1310-1.wav",3,1.05,head,0,false)
									end
								end
							else
								if randomquote >= 3 then
									if voices then
										sound(140089995568757,5,1.05,head,0,false)
									end
								else
									if voices then
										sound(72932039412605,3,1.05,head,0,false)
									end
								end
							end
						else
							if randomquote >= 3 then
								if voices then
									sound(140089995568757,5,1.05,head,0,false)
								end
							else
								if voices then
									sound(72932039412605,3,1.05,head,0,false)
								end
							end
						end
						anim = "noel"
						frame = 1
						local bpos = new("BodyPosition")
						bpos.Parent = rt
						bpos.MaxForce = vect3(math.huge,math.huge,math.huge)
						bpos.D = 1750
						bpos.Position = rt.CFrame * cframe(0,20,0).Position
						wait(0.245)
						sound(112896373260430,4.5,1,ra,0,false)
						magnitudedamage(23, "sphere", 0, 10, 8348702045, 7.5, 1, rt,true,"normal","dtl")
						frame = 2
						wait(0.125)
						bpos:Destroy()
						wait(0.175)
						bpos:Destroy()
						frame = 3
						wait(0.1)
					end
				else
					sound(130785407,4.5,1,Weapon,0,false)
					Trail.Enabled = false
					Weapon.Transparency = 1
					Cosmetic.Transparency = 0
					wait(0.1)
					anim = "fall"
				end
			else
				sound(130785407,4.5,1,Weapon,0,false)
				Trail.Enabled = false
				Weapon.Transparency = 1
				Cosmetic.Transparency = 0
				wait(0.1)
				anim = "fall"	
			end
			human.WalkSpeed = ogws
			human.JumpPower = ogjp
			human.JumpHeight = ogjh
			attack = false
		end
	end;
	["amami"] = function()
		--Amami-Sutoraiku
		if not (attack or guarding or hurt or human.Sit == true or sitting or waitin) then
			keycombo = ""
			if user.Name ~= "ninjakaiden1" then if mp < 36 then return end
			else if mp < (36/4) then return end end
			if user.Name == "ninjakaiden1" then
				if overheat then
					mp = mp - (36/10)
				else
					mp = mp - (36/4)
				end
			else
				if overheat then
					mp = mp - (36/2)
				else
					mp = mp - 36
				end
			end
			attack = true
			human.WalkSpeed = 0
			human.JumpPower = 0
			human.JumpHeight = 0
			anim = "haruka amami"
			frame = 1
			local randomquote = random(0,3)	
			if user.Name == "ninjakaiden1" then
				if gender == "Male" then
					chatter("Hell's Fang!")
					if randomquote > 1 then
						if voices then
							voice("scorpion/scorp_1001-0.wav",3,1.05,head,0,false)
						end
					else
						--the only Ragna voiceclip uploaded to ROBLOX...
						if voices then
							sound(4580590640,3.5,1.05,head,0,false)
						end
					end
				else
					if randomquote > 1 then
						chatter("I'll beat you up!")
						if voices then
							sound(5930264150,5,1.05,head,0,false)
						end
					else
						chatter("Take this!")
						if voices then
							sound(5930263267,3,1.05,head,0,false)
						end
					end
				end
			else
				if randomquote > 1 then
					chatter("I'll beat you up!")
					if voices then
						sound(5930264150,5,1.05,head,0,false)
					end
				else
					chatter("Take this!")
					if voices then
						sound(5930263267,3,1.05,head,0,false)
					end
				end
			end
			wait(0.25)
			local bpos = new("BodyPosition")
			bpos.Parent = rt
			bpos.MaxForce = vect3(math.huge,math.huge,math.huge)
			bpos.D = 1750
			bpos.Position = rt.CFrame * cframe(0,0,-75).Position
			frame = 2
			local firesound = new("Sound")
			firesound.SoundId = "rbxassetid://269252174"
			firesound.Volume = 5
			firesound.Looped = true
			firesound.Parent = la
			firesound:Play()
			sound(698224146,4.5,1,la,0,false)
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
			local attacking = true
			spawn(function()
				while attacking do 
					magnitudedamage(5, "sphere", 0, 11.5, 101223840807091, 7.5, 1, rt,true,"normal","amami")
					wait(0.1)
				end
			end)
			wait(0.75)
			attacking = false
			bpos.D = 3500
			frame = 3
			effect.Enabled = false
			flames.Enabled = false
			firesound:Destroy()
			debris:AddItem(effect,3)
			debris:AddItem(flames,1.6)
			wait(0.3)
			--BIGBANG
			bpos:Destroy()
			if holdingz and mp >= 40 then
				if user.Name == "ninjakaiden1" then
					if overheat then
						mp = mp - (40/10)
					else
						mp = mp - (40/4)
					end
				else
					if overheat then
						mp = mp - (40/2)
					else
						mp = mp - 40
					end
				end
				anim = "bigbang"
				frame = 1
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
				if user.Name == "ninjakaiden1" then
					if gender == "Male" then
						chatter("Daaahhh!!")
						if voices then
							voice("scorpion/scorp_1001-2.wav",3,1.05,head,0,false)
						end
					else
						chatter("Bloom Trigger!!")
						if voices then
							sound(4580669557,5,1.05,head,0,false)
						end
					end
				else
					chatter("Bloom Trigger!!")
					if voices then
						sound(4580669557,5,1.05,head,0,false)
					end
				end
				wait(0.125)
				frame = 4
				wait(0.125)
				frame = 5
				wait(0.045)
				frame = 2
				local exp = new("Part")
				exp.Parent = script
				exp.Size = vect3(0.001,0.001,0.001)
				exp.Locked = true
				exp.CanCollide = false
				exp.Anchored = true
				exp.CFrame =  rt.CFrame * cframe(0,2.5,-4.5)
				local boom = Instance.new("ParticleEmitter")
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
				magnitudedamage(15, "sphere", 0, 11.5, 75364604862973, 7.5, 1, rt,true,"burn","amami2")
				wait(0.75)
				frame = 3
			else
				frame = 4
				wait(0.1)
			end
			human.WalkSpeed = ogws
			human.JumpPower = ogjp
			human.JumpHeight = ogjh
			attack = false
		end
	end;
	["miki hoshii"] = function()
		--Miki-Hoshii
		if not (attack or guarding or hurt or human.Sit == true or sitting or waitin) then
			keycombo = ""
			if user.Name ~= "ninjakaiden1" then if mp < 45 then return end
			else if mp < (45/4) then return end end
			if user.Name == "ninjakaiden1" then
				if overheat then
					mp = mp - (45/10)
				else
					mp = mp - (45/4)
				end
			else
				if overheat then
					mp = mp - (45/2)
				else
					mp = mp - 45
				end
			end
			attack = true
			human.WalkSpeed = 0
			human.JumpPower = 0
			human.JumpHeight = 0
			anim = "miki hoshii"
			frame = 1
			local randomquote = random(0,2)	
			if user.Name == "ninjakaiden1" then
				if gender == "Male" then
					if randomquote == 0 then
						chatter("Blood Scythe!")
						if voices then
							voice("scorpion/scorp_1500-0.wav",3,1.05,head,0,false)
						end
					elseif randomquote == 1 then
						chatter("This will leave a mark!")
						if voices then
							voice("scorpion/scorp_1500-1.wav",3,1.05,head,0,false)
						end
					else
						chatter("I'LL CUT YOU DOWN!")
						if voices then
							voice("scorpion/scorp_1500-2.wav",3,1.05,head,0,false)
						end
					end
				else
					if randomquote == 0 then
						chatter("Cheers!")
						if voices then
							sound(116451539288010,3,1.05,head,0.425,false)
						end
					elseif randomquote == 1 then
						chatter("Miki Hoshii!!")
						if voices then
							sound(81424945280223,3,1.05,head,0,false)
						end
					else
						chatter("Baaaaahhh!!")
						if voices then
							sound(17681803832,3,1.05,head,0,false)
						end
					end
				end
			else
				if randomquote == 0 then
					chatter("Cheers!")
					if voices then
						sound(116451539288010,3,1.05,head,0.425,false)
					end
				elseif randomquote == 1 then
					chatter("Miki Hoshii!!")
					if voices then
						sound(81424945280223,3,1.05,head,0,false)
					end
				else
					chatter("Baaaaahhh!!")
					if voices then
						sound(17681803832,3,1.05,head,0,false)
					end
				end
			end
			local scythe = new("Part")
			local scythew = new("Weld")
			local scythem = new("SpecialMesh")
			scythe.Name = "Scythe"
			scythe.Parent = script
			scythe.Transparency = 1
			scythe.Size = vect3(0.001,0.001,0.001)
			scythe.BottomSurface = Enum.SurfaceType.Smooth
			scythe.CanCollide = false
			scythe.TopSurface = Enum.SurfaceType.Smooth
			scythe.Locked = true
			scythew.Parent = scythe
			scythew.C0 = cframe(-3.75, -2, 0, -4.37113883e-08, -1, 4.37113883e-08, 0, -4.37113883e-08, -1, 1, -4.37113883e-08, 1.91068547e-15)
			scythew.Part0 = scythe
			scythew.Part1 = ra
			scythem.Parent = scythe
			scythem.MeshId = "rbxassetid://510593706"
			scythem.Scale = vect3(0.1, 0.1, 0.005)
			scythem.Offset = vect3(-2.5, -2, 0)
			scythem.TextureId = "rbxassetid://510592879"
			scythem.MeshType = Enum.MeshType.FileMesh
			local tween = tweens:Create(scythem, TweenInfo.new(0.325), {Scale = vect3(1, 1, 1), Offset = vect3(0,0,0)})
			tween:Play()
			local tweenA = tweens:Create(scythe, TweenInfo.new(0.325), {Transparency = 0})
			tweenA:Play()
			sound(463010917,2.5,1,scythe,0,false)
			local bpos = new("BodyPosition")
			bpos.Parent = rt
			bpos.MaxForce = vect3(math.huge,math.huge,math.huge)
			bpos.D = 2500
			bpos.Position = rt.CFrame * cframe(0,30,-75).Position
			wait(0.1)
			frame = 2
			wait(0.1)
			frame = 3
			wait(0.1)
			frame = 6
			sound(3624807031,1.75,1,scythe,0,false)
			partdamage(23, "sphere", 0, 10, 6603295565, 7.5, 1, rt,true,"slash","dtl",0.265,"scythe")
			wait(0.068)
			frame = 4
			bpos:Destroy()
			wait(0.2)
			frame = 5
			wait(0.05)
			local tweenu = tweens:Create(scythe, TweenInfo.new(0.5), {Transparency = 1})
			tweenu:Play()
			tweenu.Completed:Connect(function() wait() scythe.Transparency=1 scythem:Destroy() scythe:Destroy()end)
			wait(0.2)
			human.WalkSpeed = ogws
			human.JumpPower = ogjp
			human.JumpHeight = ogjh
			attack = false
		end
	end;
	["yuki"] = function()
		--Yuki-Hanafuda
		if not (attack or guarding or hurt or human.Sit == true or sitting or waitin) then
			keycombo = ""
			if user.Name ~= "ninjakaiden1" then if mp < 21 then return end
			else if mp < (21/4) then return end end
			if user.Name == "ninjakaiden1" then
				if overheat then
					mp = mp - (21/10)
				else
					mp = mp - (21/4)
				end
			else
				if overheat then
					mp = mp - (21/2)
				else
					mp = mp - 21
				end
			end
			attack = true
			human.WalkSpeed = 0
			human.JumpPower = 0
			human.JumpHeight = 0
			anim = "yuki"
			frame = 1
			local randomquote = random(0,3)	
			if user.Name == "ninjakaiden1" then
				if gender == "Male" then
					if randomquote > 1 then
						chatter("Gauntlet...")
						if voices then
							voice("scorpion/scorp_1100-0.wav",3,1.05,head,0,false)
						end
					else
						chatter("Pay attention!")
						if voices then
							voice("scorpion/scorp_1100-1.wav",3,1.05,head,0,false)
						end
					end
				else
					if randomquote > 1 then
						if voices then
							sound(121552139441143,5,1.05,head,0,false)
						end
					else
						if voices then
							sound(97961002752387,3,1.05,head,0,false)
						end
					end
				end
			else
				if randomquote > 1 then
					if voices then
						sound(121552139441143,5,1.05,head,0,false)
					end
				else
					if voices then
						sound(97961002752387,3,1.05,head,0,false)
					end
				end
			end
			wait(0.1)
			local bpos = new("BodyPosition")
			bpos.Parent = rt
			bpos.MaxForce = vect3(math.huge,math.huge,math.huge)
			bpos.D = 2500
			bpos.Position = rt.CFrame * cframe(0,30,-75).Position
			frame = 2
			sound(698224146,4.5,1,ra,0,false)
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
			wait(0.1)
			frame = 3
			wait(0.06)
			partdamage(15, "sphere", 0, 10, 2227416792, 7.5, 1, rt,true,"normal","yuki",0.175,"yuki")
			frame = 4
			wait(0.175)
			frame = 7
			flames.Enabled = false
			debris:AddItem(flames,1.6)
			bpos:Destroy()
			if holdingx and mp >= 15 then
				if user.Name == "ninjakaiden1" then
					if overheat then
						mp = mp - (15/10)
					else
						mp = mp - (15/4)
					end
				else
					if overheat then
						mp = mp - (15/2)
					else
						mp = mp - 15
					end
				end
				wait(0.23)
				local bpos = new("BodyPosition")
				bpos.Parent = rt
				bpos.MaxForce = vect3(math.huge,math.huge,math.huge)
				bpos.D = 2500
				bpos.Position = rt.CFrame * cframe(0,45,-45).Position
				debris:AddItem(bpos,0.05)
				sound(112896373260430,4.5,1,ll,0,false)
				if user.Name == "ninjakaiden1" then
					if gender == "Male" then
						if randomquote > 1 then
							chatter("Hades!")
							if voices then
								voice("scorpion/scorp_1100-2.wav",3,1.05,head,0,false)
							end
						else
							chatter("Daaahhh!!")
							if voices then
								voice("scorpion/scorp_1001-2.wav",3,1.05,head,0,false)
							end
						end
					else
						if voices then
							sound(17681803832,7.5,1.05,head,0,false)
						end
					end
				else
					if voices then
						sound(17681803832,7.5,1.05,head,0,false)
					end
				end
				frame = 5
				partdamage(15, "sphere", 0, 12.5, 119858809307757, 7.5, 1, rt,true,"normal","yuki2",0.25,"yuki2")
				sound(698224146,4.5,1,ll,0,false)
				local flames = new("ParticleEmitter")
				flames.Name = "BigFire"
				flames.Parent = ll
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
				wait(0.25)
				frame = 6
				flames.Enabled = false
				debris:AddItem(flames,1.6)
				wait(0.1)
			else
				wait(0.1)
				frame = 6
				wait(0.1)
			end
			human.WalkSpeed = ogws
			human.JumpPower = ogjp
			human.JumpHeight = ogjh
			attack = false
		end
	end;
	["naoto kurogane"] = function()
		--Naoto Kurogane
		if not (attack or guarding or hurt or human.Sit == true or sitting or waitin) then
			keycombo = ""
			if user.Name ~= "ninjakaiden1" then if mp < 31 then return end
			else if mp < (31/4) then return end end
			if user.Name == "ninjakaiden1" then
				if overheat then
					mp = mp - (31/10)
				else
					mp = mp - (31/4)
				end
			else
				if overheat then
					mp = mp - (31/2)
				else
					mp = mp - 31
				end
			end
			attack = true
			human.WalkSpeed = 0
			human.JumpPower = 0
			human.JumpHeight = 0
			anim = "naoto kurogane"
			frame = 1
			Cosmetic.Transparency = 1
			Weapon.Transparency = 0
			Trail.Enabled = true
			local bpos = new("BodyPosition")
			bpos.Parent = rt
			bpos.MaxForce = vect3(math.huge,math.huge,math.huge)
			bpos.D = 1500
			bpos.Position = rt.CFrame * cframe(0,60,-15).Position
			local randomquote = random(0,3)
			if user.Name == "ninjakaiden1" then
				if gender == "Male" then
					if randomquote > 1 then
						chatter("Nightmare Edge!")
						if voices then
							voice("scorpion/scorp_1200-0.wav",3,1.05,head,0,false)
						end
					else
						chatter("Fall!")
						if voices then
							voice("scorpion/scorp_1200-1.wav",3,1.05,head,0,false)
						end
					end
				else
					if randomquote > 1 then
						chatter("I'm over here!")
						if voices then
							sound(116492219091916,7.5,1.05,head,0,false)
						end
					else
						chatter("How's this?!")
						if voices then
							sound(109466777195928,7.5,1.05,head,0,false)
						end
					end
				end
			else
				if randomquote > 1 then
					chatter("I'm over here!")
					if voices then
						sound(116492219091916,7.5,1.05,head,0,false)
					end
				else
					chatter("How's this?!")
					if voices then
						sound(109466777195928,7.5,1.05,head,0,false)
					end
				end
			end
			wait(0.15)
			frame = 2
			wait(0.15)
			frame = 3
			bpos:Destroy()
			local hitfloor = nil
			local breakdown = new("BodyPosition")
			breakdown.Parent = rt
			breakdown.MaxForce = vect3(math.huge,math.huge,math.huge)
			breakdown.D = 1250
			breakdown.Position = rt.CFrame * cframe(0,-15,-25).Position
			debris:AddItem(breakdown,0.1)
			sound(3624807031,3,1,Weapon,0,false)
			sound(1043228969,3,1,torso,0,false)
			local noland = true
			spawn(function()
				while noland do 
					partdamage(5, "sphere", 0, 10, 10209588, 7.5, 1, rt,true,"guitar2","normal",0.075,"naoto")
					wait(0.075)
				end
			end)
			repeat 
				wait()
				hitfloor = raycast(rt.Position, (cframe(rt.Position, rt.Position + vect3(0, -1, 0))).lookVector, 4+human.HipHeight, chara)
			until hitfloor or human:GetState() == Enum.HumanoidStateType.Landed
			breakdown:Destroy()
			sound(3624807031,3,1,Weapon,0,false)
			noland = false
			wait(0.067)
			frame = 4
			wait(0.067)
			frame = 5
			if holdingx and mp >= 18  then
				if user.Name == "ninjakaiden1" then
					if overheat then
						mp = mp - (18/10)
					else
						mp = mp - (18/4)
					end
				else
					if overheat then
						mp = mp - (18/2)
					else
						mp = mp - 18
					end
				end
				--A.B.A.
				wait(0.075)
				anim = "aba"
				frame = 1
				local randomquote = random(0,3)
				if user.Name == "ninjakaiden1" then
					if gender == "Male" then
						if randomquote > 1 then
							chatter("Drown in Darkness!")
							if voices then
								voice("scorpion/scorp_1201-0.wav",3,1.05,head,0,false)
							end
						else
							chatter("Sink!")
							if voices then
								voice("scorpion/scorp_1201-1.wav",3,1.05,head,0,false)
							end
						end
					else
						if randomquote > 1 then
							if voices then
								sound(121552139441143,7.5,1.05,head,0,false)
							end
						else
							if voices then
								sound(97961002752387,7.5,1.05,head,0,false)
							end
						end
					end
				else
					if randomquote > 1 then
						if voices then
							sound(121552139441143,7.5,1.05,head,0,false)
						end
					else
						if voices then
							sound(97961002752387,7.5,1.05,head,0,false)
						end
					end
				end
				wait(0.1)
				frame = 2
				wait(0.1)
				local randomu = random(0,9)
				if randomu <= 2 then
					sound(8641752150,2,1,Weapon,0,false)
				elseif randomu == 3 then
					sound(8641752058,2,1,Weapon,0,false)	
				elseif randomu == 4 then
					sound(8641751961,2,1,Weapon,0,false)	
				elseif randomu == 5 then
					sound(8641751865,2,1,Weapon,0,false)	
				elseif randomu >= 6 then
					sound(8641751761,2,1,Weapon,0,false)	
				end
				frame = 3
				magnitudedamage(22,"sphere", 0, 10, 3431749479, 7.5, 0.625, rt,true,"burn","aba")
				wait(0.5)
				anim = "fguitar"
				Trail.Enabled = false
				frame = 5
				sound(130785407,4.5,1,Weapon,0,false)
				wait(0.1)
				Cosmetic.Transparency = 0
				Weapon.Transparency = 1
			else
				wait(0.075)
				Trail.Enabled = false
				frame = 6
				wait(0.1)
				rt.Anchored = false
				sound(130785407,4.5,1,Weapon,0,false)
				Cosmetic.Transparency = 0
				Weapon.Transparency = 1
			end
			rt.Anchored = false
			human.WalkSpeed = ogws
			human.JumpPower = ogjp
			human.JumpHeight = ogjh
			attack = false
		end
	end;
	["mirai"] = function()
		--Mirai-Hyakuman-Kasui
		if not (attack or guarding or hurt or human.Sit == true or sitting or waitin) then
			keycombo = ""
			if user.Name ~= "ninjakaiden1" then if mp < 45 then return end
			else if mp < (45/4) then return end end
			if user.Name == "ninjakaiden1" then
				if overheat then
					mp = mp - (45/10)
				else
					mp = mp - (45/4)
				end
			else
				if overheat then
					mp = mp - (45/2)
				else
					mp = mp - 45
				end
			end
			attack = true
			human.WalkSpeed = 0
			human.JumpPower = 0
			human.JumpHeight = 0
			anim = "spike"
			frame = 1
			Weapon.Transparency = 0
			Cosmetic.Transparency = 1
			Trail.Enabled = true
			local randomquote = random(0,3)	
			if user.Name == "ninjakaiden1" then
				if gender == "Male" then
					if randomquote > 1 then
						chatter("Deadspike!")
						if voices then
							voice("scorpion/scorp_1400-0.wav",3,1.05,head,0,false)
						end
					else
						chatter("Crush!")
						if voices then
							voice("scorpion/scorp_1400-1.wav",3,1.05,head,0,false)
						end
					end
				else
					if randomquote > 1 then
						chatter("Uwaaaa!!")
						if voices then
							sound(7626950772,5,1.05,head,0,false)
						end
					else
						chatter("Time to use...... this!")
						if voices then
							sound(5930265174,3,1.05,head,0,false)
						end
					end
				end
			else
				if randomquote > 1 then
					chatter("Uwaaaa!!")
					if voices then
						sound(7626950772,5,1.05,head,0,false)
					end
				else
					chatter("Time to use...... this!")
					if voices then
						sound(5930265174,3,1.05,head,0,false)
					end
				end
			end
			wait(0.045)
			frame = 8
			wait(0.045)
			frame = 2
			wait(0.045)
			frame = 3
			wait(0.065)
			frame = 7
			sound(3624807031,5,1,Weapon,0,false)
			spawn(function()
				for i = 1, 20 do
					wait(0.01)
					spawn(function()
						magnitudedamage(2, "sphere", 0, 5, 6603295565, 7.5, 1, rt,true,"slash2","mirai")
						local spike = new("Part")
						local spikem = new("SpecialMesh")
						spike.Name = "Spike"
						spike.Parent = script
						spike.BottomSurface = Enum.SurfaceType.Weld
						spike.TopSurface = Enum.SurfaceType.Smooth
						spike.Locked = true
						spike.CanCollide = false
						spike.Anchored = true
						spikem.Parent = spike
						spikem.MeshId = "http://www.roblox.com/asset/?id=1033714"
						spikem.Scale = vect3(0.9, 4.8, 0.9)
						spikem.TextureId = "http://www.roblox.com/asset?id=39251676"
						spikem.MeshType = Enum.MeshType.FileMesh
						spike.CFrame = rt.CFrame * cframe(0,-5,-7.5)
						spike.CFrame = spike.CFrame  * angles(rad(random(-8,8)),rad(random(-8,8)),rad(random(-8,8)))
						local tween = tweens:Create(spike,TweenInfo.new(0.25,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{CFrame = spike.CFrame * cframe(0,7.5,0),Transparency = 0})
						local d = tweens:Create(spike,TweenInfo.new(1,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{CFrame = spike.CFrame * cframe(0,-25,-0),Transparency = 1})
						local meshtween = tweens:Create(spikem,TweenInfo.new(0.5,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Scale = vect3(1, 30, 1),Offset = vect3(0, 0, 0)})
						local transparency = tweens:Create(spike,TweenInfo.new(0.5,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Transparency = 1})
						meshtween:Play()
						tween:Play()
						sound(8389443538,6,1,spike,0,false)
						local hitbox = new("Part")
						hitbox.Parent = script
						hitbox.Anchored = true
						hitbox.CanCollide = false
						hitbox.Size = vect3(5, 11, 5)
						hitbox.BottomSurface = Enum.SurfaceType.Smooth
						hitbox.TopSurface = Enum.SurfaceType.Smooth
						hitbox.CFrame = rt.CFrame * cframe(0,0,-3)
						hitbox.Transparency = 1
						magnitudedamage(2, "sphere", 0, 7.5, 6603295565, 7.5, 1, hitbox,true,"slash2","mirai")
						debris:AddItem(hitbox,0.15)
						wait(2.5)
						transparency:Play()
						d:Play()
						transparency.Completed:Connect(function() wait(0.75) spike.Transparency=1 spikem:Destroy() spike:Destroy()end)
					end)
				end
			end)
			wait(0.075)
			frame = 6
			wait(0.05)
			frame = 4
			wait(0.35)
			--Ritsuko Akizuki
			if holdingv and mp >= 30 then
				if user.Name == "ninjakaiden1" then
					if overheat then
						mp = mp - (30/10)
					else
						mp = mp - (30/4)
					end
				else
					if overheat then
						mp = mp - (30/2)
					else
						mp = mp - 30
					end
				end
				frame = 5
				wait(0.06)
				sound(130785407,4.5,1,Weapon,0,false)
				Trail.Enabled = false
				Weapon.Transparency = 1
				Cosmetic.Transparency = 0
				anim = "bigbang"
				frame = 1
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
				wait(0.088)
				frame = 4
				wait(0.088)
				frame = 5
				wait(0.06)
				frame = 2
				local exp = new("Part")
				exp.Parent = script
				exp.Size = vect3(0.001,0.001,0.001)
				exp.Locked = true
				exp.CanCollide = false
				exp.Anchored = true
				exp.CFrame =  rt.CFrame * cframe(0,2.5,-4.5)
				local boom = Instance.new("ParticleEmitter")
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
				magnitudedamage(15, "sphere", 0, 9, 75364604862973, 7.5, 1, rt,true,"burn","mirai2")
				wait(0.45)
				--Hibiki Ganaha
				if holdingv and mp >= 25 then
					if user.Name == "ninjakaiden1" then
						if overheat then
							mp = mp - (25/10)
						else
							mp = mp - (25/4)
						end
					else
						if overheat then
							mp = mp - (25/2)
						else
							mp = mp - 25
						end
					end
					frame = 3
					wait(0.15)
					Weapon.Transparency = 0
					Cosmetic.Transparency = 1
					Trail.Enabled = true
					anim = "go shoot"
					frame = 4
					if user.Name == "ninjakaiden1" then
						if gender == "Male" then
							chatter("Fly!")
							if voices then
								voice("scorpion/scorp_1450-0.wav",3,1.05,head,0,false)
							end
						else
							chatter("Too slow.")
							if voices then
								sound(109023574948978,5,1.05,head,0,false)
							end
						end
					else
						chatter("Too slow.")
						if voices then
							sound(109023574948978,5,1.05,head,0,false)
						end
					end
					wait(0.045)
					frame = 7
					sound(3624807031,5,1,Weapon,0,false)
					magnitudedamage(21, "sphere", 0, 10.5, 101093315205711, 7.5, 1, rt,true,"guitar","mirai3")
					wait(0.05)
					frame = 8
					wait(0.05)
					frame = 5
					wait(0.5)
					frame = 6
					wait(0.115)
					sound(130785407,4.5,1,Weapon,0,false)
					Trail.Enabled = false
					Weapon.Transparency = 1
					Cosmetic.Transparency = 0
				else
					frame = 3
					wait(0.1)
				end
			else
				wait(0.75)
				frame = 5
				wait(0.1)
				sound(130785407,4.5,1,Weapon,0,false)
				Trail.Enabled = false
				Weapon.Transparency = 1
				Cosmetic.Transparency = 0
			end
			human.WalkSpeed = ogws
			human.JumpPower = ogjp
			human.JumpHeight = ogjh
			attack = false
		end
	end;
	["turn of the crank"] = function()
		--Turn of the Crank
		if not (attack or guarding or hurt or human.Sit == true or sitting or waitin) then
			keycombo = ""
			if overheat then return end
			if user.Name ~= "ninjakaiden1" then if mp < 333 then return end
			else if mp < (333/4) then return end end
			if user.Name == "ninjakaiden1" then
				if overheat then
					mp = mp - (333/10)
				else
					mp = mp - (333/4)
				end
			else
				if overheat then
					mp = mp - (333/2)
				else
					mp = mp - 333
				end
			end
			super()
			keycombo = ""
			attack = true
			human.WalkSpeed = 0
			human.JumpPower = 0
			human.JumpHeight = 0
			anim = "install"
			frame = 1
			wait(0.1)
			frame = 2
			if user.Name == "ninjakaiden1" then
				if gender == "Male" then
					chatter("Blood Cain!")
					if voices then
						sound1("bloodcain.wav",3,1.05,head,0,false)
					end
				else
					chatter("Too slow.")
					if voices then
						sound(109023574948978,5,1.05,head,0,false)
					end
				end
			else
				chatter("Too slow.")
				if voices then
					sound(109023574948978,5,1.05,head,0,false)
				end
			end
			wait(1)
			frame = 3
			spawn(function()
				local highlight = new("Highlight")
				highlight.Parent = chara
				highlight.Name = "ZHighLight"
				highlight.OutlineTransparency = 1
				highlight.FillTransparency = 1
				highlight.FillColor = color(1, 0.425, 0.05)
				highlight.OutlineColor = color(1, 0.5, 0)
				local tween = tweens:Create(highlight, TweenInfo.new(1.5), {FillTransparency = 0.3, OutlineTransparency = 0})
				tween:Play()
				sound(698224146,4.5,1,ra,0,false)
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
				spawn(function()
					wait(0.75)
					flames.Enabled = false
					debris:AddItem(flames,1.6)
				end)
				if game.PlaceId == 11510416200 or game.PlaceId == 126783576555525 or game.PlaceId == 89201052571047 or game.PlaceId == 79868761121850 then
					sound(105094738430794,7.5,1,torso,279,false,true,2.5)
				else
					sound(72644256030312,4.5,1,torso,0,false)
				end
				local heat = new("Sound")
				heat.SoundId = "rbxassetid://443980606"
				heat.Volume = 4.5
				heat.Looped = true
				heat.Parent = torso
				heat:Play()
				local aural = new("PointLight")
				local aura2 = new("Smoke")
				local aura = new("ParticleEmitter")
				aural.Name = "FireLight"
				aural.Parent = torso
				aural.Color = color(1, 0.333333, 0)
				aural.Range = 14
				aural.Shadows = true
				aura2.Parent = torso
				aura2.Color = color(0.54902, 0.54902, 0.54902)
				aura2.Size = 1.2000000476837158
				aura2.Opacity = 0.30000001192092896
				aura2.RiseVelocity = 7
				aura.Name = "Fire"
				aura.Parent = torso
				aura.Speed = NumberRange.new(5, 7)
				aura.Rotation = NumberRange.new(4, 9)
				aura.Color = ColorSequence.new(color(1, 0.333333, 0),color(0.645443, 0.1473, 0),color(0, 0, 0))
				aura.LightEmission = 0.550000011920929
				aura.Texture = "http://www.roblox.com/asset/?id=248625108"
				aura.Transparency = NumberSequence.new(0,0.543749988079071,0.7374999523162842,0,0.7250000238418579,0.45625001192092896,0.637499988079071,0,0.5249999761581421,0)
				aura.Size = NumberSequence.new(3.3125,2.8125,2.6875,2.562499523162842,2.3125,2.1875,1.7500001192092896,0.43749988079071045,0.12499988079071045)
				aura.Acceleration = vect3(8, 6, 6)
				aura.Lifetime = NumberRange.new(0, 1)
				aura.Rate = 70
				aura.RotSpeed = NumberRange.new(5, 9)
				aura.SpreadAngle = vect2(28, 28)
				aura.VelocitySpread = 28
				overheat = true
				if user.Name == "ninjakaiden1" then
					damagemult = 2
					wait(20)
				else
					damagemult = 1.5
					wait(10)
				end
				aura.Enabled = false
				aura2.Enabled = false
				aural:Destroy()
				overheat = false
				damagemult = 1
				local tween = tweens:Create(highlight, TweenInfo.new(1.15), {FillTransparency = 1})
				tween:Play()
				local tween2 = tweens:Create(highlight, TweenInfo.new(1.15), {OutlineTransparency = 1})
				tween2:Play()
				heat:Destroy()
				debris:AddItem(highlight,2.5)
				debris:AddItem(aura,2.5)
				debris:AddItem(aura2,2.5)
			end)
			wait(2)
			frame = 4
			wait(0.1)
			human.WalkSpeed = ogws
			human.JumpPower = ogjp
			human.JumpHeight = ogjh
			attack = false
		end
	end;
	["invite to hell"] = function()
		--Invite to Hell
		if not (attack or guarding or hurt or human.Sit == true or sitting or waitin) then
			keycombo = ""
			if user.Name ~= "ninjakaiden1" then if mp < 250 then return end
			else if mp < (250/4) then return end end
			if user.Name == "ninjakaiden1" then
				if overheat then
					mp = mp - (250/10)
				else
					mp = mp - (250/4)
				end
			else
				if overheat then
					mp = mp - (250/2)
				else
					mp = mp - 250
				end
			end
			super()
			attack = true
			human.WalkSpeed = 0
			human.JumpPower = 0
			human.JumpHeight = 0
			local target = false
			local weld = nil
			local part = nil
			local tt = nil
			local vh = nil
			local function checktarget()
				for i,v in pairs(workspace:GetDescendants()) do
					if v:FindFirstChildOfClass("Humanoid") and v ~= chara and not target then
						local vhum = v:FindFirstChildOfClass("Humanoid")
						local vtorso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso") or v:FindFirstChild("HumanoidRootPart")
						local vhead = v:FindFirstChild("Head")
						if vtorso then
							local vdistance = (rt.Position - vtorso.Position).magnitude
							if vdistance <= 12.5 and vhum.Health > 0 then
								vtorso.CFrame = rt.CFrame * cframe(0,0,-4.5) * angles(0,rad(180),0)
								if vhum.Health > 17 then
									local creator = new("ObjectValue")
									creator.Name = "creator"
									creator.Value = game:GetService("Players"):GetPlayerFromCharacter(chara)
									creator.Parent = vhum
									debris:AddItem(creator, 2)
									vhum:TakeDamage(17 * damagemult)
								end
								tt = vtorso
								vh = vhum
								part = new("Part")
								part.Parent = v
								part.Transparency = 1
								part.CanCollide = false
								part.CFrame = rt.CFrame * cframe(0,0,-2.5) * angles(0,rad(180),0)
								part.Anchored = true
								part.CFrame = rt.CFrame * cframe(0,0,-2.5) * angles(0,rad(180),0)
								rt.Anchored = true
								weld = new("Weld")
								weld.Parent = part
								weld.Part0 = part
								weld.Part1 = vtorso
								weld.C0 = weld.C0 * cframe(-0.45, 0, 1)
								sound(74232847084175,5.5,1,vtorso,0,false)
								hiteffect("blood",vtorso)
								hiteffect("blood2",vtorso)
								sound(7441099080,3,1,vtorso,0,false)
								target = true
							end
						end
					end
				end
			end
			anim = "hell"
			frame = 1
			if user.Name == "ninjakaiden1" then
				if gender == "Male" then
					chatter("LET DARKNESS CONSUME YOU!!")
					if voices then
						voice("scorpion/scorp_3050-0.wav",3,1.05,head,0,false)
					end
				else
					chatter("DIE!!")
					if voices then
						sound(84111100415052,5,1.05,head,0,false)
					end
				end
			else
				chatter("DIE!!")
				if voices then
					sound(84111100415052,5,1.05,head,0,false)
				end
			end
			local hand = new("Part")
			local handm = new("SpecialMesh")
			local handw = new("Weld")
			hand.Name = "Handle"
			hand.Parent = script
			hand.Transparency = 1
			hand.Locked = true
			hand.Size = vect3(0.001,0.001,0.001)
			hand.BottomSurface = Enum.SurfaceType.Smooth
			hand.BrickColor = BrickColor.new("Maroon")
			hand.CanCollide = false
			hand.TopSurface = Enum.SurfaceType.Smooth
			handm.Parent = hand
			handm.MeshId = "rbxassetid://32054761"
			handm.Scale = vect3(0.75, 0.75, 1.25)
			handm.Offset = vect3(0, 1.5, 0)
			handm.MeshType = Enum.MeshType.FileMesh
			handw.Parent = hand
			handw.C0 = cframe(-0.200000003, 2, -0, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08)
			handw.Part0 = hand
			handw.Part1 = ra
			sound(463010917,2.5,0.9,ra,0,false)
			local tween = tweens:Create(handm, TweenInfo.new(1), {Scale = vect3(0.75, 0.75, 1.25), Offset = vect3(0, 0, 0)})
			tween:Play()
			local tweenA = tweens:Create(hand, TweenInfo.new(1), {Transparency = 0})
			tweenA:Play()
			wait(1)
			frame = 2
			checktarget()
			wait(0.25)
			if target then
				wait(0.1)
				anim = "hellhit"
				if weld ~= nil then
					weld.C0 = weld.C0:Lerp(cframe(-0.45, 0, 1.5) * angles(rad(-0), rad(0), rad(0)), 1)
				end
				frame = 1
				wait(0.1)
				frame = 2
				if weld ~= nil then
					weld.C0 = weld.C0:Lerp(cframe(-0.45, 0, 1.5) * angles(rad(-0), rad(0), rad(0)), 1)
				end
				wait(0.1)
				frame = 3
				if weld ~= nil then
					weld.C0 = weld.C0:Lerp(cframe(0.15, 1.15, 1.15) * angles(rad(-0), rad(75), rad(0)), 1)
				end
				wait(0.1)
				frame = 4
				if weld ~= nil then
					weld.C0 = weld.C0:Lerp(cframe(-0, 3, 1.15) * angles(rad(-0), rad(90), rad(0)), 1)
				end
				local heat = new("Sound")
				heat.SoundId = "rbxassetid://443980606"
				heat.Volume = 4.5
				heat.Looped = true
				heat.Parent = hand
				heat:Play()
				local aura = new("ParticleEmitter")
				aura.Name = "Fire"
				aura.Parent = hand
				aura.Speed = NumberRange.new(5, 7)
				aura.Rotation = NumberRange.new(4, 9)
				aura.Color = ColorSequence.new(color(1, 0.333333, 0),color(0.645443, 0.1473, 0),color(0, 0, 0))
				aura.LightEmission = 0.550000011920929
				aura.Texture = "http://www.roblox.com/asset/?id=248625108"
				aura.Transparency = NumberSequence.new(0,0.543749988079071,0.7374999523162842,0,0.7250000238418579,0.45625001192092896,0.637499988079071,0,0.5249999761581421,0)
				aura.Size = NumberSequence.new(3.3125,2.8125,2.6875,2.562499523162842,2.3125,2.1875,1.7500001192092896,0.43749988079071045,0.12499988079071045)
				aura.Acceleration = vect3(8, 6, 6)
				aura.Lifetime = NumberRange.new(0, 1)
				aura.Rate = 70
				aura.RotSpeed = NumberRange.new(5, 9)
				aura.SpreadAngle = vect2(28, 28)
				aura.VelocitySpread = 28
				local hitting = true
				spawn(function()
					sound(123328411546656,1.5,1,tt,0,false)
					while hitting do 
						if not game:GetService("Players"):GetPlayerFromCharacter(vh.Parent) then
							if vh.Health > 1.15 then
								local creator = new("ObjectValue")
								creator.Name = "creator"
								creator.Value = game:GetService("Players"):GetPlayerFromCharacter(chara)
								creator.Parent = vh
								debris:AddItem(creator, 2)
								vh:TakeDamage(1.15 * damagemult)
							end
						else
							if vh.Health > 0.2 then
								local creator = new("ObjectValue")
								creator.Name = "creator"
								creator.Value = game:GetService("Players"):GetPlayerFromCharacter(chara)
								creator.Parent = vh
								debris:AddItem(creator, 2)
								vh:TakeDamage(0.2 * damagemult)
							end
						end
						local parta = new("Part")
						parta.Parent = script
						parta.Transparency = 1
						parta.CanCollide = false
						parta.CFrame = tt.CFrame * cframe(random(-1,1),random(-1,1),random(-1,1))
						parta.Anchored = true
						hiteffect("sphere",parta)
						debris:AddItem(parta,0.01)
						local randomhit = random(0,3)
						if randomhit == 0 then
							sound(84301080645577,2.5,1,tt,0,false)
						elseif randomhit == 1 then
							sound(6594869919,2.5,1,tt,0,false)
						elseif randomhit == 2 then
							sound(220833967,2.5,1,tt,0,false)
						else
							sound(6216173737,2.5,1,tt,0,false)
						end
						if random(0,10) <= 2 then
							sound(7441099080,3,1,tt,0,false)
							hiteffect("blood",tt)
							hiteffect("blood2",tt)
						end
						wait(0.075)
					end
				end)
				wait(3)
				aura.Enabled = false
				heat:Destroy()
				debris:AddItem(aura,1.6)
				hitting = false
				if weld ~= nil then
					weld:Destroy()
				end
				if part ~= nil then
					part:Destroy()
				end
				local boom2 = new("Explosion")
				boom2.Parent = workspace
				boom2.Position = tt.Position
				boom2.BlastRadius = 10
				boom2.BlastPressure = 0
				sound2(157878578,5,1,tt,0)
				sound2(7405939280,5,1,tt,0.125)
				tt.Velocity = rt.CFrame.lookVector*30 + rt.CFrame.upVector * 60
				vh.PlatformStand = true
				local creator = new("ObjectValue")
				creator.Name = "creator"
				creator.Value = game:GetService("Players"):GetPlayerFromCharacter(chara)
				creator.Parent = vh
				debris:AddItem(creator, 2)
				vh:TakeDamage(35 * damagemult)
				spawn(function() 
					wait(5)
					vh.PlatformStand = false
				end)
				if user.Name == "ninjakaiden1" then
					if random(0,10) == 0 then
						instantkill(vh.Parent)
						sound2(108119385019346,3,1,tt,0)
						tt.Velocity = rt.CFrame.lookVector*60 + rt.CFrame.upVector * 175
					end
				end
				sound(6938611595,2.5,1,ra,0,false)
				local tw = tweens:Create(handm, TweenInfo.new(0.45), {Scale = vect3(0.075, 0.075, 0.125), Offset = vect3(0, 1.5, 0)})
				tw:Play()
				local twe = tweens:Create(hand, TweenInfo.new(0.45), {Transparency = 1})
				twe:Play()
				twe.Completed:Connect(function() handm:Destroy() hand:Destroy() end)
				wait(0.75)
				anim = "hell"
				frame = 3
				wait(0.1)
				if user.Name == "ninjakaiden1" then
					if gender == "Male" then
						chatter("It's over...")
						if voices then
							voice("scorpion/scorp_3050-1.wav",3,1.05,head,0,false)
						end
					else
						if voices then
							sound(123716901956680,5,1.05,head,0,false)
						end
					end
				else
					if voices then
						sound(123716901956680,5,1.05,head,0,false)
					end
				end
				frame = 4
				wait(0.5)
				frame = 5
				wait(0.1)
				rt.Anchored = false
			else
				wait(0.1)
				local tw = tweens:Create(handm, TweenInfo.new(0.45), {Scale = vect3(0.075, 0.075, 0.125), Offset = vect3(0, 1.5, 0)})
				tw:Play()
				local twe = tweens:Create(hand, TweenInfo.new(0.45), {Transparency = 1})
				twe:Play()
				twe.Completed:Connect(function() handm:Destroy() hand:Destroy() end)
				frame = 3
				wait(0.1)
				frame = 4
				wait(0.75)
				frame = 5
				wait(0.1)
			end
			human.WalkSpeed = ogws
			human.JumpPower = ogjp
			human.JumpHeight = ogjh
			attack = false
		end
	end;
	["tengoku"] = function()
		--Tengoku-no-Mon-no-Ochiru-Hane (Instant Kill)
		if not (attack or guarding or hurt or human.Sit == true or sitting or waitin) then
			keycombo = ""
			if user.Name ~= "ninjakaiden1" then if not ((human.Health > (maxhp/2) and maxhp == math.huge) or overheat) or mp < 500 then return end
			else if mp < (500/4) then return end end
			if user.Name == "ninjakaiden1" then
				if overheat then
					mp = mp - (500/10)
				else
					mp = mp - (500/4)
				end
			else
				if overheat then
					mp = mp - (500/2)
				else
					mp = mp - 500
				end
			end
			ultimate()
			--spell circle
			local doingspell = true
			local doingthething = true
			spawn(function()
				sound(17772890711,1.45,1,rt,0,false)
				local spellc = new("Part")
				local spellcm = new("BlockMesh")
				local spellcd = new("Decal")
				local spellcl = new("PointLight")
				spellc.Name = "SpellCircle"
				spellc.Parent = script
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
				spellcl.Color = color(1, 0.588235, 0)
				local tween = tweens:Create(spellcd, TweenInfo.new(1), {Transparency = 0})
				tween:Play()
				local angle = 0
				sound(3723411843,3,1,rt,0,false)
				while doingthething do
					wait()
					angle = angle + 15
					if doingspell then
						--rotate circle and align to player root
						spellc.CFrame = rt.CFrame * cframe(0, -3, 0) * angles(0, rad(angle), 0)
					else
						if spellcd.Transparency < 1 then
							if spellc ~= nil then
								spellcd.Transparency = spellcd.Transparency + 0.05
							end
						else
							spellc:Destroy()
							doingthething = false
							break							
						end
					end
				end
			end)
			attack = true
			human.WalkSpeed = 0
			human.JumpPower = 0
			human.JumpHeight = 0
			local target = false
			local vh = nil
			local tt = nil
			local th = nil
			local function checktarget()
				for i,v in pairs(workspace:GetDescendants()) do
					if v:FindFirstChildOfClass("Humanoid") and v ~= chara and not target then
						local vhum = v:FindFirstChildOfClass("Humanoid")
						local vtorso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso") or v:FindFirstChild("HumanoidRootPart")
						local vhead = v:FindFirstChild("Head")
						if vtorso then
							local vdistance = (rt.Position - vtorso.Position).magnitude
							if vdistance <= 7.5 and vhum.Health > 0 then
								vtorso.CFrame = rt.CFrame * cframe(0,0,-7.5) * angles(0,rad(180),0)
								local randomu = random(0,9)
								if randomu <= 2 then
									sound(8641752150,2,1,Weapon,0,false)
								elseif randomu == 3 then
									sound(8641752058,2,1,Weapon,0,false)	
								elseif randomu == 4 then
									sound(8641751961,2,1,Weapon,0,false)	
								elseif randomu == 5 then
									sound(8641751865,2,1,Weapon,0,false)	
								elseif randomu >= 6 then
									sound(8641751761,2,1,Weapon,0,false)	
								end
								if vhum.Health > 16 then
									local creator = new("ObjectValue")
									creator.Name = "creator"
									creator.Value = game:GetService("Players"):GetPlayerFromCharacter(chara)
									creator.Parent = vhum
									debris:AddItem(creator, 2)
									vhum:TakeDamage(16 * damagemult)
								end
								local vel = new("BodyVelocity")
								vel.MaxForce = vect3(math.huge,math.huge,math.huge)
								vel.Parent = vtorso
								vel.Velocity = rt.CFrame.LookVector * 0
								debris:AddItem(vel,15)
								vel.Name = "FearStay"
								sound(5698452679,6.5,0.45,vtorso,0,false)
								hiteffect("sphere",vtorso)
								vh = vhum
								tt = vtorso
								th = vhead
								target = true
							end
						end
					end
				end
			end
			anim = "fear"
			frame = 1
			if user.Name == "ninjakaiden1" then
				if gender == "Male" then
					chatter("I'LL SHOW YOU F.E.A.R.!!!")
					if voices then
						voice("scorpion/scorp_3900-0.wav",3,1.05,head,0,false)
					end
				else
					chatter("LET'S GO!!!")
					if voices then
						sound(102098901702089,5,1.05,head,0,false)
					end
				end
			else
				chatter("LET'S GO!!!")
				if voices then
					sound(102098901702089,5,1.05,head,0,false)
				end
			end
			Trail.Enabled = true
			Weapon.Transparency = 0
			Cosmetic.Transparency = 1
			wait(2.5)
			sound(3624807031,7.5,0.5,Weapon,0,false)
			frame = 2
			checktarget()
			wait(0.5)
			if target then
				wait(0.1)
				anim = "fearhit"
				frame = 1
				wait(0.1)
				frame = 2
				Trail.Enabled = false
				local tweenA = tweens:Create(Weapon, TweenInfo.new(0.75), {Transparency = 1})
				tweenA:Play()
				local dscythe = new("Part")
				local dscythew = new("Weld")
				local dscythem = new("SpecialMesh")
				dscythe.Name = "DeathScythe"
				dscythe.Parent = script
				dscythe.Size = vect3(0.001,0.001,0.001)
				dscythe.BottomSurface = Enum.SurfaceType.Smooth
				dscythe.CanCollide = false
				dscythe.Locked = true
				dscythe.Transparency = 1
				dscythe.TopSurface = Enum.SurfaceType.Smooth
				dscythew.Parent = dscythe
				dscythew.C0 = cframe(-3, -1.75, -0.150000006, -4.37113883e-08, -1, 4.37113883e-08, 0, -4.37113883e-08, -1, 1, -4.37113883e-08, 1.91068547e-15)
				dscythew.Part0 = dscythe
				dscythew.Part1 = la
				dscythem.Parent = dscythe
				dscythem.MeshId = "rbxassetid://9716597334"
				dscythem.Scale = vect3(0.025, 0.025, 0.025)
				dscythem.Offset = vect3(-1.75, -1.75, 0)
				dscythem.TextureId = "rbxassetid://9716597455"
				dscythem.MeshType = Enum.MeshType.FileMesh
				local dscythet = new("Trail")
				dscythet.Parent = Weapon
				local attachment0 = new("Attachment",Weapon)
				attachment0.Position = vect3(3.137, 2.832, -0.125)
				local attachment1 = new("Attachment",Weapon)
				attachment1.Position = vect3(-0.6, 4.15, -0.135)
				dscythet.Attachment0 = attachment0
				dscythet.Attachment1 = attachment1
				dscythet.Color = ColorSequence.new(color(0, 0, 0),color(0, 0, 0))
				dscythet.FaceCamera = true
				dscythet.Texture = "rbxassetid://10816141940"
				dscythet.TextureLength = 1.5
				dscythet.Transparency = NumberSequence.new(1,0,1)
				dscythet.MinLength = 10
				dscythet.Brightness = 3
				dscythet.Lifetime = 0.30000001192092896
				sound(463010917,5,0.75,dscythe,0,false)
				local tween = tweens:Create(dscythem, TweenInfo.new(0.75), {Scale = vect3(0.25, 0.25, 0.25), Offset = vect3(0, 0, 0)})
				tween:Play()
				local tweenA = tweens:Create(dscythe, TweenInfo.new(0.75), {Transparency = 0})
				tweenA:Play()
				wait(2.5)
				local randomq = random(0,4)
				if user.Name == "ninjakaiden1" then
					if gender == "Male" then
						chatter("THERE'S NO HELL, ONLY THE VOID!!")
						if voices then
							voice("scorpion/scorp_3900-1.wav",3,1.05,head,0,false)
						end
					else
						if randomq == 0 then
							chatter("HEAVEN'S GATE FALLING FEATHER!!!")
							if voices then
								sound(137635788019805,5,1.05,head,0,false)
							end
						elseif randomq == 1 then
							chatter("RULES ARE MADE TO BE BROKEN!!")
							if voices then
								sound(124450371493830,5,1.05,head,0,false)
							end
						elseif randomq == 2 then
							chatter("PURE.... CHAOS!!")
							if voices then
								sound(131616674584987,5,1.05,head,0,false)
							end
						elseif randomq == 3 then
							chatter("THERE'S NO TURTLE, ONLY THE OCEAN!!")
							if voices then
								sound(103355279031731,5,1.05,head,0,false)
							end
						else
							chatter("NOW FOR AN ENCORE!!")
							if voices then
								sound(4958428263,5,1.05,head,0,false)
							end
						end
					end
				else
					if randomq == 0 then
						chatter("HEAVEN'S GATE FALLING FEATHER!!!")
						if voices then
							sound(137635788019805,5,1.05,head,0,false)
						end
					elseif randomq == 1 then
						chatter("RULES ARE MADE TO BE BROKEN!!")
						if voices then
							sound(124450371493830,5,1.05,head,0,false)
						end
					elseif randomq == 2 then
						chatter("PURE.... CHAOS!!")
						if voices then
							sound(131616674584987,5,1.05,head,0,false)
						end
					elseif randomq == 3 then
						chatter("THERE'S NO TURTLE, ONLY THE OCEAN!!")
						if voices then
							sound(103355279031731,5,1.05,head,0,false)
						end
					else
						chatter("NOW FOR AN ENCORE!!")
						if voices then
							sound(4958428263,5,1.05,head,0,false)
						end
					end
				end
				for i = 1,2 do
					dscythew.C0 = dscythew.C0:Lerp(cframe(-3, -1.75, -0.15) * angles(rad(90), rad(0), rad(90)), 1)
					frame = 3
					wait(0.25)
					dscythew.C0 = dscythew.C0:Lerp(cframe(-2.45, -0.75, -0.15) * angles(rad(90), rad(75), rad(90)), 1)
					frame = 4
					sound(154965962,5,1,dscythe,0,false)
					wait(0.3)
					sound(154965962,5,1,dscythe,0,false)
					hiteffect("sphere",tt)
					sound(17772894570,4.5,1,tt,0,false)
					sound(6881026094,5,1,tt,0,false)
					if random(0,5) <= 2 then
						sound(7441099080,3,1,tt,0,false)
						hiteffect("blood",tt)
						hiteffect("blood2",tt)
					end
					if vh.Health > 25 then
						local creator = new("ObjectValue")
						creator.Name = "creator"
						creator.Value = game:GetService("Players"):GetPlayerFromCharacter(chara)
						creator.Parent = vh
						debris:AddItem(creator, 2)
						vh:TakeDamage(25 * damagemult)
					end
					dscythew.C0 = dscythew.C0:Lerp(cframe(-3, -1.75, -0.15) * angles(rad(90), rad(30), rad(90)), 1)
					frame = 5
					sound(154965962,5,1,dscythe,0,false)
					wait(0.25)
					dscythew.C0 = dscythew.C0:Lerp(cframe(-3, -1.75, -0.15) * angles(rad(90), rad(60), rad(90)), 1)
					frame = 10
					sound(154965962,5,1,dscythe,0,false)
					wait(0.05)
					dscythew.C0 = dscythew.C0:Lerp(cframe(-3, -1.75, -0.15) * angles(rad(90), rad(60), rad(90)), 1)
					frame = 6
					wait(0.25)
					hiteffect("sphere",tt)
					sound(17772894570,4.5,1,tt,0,false)
					sound(6881026094,5,1,tt,0,false)
					if random(0,5) <= 2 then
						sound(7441099080,3,1,tt,0,false)
						hiteffect("blood",tt)
						hiteffect("blood2",tt)
					end
					if vh.Health > 25 then
						local creator = new("ObjectValue")
						creator.Name = "creator"
						creator.Value = game:GetService("Players"):GetPlayerFromCharacter(chara)
						creator.Parent = vh
						debris:AddItem(creator, 2)
						vh:TakeDamage(25 * damagemult)
					end
					dscythew.C0 = dscythew.C0:Lerp(cframe(-2.1, -2.15, -1.15) * angles(rad(60), rad(47.5), rad(180)), 1)
					frame = 7
					sound(154965962,5,1,dscythe,0,false)
					wait(0.25)
					dscythew.C0 = dscythew.C0:Lerp(cframe(-3, -1.75, -0.15) * angles(rad(90), rad(0), rad(90)), 1)
					frame = 8
					wait(0.25)
					sound(154965962,5,1,dscythe,0,false)
					hiteffect("sphere",tt)
					sound(17772894570,4.5,1,tt,0,false)
					sound(6881026094,5,1,tt,0,false)
					if random(0,5) <= 2 then
						sound(7441099080,3,1,tt,0,false)
						hiteffect("blood",tt)
						hiteffect("blood2",tt)
					end
					if vh.Health > 25 then
						local creator = new("ObjectValue")
						creator.Name = "creator"
						creator.Value = game:GetService("Players"):GetPlayerFromCharacter(chara)
						creator.Parent = vh
						debris:AddItem(creator, 2)
						vh:TakeDamage(25 * damagemult)
					end
					dscythew.C0 = dscythew.C0:Lerp(cframe(-2.5, -2, -0.35) * angles(rad(105), rad(60), rad(90)), 1)
					frame = 9
					wait(0.25)
				end
				sound2(6938611595,7.5,0.675,dscythe,0)
				dscythet.Enabled = false
				local tw = tweens:Create(dscythem, TweenInfo.new(0.45), {Scale = vect3(0.025, 0.025, 0.025), Offset = vect3(-1.75, -1.75, 0)})
				tw:Play()
				local twe = tweens:Create(dscythe, TweenInfo.new(0.45), {Transparency = 1})
				twe:Play()
				twe.Completed:Connect(function() dscythem:Destroy() dscythe:Destroy() end)
				anim = "fearend"
				frame = 1
				if game.PlaceId == 11510416200 or game.PlaceId == 126783576555525 or game.PlaceId == 89201052571047 or game.PlaceId == 79868761121850 then
					sound(105094738430794,7.5,1,torso,279,false,true,2.5)
				else
					sound(72644256030312,4.5,1,torso,0,false)
				end
				tt.CFrame = rt.CFrame * cframe(0,0,-4.5) * angles(0,rad(180),0)
				local highlight = new("Highlight")
				highlight.Parent = chara
				highlight.Name = "ZHighLight"
				highlight.OutlineTransparency = 1
				highlight.FillTransparency = 1
				highlight.FillColor = color(1, 0.425, 0.05)
				highlight.OutlineColor = color(1, 0.5, 0)
				local tween = tweens:Create(highlight, TweenInfo.new(1.5), {FillTransparency = 0.3, OutlineTransparency = 0})
				tween:Play()
				local heat = new("Sound")
				heat.SoundId = "rbxassetid://443980606"
				heat.Volume = 4.5
				heat.Looped = true
				heat.Parent = torso
				heat:Play()
				local aural = new("PointLight")
				local aura2 = new("Smoke")
				local aura = new("ParticleEmitter")
				aural.Name = "FireLight"
				aural.Parent = torso
				aural.Color = color(1, 0.333333, 0)
				aural.Range = 14
				aural.Shadows = true
				aura2.Parent = torso
				aura2.Color = color(0.54902, 0.54902, 0.54902)
				aura2.Size = 1.2000000476837158
				aura2.Opacity = 0.30000001192092896
				aura2.RiseVelocity = 7
				aura.Name = "Fire"
				aura.Parent = torso
				aura.Speed = NumberRange.new(5, 7)
				aura.Rotation = NumberRange.new(4, 9)
				aura.Color = ColorSequence.new(color(1, 0.333333, 0),color(0.645443, 0.1473, 0),color(0, 0, 0))
				aura.LightEmission = 0.550000011920929
				aura.Texture = "http://www.roblox.com/asset/?id=248625108"
				aura.Transparency = NumberSequence.new(0,0.543749988079071,0.7374999523162842,0,0.7250000238418579,0.45625001192092896,0.637499988079071,0,0.5249999761581421,0)
				aura.Size = NumberSequence.new(3.3125,2.8125,2.6875,2.562499523162842,2.3125,2.1875,1.7500001192092896,0.43749988079071045,0.12499988079071045)
				aura.Acceleration = vect3(8, 6, 6)
				aura.Lifetime = NumberRange.new(0, 1)
				aura.Rate = 70
				aura.RotSpeed = NumberRange.new(5, 9)
				aura.SpreadAngle = vect2(28, 28)
				aura.VelocitySpread = 28
				local bh = Instance.new("Part")
				local bhw = Instance.new("Weld")
				local bhEF = Instance.new("ParticleEmitter")
				local bhEF2 = Instance.new("ParticleEmitter")
				local bhEF3 = Instance.new("ParticleEmitter")
				bh.Name = "BlazingHand"
				bh.Parent = script
				bh.Locked = true
				bh.CanCollide = false
				bh.CanTouch = false
				bh.Transparency = 1
				bh.Size = vect3(0.5, 2.5, 0.5)
				bh.BottomSurface = Enum.SurfaceType.Smooth
				bh.TopSurface = Enum.SurfaceType.Smooth
				bhw.Parent = bh
				bhw.C0 = cframe(-0.150000006, 0.5, 0, 0.976296008, -0.216439724, -1.50995803e-07, -0.216439724, -0.976296008, 8.74227766e-08, -1.66338367e-07, -5.26690158e-08, -1)
				bhw.Part0 = bh
				bhw.Part1 = la
				bhEF.Name = "BFE"
				bhEF.Parent = bh
				bhEF.Speed = NumberRange.new(10, 10)
				bhEF.Rotation = NumberRange.new(-180, 180)
				bhEF.Color = ColorSequence.new(Color3.new(0.666667, 0, 0),Color3.new(0.666667, 0, 0))
				bhEF.LightEmission = 1
				bhEF.LightInfluence = 1
				bhEF.Texture = "rbxassetid://5407030718"
				bhEF.Transparency = NumberSequence.new(1,0.09999996423721313,0.28125,1)
				bhEF.ZOffset = -0.5
				bhEF.Size = NumberSequence.new(1.499999761581421,0.18750011920928955,0)
				bhEF.Drag = 5
				bhEF.Lifetime = NumberRange.new(1, 1)
				bhEF.LockedToPart = true
				bhEF.Rate = 160
				bhEF2.Name = "BFE2"
				bhEF2.Parent = bh
				bhEF2.Speed = NumberRange.new(10, 10)
				bhEF2.Rotation = NumberRange.new(-180, 180)
				bhEF2.Color = ColorSequence.new(Color3.new(1, 0.333333, 0),Color3.new(1, 0.333333, 0))
				bhEF2.LightEmission = 0.8999999761581421
				bhEF2.LightInfluence = 1
				bhEF2.Texture = "rbxassetid://5407030718"
				bhEF2.Transparency = NumberSequence.new(1,0.09999996423721313,0.28125,1)
				bhEF2.ZOffset = -0.5
				bhEF2.Size = NumberSequence.new(1.499999761581421,0.18750011920928955,0)
				bhEF2.Drag = 5
				bhEF2.Lifetime = NumberRange.new(1, 1)
				bhEF2.LockedToPart = true
				bhEF2.Rate = 160
				bhEF3.Name = "BFEG"
				bhEF3.Parent = bh
				bhEF3.Speed = NumberRange.new(10, 10)
				bhEF3.Color = ColorSequence.new(Color3.new(1, 0.333333, 0),Color3.new(1, 0, 0),Color3.new(1, 0.333333, 0))
				bhEF3.LightEmission = 1
				bhEF3.LightInfluence = 1
				bhEF3.Texture = "rbxassetid://867619398"
				bhEF3.Transparency = NumberSequence.new(1,0.9624999761581421,0.949999988079071,0.9375,0.925000011920929,1)
				bhEF3.ZOffset = -1
				bhEF3.Size = NumberSequence.new(2,2)
				bhEF3.Drag = 5
				bhEF3.Lifetime = NumberRange.new(1, 1)
				bhEF3.LockedToPart = true
				bhEF3.Rate = 40
				local hitting = true
				spawn(function()
					while hitting do 
						if not game:GetService("Players"):GetPlayerFromCharacter(vh.Parent) then
							if vh.Health > 1.15 then
								local creator = new("ObjectValue")
								creator.Name = "creator"
								creator.Value = game:GetService("Players"):GetPlayerFromCharacter(chara)
								creator.Parent = vh
								debris:AddItem(creator, 2)
								vh:TakeDamage(1.15 * damagemult)
							end
						else
							if vh.Health > 0.2 then
								local creator = new("ObjectValue")
								creator.Name = "creator"
								creator.Value = game:GetService("Players"):GetPlayerFromCharacter(chara)
								creator.Parent = vh
								debris:AddItem(creator, 2)
								vh:TakeDamage(0.2 * damagemult)
							end
						end
						local parta = new("Part")
						parta.Parent = script
						parta.Transparency = 1
						parta.CanCollide = false
						parta.CFrame = tt.CFrame * cframe(random(-1,1),random(-1,1),random(-1,1))
						parta.Anchored = true
						hiteffect("sphere",parta)
						debris:AddItem(parta,0.01)
						local randomhit = random(0,3)
						if randomhit == 0 then
							sound(84301080645577,2.5,1,tt,0,false)
						elseif randomhit == 1 then
							sound(6594869919,2.5,1,tt,0,false)
						elseif randomhit == 2 then
							sound(220833967,2.5,1,tt,0,false)
						else
							sound(6216173737,2.5,1,tt,0,false)
						end
						if random(0,10) <= 2 then
							sound(7441099080,3,1,tt,0,false)
							hiteffect("blood",tt)
							hiteffect("blood2",tt)
						end
						wait(0.075)
					end
				end)
				wait(0.15)
				frame = 2
				local randomevil = random(0,3)
				if user.Name == "ninjakaiden1" then
					if randomevil == 0 then
						if game.PlaceId == 11510416200 or game.PlaceId == 126783576555525 or game.PlaceId == 89201052571047 or game.PlaceId == 79868761121850 then
							sound(83903066192799,1.5,1,rt,0,false)
						else
							sound(18950390807,4.5,1,rt,0,false)
						end
					elseif randomevil == 1 then
						sound(18950390807,4.5,1,rt,0,false)
					else
						sound(8765309012,7.5,1,rt,0.9,false)
					end
				end
				wait(2)
				frame = 3
				if user.Name == "ninjakaiden1" then
					if gender == "Male" then
						chatter("DESTRUCTION!!")
						if voices then
							voice("scorpion/scorp_3900-2.wav",3,1.05,head,0,false)
						end
					else
						if randomq == 0 then
							chatter("DISAPPEAR!!!")
							if voices then
								sound(124928290024058,5,1.05,head,0,false)
							end
						elseif randomq == 1 then
							chatter("YOU'VE OUTSTAYED YOUR WELCOME.")
							if voices then
								sound(133996998942957,5,1.05,head,0,false)
							end
						elseif randomq == 2 then
							if voices then
								sound(5989917837,5,1.05,head,1.275,false)
							end
						elseif randomq == 3 then
							chatter("DIE!!")
							if voices then
								sound(84111100415052,5,1.05,head,0,false)
							end
						else
							chatter("NEMESIS STABILIZER!!")
							if voices then
								sound(4580669752,5,1.05,head,0,false)
							end
						end
					end
				else
					if randomq == 0 then
						chatter("DISAPPEAR!!!")
						if voices then
							sound(124928290024058,5,1.05,head,0,false)
						end
					elseif randomq == 1 then
						chatter("YOU'VE OUTSTAYED YOUR WELCOME.")
						if voices then
							sound(133996998942957,5,1.05,head,0,false)
						end
					elseif randomq == 2 then
						if voices then
							sound(5989917837,5,1.05,head,1.275,false)
						end
					elseif randomq == 3 then
						chatter("DIE!!")
						if voices then
							sound(84111100415052,5,1.05,head,0,false)
						end
					else
						chatter("NEMESIS STABILIZER!!")
						if voices then
							sound(4580669752,5,1.05,head,0,false)
						end
					end
				end
				wait(0.1)
				Weapon.Transparency = 0
				hitting = false
				frame = 4
				aura.Enabled = false
				aura2.Enabled = false
				aural:Destroy()
				heat:Destroy()
				highlight:Destroy()
				bhEF.Enabled = false
				bhEF2.Enabled = false
				bhEF3.Enabled = false
				debris:AddItem(aura,2.5)
				debris:AddItem(aura2,2.5)
				debris:AddItem(bh,1.6)
				if random(0,8) <= 1 or user.Name == "ninjakaiden1" then
					scream(th)
				end
				if user.Name == "ninjakaiden1" then
					local zbb = new("BillboardGui")
					local ilc = new("ImageLabel")
					local ils = new("ImageLabel")
					zbb.Name = "Ultimate"
					zbb.Parent = rt
					zbb.LightInfluence = 1
					zbb.Size = UDim2.new(10, 10, 10, 10)
					zbb.Active = true
					zbb.ClipsDescendants = true
					zbb.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
					ils.Name = "Spirit"
					ils.Parent = zbb
					ils.Size = UDim2.new(1, 0, 1, 0)
					ils.BackgroundColor = bc("Institutional white")
					ils.BackgroundColor3 = color(1, 1, 1)
					ils.BackgroundTransparency = 1
					ils.BorderColor = bc("Really black")
					ils.BorderColor3 = color(0, 0, 0)
					ils.BorderSizePixel = 0
					ils.ZIndex = 0
					ils.ScaleType = Enum.ScaleType.Fit
					ils.ResampleMode = "Pixelated"
					if randomevil == 0 then
						if game.PlaceId == 11510416200 or game.PlaceId == 126783576555525 or game.PlaceId == 89201052571047 or game.PlaceId == 79868761121850 then
							ils.Image = "rbxassetid://137253471223733"
						else
							ils.Image = "rbxassetid://9187471515"
						end
					elseif randomevil == 1 then
						ils.Image = "rbxassetid://9187471515"
					else
						ils.Image = "rbxassetid://14442885762"
					end
					local mul = 0
					spawn(function()
						while zbb ~= nil do
							mul = mul + 15
							if ils.ImageTransparency  >= 1 then
								if zbb == nil then
									break
								end
								ils:Destroy()
								ilc:Destroy()
								zbb = nil
							end
							if zbb == nil then
								break
							else
								zbb.StudsOffset = zbb.StudsOffset + vect3(0,0.45,0)
								zbb.Size = zbb.Size + UDim2.new(0.25,0.25,0.25,0.25)
								ilc.Rotation = ilc.Rotation + mul
								ilc.ImageTransparency = ilc.ImageTransparency + 0.025
								ils.ImageTransparency = ilc.ImageTransparency + 0.025
							end
							wait(0.005)
						end
					end)
				end
				if tt:FindFirstChild("FearStay") then tt:FindFirstChild("FearStay"):Destroy() end
				local boom = new("Explosion")
				boom.Parent = workspace
				boom.Position = tt.Position
				boom.BlastRadius = 0
				boom.BlastPressure = 0
				sound2(8129395308,3.5,0.5,tt,0)
				sound2(4418405082,4.5,0.5,tt,0)
				sound2(597291504,5,0.5,tt,0)
				hiteffect("burn",tt)
				tt.Parent:BreakJoints()
				if user.Name == "ninjakaiden1" then
					if randomevil == 0 then
						if game.PlaceId == 11510416200 or game.PlaceId == 126783576555525 or game.PlaceId == 89201052571047 or game.PlaceId == 79868761121850 then
							sound(96150583003156,1.5,1,rt,0,false)
						else
							sound(116193591557839,4.5,1,rt,0,false)
						end
					elseif randomevil == 1 then
						sound(116193591557839,4.5,1,rt,0,false)
					else
						sound(8765309507,7.5,1,rt,0,false)
					end
					if random(0,11) == 0 then
						sound(17561469788,11.5,1,rt,0,false)
						sound(9060378036,7.5,1,chara,0,false)
						for _, v in pairs(game:GetService("Players"):GetPlayers()) do
							if v:FindFirstChild("PlayerGui") then
								local flash = new("ScreenGui")
								flash.Parent = v.PlayerGui
								local frame = new("Frame")
								frame.Parent = flash
								frame.Size = UDim2.new(1,0,1,0)
								frame.BackgroundColor3 = color(1,1,1)
								frame.BackgroundTransparency = 0
								spawn(function()
									for i = 1,45 do
										wait()
										frame.BackgroundTransparency = frame.BackgroundTransparency + 1/45
									end
								end)
								debris:AddItem(flash, 2.5)
							end
						end
					end
				end
				if random(0,10) <= 2 then
					sound(7441099080,3,1,tt,0,false)
					hiteffect("blood",tt)
					hiteffect("blood2",tt)
				end
				for _, v in pairs(tt.Parent:GetDescendants()) do
					if v:IsA("BasePart") then
						v:BreakJoints()
						local bv = new("BodyVelocity")
						bv.P = 4999
						bv.MaxForce = vect3(math.huge,math.huge,math.huge)
						bv.Velocity = rt.CFrame.LookVector * 100 + vect3(random(-4,4),random(-4,4),random(-4,4))
						bv.Parent = v
						v.RotVelocity=vect3(random(-8,8),random(-8,8),0)
						local tw = tweens:Create(v, TweenInfo.new(2.5), {Color = Color3.fromRGB(0, 0, 0), Transparency = 1})
						tw:Play()
						tw.Completed:Connect(function() v:Destroy() wait(1) if tt.Parent ~= nil then tt.Parent:Destroy() tt.Parent = nil end end)
					end
				end
				frame = 4
				wait(3)
				doingspell = false
				frame = 5
				wait(0.1)
				anim = "fear"
				frame = 3
				wait(0.1)
				sound(130785407,4.5,1,Weapon,0,false)
				frame = 4
				wait(0.1)
				if holdingc then
					wait(0.1)
					anim = "spawn"
					frame = 4
					Trail.Enabled = true
					Weapon.Transparency = 0
					Cosmetic.Transparency = 1
					if user.Name == "ninjakaiden1" then
						if gender == "Male" then
							chatter("This is the power of the Azure:         my power!")
							if voices then
								voice("scorpion/scorp_183-0.wav",3,1.05,head,0,false)
							end
						else
							chatter("Hmph. Rules are made to be broken.")
							if voices then
								sound(124450371493830,5,1.05,head,0,false)
							end
						end
					else
						chatter("Hmph. Rules are made to be broken.")
						if voices then
							sound(124450371493830,5,1.05,head,0,false)
						end
					end
					wait(0.15)
					frame = 2
					wait(1)
					frame = 6
					sound(444895479,3,1.05,Weapon,0,false)
					wait(0.005)
					frame = 5
					wait(0.005)
					frame = 3
					wait(2.5)
					frame = 4
					sound(130785407,4.5,1,Weapon,0,false)
					wait(0.1)
					Trail.Enabled = false
					Weapon.Transparency = 1
					Cosmetic.Transparency = 0
				else
					Trail.Enabled = false
					Weapon.Transparency = 1
					Cosmetic.Transparency = 0
				end
			else
				doingspell = false
				wait(0.1)
				frame = 3
				wait(0.1)
				sound(130785407,4.5,1,Weapon,0,false)
				frame = 4
				wait(0.1)
				Trail.Enabled = false
				Weapon.Transparency = 1
				Cosmetic.Transparency = 0
			end
			human.WalkSpeed = ogws
			human.JumpPower = ogjp
			human.JumpHeight = ogjh
			attack = false
		end
	end;
	["ibuki mioda"] = function()
		--Let's-go-Ibuki-Mioda-chan!
		if not (attack or guarding or hurt or human.Sit == true or sitting or waitin) then
			keycombo = ""
			if user.Name ~= "ninjakaiden1" then if mp < 256 then return end
			else if mp < (256/4) then return end end
			if user.Name == "ninjakaiden1" then
				if overheat then
					mp = mp - (256/10)
				else
					mp = mp - (256/4)
				end
			else
				if overheat then
					mp = mp - (256/2)
				else
					mp = mp - 256
				end
			end
			super()
			attack = true
			local target = false
			local function checktarget()
				for i,v in pairs(workspace:GetDescendants()) do
					if v:FindFirstChildOfClass("Humanoid") and v ~= chara and not target then
						local vhum = v:FindFirstChildOfClass("Humanoid")
						local vtorso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso") or v:FindFirstChild("HumanoidRootPart")
						local vhead = v:FindFirstChild("Head")
						if vtorso then
							local vdistance = (rt.Position - vtorso.Position).magnitude
							if vdistance <= 12.5 and vhum.Health > 0 then
								vtorso.CFrame = rt.CFrame * cframe(0,0,-4.5) * angles(0,rad(180),0)
								local randomu = random(0,9)
								if randomu <= 2 then
									sound(8641752150,2,1,Weapon,0,false)
								elseif randomu == 3 then
									sound(8641752058,2,1,Weapon,0,false)	
								elseif randomu == 4 then
									sound(8641751961,2,1,Weapon,0,false)	
								elseif randomu == 5 then
									sound(8641751865,2,1,Weapon,0,false)	
								elseif randomu >= 6 then
									sound(8641751761,2,1,Weapon,0,false)	
								end
								if vhum.Health > 19 then
									local creator = new("ObjectValue")
									creator.Name = "creator"
									creator.Value = game:GetService("Players"):GetPlayerFromCharacter(chara)
									creator.Parent = vhum
									debris:AddItem(creator, 2)
									vhum:TakeDamage(19 * damagemult)
								end
								local vel = new("BodyVelocity")
								vel.MaxForce = vect3(math.huge,math.huge,math.huge)
								vel.Parent = vtorso
								vel.Velocity = rt.CFrame.LookVector * 5
								debris:AddItem(vel,3)
								vel.Name = "IbukiMove"
								sound(8379118520,6.5,0.5,vtorso,0,false)
								hiteffect("sphere",vtorso)
								local boom = new("Explosion")
								boom.Parent = workspace
								boom.Position = vtorso.Position
								boom.BlastRadius = 0
								boom.BlastPressure = 0
								sound2(2814354338,3,1,vtorso,0)
								hiteffect("burn",vtorso)
								target = true
							end
						end
					end
				end
			end
			human.WalkSpeed = 0
			human.JumpPower = 0
			human.JumpHeight = 0
			anim = "ibuki mioda"
			frame = 1
			Weapon.Transparency = 0
			Cosmetic.Transparency = 1
			Trail.Enabled = true
			wait(1)
			frame = 2
			if user.Name == "ninjakaiden1" then
				if gender == "Male" then
					chatter("Carnage Scissors!")
					if voices then
						voice("scorpion/scorp_3002-0.wav",3,1.05,head,0,false)
					end
				else
					chatter("IBUKI MIODA!!")
					if voices then
						sound(6170999817,5,1.05,head,0,false)
					end
				end
			else
				chatter("IBUKI MIODA!!")
				if voices then
					sound(6170999817,5,1.05,head,0,false)
				end
			end
			local breakdown = new("BodyPosition")
			breakdown.Parent = rt
			breakdown.MaxForce = vect3(math.huge,math.huge,math.huge)
			breakdown.D = 1699
			breakdown.Position = rt.CFrame * cframe(0,0,-50).Position
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
			wait(0.6)
			frame = 3
			breakdown.D = 2750
			effect.Enabled = false
			debris:AddItem(effect,2.5)
			wait(0.15)
			sound(112896373260430,4.5,1,Weapon,0,false)
			breakdown:Destroy()
			checktarget()
			frame = 4
			wait(0.3)
			if target then
				wait(0.5)
				anim = "ibuki hit"
				frame = 1
				if user.Name == "ninjakaiden1" then
					if gender == "Male" then
						chatter("I'll devour you!!")
						if voices then
							voice("scorpion/scorp_3002-1.wav",3,1.05,head,0,false)
						end
					else
						chatter("NNNYYYAAAAHHHH!!")
						if voices then
							sound(84713400889742,5,1.05,head,0,false)
						end
					end
				else
					chatter("NNNYYYAAAAHHHH!!")
					if voices then
						sound(84713400889742,5,1.05,head,0,false)
					end
				end
				rt.CFrame = rt.CFrame + rt.CFrame.lookVector * 1
				wait(0.1)
				frame = 2
				rt.CFrame = rt.CFrame + rt.CFrame.lookVector * 1
				wait(0.1)
				frame = 3
				rt.CFrame = rt.CFrame + rt.CFrame.lookVector * 1
				wait(0.1)
				local Part2 = new("Part")
				local SpecialMesh3 = new("SpecialMesh")
				local Part4 = new("Part")
				local SpecialMesh5 = new("SpecialMesh")
				Part2.Name = "Part2"
				Part2.Parent = script
				Part2.Transparency = 0.25
				Part2.Size = vect3(2.5, 5, 2.5)
				Part2.Anchored = true
				Part2.BottomSurface = Enum.SurfaceType.Smooth
				Part2.BrickColor = bc("Bright red")
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
				Part4.BrickColor = bc("Gold")
				Part4.CanCollide = false
				Part4.TopSurface = Enum.SurfaceType.Smooth
				SpecialMesh5.Parent = Part4
				SpecialMesh5.MeshType = Enum.MeshType.Sphere
				Part2.Material = "Neon"
				Part4.Material = "Neon"
				Part2.Locked = true
				Part4.Locked = true
				Part2.CFrame = rt.CFrame * cframe(0,0,-4.5) * angles(15,0,0)
				Part4.CFrame = rt.CFrame * cframe(0,0,-4.5) * angles(15,0,0)
				local tween = tweens:Create(Part2,TweenInfo.new(1,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{CFrame = Part2.CFrame * cframe(0,1.5,3) * angles(0,rad(180),0),Size = vect3(15,120,15),Transparency = 1})
				tween:Play()
				local tween2 = tweens:Create(Part4,TweenInfo.new(1,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{CFrame = Part4.CFrame * cframe(0,1.5,3) * angles(0,rad(180),0),Size = vect3(10,90,10),Transparency = 1})
				tween2:Play()
				tween.Completed:Connect(function() Part2:Destroy()end)
				tween2.Completed:Connect(function() Part4:Destroy() end)
				local boom = new("Explosion")
				boom.Parent = workspace
				boom.Position = Part2.Position
				boom.BlastRadius = 0
				boom.BlastPressure = 0
				frame = 4
				sound2(6892640563,6.75,0.875,rt,0)
				sound(10209640,7.5,0.5,Weapon,0,false)
				magnitudedamage(35,"sphere", 0, 9.6, 17641902155, 7.5, 1, rt,true,"guitar","ibuki")
				wait(0.45)
				frame = 5
				wait(0.1)
				frame = 6
				sound(130785407,4.5,1,Weapon,0,false)
				Trail.Enabled = false
				Weapon.Transparency = 1
				Cosmetic.Transparency = 0
				wait(0.1)
			else
				wait(0.1)
				frame = 5
				wait(0.1)
				sound(130785407,4.5,1,Weapon,0,false)
				Trail.Enabled = false
				Weapon.Transparency = 1
				Cosmetic.Transparency = 0
			end
			human.WalkSpeed = ogws
			human.JumpPower = ogjp
			human.JumpHeight = ogjh
			attack = false
		end
	end;
	["do that later"] = function()
		--Do that later, just get away!
		if not (attack or guarding or hurt or human.Sit == true or sitting or waitin) then
			keycombo = ""
			attack = true
			human.WalkSpeed = 0
			human.JumpPower = 0
			human.JumpHeight = 0
			anim = "win"
			frame = 1
			wait(0.1)
			sound(8503773812,4.5,1,head,0,false)
			frame = 2
			wait(1)
			local randomquote = random(0,3)	
			if user.Name == "ninjakaiden1" then
				if gender == "Male" then
					if randomquote > 1 then
						chatter("Do that later, just get away!")
						if voices then
							voice("scorpion/scorp_192-0.wav",3,1.05,head,0,false)
						end
					else
						chatter("Fine. Get over and I will put you to sleep.")
						if voices then
							voice("scorpion/scorp_192-1.wav",3,1.05,head,0,false)
						end
					end
				else
					if randomquote > 1 then
						chatter("You aren't needed, scum.")
						if voices then
							sound(85213244965566,5,1.05,head,0,false)
						end
					else
						chatter("GET OUT OF MY WAY!!")
						if voices then
							sound(5845980054,3,1.05,head,0,false)
						end
					end
				end
			else
				if randomquote > 1 then
					chatter("You aren't needed, scum.")
					if voices then
						sound(85213244965566,5,1.05,head,0,false)
					end
				else
					chatter("GET OUT OF MY WAY!!")
					if voices then
						sound(5845980054,3,1.05,head,0,false)
					end
				end
			end
			anim = "dtl"
			frame = 1
			wait(0.75)
			frame = 2
			wait(0.25)
			sound(8679732323,3,1,ll,0,false)
			magnitudedamage(19,"sphere", 0.0575, 5, 8659358224, 7.5, 1, rt,true,"normal","dtl")
			frame = 3
			wait(0.175)
			frame = 4
			wait(0.1)
			human.WalkSpeed = ogws
			human.JumpPower = ogjp
			human.JumpHeight = ogjh
			attack = false
		end
	end;
	["go shoot"] = function()
		--Go shoot!
		if not (attack or guarding or hurt or human.Sit == true or sitting or waitin) then
			keycombo = ""
			if user.Name ~= "ninjakaiden1" then if not overheat then return end end
			if user.Name ~= "ninjakaiden1" then if mp < 115 then return end
			else if mp < (115/4) then return end end
			if user.Name == "ninjakaiden1" then
				mp = mp - (115/4)
			else
				mp = mp - 115
			end
			super()
			keycombo = ""
			attack = true
			local target = false
			local function checktarget()
				for i,v in pairs(workspace:GetDescendants()) do
					if v:FindFirstChildOfClass("Humanoid") and v ~= chara and not target then
						local vhum = v:FindFirstChildOfClass("Humanoid")
						local vtorso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso") or v:FindFirstChild("HumanoidRootPart")
						local vhead = v:FindFirstChild("Head")
						if vtorso then
							local vdistance = (rt.Position - vtorso.Position).magnitude
							if vdistance <= 8.75 and vhum.Health > 0 then
								vtorso.CFrame = rt.CFrame * cframe(0,0,-4.5) * angles(0,rad(180),0)
								local randomu = random(0,9)
								if randomu <= 2 then
									sound(8641752150,2,1,Weapon,0,false)
								elseif randomu == 3 then
									sound(8641752058,2,1,Weapon,0,false)	
								elseif randomu == 4 then
									sound(8641751961,2,1,Weapon,0,false)	
								elseif randomu == 5 then
									sound(8641751865,2,1,Weapon,0,false)	
								elseif randomu >= 6 then
									sound(8641751761,2,1,Weapon,0,false)	
								end
								if vhum.Health > 16 then
									local creator = new("ObjectValue")
									creator.Name = "creator"
									creator.Value = game:GetService("Players"):GetPlayerFromCharacter(chara)
									creator.Parent = vhum
									debris:AddItem(creator, 2)
									vhum:TakeDamage(16 * damagemult)
								end
								local vel = new("BodyVelocity")
								vel.MaxForce = vect3(math.huge,math.huge,math.huge)
								vel.Parent = vtorso
								vel.Velocity = rt.CFrame.LookVector * 2.5
								debris:AddItem(vel,3)
								vel.Name = "GoShootMove"
								sound(2248511,4.5,1.75,vtorso,0,false)
								hiteffect("sphere",vtorso)
								target = true
							end
						end
					end
				end
			end
			human.WalkSpeed = 0
			human.JumpPower = 0
			human.JumpHeight = 0
			anim = "esper"
			frame = 1
			wait(0.1)
			Cosmetic.Transparency = 1
			Weapon.Transparency = 0
			Trail.Enabled = true
			frame = 2
			wait(1)
			frame = 3
			wait(0.1)
			checktarget()
			frame = 4
			sound(3624807031,4.5,1,Weapon,0,false)
			local randomu = random(0,9)
			if randomu <= 2 then
				sound(8641752150,2,1,Weapon,0,false)
			elseif randomu == 3 then
				sound(8641752058,2,1,Weapon,0,false)	
			elseif randomu == 4 then
				sound(8641751961,2,1,Weapon,0,false)	
			elseif randomu == 5 then
				sound(8641751865,2,1,Weapon,0,false)	
			elseif randomu >= 6 then
				sound(8641751761,2,1,Weapon,0,false)	
			end
			wait(0.35)
			if target then
				wait(0.25)
				anim = "go shoot"
				frame = 1
				if user.Name == "ninjakaiden1" then
					if gender == "Male" then
						if random(0,3) >= 2 then
							chatter("Seed of Tartarus!")
							if voices then
								voice("scorpion/scorp_4000-0.wav",3,1.05,head,0,false)
								end
						else
							chatter("NO MERCY!")
							if voices then
								voice("scorpion/scorp_4000-1.wav",3,1.05,head,0,false)
							end
						end
					else
						chatter("NNNYYYAAAAHHHH!!")
						if voices then
							sound(84713400889742,5,1.05,head,0,false)
						end
					end
				else
					chatter("NNNYYYAAAAHHHH!!")
					if voices then
						sound(84713400889742,5,1.05,head,0,false)
					end
				end
				rt.CFrame = rt.CFrame + rt.CFrame.lookVector * 0.5
				wait(0.1)
				frame = 2
				rt.CFrame = rt.CFrame + rt.CFrame.lookVector * 0.5
				wait(0.1)
				frame = 3
				rt.CFrame = rt.CFrame + rt.CFrame.lookVector * 0.5
				wait(0.1)
				frame = 4
				wait(0.045)
				frame = 7
				sound(5989940988,2.5,1,Weapon,0,false)
				magnitudedamage(42, "sphere", 0, 11.5, 2691586, 7.5, 0.35, rt,true,"guitar","shoot")
				wait(0.05)
				frame = 8
				wait(0.05)
				frame = 5
				wait(1)
				Trail.Enabled = false
				frame = 6
				wait(0.1)
				anim = "spawn2"
				frame = 3
				wait(0.2)
				frame = 4
				sound(5989940988,3.5,1,Weapon,0,false)
				wait(0.45)
				sound(9105467029,4.5,1,Weapon,0.182,false)	
				frame = 5
				wait(0.2)
				frame = 6
				wait(0.12)
				sound(130785407,4.5,1,Weapon,0,false)
				frame = 7
				wait(0.5)
				Weapon.Transparency = 1
				Cosmetic.Transparency = 0
			else
				wait(0.1)
				Trail.Enabled = false
				frame = 5
				sound(130785407,4.5,1,Weapon,0,false)
				wait(0.1)
				Cosmetic.Transparency = 0
				Weapon.Transparency = 1
			end
			human.WalkSpeed = ogws
			human.JumpPower = ogjp
			human.JumpHeight = ogjh
			attack = false
		end
	end;
	["ww"] = function()
		--dash forward
		if not (attack or guarding or hurt or human.Sit == true or sitting or waitin) then
			keycombo = ""
			attack = true
			anim = "dash"
			frame = 1
			wait(0.125)
			frame = 2
			sound(5989939664,3.5,1,torso,0,false)
			local dash = new("BodyVelocity")
			dash.Parent = rt
			dash.MaxForce = vect3(math.huge,math.huge,math.huge)
			dash.Velocity = rt.CFrame.lookVector * 100
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
			wait(0.4)
			effect.Enabled = false
			debris:AddItem(effect,2.5)
			dash:Destroy()
			attack = false
		end
	end;
	["ss"] = function()
		--dash back
		if not (attack or guarding or hurt or human.Sit == true or sitting or waitin) then
			keycombo = ""
			attack = true
			anim = "dash"
			frame = 1
			wait(0.125)
			frame = 3
			sound(5989939664,3.5,1,torso,0,false)
			local dash = new("BodyVelocity")
			dash.Parent = rt
			dash.MaxForce = vect3(math.huge,math.huge,math.huge)
			dash.Velocity = rt.CFrame.lookVector * -100
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
			wait(0.4)
			effect.Enabled = false
			debris:AddItem(effect,2.5)
			dash:Destroy()
			attack = false
		end
	end;
}


--key stuff
mouse.KeyDown:connect(function(key)
	keycombotime = tick()
	if key == "q" and not (ducking or human.Sit == true or sitting or waitin) then
		human.WalkSpeed = 0
		human.JumpPower = 0
		human.JumpHeight = 0
		ducking = true
	end
	if key == "r" and not (attack or guarding or hurt or human.Sit == true or sitting or waitin) then
		human.WalkSpeed = 0
		guarding = true
	end
	if key == "leftshift" and not (attack or ducking or guarding or hurt or human.Sit == true or sitting or waitin) then
		human.WalkSpeed = 75
	end
	if key == "0" and not (attack or ducking or guarding or hurt or human.Sit == true or sitting or waitin) then
		human.WalkSpeed = 75
	end
	if key == "g" and not (attack or guarding or hurt or human.Sit == true or sitting or waitin) then
		emote("Taunt")
	end	
	if key == "b" and not (attack or guarding or hurt or human.Sit == true or sitting or waitin) then
		emote("Sit")
	end	
	if key == "b" and (attack or sitting) and not (guarding or hurt or human.Sit == true or waitin) then
		sitting = false
	end	
	if key == "p" and not (attack or guarding or hurt or human.Sit == true or sitting or waitin) then
		emote("Waiting")
	end
	if key == "p" and (attack or waitin) and not (guarding or hurt or human.Sit == true or sitting) then
		waitin = false
	end	
	if key == "h" and not (attack or guarding or hurt or human.Sit == true or sitting or waitin) then
		if keycombo == "asdwa" then
			moves["tsuzura"]()
		else
			moves["grab"]()
		end
		keycombo = ""
		keycount = 0
		keytime = 0
	end	
	if key == "s" then
		holdings = true
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
	if key == "v" then
		holdingv = true
	end
	if key == "y" then
		holdingy = true
	end
	if key == "y" and not (attack or guarding or hurt or human.Sit == true or sitting or waitin) then
		moves["aura charge"]()
		keycombo = ""
		keycount = 0
		keytime = 0
	end	
	if key == "c" and not (attack or guarding or hurt or human.Sit == true or sitting or waitin) then
		if keycombo == "sd" then
			moves["kasui"]()
		elseif keycombo == "dds" then
			moves["kyubey"]()
		elseif keycombo == "sa" then
			moves["miki hoshii"]()
		elseif keycombo == "sasd" then
			moves["ibuki mioda"]()
		elseif keycombo == "asdasd" or keycombo == "asdsad" then
			moves["tengoku"]()
		else
			moves["guitar"]()
		end
		keycombo = ""
		keycount = 0
		keytime = 0
	end	
	if key == "z" and not (attack or guarding or hurt or human.Sit == true or sitting or waitin) then
		if keycombo == "sd" then
			moves["amami"]()
		else
			moves["punch"]()
		end
		keycombo = ""
		keycount = 0
		keytime = 0
	end
	if key == "x" and not (attack or guarding or hurt or human.Sit == true or sitting or waitin) then
		if keycombo == "sa" then
			moves["yuki"]()
		elseif keycombo == "sd" then
			moves["naoto kurogane"]()
		elseif keycombo == "dsasd" then
			moves["invite to hell"]()	
		else
			moves["kick"]()
		end
		keycombo = ""
		keycount = 0
		keytime = 0
	end	
	if key == "v" and not (attack or guarding or hurt or human.Sit == true or sitting or waitin) then
		if keycombo == "sd" then
			moves["mirai"]()
		elseif keycombo == "dsadsa" then
			moves["turn of the crank"]()
		else
			moves["esperanda"]()
		end
		keycombo = ""
		keycount = 0
		keytime = 0
	end
	if key == "t" and not (attack or guarding or hurt or human.Sit == true or sitting or waitin) then
		if keycombo == "adadw" then
			moves["go shoot"]()
		elseif keycombo == "dw" then
			moves["do that later"]()
		else
			moves["teikani"]()
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
				moves[keycombo]()
				keycombo = ""
				keycount = 0
				keytime = 0
			end
		end
	end
end)

mouse.KeyUp:connect(function(key)
	if key == "q" and ducking and not (human.Sit == true or sitting or waitin) then
		human.WalkSpeed = ogws
		human.JumpPower = ogjp
		human.JumpHeight = ogjh
		ducking = false
	end
	if key == "r" and guarding and not (attack or hurt or human.Sit == true or sitting or waitin) then
		if not ducking then
			human.WalkSpeed = ogws
		end
		guarding = false
	end
	if key == "s" then
		holdings = false
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
	if key == "v" then
		holdingv = false
	end
	if key == "y" then
		holdingy = false
	end
	if key == "leftshift" and not (attack or ducking or guarding or hurt or human.Sit == true or sitting or waitin) then
		human.WalkSpeed = ogws
	end
	if key == "0" and not (attack or ducking or guarding or hurt or human.Sit == true or sitting or waitin) then
		human.WalkSpeed = ogws
	end
end)


--Animations. Man, I hate using premade code-related stuff.
runservice.Heartbeat:Connect(function()
	sine = tick()*60
	maxhp = human.MaxHealth
	if anim == "idle" then
		if not ducking then
			if not guarding then
				if human.Health > (maxhp/2) or maxhp == math.huge then
					rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0+ 0.075 * sin(sine / 18)) * angles(rad(0), rad(0), rad(-0)), 0.3)
					nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(0)), 0.3)
					rs.C0 = rs.C0:Lerp(cframe(1.35 , 0.5+ 0.1 * sin(sine / 18), -0.4+ 0.1 * sin(sine / 18)) * angles(rad(0), rad(45), rad(-0)) * angles(rad(5), rad(-0), rad(0)) * rsC0, 0.3)
					ls.C0 = ls.C0:Lerp(cframe(-1.4, 0.5+ 0.1 * sin(sine / 18), -0.15+ 0.1 * sin(sine / 18)) * angles(rad(0), rad(0), rad(0)) * lsC0, 0.3)
					rh.C0 = rh.C0:Lerp(cframe(1 , -1- 0.075 * sin(sine / 18), 0.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-30), rad(0)), 0.3)
					lh.C0 = lh.C0:Lerp(cframe(-1 , -1- 0.075 * sin(sine / 18), 0 ) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(20), rad(0)), 0.3)
					WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
					CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
				elseif human.Health < (maxhp/2) and maxhp ~= math.huge then
					rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -1) * angles(rad(10), rad(-30), rad(-60)), 0.3)
					nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(35), rad(0), rad(0)), 0.3)
					rs.C0 = rs.C0:Lerp(cframe(1 , 0.5, -1) * angles(rad(40), rad(75), rad(-0)) * angles(rad(-10), rad(0), rad(-10)) * rsC0, 0.3)
					ls.C0 = ls.C0:Lerp(cframe(-1.25, 0.25, -0.5) * angles(rad(65), rad(-45), rad(30)) * angles(rad(25), rad(0), rad(-0)) * lsC0, 0.3)
					rh.C0 = rh.C0:Lerp(cframe(1.25, -0.6, -0.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(10), rad(-20), rad(-35)), 0.3)
					lh.C0 = lh.C0:Lerp(cframe(-1 , 0.15, -0.75) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(-15), rad(-15)), 0.3)
					WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
					CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
				end
			else
				rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-115)), 0.3)
				nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(75)), 0.3)
				rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.25, 0.5) * angles(rad(45), rad(0), rad(-0)) * rsC0, 0.3)
				ls.C0 = ls.C0:Lerp(cframe(-1.35, 0.65, -0.6) * angles(rad(180), rad(60), rad(0)) * lsC0, 0.3)
				rh.C0 = rh.C0:Lerp(cframe(1 , -1, -0.15) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-0), rad(0)), 0.3)
				lh.C0 = lh.C0:Lerp(cframe(-1 , -1, 0 ) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(20), rad(0)), 0.3)
				WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
				CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
			end
		else
			if not guarding then
				rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -1+ 0.05 * sin(sine / 20)) * angles(rad(10), rad(-10), rad(-60)), 0.3)
				nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0+ 0.05 * sin(sine / 20)) * angles(rad(10), rad(10), rad(35)), 0.3)
				rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.5+ 0.05 * sin(sine / 20), -0.5) * angles(rad(0), rad(60), rad(30)) * angles(rad(-30), rad(-0), rad(-20)) * rsC0, 0.1)
				ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.15- 0.05 * sin(sine / 20), -0.5) * angles(rad(0), rad(-40), rad(-15)) * lsC0, 0.1)
				rh.C0 = rh.C0:Lerp(cframe(1 , -0- 0.05 * sin(sine / 20), -0.45) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-20), rad(-20), rad(-10)), 0.3)
				lh.C0 = lh.C0:Lerp(cframe(-1 , -1.15- 0.05 * sin(sine / 20), -0.5) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-10), rad(45), rad(80)), 0.3)
				WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
				CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
			else
				rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -1.25+ 0.05 * cos(sine / 15)) * angles(rad(0), rad(-5), rad(-125)), 0.3)
				nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0+ 0.025 * cos(sine / 15)) * angles(rad(-0), rad(0), rad(90)), 0.3)
				rs.C0 = rs.C0:Lerp(cframe(1.35 , 0.25- 0.025 * cos(sine / 15), -0.5) * angles(rad(60), rad(0), rad(-30)) * rsC0, 0.3)
				ls.C0 = ls.C0:Lerp(cframe(-1.35, 0.65+ 0.05 * cos(sine / 15), -0.6) * angles(rad(180), rad(60), rad(0)) * lsC0, 0.3)
				rh.C0 = rh.C0:Lerp(cframe(1.75, -0.5- 0.05 * cos(sine / 15), -0.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(45), rad(-30), rad(10)), 0.3)
				lh.C0 = lh.C0:Lerp(cframe(-1.15, -0.95- 0.05 * cos(sine / 15), -0.5) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(30), rad(75)), 0.3)
				WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
				CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
			end
		end
	elseif anim == "walk" then
		if not running then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0,0, 0+ 0.025 * cos(sine / 9.5) + -sin(sine / 9.5) / 12.5) * angles(rad(10), rad(0), rad(-0+ 5 * cos(sine / 9.5) + -sin(sine / 9.5) / 12.5)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(10), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.5, 0) * angles(rad(0 + 115 * cos(sine / 9.5) / 2), rad(0), rad(-0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.5, 0) * angles(rad(0 - 115 * cos(sine / 9.5) / 2), rad(0), rad(0)) * lsC0, 0.3)
			--i hate making walking animations
			rh.C0 = rh.C0:Lerp(cframe(1, -1, -0.5 * sin(sine/9)) *  angles(rad(0), rad(90), rad(0)) * angles(rad(0),rad(0),rad(-15) + sin(sine/9)),0.15)
			lh.C0 = lh.C0:Lerp(cframe(-1, -1, 0.5 * sin(sine/9)) *  angles(rad(0), rad(-90), rad(0))  * angles(rad(0),rad(0),rad(15) + sin(sine/9)),0.15)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		else
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0,0, 0- 0.25 * cos(sine / 5.5)) * angles(rad(30), rad(0 - 2.5 * cos(sine / 5.5)), rad(-0 - 7.5 * cos(sine / 5.5))), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(15), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.5, 0) * angles(rad(0 + 200 * cos(sine / 5.5) / 2), rad(0), rad(-0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.5, 0) * angles(rad(0 - 180 * cos(sine / 5.5) / 2), rad(0), rad(0)) * lsC0, 0.3)
			--i hate making run animations
			rh.C0 = rh.C0:Lerp(cframe(1, -0.95 - 0.5 * cos(sine / 5.5) / 2, 1 * cos(sine / 5.5)) * angles(rad(-15 - 50 * cos(sine / 5.5)) + -sin(sine / 5.5) / 2.5, rad(90 - 5 * cos(sine / 5.5)), rad(0)) * angles(rad(0 + 5 * cos(sine / 5.5)), rad(0), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1, -0.95 + 0.5 * cos(sine / 5.5) / 2, -1 * cos(sine / 5.5)) * angles(rad(-15 + 50 * cos(sine / 5.5)) + sin(sine / 5.5) / 2.5, rad(-90 - 5 * cos(sine / 5.5)), rad(0)) * angles(rad(0 - 5 * cos(sine / 5.5)), rad(0), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		end
	elseif anim == "jump" then
		if not guarding then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(30), rad(0), rad(-0)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5, 0.25, -0.25) * angles(rad(60), rad(0), rad(-25)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.25, -0.25) * angles(rad(45), rad(0), rad(25)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -0, -0.75) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-0), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -0.25, -1.15) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(35)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		else
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-115)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(90)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25 , 0.5, -0) * angles(rad(50), rad(0), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 0.5, -0.25) * angles(rad(190), rad(45), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(0.75, -0.75, -1) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(25), rad(-55)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1, -1, 0.5) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(55), rad(75)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		end
	elseif anim == "fall" then
		if not guarding then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(-10), rad(0), rad(-0)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, -0.1, 0.1) * angles(rad(30), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.5, 0) * angles(rad(200), rad(0), rad(-0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.5, 0) * angles(rad(200), rad(0), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-5), rad(-20), rad(-10)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-0.9 , -0.75, -0.75) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(35)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		else
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-115)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(90)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25 , 0.5, -0) * angles(rad(50), rad(0), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 0.5, -0.25) * angles(rad(190), rad(45), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(0.75, -0.75, -1) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(25), rad(-55)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1, -1, 0.5) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(55), rad(75)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		end
	elseif anim == "swimidle" then
		rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-0)), 0.3)
		nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(15), rad(0), rad(0)), 0.3)
		rs.C0 = rs.C0:Lerp(cframe(1.5, 0.5, -0.25+ 0.75 * cos(sine / 30)) * angles(rad(75), rad(0), rad(25+ 90 * cos(sine / 30))) * rsC0, 0.3)
		ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.5, -0.25+ 0.75 * cos(sine / 30)) * angles(rad(80), rad(0), rad(-10- 90 * cos(sine / 30))) * lsC0, 0.3)
		rh.C0 = rh.C0:Lerp(cframe(1, -0.5, -0.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(0), rad(-0), rad(-25)), 0.3)
		lh.C0 = lh.C0:Lerp(cframe(-1 , -1, -0) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(10)), 0.3)
		WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
		CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
	elseif anim == "swim" then
		rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-0)), 0.3)
		nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-15), rad(0), rad(0)), 0.3)
		rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.5, -0) * angles(rad(90+ 120 * cos(sine / 9)), rad(0), rad(0)) * rsC0, 0.3)
		ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.5, -0) * angles(rad(90+ 120 * cos(sine / 9)), rad(0), rad(-0)) * lsC0, 0.3)
		rh.C0 = rh.C0:Lerp(cframe(1, -1, -0.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(0), rad(-0), rad(-25+ 55 * cos(sine / 9))), 0.3)
		lh.C0 = lh.C0:Lerp(cframe(-1 , -1, -0) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(10+ 55 * cos(sine / 9))), 0.3)
		WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
		CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
	elseif anim == "sit" then
		rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0.25 - 0.025 * cos(sine / 90)) * angles(rad(0), rad(0), rad(-0)), 0.15)
		nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(15), rad(0), rad(0)), 0.15)
		rs.C0 = rs.C0:Lerp(cframe(1 , 0.25, -0.75) * angles(rad(60), rad(-5), rad(-80 - 5 * cos(sine / 90))) * rsC0, 0.15)
		ls.C0 = ls.C0:Lerp(cframe(-1, 0.25, -0.75) * angles(rad(60), rad(-5), rad(80 + 5 * cos(sine / 90))) * lsC0, 0.15)
		rh.C0 = rh.C0:Lerp(cframe(1 , -1, -0.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(55 + 5 * cos(sine / 90)), rad(0), rad(30)), 0.15)
		lh.C0 = lh.C0:Lerp(cframe(-1 , -1, -0.45) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(35 + 5 * cos(sine / 90)), rad(-0), rad(-15)), 0.15)
		WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
		CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
	elseif anim == "climbidle" then
		rj.C0 = rj.C0:lerp(cframe(0,0 + 0.05 * cos(sine / 20),0)*angles(rad(0),rad(0),rad(0))*rjC0,0.3)
		nk.C0 = nk.C0:lerp(cframe(0,0.1,-0.5)*angles(rad(30),rad(0),rad(0))*nkC0,.1)
		rs.C0 = rs.C0:lerp(cframe(1.5, 0.75 - 0.05 * cos(sine / 20), -0.5) * angles(rad(130), rad(0), rad(-15)) * rsC0, 0.3)
		ls.C0 = ls.C0:lerp(cframe(-1.5, 0.75 - 0.05 * cos(sine / 20), -0.5) * angles(rad(130), rad(0), rad(15)) * lsC0, 0.3)
		rh.C0 = rh.C0:lerp(cframe(1,-0.5 - 0.05 * cos(sine / 20),-0.6)*angles(rad(-25),rad(0),rad(0))*angles(rad(0),rad(90),rad(0)),0.3)
		lh.C0 = lh.C0:lerp(cframe(-1,-1 - 0.05 * cos(sine / 20),-0.1)*angles(rad(11),rad(0),rad(0))*angles(rad(0),rad(-90),rad(0)),0.3)
		WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
		CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
	elseif anim == "climbing" then
		rj.C0 = rj.C0:lerp(cframe(0,0 + 0.05 * cos(sine / 13),0)*angles(rad(0),rad(0),rad(0))*rjC0,0.3)
		nk.C0 = nk.C0:lerp(cframe(0,0.1,-0.5)*angles(rad(28.4),rad(0),rad(0))*nkC0,.1)
		rs.C0 = rs.C0:lerp(cframe(1.5, 0.75 - 0.05 * cos(sine / 20), -0.5) * angles(rad(130+ 35 * cos(sine / 13)), rad(0), rad(-15)) * rsC0, 0.3)
		ls.C0 = ls.C0:lerp(cframe(-1.5, 0.75 - 0.05 * cos(sine / 20), -0.5) * angles(rad(130+ 35 * cos(sine / 13)), rad(0), rad(15)) * lsC0, 0.3)
		rh.C0 = rh.C0:lerp(cframe(1, -0.5 + 0.5 * cos(sine / 7) / 2, -0.6) * angles(rad(-15 - 35 * cos(sine / 7)) + -sin(sine / 7) / 2.5, rad(90 - 2 * cos(sine / 7)), rad(0)) * angles(rad(0 + 2.5 * cos(sine / 7)), rad(0), rad(0)), 0.3)
		lh.C0 = lh.C0:lerp(cframe(-1, -0.5 + 0.5 * cos(sine / 7) / 2, -0.6) * angles(rad(-15 + 35 * cos(sine / 7)) + sin(sine / 7) / 2.5, rad(-90 - 2 * cos(sine / 7)), rad(0)) * angles(rad(0 - 2.5 * cos(sine / 7)), rad(0), rad(0)),0.3)
		WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
		CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
	elseif anim == "dash" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0.25) * angles(rad(10), rad(-0), rad(-0)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.35 , 0.5, -0.4) * angles(rad(0), rad(45), rad(-0)) * angles(rad(-15), rad(-0), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.4, 0.5, -0.15) * angles(rad(30), rad(0), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1, -0.75, -0.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(0), rad(-35), rad(-0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -0.75, -0.65) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(10), rad(-10)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0+ 0.075 * sin(sine / 6)) * angles(rad(20), rad(0), rad(-0)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.5+ 0.1 * sin(sine / 6), -0+ 0.1 * sin(sine / 6)) * angles(rad(-30), rad(0), rad(25)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.5+ 0.1 * sin(sine / 6), -0+ 0.1 * sin(sine / 6)) * angles(rad(-30), rad(0), rad(-25)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1- 0.1 * sin(sine / 6), -0.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-0), rad(-65)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -0.75- 0.1 * sin(sine / 6), -0.75) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(35)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 3 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0+ 0.075 * sin(sine / 6), 0) * angles(rad(20), rad(0), rad(-0)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.5, -0+ 0.1 * sin(sine / 6)) * angles(rad(65), rad(0), rad(25)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.5, -0+ 0.1 * sin(sine / 6)) * angles(rad(65), rad(0), rad(-25)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(0.85, -0.5, -0.75- 0.075 * sin(sine / 6)) *  angles(rad(0), rad(90), rad(0)) * angles(rad(0), rad(-0), rad(50)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -0.5, -1- 0.075 * sin(sine / 6)) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-0), rad(0), rad(45)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		end	
	elseif anim == "sitground" then
		rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -2+ 0.05 * sin(sine / 30)) * angles(rad(-0), rad(0), rad(-0)), 0.3)
		nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(15), rad(0), rad(0)), 0.15)
		rs.C0 = rs.C0:Lerp(cframe(1 , 0.25, -0.75) * angles(rad(60), rad(-5), rad(-80 - 5 * cos(sine / 30))) * rsC0, 0.15)
		ls.C0 = ls.C0:Lerp(cframe(-1, 0.25, -0.75) * angles(rad(60), rad(-5), rad(80 + 5 * cos(sine / 30))) * lsC0, 0.15)
		rh.C0 = rh.C0:Lerp(cframe(1.25, -1- 0.05 * sin(sine / 30), -0.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(75), rad(-0), rad(20)), 0.3)
		lh.C0 = lh.C0:Lerp(cframe(-1.5, -0.5- 0.05 * sin(sine / 30), -1) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(60), rad(0), rad(-20)), 0.3)
		WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
		CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
	elseif anim == "hurt" then
		if not guarding then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0.1) * angles(rad(-30), rad(0), rad(-0)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-30), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.5, -0.25) * angles(rad(90), rad(60), rad(-30)) * angles(rad(-30), rad(-0), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.5, 0) * angles(rad(60), rad(-60), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-20), rad(-0), rad(-30)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, 0 ) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(30)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		else
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-115)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(75)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.25, 0.5) * angles(rad(45), rad(0), rad(-0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.35, 0.65, -0.6) * angles(rad(180), rad(60), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, -0.15) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-0), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, 0 ) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(20), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		end
	elseif anim == "hurt2" then
		if not guarding then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(25), rad(-0), rad(-0)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(35), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.5, 0) * angles(rad(80), rad(75), rad(-0)) * angles(rad(-30), rad(-0), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.5, 0) * angles(rad(75), rad(0), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-30), rad(20)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, -0.5) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(-75)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		else
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-115)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(75)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.25, 0.5) * angles(rad(45), rad(0), rad(-0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.35, 0.65, -0.6) * angles(rad(180), rad(60), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, -0.15) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-0), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, 0 ) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(20), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		end
	elseif anim == "duckhurt" then
		if not guarding then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -1) * angles(rad(-10), rad(10), rad(-60)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-30), rad(-30), rad(35)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.5, 0.5) * angles(rad(75), rad(60), rad(30)) * angles(rad(-30), rad(-60), rad(-20)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, -0.15, 0.5) * angles(rad(30), rad(40), rad(-15)) * angles(rad(90), rad(0), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -0, -0.45) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-20), rad(-20), rad(-10)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-0.85, -0.25, -0.5) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-50), rad(45), rad(35)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		else
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -1.25+ 0.05 * cos(sine / 15)) * angles(rad(0), rad(-5), rad(-125)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0+ 0.025 * cos(sine / 15)) * angles(rad(-0), rad(0), rad(90)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.35 , 0.25- 0.025 * cos(sine / 15), -0.5) * angles(rad(60), rad(0), rad(-30)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.35, 0.65+ 0.05 * cos(sine / 15), -0.6) * angles(rad(180), rad(60), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1.75, -0.5- 0.05 * cos(sine / 15), -0.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(45), rad(-30), rad(10)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1.15, -0.95- 0.05 * cos(sine / 15), -0.5) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(30), rad(75)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		end
	elseif anim == "fallblock" then
		rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-115)), 0.3)
		nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(90)), 0.3)
		rs.C0 = rs.C0:Lerp(cframe(1.25 , 0.5, -0) * angles(rad(50), rad(0), rad(0)) * rsC0, 0.3)
		ls.C0 = ls.C0:Lerp(cframe(-1.25, 0.5, -0.25) * angles(rad(190), rad(45), rad(0)) * lsC0, 0.3)
		rh.C0 = rh.C0:Lerp(cframe(0.75, -0.75, -1) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(25), rad(-55)), 0.3)
		lh.C0 = lh.C0:Lerp(cframe(-1, -1, 0.5) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(55), rad(75)), 0.3)
		WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
		CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
	elseif anim == "fallhurt" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(-30), rad(0), rad(-0)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, -0.2, 0.1) * angles(rad(-35), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1., 0.45, -0.25) * angles(rad(60), rad(180), rad(-50)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 0.75, -0.15) * angles(rad(60), rad(0), rad(-60)) * angles(rad(-0), rad(-90), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-30), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, -0.5) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(-25)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(-60), rad(0), rad(-0)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, -0.2, 0.1) * angles(rad(-35), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1., 0.45, -0.25) * angles(rad(75), rad(145), rad(-25)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 0.75, -0.15) * angles(rad(45), rad(0), rad(-15)) * angles(rad(0), rad(-90), rad(-30)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-15), rad(45)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, -0.5) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(-15)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 3 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(-90), rad(0), rad(-0)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, -0.2, 0.1) * angles(rad(45), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25, 0.85, -0) * angles(rad(75), rad(90), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 1, -0.3) * angles(rad(45), rad(0), rad(-0)) * angles(rad(0), rad(-90), rad(-45)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-0), rad(60)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, -0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(-15)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 4 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -2.5) * angles(rad(-90), rad(0), rad(-0)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, -0.2, 0.1) * angles(rad(45), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.5, -0.25) * angles(rad(45), rad(0), rad(-35)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.5, 0) * angles(rad(75), rad(0), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, -0.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-0), rad(60)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, -0.5) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(-15)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 5 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -2.5) * angles(rad(-90), rad(0), rad(-0)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, -0, 0) * angles(rad(0), rad(0), rad(-60)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.5, -0.25) * angles(rad(0), rad(60), rad(-30)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.5, -0.25) * angles(rad(0), rad(-75), rad(15)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, -0) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-0), rad(-10)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, 0.5) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-0), rad(30), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		end
	elseif anim == "fallrise" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -2) * angles(rad(-75), rad(0), rad(-90)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, -0, 0) * angles(rad(30), rad(45), rad(-25)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(0.65, 0.5, -1) * angles(rad(0), rad(165), rad(-0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-0.5, 0.25, 1) * angles(rad(-90), rad(0), rad(75)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(0.9, -1, -0.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(10), rad(15), rad(10)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, 0.5) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-0), rad(30), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -1.5) * angles(rad(-10), rad(0), rad(-30)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.25, 0) * angles(rad(0), rad(30), rad(30)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.15, 0) * angles(rad(0), rad(0), rad(-15)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , 0.5, -0.45) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-20), rad(-40), rad(-25)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , 0.5, -0.45) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-0), rad(20), rad(10)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 3 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -1) * angles(rad(10), rad(-10), rad(-60)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(10), rad(10), rad(35)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.5, -0.5) * angles(rad(0), rad(60), rad(30)) * angles(rad(-30), rad(-0), rad(-20)) * rsC0, 0.1)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.15, -0.5) * angles(rad(0), rad(-40), rad(-15)) * lsC0, 0.1)
			rh.C0 = rh.C0:Lerp(cframe(1 , -0, -0.45) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-20), rad(-20), rad(-10)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1.15, -0.5) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-10), rad(45), rad(80)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 4 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0) * angles(rad(5), rad(-15), rad(-60)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.35 , 0.5, -0.4) * angles(rad(0), rad(45), rad(-0)) * angles(rad(-15), rad(-0), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.4, 0.5, -0.15) * angles(rad(30), rad(0), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1, -0.75, -0.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(0), rad(-35), rad(10)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -0.75, -0.65) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(10), rad(-10)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		end
	elseif anim == "lose" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0.25) * angles(rad(5), rad(-15), rad(-60)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.35 , 0.5, -0.4) * angles(rad(0), rad(45), rad(-0)) * angles(rad(-15), rad(-0), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.4, 0.5, -0.15) * angles(rad(30), rad(0), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1, -0.5, -0.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(0), rad(-35), rad(10)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -0.5, -0.65) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(10), rad(-10)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -1) * angles(rad(10), rad(-30), rad(-60)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(35), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1 , 0.5, -1) * angles(rad(40), rad(75), rad(-0)) * angles(rad(-10), rad(0), rad(-10)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 0.25, -0.5) * angles(rad(65), rad(-45), rad(30)) * angles(rad(25), rad(0), rad(-0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1.25, -0.6, -0.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(10), rad(-20), rad(-35)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , 0.15, -0.75) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(-15), rad(-15)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		end
	elseif anim == "win" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-0)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(-20)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25 , 0.25, 0.15) * angles(rad(-15), rad(-25), rad(10)) * angles(rad(35), rad(-45), rad(-50)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.4, 0.5, -0.15) * angles(rad(0), rad(0), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(0.85, -1, 0.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-30), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, 0 ) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-10), rad(20), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-20)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(20), rad(-20), rad(-30)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(0.85, -0.25, -0.5) * angles(rad(-50), rad(-25), rad(0)) * angles(rad(35), rad(-75), rad(-195)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.4, 0.5, 0.15) * angles(rad(0), rad(30), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1, -1, -0.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-10), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, 0 ) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-10), rad(35), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		end
	elseif anim == "win2" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-90)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.5, 0) * angles(rad(90), rad(70), rad(-0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 0.5, -0.75) * angles(rad(0), rad(-30), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, -0.15) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-10), rad(-0), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, -0.15) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(30), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,1.5, 0) * angles(rad(5), rad(-10), rad(115)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(30)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25 , 1.15, 0) * angles(rad(90), rad(90), rad(60)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.4, 0.45, 0.35) * angles(rad(0), rad(45), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, -0) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-5), rad(-0), rad(-10)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, -0) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-10), rad(10), rad(30)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 3 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,1.5, 0) * angles(rad(0), rad(-0), rad(115)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(30)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.5, 0.25) * angles(rad(0), rad(-30), rad(15)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.4, 0.45, 0.35) * angles(rad(0), rad(45), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-2.5), rad(-5), rad(-0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, 0) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-0), rad(25), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		end
	elseif anim == "spawn" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -1.25) * angles(rad(5), rad(10), rad(60)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(-60)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.5, 0) * angles(rad(15), rad(0), rad(20)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 0.5, -0.25) * angles(rad(90), rad(180), rad(110)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1.5, -0.75, -0.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-15), rad(-60)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1.5, 0.25, -0.5) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(15), rad(10)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0, 1, 0) *  angles(rad(0), rad(90), rad(-180)) *  angles(rad(180), rad(0), rad(0)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-0.5, 0) * angles(rad(0), rad(0), rad(30)), 0.1)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(-15)), 0.1)
			rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.5, 0) * angles(rad(0), rad(0), rad(30)) * rsC0, 0.1)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.5, 0) * angles(rad(215), rad(0), rad(0)) * lsC0, 0.1)
			rh.C0 = rh.C0:Lerp(cframe(1.1, -1, 0.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-30), rad(0)), 0.1)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, 0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(25), rad(10)), 0.1)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, 1, 0) *  angles(rad(0), rad(90), rad(-180)) *  angles(rad(180), rad(0), rad(0)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 3 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-0.5, 0) * angles(rad(0), rad(0), rad(45)), 1)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(-30)), 1)
			rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.5, 0) * angles(rad(0), rad(0), rad(30)) * rsC0, 1)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.5, 0) * angles(rad(-30), rad(0), rad(0)) * lsC0, 1)
			rh.C0 = rh.C0:Lerp(cframe(1.1, -1, 0) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-15), rad(0)), 1)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, 0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(10), rad(0)), 1)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, -0.75, -0.1) *  angles(rad(0), rad(90), rad(-180)) *  angles(rad(300), rad(0), rad(0)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 4 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(15)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.5, 0) * angles(rad(-30), rad(0), rad(-0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 0.25, 0) * angles(rad(-60), rad(-90), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-10), rad(-45)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, -0.15) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(-10), rad(-10)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, 1, 0) *  angles(rad(0), rad(90), rad(-180)) *  angles(rad(180), rad(0), rad(0)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 5 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-0.5, 0) * angles(rad(0), rad(0), rad(30)), 1)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(-15)), 1)
			rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.5, 0) * angles(rad(0), rad(0), rad(30)) * rsC0, 1)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.5, 0) * angles(rad(90), rad(0), rad(0)) * lsC0, 1)
			rh.C0 = rh.C0:Lerp(cframe(1.1, -1, 0.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-30), rad(0)), 1)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, 0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(25), rad(10)), 1)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, 1, 0) *  angles(rad(0), rad(90), rad(-180)) *  angles(rad(180), rad(0), rad(0)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 6 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-0.5, 0) * angles(rad(0), rad(0), rad(30)), 1)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(-15)), 1)
			rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.5, 0) * angles(rad(0), rad(0), rad(30)) * rsC0, 1)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.5, 0) * angles(rad(180), rad(0), rad(0)) * lsC0, 1)
			rh.C0 = rh.C0:Lerp(cframe(1.1, -1, 0.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-30), rad(0)), 1)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, 0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(25), rad(10)), 1)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, 1, 0) *  angles(rad(0), rad(90), rad(-180)) *  angles(rad(180), rad(0), rad(0)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		end
	elseif anim == "spawn2" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-120)), 1)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(90)), 1)
			rs.C0 = rs.C0:Lerp(cframe(1.25 , 0.25, -0.25) * angles(rad(45), rad(-35), rad(-20)) * rsC0, 1)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 0.5, -0.25) * angles(rad(50), rad(-45), rad(20)) * lsC0, 1)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-0), rad(0)), 1)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, 0 ) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(30), rad(0)), 1)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0.75, -1, -0.25) *  angles(rad(0), rad(90), rad(-180)) * angles(rad(15), rad(15), rad(0)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-90)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.5, 0) * angles(rad(90), rad(60), rad(-30)) * angles(rad(-20), rad(-0), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 1, 0) * angles(rad(180), rad(0), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-0), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, 0 ) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(20), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0.25, -0.5, 0) *  angles(rad(0), rad(90), rad(-180)) * angles(rad(75), rad(0), rad(0)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 3 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-115)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(90)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25 , 0.5, -0.5) * angles(rad(90), rad(75), rad(-30)) * angles(rad(45), rad(-0), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 0.75, -0.25) * angles(rad(0), rad(-60), rad(-30)) * angles(rad(10), rad(-15), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1, -1, -0.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(20), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1, -1, 0.45) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(45), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)) *  angles(rad(0), rad(0), rad(0)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 4 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-90)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(75)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25 , 0.5, -0.5) * angles(rad(90), rad(75), rad(-30)) * angles(rad(15), rad(-0), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.45, 0.5, -0.3) * angles(rad(0), rad(-60), rad(-0)) * angles(rad(-90), rad(-15), rad(-30)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1, -1, -0) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-10), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1, -1, -0.15) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(15), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75-2 * sin(sine / 10), -1, 0) *  angles(rad(0+ 360 * sin(sine / 10)), rad(90), rad(-180)) *  angles(rad(0+360 * sin(sine / 10)), rad(0), rad(0)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 5 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-60)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(45)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25 , 0.5, -0.5) * angles(rad(90), rad(75), rad(-30)) * angles(rad(-45), rad(-0), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.3, 0.75, -0.15) * angles(rad(0), rad(-0), rad(-90)) * angles(rad(45), rad(0), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1, -1, -0) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-10), rad(-15), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1, -1, -0.15) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(25), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1.25, -0.75, 0) *  angles(rad(0), rad(90), rad(-180)) *  angles(rad(-60), rad(0), rad(0)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 6 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-60)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(45)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.5, 0) * angles(rad(30), rad(0), rad(-0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 0.45, -0.25) * angles(rad(-0), rad(-90), rad(0)) * angles(rad(-45), rad(-30), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1, -1, -0) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-10), rad(-15), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1, -1, -0.15) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(25), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, 1, 0) *  angles(rad(0), rad(90), rad(-180)) *  angles(rad(145), rad(0), rad(0)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 7 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-60)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(45)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.25, 0) * angles(rad(15), rad(0), rad(-10)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.45, 0.45, 0.45) * angles(rad(-0), rad(-90), rad(0)) * angles(rad(15), rad(0), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1, -1, -0) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-10), rad(-15), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1, -1, -0.15) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(25), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, 1, 0) *  angles(rad(0), rad(90), rad(-180)) *  angles(rad(180), rad(0), rad(0)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		end
	elseif anim == "taunt" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-15)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.35 , 0.5, -0.4) * angles(rad(0), rad(45), rad(-0)) * angles(rad(5), rad(-0), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.4, 0.5, -0.45) * angles(rad(115), rad(0), rad(30)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-25), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, 0 ) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(35), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-15)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(-20)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.35 , 0.5, -0.4) * angles(rad(0), rad(45), rad(-0)) * angles(rad(5), rad(-0), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.4, 0.25, -0.75) * angles(rad(185), rad(0), rad(25)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-25), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, 0 ) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(35), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 3 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-15)), 0.1)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(20)), 0.1)
			rs.C0 = rs.C0:Lerp(cframe(1.35 , 0.5, -0.4) * angles(rad(0), rad(45), rad(-0)) * angles(rad(5), rad(-0), rad(0)) * rsC0, 0.1)
			ls.C0 = ls.C0:Lerp(cframe(-0.5, 0.5, -0.75) * angles(rad(190), rad(0), rad(60)) * lsC0, 0.1)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-25), rad(0)), 0.1)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, 0 ) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(35), rad(0)), 0.1)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 4 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0.1) * angles(rad(10), rad(0), rad(-15)), 0.15)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(45), rad(0), rad(0)), 0.15)
			rs.C0 = rs.C0:Lerp(cframe(1 , 0.5, -1) * angles(rad(180), rad(-90), rad(-45)) * angles(rad(0), rad(45), rad(0)) * rsC0, 0.15)
			ls.C0 = ls.C0:Lerp(cframe(-1 , 0.5, -1) * angles(rad(180), rad(90), rad(45)) * angles(rad(0), rad(-45), rad(0)) * lsC0, 0.15)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(0), rad(-30), rad(10)), 0.15)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, 0 ) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(20), rad(-10)), 0.15)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 5 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0) * angles(rad(-10), rad(0), rad(-15)), 0.2)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-25), rad(0), rad(0)), 0.2)
			rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.5, -0.5) * angles(rad(90), rad(0), rad(-20)) * rsC0, 0.2)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.5, -0.5) * angles(rad(90), rad(0), rad(20)) * lsC0, 0.2)
			rh.C0 = rh.C0:Lerp(cframe(1 , -0.9, 0.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-10), rad(-30), rad(-10)), 0.2)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1.1, 0 ) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(20), rad(10)), 0.2)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		end
	elseif anim == "waiting" then
		rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0+ 0.05 * sin(sine / 25)) * angles(rad(0), rad(0), rad(-0)), 0.3)
		nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0+ 0.025 * sin(sine / 25)) * angles(rad(-0), rad(0), rad(0)), 0.3)
		rs.C0 = rs.C0:Lerp(cframe(1 , 0.25, -0.75) * angles(rad(60), rad(-5), rad(-80 - 5 * sin(sine / 25))) * rsC0, 0.15)
		ls.C0 = ls.C0:Lerp(cframe(-1, 0.25, -0.75) * angles(rad(60), rad(-5), rad(80 + 5 * sin(sine / 25))) * lsC0, 0.15)
		rh.C0 = rh.C0:Lerp(cframe(1 , -1- 0.05 * sin(sine / 25), 0.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-30), rad(0)), 0.3)
		lh.C0 = lh.C0:Lerp(cframe(-1 , -1- 0.05 * sin(sine / 25), 0 ) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(20), rad(0)), 0.3)
		WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
		CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
	elseif anim == "fail" then
		rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0.75) * angles(rad(5), rad(-10), rad(-60)), 0.3)
		nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(35), rad(0), rad(0 + 15 * sin(sine / 7.5))), 0.3)
		rs.C0 = rs.C0:Lerp(cframe(1.25- 0.05 * sin(sine / 7.5) , 0.5, -0.75) * angles(rad(85), rad(-30), rad(-85)) * rsC0, 0.3)
		ls.C0 = ls.C0:Lerp(cframe(-1.35, 0.6, -0.25) * angles(rad(90), rad(-45), rad(45)) * lsC0, 0.3)
		rh.C0 = rh.C0:Lerp(cframe(1.25, -0.6, -1.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(10), rad(10), rad(-50)), 0.3)
		lh.C0 = lh.C0:Lerp(cframe(-1 , -0, -1) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(10), rad(-5)), 0.3)
		WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
		CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
	elseif anim == "yes" then
		rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0+ 0.075 * sin(sine / 18)) * angles(rad(0), rad(0), rad(-0)), 0.3)
		nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0+ 0.025 * sin(sine / 25)) * angles(rad(0+ 35 * sin(sine / 5)), rad(0), rad(0)), 0.3)
		rs.C0 = rs.C0:Lerp(cframe(1.35 , 0.5+ 0.1 * sin(sine / 18), -0.4+ 0.1 * sin(sine / 18)) * angles(rad(0), rad(45), rad(-0)) * angles(rad(5), rad(-0), rad(0)) * rsC0, 0.3)
		ls.C0 = ls.C0:Lerp(cframe(-1.4, 0.5+ 0.1 * sin(sine / 18), -0.15+ 0.1 * sin(sine / 18)) * angles(rad(0), rad(0), rad(0)) * lsC0, 0.3)
		rh.C0 = rh.C0:Lerp(cframe(1 , -1- 0.075 * sin(sine / 18), 0.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-30), rad(0)), 0.3)
		lh.C0 = lh.C0:Lerp(cframe(-1 , -1- 0.075 * sin(sine / 18), 0 ) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(20), rad(0)), 0.3)
		WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
		CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
	elseif anim == "no" then
		rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0+ 0.075 * sin(sine / 18)) * angles(rad(0), rad(0), rad(-0)), 0.3)
		nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0+ 0.025 * sin(sine / 30)) * angles(rad(-0), rad(0), rad(0+ 60 * sin(sine / 5))), 0.3)
		rs.C0 = rs.C0:Lerp(cframe(1.35 , 0.5+ 0.1 * sin(sine / 18), -0.4+ 0.1 * sin(sine / 18)) * angles(rad(0), rad(45), rad(-0)) * angles(rad(5), rad(-0), rad(0)) * rsC0, 0.3)
		ls.C0 = ls.C0:Lerp(cframe(-1.4, 0.5+ 0.1 * sin(sine / 18), -0.15+ 0.1 * sin(sine / 18)) * angles(rad(0), rad(0), rad(0)) * lsC0, 0.3)
		rh.C0 = rh.C0:Lerp(cframe(1 , -1- 0.075 * sin(sine / 18), 0.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-30), rad(0)), 0.3)
		lh.C0 = lh.C0:Lerp(cframe(-1 , -1- 0.075 * sin(sine / 18), 0 ) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(20), rad(0)), 0.3)
		WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
		CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
	elseif anim == "punch" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-15)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.35 , 0.25, -0.15) * angles(rad(0), rad(-45), rad(-0)) * angles(rad(45), rad(-0), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.4, -0.15, 0.15) * angles(rad(90), rad(30), rad(30)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-30), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, 0 ) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(20), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-60)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(60)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.35 , 0.25, 0.15) * angles(rad(0), rad(-25), rad(-20)) * angles(rad(45), rad(-0), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.4, 0.65, -0.4) * angles(rad(90), rad(-90), rad(0)) * angles(rad(-60), rad(-0), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-30), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, 0 ) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(20), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 3 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-15)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.35 , 0.25, -0.15) * angles(rad(0), rad(-45), rad(-0)) * angles(rad(45), rad(-0), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.4, 0.65, -0.4) * angles(rad(90), rad(-90), rad(0)) * angles(rad(-60), rad(-0), rad(60)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-30), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, 0 ) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(20), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		end
	elseif anim == "fpunch" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0, 0, -0.15) * angles(rad(25), rad(0), rad(50)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(-40)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5, 0.5, -0.5) * angles(rad(40), rad(10), rad(50)) * angles(rad(50), rad(-30), rad(20)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1, 0.75, 0.5) * angles(rad(30), rad(0), rad(-100)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(0, -1, 1) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-125), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-0.25, -0.75, -1.25) *  angles(rad(10), rad(-90), rad(0)) * angles(rad(-20), rad(-75), rad(-40)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-0.5, 0) * angles(rad(0), rad(-0), rad(-120)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(50)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.25, 0) * angles(rad(45), rad(0), rad(-0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 1.25, 0.75) * angles(rad(150), rad(-90), rad(0)) * angles(rad(0), rad(-0), rad(-20)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(0.75 , -1, -0.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-15), rad(30)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1.15, -1, -0.5) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-10), rad(0), rad(25)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 3 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-90)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1 , 0.25, 0.5) * angles(rad(0), rad(-45), rad(-0)) * angles(rad(45), rad(-0), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.4, 1, -0.4) * angles(rad(90), rad(-90), rad(0)) * angles(rad(60), rad(-0), rad(-45)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-30), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, 0 ) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-20), rad(20), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		end
	elseif anim == "dpunch" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -1) * angles(rad(0), rad(-0), rad(-60)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(35)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.5, -0.5) * angles(rad(0), rad(60), rad(75)) * rsC0, 0.1)
			ls.C0 = ls.C0:Lerp(cframe(-1, 0, 0.75) * angles(rad(0), rad(60), rad(-0)) * angles(rad(90), rad(-0), rad(0)) * lsC0, 0.1)
			rh.C0 = rh.C0:Lerp(cframe(1 , -0, -0.45) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-20), rad(-20), rad(-10)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1.15, -0.5) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-10), rad(45), rad(80)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -1) * angles(rad(0), rad(-0), rad(-90)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(35)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.35 , 0.25, 0.15) * angles(rad(0), rad(-25), rad(-20)) * angles(rad(75), rad(-0), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-2, 0.65, -0.15) * angles(rad(90), rad(-90), rad(0)) * angles(rad(-75), rad(-0), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -0, -0.45) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-20), rad(-20), rad(-10)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1.15, -0.5) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-10), rad(45), rad(80)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 3 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -1) * angles(rad(5), rad(-5), rad(-60)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(5), rad(5), rad(35)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.5, -0.25) * angles(rad(0), rad(60), rad(30)) * angles(rad(-0), rad(-30), rad(20)) * rsC0, 0.1)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.15, -0.5) * angles(rad(30), rad(-40), rad(-15)) * lsC0, 0.1)
			rh.C0 = rh.C0:Lerp(cframe(1 , -0, -0.45) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-20), rad(-20), rad(-10)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1.15, -0.5) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-10), rad(45), rad(80)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		end	
	elseif anim == "apunch" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(15), rad(0), rad(-0)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.5, -0.5) * angles(rad(0), rad(60), rad(75)) * rsC0, 0.1)
			ls.C0 = ls.C0:Lerp(cframe(-1, 0, 0.75) * angles(rad(0), rad(60), rad(-0)) * angles(rad(90), rad(-0), rad(0)) * lsC0, 0.1)
			rh.C0 = rh.C0:Lerp(cframe(1 , -0.5, -0.75) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-0), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -0.75, -0.75) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(35)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(30), rad(-10), rad(-60)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(50)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.35 , 0.25, 0.15) * angles(rad(0), rad(-25), rad(-20)) * angles(rad(75), rad(-0), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.65, -0.15) * angles(rad(90), rad(-90), rad(0)) * angles(rad(-60), rad(-0), rad(30)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -0.5, -0.75) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-0), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -0.75, -0.75) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(35)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 3 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(15), rad(-5), rad(-30)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(25)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.35 , 0.25, -0.15) * angles(rad(0), rad(-45), rad(-0)) * angles(rad(45), rad(-0), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.4, 0.65, -0.4) * angles(rad(90), rad(-90), rad(0)) * angles(rad(-60), rad(-0), rad(60)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -0.5, -0.75) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-0), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -0.75, -0.75) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(35)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		end
	elseif anim == "kick" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-115)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(45)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.5, 0) * angles(rad(0), rad(0), rad(-0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.5, -0.25) * angles(rad(0), rad(-45), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, -0.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-10), rad(-0), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, 0 ) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-15), rad(30), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0.25) * angles(rad(-10), rad(10), rad(135)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(-45)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25 , 0.75, 0) * angles(rad(0), rad(0), rad(90)) * angles(rad(-50), rad(-0), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.25, 0) * angles(rad(75), rad(0), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(0.25, -0.25, -1.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-10), rad(45), rad(-0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-0.25 , -1, 0.5) *  angles(rad(20), rad(-90), rad(0)) * angles(rad(5), rad(135), rad(-10)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 3 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0) * angles(rad(-30), rad(0), rad(45)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(-45)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25 , 0.75, 0) * angles(rad(0), rad(0), rad(90)) * angles(rad(-50), rad(-0), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.25, 0) * angles(rad(75), rad(0), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-45), rad(60)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1.25, -0.5, 0.5) *  angles(rad(-15), rad(-90), rad(0)) * angles(rad(-45), rad(60), rad(20)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 4 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0) * angles(rad(-0), rad(0), rad(15)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(-0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25 , 0.75, 0.15) * angles(rad(15), rad(-45), rad(20)) * angles(rad(15), rad(20), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.5, -0.5) * angles(rad(0), rad(-30), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1.25, -1, -0.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-40), rad(-55)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1, -1, 0.25) *  angles(rad(-15), rad(-90), rad(0)) * angles(rad(10), rad(40), rad(-15)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 5 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0) * angles(rad(0), rad(-0), rad(-60)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(45)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.35 , 0.5, -0.4) * angles(rad(0), rad(45), rad(-0)) * angles(rad(15), rad(-0), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.4, 0.5, -0.15) * angles(rad(0), rad(0), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1, -1, 0.15) *  angles(rad(0), rad(90), rad(0)) * angles(rad(0), rad(-45), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, -0.65) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(10), rad(-0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		end
	elseif anim == "fkick" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0,-0.15) * angles(rad(10), rad(-10), rad(45)),0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(20), rad(0), rad(-40)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.35, 0.5, 0) * angles(rad(140), rad(45), rad(20))* angles(rad(-25), rad(0), rad(-15)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 0.5, -0.25) * angles(rad(15), rad(-30), rad(15))* angles(rad(-95), rad(30), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(0, -0.8, 1) *  angles(rad(0), rad(90), rad(0)) * angles(rad(10), rad(-115), rad(20)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(0.5, -1, -1) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(-90), rad(60)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0,-0) * angles(rad(0), rad(-0), rad(-45)),0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(-15)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.5, 0) * angles(rad(90), rad(0), rad(-0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.25, 0) * angles(rad(30), rad(0), rad(30)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-50), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -0.5, -1) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(-20), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 3 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0,-0) * angles(rad(-10), rad(-10), rad(-105)),0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(45)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25 , 0.75, -0.15) * angles(rad(90), rad(120), rad(-0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 0.75, 0.15) * angles(rad(30), rad(0), rad(-75)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -0.5, -1) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-20), rad(10), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1.5 , -0, -0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(50), rad(-160)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 4 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0,-0) * angles(rad(-10), rad(-10), rad(-105)),0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(45)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25 , 0.75, -0.15) * angles(rad(90), rad(120), rad(30)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 0.75, 0.15) * angles(rad(30), rad(15), rad(-90)) * angles(rad(-0), rad(-10), rad(30)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(0.75, -0.5, -1) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-30), rad(10), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1.25 , -0.5, -0) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(75), rad(-90)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 5 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0,-0.25) * angles(rad(10), rad(-15), rad(-115)),0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(45)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25 , 0.5, -0.3) * angles(rad(90), rad(120), rad(30)) * angles(rad(-0), rad(-60), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 0.5, -0.15) * angles(rad(30), rad(15), rad(-90)) * angles(rad(-0), rad(-60), rad(15)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(0.75, -1, -0.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-25), rad(30)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1.25 , -0.5, -0) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(75), rad(-25)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 6 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0.25) * angles(rad(10), rad(-10), rad(-90)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(60)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25 , 0.75, -0.15) * angles(rad(30), rad(45), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 0.75, 0.15) * angles(rad(30), rad(15), rad(-90)) * angles(rad(-0), rad(-10), rad(30)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1, -0.75, -0.45) *  angles(rad(0), rad(90), rad(0)) * angles(rad(5), rad(-20), rad(-0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -0.5, -0.65) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-10), rad(10), rad(-10)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 7 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0) * angles(rad(0), rad(-0), rad(-45)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(60)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25 , 0.75, -0.15) * angles(rad(15), rad(30), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.5, 0) * angles(rad(15), rad(0), rad(-45)) * angles(rad(-0), rad(-10), rad(30)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1, -1, -0.15) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-5), rad(-20), rad(-0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, -0.3) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-10), rad(10), rad(-0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		end
	elseif anim == "dkick" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -1.25) * angles(rad(0), rad(0), rad(-30)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(5), rad(5), rad(35)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1, 0.5, -0.75) * angles(rad(45), rad(0), rad(-30)) * angles(rad(40), rad(50), rad(-40)) * rsC0, 0.1)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 0.5, 0.45) * angles(rad(0), rad(30), rad(0)) * angles(rad(-40), rad(-0), rad(-0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(0.5, -0.5, -0) *  angles(rad(-75), rad(90), rad(0)) * angles(rad(0), rad(-90), rad(30)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -0.75, -0.75) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(60)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -1.4) * angles(rad(-10), rad(0), rad(-15)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(5), rad(5), rad(10)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25, 0.75, -0) * angles(rad(0), rad(0), rad(90)) * angles(rad(-15), rad(0), rad(0)) * rsC0, 0.1)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 0.25, 0.25) * angles(rad(0), rad(30), rad(0)) * angles(rad(55), rad(-0), rad(15)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(0.5, -0.5, -0.5) *  angles(rad(75), rad(90), rad(0)) * angles(rad(0), rad(90), rad(30)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-0.5, -1.25, 1) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(60), rad(105)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 3 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -1) * angles(rad(5), rad(-5), rad(-60)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(5), rad(5), rad(35)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.5, -0.25) * angles(rad(0), rad(60), rad(30)) * angles(rad(-0), rad(-30), rad(20)) * rsC0, 0.1)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.15, -0.5) * angles(rad(15), rad(-25), rad(-0)) * lsC0, 0.1)
			rh.C0 = rh.C0:Lerp(cframe(1 , -0, -0.45) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-20), rad(-20), rad(-10)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1.15, -0.5) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-10), rad(45), rad(80)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		end
	elseif anim == "akick" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(15), rad(0), rad(-90)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(30)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25 , 0, 0.25) * angles(rad(0), rad(-90), rad(-45)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1, 0.75, -0.5) * angles(rad(90), rad(-90), rad(0)) * angles(rad(30), rad(-30), rad(20)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1, -1, -0.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-30), rad(-50)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-0.25, -0, -0.75) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-60), rad(0), rad(-0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(-15), rad(0), rad(-115)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(90)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.25, 0.5) * angles(rad(60), rad(0), rad(-0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 0.75, -0.25) * angles(rad(90), rad(-90), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1, -1, -1) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(0), rad(-75)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-0.5, -0.5, -0.5) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-75), rad(0), rad(30)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 3 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(15), rad(-15), rad(-60)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5, 0.25, -0.25) * angles(rad(60), rad(0), rad(-25)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.25, -0.25) * angles(rad(45), rad(0), rad(25)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -0.5, -0.75) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-0), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -0.75, -1.15) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(35)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		end
	elseif anim == "guitar" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-45)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(25)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25 , 0.25, -0.5) * angles(rad(75), rad(0), rad(-30)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1, 0.75, 0.5) * angles(rad(30), rad(120), rad(-45)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-20), rad(-30), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, 0 ) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(45), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.75, -0.5) *  angles(rad(0), rad(-30), rad(0)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-0.5, 0) * angles(rad(0), rad(0), rad(105)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(-30)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5 , 1, 0) * angles(rad(160), rad(0), rad(-0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 0.75, 0.25) * angles(rad(-90), rad(90), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1.15, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(20), rad(-0), rad(-30)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-0.75, -1, -0.75) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(-30), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 3 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-1, 0) * angles(rad(10), rad(0), rad(-30)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(10), rad(0), rad(-15)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25 , 0.75, 0) * angles(rad(0), rad(-15), rad(90)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 0.75, -1) * angles(rad(90), rad(-90), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(0.85, -0.9, -1.15) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(30), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-0.5, -1, 1) *  angles(rad(-10), rad(-90), rad(0)) * angles(rad(0), rad(75), rad(15)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 4 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(-0,-1.5, -0.75) * angles(rad(30), rad(-45), rad(-135)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(30)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.4 , 0.45, 0.15) * angles(rad(45), rad(0), rad(50)) * angles(rad(0), rad(30), rad(30)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 1, -0.25) * angles(rad(90), rad(-75), rad(30)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(-0.5 , 0.25, -1) *  angles(rad(60), rad(120), rad(0)) * angles(rad(20), rad(90), rad(50)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(0.5, -1.75, 0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-50), rad(155), rad(60)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 5 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-0.45, 0) * angles(rad(15), rad(-10), rad(-60)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25 , 0.75, -0.25) * angles(rad(0), rad(45), rad(45)) * angles(rad(0), rad(-20), rad(30)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-0.75, 0.75, -1) * angles(rad(0), rad(-90), rad(0)) * angles(rad(15), rad(-30), rad(-20)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(0.25, -0.75, -1.25) * angles(rad(15), rad(90), rad(0)) * angles(rad(0), rad(60), rad(15)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-0.5, -1.15, 0.75) * angles(rad(10), rad(-90), rad(0)) * angles(rad(0), rad(75), rad(20)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 6 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-60)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(45)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25 , 0.5, -0.25) * angles(rad(15), rad(45), rad(15)) * angles(rad(35), rad(0), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1, 0.45, 0.45) * angles(rad(-0), rad(90), rad(0)) * angles(rad(15), rad(0), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1, -1, -0) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-10), rad(-15), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1, -1, -0.15) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(15), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.25, 1, 0) *  angles(rad(0), rad(90), rad(-180)) *  angles(rad(-30), rad(0), rad(180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		end
	elseif anim == "fguitar" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0.5) * angles(rad(-5), rad(-10), rad(-120)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(60)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1, 0.25, -0.5) * angles(rad(90), rad(105), rad(-0)) * angles(rad(55), rad(-0), rad(-0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 0.75, -0.25) * angles(rad(90), rad(-75), rad(30)) * angles(rad(15), rad(-0), rad(-20)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -0.5, -0.75) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-0), rad(-30)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -0.5, 0 ) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-20), rad(30), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0.5) * angles(rad(30), rad(-0), rad(-120)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(60)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1, 1, -0.15) * angles(rad(90), rad(75), rad(-0)) * angles(rad(25), rad(-0), rad(30)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.5, -0) * angles(rad(90), rad(-60), rad(30)) * angles(rad(-35), rad(0), rad(-20)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1.15, -0.75) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-10), rad(20), rad(-0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -0.15, -0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-60), rad(30), rad(20)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 3 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-0.5, -0.25) * angles(rad(-5), rad(10), rad(-145)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(50)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.25, 0) * angles(rad(45), rad(0), rad(-0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1, 1.5, 0.75) * angles(rad(150), rad(-60), rad(0)) * angles(rad(30), rad(-50), rad(30)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(0.5, -0.75, -0.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-20), rad(-20), rad(30)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, 0 ) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-30), rad(45), rad(30)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 4 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-0.25, -0) * angles(rad(0), rad(-10), rad(-90)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(20), rad(0), rad(25)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.5, 0) * angles(rad(60), rad(30), rad(30)) * angles(rad(-20), rad(60), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 0.75, 0) * angles(rad(45), rad(0), rad(-90)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-0), rad(10)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, 0 ) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-10), rad(0), rad(5)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 5 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-60)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(45)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.25, -0.25) * angles(rad(0), rad(30), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1, 0.45, 0.45) * angles(rad(-0), rad(90), rad(0)) * angles(rad(15), rad(0), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1, -1, -0) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-5), rad(-20), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1, -1, -0.15) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(15), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.25, 1, 0) *  angles(rad(0), rad(90), rad(-180)) *  angles(rad(-30), rad(0), rad(180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		end
	elseif anim == "dguitar" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -1) * angles(rad(5), rad(-10), rad(-115)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(45)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25 , 0.65, -0.5) * angles(rad(110), rad(75), rad(-45)) * angles(rad(35), rad(0), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-0.25, 0.5, -0.5) * angles(rad(75), rad(-75), rad(0)) * angles(rad(40), rad(-20), rad(30)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(0.5 , -0, -1) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-20), rad(25), rad(20)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1.5, -1, -0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-10), rad(55), rad(80)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -1.45) * angles(rad(-10), rad(0), rad(105)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(5), rad(5), rad(-30)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.5, 0.25) * angles(rad(90), rad(0), rad(90)) * angles(rad(0), rad(55), rad(-0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 0.25, 0) * angles(rad(0), rad(75), rad(-60)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(0.5, -0.45, -0.25) *  angles(rad(90), rad(90), rad(0)) * angles(rad(0), rad(75), rad(-100)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1.25, -1, -0.15) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(30), rad(80)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 3 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -1) * angles(rad(5), rad(-5), rad(-60)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(5), rad(5), rad(35)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.5, -0.25) * angles(rad(30), rad(90), rad(30)) * angles(rad(-0), rad(-30), rad(30)) * rsC0, 0.1)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 0.3, 0.5) * angles(rad(15), rad(50), rad(-0)) *  angles(rad(-30), rad(30), rad(0)) * lsC0, 0.1)
			rh.C0 = rh.C0:Lerp(cframe(1 , -0, -0.45) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-20), rad(-20), rad(-10)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1.15, -0.5) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-10), rad(45), rad(80)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		end
	elseif anim == "aguitar" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(12.5), rad(-15), rad(-0)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(-30)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25 , 0.5, -0.5) * angles(rad(120), rad(30), rad(-30)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 1, -0.25) * angles(rad(0), rad(-0), rad(-90)) *  angles(rad(30), rad(-0), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1.15, -0.5, -1) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-15), rad(-35)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1.15, -0.75, -0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(30), rad(50)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(-15), rad(-180)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(30)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25, 1, -0.25) * angles(rad(30), rad(-10), rad(60)) *  angles(rad(0), rad(40), rad(30)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 0.75, -0) * angles(rad(60), rad(15), rad(-30)) *  angles(rad(-25), rad(-60), rad(-15)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(0.5, -1.15, -1) *  angles(rad(0), rad(90), rad(0)) * angles(rad(10), rad(30), rad(-75)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, 0.75) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(75), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 3 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(10), rad(0), rad(75)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(-20)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(0.75, 0.5, -0.35) * angles(rad(90), rad(90), rad(-10))* angles(rad(60), rad(0), rad(-0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1, 0.35, -0.75) * angles(rad(30), rad(-90), rad(-60)) * angles(rad(30), rad(0), rad(-0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -0.85, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-30), rad(-0), rad(-55)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1.25, -0.5) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(20), rad(0), rad(90)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 4 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(30), rad(0), rad(-0)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5, 0.25, -0.25) * angles(rad(60), rad(0), rad(-25)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 0.5, -0) * angles(rad(-10), rad(75), rad(0)) * angles(rad(-15), rad(-0), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -0, -0.75) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-0), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -0.25, -1.15) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(35)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		end
	elseif anim == "esper" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -1) * angles(rad(5), rad(-10), rad(-115)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(45)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25 , 0.65, -0.5) * angles(rad(110), rad(75), rad(-45)) * angles(rad(35), rad(0), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-0.25, 0.5, -0.5) * angles(rad(75), rad(-75), rad(0)) * angles(rad(40), rad(-20), rad(30)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(0.5 , -0, -1) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-20), rad(25), rad(20)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1.5, -1, -0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-10), rad(55), rad(80)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-0.45, 0) * angles(rad(-10), rad(-10), rad(-120)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(50)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25 , -0.25, 0.5) * angles(rad(60), rad(-60), rad(-0)) * angles(rad(30), rad(-0), rad(-0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 1.25, 0.75) * angles(rad(150), rad(-90), rad(0)) * angles(rad(15), rad(-0), rad(-20)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -0.7, -0.75) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-15), rad(20), rad(10)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1.25, 0.5) *  angles(rad(10), rad(-90), rad(0)) * angles(rad(0), rad(60), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.75, -0.5) *  angles(rad(0), rad(0), rad(0)), 1)
		elseif frame == 3 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-1, 0) * angles(rad(20), rad(-10), rad(-45)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-20), rad(0), rad(50)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(0.25, 2.25, -0.5) * angles(rad(172), rad(-30), rad(-60)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 1.5, 0) * angles(rad(172), rad(-30), rad(10)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, -0) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-15), rad(-30), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -0.5, -0.5) *  angles(rad(10), rad(-90), rad(0)) * angles(rad(0), rad(30), rad(45)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(-90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.75, -0.5) *  angles(rad(0), rad(0), rad(0)), 1)
		elseif frame == 4 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-1.5, -1.5) * angles(rad(60), rad(-10), rad(-15)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(40), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(0.5, 1, -0.5) * angles(rad(62), rad(-0), rad(-40)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 0.5, -0) * angles(rad(62), rad(-0), rad(25)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, -0.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(15), rad(-15), rad(-30)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -0.5, -0.75) *  angles(rad(10), rad(-90), rad(0)) * angles(rad(-30), rad(-15), rad(45)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(-90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.75, -0.5) *  angles(rad(0), rad(0), rad(0)), 1)
		elseif frame == 5 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-0.5, -0.5) * angles(rad(10), rad(-15), rad(-60)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25 , 0.5, -0.5) * angles(rad(45), rad(50), rad(-30)) * angles(rad(-20), rad(30), rad(30)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.5, -0.5) * angles(rad(50), rad(30), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -0.5, -0.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-15), rad(20)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -0.25, -0.75) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(5), rad(20), rad(-15)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(-90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 6 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-75)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(45)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1, 0.5, -0.5) * angles(rad(0), rad(75), rad(10)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 0.45, -0.15) * angles(rad(-0), rad(-90), rad(30)) * angles(rad(15), rad(0), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1.15, -1, -0.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-10), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1, -1, -0.15) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(15), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 1, 0) *  angles(rad(0), rad(-90), rad(-180)) *  angles(rad(-30), rad(0), rad(180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		end
	elseif anim == "fesper" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-90)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1, 0.5, -0.5) * angles(rad(90), rad(75), rad(-0)) * angles(rad(50), rad(-0), rad(-20)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 0.75, 0) * angles(rad(90), rad(90), rad(0)) * angles(rad(0), rad(-0), rad(-150)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-30), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, -0.5) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-10), rad(0), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0, 0.5, -1.25) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0.5) * angles(rad(0), rad(0), rad(-180)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1, 0.75, -0.75) * angles(rad(90), rad(75), rad(-0)) * angles(rad(75), rad(-0), rad(30)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 0.25, 0) * angles(rad(90), rad(-90), rad(0)) * angles(rad(60), rad(-0), rad(-90)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(0.75, -1, 0.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-30), rad(-45)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-0.5, -0.5, -1) *  angles(rad(15), rad(-90), rad(0)) * angles(rad(-0), rad(-75), rad(20)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0.15, 0.75, 0) *  angles(rad(0), rad(90), rad(-180)) * angles(rad(120), rad(-30), rad(0)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 3 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-180)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(0.25, 2, 0.5) * angles(rad(242), rad(-30), rad(-60)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 1.5, 0) * angles(rad(242), rad(-30), rad(10)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-0), rad(-0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -0.5, -0.5) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-20), rad(20), rad(45)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(-90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.75, -0.5) *  angles(rad(0), rad(0), rad(0)), 1)
		elseif frame == 4 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-180)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(0.25, 1.75, -1) * angles(rad(160), rad(-0), rad(-75)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 1, 0) * angles(rad(160), rad(-30), rad(10)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -0, -0.75) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-0), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -0.25, -1.15) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(35)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(-90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.75, -0.5) *  angles(rad(0), rad(0), rad(0)), 1)
		elseif frame == 5 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(-5), rad(-20), rad(-115)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1, 0.5, -0.75) * angles(rad(-20), rad(105), rad(45))* angles(rad(-20), rad(-0), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.5, 0) * angles(rad(-20), rad(-30), rad(-45))* angles(rad(-20), rad(-0), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-0), rad(50)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, 0 ) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(20), rad(45)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(-90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 6 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -2) * angles(rad(0), rad(-105), rad(-90)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(20), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1, 0.75, 0) * angles(rad(90), rad(90), rad(60)) * angles(rad(15), rad(-0), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.5, 0.25) * angles(rad(0), rad(75), rad(0)) * angles(rad(60), rad(-0), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, -0.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-60), rad(30)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, -0.5) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(45), rad(-15)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(-90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 7 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-75)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(45)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1, 0.5, -0.5) * angles(rad(0), rad(45), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 0.45, -0.15) * angles(rad(-0), rad(-90), rad(30)) * angles(rad(15), rad(0), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1.15, -1, -0.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-10), rad(-10), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1, -1, -0.15) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(30), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, 1, 0) *  angles(rad(0), rad(-90), rad(-180)) *  angles(rad(-30), rad(0), rad(180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		end
	elseif anim == "desper" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-145)), 1)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(45)), 1)
			rs.C0 = rs.C0:Lerp(cframe(1.5 , 1, 0) * angles(rad(125), rad(0), rad(75)) * angles(rad(-0), rad(125), rad(0)) * rsC0, 1)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 0.25, -0.5) * angles(rad(60), rad(0), rad(30)) * lsC0, 1)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, -1) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(30), rad(0)), 1)
			lh.C0 = lh.C0:Lerp(cframe(-1, -1, 0.5) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-30), rad(45), rad(30)), 1)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, -1.75, -3.75) *  angles(rad(0), rad(90), rad(-180)) * angles(rad(30), rad(-30), rad(0)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-1, -0.5) * angles(rad(30), rad(0), rad(120)), 1)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(45)), 1)
			rs.C0 = rs.C0:Lerp(cframe(1.25 , 0.5, 0.25) * angles(rad(125), rad(0), rad(75)) * angles(rad(20), rad(75), rad(0)) * rsC0, 1)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.5, 0) * angles(rad(90), rad(0), rad(-50)) * lsC0, 1)
			rh.C0 = rh.C0:Lerp(cframe(-0.75, -1.15, -0.5) *  angles(rad(-10), rad(90), rad(0)) * angles(rad(-20), rad(135), rad(0)), 1)
			lh.C0 = lh.C0:Lerp(cframe(1 , 0.15, 0.75) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(45), rad(160), rad(-20)), 1)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-2.5, 4.3, 0.15) *  angles(rad(0), rad(90), rad(-180)) * angles(rad(30), rad(30), rad(30)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 3 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-145)), 1)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(45)), 1)
			rs.C0 = rs.C0:Lerp(cframe(1.25 , 0.75, -0.5) * angles(rad(125), rad(0), rad(75)) * angles(rad(-40), rad(125), rad(0)) * rsC0, 1)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 0.5, -0) * angles(rad(60), rad(0), rad(30)) * angles(rad(-90), rad(30), rad(-30)) * lsC0, 1)
			rh.C0 = rh.C0:Lerp(cframe(0.75, -1, -1) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(45), rad(0)), 1)
			lh.C0 = lh.C0:Lerp(cframe(-1, -1, 0.5) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-15), rad(45), rad(10)), 1)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1.25, 2.5, -3.25) *  angles(rad(0), rad(120), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		end
	elseif anim == "aesper" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(15), rad(0), rad(-105)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(30)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(0.5, 0.75, -0.5) * angles(rad(0), rad(90), rad(90)) * angles(rad(75), rad(-0), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.35, 0.5, 0.6) * angles(rad(0), rad(60), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, -0.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-30), rad(55)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-0.75 , -0.25, -0.5) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-45), rad(15), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(-5), rad(0), rad(-135)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(50)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25, 0.5, -0.5) * angles(rad(125), rad(0), rad(-60)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.1, 1, 0.75) * angles(rad(160), rad(-120), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-0), rad(60)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-0.75, -0.75, 0 ) *  angles(rad(-0), rad(-90), rad(0)) * angles(rad(0), rad(30), rad(-20)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.25, -0.75, 0) *  angles(rad(0), rad(90), rad(-180)) * angles(rad(45), rad(0), rad(0)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 3 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(30), rad(20), rad(160)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(60)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(0.75, 0.5, 0.5) * angles(rad(-30), rad(180), rad(-30)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1, 0.75, -0.25) * angles(rad(30), rad(0), rad(-120)) * angles(rad(115), rad(45), rad(40)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(0.75, -1, -0.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-25), rad(15), rad(20)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -0.75, -0.75) *  angles(rad(-0), rad(-90), rad(0)) * angles(rad(-0), rad(15), rad(30)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 4 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(20), rad(-10), rad(30)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25 , 0.65, 0) * angles(rad(0), rad(-15), rad(60)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 0.45, 0.5) * angles(rad(-45), rad(75), rad(45)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -0.5, 0.15) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-90), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-0.5, -0.75, -1) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(-30), rad(35)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		end
	elseif anim == "teikani" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(-5), rad(10), rad(-60)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25 , 0.75, -0.5) * angles(rad(160), rad(30), rad(-0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1, 0.5, -1) * angles(rad(90), rad(0), rad(90)) * angles(rad(-0), rad(-45), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-20), rad(-25), rad(-20)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1.15, -0.5) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(10)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0.75) * angles(rad(55), rad(0), rad(75)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(-30)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.5, 0) * angles(rad(60), rad(-75), rad(40)) * angles(rad(45), rad(-0), rad(-60)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.5, 0) * angles(rad(-75), rad(60), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(0.75, 0.25,-0.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-60), rad(30)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-0.25, -1.3, -0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(-75), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 3 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0.3) * angles(rad(7.5), rad(0), rad(-0)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25 , 0.5, -0.5) * angles(rad(0), rad(45), rad(20)) * angles(rad(-20), rad(-0), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 0.75, 0) * angles(rad(0), rad(0), rad(-60)) * angles(rad(45), rad(-0), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -0.65, -0.75) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-20), rad(15), rad(-20)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -0.5, -0.85) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(-10)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		end
	elseif anim == "dteikani" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -1.5) * angles(rad(-20), rad(20), rad(120)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25 , 0.5, -0.75) * angles(rad(125), rad(0), rad(-45)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1, 0.75, 0.25) * angles(rad(-90), rad(90), rad(30)) * angles(rad(-30), rad(-0), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1.25, 0.5) *  angles(rad(0), rad(75), rad(0)) * angles(rad(30), rad(-45), rad(-45)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-0.5, -0.75, -0.75) *  angles(rad(0), rad(-120), rad(0)) * angles(rad(-75), rad(-60), rad(30)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -1.75) * angles(rad(-20), rad(-20), rad(180)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.5, -0.25) * angles(rad(105), rad(0), rad(15)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.75, 0) * angles(rad(20), rad(0), rad(-45)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(0.75, -1,-1.25) *  angles(rad(20), rad(150), rad(0)) * angles(rad(20), rad(-40), rad(-65)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-0.25, -0.5, 0.5) *  angles(rad(-75), rad(-90), rad(0)) * angles(rad(0), rad(115), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 3 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -1) * angles(rad(15), rad(-15), rad(-60)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(5), rad(5), rad(35)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.5, -0.25) * angles(rad(0), rad(90), rad(30)) * angles(rad(0), rad(-30), rad(20)) * rsC0, 0.1)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0, -0.5) * angles(rad(30), rad(-40), rad(0)) * lsC0, 0.1)
			rh.C0 = rh.C0:Lerp(cframe(1 , -0, -0.45) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-20), rad(-20), rad(-10)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1.15, -0.5) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-10), rad(45), rad(80)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		end
	elseif anim == "ateikani" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(-20), rad(30)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(-30)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25 , 0.5, 0) * angles(rad(0), rad(-15), rad(90)) * angles(rad(0), rad(-20), rad(40)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 1.15, 0) * angles(rad(60), rad(-30), rad(-90)) * angles(rad(60), rad(-15), rad(-0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -0.5, -0.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-20), rad(-0), rad(-60)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-0.5, -1.25, -1) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(-30), rad(90)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(-10), rad(115)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(45)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(0.75, 0.75, -0.75) * angles(rad(90), rad(0), rad(-90)) * angles(rad(40), rad(-0), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1, 1.25, -0.25) * angles(rad(190), rad(-60), rad(0)) * angles(rad(-0), rad(-0), rad(30)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1.25, -0.75, -0) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-30), rad(-60)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -0.75, -0.5) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(10), rad(30)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 3 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(35), rad(-35), rad(-105)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-15), rad(0), rad(50)), 1)
			rs.C0 = rs.C0:Lerp(cframe(1 , 0.75, -0.25) * angles(rad(90), rad(90), rad(-0)) * angles(rad(30), rad(30), rad(-15)) * rsC0, 1)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.5, 0) * angles(rad(75), rad(0), rad(-55)) * angles(rad(-0), rad(-60), rad(-0)) * lsC0, 1)
			rh.C0 = rh.C0:Lerp(cframe(1, -0.75, -1) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-25), rad(30), rad(30)), 1)
			lh.C0 = lh.C0:Lerp(cframe(-1, -0.75, 0.25) *  angles(rad(-0), rad(-90), rad(0)) * angles(rad(0), rad(60), rad(30)), 1)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(1.3, -0.75, -0.5) *  angles(rad(0), rad(90), rad(-180)) * angles(rad(-50), rad(0), rad(20)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 4 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -1) * angles(rad(60), rad(-0), rad(45)), 1)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-25), rad(0), rad(-60)), 1)
			rs.C0 = rs.C0:Lerp(cframe(1.65 , 1.35, 0) * angles(rad(45), rad(-45), rad(30)) * angles(rad(45), rad(0), rad(-0)) * rsC0, 1)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.75, 0) * angles(rad(90), rad(-45), rad(0)) * angles(rad(15), rad(-20), rad(-30)) * lsC0, 1)
			rh.C0 = rh.C0:Lerp(cframe(0.25, -1, 1) *  angles(rad(10), rad(90), rad(20)) * angles(rad(-60), rad(-105), rad(-30)), 1)
			lh.C0 = lh.C0:Lerp(cframe(-0.25, 0.65, -1) *  angles(rad(20), rad(-90), rad(0)) * angles(rad(0), rad(-60), rad(-45)), 1)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-2.25, -3.15, 2.4) *  angles(rad(0), rad(-20), rad(90)) * angles(rad(-15), rad(-15), rad(0)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 5 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-60)), 1)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(0)), 1)
			rs.C0 = rs.C0:Lerp(cframe(1.35 , 0.5, -0.4) * angles(rad(0), rad(45), rad(-0)) * angles(rad(5), rad(-0), rad(0)) * rsC0, 1)
			ls.C0 = ls.C0:Lerp(cframe(-1.4, 0.5, -0.15) * angles(rad(0), rad(0), rad(0)) * lsC0, 1)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-30), rad(0)), 1)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, 0 ) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(20), rad(0)), 1)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(50)), 1)
		end
	elseif anim == "charge" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(30), rad(0), rad(-0)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(60), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(0.75, 1, -1) * angles(rad(120), rad(0), rad(-90)) * angles(rad(-30), rad(30), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-0.5, 0.75, -0.875) * angles(rad(120), rad(0), rad(90)) * angles(rad(-45), rad(-0), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -0.5, -0.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(25), rad(-45), rad(25)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -0.25, -0.75) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(40)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 2+0.5 * cos(sine / 9)) * angles(rad(-22.5), rad(0), rad(-0)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0+0.05 * cos(sine / 9)) * angles(rad(-15), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25 , 0.25+0.25 * cos(sine / 9), 0) * angles(rad(90), rad(-40), rad(90)) * angles(rad(-0), rad(-30), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 0.25+0.25 * cos(sine / 9), 0.25) * angles(rad(90), rad(0), rad(-90)) * angles(rad(-30), rad(-0), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1+0.075 * cos(sine / 9), 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-20), rad(-10), rad(-20)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1+0.075 * cos(sine / 9), 0 ) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(10), rad(35)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		else
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 1) * angles(rad(0), rad(0), rad(-0)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, -0.1, 0.1) * angles(rad(15), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.5, 0) * angles(rad(180), rad(0), rad(-0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.5, 0) * angles(rad(180), rad(0), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-5), rad(-20), rad(15)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-0.9 , -0.75, -0.75) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(-25)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		end
	elseif anim == "grab" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0, 0, 0) * angles(rad(10), rad(0), rad(-30)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(22.5)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.35, 0.35, -0.15) * angles(rad(75), rad(30), rad(-15))* angles(rad(20), rad(-0), rad(-0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.5, 0.15) * angles(rad(15), rad(30), rad(-5)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1, -1.15, 0.5) * angles(rad(0), rad(90), rad(0)) * angles(rad(0), rad(-60), rad(-0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1, -0.9, -0.75) * angles(rad(0), rad(-90), rad(0)) * angles(rad(-5), rad(-15), rad(-10)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0, -0.25, -0.15) * angles(rad(15), rad(0), rad(30)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(22.5)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.15, 0.65, -0.5) * angles(rad(75), rad(30), rad(-15))* angles(rad(30), rad(60), rad(10)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1, 0.35, 0.5) * angles(rad(25), rad(-30), rad(-90)) * angles(rad(-7.5), rad(-5), rad(20)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(0.35, -1, 1.15) * angles(rad(10), rad(90), rad(0)) * angles(rad(0), rad(-105), rad(-0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-0.45, -0.75, -1) * angles(rad(0), rad(-90), rad(0)) * angles(rad(-5), rad(-45), rad(-20)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		end
	elseif anim == "graba" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(75)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(-60)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.5, 0) * angles(rad(90), rad(0), rad(75)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 0.25, -0.25) * angles(rad(0), rad(-90), rad(30)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-30), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, 0 ) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(-15), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(-90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(-10), rad(120)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-10), rad(10), rad(-50)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.75, -0.25) * angles(rad(90), rad(0), rad(75)) * angles(rad(60), rad(0), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1, 0.75, -0.25) * angles(rad(0), rad(-60), rad(-90)) * angles(rad(20), rad(30), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(0.75, -1, 0.5) *  angles(rad(-7.5), rad(90), rad(0)) * angles(rad(2.5), rad(-60), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, -0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(-45), rad(10)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(-90), rad(-180)) *  angles(rad(-25), rad(0), rad(0)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 3  then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0.25, 0.15) * angles(rad(0), rad(-10), rad(120)), 1)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-10), rad(10), rad(-50)), 1)
			rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.75, -0) * angles(rad(90), rad(0), rad(75)) * angles(rad(45), rad(0), rad(0)) * rsC0, 1)
			ls.C0 = ls.C0:Lerp(cframe(-1, 0.75, -0.25) * angles(rad(0), rad(-60), rad(-90)) * angles(rad(0), rad(30), rad(0)) * lsC0, 1)
			rh.C0 = rh.C0:Lerp(cframe(1, -1.15, 0.5) *  angles(rad(-7.5), rad(90), rad(0)) * angles(rad(2.5), rad(-60), rad(0)), 1)
			lh.C0 = lh.C0:Lerp(cframe(-0.75, -1.15, -0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(-45), rad(10)), 1)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(-90), rad(-180)) *  angles(rad(-45), rad(0), rad(0)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 4 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-30)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25 , 0.5, -0.5) * angles(rad(-0), rad(30), rad(-0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 0.35, -0.25) * angles(rad(-60), rad(-90), rad(-30)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-10), rad(-0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, -0.15) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(-10), rad(-0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, 1, 0) *  angles(rad(0), rad(90), rad(-180)) *  angles(rad(180), rad(0), rad(0)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 5 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(-10), rad(120)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-10), rad(10), rad(-50)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.75, -0.25) * angles(rad(90), rad(0), rad(75)) * angles(rad(60), rad(0), rad(0)) * rsC0, 1)
			ls.C0 = ls.C0:Lerp(cframe(-1, 0.75, -0.25) * angles(rad(0), rad(-60), rad(-90)) * angles(rad(20), rad(30), rad(0)) * lsC0,1)
			rh.C0 = rh.C0:Lerp(cframe(0.75, -1, 0.5) *  angles(rad(-7.5), rad(90), rad(0)) * angles(rad(2.5), rad(-60), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, -0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(-45), rad(10)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(-90), rad(-180)) *  angles(rad(-25), rad(0), rad(0)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		end
	elseif anim == "bgrab" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(90)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(-60)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.75, 0) * angles(rad(90), rad(0), rad(90)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 0.5, -0.25) * angles(rad(0), rad(-90), rad(30)) * angles(rad(-30), rad(-0), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-30), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, 0 ) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(17.5), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(-90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -1) * angles(rad(-20), rad(20), rad(115)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(20), rad(0), rad(30)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5 , -0.25, 0.25) * angles(rad(0), rad(0), rad(-15)) * angles(rad(25), rad(-45), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 0.25, 0.25) * angles(rad(-45), rad(0), rad(20)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-0), rad(-45)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , 0.25, -0.25) *  angles(rad(10), rad(-90), rad(0)) * angles(rad(-5), rad(15), rad(-20)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(-90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 3 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(10), rad(10), rad(-45)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25, 1.15, -0.3) * angles(rad(180), rad(-15), rad(-0)) * angles(rad(-15), rad(-0), rad(-10)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5 , 0.65, 0.45) * angles(rad(-45), rad(30), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1, -1, 0.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-10), rad(-45), rad(-10)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-0.75, -0.75, -1) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-45), rad(-45), rad(-25)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 4 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-120)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.35 , 0.5, -0.4) * angles(rad(0), rad(75), rad(30)) * angles(rad(15), rad(-0), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.4, 0.5, -0.15) * angles(rad(0), rad(0), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, -0.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-10), rad(10), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, 0 ) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-7.5), rad(30), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 5 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-90)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.35 , 0.5, -0.4) * angles(rad(0), rad(45), rad(-0)) * angles(rad(5), rad(-0), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 0.35, -0.25) * angles(rad(-60), rad(-90), rad(-30)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-30), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, 0 ) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(20), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 6 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(10), rad(10), rad(-180)), 1)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 1)
			rs.C0 = rs.C0:Lerp(cframe(1.25, 1.15, -0.3) * angles(rad(180), rad(-15), rad(-0)) * angles(rad(-15), rad(-0), rad(-10)) * rsC0, 1)
			ls.C0 = ls.C0:Lerp(cframe(-1.5 , 0.65, 0.45) * angles(rad(-45), rad(30), rad(0)) * lsC0, 1)
			rh.C0 = rh.C0:Lerp(cframe(1, -1, 0.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-10), rad(-45), rad(-10)), 1)
			lh.C0 = lh.C0:Lerp(cframe(-0.75, -0.75, -1) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-45), rad(-45), rad(-25)), 1)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		end
	elseif anim == "agrab" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(10), rad(0), rad(-90)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(10), rad(-10), rad(45)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.4, 0.5, 0.15) * angles(rad(90), rad(0), rad(52.5)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.65, 0) * angles(rad(90), rad(0), rad(-75)) * angles(rad(20), rad(-0), rad(20)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-20), rad(-0), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -0.5, -0.75) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(30), rad(45)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(10), rad(0), rad(-90)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(10), rad(-10), rad(45)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.4, 0.5, 0.15) * angles(rad(90), rad(0), rad(25)) * angles(rad(0), rad(-0), rad(0))  * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.35, 0.5, 0.25) * angles(rad(90), rad(0), rad(-75)) * angles(rad(15), rad(-0), rad(-10)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-20), rad(-0), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -0.75, -0.3) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(45), rad(25)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 3  then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(10), rad(10), rad(15)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1, 0.5, 0.5) * angles(rad(45), rad(0), rad(120)) * angles(rad(-45), rad(-30), rad(-60)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 0.5, 0.25) * angles(rad(-45), rad(90), rad(15)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -0.75, -1.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-0), rad(-60)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, 0.4) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(20), rad(30)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 4 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(-0), rad(0), rad(-20)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, -0.1, 0.1) * angles(rad(15), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25 , 0.65, 0) * angles(rad(90), rad(30), rad(-0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.5, 0) * angles(rad(200), rad(0), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1, -0.45, -0) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-25), rad(-60), rad(-30)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -0.75, -0) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(20)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		end
	elseif anim == "tsuzura" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0.35) * angles(rad(5), rad(-25), rad(-75)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(15), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25 , 0.5, -0.5) * angles(rad(30), rad(30), rad(-0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.4, 0.5, -0.5) * angles(rad(0), rad(-60), rad(-20)) * angles(rad(15), rad(-0), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1.1, -0.5, -0.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-5), rad(-15), rad(20)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -0.5, -0.65) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(10), rad(-10)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0.75) * angles(rad(5), rad(-30), rad(-110)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(15), rad(0), rad(45)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25 , 0.25, -0.5) * angles(rad(30), rad(-15), rad(-0)) * angles(rad(30), rad(-20), rad(-10)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.4, 0.25, -0.5) * angles(rad(0), rad(-45), rad(-20)) * angles(rad(0), rad(-0), rad(-10)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1, -0, -1) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-20), rad(20), rad(20)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , 0.35, -0.5) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(40), rad(-10)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		end
	elseif anim == "tsuzurah" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-90)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-20), rad(-20), rad(60)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25, 0.5, -0.5) * angles(rad(0), rad(60), rad(15)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-2, 1.25, 0) * angles(rad(90), rad(0), rad(-90)) * angles(rad(90), rad(45), rad(30)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-10), rad(-0), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, 0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(45), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0.75) * angles(rad(-10), rad(-10), rad(-120)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(-0), rad(60)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5 , 0, 0.25) * angles(rad(90), rad(-30), rad(-0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1, 0.75, 0) * angles(rad(90), rad(0), rad(-90)) * angles(rad(90), rad(-45), rad(30)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -0, -1.15) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-0), rad(10)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1.25, -0.25, -0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-30), rad(30), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 3 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-0.5, -0.5) * angles(rad(20), rad(-0), rad(60)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(15), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.75 , 0.75, -0.5) * angles(rad(0), rad(0), rad(90)) * angles(rad(30), rad(-0), rad(15)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.15, 0.5, 0) * angles(rad(90), rad(0), rad(-90)) * angles(rad(-20), rad(-90), rad(-0)) * angles(rad(-30), rad(0), rad(-0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(-0.5, -0.75, 1) *  angles(rad(7.5), rad(90), rad(0)) * angles(rad(25), rad(-150), rad(20)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-0, -0.35, -1.25) *  angles(rad(10), rad(-90), rad(0)) * angles(rad(20), rad(-60), rad(20)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 4 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(15), rad(0), rad(15)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(10), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.25, 0) * angles(rad(75), rad(0), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.45, 0.6, 0) * angles(rad(15), rad(0), rad(-15)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(0.45, -1.15, 1) *  angles(rad(7.5), rad(90), rad(0)) * angles(rad(-0), rad(-95), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-0.45 , -0.8, -0.9) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-7.5), rad(-40), rad(-15)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		end
	elseif anim == "dtl" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-0)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(-0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25, 0.25, -0.5) * angles(rad(-50), rad(-25), rad(0)) * angles(rad(45), rad(-105), rad(-180)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.4, 0.5, -0.15) * angles(rad(0), rad(0), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(0.85, -1, 0.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-30), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, 0 ) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-10), rad(20), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-30)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(10), rad(0), rad(15)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25 , 0.45, 0.2) * angles(rad(60), rad(-30), rad(60)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 0.25, 0.25) * angles(rad(30), rad(30), rad(-15)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0.45) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-60), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , 0.25, -0.5) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(15), rad(-20)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 3 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(-10), rad(0), rad(-45)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(10), rad(0), rad(30)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25 , 0.75, 0) * angles(rad(60), rad(60), rad(0))* angles(rad(-90), rad(-0), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 0.25, 0.25) * angles(rad(45), rad(45), rad(-30)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-10), rad(-45), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1.25, -1, -0.25) *  angles(rad(0), rad(-60), rad(0)) * angles(rad(0), rad(15), rad(-80)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 4 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0.25) * angles(rad(5), rad(-15), rad(-60)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(30)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.35 , 0.5, -0.4) * angles(rad(0), rad(45), rad(-0)) * angles(rad(-15), rad(-0), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.4, 0.5, -0.15) * angles(rad(30), rad(0), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1, -0.5, -0.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(0), rad(-35), rad(10)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -0.5, -0.65) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(10), rad(-10)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		end	
	elseif anim == "spike" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-15)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25 , 0.5, -0.15) * angles(rad(90), rad(60), rad(-25)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.5, 0) * angles(rad(75), rad(0), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(0.75, -1, 0.75) *  angles(rad(-15), rad(90), rad(0)) * angles(rad(-0), rad(-75), rad(5)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-0.85, -1, -0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0, 0, -0) * angles(rad(10), rad(0), rad(30)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(-40)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.15, 0.65, -0.15) * angles(rad(90), rad(0), rad(30)) * angles(rad(0), rad(120), rad(-15)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1, 1, 0.5) * angles(rad(30), rad(0), rad(-100)) * angles(rad(60), rad(-0), rad(-10)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(0.5, -1.15, 1) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-60), rad(5)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-0.25, -0.85, -1.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-20), rad(-75), rad(-25)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 3 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0, 0, -0.25) * angles(rad(0), rad(0), rad(45)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(20), rad(0), rad(-40)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.15, 0.65, -0.15) * angles(rad(90), rad(0), rad(30)) * angles(rad(0), rad(120), rad(-15)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.5, -0.45) * angles(rad(-45), rad(-30), rad(-30)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(0, -0.75, 1) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-75), rad(-35)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-0.25, -0.85, -1.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-0), rad(-45), rad(10)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 4 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0.45) * angles(rad(-10), rad(0), rad(-90)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(30), rad(-0), rad(45)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25, 0.25, 0.5) * angles(rad(60), rad(-60), rad(-0)) * angles(rad(20), rad(-10), rad(30)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 1.15, 0.5) * angles(rad(90), rad(-60), rad(-90)) * angles(rad(20), rad(-0), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -0.4, -0.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-30), rad(15), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -0.75, -0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(45), rad(10)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 5 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-75)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(60)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.25, -0.25) * angles(rad(0), rad(30), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-0.65, 0.5, 0.5) * angles(rad(-0), rad(90), rad(0)) * angles(rad(30), rad(0), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1, -1, -0.2) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-15), rad(-10), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1, -1, -0.15) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(25), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)) *  angles(rad(15), rad(0), rad(0)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 6 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0.45) * angles(rad(-10), rad(0), rad(-90)),0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(30), rad(-0), rad(45)),0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25, 0.25, 0.5) * angles(rad(60), rad(-60), rad(-0)) * angles(rad(20), rad(-10), rad(30)) * rsC0,0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 0.5, 0.5) * angles(rad(75), rad(-60), rad(0)) * angles(rad(-90), rad(90), rad(0)) * angles(rad(-45), rad(0), rad(0)) * lsC0,0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -0.4, -0.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-30), rad(15), rad(0)),0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -0.75, -0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(45), rad(10)),0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 7 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0.25) * angles(rad(-10), rad(0), rad(-45)),0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(30), rad(-0), rad(0)),0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25, 0.45, 0.25) * angles(rad(60), rad(-60), rad(-0)) * angles(rad(20), rad(10), rad(30)) * angles(rad(45), rad(0), rad(0)) * rsC0,0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 0.5, 0.5) * angles(rad(75), rad(-60), rad(0)) * angles(rad(-90), rad(90), rad(0)) * angles(rad(-45), rad(0), rad(0)) * lsC0,0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -0.5, 0.15) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-45), rad(-45), rad(-30)),0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -0.9, -0.45) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(15), rad(10)),0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 8 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0, 0, -0) * angles(rad(5), rad(0), rad(15)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(-30)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.15, 0.65, -0.15) * angles(rad(90), rad(0), rad(30)) * angles(rad(0), rad(120), rad(-30)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 0.75, 0) * angles(rad(180), rad(0), rad(30)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(0.5, -1, 0.5) *  angles(rad(-10), rad(90), rad(0)) * angles(rad(-0), rad(-75), rad(5)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1, -1, -0.5) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-0), rad(-25), rad(-10)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		end		
	elseif anim == "haruka amami" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0.25, -0.25) * angles(rad(-10), rad(0), rad(60)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(30)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.5, 0) * angles(rad(90), rad(0), rad(60)) * angles(rad(20), rad(-0), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-0.9, 0.5, 0.3) * angles(rad(120), rad(0), rad(-120)) * angles(rad(-0), rad(-20), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -0.9, 0.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-5), rad(-60), rad(-15)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -0.65, 0 ) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-5), rad(-45), rad(20)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-0.75, -0.5) * angles(rad(30), rad(-30), rad(-45)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(60), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25 , 0.75, 0) * angles(rad(0), rad(45), rad(60)) * angles(rad(-0), rad(-30), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.5, -0.5) * angles(rad(0), rad(60), rad(30)) * angles(rad(115), rad(-20), rad(30)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0.25) *  angles(rad(-10), rad(90), rad(0)) * angles(rad(-30), rad(-60), rad(15)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -0.5, -0.75) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(30)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 3 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0.5, -1.5) * angles(rad(-20), rad(-20), rad(180)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(60)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25 , 0.5, -0) * angles(rad(105), rad(0), rad(45)) * angles(rad(0), rad(45), rad(-0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.25, -0.25) * angles(rad(20), rad(0), rad(-45)) * angles(rad(40), rad(-30), rad(-0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(0.75, -0.45, -1) *  angles(rad(20), rad(150), rad(0)) * angles(rad(20), rad(-40), rad(-45)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-0.25, -0.75, 0.5) *  angles(rad(-75), rad(-90), rad(0)) * angles(rad(0), rad(90), rad(-20)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 4 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0.25) * angles(rad(-2.5), rad(-15), rad(-90)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(60)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.35 , 0.5, -0.4) * angles(rad(0), rad(45), rad(-0)) * angles(rad(15), rad(-0), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 0.5, -0.5) * angles(rad(30), rad(-60), rad(20)) * angles(rad(-15), rad(-15), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1, -0.65, -0.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-5), rad(-15), rad(10)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -0.65, -0.45) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(25), rad(-10)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		end	
	elseif anim == "bigbang" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0.5, -1.25) * angles(rad(-20), rad(-20), rad(180)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(60)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25 , 0.5, -0) * angles(rad(105), rad(0), rad(45)) * angles(rad(0), rad(45), rad(-0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.25, -0.25) * angles(rad(20), rad(0), rad(-45)) * angles(rad(40), rad(-30), rad(-0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(0.75, 0.45, -0.875) *  angles(rad(20), rad(150), rad(0)) * angles(rad(20), rad(-40), rad(15)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-0.25, -0.75, 0.5) *  angles(rad(-75), rad(-90), rad(0)) * angles(rad(0), rad(90), rad(-20)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-0.75, -0.25) * angles(rad(-10), rad(-10), rad(90)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-10), rad(10), rad(-50)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.75, 0.25) * angles(rad(90), rad(0), rad(75)) * angles(rad(30), rad(0), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 0.25, 0.25) * angles(rad(60), rad(37.5), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1, -0.75, 0.5) *  angles(rad(-7.5), rad(90), rad(0)) * angles(rad(-7.5), rad(-25), rad(-5)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-0.5, -1, -0.5) *  angles(rad(-10), rad(-90), rad(0)) * angles(rad(25), rad(-90), rad(75)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 3 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-15)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25 , 1.15, 0.15) * angles(rad(90), rad(60), rad(25)) * angles(rad(30), rad(20), rad(-0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.375, 0.5, 0.25) * angles(rad(-25), rad(20), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(0.75, -1, 0.75) *  angles(rad(-7.5), rad(90), rad(0)) * angles(rad(-0), rad(-60), rad(5)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-0.85, -1, -0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 4 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-0.25, -0.25) * angles(rad(-0), rad(-45), rad(-80)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-10), rad(10), rad(40)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25 , 0.5, 0.25) * angles(rad(90), rad(0), rad(105)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 0.75, -0) * angles(rad(90), rad(0), rad(-75)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1, -0.25, -0.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-30), rad(40)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1, -0.5, -0.5) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-15), rad(15), rad(-45)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 5 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-0.5, -0.25) * angles(rad(-0), rad(-25), rad(45)), 1)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-10), rad(10), rad(25)), 1)
			rs.C0 = rs.C0:Lerp(cframe(1.25 , 0.5, 0.25) * angles(rad(90), rad(0), rad(105)) * rsC0, 1)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 0.75, -0) * angles(rad(90), rad(0), rad(-75)) * lsC0, 1)
			rh.C0 = rh.C0:Lerp(cframe(0.9, -0.25, 1) *  angles(rad(-30), rad(90), rad(0)) * angles(rad(-0), rad(-60), rad(-5)), 1)
			lh.C0 = lh.C0:Lerp(cframe(-0.75, -1.3, -0.5) *  angles(rad(-10), rad(-90), rad(0)) * angles(rad(25), rad(-45), rad(-0)), 1)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		end	
	elseif anim == "kyubey madoka" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-0.25, 0) * angles(rad(-10), rad(-10), rad(-135)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(30)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(0.75, 0.15, 1.15) * angles(rad(60), rad(0), rad(30)) * angles(rad(-0), rad(-20), rad(0)) * rsC0, 1)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.25, -0.3) * angles(rad(0), rad(-30), rad(0)) * lsC0, 1)
			rh.C0 = rh.C0:Lerp(cframe(1, -0.75, -1) *  angles(rad(30), rad(90), rad(0)) * angles(rad(-0), rad(45), rad(-10)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, 0 ) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(52.5), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(0.75, -1.3, -1.75) *  angles(rad(0), rad(90), rad(-180)) * angles(rad(-30), rad(30), rad(0)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-0.5, -0.25) * angles(rad(20), rad(-15), rad(15)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(30)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.25, 0.75) * angles(rad(0), rad(-30), rad(45)) * angles(rad(10), rad(-20), rad(0)) * rsC0, 1)
			ls.C0 = ls.C0:Lerp(cframe(-0.75, 0.5, -1.25) * angles(rad(90), rad(-90), rad(0)) * angles(rad(90), rad(-0), rad(0)) * lsC0, 1)
			rh.C0 = rh.C0:Lerp(cframe(1.25, -0.75, 0 ) *  angles(rad(-20), rad(90), rad(0)) * angles(rad(-0), rad(-60), rad(-30)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-0.5, -1, -0.75) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(-45), rad(-30)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1.75, -1.25, -3.5) *  angles(rad(0), rad(-90), rad(90)) * angles(rad(-20), rad(-0), rad(0)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 3 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(-25), rad(150)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(45)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25, 1, 0.5) * angles(rad(20), rad(15), rad(115)) * rsC0, 1)
			ls.C0 = ls.C0:Lerp(cframe(-1, 0.75, 0.25) * angles(rad(25), rad(20), rad(-90)) * lsC0, 1)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, -1) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(30), rad(60)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1, -0.75, 0.5) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(90), rad(-30)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-2, -3, 2.75) *  angles(rad(0), rad(90), rad(-90)) * angles(rad(-0), rad(0), rad(35)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 4 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(-45), rad(-105)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(30), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25 , 1, 0.25) * angles(rad(-180), rad(90), rad(90)) * angles(rad(-30), rad(180), rad(0)) * rsC0, 1)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.5, 0) * angles(rad(25), rad(20), rad(-90)) * angles(rad(115), rad(20), rad(0)) * lsC0, 1)
			rh.C0 = rh.C0:Lerp(cframe(0.5 , -0.75, 0) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-75), rad(-50), rad(30)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -0.5, -0.75) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(15), rad(-45)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(1.5, -3, 1.5) *  angles(rad(0), rad(90), rad(-90)) * angles(rad(5), rad(45), rad(25)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 5 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(75), rad(-15), rad(45)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(30), rad(0), rad(-30)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25 , 0.75, 0) * angles(rad(-180), rad(90), rad(90)) * angles(rad(-30), rad(180), rad(-60)) * rsC0, 1)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.5, 0) * angles(rad(25), rad(20), rad(-90)) * angles(rad(115), rad(20), rad(0)) * lsC0, 1)
			rh.C0 = rh.C0:Lerp(cframe(1, -0.75, 0) *  angles(rad(0), rad(135), rad(0)) * angles(rad(-45), rad(-125), rad(-60)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(0, 0, -1.15) *  angles(rad(0), rad(-110), rad(0)) * angles(rad(0), rad(-15), rad(-75)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(1.75, 2.5, 0.85) *  angles(rad(0), rad(90), rad(-180)) * angles(rad(11.5), rad(35), rad(30)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		end	
	elseif anim == "margatroid" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(75), rad(-0), rad(35)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(30), rad(0), rad(-30)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25 , 0.75, 0.25) * angles(rad(-180), rad(90), rad(90)) * angles(rad(-30), rad(150), rad(-60)) * angles(rad(15), rad(-0), rad(0)) * rsC0, 1)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.5, 0) * angles(rad(0), rad(-90), rad(0)) * angles(rad(90), rad(45), rad(215)) * lsC0, 1)
			rh.C0 = rh.C0:Lerp(cframe(1.45, -0.5, 0.25) *  angles(rad(0), rad(135), rad(0)) * angles(rad(-75), rad(-125), rad(-60)) * angles(rad(-30), rad(-0), rad(-55)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-0.5, -1, -1) *  angles(rad(0), rad(-110), rad(0)) * angles(rad(0), rad(-15), rad(-75)) * angles(rad(-0), rad(30), rad(30)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(1.25, -3, 2.5) *  angles(rad(0), rad(90), rad(-0)) * angles(rad(-45), rad(-0), rad(0)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(90), rad(0), rad(-90)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(-30)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.15, 0.5, -1) * angles(rad(90), rad(0), rad(-50)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1, 0.5, 0.5) * angles(rad(90), rad(0), rad(-45)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-30), rad(-30)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, 0 ) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-30), rad(20), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 3 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(15), rad(0), rad(165)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-20), rad(0), rad(-30)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(0.75, 0, 0.75) * angles(rad(0), rad(-135), rad(-20)) * angles(rad(20), rad(-0), rad(-10)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.15, 1, 0.5) * angles(rad(180), rad(-55), rad(15)) * angles(rad(-10), rad(-0), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(0.8, -0.5, -1.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(20), rad(-30)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-0.5, -1, 0.65) *  angles(rad(-12.5), rad(-90), rad(0)) * angles(rad(0), rad(85), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 4 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(52.5), rad(5), rad(90)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(0.75, 0.5, 0.75) * angles(rad(-65), rad(200), rad(-60)) * angles(rad(-10), rad(15), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.15, 1, 0.5) * angles(rad(180), rad(-55), rad(15)) * angles(rad(-60), rad(-0), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(0.5, -1, -0.45) *  angles(rad(-45), rad(90), rad(0)) * angles(rad(-25), rad(45), rad(-20)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-0.75, -1.5, 0 ) *  angles(rad(20), rad(-90), rad(0)) * angles(rad(30), rad(25), rad(30)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 5 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(30), rad(0), rad(-0)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(30), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5, 0.3, -0.25) * angles(rad(60), rad(45), rad(10)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 0.75, -0.75) * angles(rad(90), rad(-75), rad(25)) * angles(rad(10), rad(-0), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, -1) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-0), rad(-50)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, -0.5) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(75)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		end	
	elseif anim == "sawatari" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(25), rad(0), rad(120)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.5, 0.35) * angles(rad(0), rad(-60), rad(30)) * angles(rad(30), rad(20), rad(-15)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 0.75, 0) * angles(rad(90), rad(-90), rad(0)) * angles(rad(-30), rad(-0), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1.15, -1, 0.25) *  angles(rad(0), rad(60), rad(0)) * angles(rad(-0), rad(-30), rad(-60)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-0.75, -1, -0.85) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(-30), rad(70)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0) * angles(rad(0), rad(-0), rad(-90)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(30)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25, 0.5, 0.25) * angles(rad(0), rad(90), rad(135)) * angles(rad(-30), rad(-0), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0, 0) * angles(rad(75), rad(0), rad(-15)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(0.75, -1, 0.15) *  angles(rad(30), rad(90), rad(0)) * angles(rad(-0), rad(-60), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-0.85, -0, -0.75) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(22.5), rad(-180)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 3 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0) * angles(rad(30), rad(-0), rad(-0)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(20), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(0.85, 0.75, 0.25) * angles(rad(45), rad(0), rad(150)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1, 0.5, 0) * angles(rad(90), rad(0), rad(-150)) * angles(rad(-30), rad(-0), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-0), rad(-60)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -0.75, -0.75) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(-135)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 4 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0) * angles(rad(0), rad(-0), rad(-20)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(20), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(0.85, 0.75, 0.25) * angles(rad(45), rad(0), rad(120)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.25, 0) * angles(rad(75), rad(0), rad(30)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1.25, 0.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-30), rad(-120)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, -0) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(-20), rad(20)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 5 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0) * angles(rad(0), rad(-0), rad(-20)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(20), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25, 0.75, 0) * angles(rad(0), rad(-15), rad(90)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.5, 0) * angles(rad(50), rad(0), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -0.5, -0.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-20), rad(-30), rad(-60)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, -0.5) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(15)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		end		
	elseif anim == "noel" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0.75) * angles(rad(-10), rad(-10), rad(-120)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(-0), rad(60)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.5, 0.45) * angles(rad(90), rad(-30), rad(-0)) * angles(rad(-0), rad(120), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1, 0.75, -0.75) * angles(rad(90), rad(0), rad(-90)) * angles(rad(90), rad(-0), rad(90)) * angles(rad(30), rad(-0), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(0.75, -0.5, -1) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(15), rad(-50)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1.25, -0.25, -0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(30), rad(-0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-0.5, -0.5) * angles(rad(20), rad(-0), rad(60)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(15), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.75 , 0.75, -0.5) * angles(rad(0), rad(0), rad(90)) * angles(rad(30), rad(-0), rad(15)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.15, 0.45, 0.15) * angles(rad(90), rad(0), rad(-90)) * angles(rad(-30), rad(-60), rad(-0)) * angles(rad(-30), rad(90), rad(-0)) * angles(rad(30), rad(-0), rad(45)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(0.5, -0.75, 1) *  angles(rad(-30), rad(105), rad(0)) * angles(rad(0), rad(-90), rad(-60)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(0.5, -0.75, -1) *  angles(rad(10), rad(-90), rad(0)) * angles(rad(20), rad(-60), rad(60)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 3 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-30)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(30), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.75, 0.25, 0.3) * angles(rad(80), rad(0), rad(-22.5)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 0.25, -0.5) * angles(rad(40), rad(0), rad(60)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1.15, -0.75, -0.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-10), rad(-30), rad(-15)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -0.75, -0.75) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(-15), rad(45)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		end	
	elseif anim == "yuki" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-0.5, -0.25) * angles(rad(0), rad(-0), rad(-105)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(25)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25, 0, 0.75) * angles(rad(60), rad(-60), rad(-0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 1.25, 0.75) * angles(rad(150), rad(-90), rad(0)) * angles(rad(0), rad(-0), rad(35)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -0.65, -0.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-30), rad(-15), rad(15)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1, -0.75, -0.5) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-25), rad(0), rad(15)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-0, -0) * angles(rad(10), rad(10), rad(-135)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(65)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25, 0, 0.25) * angles(rad(75), rad(-45), rad(-0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.2, 1, 0.5) * angles(rad(0), rad(-90), rad(-150)) * angles(rad(-25), rad(-60), rad(-10)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(0.6, -0.75, -1) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(30), rad(-45)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1.15, -1, 0.25) *  angles(rad(20), rad(-90), rad(0)) * angles(rad(0), rad(45), rad(30)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 3 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(30), rad(-15)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1, 0.5, 0.25) * angles(rad(90), rad(0), rad(130)) * angles(rad(-25), rad(-0), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 0.25, -0.25) * angles(rad(75), rad(-105), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(0.5, -0, -0.75) *  angles(rad(30), rad(90), rad(0)) * angles(rad(-30), rad(15), rad(-55)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-0.5, -0.5, 0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-30), rad(30), rad(45)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 4 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(60), rad(90)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.75, 0.5, 0) * angles(rad(90), rad(0), rad(75)) * angles(rad(-0), rad(15), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.15, 0.75, -0.25) * angles(rad(75), rad(-105), rad(-20)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -0.75, -0.75) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(30), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1.15, -0.5, -0.5) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(15), rad(30)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 5 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-0, 0) * angles(rad(-10), rad(10), rad(-60)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25, 1, 0) * angles(rad(0), rad(45), rad(150)) * angles(rad(30), rad(-0), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.25, 0.25) * angles(rad(25), rad(20), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(0.6, -1, 0.5) *  angles(rad(-10), rad(90), rad(0)) * angles(rad(-0), rad(-60), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-0.5, -0, -1) *  angles(rad(120), rad(-90), rad(0)) * angles(rad(0), rad(-90), rad(45)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 6 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-0, 0) * angles(rad(-0), rad(0), rad(-75)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25 , 0.75, 0) * angles(rad(0), rad(45), rad(90))  * angles(rad(-0), rad(-30), rad(-0))* rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.5, 0) * angles(rad(60), rad(0), rad(-30)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1, -1, 0.25) *  angles(rad(-0), rad(90), rad(0)) * angles(rad(-0), rad(-30), rad(-0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1, -1, -0.5) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(10), rad(45)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 7 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(60), rad(180)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.75, 0.5, 0) * angles(rad(90), rad(0), rad(75)) * angles(rad(-0), rad(15), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.15, 0.75, -0.25) * angles(rad(75), rad(-105), rad(-20)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -0.75, -0.75) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(30), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1.15, -0.5, -0.5) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(15), rad(30)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		end	
	elseif anim == "naoto kurogane" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(10)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(15), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25 , 0.45, -0.5) * angles(rad(150), rad(0), rad(-0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1, 0.5, 0.5) * angles(rad(245), rad(0), rad(55)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(0.5, -0.5, 0.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-90), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-0.5, -1.25, -1.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(-30), rad(75)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(-90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(-40), rad(0), rad(-15)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(15), rad(0), rad(-60)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1 , 0.75, -0.3) * angles(rad(230), rad(0), rad(-15)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-0.75, 0.5, 1) * angles(rad(245), rad(-10), rad(75)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(0.75, -0.5, 0) *  angles(rad(-60), rad(90), rad(0)) * angles(rad(-0), rad(-60), rad(15)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-0.75, -1.25, -0.75) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(-15), rad(75)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.15, -1, 0) *  angles(rad(0), rad(-90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 3 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(-0), rad(-20), rad(-105)), 1)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(25), rad(0), rad(-0)), 1)
			rs.C0 = rs.C0:Lerp(cframe(0.75, 0.5, -0.75) * angles(rad(0), rad(60), rad(10)) * rsC0, 1)
			ls.C0 = ls.C0:Lerp(cframe(-0.75, 0.25, -0.75) * angles(rad(0), rad(45), rad(25)) * angles(rad(10), rad(-0), rad(20)) * lsC0, 1)
			rh.C0 = rh.C0:Lerp(cframe(1.25, -0.5, -0.45) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-20), rad(-15)), 1)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -0.75, -1) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-10), rad(-30), rad(-0)), 1)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0, 1, 0) *  angles(rad(0), rad(-90), rad(-0)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 4 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -1) * angles(rad(-60), rad(-25), rad(125)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(75)) * angles(rad(-0), rad(30), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25 , 0.5, 0.4) * angles(rad(60), rad(0), rad(90)) * angles(rad(-15), rad(0), rad(0)) * rsC0, 1)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 1, -0.25) * angles(rad(0), rad(0), rad(-90)) * angles(rad(90), rad(-25), rad(-30)) * lsC0, 1)
			rh.C0 = rh.C0:Lerp(cframe(-0.25, 1.25, -1.25) *  angles(rad(45), rad(90), rad(0)) * angles(rad(-30), rad(125), rad(90)) * angles(rad(-45), rad(-0), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, 0.5) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(35), rad(75), rad(0)) * angles(rad(25), rad(10), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.25, 4.15, 0.45) *  angles(rad(0), rad(90), rad(-0)) * angles(rad(-82.5), rad(-25), rad(30)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 5 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0.75, -0.75) * angles(rad(-90), rad(-0), rad(-215)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(75)) * angles(rad(-0), rad(30), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.5, 0) * angles(rad(-60), rad(15), rad(30)) * rsC0, 1)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.75, -0.5) * angles(rad(160), rad(-20), rad(15)) * lsC0, 1)
			rh.C0 = rh.C0:Lerp(cframe(0.5, 1.25, -.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-0), rad(90)) * angles(rad(-0), rad(75), rad(30)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1.5, -1, -0.5) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(-90)) * angles(rad(-30), rad(60), rad(75)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.25, -3.5, 2.25) *  angles(rad(0), rad(90), rad(-0)) * angles(rad(45), rad(15), rad(30)) * angles(rad(-10), rad(-0), rad(-10)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 6 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0) * angles(rad(-15), rad(-15), rad(-120)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(50)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.15, 0.5, -0.4) * angles(rad(0), rad(45), rad(30)) * angles(rad(15), rad(20), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.4, 0.5, -0.15) * angles(rad(30), rad(-45), rad(0)) * angles(rad(10), rad(-0), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1, -0.5, -1) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-30), rad(25), rad(25)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, -0.3) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(15), rad(30), rad(-20)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		end	
	elseif anim == "aba" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -1) * angles(rad(-60), rad(-0), rad(-200)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(75)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5 , 0, 0.5) * angles(rad(90), rad(0), rad(-0)) * rsC0, 1)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 0.5, 0.25) * angles(rad(0), rad(25), rad(0)) * angles(rad(82.5), rad(-0), rad(0)) * lsC0, 1)
			rh.C0 = rh.C0:Lerp(cframe(0.5, 1.25, -1) *  angles(rad(-25), rad(90), rad(0)) * angles(rad(-0), rad(-0), rad(90)) * angles(rad(30), rad(75), rad(-15)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, 0 ) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(90), rad(0), rad(-0)) * angles(rad(-30), rad(30), rad(-30)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1.5, -1.15, -2.75) *  angles(rad(0), rad(90), rad(-180)) * angles(rad(0), rad(0), rad(-30)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-0.25, -0.15) * angles(rad(12.5), rad(-0), rad(15)), 1)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(-40)), 1)
			rs.C0 = rs.C0:Lerp(cframe(1, 0.5, -1) * angles(rad(90), rad(0), rad(-60)) * angles(rad(-0), rad(60), rad(30)) * rsC0, 1)
			ls.C0 = ls.C0:Lerp(cframe(-1, 0.75, 0.5) * angles(rad(30), rad(-10), rad(-100)) * angles(rad(-0), rad(-20), rad(0)) * lsC0, 1)
			rh.C0 = rh.C0:Lerp(cframe(0.5, -1, 1) *  angles(rad(-10), rad(90), rad(0)) * angles(rad(-0), rad(-75), rad(0)) , 1)
			lh.C0 = lh.C0:Lerp(cframe(-0.25, -0.75, -1.25) *  angles(rad(20), rad(-90), rad(0)) * angles(rad(-0), rad(-90), rad(-15)), 1)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 3 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-1.5, -0.45) * angles(rad(-0), rad(-20), rad(160)), 1)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(75)), 1)
			rs.C0 = rs.C0:Lerp(cframe(1.25 , 1.5, -0.15) * angles(rad(0), rad(30), rad(90)) * angles(rad(30), rad(-0), rad(0)) * rsC0, 1)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0, 0.15) * angles(rad(-10), rad(20), rad(-15)) * lsC0, 1)
			rh.C0 = rh.C0:Lerp(cframe(-0.5, -0.5, -1) *  angles(rad(40), rad(90), rad(0)) * angles(rad(-0), rad(90), rad(30)), 1)
			lh.C0 = lh.C0:Lerp(cframe(0.15, -0.75, 0.75) *  angles(rad(-60), rad(-90), rad(0)) * angles(rad(0), rad(110), rad(0)), 1)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)) * angles(rad(-10), rad(-0), rad(0)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		end	
	elseif anim == "go shoot" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-60)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.5, 0) * angles(rad(90), rad(60), rad(-30)) * angles(rad(10), rad(20), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.5, 0) * angles(rad(60), rad(0), rad(-20)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-10), rad(-30), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, -0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(55), rad(-10)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1.5, 0.45, 0) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(90), rad(-0), rad(0)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-0.25, 0) * angles(rad(10), rad(0), rad(30)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25 , 0.25, -0.25) * angles(rad(90), rad(60), rad(-30)) * angles(rad(-10), rad(20), rad(30)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1, 0.5, -1) * angles(rad(60), rad(-30), rad(30)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-10), rad(-45), rad(-20)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-0.875, -1, -0.65) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(-25), rad(-15)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, 1, 0) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(35), rad(0), rad(0)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 3 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-0.5, -0.25) * angles(rad(10), rad(10), rad(105)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(-50)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25 , 0.5, -0) * angles(rad(90), rad(60), rad(-30)) * angles(rad(-10), rad(-15), rad(15)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1, 0.75, -0.25) * angles(rad(45), rad(-105), rad(10)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -0.76, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-35), rad(-0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, 0 ) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-30), rad(15), rad(20)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, 1, 0) *  angles(rad(0), rad(-90), rad(0)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 4 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-1, -0.25) * angles(rad(0), rad(0), rad(-150)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(10), rad(-10), rad(50)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25 , 0.5, -0) * angles(rad(90), rad(60), rad(-30)) * angles(rad(-10), rad(-15), rad(15)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1, 0.75, -0.5) * angles(rad(45), rad(-90), rad(-10)) * angles(rad(30), rad(0), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(0.85, -0.8, -1) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(30), rad(20)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -0.75, 0 ) *  angles(rad(-25), rad(-90), rad(0)) * angles(rad(0), rad(60), rad(-15)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, 0.85, -0.5) *  angles(rad(0), rad(-90), rad(30)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 5 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-1.5, -0.75) * angles(rad(0), rad(0), rad(-15)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25, 0.5, 0) * angles(rad(-15), rad(0), rad(90)) * angles(rad(20), rad(-0), rad(-30)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 0.75, 0.5) * angles(rad(90), rad(90), rad(-180)) * angles(rad(-0), rad(30), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -0.25, 0.3) *  angles(rad(-45), rad(90), rad(0)) * angles(rad(-0), rad(-75), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-0.9, -0.45, -0.65) *  angles(rad(30), rad(-90), rad(0)) * angles(rad(0), rad(-60), rad(10)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1, -1, 0) *  angles(rad(0), rad(-90), rad(-180)) * angles(rad(45), rad(30), rad(0)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 6 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-60)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(45)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25 , 0.5, -0.5) * angles(rad(0), rad(75), rad(15)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1, 0.5, 0.5) * angles(rad(-0), rad(90), rad(0)) * angles(rad(15), rad(-25), rad(10)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1, -1, -0) *  angles(rad(-25), rad(90), rad(0)) * angles(rad(-0), rad(-35), rad(25)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1, -1, -0.15) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(15), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 7 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-1.5, -0.75) * angles(rad(0), rad(0), rad(-35)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25, 0.5, 0) * angles(rad(-15), rad(0), rad(90)) * angles(rad(20), rad(-0), rad(-30)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 0.5, -0.5) * angles(rad(0), rad(-90), rad(-90)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -0.25, 0.3) *  angles(rad(-45), rad(90), rad(0)) * angles(rad(-0), rad(-75), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-0.9, -0.45, -0.65) *  angles(rad(30), rad(-90), rad(0)) * angles(rad(0), rad(-60), rad(10)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(-90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 8 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-1.5, -0.75) * angles(rad(0), rad(0), rad(-22.5)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25, 0.5, 0) * angles(rad(-15), rad(0), rad(90)) * angles(rad(20), rad(-0), rad(-30)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 0.5, -0) * angles(rad(0), rad(-180), rad(-90)) * angles(rad(180), rad(-0), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -0.25, 0.3) *  angles(rad(-45), rad(90), rad(0)) * angles(rad(-0), rad(-75), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-0.9, -0.45, -0.65) *  angles(rad(30), rad(-90), rad(0)) * angles(rad(0), rad(-60), rad(10)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(-90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		end	
	elseif anim == "miki hoshii" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-135)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(60)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.15, 0.75, -0.25) * angles(rad(90), rad(180), rad(-75)) * angles(rad(-0), rad(-15), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.35, 0) * angles(rad(90), rad(-60), rad(0)) * angles(rad(-15), rad(-0), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(0.75, -0.5, -1) *  angles(rad(30), rad(90), rad(0)) * angles(rad(-0), rad(45), rad(-30)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, 0 ) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(60), rad(75)) * angles(rad(-15), rad(-0), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-200)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(90)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1, 0.75, -0.5) * angles(rad(90), rad(120), rad(-0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1, -0.5, -0.75) * angles(rad(90), rad(130), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(0.25, -0.5, -1.5) *  angles(rad(30), rad(90), rad(0)) * angles(rad(-0), rad(105), rad(-0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-0.75, -1, 1) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(90), rad(45)) * angles(rad(15), rad(-0), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 3 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(-60), rad(135)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(-75)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1, 0.75, -0.5) * angles(rad(90), rad(90), rad(-0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1, -0.25, -0.95) * angles(rad(90), rad(90), rad(40)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -0.75, -0.75) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-0), rad(30)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, 0 ) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(45), rad(0)) * angles(rad(-60), rad(30), rad(-20)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 4 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(-45), rad(-130)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(35)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1, 0.75, -0.5) * angles(rad(90), rad(90), rad(-30)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, -0.25, -0.35) * angles(rad(90), rad(90), rad(10)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(0.75, -1, -1) *  angles(rad(30), rad(90), rad(0)) * angles(rad(-0), rad(45), rad(25)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1.25, -1.25, .45) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(60), rad(75)) * angles(rad(15), rad(-0), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 5 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(-0), rad(-130)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(60)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25, 0.75, 0.5) * angles(rad(90), rad(90), rad(-0)) * angles(rad(-120), rad(-0), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.5, 0) * angles(rad(90), rad(-60), rad(20)) * angles(rad(-30), rad(-0), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(0.6, -1, -1) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(45), rad(-60)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, 0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(50), rad(20)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 6 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(-30), rad(45)), 1)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(-75)), 1)
			rs.C0 = rs.C0:Lerp(cframe(1, 0.75, -0.5) * angles(rad(90), rad(90), rad(-0)) * rsC0, 1)
			ls.C0 = ls.C0:Lerp(cframe(-1, -0.25, -0.95) * angles(rad(90), rad(90), rad(40)) * lsC0, 1)
			rh.C0 = rh.C0:Lerp(cframe(1 , -0.75, -0.75) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-0), rad(30)), 1)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, 0 ) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(45), rad(0)) * angles(rad(-60), rad(30), rad(-20)), 1)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		end	
	elseif anim == "ibuki mioda" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-0, -0.15) * angles(rad(12.5), rad(-0), rad(15)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(-40)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25 , 0, 0.5) * angles(rad(0), rad(-90), rad(-0)) * angles(rad(60), rad(-15), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1, 0.75, 0.5) * angles(rad(30), rad(-10), rad(-100)) * angles(rad(-0), rad(-20), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(0.5, -1, 1) *  angles(rad(-10), rad(90), rad(0)) * angles(rad(-0), rad(-75), rad(0)) , 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-0.25, -0.75, -1.25) *  angles(rad(20), rad(-90), rad(0)) * angles(rad(-0), rad(-90), rad(-15)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-0, -0.15) * angles(rad(45), rad(-0), rad(0)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(-0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25 , -0.15, 0.25) * angles(rad(0), rad(-90), rad(-0)) * angles(rad(60), rad(-15), rad(-30)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1, 0.75, 0.5) * angles(rad(30), rad(-10), rad(-100)) * angles(rad(-0), rad(30), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-0), rad(-25)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -0.3, -0.75) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 3 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-0.25, -0) * angles(rad(0), rad(-0), rad(-60)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(40)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.75, 0) * angles(rad(90), rad(90), rad(-0)) * angles(rad(-45), rad(-0), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 1.25, 0) * angles(rad(-50), rad(45), rad(-90)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -0.75, 0.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-30), rad(0)) * angles(rad(-15), rad(-0), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, -0.6) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(-15), rad(-30)) * angles(rad(-15), rad(-0), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 4 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-0.75, -0.5) * angles(rad(0), rad(-0), rad(-135)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(30), rad(0), rad(20)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(0.75, 0.75, -1) * angles(rad(90), rad(0), rad(-75)) * angles(rad(30), rad(60), rad(-30)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-0.8, 0.25, -1) * angles(rad(0), rad(-45), rad(0)) * angles(rad(50), rad(-0), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -0.6, -0.75) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-15), rad(10)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -0.5, 0 ) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(45), rad(0)) * angles(rad(-45), rad(-0), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.25, -0.75, 0) *  angles(rad(0), rad(90), rad(-180)) * angles(rad(50), rad(-0), rad(0)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 5 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-0.45, 0) * angles(rad(0), rad(0), rad(-75)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(45)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25 , 0.5, -0.25) * angles(rad(0), rad(60), rad(25)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1, 0.75, 0.45) * angles(rad(-0), rad(90), rad(0)) * angles(rad(15), rad(0), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1, -1, -0) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-5), rad(-20), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1, -1, -0.15) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(15), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		end	
	elseif anim == "ibuki hit" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-0, -0.75) * angles(rad(0), rad(-0), rad(-145)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(20), rad(0), rad(35)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(0.5, 0.5, -1.25) * angles(rad(90), rad(0), rad(-75)) * angles(rad(30), rad(60), rad(-30)) * angles(rad(-30), rad(-0), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1, 0.5, -0.5) * angles(rad(0), rad(-45), rad(0)) * angles(rad(0), rad(-0), rad(-60)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -0.25, -0.75) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-55), rad(-7.5)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -0.25, 0 ) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(45), rad(0)) * angles(rad(-45), rad(-0), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-0.5, -0.75) * angles(rad(-0), rad(30), rad(90)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.5, 0.5) * angles(rad(115), rad(0), rad(45)) * angles(rad(-0), rad(75), rad(-40)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.35, 0.75, 0.25) * angles(rad(-65), rad(20), rad(-35)) * angles(rad(30), rad(30), rad(-15)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -0.5, -1) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-15), rad(30), rad(-30)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1.3, -0.45, -0.75) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-0), rad(0), rad(15)) * angles(rad(20), rad(15), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 3 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0.15) * angles(rad(10), rad(15), rad(-30)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.5, 0) * angles(rad(90), rad(90), rad(30))* angles(rad(-30), rad(-0), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.5, 0) * angles(rad(45), rad(20), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1.3, -0.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(15), rad(30), rad(45)) * angles(rad(-0), rad(20), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-0.75, -0.85, 0.75) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-20), rad(45), rad(45)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 4 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0.45) * angles(rad(0), rad(0), rad(-60)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1, 0.25, -0.3) * angles(rad(90), rad(90), rad(0)) * angles(rad(40), rad(-0), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(0.45, 0.75, -0.75) * angles(rad(90), rad(-90), rad(0)) * angles(rad(75), rad(-0), rad(0))* angles(rad(30), rad(-0), rad(-15)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(0.5, -0.75, -1) *  angles(rad(0), rad(90), rad(0)) * angles(rad(15), rad(45), rad(25)) * angles(rad(-0), rad(20), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-.25, -0.85, 1) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-0), rad(45), rad(45)) * angles(rad(10), rad(-0), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 5 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-0.3, 0) * angles(rad(0), rad(-0), rad(-90)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(30)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25, 0.25, -0.75) * angles(rad(75), rad(75), rad(-50)) * angles(rad(30), rad(-0), rad(30)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.5, 0) * angles(rad(0), rad(40), rad(0)) * angles(rad(90), rad(0), rad(-0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(0.75, -1, -1) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(30), rad(-0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-0.75, -1.25, -0) *  angles(rad(20), rad(-90), rad(0)) * angles(rad(0), rad(45), rad(50)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 6 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-75)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(45)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.3, 0.5, -0.5) * angles(rad(0), rad(45), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1, 0.5, 0.45) * angles(rad(-0), rad(90), rad(0)) * angles(rad(7.5), rad(0), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1, -1, -0) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-5), rad(-20), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1, -1, -0.15) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(15), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		end	
	elseif anim == "hell" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0.25) * angles(rad(5), rad(10), rad(-115)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(60)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5 , 0, 0) * angles(rad(75), rad(-30), rad(-0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.5, 0) * angles(rad(0), rad(-90), rad(-90)) * angles(rad(-0), rad(15), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, -0.75) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-10), rad(20), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -0.75, 0 ) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-30), rad(30), rad(20)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0.15) * angles(rad(0), rad(0), rad(30)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(-40)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.5, 0) * angles(rad(90), rad(0), rad(25)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(0.15, 0.75, -1.25) * angles(rad(90), rad(-90), rad(0)) * angles(rad(120), rad(-0), rad(5)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -0.85, 0.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-45), rad(-25)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-0.85, -1.15, -0.45) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(-30), rad(-37.5)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 3 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0.25) * angles(rad(0), rad(0), rad(-30)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(30), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25 , 0.425, 0.25) * angles(rad(0), rad(-30), rad(0)) * angles(rad(90), rad(-0), rad(45)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-0.75, 0.25, -0.75) * angles(rad(90), rad(0), rad(60)) * angles(rad(-0), rad(30), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -0.5, -0.75) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-0), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -0.75, -0.45) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(30), rad(30)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 4 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -1) * angles(rad(-90), rad(-60), rad(125)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(45), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(0.25, 0, -0.75) * angles(rad(90), rad(30), rad(-60)) * angles(rad(30), rad(-10), rad(-0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 1, 0.25) * angles(rad(90), rad(-90), rad(0)) * angles(rad(30), rad(0), rad(30)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -0.45, -1.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-0), rad(90)) * angles(rad(25), rad(20), rad(-0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-0.5, -1, 0.5) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(-90)) * angles(rad(-90), rad(30), rad(-0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 5 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0) * angles(rad(0), rad(-20), rad(-110)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(60)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1, 0.5, -1) * angles(rad(0), rad(75), rad(-0)) * angles(rad(10), rad(-0), rad(10)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-0.75, 0, -1) * angles(rad(0), rad(-60), rad(-10)) * angles(rad(90), rad(-0), rad(30)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -0.75, -0.85) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-7.5), rad(15), rad(20)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, 0 ) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(30), rad(-20)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		end	
	elseif anim == "hellhit" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0.5) * angles(rad(0), rad(0), rad(-75)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.45 , 0.85, -0.5) * angles(rad(165), rad(30), rad(-0)) * angles(rad(-0), rad(0), rad(-20)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.5, 0) * angles(rad(90), rad(-90), rad(0)) * angles(rad(15), rad(-0), rad(-30)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -0.5, -0.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-15), rad(-15), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -0.5, -0.75) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-10), rad(20), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-0.25, -0) * angles(rad(-0), rad(-5), rad(10)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-10), rad(10), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25 , 0.5, 0.25) * angles(rad(0), rad(-90), rad(-0)) * angles(rad(20), rad(-0), rad(15)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 0.5, 0.325) * angles(rad(90), rad(-90), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -0.875, 0.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-10), rad(-25), rad(-25)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-0.75, -1, -0.75) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(-15), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 3 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-0.5, -0.25) * angles(rad(-0), rad(-10), rad(45)), 1)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-10), rad(10), rad(-30)), 1)
			rs.C0 = rs.C0:Lerp(cframe(1.25 , 0.5, -0.25) * angles(rad(90), rad(0), rad(30)) * angles(rad(30), rad(-0), rad(0)) * rsC0, 1)
			ls.C0 = ls.C0:Lerp(cframe(-0.75, 0.5, 1) * angles(rad(0), rad(0), rad(-75)) * angles(rad(45), rad(30), rad(-30)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(0.75, -0.5, 1) *  angles(rad(-30), rad(90), rad(0)) * angles(rad(-0), rad(-40), rad(-15)) * angles(rad(7.5), rad(-0), rad(0)), 1)
			lh.C0 = lh.C0:Lerp(cframe(-0.45, -1, -1) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(-45), rad(0)) * angles(rad(10), rad(-0), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 4 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-0.5, -0.15) * angles(rad(-10), rad(-5), rad(70)), 1)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(-55)), 1)
			rs.C0 = rs.C0:Lerp(cframe(2, 1.25, -0) * angles(rad(160), rad(75), rad(0)) * angles(rad(-45), rad(-0), rad(0)) * rsC0, 1)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.25, 0.25) * angles(rad(0), rad(25), rad(-0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1, -0.85, -0.35) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(30), rad(-10)) * angles(rad(-10), rad(-0), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1.15, -0.55, 0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(20), rad(0)) * angles(rad(-30), rad(-0), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		end	
	elseif anim == "install" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-60)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.4 , 0.35, -0.25) * angles(rad(0), rad(45), rad(-0)) * angles(rad(15), rad(-0), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1, -0, -1) * angles(rad(0), rad(-45), rad(0)) * angles(rad(90), rad(-0), rad(30)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-20), rad(-30), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, 0 ) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(30), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0.5) * angles(rad(10), rad(-20), rad(-45)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(55), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(0.75, 0.25, -1.25) * angles(rad(90), rad(-90), rad(-75)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1, 0.5, -0.75) * angles(rad(90), rad(-90), rad(0)) * angles(rad(90), rad(-0), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1, -0.5, 0.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-20), rad(-30), rad(15)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -0.65, -0.45) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(15), rad(15), rad(-25)) * angles(rad(-0), rad(-20), rad(-10)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 3 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0.25) * angles(rad(-10), rad(20), rad(-45)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-25), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1 , 0, -0.5) * angles(rad(90), rad(-90), rad(-0)) * angles(rad(-15), rad(-0), rad(30)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-0.75, -0.25, -0.75) * angles(rad(0), rad(0), rad(90)) * angles(rad(15), rad(45), rad(-0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -0.85, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-45), rad(-20)) * angles(rad(-30), rad(-0), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-0.85, -1.15, -1) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(-30), rad(20)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 4 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0.25) * angles(rad(5), rad(-15), rad(-60)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(20), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.35 , 0.5, -0.4) * angles(rad(0), rad(0), rad(-0)) * angles(rad(15), rad(-0), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.4, 0.5, -0.15) * angles(rad(15), rad(0), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1, -0.5, -0.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-10), rad(-35), rad(10)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -0.6, -0.65) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(10), rad(-0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		end	
	elseif anim == "fear" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-0.25, 0+ 0.1 * sin(sine / 15)) * angles(rad(0), rad(0), rad(-45)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(20), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(0.15, 0+ 0.045 * sin(sine / 15), -1.15) * angles(rad(0), rad(45), rad(-0)) * angles(rad(90), rad(-0), rad(-75)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.15, 0.45+ 0.045 * sin(sine / 15), 0.15) * angles(rad(0), rad(45), rad(0)) * angles(rad(20), rad(-0), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1- 0.1 * sin(sine / 15), 0.45) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-25), rad(-45), rad(-15)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1- 0.1 * sin(sine / 15), -0.75) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-10), rad(-35), rad(-10)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-0.25, -0.25) * angles(rad(-0), rad(0), rad(-120)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(50)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.25, 0) * angles(rad(50), rad(0), rad(-0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 1.25, 0.25) * angles(rad(90), rad(-60), rad(-60)) * angles(rad(-10), rad(-30), rad(-20)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -0.75, -0.75) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(15), rad(0)) * angles(rad(-30), rad(-0), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -0.75, 0) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(30), rad(0)) * angles(rad(-15), rad(-0), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 3 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-0.25, -0.45) * angles(rad(-0), rad(-10), rad(-90)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(60)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.25, 0) * angles(rad(75), rad(0), rad(-0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.5, 0.5) * angles(rad(0), rad(90), rad(0)) * angles(rad(45), rad(-0), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -0.5, -0.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-30), rad(-0), rad(10)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -0.35, -0.65) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-15), rad(0), rad(-10)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 4 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0.15) * angles(rad(0), rad(-5), rad(-75)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(30)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.5, -0.4) * angles(rad(0), rad(15), rad(-0)) * angles(rad(0), rad(-0), rad(7.5)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.5, 0.25) * angles(rad(0), rad(90), rad(0)) * angles(rad(30), rad(-20), rad(10)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1, -0.85, -0.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-10), rad(-15), rad(10)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -0.85, -0.65) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-6.5), rad(-7.5), rad(-10)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		end	
	elseif anim == "fearhit" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0.15) * angles(rad(0), rad(0), rad(-120)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(30)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1, 0.25, 0.25) * angles(rad(0), rad(-45), rad(-0)) * angles(rad(30), rad(-0), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.75, 1.25, -0.15) * angles(rad(180), rad(10), rad(10)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, -0.75) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(30), rad(0)) * angles(rad(-20), rad(-0), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, 0) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(30), rad(0)) * angles(rad(-30), rad(-0), rad(10)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0.15- 0.1 * sin(sine / 21)) * angles(rad(0), rad(0), rad(-90)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(0.75- 0.068 * sin(sine / 21), 0.5, -1) * angles(rad(90), rad(0), rad(-90)) * angles(rad(-20), rad(75), rad(20)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1- 0.068 * sin(sine / 18), 0.5, -0.75) * angles(rad(90), rad(-75), rad(0)) * angles(rad(15), rad(0), rad(20)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -0.75+ 0.1 * sin(sine / 21), -0.45) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(0), rad(0)) * angles(rad(-20), rad(-0), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -0.75+ 0.1 * sin(sine / 21), -0.5) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(0)) * angles(rad(-10), rad(-0), rad(10)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 3 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0.15) * angles(rad(0), rad(0), rad(-30)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(0.75, 0.15, -0.75) * angles(rad(60), rad(0), rad(-30)) * angles(rad(-0), rad(20), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-0.5, 0.5, -1.25) * angles(rad(90), rad(-75), rad(0)) * angles(rad(65), rad(-10), rad(35)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -0.75, 0.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-60), rad(0)) * angles(rad(-15), rad(-0), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-0.75, -0.75, -0.75) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(-20), rad(0)) * angles(rad(-10), rad(-0), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 4 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0, 1.5, -0.35) * angles(rad(10), rad(0), rad(90)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(-50)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.15 , 0.75, 0) * angles(rad(0), rad(90), rad(82.5)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.5, 0) * angles(rad(0), rad(0), rad(-90)) * angles(rad(-0), rad(-180), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -0.45, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(5), rad(0))* angles(rad(-45), rad(-0), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1.35, -1, 0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(30), rad(0))* angles(rad(-0), rad(-0), rad(30)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 5 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,1.25, -0.3) * angles(rad(10), rad(-20), rad(-60)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(20)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25 , 0.75, 0.35) * angles(rad(0), rad(60), rad(60)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0, -1) * angles(rad(90), rad(90), rad(0)) * angles(rad(0), rad(-0), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(0.15, -0.25, -1.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(60), rad(0)) * angles(rad(-20), rad(-0), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(1, -1, 0.5) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(145), rad(0)) * angles(rad(-30), rad(0), rad(30)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 6 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0, 1.5, -0.35) * angles(rad(0), rad(0), rad(120)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(-50)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.15 , 0.75, 0.15) * angles(rad(0), rad(90), rad(82.5)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.5, 0) * angles(rad(0), rad(0), rad(-90)) * angles(rad(30), rad(-180), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -0.75, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(5), rad(0))* angles(rad(-45), rad(-0), rad(-30)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1.35, -0.675, 0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(15), rad(0))* angles(rad(-0), rad(-0), rad(7.5)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 7 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0.75, -0.25) * angles(rad(0), rad(-0), rad(-75)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(20)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1 , 0.35, 0.3) * angles(rad(0), rad(75), rad(90)) * angles(rad(-5), rad(-30), rad(35)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1, 1, -1.5) * angles(rad(90), rad(90), rad(90)) * angles(rad(-0), rad(-30), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(0.25, -0.75, -1) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(45), rad(-0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(0.25, -0.75, 0.75) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(75), rad(0)) * angles(rad(-0), rad(-0), rad(30)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 8 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0.5, -0) * angles(rad(0), rad(-0), rad(-30)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1, 0.75, -1.25) * angles(rad(0), rad(30), rad(-0)) * angles(rad(135), rad(-0), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 1.25, 0.3) * angles(rad(0), rad(30), rad(0)) * angles(rad(195), rad(-0), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(0.9, -1, -0.75) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(30), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-0.85, -1, 0.45) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(30), rad(20)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 9 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0.25, -0.45) * angles(rad(10), rad(-10), rad(-90)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(50)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1, 1, -0.5) * angles(rad(0), rad(90), rad(27.5)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 0.25, -0.5) * angles(rad(0), rad(90), rad(0)) * angles(rad(60), rad(10), rad(20)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -0.6, -0.45) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-0), rad(10)) * angles(rad(-30), rad(-0), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -0.45, 0 ) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(45), rad(0)) * angles(rad(-0), rad(-0), rad(-15)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
		elseif frame == 10 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0, 1.5, -0.35) * angles(rad(20), rad(0), rad(30)), 1)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(-50)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.15 , 0.75, 0.15) * angles(rad(0), rad(90), rad(82.5)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.5, 0) * angles(rad(0), rad(0), rad(-90)) * angles(rad(30), rad(-180), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -0.75, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(5), rad(0))* angles(rad(-45), rad(-0), rad(-30)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1.35, -0.8, 0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(15), rad(0))* angles(rad(-0), rad(-0), rad(7.5)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		end	
	elseif anim == "fearend" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0.45) * angles(rad(10), rad(-10), rad(-90)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(50)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5, 0.75, -0.25) * angles(rad(50), rad(75), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 0.25, 0.15) * angles(rad(0), rad(90), rad(0)) * angles(rad(90), rad(10), rad(30)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -0.6, -0.45) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-0), rad(10)) * angles(rad(-30), rad(-0), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -0.45, 0 ) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(45), rad(0)) * angles(rad(-0), rad(-0), rad(-15)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0.15) * angles(rad(25), rad(-10), rad(30)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(-40)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25 , 0, 0.5) * angles(rad(0), rad(-30), rad(-0)) * angles(rad(105), rad(10), rad(20)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 0.75, 0.5) * angles(rad(30), rad(0), rad(-100)) * angles(rad(-0), rad(45), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(0.25, -1.15, 0.75) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-105), rad(-0)) * angles(rad(-0), rad(-0), rad(-20)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-0.25, -0.75, -1.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-5), rad(-45), rad(-40)) * angles(rad(-0), rad(-20), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 3 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0.45) * angles(rad(-15), rad(-10), rad(30)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(-40)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1, 0.25, 1) * angles(rad(0), rad(-30), rad(-0)) * angles(rad(75), rad(10), rad(60)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 0.75, 0.5) * angles(rad(30), rad(0), rad(-100)) * angles(rad(-0), rad(45), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(0.15, -0.15, 1.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-120), rad(-0)) * angles(rad(-30), rad(-0), rad(-20)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-0.5, -1, -1) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(-60), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 4 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0.5) * angles(rad(0), rad(0), rad(-115)), 1)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(30), rad(-15), rad(30)), 1)
			rs.C0 = rs.C0:Lerp(cframe(0.6, -0.25, 0.75) * angles(rad(90), rad(0), rad(60)) * rsC0, 1)
			ls.C0 = ls.C0:Lerp(cframe(-1.15, 0.675, 0.25) * angles(rad(0), rad(30), rad(-90)) * angles(rad(-0), rad(30), rad(30)) * lsC0, 1)
			rh.C0 = rh.C0:Lerp(cframe(1 , -0.5, -0.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-0), rad(0)) * angles(rad(-45), rad(-0), rad(0)), 1)
			lh.C0 = lh.C0:Lerp(cframe(-1.15, -0.5, -0.45) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(30), rad(0)) * angles(rad(-20), rad(-0), rad(10)), 1)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-1.75, 0.65, -0.15) *  angles(rad(0), rad(90), rad(-180)) * angles(rad(-105), rad(-60), rad(15)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		elseif frame == 5 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0.5) * angles(rad(0), rad(0), rad(-105)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(15), rad(-0), rad(60)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1, -0.25, 0.25) * angles(rad(90), rad(0), rad(25)) * angles(rad(-0), rad(-30), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.5, 0) * angles(rad(0), rad(-75), rad(0)) * angles(rad(-30), rad(-0), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -0.5, -0.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-0), rad(0)) * angles(rad(-45), rad(-0), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1.15, -0.5, -0.45) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(15), rad(0)) * angles(rad(-20), rad(-0), rad(0)), 0.3)
			WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
			CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
		end	
	elseif anim == "reference" then
		rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-0)), 0.3)
		nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
		rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.5, 0) * angles(rad(0), rad(0), rad(-0)) * rsC0, 0.3)
		ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.5, 0) * angles(rad(0), rad(0), rad(0)) * lsC0, 0.3)
		rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-0), rad(0)), 0.3)
		lh.C0 = lh.C0:Lerp(cframe(-1 , -1, 0 ) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(0)), 0.3)
		WeaponWeld.C0 = WeaponWeld.C0:Lerp(cframe(-0.75, -1, 0) *  angles(rad(0), rad(90), rad(-180)), 1)
		CosmeticW.C0 = CosmeticW.C0:Lerp(cframe(-0.25, 0.5, -0.5) *  angles(rad(0), rad(0), rad(25)), 1)
	end
end)

--health and died stuff
local CurrentHP = human.Health
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
			if not (ducking or sitting) then
				local randomhurt = random(0,5)
				if user.Name == "ninjakaiden1" then
					if gender == "Male" then
						if not guarding then
							if randomhurt <= 1 then
							elseif randomhurt >= 4 then
							else
								chatter("WHAT?!")
							end
						else
							if randomhurt <= 1 then
								chatter("Nice try!")
							end
						end
					else
						if guarding then
							if randomhurt <= 1 then
								chatter("Nice try!")
							elseif randomhurt >= 4 then
								chatter("Too weak!")
							else
								chatter("ARE YOU STUPID?!")
							end
						end
					end
					if voices then
						if gender == "Male" then
							if not guarding then
								if randomhurt <= 1 then
									voice("scorpion/scorp_5000-0.wav",3,1.05,head,0,false)
								elseif randomhurt >= 4 then
									voice("scorpion/scorp_5000-1.wav",3,1.05,head,0,false)
								else
									voice("scorpion/scorp_5000-2.wav",3,1.05,head,0,false)
								end
							else
								if randomhurt <= 1 then
									voice("scorpion/scorp_151-0.wav",3,1.05,head,0,false)
								elseif randomhurt >= 4 then
									voice("scorpion/scorp_151-1.wav",3,1.05,head,0,false)
								else
									voice("scorpion/scorp_151-2.wav",3,1.05,head,0,false)
								end
							end
						else
							if not guarding then
								if randomhurt <= 1 then
									voice(119233047711484,3,1.05,head,0,false)
								elseif randomhurt >= 4 then
									voice(97173975583390,3,1.05,head,0,false)
								else
									voice(127342258358185,3,1.05,head,0,false)
								end
							else
								if randomhurt <= 1 then
									sound(89563987572168,3,1.05,head,0,false)
								elseif randomhurt >= 4 then
									sound(17573766359,3,1.05,head,0,false)
								else
									sound(7480575774,3,1.05,head,0,false)
								end
							end
						end
					end
				else
					if guarding then
						if randomhurt <= 1 then
							chatter("Nice try!")
						elseif randomhurt >= 4 then
							chatter("Too weak!")
						else
							chatter("ARE YOU STUPID?!")
						end
					end
					if voices then
						if not guarding then
							if randomhurt <= 1 then
								voice(119233047711484,3,1.05,head,0,false)
							elseif randomhurt >= 4 then
								voice(97173975583390,3,1.05,head,0,false)
							else
								voice(127342258358185,3,1.05,head,0,false)
							end
						else
							if randomhurt <= 1 then
								sound(89563987572168,3,1.05,head,0,false)
							elseif randomhurt >= 4 then
								sound(17573766359,3,1.05,head,0,false)
							else
								sound(7480575774,3,1.05,head,0,false)
							end
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
				if user.Name == "ninjakaiden1" then
					if gender == "Male" then
						if not guarding then
							if randomhurt <= 1 then
							elseif randomhurt >= 4 then
							else
								chatter("WHAT?!")
							end
						else
							if randomhurt <= 1 then
								chatter("Nice try!")
							end
						end
					end
					if voices then
						if gender == "Male" then
							if not guarding then
								if randomhurt <= 1 then
									voice("scorpion/scorp_5000-0.wav",3,1.05,head,0,false)
								elseif randomhurt >= 4 then
									voice("scorpion/scorp_5000-1.wav",3,1.05,head,0,false)
								else
									voice("scorpion/scorp_5000-2.wav",3,1.05,head,0,false)
								end
							else
								if randomhurt <= 1 then
									voice("scorpion/scorp_151-0.wav",3,1.05,head,0,false)
								elseif randomhurt >= 4 then
									voice("scorpion/scorp_151-1.wav",3,1.05,head,0,false)
								else
									voice("scorpion/scorp_151-2.wav",3,1.05,head,0,false)
								end
							end
						end
					end
				else
					if voices then
						if not guarding then
							if randomhurt <= 1 then
								voice(119233047711484,3,1.05,head,0,false)
							elseif randomhurt >= 4 then
								voice(97173975583390,3,1.05,head,0,false)
							else
								voice(127342258358185,3,1.05,head,0,false)
							end
						else
							if randomhurt <= 1 then
								sound(89563987572168,3,1.05,head,0,false)
							elseif randomhurt >= 4 then
								sound(17573766359,3,1.05,head,0,false)
							else
								sound(7480575774,3,1.05,head,0,false)
							end
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
				local randomhurt = random(0,5)
				if user.Name == "ninjakaiden1" then
					if gender == "Male" then
						if not guarding then
							if randomhurt <= 1 then
							elseif randomhurt >= 4 then	
								chatter("D-Dang it!")
							else
							end
						else
							if randomhurt <= 1 then
								chatter("Nice try!")
							end
						end
						if voices then
							if not guarding then
								if randomhurt <= 1 then
									voice("scorpion/scorp_5001-0.wav",3,1.05,head,0,false)
								elseif randomhurt >= 4 then
									voice("scorpion/scorp_5001-1.wav",3,1.05,head,0,false)
								elseif randomhurt == 2 then
									voice("scorpion/scorp_5001-2.wav",3,1.05,head,0,false)
								elseif randomhurt == 3 then
									voice("scorpion/scorp_5001-3.wav",3,1.05,head,0,false)
								end
							else
								if randomhurt <= 1 then
									voice("scorpion/scorp_151-0.wav",3,1.05,head,0,false)
								elseif randomhurt >= 4 then
									voice("scorpion/scorp_151-1.wav",3,1.05,head,0,false)
								else
									voice("scorpion/scorp_151-2.wav",3,1.05,head,0,false)
								end
							end
						end
					else
						if guarding then
							if randomhurt <= 1 then
								chatter("Nice try!")
							elseif randomhurt >= 4 then
								chatter("Too weak!")
							else
								chatter("ARE YOU STUPID?!")
							end
						end
						if voices then
							if not guarding then
								if randomhurt <= 1 then
									voice(119233047711484,3,1.05,head,0,false)
								elseif randomhurt >= 4 then
									voice(97173975583390,3,1.05,head,0,false)
								else
									voice(127342258358185,3,1.05,head,0,false)
								end
							else
								if randomhurt <= 1 then
									sound(89563987572168,3,1.05,head,0,false)
								elseif randomhurt >= 4 then
									sound(17573766359,3,1.05,head,0,false)
								else
									sound(7480575774,3,1.05,head,0,false)
								end
							end
						end
					end
				end
				anim = "fallblock"
				wait(1)
				attack = false
				hurt = false
			else
				local randomhurt = random(0,5)
				if user.Name == "ninjakaiden1" then
					if gender == "Male" then
						if not guarding then
							if randomhurt <= 1 then
							elseif randomhurt >= 4 then	
								chatter("D-Dang it!")
							else
							end
						else
							if randomhurt <= 1 then
								chatter("Nice try!")
							end
						end
						if voices then
							if not guarding then
								if randomhurt <= 1 then
									voice("scorpion/scorp_5001-0.wav",3,1.05,head,0,false)
								elseif randomhurt >= 4 then
									voice("scorpion/scorp_5001-1.wav",3,1.05,head,0,false)
								elseif randomhurt == 2 then
									voice("scorpion/scorp_5001-2.wav",3,1.05,head,0,false)
								elseif randomhurt == 3 then
									voice("scorpion/scorp_5001-3.wav",3,1.05,head,0,false)
								end
							else
								if randomhurt <= 1 then
									voice("scorpion/scorp_151-0.wav",3,1.05,head,0,false)
								elseif randomhurt >= 4 then
									voice("scorpion/scorp_151-1.wav",3,1.05,head,0,false)
								else
									voice("scorpion/scorp_151-2.wav",3,1.05,head,0,false)
								end
							end
						end
					else
						if guarding then
							if randomhurt <= 1 then
								chatter("Nice try!")
							elseif randomhurt >= 4 then
								chatter("Too weak!")
							else
								chatter("ARE YOU STUPID?!")
							end
						end
						if voices then
							if not guarding then
								if randomhurt <= 1 then
									voice(119233047711484,3,1.05,head,0,false)
								elseif randomhurt >= 4 then
									voice(97173975583390,3,1.05,head,0,false)
								else
									voice(127342258358185,3,1.05,head,0,false)
								end
							else
								if randomhurt <= 1 then
									sound(89563987572168,3,1.05,head,0,false)
								elseif randomhurt >= 4 then
									sound(17573766359,3,1.05,head,0,false)
								else
									sound(7480575774,3,1.05,head,0,false)
								end
							end
						end
					end
				else
					if voices then
						if randomhurt <= 1 then
							sound(89563987572168,3,1.05,head,0,false)
						elseif randomhurt >= 4 then
							sound(17573766359,3,1.05,head,0,false)
						else
							sound(7480575774,3,1.05,head,0,false)
						end
					end
				end
				local vel = new("BodyVelocity")
				vel.MaxForce = vect3(math.huge,math.huge,math.huge)
				vel.Parent = rt
				vel.Velocity = rt.CFrame.LookVector * -125 + rt.CFrame.upVector * 50
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
					hitfloor = raycast(rt.Position, (cframe(rt.Position, rt.Position + vect3(0, -1, 0))).lookVector, 4+human.HipHeight, chara)
				until hitfloor or human:GetState() == Enum.HumanoidStateType.Landed
				sound(112444846023457, 4.5, 1, torso, 0, false)
				frame = 4
				wait(0.1)
				frame = 5
				wait(1)
				if user.Name == "ninjakaiden1" then
					if gender == "Male" then
						local randomquote = random(0,3)
						if randomquote == 0 then
							chatter("SERIOUSLY?!")
						elseif randomquote == 1 then
							chatter("Not quite!")
						elseif randomquote == 2 then
							chatter("TAHA!")
						elseif randomquote == 3 then
							chatter("I see ya!")
						end
						if voices then
							if randomquote == 0 then
								voice("scorpion/scorp_5002-0.wav",3,1.05,head,0,false)
							elseif randomquote == 1 then
								voice("scorpion/scorp_161-0.wav",3,1.05,head,0,false)
							elseif randomquote == 2 then
								voice("scorpion/scorp_161-1.wav",3,1.05,head,0,false)
							elseif randomquote == 3 then
								voice("scorpion/scorp_161-2.wav",3,1.05,head,0,false)
							end
						end
					else
						local randomquote = random(0,3)
						if randomquote == 0 then
							chatter("ARGH!")
						elseif randomquote == 1 then
							chatter("OH MY GAH!!")
						elseif randomquote == 2 then
							chatter("SO FRUSTRATING, SO FRUSTRATING!!")
						elseif randomquote == 3 then
							chatter("Urgh...")
						end
						if voices then
							if randomquote == 0 then
								sound(131919444262036,3,1.05,head,0,false)
							elseif randomquote == 1 then
								sound(136293687092281,3,1.05,head,0,false)
							elseif randomquote == 2 then
								sound(117030648936452,3,1.05,head,0,false)
							elseif randomquote == 3 then
								sound(124164023679026,3,1.05,head,0,false)
							end
						end
					end
				else
					local randomquote = random(0,3)
					if randomquote == 0 then
						chatter("ARGH!")
					elseif randomquote == 1 then
						chatter("OH MY GAH!!")
					elseif randomquote == 2 then
						chatter("SO FRUSTRATING, SO FRUSTRATING!!")
					elseif randomquote == 3 then
						chatter("Urgh...")
					end
					if voices then
						if randomquote == 0 then
							sound(131919444262036,3,1.05,head,0,false)
						elseif randomquote == 1 then
							sound(136293687092281,3,1.05,head,0,false)
						elseif randomquote == 2 then
							sound(117030648936452,3,1.05,head,0,false)
						elseif randomquote == 3 then
							sound(124164023679026,3,1.05,head,0,false)
						end
					end
				end
				anim = "fallrise"
				frame = 1
				wait(0.1)
				frame = 2
				wait(0.1)
				frame = 3
				wait(0.1)
				frame = 4
				wait(0.1)
				attack = false
				hurt = false
			end
		end
	else
		CurrentHP = hp
	end
end
human.HealthChanged:Connect(healthchange)

human.Running:Connect(function()
	if human.MoveDirection.magnitude > .1 then
		moving = true
	else
		moving = false
	end
end)

human.Died:Connect(function()
	if chara == nil then return end
	dead = true
	attack = true
	if user.Name == "ninjakaiden1" then
		if gender == "Male" then
			if random(0,5) > 2 then
				chatter("DARN IT!!!")
				if voices then 
					voice("scorpion/scorp_11-0.wav",3,1.05,head,0,false)
				end
			else
				if voices then 
					voice("scorpion/die.wav",3,1.05,head,0,false)
				end
			end
		else
			chatter("*cries in pain*")
			if voices then 
				sound(81760505626108,3,1.05,head,0,false)
			end
		end
	else
		face.Texture = "rbxassetid://123440098884134"
		chatter("*cries in pain*")
		if voices then 
			sound(81760505626108,3,1.05,head,0,false)
		end
	end
end)
--play spawn emote when first ran
if mptext ~= nil then
	mptext.Text = "MP: "..mp
	local exp2 = mp/500 
	mptext.Parent.Size = UDim2.new(exp2,0,1,0)
end
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
	if mptext ~= nil then
		mptext.Text = "MP: "..mp
		local exp2 = mp/500
		mptext.Parent.Size = UDim2.new(exp2,0,1,0)
	end
	if user.Name == "ninjakaiden1" then
		if chara:FindFirstChild("Gender") then
			gender = chara:FindFirstChild("Gender").Value
		else
			gender = "Male"
		end
	end
	--hit floor stuff
	local tv = (rt.Velocity * vect3(1, 0, 1)).magnitude
	local tvv = rt.Velocity.y
	local hf = raycast(rt.Position, (cframe(rt.Position, rt.Position + vect3(0, -1, 0))).lookVector, 4+human.HipHeight, chara)
	--set to running anim if speed is higher than 50
	if human.WalkSpeed >= 50 then
		running = true
	else
		running = false
	end
	if hf then
		inair = false
		if human:GetState() == Enum.HumanoidStateType.Swimming and tv<1 then
			if attack == false then
				anim = "swimidle"
			end
		elseif human:GetState() == Enum.HumanoidStateType.Swimming and tv>1 then
			if attack == false then
				anim = "swim"
			end
		elseif tv < 1 and hf ~= nil and human.Sit == false then
			if attack == false then
				anim = "idle"
			end
		elseif tv > 1 and hf ~= nil and human.Sit == false then
			if attack == false then
				anim = "walk"
			end
		elseif hf ~= nil and human.Sit == true then
			if attack == false then
				anim = "sit"
			end
		end
	else
		inair = true
		if human:GetState() == Enum.HumanoidStateType.Climbing and tvv==0 then
			if attack == false then
				anim = "climbidle"
			end
		elseif human:GetState() == Enum.HumanoidStateType.Climbing and (tvv>0 or tvv<0) then
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

--[[
TRIVIA:

Tomomi Kawasaki is heavily based off of Ragna the Bloodedge from BlazBlue and Ibuki Mioda from Danganronpa.

Most of the move names are named after various characters, or other media.

Amami-Sutoraiku alludes to THE iDOLM@STER character Haruka Amami and the real life Amami Islands in Japan.
BIGBANG shares the same name with the real life Korean boy band.
Kyubey-Madoka alludes to the Puella Magi Madoka Magica characters Kyubey and Madoka Kaname.
Margatroid alludes to the Touhou character, Alice Margatroid.
Sawatari most likely alludes to the Kanon character Makoto Sawatari and the Chainsaw Man character Akane Sawatari.
Noel Vermillion and Naoto Kurogane shares the same names with the BlazBlue characters.
Miki-Hoshii, Ritsuko Akizuki, and Hibiki Ganaha share the same names with THE iDOLM@STER characters.
Tsuzura-Insho-teki-ken alludes to the Arcana Heart character Saki Tsuzura.
A.B.A. alludes to both the Guilty Gear character of the same name and the Swedish pop band ABBA.
Let's-go-Ibuki-Mioda-chan! alludes to the Danganronpa character Ibuki Mioda.
Invite to Hell alludes to one of Zato-1/Eddie's attacks from Guilty Gear.
Turn of the Crank shares the same name with a Counter Strike: Condition Zero Deleted Scenes mission.
Go Shoot! alludes to the Japanese Beyblade callout.

When Tomomi lands a successful hit with Tengoku-no-Mon-no-Ochiru-Hane, she will summon Ruby Rose's Crescent Rose from RWBY.

]]