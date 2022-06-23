--[[

	Cracked by sang
	Social engineered by moon

	Trolled by both

	Lick my click paddie cake


]]

local ver = 'X.T.C'
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/0x580x540x43/Coffeeware/main/UI.lua"))()
local hub = Library:New("Coffeeware " .. ver)
local Lighting = game:GetService("Lighting")
local UserInputService = game:GetService("UserInputService")
local SettingsTab = hub:NewTab("Settings")
local CreditsTab = hub:NewTab("Credits")
local ScriptsTab = hub:NewTab("Scripts")

getgenv().Reanimation = getgenv().Reanimation and getgenv().Reanimation or 'PermaDeath'
SettingsTab:NewLabel('Note: reanimate comes with noclip (since i hate getting flung by skiddies)')
local reanimtype = SettingsTab:NewLabel('Reanimation Type: ' .. getgenv().Reanimation)
SettingsTab:NewButton("Toggle Perma Death", "PermaDeath / Simple", function()
	if getgenv().Reanimation == "PermaDeath" then
		getgenv().Reanimation = "Simple"
		reanimtype.Text = 'Reanimation Type: Simple'
	elseif getgenv().Reanimation == "Simple" then
		getgenv().Reanimation = "PermaDeath"
		reanimtype.Text = 'Reanimation Type: PermaDeath'
	end
end, true)
local __char = game:GetService("Players").LocalPlayer.Character or game:GetService("Players").LocalPlayer.CharacterAdded:Wait()
getgenv().Flinging = true
local R6 = false;
local R15 = false;
if __char.Humanoid.RigType == Enum.HumanoidRigType.R6 then
	print('R6')
	R6 = true
	R15 = false
	getgenv().Fling = getgenv().Reanimation == 'PermaDeath' and 'HumanoidRootPart' or 'Right Arm'
	getgenv().TorsoFling = false
else 
	print('R15')
	R6 = false
	R15 = true
	getgenv().Fling = false
	getgenv().TorsoFling = true
end
local flinging = SettingsTab:NewLabel('Flinging: ' .. tostring(getgenv().Flinging))
SettingsTab:NewLabel('NOTE: Simple with fling requires Brown Hair')
SettingsTab:NewButton('Toggle Fling', 'aasdasdasdasd', function()
	print(R6, R15)
	if R6 == true then 
		if getgenv().Flinging == true then
			getgenv().Flinging = false
			getgenv().Fling = false
		else
			getgenv().Flinging = true
			print(getgenv().Reanimation)
			if getgenv().Reanimation == 'PermaDeath' then
				getgenv().Fling = 'HumanoidRootPart'
			else
				getgenv().Fling = 'Right Arm'
			end
		end
	elseif R15 == true then
		if getgenv().Flinging == true then
			getgenv().Flinging = false
			getgenv().TorsoFling = false
		else
			getgenv().Flinging = true
			getgenv().TorsoFling = true
		end
	end
	flinging.Text = 'Flinging: ' .. tostring(getgenv().Flinging)
end)
local function _reanimate()
	local function ra(part)
		local epic = Instance.new('SelectionBox', game.Players.LocalPlayer.Character)
		epic.Name = 'okayu uwu'
		epic.Adornee = part
		epic.LineThickness = 0.05
		local speed = 4
		coroutine.wrap(function()
			while epic do
				for i = 0, 1, 0.001 * speed do
					epic.Color3 = Color3.fromHSV(i, 1, 1)
					task.wait()
				end
			end
		end)()
	end
	if getgenv().Reanimation == "PermaDeath" or getgenv().Reanimation == nil then 
		if game.Players.LocalPlayer.Character.Humanoid.RigType == Enum.HumanoidRigType.R15 then 
			getgenv().ExtremeNetless = true;
			getgenv().Velocity = -50 
		else 
			getgenv().Velocity = -35;
			getgenv().AntiSleep = true;
			getgenv().ExtremeNetless = false;
			getgenv().Optimizer = false 
		end;
		getgenv().ShowReal = true;
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Tescalus/Pendulum-Hubs-Source/main/NetlessReanimV2(ThanksProductionTakeOne%20%233330%20for%20help).lua"))()
		task.wait()
		if getgenv().Fling or getgenv().TorsoFling then
			local p = game.Players.LocalPlayer.Character[game.Players.LocalPlayer.Name]:FindFirstChild("LowerTorso") or game.Players.LocalPlayer.Character[game.Players.LocalPlayer.Name].HumanoidRootPart;
			p.Transparency = .5;
			p.BodyAngularVelocity.AngularVelocity = Vector3.new(999999999999999999999999999999999999, 999999999999999999999999999999999999, 999999999999999999999999999999999999)
			ra(p)
			local q = game.Players.LocalPlayer:GetMouse()
			local r = false;
			q.Button1Down:Connect(function()
				r = true
			end)
			q.Button1Up:Connect(function()
				r = false
			end)
			local s = false;
			game["Run Service"].Heartbeat:Connect(function(t)
				if r then
					if s == false then
						if (q.Target.Parent:FindFirstChildOfClass("Humanoid") or q.Target.Parent.Parent:FindFirstChildOfClass("Humanoid")) and q.Target.Parent ~= game.Players.LocalPlayer.Character then
							s = true;
							print("Began flinging")
							local u = p;
							local v = q.Target.Parent:FindFirstChild("Torso") or q.Target.Parent.Parent:FindFirstChild("Torso") or q.Target.Parent.Parent:FindFirstChild("LowerTorso") or q.Target.Parent:FindFirstChild("LowerTorso")
							local weld = Instance.new("Weld", v)
							local w = Instance.new("Weld", v)
							local x = Instance.new("Part", v)
							x.Transparency = 1;
							x.CanCollide = false;
							local y = Instance.new("Part", v)
							y.Transparency = 1;
							y.CanCollide = false;
							weld.Part0 = x;
							weld.Part1 = v;
							weld.C0 = CFrame.new(0, 0, 8) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
							w.Part0 = y;
							w.Part1 = v;
							w.C0 = CFrame.new(0, 0, -8) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
							for _ = 0, 65 do
								u.CFrame = x.CFrame:Lerp(x.CFrame, 1)
								wait(.02)
								u.CFrame = v.CFrame:Lerp(y.CFrame, 1)
								wait(.02)
							end
							print("Stopped flinging!")
							s = false
						else
							p.CFrame = q.Hit
						end
					end 
				else
					if s == true then
					else
						p.CFrame = game.Players.LocalPlayer.Character.Torso.CFrame
					end
				end
			end)
		end
	elseif Reanimation == "Simple" then 
		if game.Players.LocalPlayer.Character.Humanoid.RigType == Enum.HumanoidRigType.R15 then 
			getgenv().ExtremeNetless = true;
			getgenv().Velocity = -50 
		else 
			getgenv().Velocity = -25.05;
			getgenv().AntiSleep = true;
			getgenv().ExtremeNetless = false;
			getgenv().GodMode = false;
			getgenv().Optimizer = false 
		end;
		getgenv().ShowReal = true;
		getgenv().Optimizer = false;
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Tescalus/Pendulum-Hubs-Source/main/NetlessReanimV2(ThanksProductionTakeOne%20%233330%20for%20help).lua"))()
		task.wait()
		if getgenv().Fling or getgenv().TorsoFling then
			local z = game.Players.LocalPlayer;
			local A = z.Character;
			local B = A["Hat1"].Handle;
			B:BreakJoints()
			local Weld = Instance.new("Weld", game.Players.LocalPlayer.Character)
			Weld.Part1 = B;
			Weld.Part0 = game.Players.LocalPlayer.Character["Right Arm"]
			
			Weld.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(90), math.rad(0), 0)
			print("Ran with no errors")
			local p = game.Players.LocalPlayer.Character[game.Players.LocalPlayer.Name]["Right Arm"]
			ra(p)
			local C = game:GetService("Workspace").non[game.Players.LocalPlayer.Name]["Hat1"].Handle.Mesh;
			C:Destroy()
			p.Transparency = .5;
			p.BodyAngularVelocity.AngularVelocity = Vector3.new(9999999999999999999999999999999, 99999999999999999999999999999999, 99999999999999999999999999999999)
			local q = game.Players.LocalPlayer:GetMouse()
			local r = false;
			q.Button1Down:Connect(function()
				r = true
			end)
			q.Button1Up:Connect(function()
				r = false
			end)
			local s = false;
			game["Run Service"].Heartbeat:Connect(function(t)
				if r then 
					if s == false then 
						if (q.Target.Parent:FindFirstChildOfClass("Humanoid") or q.Target.Parent.Parent:FindFirstChildOfClass("Humanoid")) and q.Target.Parent ~= game.Players.LocalPlayer.Character then 
							s = true;
							print("Began flinging")
							local u = p;
							local v = q.Target.Parent:FindFirstChild("Torso") or q.Target.Parent.Parent:FindFirstChild("Torso") or q.Target.Parent.Parent:FindFirstChild("LowerTorso") or q.Target.Parent:FindFirstChild("LowerTorso")
							local weld = Instance.new("Weld", v)
							local w = Instance.new("Weld", v)
							local x = Instance.new("Part", v)
							x.Transparency = 1;
							x.CanCollide = false;
							local y = Instance.new("Part", v)
							y.Transparency = 1;
							y.CanCollide = false;
							weld.Part0 = x;
							weld.Part1 = v;
							weld.C0 = CFrame.new(0, 0, 8) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
							w.Part0 = y;
							w.Part1 = v;
							w.C0 = CFrame.new(0, 0, -8) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
							for _ = 0, 65 do
								u.CFrame = x.CFrame:Lerp(x.CFrame, 1)
								wait(.02)
								u.CFrame = v.CFrame:Lerp(y.CFrame, 1)
								wait(.02)
							end
							print("Stopped flinging!")
							s = false;
						else
							p.CFrame = q.Hit
						end
					end
				else
					if s == true then 
					else
						p.CFrame = game.Players.LocalPlayer.Character.Torso.CFrame 
					end 
				end 
			end)
		end
	end
	local Clip = false
	local function NoclipLoop()
		if Clip == false and game.Players.LocalPlayer.Character ~= nil then
			for _, child in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
				if child:IsA("BasePart") and child.CanCollide == true and (child.Name ~= getgenv().Fling and child.Parent.Name ~= game.Players.LocalPlayer.Name) then
					child.CanCollide = false 
				end
			end
		end
	end
	Noclipping = game:GetService('RunService').Stepped:Connect(NoclipLoop)
	game.Players.LocalPlayer.Character.Humanoid.Died:Connect(function()
		Noclipping:Disconnect()
	end)
end
CreditsTab:NewLabel('TROLLED BY MOON')

CreditsTab:NewLabel('TROLLED BY SANG')

CreditsTab:NewLabel('discord.gg/Fe5fBAturd')

CreditsTab:NewLabel('Number 1 exit scammer - Croaxer')


CreditsTab:NewLabel('I dont claim full ownership of the assets used in this project')
CreditsTab:NewLabel('All credits go to their respective owners')
CreditsTab:NewLabel('also although i converted the funny script')
ScriptsTab:NewButton('funny **', 'if you bought the hub just for this thing then go fuck yourself', function()
	_reanimate()
	local a = game:GetObjects('rbxassetid://9206853840')[1]
	a.Parent = workspace.non;
	local b = a.Victim;
	b.Parent = workspace.non;
	NewInstance = function(c, d, e)
		local f = Instance.new(c)
		f.Parent = d;
		if e then
			for g, h in next, e do
				pcall(function()
					f[g] = h
				end)
			end
		end;
		return f
	end;
	function newMotor(i, j, k, l)
		return NewInstance('Weld', i, {
			Part0 = i,
			Part1 = j,
			C0 = k,
			C1 = l
		})
	end;
	a.NoNoGui.Parent = game:GetService('CoreGui')
	game.Players.LocalPlayer.Character.Humanoid.Died:Connect(function()
		game:GetService('CoreGui'):FindFirstChild('NoNoGui'):Destroy()
	end)
	local m = setmetatable({}, {
		__index = function(n, g)
			return game:service(g)
		end
	})
	local o = {
		N = CFrame.new,
		A = CFrame.Angles,
		fEA = CFrame.fromEulerAnglesXYZ
	}
	local p = {
		tRGB = function(q)
			return q.r * 255, q.g * 255, q.b * 255
		end,
		N = Color3.new,
		RGB = Color3.fromRGB,
		HSV = Color3.fromHSV,
		tHSV = Color3.toHSV
	}
	local r = {
		N = Vector3.new,
		FNI = Vector3.FromNormalId,
		A = Vector3.FromAxis
	}
	local s = {
		C = math.cos,
		R = math.rad,
		S = math.sin,
		P = math.pi,
		RNG = math.random,
		MRS = math.randomseed,
		H = math.huge,
		RRNG = function(t, u, v)
			return math.rad(math.random(t, u) / (v or 1))
		end
	}
	local w = {
		N = Region3.new
	}
	local x = m.Debris;
	local y = workspace;
	local z = m.Lighting;
	local A = m.ReplicatedStorage;
	local B = Instance.new;
	local C = m.Players;
	local D = game:GetService('Players').LocalPlayer;
	local E = workspace.non;
	Position = Instance.new("StringValue", E)
	Position.Name = "Position2"
	Position.Value = "Doggy Style"
	local F = D:GetMouse()
	local G = E:FindFirstChildOfClass'Humanoid'
	local H = E.Torso;
	local I = E["Right Arm"]
	local J = E["Left Arm"]
	local K = E["Right Leg"]
	local L = E["Left Leg"]
	local M = E:FindFirstChild'HumanoidRootPart'
	local N = E.Head;
	local O = 0;
	local P = 1;
	local Q = false;
	local R = true;
	local S = 30;
	local T = true;
	local U = true;
	local b = E:WaitForChild("Victim")
	local Position = E.Position2.Value;
	local V = false;
	local W = false;
	local X = false;
	local Y = false;
	local Z = 8;
	local _ = 0;
	local a0 = 16;
	local a1 = 0;
	E.HumanoidRootPart.Anchored = true;
	wsasa = newMotor(a.Position.Weld, M)
	Positionv = a.Position;
	Positionv.Parent = E;
	NewInstance = function(c, d, e)
		local f = Instance.new(c)
		f.Parent = d;
		if e then
			for g, h in next, e do
				pcall(function()
					f[g] = h
				end)
			end
		end;
		return f
	end;
	local a2 = {}
	local a3 = b:WaitForChild'Head'
	local a4 = b:WaitForChild'Torso'
	local a5 = b:WaitForChild'Left Arm'
	local a6 = b:WaitForChild'Right Arm'
	local a7 = b:WaitForChild'Left Leg'
	local a8 = b:WaitForChild'Right Leg'
	local a9 = b:WaitForChild'HumanoidRootPart'
	wsasa.Part1 = E.HumanoidRootPart;
	local aa = newMotor(H, N, o.N(0, 1.5, 0), o.N())
	local ab = newMotor(M, H, o.N(), o.N())
	local ac = newMotor(H, K, o.N(.5, -1, 0), o.N(0, 1, 0))
	local ad = newMotor(H, I, o.N(1.5, .5, 0), o.N(0, .5, 0))
	local ae = newMotor(H, L, o.N(-.5, -1, 0), o.N(0, 1, 0))
	local af = newMotor(H, J, o.N(-1.5, .5, 0), o.N(0, .5, 0))
	local ag = newMotor(a4, a3, o.N(0, 1.5, 0), o.N())
	local ah = newMotor(a9, a4, o.N(), o.N())
	local ai = newMotor(a4, a8, o.N(.5, -1, 0), o.N(0, 1, 0))
	local aj = newMotor(a4, a6, o.N(1.5, .5, 0), o.N(0, .5, 0))
	local ak = newMotor(a4, a7, o.N(-.5, -1, 0), o.N(0, 1, 0))
	local al = newMotor(a4, a5, o.N(-1.5, .5, 0), o.N(0, .5, 0))
	NK, RJ, RH, RS, LH, LS, NK2, RJ2, RH2, RS2, LH2, LS2 = aa, ab, ac, ad, ae, af, ag, ah, ai, aj, ak, al;
	table.insert(a2, aa)
	table.insert(a2, ae)
	table.insert(a2, ab)
	table.insert(a2, ad)
	table.insert(a2, af)
	table.insert(a2, ac)
	table.insert(a2, ag)
	table.insert(a2, ak)
	table.insert(a2, ah)
	table.insert(a2, aj)
	table.insert(a2, al)
	table.insert(a2, ai)
	local am, an, ao, ap, aq, ar = aa.C0, ab.C0, ac.C0, ad.C0, ae.C0, af.C0;
	function makeMusic(as, at, S)
		local au = H:FindFirstChild(script.Name .. "song")
		if not au then
			au = NewInstance("Sound", H, {
				Name = script.Name .. "song",
				Volume = 5,
				Pitch = at or 1,
				Looped = true
			})
			NewInstance("EqualizerSoundEffect", au, {
				HighGain = 0,
				MidGain = 2,
				LowGain = 30
			})
		end;
		if as == 'stop' then
			if au then
				au:Stop()
			end
		else
			local S = typeof(S) == 'number' and S or au.TimePosition;
			au.Volume = 5;
			au.Name = script.Name .. "song"
			au.Looped = true;
			au.SoundId = "rbxassetid://" .. as;
			au.Pitch = at or 1;
			au:Play()
			au.TimePosition = S
		end;
		return au
	end;
	function playMusic(as, av, S)
		return makeMusic(as, av, S)
	end;
	for aw, h in next, G:GetPlayingAnimationTracks() do
		h:Stop(0)
	end;
	local ax = 60;
	local ay = script:FindFirstChild'Heartbeat' or B("BindableEvent", script)
	ay.Name = "Heartbeat"
	local az = 0;
	local aA = true;
	local aB = true;
	local aC = tick()
	local aD = 1 / ax;
	ay:Fire()
	game:GetService("RunService").Stepped:connect(function(n, aE)
		az = az + n;
		if az >= aD then
			if aA then
				ay:Fire()
				aC = tick()
			else
				for g = 1, math.floor(az / aD) do
					ay:Fire()
				end;
				aC = tick()
			end;
			if aB then
				az = 0
			else
				az = az - aD * math.floor(az / aD)
			end
		end
	end)
	function swait(aF)
		if aF == 0 or aF == nil then
			ay.Event:wait()
		else
			for g = 0, aF do
				ay.Event:wait()
			end
		end
	end;
	game.Players.LocalPlayer.Character.Humanoid.Died:Connect(function()
		ay:Destroy()
	end)
	if workspace:FindFirstChild(script.Name .. 'Effects') then
		workspace[script.Name .. 'Effects']:destroy()
	end;
	local aG = NewInstance("Folder", E)
	aG.Name = script.Name .. 'Effects'
	function ShowDamage(aH, aI, aJ, aK)
		local aH = aH or r.N(0, 0, 0)
		local aI = tostring(aI or "")
		local aJ = aJ or 2;
		local aK = aK or p.N(1, 0, 1)
		local aL = Part(aG, aK, Enum.Material.SmoothPlastic, r.N(.05, .05, .05), CFrame.new(aH), true, false)
		aL.Transparency = 1;
		local aM = NewInstance("BillboardGui", aL, {
			Size = UDim2.new(3, 0, 3, 0),
			Adornee = aL
		})
		local aN = NewInstance("TextLabel", aM, {
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 1, 0),
			Text = aI,
			TextColor3 = aK,
			TextScaled = true,
			Font = Enum.Font.ArialBold
		})
		m.Debris:AddItem(aL, aJ + .5)
		delay(0, function()
			local aO = math.random(-10, 10) / 15;
			local aP = .2;
			local aQ = aJ / ax;
			if aL and aL.Parent then
				aL:Destroy()
			end
		end)
	end;
	local aR = B("Sound")
	function Sound(d, as, av, aS, aT, aU, aV)
		local Sound = aR:Clone()
		Sound.SoundId = "rbxassetid://" .. tostring(as or 0)
		Sound.Pitch = av or 1;
		Sound.Volume = aS or 1;
		Sound.Looped = aT or false;
		if aV then
			coroutine.wrap(function()
				repeat
					wait()
				until Sound.IsLoaded;
				Sound.Playing = aV or false
			end)()
		end;
		if not aT and aU then
			Sound.Stopped:connect(function()
				Sound.Volume = 0;
				Sound:destroy()
			end)
		elseif aU then
			warn("Sound can't be looped and a sound effect!")
		end;
		Sound.Parent = d or H;
		return Sound
	end;
	function Part(d, aW, aX, aY, aZ, a_, b0)
		local b1 = B("Part")
		b1.Parent = d or E;
		b1[typeof(aW) == 'BrickColor' and 'BrickColor' or 'Color'] = aW or p.N(0, 0, 0)
		b1.Material = aX or Enum.Material.SmoothPlastic;
		b1.TopSurface, b1.BottomSurface = 10, 10;
		b1.Size = aY or r.N(1, 1, 1)
		b1.CFrame = aZ or o.N(0, 0, 0)
		b1.CanCollide = b0 or false;
		b1.Anchored = a_ or false;
		return b1
	end;
	function Weld(b2, b3, b4, b5)
		local b6 = B("Weld")
		b6.Parent = b2;
		b6.Part0 = b2;
		b6.Part1 = b3;
		b6.C0 = b4 or o.N()
		b6.C1 = b5 or o.N()
		return b6
	end;
	function Mesh(d, b7, b8, b9, ba, bb)
		local b1 = B("SpecialMesh")
		b1.MeshId = b8 or ""
		b1.TextureId = b9 or ""
		b1.Scale = ba or r.N(1, 1, 1)
		b1.Offset = bb or r.N(0, 0, 0)
		b1.MeshType = b7 or Enum.MeshType.Sphere;
		b1.Parent = d;
		return b1
	end;
	function GotEffect(bc)
		local aW = bc.Color or Color3.new(.7, .7, .7)
		local bd = bc.EndColor or nil;
		local be = bc.Material or Enum.Material.SmoothPlastic;
		local aZ = bc.CFrame or CFrame.new()
		local bf = bc.EndPos or nil;
		local bg = bc.Mesh or {}
		local bh = bc.Sound or {}
		local aY = bc.Size or Vector3.new(1, 1, 1)
		local bi = bc.EndSize or Vector3.new(6, 6, 6)
		local bj = bc.RotInc or {
			0,
			0,
			0
		}
		local bk = bc.Transparency or NumberRange.new(0, 1)
		local bl = bc.Acceleration or nil;
		local bm = bc.EndRotation or {
			0,
			0,
			0
		}
		local bn = bc.Style or false;
		local bo = bc.Lifetime or 1;
		local bp = bc.FXSystem;
		local m, bq;
		local br = Part(workspace, aW, be, Vector3.new(1, 1, 1), aZ, true, false)
		if bg == "Blast" then
			bq = Mesh(br, Enum.MeshType.FileMesh, 'rbxassetid://20329976', '', aY, Vector3.new(0, 0, -aY.X / 8))
		elseif bg == 'Ring' then
			bq = Mesh(br, Enum.MeshType.FileMesh, 'rbxassetid://559831844', '', aY, Vector3.new(0, 0, 0))
		elseif bg == 'Slash1' then
			bq = Mesh(br, Enum.MeshType.FileMesh, 'rbxassetid://662586858', '', Vector3.new(aY.X / 10, .001, aY.Z / 10), Vector3.new(0, 0, 0))
		elseif bg == 'Slash2' then
			bq = Mesh(br, Enum.MeshType.FileMesh, 'rbxassetid://448386996', '', Vector3.new(aY.X / 1000, aY.Y / 100, aY.Z / 100), Vector3.new(0, 0, 0))
		elseif bg == 'Tornado1' then
			bq = Mesh(br, Enum.MeshType.FileMesh, 'rbxassetid://443529437', '', aY / 10, Vector3.new(0, 0, 0))
		elseif bg == 'Tornado2' then
			bq = Mesh(br, Enum.MeshType.FileMesh, 'rbxassetid://168892432', '', aY / 4, Vector3.new(0, 0, 0))
		elseif bg == 'Skull' then
			bq = Mesh(br, Enum.MeshType.FileMesh, 'rbxassetid://4770583', '', aY * 2, Vector3.new(0, 0, 0))
		elseif bg == 'Crystal' then
			bq = Mesh(br, Enum.MeshType.FileMesh, 'rbxassetid://9756362', '', aY, Vector3.new(0, 0, 0))
		elseif bg == 'Cloud' then
			bq = Mesh(br, Enum.MeshType.FileMesh, 'rbxassetid://1095708', '', aY, Vector3.new(0, 0, 0))
		elseif typeof(bg) == 'table' then
			local bs = bg.Type or Enum.MeshType.Brick;
			local ID = bg.ID or ''
			local bt = bg.Texture or ''
			local bu = bg.Offset or Vector3.new(0, 0, 0)
			bq = Mesh(br, bs, ID, bt, aY, bu)
		else
			bq = Mesh(br, Enum.MeshType.Brick, '', '', aY)
		end;
		local bv = typeof(bk) == 'number' and bk or typeof(bk) == 'NumberRange' and bk.Min or typeof(bk) == 'table' and bk[1] or 0;
		local bw = typeof(bk) == 'NumberRange' and bk.Max or typeof(bk) == 'table' and bk[2] or 1;
		br.Transparency = bv;
		local bx = Random.new()
		game:service'Debris':AddItem(br, bo + 3)
		local by = 1;
		if bq.MeshId == 'rbxassetid://20329976' then
			bq.Offset = Vector3.new(0, 0, -bq.Scale.Z / 8)
		elseif bq.MeshId == 'rbxassetid://4770583' then
			by = 2
		elseif bq.MeshId == 'rbxassetid://168892432' then
			by = .25
		elseif bq.MeshId == 'rbxassetid://443529437' then
			by = .1
		elseif bq.MeshId == 'rbxassetid://443529437' then
			by = .1
		end;
		coroutine.wrap(function()
			if bp == 'Legacy' or bp == 1 or bp == nil then
				local bz = (typeof(bo) == 'NumberRange' and bx:NextNumber(bo.Min, bo.Max) or typeof(bo) == 'number' and bo or 1) * ax;
				for g = 0, bz do
					local v = g / bz;
					br.Transparency = bv + (bw - bv) * v;
					bq.Scale = aY:lerp(bi * by, v)
					local bA = CFrame.Angles(0, 0, 0)
					if bj == 'random' then
						bA = CFrame.Angles(math.rad(bx:NextNumber(-180, 180)), math.rad(bx:NextNumber(-180, 180)), math.rad(bx:NextNumber(-180, 180)))
					elseif typeof(bj) == 'table' then
						bA = CFrame.Angles(unpack(bj))
					end;
					if bq.MeshId == 'rbxassetid://20329976' then
						bq.Offset = Vector3.new(0, 0, -bq.Scale.Z / 8)
					end;
					if bf and typeof(bf) == 'CFrame' then
						br.CFrame = aZ:lerp(bf, v) * bA
					elseif bl and typeof(bl) == 'table' and bl.Force then
						local bB = bl.Force;
						if typeof(bB) == 'CFrame' then
							bB = bB.p
						end;
						if typeof(bB) == 'Vector3' then
							if bl.LookAt then
								br.CFrame = (CFrame.new(br.Position, bB) + bB) * bA
							else
								br.CFrame = (br.CFrame + bB) * bA
							end
						end
					else
						br.CFrame = br.CFrame * bA
					end;
					if bd and typeof(bd) == 'Color3' then
						br.Color = aW:lerp(bd, v)
					end;
					swait()
				end;
				br:destroy()
			elseif bp == 'Experimental' or bp == 2 then
				local bC = TweenInfo.new(bo, bn, Enum.EasingDirection.InOut, 0, false, 0)
				local bD = TweenInfo.new(bo, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0)
				if bn == Enum.EasingStyle.Elastic then
					bC = TweenInfo.new(bo * 2, bn, Enum.EasingDirection.Out, 0, false, 0)
				elseif bn == Enum.EasingStyle.Bounce then
					bC = TweenInfo.new(bo, bn, Enum.EasingDirection.Out, 0, false, 0)
				end;
				local bE = game:service'TweenService':Create(br, bD, {
					CFrame = (typeof(bf) == 'CFrame' and bf or br.CFrame) * CFrame.Angles(unpack(bm)),
					Color = typeof(bd) == 'Color3' and bd or aW,
					Transparency = bw
				})
				local bF = Vector3.new(0, 0, 0)
				if bq.MeshId == 'rbxassetid://20329976' then
					bF = Vector3.new(0, 0, (bi * by).Z / 8)
				end;
				local bG = game:service'TweenService':Create(bq, bC, {
					Scale = bi * by,
					Offset = bF
				})
				bE:Play()
				bG:Play()
			end
		end)()
	end;
	function Effect(bc)
		return GotEffect(bc)
	end;
	function Trail(bc)
		coroutine.wrap(function()
			bc.Frames = typeof(bc.Frames) == 'number' and bc.Frames or 60;
			bc.CFrame = typeof(bc.CFrame) == 'CFrame' and bc.CFrame or M.CFrame;
			local bH = typeof(bc.EndPos) == 'CFrame' and bc.EndPos or bc.CFrame * CFrame.new(0, 5, 0)
			bc.EndPos = nil;
			local bI = Part(aG, BrickColor.new'White', Enum.Material.SmoothPlastic, r.N(.05, .05, .05), bc.CFrame, true, false)
			bI.Transparency = 1;
			local bJ = bc.CFrame;
			for g = 1, bc.Frames do
				bI.CFrame = bJ:lerp(bH, g / bc.Frames)
				bc.CFrame = bI.CFrame;
				Effect(bc)
				swait()
			end
		end)()
	end;
	local bK = E.Victim;
	local bL = math.random(-999999, 999999)
	function RemovePants(bM)
		for g, h in pairs(bM:GetDescendants()) do
			if h:IsA("Shirt") then
				h:Destroy()
			end
		end
	end;
	function RemoveShirt(bM)
		for g, h in pairs(bM:GetDescendants()) do
			if h:IsA("Pants") then
				h:Destroy()
			end
		end
	end;
	function RemovePieces(bM)
		for g, h in pairs(bM:GetDescendants()) do
			if h:IsA("Clothing") then
				h:Destroy()
			end
		end
	end;
	function ConnectModelToBodyPart(bN, bM, bO)
		local bP = bN:clone()
		bP.Parent = bM;
		local bQ = bP:GetChildren()
		for g = 1, #bQ do
			if bQ[g]:IsA("BasePart") then
				local bR = Instance.new("Weld")
				bR.Part0 = bP.Middle;
				bR.Part1 = bQ[g]
				local bS = CFrame.new(bP.Middle.Position)
				bR.C0 = bP.Middle.CFrame:inverse() * bS;
				bR.C1 = bQ[g].CFrame:inverse() * bS;
				bR.Parent = bP.Middle
			end;
			local bT = Instance.new("Weld")
			bT.Part0 = bO;
			bT.Part1 = bP.Middle;
			bT.C0 = CFrame.new(0, 0, 0)
			bT.Parent = bT.Part0
		end;
		local bU = bP:GetChildren()
		for g, bV in pairs(bU) do
			if bV:IsA("BasePart") then
				bV.Anchored = false;
				bV.CanCollide = false;
				if bV.Name == "Pow" then
					bV.Color = bO.Color
				end
			end
		end;
		bP.Middle.Transparency = 1
	end;
	function RemoveChange(bM)
		if bM:FindFirstChild("ChestMesh") then
			bM.ChestMesh:Destroy()
		end;
		if bM:FindFirstChild("LeftArmMesh") then
			bM.LeftArmMesh:Destroy()
		end;
		if bM:FindFirstChild("RightArmMesh") then
			bM.RightArmMesh:Destroy()
		end;
		if bM:FindFirstChild("LeftLegMesh") then
			bM.LeftLegMesh:Destroy()
		end;
		if bM:FindFirstChild("RightLegMesh") then
			bM.RightLegMesh:Destroy()
		end;
		if bM:FindFirstChild("HeadMesh") then
			bM.HeadMesh:Destroy()
		end;
		bM.PlayerHasAChange:Destroy()
	end;
	function ChangeCharacter(bM)
		if true then
			RemovePieces(bM)
		end;
		local bW = Instance.new("IntValue")
		bW.Name = "PlayerHasAChange"
		bW.Value = bL;
		bW.Parent = bM;
		if bK:FindFirstChild("ChestMesh") then
			ConnectModelToBodyPart(bK.ChestMesh, bM, bM["Torso"])
		end;
		if bK:FindFirstChild("LeftArmMesh") then
			ConnectModelToBodyPart(bK.LeftArmMesh, bM, bM["Left Arm"])
		end;
		if bK:FindFirstChild("RightArmMesh") then
			ConnectModelToBodyPart(bK.RightArmMesh, bM, bM["Right Arm"])
		end;
		if bK:FindFirstChild("LeftLegMesh") then
			ConnectModelToBodyPart(bK.LeftLegMesh, bM, bM["Left Leg"])
		end;
		if bK:FindFirstChild("RightLegMesh") then
			ConnectModelToBodyPart(bK.RightLegMesh, bM, bM["Right Leg"])
		end;
		if bK:FindFirstChild("HeadMesh") then
			ConnectModelToBodyPart(bK.HeadMesh, bM, bM["Head"])
		end
	end;
	local bM = b;
	if bM == nil then
		return
	end;
	if bM:findFirstChild("Humanoid") ~= nil then
		if bM:findFirstChild("PlayerHasAChange") then
			if bM.PlayerHasAChange.Value ~= bL then
			end
		else
		end
	end;
	print(NK2.Part0.Parent.Name)
	function ClientTrail(bc)
		coroutine.wrap(function()
			bc.Frames = typeof(bc.Frames) == 'number' and bc.Frames or 60;
			bc.CFrame = typeof(bc.CFrame) == 'CFrame' and bc.CFrame or M.CFrame;
			local bH = typeof(bc.EndPos) == 'CFrame' and bc.EndPos or bc.CFrame * CFrame.new(0, 5, 0)
			bc.EndPos = nil;
			local bI = Part(aG, BrickColor.new'White', Enum.Material.SmoothPlastic, r.N(.05, .05, .05), bc.CFrame, true, false)
			bI.Transparency = 1;
			local bJ = bc.CFrame;
			for g = 1, bc.Frames do
				bI.CFrame = bJ:lerp(bH, g / bc.Frames)
				bc.CFrame = bI.CFrame;
				GotEffect(bc)
				swait()
			end
		end)()
	end;
	function syncStuff(bc)
		local bX, bY, bZ, b_, c0, c1, c2, c3 = unpack(bc)
		local c4, c5, c6, c7, c8, c9, ca, cb, cc, cd, ce, cf = unpack(bZ)
		local cg, ch, ci, cj, ck, cl, cm, cn, co, cp, cq, cr = unpack(b_)
		U = bY;
		R = bX;
		if not bX then
			NK.C0 = c4;
			RJ.C0 = c5;
			RH.C0 = c6;
			RS.C0 = c7;
			LH.C0 = c8;
			LS.C0 = c9;
			NK.C1 = cg;
			RJ.C1 = ch;
			RH.C1 = ci;
			RS.C1 = cj;
			LH.C1 = ck;
			LS.C1 = cl;
			NK2.C0 = ca;
			RJ2.C0 = cb;
			RH2.C0 = cc;
			RS2.C0 = cd;
			LH2.C0 = ce;
			LS2.C0 = cf;
			NK2.C1 = cm;
			RJ2.C1 = cn;
			RH2.C1 = co;
			RS2.C1 = cp;
			LH2.C1 = cq;
			LS2.C1 = cr
		end;
		Z = c1;
		T = c2;
		P = c3;
		if O - c0 > .8 or O - c0 < -.8 then
			O = c0
		end
	end;
	function LoopDoggyStyle()
		R = false;
		U = false;
		Q = true;
		Countt = 1;
		game:service'UserInputService'.InputBegan:connect(function(cs, ct)
			if ct then
				return
			end;
			if cs.KeyCode == Enum.KeyCode.Z then
				V = false
			end
		end)
		repeat
			swait()
			for g = 0, 10 do
				swait()
				local cu = .3;
				RJ.C0 = RJ.C0:lerp(o.N(0, -0.2, -0.6) * o.A(math.rad(10), math.rad(0), math.rad(0)), cu)
				LS.C0 = LS.C0:lerp(o.N(-1.3, 0.1, -0.5) * o.A(math.rad(35), math.rad(0), math.rad(15)), cu)
				RS.C0 = RS.C0:lerp(o.N(1.4, 0, -0.5) * o.A(math.rad(35), math.rad(0), math.rad(-10)), cu)
				NK.C0 = NK.C0:lerp(o.N(0, 1.5, 0) * o.A(math.rad(5), math.rad(0), math.rad(0)), cu)
				LH.C0 = LH.C0:lerp(o.N(-0.5, -0.9, 0) * o.A(math.rad(-25), math.rad(0), math.rad(0)), cu)
				RH.C0 = RH.C0:lerp(o.N(0.5, -0.9, 0) * o.A(math.rad(-25), math.rad(0), math.rad(0)), cu)
				RJ2.C0 = RJ2.C0:lerp(o.N(0, -1.7, -0.5) * o.A(math.rad(-125), math.rad(0), math.rad(0)), cu)
				LS2.C0 = LS2.C0:lerp(o.N(-0.9, 1.3, -0.1) * o.A(math.rad(-170), math.rad(0), math.rad(40)), cu)
				RS2.C0 = RS2.C0:lerp(o.N(1, 1.5, 0) * o.A(math.rad(-160), math.rad(0), math.rad(-25)), cu)
				NK2.C0 = NK2.C0:lerp(o.N(0, 1.2, 0.7) * o.A(math.rad(90.3), math.rad(-19.9), math.rad(1.8)), cu)
				LH2.C0 = LH2.C0:lerp(o.N(-0.6, -0.8, -0.1) * o.A(math.rad(85), math.rad(0), math.rad(-5)), cu)
				RH2.C0 = RH2.C0:lerp(o.N(0.7, -0.8, -0.1) * o.A(math.rad(85), math.rad(0), math.rad(5)), cu)
			end;
			local cv = Sound(b:WaitForChild'Torso', 3099459397, math.random(1, 1.8), 1.1, false, nil, true)
			cv.TimePosition = 4;
			Countt = Countt + 1;
			local cw = {
				2440889605,
				2440891382,
				2440889869,
				2440888376
			}
			if Countt == 4 then
				Countt = 1;
				ID = nil;
				Decision = math.random(1, 4)
				for g, h in pairs(cw) do
					if g == Decision then
						ID = h
					end
				end;
				sse = Sound(b.Head, ID, 1, 1, false, nil, true)
				b.Head.CustomMouthFrownRoundedTiltedFlip.Texture = "http://www.roblox.com/asset/?id=2661147529"
				spawn(function()
					repeat
						swait()
					until sse.Playing == false;
					b.Head.CustomMouthFrownRoundedTiltedFlip.Texture = "http://www.roblox.com/asset/?id=3039452348"
				end)
			end;
			for g = 0, 10 do
				swait()
				local cu = .3;
				RJ.C0 = RJ.C0:lerp(o.N(0, -0.1, -0.7) * o.A(math.rad(-20), math.rad(0), math.rad(0)), cu)
				LS.C0 = LS.C0:lerp(o.N(-1.3, 0.2, -0.3) * o.A(math.rad(65), math.rad(0), math.rad(15)), cu)
				RS.C0 = RS.C0:lerp(o.N(1.4, 0.2, -0.4) * o.A(math.rad(65), math.rad(0), math.rad(-10)), cu)
				NK.C0 = NK.C0:lerp(o.N(0, 1.5, 0) * o.A(math.rad(-10), math.rad(0), math.rad(0)), cu)
				LH.C0 = LH.C0:lerp(o.N(-0.5, -0.9, 0.1) * o.A(math.rad(20), math.rad(0), math.rad(0)), cu)
				RH.C0 = RH.C0:lerp(o.N(0.5, -1, 0.1) * o.A(math.rad(20), math.rad(0), math.rad(0)), cu)
				RJ2.C0 = RJ2.C0:lerp(o.N(0, -1.7, -0.1) * o.A(math.rad(-125), math.rad(0), math.rad(0)), cu)
				LS2.C0 = LS2.C0:lerp(o.N(-0.9, 1.3, -0.1) * o.A(math.rad(-170), math.rad(0), math.rad(35)), cu)
				RS2.C0 = RS2.C0:lerp(o.N(1, 1.5, 0) * o.A(math.rad(-160), math.rad(0), math.rad(-20)), cu)
				NK2.C0 = NK2.C0:lerp(o.N(0, 1.2, 0.7) * o.A(math.rad(85), math.rad(-20), math.rad(0)), cu)
				LH2.C0 = LH2.C0:lerp(o.N(-0.6, -0.8, 0) * o.A(math.rad(110), math.rad(0), math.rad(-5)), cu)
				RH2.C0 = RH2.C0:lerp(o.N(0.7, -0.9, 0) * o.A(math.rad(110), math.rad(0), math.rad(5)), cu)
			end
		until V == false;
		Q = false;
		U = true;
		R = true
	end;
	function LoopBlowJob()
		R = false;
		U = false;
		Q = true;
		Countt = 1;
		game:service'UserInputService'.InputBegan:connect(function(cs, ct)
			if ct then
				return
			end;
			if cs.KeyCode == Enum.KeyCode.Z then
				W = false
			end
		end)
		repeat
			swait()
			for g = 0, 20 do
				swait()
				local cu = .1;
				RJ.C0 = RJ.C0:lerp(o.N(0, 0, 0) * o.A(math.rad(0), math.rad(0), math.rad(0)), cu)
				LS.C0 = LS.C0:lerp(o.N(-1.4, 0.4, -0.4) * o.A(math.rad(70.3), math.rad(-1.7), math.rad(19.9)), cu)
				RS.C0 = RS.C0:lerp(o.N(1.4, 0.4, -0.4) * o.A(math.rad(65.6), math.rad(3.4), math.rad(-19.7)), cu)
				NK.C0 = NK.C0:lerp(o.N(0, 1.5, -0.1) * o.A(math.rad(-20), math.rad(0), math.rad(0)), cu)
				LH.C0 = LH.C0:lerp(o.N(-0.5, -1, 0) * o.A(math.rad(0), math.rad(10), math.rad(0)), cu)
				RH.C0 = RH.C0:lerp(o.N(0.5, -1, 0) * o.A(math.rad(0), math.rad(0), math.rad(0)), cu)
				RJ2.C0 = RJ2.C0:lerp(o.N(0, -1.1, 0) * o.A(math.rad(-160), math.rad(0), math.rad(-180)), cu)
				LS2.C0 = LS2.C0:lerp(o.N(-1.3, 0.8, -0.2) * o.A(math.rad(114.4), math.rad(5.1), math.rad(14.1)), cu)
				RS2.C0 = RS2.C0:lerp(o.N(1.3, 0.8, -0.3) * o.A(math.rad(118.7), math.rad(-8.3), math.rad(-18.3)), cu)
				NK2.C0 = NK2.C0:lerp(o.N(0, 1.5, 0) * o.A(math.rad(0), math.rad(0), math.rad(0)), cu)
				LH2.C0 = LH2.C0:lerp(o.N(-0.5, -1.1, -1) * o.A(math.rad(-70), math.rad(0), math.rad(-10)), cu)
				RH2.C0 = RH2.C0:lerp(o.N(0.5, -1.1, -1) * o.A(math.rad(-70), math.rad(0), math.rad(10)), cu)
			end;
			local cv = Sound(b.Torso, 2767339245, math.random(1, 2), 1.1, false, nil, true)
			cv.TimePosition = 8.4;
			for g = 0, 20 do
				swait()
				local cu = .1;
				RJ.C0 = RJ.C0:lerp(o.N(0, 0, 0) * o.A(math.rad(0), math.rad(0), math.rad(0)), cu)
				LS.C0 = LS.C0:lerp(o.N(-1.4, 0.3, -0.5) * o.A(math.rad(55.3), math.rad(-1.7), math.rad(19.9)), cu)
				RS.C0 = RS.C0:lerp(o.N(1.4, 0.3, -0.5) * o.A(math.rad(50.6), math.rad(3.4), math.rad(-19.7)), cu)
				NK.C0 = NK.C0:lerp(o.N(0, 1.5, -0.1) * o.A(math.rad(-25), math.rad(0), math.rad(0)), cu)
				LH.C0 = LH.C0:lerp(o.N(-0.5, -1, 0) * o.A(math.rad(0), math.rad(10), math.rad(0)), cu)
				RH.C0 = RH.C0:lerp(o.N(0.5, -1, 0) * o.A(math.rad(0), math.rad(0), math.rad(0)), cu)
				RJ2.C0 = RJ2.C0:lerp(o.N(0, -1.2, 0.1) * o.A(math.rad(-150), math.rad(0), math.rad(-180)), cu)
				LS2.C0 = LS2.C0:lerp(o.N(-1.3, 0.4, 0) * o.A(math.rad(119.4), math.rad(5.1), math.rad(14.1)), cu)
				RS2.C0 = RS2.C0:lerp(o.N(1.3, 0.4, 0) * o.A(math.rad(123.7), math.rad(-8.3), math.rad(-18.3)), cu)
				NK2.C0 = NK2.C0:lerp(o.N(0, 1.5, 0) * o.A(math.rad(-10), math.rad(0), math.rad(0)), cu)
				LH2.C0 = LH2.C0:lerp(o.N(-0.5, -0.8, -1.1) * o.A(math.rad(-60), math.rad(0), math.rad(-10)), cu)
				RH2.C0 = RH2.C0:lerp(o.N(0.5, -0.8, -1.1) * o.A(math.rad(-60), math.rad(0), math.rad(10)), cu)
			end
		until W == false;
		Q = false;
		U = true;
		R = true
	end;
	function LoopCowGirl()
		R = false;
		U = false;
		Q = true;
		Countt = 1;
		game:service'UserInputService'.InputBegan:connect(function(cs, ct)
			if ct then
				return
			end;
			if cs.KeyCode == Enum.KeyCode.Z then
				X = false
			end
		end)
		repeat
			swait()
			for g = 0, 10 do
				swait()
				local cu = .3;
				RJ.C0 = RJ.C0:lerp(o.N(0, -2.2, -0.1) * o.A(math.rad(70), math.rad(0), math.rad(0)), cu)
				LS.C0 = LS.C0:lerp(o.N(-0.8, 0.6, 0.5) * o.A(math.rad(-162.9), math.rad(0), math.rad(45.2)), cu)
				RS.C0 = RS.C0:lerp(o.N(1.2, 0.6, 0.6) * o.A(math.rad(14.9), math.rad(-1.3), math.rad(-164.8)), cu)
				NK.C0 = NK.C0:lerp(o.N(0, 1.5, 0) * o.A(math.rad(-5), math.rad(0), math.rad(0)), cu)
				LH.C0 = LH.C0:lerp(o.N(-0.5, -1, -0.1) * o.A(math.rad(15), math.rad(0), math.rad(-10)), cu)
				RH.C0 = RH.C0:lerp(o.N(0.5, -1, -0.1) * o.A(math.rad(15), math.rad(0), math.rad(5)), cu)
				RJ2.C0 = RJ2.C0:lerp(o.N(0, -0.7, 0.8) * o.A(math.rad(-5), math.rad(0), math.rad(0)), cu)
				LS2.C0 = LS2.C0:lerp(o.N(-1.3, -0.1, 0) * o.A(math.rad(-15), math.rad(0), math.rad(10)), cu)
				RS2.C0 = RS2.C0:lerp(o.N(1.3, -0.1, 0) * o.A(math.rad(-15), math.rad(0), math.rad(-10)), cu)
				NK2.C0:lerp(o.N(0, 1.5, -0.3) * o.A(math.rad(-15), math.rad(0), math.rad(0)), cu)
				LH2.C0 = LH2.C0:lerp(o.N(-0.7, -0.4, -0.8) * o.A(math.rad(20), math.rad(0), math.rad(-10)), cu)
				RH2.C0 = RH2.C0:lerp(o.N(0.6, -0.5, -0.8) * o.A(math.rad(20), math.rad(0), math.rad(10)), cu)
			end;
			local cv = Sound(b:WaitForChild'Torso', 3099459397, math.random(1, 1.8), 1.1, false, nil, true)
			cv.TimePosition = 4;
			Countt = Countt + 1;
			local cw = {
				2440889605,
				2440891382,
				2440889869,
				2440888376
			}
			if Countt == 4 then
				Countt = 1;
				ID = nil;
				Decision = math.random(1, 4)
				for g, h in pairs(cw) do
					if g == Decision then
						ID = h
					end
				end;
				sse = Sound(b.Head, ID, 1, 1, false, nil, true)
				b.Head.CustomMouthFrownRoundedTiltedFlip.Texture = "http://www.roblox.com/asset/?id=2661147529"
				spawn(function()
					repeat
						swait()
					until sse.Playing == false;
					b.Head.CustomMouthFrownRoundedTiltedFlip.Texture = "http://www.roblox.com/asset/?id=3039452348"
				end)
			end;
			for g = 0, 10 do
				swait()
				local cu = .3;
				RJ.C0 = RJ.C0:lerp(o.N(0, -2.3, -0.1) * o.A(math.rad(70), math.rad(0), math.rad(0)), cu)
				LS.C0 = LS.C0:lerp(o.N(-0.8, 0.6, 0.4) * o.A(math.rad(-162.9), math.rad(0), math.rad(45.2)), cu)
				RS.C0 = RS.C0:lerp(o.N(1.2, 0.6, 0.5) * o.A(math.rad(14.9), math.rad(-1.3), math.rad(-164.8)), cu)
				NK.C0 = NK.C0:lerp(o.N(0, 1.5, 0) * o.A(math.rad(0), math.rad(0), math.rad(0)), cu)
				LH.C0 = LH.C0:lerp(o.N(-0.5, -1, -0.1) * o.A(math.rad(20), math.rad(0), math.rad(-10)), cu)
				RH.C0 = RH.C0:lerp(o.N(0.5, -1, -0.1) * o.A(math.rad(20), math.rad(0), math.rad(5)), cu)
				RJ2.C0 = RJ2.C0:lerp(o.N(0, -1, 0.8) * o.A(math.rad(-5), math.rad(0), math.rad(0)), cu)
				LS2.C0 = LS2.C0:lerp(o.N(-1.3, 0.2, 0.1) * o.A(math.rad(-30), math.rad(0), math.rad(10)), cu)
				RS2.C0 = RS2.C0:lerp(o.N(1.3, 0.2, 0.1) * o.A(math.rad(-30), math.rad(0), math.rad(-10)), cu)
				NK2.C0:lerp(o.N(-0.1, 1.6, -0.3) * o.A(math.rad(-30), math.rad(0), math.rad(0)), cu)
				LH2.C0 = LH2.C0:lerp(o.N(-0.7, -0.2, -0.6) * o.A(math.rad(30), math.rad(0), math.rad(-10)), cu)
				RH2.C0 = RH2.C0:lerp(o.N(0.6, -0.2, -0.6) * o.A(math.rad(30), math.rad(0), math.rad(10)), cu)
			end
		until X == false;
		Q = false;
		U = true;
		R = true
	end;
	function LoopGay()
		R = false;
		U = false;
		Q = true;
		Countt = 1;
		game:service'UserInputService'.InputBegan:connect(function(cs, ct)
			if ct then
				return
			end;
			if cs.KeyCode == Enum.KeyCode.Z then
				Y = false
			end
		end)
		repeat
			swait()
			for g = 0, 10 do
				swait()
				local cu = .3;
				RJ.C0 = RJ.C0:lerp(o.N(0, 0, -1.3) * o.A(math.rad(15), math.rad(0), math.rad(0)), cu)
				LS.C0 = LS.C0:lerp(o.N(-1.2, 0.1, -0.5) * o.A(math.rad(40), math.rad(0), math.rad(25)), cu)
				RS.C0 = RS.C0:lerp(o.N(1.3, 0.1, -0.4) * o.A(math.rad(50), math.rad(0), math.rad(-25)), cu)
				NK.C0 = NK.C0:lerp(o.N(0, 1.5, -0.1) * o.A(math.rad(-20), math.rad(0), math.rad(0)), cu)
				LH.C0 = LH.C0:lerp(o.N(-0.5, -1, 0.1) * o.A(math.rad(-35), math.rad(0), math.rad(-5)), cu)
				RH.C0 = RH.C0:lerp(o.N(0.6, -1, 0.1) * o.A(math.rad(-35), math.rad(0), math.rad(5)), cu)
				RJ2.C0 = RJ2.C0:lerp(o.N(0, -2, -0.8) * o.A(math.rad(0), math.rad(-89.8), math.rad(90)), cu)
				LS2.C0 = LS2.C0:lerp(o.N(-0.8, 1.2, 0.1) * o.A(math.rad(85), math.rad(0.9), math.rad(-4.9)), cu)
				RS2.C0 = RS2.C0:lerp(o.N(0.1, 0.5, -0.8) * o.A(math.rad(116.2), math.rad(3.2), math.rad(-39.9)), cu)
				NK2.C0 = NK2.C0:lerp(o.N(0, 1.5, -0.2) * o.A(math.rad(-10.3), math.rad(-14.8), math.rad(-2.7)), cu)
				LH2.C0 = LH2.C0:lerp(o.N(-0.6, -0.9, -0.1) * o.A(math.rad(15), math.rad(0), math.rad(0)), cu)
				RH2.C0 = RH2.C0:lerp(o.N(0.8, -0.8, 0) * o.A(math.rad(-12.4), math.rad(8.5), math.rad(85.9)), cu)
			end;
			local cv = Sound(b.Torso, 3099459397, math.random(1, 1.8), 1.1, false, nil, true)
			cv.TimePosition = 4;
			Countt = Countt + 1;
			local cw = {
				2440889605,
				2440891382,
				2440889869,
				2440888376
			}
			if Countt == 4 then
				Countt = 1;
				ID = nil;
				Decision = math.random(1, 4)
				for g, h in pairs(cw) do
					if g == Decision then
						ID = h
					end
				end;
				sse = Sound(b.Head, ID, 1, 1, false, nil, true)
				b.Head.CustomMouthFrownRoundedTiltedFlip.Texture = "http://www.roblox.com/asset/?id=2661147529"
				spawn(function()
					repeat
						swait()
					until sse.Playing == false;
					b.Head.CustomMouthFrownRoundedTiltedFlip.Texture = "http://www.roblox.com/asset/?id=3039452348"
				end)
			end;
			for g = 0, 10 do
				swait()
				local cu = .3;
				RJ.C0 = RJ.C0:lerp(o.N(0, 0, -0.8) * o.A(math.rad(0), math.rad(0), math.rad(0)), cu)
				LS.C0 = LS.C0:lerp(o.N(-1.2, 0.3, -0.6) * o.A(math.rad(55), math.rad(0), math.rad(25)), cu)
				RS.C0 = RS.C0:lerp(o.N(1.3, 0.2, -0.5) * o.A(math.rad(65), math.rad(0), math.rad(-25)), cu)
				NK.C0 = NK.C0:lerp(o.N(0, 1.5, -0.1) * o.A(math.rad(-20), math.rad(0), math.rad(0)), cu)
				LH.C0 = LH.C0:lerp(o.N(-0.5, -1, 0) * o.A(math.rad(0), math.rad(0), math.rad(-5)), cu)
				RH.C0 = RH.C0:lerp(o.N(0.6, -1, 0) * o.A(math.rad(0), math.rad(0), math.rad(5)), cu)
				RJ2.C0 = RJ2.C0:lerp(o.N(0, -2, -1.5) * o.A(math.rad(0), math.rad(-89.8), math.rad(90)), cu)
				LS2.C0 = LS2.C0:lerp(o.N(-0.8, 1.1, 0.1) * o.A(math.rad(95), math.rad(0), math.rad(-5)), cu)
				RS2.C0 = RS2.C0:lerp(o.N(0.1, 0.4, -0.8) * o.A(math.rad(120), math.rad(0), math.rad(-40)), cu)
				NK2.C0 = NK2.C0:lerp(o.N(0, 1.5, -0.2) * o.A(math.rad(-10.3), math.rad(-14.8), math.rad(-2.7)), cu)
				LH2.C0 = LH2.C0:lerp(o.N(-0.6, -0.9, -0.1) * o.A(math.rad(15), math.rad(0), math.rad(0)), cu)
				RH2.C0 = RH2.C0:lerp(o.N(0.9, -0.9, 0) * o.A(math.rad(-12.4), math.rad(8.5), math.rad(55.9)), cu)
			end
		until Y == false;
		Q = false;
		U = true;
		R = true
	end;
	game:service'UserInputService'.InputBegan:connect(function(cs, ct)
		if ct or Q then
			return
		end;
		if cs.KeyCode == Enum.KeyCode.Z and Q == false and Position == "Doggy Style" then
			V = true;
			LoopDoggyStyle()
		elseif cs.KeyCode == Enum.KeyCode.Z and Q == false and Position == "Blowjob" then
			W = true;
			LoopBlowJob()
		elseif cs.KeyCode == Enum.KeyCode.Z and Q == false and Position == "Cowgirl" then
			X = true;
			LoopCowGirl()
		elseif cs.KeyCode == Enum.KeyCode.Z and Q == false and Position == "FuckMeSidewaysAndCallMeGay" then
			Y = true;
			LoopGay()
		end;
		if cs.KeyCode == Enum.KeyCode.One and Q == false and Position ~= "Doggy Style" then
			E.Position2.Value = "Doggy Style"
		elseif cs.KeyCode == Enum.KeyCode.Two and Q == false and Position ~= "Blowjob" then
			E.Position2.Value = "Blowjob"
		elseif cs.KeyCode == Enum.KeyCode.Three and Q == false and Position ~= "Cowgirl" then
			E.Position2.Value = "Cowgirl"
		elseif cs.KeyCode == Enum.KeyCode.Four and Q == false and Position ~= "FuckMeSidewaysAndCallMeGay" then
			E.Position2.Value = "FuckMeSidewaysAndCallMeGay"
		end
	end)
	local cx = game.Players.LocalPlayer;
	local cy = cx.Character;
	local cz = cy["SeeMonkey"].Handle;
	cz:BreakJoints()
	local Weld = Instance.new("Weld", game.Players.LocalPlayer.Character)
	Weld.Part1 = cz;
	Weld.Part0 = a4;
	a4.Transparency = 1;
	Weld.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0))
	local cA = game:GetService("Workspace").non[game.Players.LocalPlayer.Name]["SeeMonkey"].Handle:FindFirstChildOfClass("SpecialMesh")
	cA:Destroy()
	local cx = game.Players.LocalPlayer;
	local cy = cx.Character;
	local cz = cy["Pal Hair"].Handle;
	cz:BreakJoints()
	local Weld = Instance.new("Weld", game.Players.LocalPlayer.Character)
	Weld.Part1 = cz;
	Weld.Part0 = a5;
	a5.Transparency = 1;
	Weld.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0))
	local cA = game:GetService("Workspace").non[game.Players.LocalPlayer.Name]["Pal Hair"].Handle:FindFirstChildOfClass("SpecialMesh")
	cA:Destroy()
	local cx = game.Players.LocalPlayer;
	local cy = cx.Character;
	local cz = cy["LavanderHair"].Handle;
	cz:BreakJoints()
	local Weld = Instance.new("Weld", game.Players.LocalPlayer.Character)
	Weld.Part1 = cz;
	Weld.Part0 = a6;
	a6.Transparency = 1;
	Weld.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0))
	local cA = game:GetService("Workspace").non[game.Players.LocalPlayer.Name]["LavanderHair"].Handle:FindFirstChildOfClass("SpecialMesh")
	cA:Destroy()
	local cx = game.Players.LocalPlayer;
	local cy = cx.Character;
	local cz = cy["Robloxclassicred"].Handle;
	cz:BreakJoints()
	local Weld = Instance.new("Weld", game.Players.LocalPlayer.Character)
	Weld.Part1 = cz;
	Weld.Part0 = a7;
	a7.Transparency = 1;
	Weld.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0))
	local cA = game:GetService("Workspace").non[game.Players.LocalPlayer.Name]["Robloxclassicred"].Handle:FindFirstChildOfClass("SpecialMesh")
	cA:Destroy()
	local cx = game.Players.LocalPlayer;
	local cy = cx.Character;
	local cz = cy["Pink Hair"].Handle;
	cz:BreakJoints()
	local Weld = Instance.new("Weld", game.Players.LocalPlayer.Character)
	Weld.Part1 = cz;
	Weld.Part0 = a8;
	a8.Transparency = 1;
	Weld.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0))
	local cA = game:GetService("Workspace").non[game.Players.LocalPlayer.Name]["Pink Hair"].Handle:FindFirstChildOfClass("SpecialMesh")
	cA:Destroy()
	local cx = game.Players.LocalPlayer;
	local cy = cx.Character;
	local cz = cy["Space Cop"].Handle;
	cz:BreakJoints()
	local Weld = Instance.new("Weld", game.Players.LocalPlayer.Character)
	Weld.Part1 = cz;
	Weld.Part0 = a4;
	a8.Transparency = 1;
	Weld.C0 = CFrame.new(-.5, -1, .5) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0))
	local cA = game:GetService("Workspace").non[game.Players.LocalPlayer.Name]["Space Cop"].Handle:FindFirstChildOfClass("SpecialMesh")
	cA:Destroy()
	local cx = game.Players.LocalPlayer;
	local cy = cx.Character;
	local cz = cy["SpaceHelmetB"].Handle;
	cz:BreakJoints()
	local Weld = Instance.new("Weld", game.Players.LocalPlayer.Character)
	Weld.Part1 = cz;
	Weld.Part0 = a4;
	a8.Transparency = 1;
	Weld.C0 = CFrame.new(.5, -1, .5) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0))
	local cA = game:GetService("Workspace").non[game.Players.LocalPlayer.Name]["SpaceHelmetB"].Handle:FindFirstChildOfClass("SpecialMesh")
	cA:Destroy()
	local cx = game.Players.LocalPlayer;
	local cy = cx.Character;
	local cz = cy["Neko Idol Anime Head"].Handle;
	cz:BreakJoints()
	local Weld = Instance.new("Weld", game.Players.LocalPlayer.Character)
	Weld.Part1 = cz;
	Weld.Part0 = a3;
	a3.Transparency = 1;
	Weld.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
	local cx = game.Players.LocalPlayer;
	local cy = cx.Character;
	local cz = cy["LooseSideBuns"].Handle;
	cz:BreakJoints()
	local Weld = Instance.new("Weld", game.Players.LocalPlayer.Character)
	Weld.Part1 = cz;
	Weld.Part0 = a3;
	Weld.C0 = CFrame.new(0, -.65, .21) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
	game:GetService("Workspace").non.Victim.Head.LongHairHeadBandBrown:Destroy()
	local cB = {
		[Enum.Material.Grass] = 510933218,
		[Enum.Material.Metal] = 1263161138,
		[Enum.Material.CorrodedMetal] = 1263161138,
		[Enum.Material.DiamondPlate] = 1263161138,
		[Enum.Material.Wood] = 2452053757,
		[Enum.Material.WoodPlanks] = 2452053757,
		[Enum.Material.Sand] = 134456884,
		[Enum.Material.Snow] = 2452051182
	}
	local cC = game['Run Service'].Heartbeat:Connect(function()
		b.HumanoidRootPart.CFrame = E:WaitForChild("Position", 60).NewTorsoPos.CFrame;
		O = O + P;
		Position = E.Position2.Value;
		local cD, cE = workspace:FindPartOnRayWithIgnoreList(Ray.new(M.CFrame.p, CFrame.new(M.Position, M.Position - Vector3.new(0, 1, 0)).lookVector.unit * 4), {
			aG,
			E
		})
		local cF = math.abs(M.Velocity.x) > 1 or math.abs(M.Velocity.z) > 1;
		local cG = G.PlatformStand and 'Paralyzed' or G.Sit and 'Sit' or not cD and M.Velocity.y < -1 and "Fall" or not cD and M.Velocity.y > 1 and "Jump" or cD and cF and "Walk" or cD and "Idle"
		G.WalkSpeed = a0;
		local cH = math.clamp((M.Velocity * M.CFrame.rightVector).X + (M.Velocity * M.CFrame.rightVector).Z, -G.WalkSpeed, G.WalkSpeed)
		local cI = math.clamp((M.Velocity * M.CFrame.lookVector).X + (M.Velocity * M.CFrame.lookVector).Z, -G.WalkSpeed, G.WalkSpeed)
		local cJ = cH / G.WalkSpeed;
		local cK = cI / G.WalkSpeed;
		local cL, cM = workspace:FindPartOnRayWithIgnoreList(Ray.new(L.CFrame.p, CFrame.new(L.Position, L.Position - Vector3.new(0, 1, 0)).lookVector.unit * 2), {
			aG,
			E
		})
		local cN, cO = workspace:FindPartOnRayWithIgnoreList(Ray.new(K.CFrame.p, CFrame.new(K.Position, K.Position - Vector3.new(0, 1, 0)).lookVector.unit * 2), {
			aG,
			E
		})
		if Position == "Doggy Style" then
			local cu = .3;
			P = 1;
			if R then
				RJ.C0 = RJ.C0:lerp(o.N(0, -0.1, -0.7) * o.A(math.rad(-20), math.rad(0), math.rad(0)), cu)
				LS.C0 = LS.C0:lerp(o.N(-1.3, 0.2, -0.3) * o.A(math.rad(65), math.rad(0), math.rad(15)), cu)
				RS.C0 = RS.C0:lerp(o.N(1.4, 0.2, -0.4) * o.A(math.rad(65), math.rad(0), math.rad(-10)), cu)
				NK.C0 = NK.C0:lerp(o.N(0, 1.5, 0) * o.A(math.rad(-10), math.rad(0), math.rad(0)), cu)
			end;
			if U then
				LH.C0 = LH.C0:lerp(o.N(-0.5, -0.9, 0.1) * o.A(math.rad(20), math.rad(0), math.rad(0)), cu)
				RH.C0 = RH.C0:lerp(o.N(0.5, -1, 0.1) * o.A(math.rad(20), math.rad(0), math.rad(0)), cu)
			end;
			if R then
				RJ2.C0 = RJ2.C0:lerp(o.N(0, -1.7, -0.1) * o.A(math.rad(-125), math.rad(0), math.rad(0)), cu)
				LS2.C0 = LS2.C0:lerp(o.N(-0.9, 1.3, -0.1) * o.A(math.rad(-170), math.rad(0), math.rad(35)), cu)
				RS2.C0 = RS2.C0:lerp(o.N(1, 1.5, 0) * o.A(math.rad(-160), math.rad(0), math.rad(-20)), cu)
				NK2.C0 = NK2.C0:lerp(o.N(0, 1.2, 0.7) * o.A(math.rad(85), math.rad(-20), math.rad(0)), cu)
			end;
			if U then
				LH2.C0 = LH2.C0:lerp(o.N(-0.6, -0.8, 0) * o.A(math.rad(110), math.rad(0), math.rad(-5)), cu)
				RH2.C0 = RH2.C0:lerp(o.N(0.7, -0.9, 0) * o.A(math.rad(110), math.rad(0), math.rad(5)), cu)
			end
		elseif Position == "Blowjob" then
			local cu = .3;
			if R then
				RJ.C0 = RJ.C0:lerp(o.N(0, 0, 0) * o.A(math.rad(0), math.rad(0), math.rad(0)), cu)
				LS.C0 = LS.C0:lerp(o.N(-1.4, 0.4, -0.4) * o.A(math.rad(70.3), math.rad(-1.7), math.rad(19.9)), cu)
				RS.C0 = RS.C0:lerp(o.N(1.4, 0.4, -0.4) * o.A(math.rad(65.6), math.rad(3.4), math.rad(-19.7)), cu)
				NK.C0 = NK.C0:lerp(o.N(0, 1.5, -0.1) * o.A(math.rad(-20), math.rad(0), math.rad(0)), cu)
			end;
			if U then
				LH.C0 = LH.C0:lerp(o.N(-0.5, -1, 0) * o.A(math.rad(0), math.rad(10), math.rad(0)), cu)
				RH.C0 = RH.C0:lerp(o.N(0.5, -1, 0) * o.A(math.rad(0), math.rad(0), math.rad(0)), cu)
			end;
			if R then
				RJ2.C0 = RJ2.C0:lerp(o.N(0, -1.1, 0) * o.A(math.rad(-160), math.rad(0), math.rad(-180)), cu)
				LS2.C0 = LS2.C0:lerp(o.N(-1.4, 0.4, -0.4) * o.A(math.rad(70.3), math.rad(-1.7), math.rad(19.9)), cu)
				RS2.C0 = RS2.C0:lerp(o.N(1.4, 0.4, -0.4) * o.A(math.rad(65.6), math.rad(3.4), math.rad(-19.7)), cu)
				NK2.C0 = NK2.C0:lerp(o.N(0, 1.5, 0) * o.A(math.rad(0), math.rad(0), math.rad(0)), cu)
			end;
			if U then
				LH2.C0 = LH2.C0:lerp(o.N(-0.5, -1.1, -1) * o.A(math.rad(-70), math.rad(0), math.rad(-10)), cu)
				RH2.C0 = RH2.C0:lerp(o.N(0.5, -1.1, -1) * o.A(math.rad(-70), math.rad(0), math.rad(10)), cu)
			end
		elseif Position == "Cowgirl" then
			local cu = .3;
			if R then
				RJ.C0 = RJ.C0:lerp(o.N(0, -2.3, -0.1) * o.A(math.rad(70), math.rad(0), math.rad(0)), cu)
				LS.C0 = LS.C0:lerp(o.N(-0.8, 0.6, 0.4) * o.A(math.rad(-162.9), math.rad(0), math.rad(45.2)), cu)
				RS.C0 = RS.C0:lerp(o.N(1.2, 0.6, 0.5) * o.A(math.rad(14.9), math.rad(-1.3), math.rad(-164.8)), cu)
				NK.C0 = NK.C0:lerp(o.N(0, 1.5, 0) * o.A(math.rad(0), math.rad(0), math.rad(0)), cu)
			end;
			if U then
				LH.C0 = LH.C0:lerp(o.N(-0.5, -1, -0.1) * o.A(math.rad(20), math.rad(0), math.rad(-10)), cu)
				RH.C0 = RH.C0:lerp(o.N(0.5, -1, -0.1) * o.A(math.rad(20), math.rad(0), math.rad(5)), cu)
			end;
			if R then
				RJ2.C0 = RJ2.C0:lerp(o.N(0, -1, 0.8) * o.A(math.rad(-5), math.rad(0), math.rad(0)), cu)
				LS2.C0 = LS2.C0:lerp(o.N(-1.3, 0.2, 0.1) * o.A(math.rad(-30), math.rad(0), math.rad(10)), cu)
				RS2.C0 = RS2.C0:lerp(o.N(1.3, 0.2, 0.1) * o.A(math.rad(-30), math.rad(0), math.rad(-10)), cu)
				NK2.C0 = NK2.C0:lerp(o.N(-0.1, 1.6, -0.3) * o.A(math.rad(-30), math.rad(0), math.rad(0)), cu)
			end;
			if U then
				LH2.C0 = LH2.C0:lerp(o.N(-0.7, -0.2, -0.6) * o.A(math.rad(30), math.rad(0), math.rad(-10)), cu)
				RH2.C0 = RH2.C0:lerp(o.N(0.6, -0.2, -0.6) * o.A(math.rad(30), math.rad(0), math.rad(10)), cu)
			end
		elseif Position == "FuckMeSidewaysAndCallMeGay" then
			local cu = .3;
			if R then
				RJ.C0 = RJ.C0:lerp(o.N(0, 0, -0.8) * o.A(math.rad(0), math.rad(0), math.rad(0)), cu)
				LS.C0 = LS.C0:lerp(o.N(-1.2, 0.3, -0.6) * o.A(math.rad(55), math.rad(0), math.rad(25)), cu)
				RS.C0 = RS.C0:lerp(o.N(1.3, 0.2, -0.5) * o.A(math.rad(65), math.rad(0), math.rad(-25)), cu)
				NK.C0 = NK.C0:lerp(o.N(0, 1.5, -0.1) * o.A(math.rad(-20), math.rad(0), math.rad(0)), cu)
			end;
			if U then
				LH.C0 = LH.C0:lerp(o.N(-0.5, -1, 0) * o.A(math.rad(0), math.rad(0), math.rad(-5)), cu)
				RH.C0 = RH.C0:lerp(o.N(0.6, -1, 0) * o.A(math.rad(0), math.rad(0), math.rad(5)), cu)
			end;
			if R then
				RJ2.C0 = RJ2.C0:lerp(o.N(0, -2, -1.5) * o.A(math.rad(0), math.rad(-89.8), math.rad(90)), cu)
				LS2.C0 = LS2.C0:lerp(o.N(-0.8, 1.1, 0.1) * o.A(math.rad(95), math.rad(0), math.rad(-5)), cu)
				RS2.C0 = RS2.C0:lerp(o.N(0.1, 0.4, -0.8) * o.A(math.rad(120), math.rad(0), math.rad(-40)), cu)
				NK2.C0 = NK2.C0:lerp(o.N(0, 1.5, -0.2) * o.A(math.rad(-10.3), math.rad(-14.8), math.rad(-2.7)), cu)
			end;
			if U then
				LH2.C0 = LH2.C0:lerp(o.N(-0.6, -0.9, -0.1) * o.A(math.rad(15), math.rad(0), math.rad(0)), cu)
				RH2.C0 = RH2.C0:lerp(o.N(0.9, -0.9, 0) * o.A(math.rad(-12.4), math.rad(8.5), math.rad(55.9)), cu)
			end
		end
	end)
	game.Players.LocalPlayer.Character.Humanoid.Died:connect(function()
		cC:Disconnect()
	end)

end)

ScriptsTab:NewButton('Neko V4 *', 'yes it has clientsided appearance', function()
	_reanimate()
	function weld(a)
		local b = false;
		local function c(Instance, d)
			d(Instance)
			for e, f in next, Instance:GetChildren() do
				c(f, d)
			end
		end;
		local function g(h, i)
			local j = h;
			repeat
				j = j.Parent;
				if j == nil then
					return nil
				end
			until j:IsA(i)
			return j
		end;
		local function k(l)
			local m = {}
			c(l, function(n)
				if n:IsA("BasePart") then
					m[#m + 1] = n
				end
			end)
			return m
		end;
		local function o(Instance, p)
			assert(type(p) == "table", "Values is not a table")
			for q, r in next, p do
				if type(q) == "number" then
					r.Parent = Instance
				else
					Instance[q] = r
				end
			end;
			return Instance
		end;
		local function s(t, u)
			return o(Instance.new(t), u)
		end;
		local v = {
			"TopSurface",
			"BottomSurface",
			"LeftSurface",
			"RightSurface",
			"FrontSurface",
			"BackSurface"
		}
		local w = {
			"Hinge",
			"Motor",
			"SteppingMotor"
		}
		local function x(y)
			for e, z in pairs(v) do
				for e, A in pairs(w) do
					if y[z].Name == A then
						return true
					end
				end
			end;
			return false
		end;
		local function B(y)
			if b then
				return false
			end;
			if x(y) then
				return false
			end;
			local C = y:GetConnectedParts()
			if #C == 1 then
				return false
			end;
			for e, n in pairs(C) do
				if x(n) then
					return false
				elseif not n:IsDescendantOf(a.Parent) then
					return false
				end
			end;
			return true
		end;
		local function D(E, F, G, H)
			G = G or "Weld"
			local I = F:FindFirstChild("qRelativeCFrameWeldValue")
			local J = F:FindFirstChild("qCFrameWeldThingy") or Instance.new(G)
			o(J, {
				Name = "qCFrameWeldThingy",
				Part0 = E,
				Part1 = F,
				C0 = CFrame.new(),
				C1 = I and I.Value or F.CFrame:toObjectSpace(E.CFrame),
				Parent = F
			})
			if not I then
				I = s("CFrameValue", {
					Parent = F,
					Name = "qRelativeCFrameWeldValue",
					Archivable = true,
					Value = J.C1
				})
			end;
			return J
		end;
		local function K(L, M, G)
			for e, y in pairs(L) do
				if B(y) then
					y:BreakJoints()
				end
			end;
			for e, y in pairs(L) do
				if y ~= M then
					D(M, y, G, M)
				end
			end
		end;
		local function N()
			local O = g(a, "Tool")
			local L = k(a)
			local P = a.REF;
			if P then
				K(L, P, "Weld")
			else
				warn("qWeld - Unable to weld part")
			end;
			return O
		end;
		local O = N()
		if O then
			a.AncestryChanged:connect(function()
				N()
			end)
		end
	end;
	local Q = game:GetService("TweenService")
	local R = game:GetService("Players").LocalPlayer;
	ZTfade = false;
	ZT = false;
	for e, S in next, workspace.non:GetChildren() do
		if S:IsA('Folder') and S:FindFirstChild('Armor') then
			S:Remove()
		end
	end;
	if workspace.non:FindFirstChildWhichIsA('ShirtGraphic') then
		workspace.non:FindFirstChildWhichIsA('ShirtGraphic'):Remove()
	end;
	workspace.non[R.Name].Head:FindFirstChildWhichIsA('Decal').Transparency = 1;
	for e, S in next, workspace.non[R.Name]:GetChildren() do
		if S:IsA('BasePart') then
			S.Transparency = 1
		end
	end;
	local T = false;
	local U = false;
	local V = false;
	local W = false;
	if workspace.non:FindFirstChild('International Fedora') then
		workspace.non['International Fedora'].Handle:FindFirstChild('SpecialMesh'):Remove()
		workspace.non[R.Name]['International Fedora'].Handle:FindFirstChild('SpecialMesh'):Remove()
		T = workspace.non['International Fedora'].Handle;
		T:FindFirstChild('AccessoryWeld'):Remove()
		T.Parent = workspace.non.Torso;
		T.Position = workspace.non.Torso.CFrame * Vector3.new(-0.5, 0.5, 0)
		V = Instance.new("WeldConstraint", workspace.non.Torso)
		V.Part0 = workspace.non.Torso;
		V.Part1 = T;
		local X = Instance.new('SelectionBox', T)
		X.LineThickness = 0.05;
		X.Adornee = T
	end;
	if workspace.non:FindFirstChild('InternationalFedora') then
		workspace.non['InternationalFedora'].Handle:FindFirstChild('SpecialMesh'):Remove()
		workspace.non[R.Name]['InternationalFedora'].Handle:FindFirstChild('SpecialMesh'):Remove()
		U = workspace.non['InternationalFedora'].Handle;
		U:FindFirstChild('AccessoryWeld'):Remove()
		U.Parent = workspace.non.Torso;
		local X = Instance.new('SelectionBox', U)
		X.LineThickness = 0.05;
		X.Adornee = U;
		U.Position = workspace.non.Torso.CFrame * Vector3.new(0.5, 0.5, 0)
		W = Instance.new("WeldConstraint", workspace.non.Torso)
		W.Part0 = workspace.non.Torso;
		W.Part1 = U
	end;
	local Y = game:GetObjects('rbxassetid://9206254000')[1]
	Y.Parent = workspace.non;
	for e, S in next, Y:GetChildren() do
		if S:IsA('Model') then
			if S:FindFirstChildWhichIsA('Model') and S.Name ~= 'Armor' then
				weld(S:FindFirstChildWhichIsA('Model'))
			end
		end
	end;
	for e, S in next, workspace.non:GetChildren() do
		if S:IsA('BasePart') and S.Name ~= 'HumanoidRootPart' then
			S.Transparency = 0
		end
	end;
	FELOADLIBRARY = {}
	loadstring(game:GetObjects("rbxassetid://5209815302")[1].Source)()
	local Z = FELOADLIBRARY;
	local _ = Z.Create;
	EffectPack = Y.noextrasnono:Clone()
	Y.noextrasnono:Destroy()
	local a0 = false;
	Target = Vector3.new()
	Character = workspace.non;
	Torso = Character.Torso;
	Torso.Transparency = 0;
	Head = Character.Head;
	Humanoid = Character.Humanoid;
	LeftArm = Character["Left Arm"]
	LeftLeg = Character["Left Leg"]
	RightArm = Character["Right Arm"]
	RightLeg = Character["Right Leg"]
	RootPart = Character["HumanoidRootPart"]
	local a1 = "Idle"
	local a2 = 0;
	local a3 = 0;
	local a4 = 0;
	local a5 = 1;
	local a6 = false;
	local a7 = false;
	local a8 = false;
	local a9 = false;
	Animstep = 0;
	WalkAnimMove = 0.05;
	Combo = 0;
	local aa = false;
	local ab = false;
	local ac = false;
	local ad = Character.HumanoidRootPart:FindFirstChild("RootJoint")
	local ae = Character.Torso:FindFirstChild("Neck")
	local af = CFrame.fromEulerAnglesXYZ(-1.57, 0, 3.14)
	local ag = CFrame.new(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
	local ah = 0;
	local ai = 0;
	Effects = Instance.new("Folder", Character)
	Effects.Name = "Effects"
	it = Instance.new;
	vt = Vector3.new;
	cf = CFrame.new;
	euler = CFrame.fromEulerAnglesXYZ;
	angles = CFrame.Angles;
	local aj = CFrame.new;
	mr = math.rad;
	mememode = false;
	IT = Instance.new;
	CF = CFrame.new;
	VT = Vector3.new;
	RAD = math.rad;
	C3 = Color3.new;
	UD2 = UDim2.new;
	BRICKC = BrickColor.new;
	ANGLES = CFrame.Angles;
	EULER = CFrame.fromEulerAnglesXYZ;
	COS = math.cos;
	ACOS = math.acos;
	SIN = math.sin;
	ASIN = math.asin;
	ABS = math.abs;
	MRANDOM = math.random;
	FLOOR = math.floor;
	local ak = "http://www.roblox.com/asset/?id=3852221223"
	local al = it("Sound", Torso)
	local am = 1;
	al.EmitterSize = 30;
	local an = al:Clone()
	playsong = true;
	al.SoundId = ak;
	if playsong == true then
		wait(2)
		al:play()
	elseif playsong == false then
		al:stop()
	end;
	lastsongpos = 0;
	crosshair = Instance.new("BillboardGui", Character)
	crosshair.Size = UDim2.new(10, 0, 10, 0)
	crosshair.Enabled = false;
	imgl = Instance.new("ImageLabel", crosshair)
	imgl.Position = UDim2.new(0, 0, 0, 0)
	imgl.Size = UDim2.new(1, 0, 1, 0)
	imgl.Image = "rbxassetid://578065407"
	imgl.BackgroundTransparency = 1;
	imgl.ImageTransparency = .7;
	imgl.ImageColor3 = Color3.new(1, 1, 1)
	crosshair.StudsOffset = Vector3.new(0, 0, -1)
	local ao = 1544355717;
	local ap = 528589382;
	local aq = 376976397;
	local ar = 459523898;
	local as = 424195979;
	local at = 698824317;
	local au = 874376217;
	local av = 231917744;
	local aw = 168513088;
	local ax = 299058146;
	local ay = Instance.new("Weld")
	local az = Instance.new("Weld")
	local aA = Instance.new("Part")
	local aB = Instance.new("Part")
	local aC = Instance.new("Model")
	function RemoveOutlines(aD)
		aD.TopSurface, aD.BottomSurface, aD.LeftSurface, aD.RightSurface, aD.FrontSurface, aD.BackSurface = 10, 10, 10, 10, 10, 10
	end;
	CFuncs = {
		Part = {
			Create = function(aE, aF, aG, aH, aI, aJ, aK)
				local y = _("Part")({
					Parent = aE,
					Reflectance = aG,
					Transparency = aH,
					CanCollide = false,
					Locked = true,
					BrickColor = BrickColor.new(tostring(aI)),
					Name = aJ,
					Size = aK,
					Material = aF
				})
				RemoveOutlines(y)
				return y
			end
		},
		Mesh = {
			Create = function(aL, y, aM, aN, aO, aP)
				local aQ = _(aL)({
					Parent = y,
					Offset = aO,
					Scale = aP
				})
				if aL == "SpecialMesh" then
					aQ.MeshType = aM;
					aQ.MeshId = aN
				end;
				return aQ
			end
		},
		Mesh = {
			Create = function(aL, y, aM, aN, aO, aP)
				local aQ = _(aL)({
					Parent = y,
					Offset = aO,
					Scale = aP
				})
				if aL == "SpecialMesh" then
					aQ.MeshType = aM;
					aQ.MeshId = aN
				end;
				return aQ
			end
		},
		Weld = {
			Create = function(aE, E, F, aR, aS)
				local aT = _("Weld")({
					Parent = aE,
					Part0 = E,
					Part1 = F,
					C0 = aR,
					C1 = aS
				})
				return aT
			end
		},
		Sound = {
			Create = function(aU, aV, aW, aX)
				coroutine.resume(coroutine.create(function()
					local aY = _("Sound")({
						Volume = aW,
						Pitch = aX or 1,
						SoundId = "http://www.roblox.com/asset/?id=" .. aU,
						Parent = aV or workspace
					})
					wait()
					aY:play()
					game:GetService("Debris"):AddItem(aY, 6)
				end))
			end
		},
		ParticleEmitter = {
			Create = function(aE, aZ, a_, b0, aK, b1, aH, b2, b3, b4, b5, b6, b7, b8, b9, ba, bb, bc, bd, be)
				local bf = _("ParticleEmitter")({
					Parent = aE,
					Color = ColorSequence.new(aZ, a_),
					LightEmission = b0,
					Size = aK,
					Texture = b1,
					Transparency = aH,
					ZOffset = b2,
					Acceleration = b3,
					Drag = b4,
					LockedToPart = b5,
					VelocityInheritance = b6,
					EmissionDirection = b7,
					Enabled = b8,
					Lifetime = b9,
					Rate = ba,
					Rotation = bb,
					RotSpeed = bc,
					Speed = bd,
					VelocitySpread = be
				})
				return bf
			end
		}
	}
	Head.face.Texture = "rbxassetid://0"
	wait(0.1)
	eyes = Instance.new("Decal", Head)
	eyes.Face = "Front"
	eyes.Texture = "http://www.roblox.com/asset/?id=2801594973"
	mouth = Instance.new("Decal", Head)
	mouth.Face = "Front"
	mouth.Texture = "http://www.roblox.com/asset/?id=2801759774"
	brows = Instance.new("Decal", Head)
	brows.Face = "Front"
	brows.Texture = "http://www.roblox.com/asset/?id=2801687635"
	blush = Instance.new("Decal", Head)
	blush.Face = "Front"
	blush.Texture = "http://www.roblox.com/asset/?id=0"
	extra = Instance.new("Decal", Head)
	extra.Face = "Front"
	extra.Texture = "http://www.roblox.com/asset/?id=0"
	coroutine.resume(coroutine.create(function()
		wait(.5)
		for bg, S in pairs(Character:GetDescendants()) do
			if S:IsA("Shirt") or S:IsA("Pants") or S:IsA("CharacterMesh") or S:IsA("BodyColors") then
				S:Destroy()
			end;
			if S:IsA("Accessory") or S:IsA('Hat') then
				if S:FindFirstChild('Handle') then
					S.Handle.Transparency = 1
				end
			end
		end;
		for bg, S in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
			if S:IsA("Shirt") or S:IsA("Pants") or S:IsA("CharacterMesh") or S:IsA("BodyColors") then
				S:Destroy()
			end;
			if S:IsA("Accessory") or S:IsA('Hat') then
				if S:FindFirstChild('Handle') then
					S.Handle.Transparency = 1
				end
			end
		end;
		local bh = EffectPack.notoutfit:Clone()
		for bg, S in pairs(bh:GetChildren()) do
			if S:IsA("Shirt") or S:IsA("Pants") or S:IsA("BodyColors") or S:IsA("CharacterMesh") then
				S.Parent = Character
			end;
			if S:IsA("BasePart") then
				local bi = S:FindFirstChildOfClass("Attachment")
				local bj = nil;
				for bg, bk in pairs(Character:GetDescendants()) do
					if bk:IsA("Attachment") and bk.Name == bi.Name and bk.Parent.Parent == Character then
						bj = bk
					end
				end;
				aA.Name = "Left"
				aA.Parent = workspace.non;
				aA.CFrame = CFrame.new(-0.864785671, 5.40298271, 1.08804584, 0.00171390176, 0.0015738951, 0.999997795, 0.0481499843, 0.998839736, -0.00165481726, -0.998839498, 0.0481527671, 0.00163629651)
				aA.Orientation = Vector3.new(0.0900000036, 89.9100037, 2.75999999)
				aA.Position = Vector3.new(-0.864785671, 5.40298271, 1.08804584)
				aA.Rotation = Vector3.new(45.3199997, 89.8799973, -42.5600014)
				aA.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
				aA.Size = Vector3.new(1.03999996, 0.419999987, 1.05999994)
				aA.BottomSurface = Enum.SurfaceType.Smooth;
				aA.BrickColor = BrickColor.new("Really black")
				aA.CanCollide = false;
				aA.Locked = true;
				aA.Material = Enum.Material.SmoothPlastic;
				aA.brickColor = BrickColor.new("Really black")
				aA.FormFactor = Enum.FormFactor.Symmetric;
				aA.formFactor = Enum.FormFactor.Symmetric;
				ay.Name = "Left Leg"
				ay.Parent = aA;
				ay.C0 = CFrame.new(0, -0.8, 0)
				ay.Part0 = aA;
				ay.Part1 = LeftLeg;
				ay.part1 = LeftLeg;
				aB.Name = "Right"
				aB.Parent = workspace.non;
				aB.CFrame = CFrame.new(-0.862425506, 5.4220829, 2.09170222, -0.34028101, -0.0131851267, 0.940231562, -0.0387370177, 0.99925065, -6.86116982e-06, -0.939526379, -0.0364240296, -0.340536386)
				aB.Orientation = Vector3.new(0, 109.910004, -2.22000003)
				aB.Position = Vector3.new(-0.862425506, 5.4220829, 2.09170222)
				aB.Rotation = Vector3.new(180, 70.0899963, 177.779999)
				aB.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
				aB.Size = Vector3.new(1.03999996, 0.419999808, 1.05999994)
				aB.BottomSurface = Enum.SurfaceType.Smooth;
				aB.BrickColor = BrickColor.new("Really black")
				aB.CanCollide = false;
				aB.Locked = true;
				aB.Material = Enum.Material.SmoothPlastic;
				aB.brickColor = BrickColor.new("Really black")
				aB.FormFactor = Enum.FormFactor.Symmetric;
				aB.formFactor = Enum.FormFactor.Symmetric;
				az.Name = "Right Leg"
				az.Parent = aB;
				az.C0 = CFrame.new(0, -0.8, 0)
				az.Part0 = aB;
				az.Part1 = RightLeg;
				az.part1 = RightLeg;
				local bl = Instance.new("Model")
				local F = Instance.new("Part")
				local bm = Instance.new("SpecialMesh")
				local bn = Instance.new("Weld")
				local bo = Instance.new("Part")
				local bp = Instance.new("SpecialMesh")
				local bq = Instance.new("Weld")
				local br = Instance.new("Part")
				local bs = Instance.new("SpecialMesh")
				local bt = Instance.new("Weld")
				local bu = Instance.new("Part")
				local bv = Instance.new("SpecialMesh")
				local bw = Instance.new("Weld")
				local bx = Instance.new("Part")
				local by = Instance.new("SpecialMesh")
				local bz = Instance.new("Weld")
				local bA = Instance.new("Part")
				local bB = Instance.new("SpecialMesh")
				local bC = Instance.new("Weld")
				local bD = Instance.new("Part")
				local bE = Instance.new("SpecialMesh")
				local bF = Instance.new("Weld")
				local bG = Instance.new("Part")
				local bH = Instance.new("SpecialMesh")
				local bI = Instance.new("Weld")
				bl.Name = "vag"
				bl.Parent = Torso;
				bl.PrimaryPart = F;
				F.Name = "mainskin"
				F.Parent = bl;
				F.CFrame = CFrame.new(-0.866321027, 5.57360649, 1.57845628, 0.00160500058, -0.0125150038, 0.999920428, 0.999988377, -0.00454756292, -0.00166202663, 0.00456800172, 0.999911368, 0.0125075588)
				F.Orientation = Vector3.new(0.100000001, 89.2799988, 90.2600021)
				F.Position = Vector3.new(-0.866321027, 5.57360649, 1.57845628)
				F.Rotation = Vector3.new(7.57000017, 89.2799988, 82.6900024)
				F.Color = Color3.new(1, 0.8, 0.6)
				F.Size = Vector3.new(0.900895953, 1.80179191, 0.900895953)
				F.Anchored = false;
				F.BottomSurface = Enum.SurfaceType.Smooth;
				F.BrickColor = BrickColor.new("Pastel brown")
				F.CanCollide = false;
				F.Material = Enum.Material.SmoothPlastic;
				F.TopSurface = Enum.SurfaceType.Smooth;
				F.brickColor = BrickColor.new("Pastel brown")
				bm.Parent = F;
				bm.Scale = Vector3.new(0.899999976, 0.400000006, 0.899999976)
				bm.MeshType = Enum.MeshType.Sphere;
				bn.Name = "Torso"
				bn.Parent = F;
				bn.C0 = CFrame.new(1.00810242, 0.00668120384, -0.0114426017, 5.99958003e-06, 0.999901295, 0.0141194807, -0.999941111, 0.000160070136, -0.0109077049, -0.0109090386, -0.0141187282, 0.999840915)
				bn.Part0 = F;
				bn.Part1 = Torso;
				bn.part1 = Torso;
				bo.Name = "Vg"
				bo.Parent = bl;
				bo.CFrame = CFrame.new(-0.866321027, 5.57360649, 1.57845628, 0.00160500058, -0.0125150038, 0.999920428, 0.999988377, -0.00454756292, -0.00166202663, 0.00456800172, 0.999911368, 0.0125075588)
				bo.Orientation = Vector3.new(0.100000001, 89.2799988, 90.2600021)
				bo.Position = Vector3.new(-0.866321027, 5.57360649, 1.57845628)
				bo.Rotation = Vector3.new(7.57000017, 89.2799988, 82.6900024)
				bo.Color = Color3.new(0.854902, 0.52549, 0.478431)
				bo.Size = Vector3.new(0.900895953, 1.80179191, 0.900895953)
				bo.Anchored = false;
				bo.BottomSurface = Enum.SurfaceType.Smooth;
				bo.BrickColor = BrickColor.new("Medium red")
				bo.CanCollide = false;
				bo.Material = Enum.Material.SmoothPlastic;
				bo.TopSurface = Enum.SurfaceType.Smooth;
				bo.brickColor = BrickColor.new("Medium red")
				bp.Parent = bo;
				bp.Scale = Vector3.new(0.910000026, 0.300000012, 0.910000026)
				bp.MeshType = Enum.MeshType.Sphere;
				bq.Name = "mainskin"
				bq.Parent = bo;
				bq.C0 = CFrame.new(0, 0, 0, 1.00000024, 4.65661287e-10, 1.23691279e-10, 4.65661287e-10, 1, 9.31322575e-10, 1.23691279e-10, 9.31322575e-10, 1)
				bq.Part0 = bo;
				bq.Part1 = F;
				bq.part1 = F;
				br.Name = "Vg2"
				br.Parent = bl;
				br.CFrame = CFrame.new(-0.865878761, 5.55604744, 1.57808244, 0.00160500058, -0.0125150038, 0.999920428, 0.999988377, -0.00454756292, -0.00166202663, 0.00456800172, 0.999911368, 0.0125075588)
				br.Orientation = Vector3.new(0.100000001, 89.2799988, 90.2600021)
				br.Position = Vector3.new(-0.865878761, 5.55604744, 1.57808244)
				br.Rotation = Vector3.new(7.57000017, 89.2799988, 82.6900024)
				br.Color = Color3.new(0.639216, 0.294118, 0.294118)
				br.Size = Vector3.new(0.900895953, 0.900895953, 0.900895953)
				br.Anchored = false;
				br.BottomSurface = Enum.SurfaceType.Smooth;
				br.BrickColor = BrickColor.new("Dusty Rose")
				br.CanCollide = false;
				br.Material = Enum.Material.SmoothPlastic;
				br.TopSurface = Enum.SurfaceType.Smooth;
				br.brickColor = BrickColor.new("Dusty Rose")
				bs.Parent = br;
				bs.Scale = Vector3.new(0.910000026, 0.300000012, 0.910000026)
				bs.MeshType = Enum.MeshType.Sphere;
				bt.Name = "mainskin"
				bt.Parent = br;
				bt.C0 = CFrame.new(0.0175599698, 0.000299525098, -0.00046673941, 1.00000024, 4.65661287e-10, 1.23691279e-10, 4.65661287e-10, 1, 9.31322575e-10, 1.23691279e-10, 9.31322575e-10, 1)
				bt.Part0 = br;
				bt.Part1 = F;
				bt.part1 = F;
				bu.Name = "Skin"
				bu.Parent = bl;
				bu.CFrame = CFrame.new(-0.776254952, 5.58247375, 1.58018422, -0.572227836, -0.0160920434, 0.819936872, 0.820094705, -0.0112283546, 0.572117686, 0, 0.999807537, 0.0196221787)
				bu.Orientation = Vector3.new(-34.9000015, 88.6299973, 90.7799988)
				bu.Position = Vector3.new(-0.776254952, 5.58247375, 1.58018422)
				bu.Rotation = Vector3.new(-88.0400009, 55.0800018, 178.389999)
				bu.Color = Color3.new(1, 0.8, 0.6)
				bu.Size = Vector3.new(0.891887307, 1.49548769, 0.900895953)
				bu.Anchored = false;
				bu.BottomSurface = Enum.SurfaceType.Smooth;
				bu.BrickColor = BrickColor.new("Pastel brown")
				bu.CanCollide = false;
				bu.Material = Enum.Material.SmoothPlastic;
				bu.TopSurface = Enum.SurfaceType.Smooth;
				bu.brickColor = BrickColor.new("Pastel brown")
				bv.Parent = bu;
				bv.Scale = Vector3.new(0.899999976, 0.400000006, 0.899999976)
				bv.MeshType = Enum.MeshType.Sphere;
				bw.Name = "mainskin"
				bw.Parent = bu;
				bw.C0 = CFrame.new(0.0442657135, -0.000178598173, -0.0789558589, 0.81916672, 0.00343200099, -0.573545337, -0.00668692915, 0.99997133, -0.00356695056, 0.573516667, 0.00675718486, 0.819166183)
				bw.Part0 = bu;
				bw.Part1 = F;
				bw.part1 = F;
				aC.Name = "vagcover"
				aC.Parent = Torso;
				aC.PrimaryPart = bx;
				bx.Name = "mainskin"
				bx.Parent = aC;
				bx.CFrame = CFrame.new(-0.866962552, 5.56903839, 1.57845902, 0.00160500058, -0.0125150038, 0.999920428, 0.999988377, -0.00454756292, -0.00166202663, 0.00456800172, 0.999911368, 0.0125075588)
				bx.Orientation = Vector3.new(0.100000001, 89.2799988, 90.2600021)
				bx.Position = Vector3.new(-0.866962552, 5.56903839, 1.57845902)
				bx.Rotation = Vector3.new(7.57000017, 89.2799988, 82.6900024)
				bx.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
				bx.Size = Vector3.new(0.90731889, 1.81463778, 0.90731889)
				bx.Anchored = false;
				bx.BottomSurface = Enum.SurfaceType.Smooth;
				bx.BrickColor = BrickColor.new("Really black")
				bx.CanCollide = false;
				bx.Material = Enum.Material.SmoothPlastic;
				bx.TopSurface = Enum.SurfaceType.Smooth;
				bx.brickColor = BrickColor.new("Really black")
				by.Parent = bx;
				by.Scale = Vector3.new(0.899999976, 0.400000006, 0.899999976)
				by.MeshType = Enum.MeshType.Sphere;
				bz.Name = "Torso"
				bz.Parent = bx;
				bz.C0 = CFrame.new(1.01267099, 0.00664961338, -0.0108087659, 6.00004569e-06, 0.999901056, 0.0141194789, -0.999941051, 0.000160070136, -0.0109077059, -0.0109090377, -0.0141187273, 0.999840915)
				bz.Part0 = bx;
				bz.Part1 = Torso;
				bz.part1 = Torso;
				bA.Name = "Vg"
				bA.Parent = aC;
				bA.CFrame = CFrame.new(-0.866962552, 5.56903839, 1.57845902, 0.00160500058, -0.0125150038, 0.999920428, 0.999988377, -0.00454756292, -0.00166202663, 0.00456800172, 0.999911368, 0.0125075588)
				bA.Orientation = Vector3.new(0.100000001, 89.2799988, 90.2600021)
				bA.Position = Vector3.new(-0.866962552, 5.56903839, 1.57845902)
				bA.Rotation = Vector3.new(7.57000017, 89.2799988, 82.6900024)
				bA.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
				bA.Size = Vector3.new(0.90731889, 1.81463778, 0.90731889)
				bA.Anchored = false;
				bA.BottomSurface = Enum.SurfaceType.Smooth;
				bA.BrickColor = BrickColor.new("Really black")
				bA.CanCollide = false;
				bA.Material = Enum.Material.SmoothPlastic;
				bA.TopSurface = Enum.SurfaceType.Smooth;
				bA.brickColor = BrickColor.new("Really black")
				bB.Parent = bA;
				bB.Scale = Vector3.new(0.910000026, 0.300000012, 0.910000026)
				bB.MeshType = Enum.MeshType.Sphere;
				bC.Name = "mainskin"
				bC.Parent = bA;
				bC.C0 = CFrame.new(0, 0, 0, 1.00000024, 4.65661287e-10, 1.23691279e-10, 4.65661287e-10, 1, 9.31322575e-10, 1.23691279e-10, 9.31322575e-10, 1)
				bC.Part0 = bA;
				bC.Part1 = bx;
				bC.part1 = bx;
				bD.Name = "Vg2"
				bD.Parent = aC;
				bD.CFrame = CFrame.new(-0.86652112, 5.55135584, 1.57807875, 0.00160500058, -0.0125150038, 0.999920428, 0.999988377, -0.00454756292, -0.00166202663, 0.00456800172, 0.999911368, 0.0125075588)
				bD.Orientation = Vector3.new(0.100000001, 89.2799988, 90.2600021)
				bD.Position = Vector3.new(-0.86652112, 5.55135584, 1.57807875)
				bD.Rotation = Vector3.new(7.57000017, 89.2799988, 82.6900024)
				bD.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
				bD.Size = Vector3.new(0.90731889, 0.90731889, 0.90731889)
				bD.Anchored = false;
				bD.BottomSurface = Enum.SurfaceType.Smooth;
				bD.BrickColor = BrickColor.new("Really black")
				bD.CanCollide = false;
				bD.Material = Enum.Material.SmoothPlastic;
				bD.TopSurface = Enum.SurfaceType.Smooth;
				bD.brickColor = BrickColor.new("Really black")
				bE.Parent = bD;
				bE.Scale = Vector3.new(0.910000026, 0.300000012, 0.910000026)
				bE.MeshType = Enum.MeshType.Sphere;
				bF.Name = "mainskin"
				bF.Parent = bD;
				bF.C0 = CFrame.new(0.0176836904, 0.00030521708, -0.000466041354, 1.00000024, 4.65661287e-10, 1.23691279e-10, 4.65661287e-10, 1, 9.31322575e-10, 1.23691279e-10, 9.31322575e-10, 1)
				bF.Part0 = bD;
				bF.Part1 = bx;
				bF.part1 = bx;
				bG.Name = "Skin"
				bG.Parent = aC;
				bG.CFrame = CFrame.new(-0.776253998, 5.57796907, 1.58019507, -0.572227836, -0.0160920434, 0.819936872, 0.820094705, -0.0112283546, 0.572117686, 0, 0.999807537, 0.0196221787)
				bG.Orientation = Vector3.new(-34.9000015, 88.6299973, 90.7799988)
				bG.Position = Vector3.new(-0.776253998, 5.57796907, 1.58019507)
				bG.Rotation = Vector3.new(-88.0400009, 55.0800018, 178.389999)
				bG.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
				bG.Size = Vector3.new(0.898245931, 1.50614965, 0.90731889)
				bG.Anchored = false;
				bG.BottomSurface = Enum.SurfaceType.Smooth;
				bG.BrickColor = BrickColor.new("Really black")
				bG.CanCollide = false;
				bG.Material = Enum.Material.SmoothPlastic;
				bG.TopSurface = Enum.SurfaceType.Smooth;
				bG.brickColor = BrickColor.new("Really black")
				bH.Parent = bG;
				bH.Scale = Vector3.new(0.899999976, 0.400000006, 0.899999976)
				bH.MeshType = Enum.MeshType.Sphere;
				bI.Name = "mainskin"
				bI.Parent = bG;
				bI.C0 = CFrame.new(0.0445814133, -0.000175714493, -0.0795190334, 0.81916672, 0.00343200099, -0.573545337, -0.00668692915, 0.99997133, -0.00356695056, 0.573516667, 0.00675718486, 0.819166183)
				bI.Part0 = bG;
				bI.Part1 = bx;
				bI.part1 = bx;
				S.Parent = bj.Parent;
				local bJ = weld(S, bj.Parent, S, CF())
				bJ.C0 = CF(bj.Position) * ANGLES(mr(bj.Orientation.x), mr(bj.Orientation.y), mr(bj.Orientation.z))
				bJ.C1 = CF(bi.Position) * ANGLES(mr(bi.Orientation.x), mr(bi.Orientation.y), mr(bi.Orientation.z))
			end
		end
	end))
	ArtificialHB = Instance.new("BindableEvent", script)
	ArtificialHB.Name = "ArtificialHB"
	script:WaitForChild("ArtificialHB")
	frame = 0.03333333333333333;
	tf = 0;
	allowframeloss = false;
	tossremainder = false;
	lastframe = tick()
	script.ArtificialHB:Fire()
	game:GetService("RunService").Heartbeat:connect(function(bK, bL)
		tf = tf + bK;
		if tf >= frame then
			if allowframeloss then
				ArtificialHB:Fire()
				lastframe = tick()
			else
				for bg = 1, math.floor(tf / frame) do
					ArtificialHB:Fire()
				end;
				lastframe = tick()
			end;
			if tossremainder then
				tf = 0
			else
				tf = tf - frame * math.floor(tf / frame)
			end
		end
	end)
	game.Players.LocalPlayer.Character.Humanoid.Died:Connect(function()
		getgenv.art:Disconnect()
		script.ArtificialHB:Destroy()
	end)
	function Swait(bM)
		if bM == 0 or bM == nil then
			ArtificialHB.Event:wait()
		else
			for bg = 1, bM do
				ArtificialHB.Event:wait()
			end
		end
	end;
	so = function(aU, aV, aW, aX)
		CFuncs.Sound.Create(aU, aV, aW, aX)
	end;
	function weld(bN, bO, bP, bQ)
		local weld = it("Weld")
		weld.Parent = bN;
		weld.Part0 = bO;
		weld.Part1 = bP;
		weld.C0 = bQ;
		return weld
	end;
	rayCast = function(bR, bS, bT, bU)
		return game:service("Workspace"):FindPartOnRay(Ray.new(bR, bS.unit * (bT or 999.999)), bU)
	end;
	function SetTween(bV, bW, bX, bY, bZ)
		local b_ = Enum.EasingStyle[bX]
		local c0 = Enum.EasingDirection[bY]
		local c1 = 1;
		if aa == true and mememode == true then
			c1 = 5
		end;
		if bV.Name == "Bullet" then
			c1 = 1
		end;
		local c2 = TweenInfo.new(bZ / c1, b_, c0, 0, false, 0)
		local c3 = bW;
		local c4 = Q:Create(bV, c2, c3)
		c4:Play()
	end;
	function GatherAllInstances(aE, c5)
		local c6 = {}
		local bU = nil;
		if c5 ~= nil then
			bU = c5
		end;
		local function c7(aE, bU)
			for bg, S in pairs(aE:GetChildren()) do
				if S ~= bU then
					c7(S, bU)
					table.insert(c6, S)
				end
			end
		end;
		c7(aE, bU)
		return c6
	end;
	function weld(bN, bO, bP, bQ)
		local weld = it("Weld")
		weld.Parent = bN;
		weld.Part0 = bO;
		weld.Part1 = bP;
		weld.C0 = bQ;
		return weld
	end;
	function joint(bN, bO, bP, bQ)
		local weld = it("Motor6D")
		weld.Parent = bN;
		weld.Part0 = bO;
		weld.Part1 = bP;
		weld.C0 = bQ;
		return weld
	end;
	ArmorParts = {}
	function WeldAllTo(F, c8, c9, ca)
		local cb = c8.CFrame * ca;
		for bg, cc in pairs(c9:GetDescendants()) do
			if cc:isA("BasePart") then
				local cd = weld(cc, cc, F, cb:toObjectSpace(cc.CFrame):inverse())
				cc.Anchored = false;
				cc.Massless = true;
				cc.CanCollide = false;
				cc.Parent = F;
				cc.Locked = true;
				if not cc:FindFirstChild("Destroy") then
					table.insert(ArmorParts, {
						Part = cc,
						Par = cc.Parent,
						Col = cc.Color,
						Mat = cc.Material.Name
					})
				else
					cc:Destroy()
				end
			end
		end;
		F.Transparency = 1
	end;
	function JointAllTo(F, c8, c9, ca)
		local cb = c8.CFrame * ca;
		for bg, cc in pairs(c9:GetDescendants()) do
			if cc:isA("BasePart") then
				local cd = joint(cc, cc, F, cb:toObjectSpace(cc.CFrame):inverse())
				cc.Anchored = false;
				cc.Massless = true;
				cc.CanCollide = false;
				cc.Parent = F;
				cc.Locked = true;
				if not cc:FindFirstChild("Destroy") then
				else
					cc:Destroy()
				end
			end
		end;
		F.Transparency = 1
	end;
	local ce = EffectPack.Part:Clone()
	ce.Parent = Character;
	ce.Name = "RightClaw"
	RCW = weld(RightArm, RightArm, ce, cf(0, 0, 0))
	local cg = EffectPack.Part:Clone()
	cg.Parent = Character;
	cg.Name = "LeftClaw"
	LCW = weld(LeftArm, LeftArm, cg, cf(0, 0, 0))
	tailw = Torso:WaitForChild("Tail").Weld;
	tailc0 = tailw.C0;
	for e, S in pairs(Y.Armor:children()) do
		if S:IsA("Model") then
			if Character:FindFirstChild("" .. S.Name) then
				local F = Character:FindFirstChild("" .. S.Name)
				local c8 = S.Handle;
				WeldAllTo(F, c8, S, CFrame.new(0, 0, 0))
			end
		end
	end;
	local ch = Y.LArmYes.LeftArm:WaitForChild'REF'
	for bg, S in pairs(Y.LArmYes.LeftArm:GetChildren()) do
		S.Anchored = false
	end;
	local ci = IT("Weld")
	ci.Parent = LeftArm;
	ci.Part0 = LeftArm;
	ci.Part1 = ch;
	ci.C1 = CF(0, 0, 0) * angles(0, 0, 0)
	local cj = Y.RArmYes.RightArm:WaitForChild'REF'
	for bg, S in pairs(Y.RArmYes.RightArm:GetChildren()) do
		S.Anchored = false
	end;
	local ck = IT("Weld")
	ck.Parent = RightArm;
	ck.Part0 = RightArm;
	ck.Part1 = cj;
	ck.C1 = CF(0, 0, 0) * angles(0, 0, 0)
	local cl = Y.torsono.Torso:WaitForChild'REF'
	for bg, S in pairs(Y.torsono.Torso:GetChildren()) do
		S.Anchored = false
	end;
	local ci = IT("Weld")
	ci.Parent = Torso;
	ci.Part0 = Torso;
	ci.Part1 = cl;
	ci.C1 = CF(0, 0, 0) * angles(0, RAD(0), 0)
	local cm = Y.LLegYes.LeftLeg:WaitForChild'REF'
	for bg, S in pairs(Y.LLegYes.LeftLeg:GetChildren()) do
		S.Anchored = false
	end;
	local cn = IT("Weld")
	cn.Parent = LeftLeg;
	cn.Part0 = LeftLeg;
	cn.Part1 = cm;
	cn.C1 = CF(0, 0, 0) * angles(0, 102.1, 0)
	local co = Y.RLegYes.RightLeg:WaitForChild'REF'
	for bg, S in pairs(Y.RLegYes.RightLeg:GetChildren()) do
		S.Anchored = false
	end;
	local cp = IT("Weld")
	cp.Parent = RightLeg;
	cp.Part0 = RightLeg;
	cp.Part1 = co;
	cp.C1 = CF(0, 0, 0) * angles(0, -102.1, 0)
	local cq = _("Texture")({
		Texture = "http://www.roblox.com/asset/?id=1693385655",
		Color3 = Color3.new(0.6392156862745098, 0.6352941176470588, 0.6470588235294118)
	})
	function AddStoneTexture(aD)
		coroutine.resume(coroutine.create(function()
			for bg = 0, 6, 1 do
				local cr = cq:Clone()
				cr.Face = bg;
				cr.Parent = aD
			end
		end))
	end;
	New = function(cs, aE, aJ, ct)
		local cs = Instance.new(cs)
		for q, r in pairs(ct or {}) do
			cs[q] = r
		end;
		cs.Parent = aE;
		cs.Name = aJ;
		return cs
	end;
	function Tran(cu)
		local cv = ""
		if cu == "1" then
			cv = "a"
		elseif cu == "2" then
			cv = "b"
		elseif cu == "3" then
			cv = "c"
		elseif cu == "4" then
			cv = "d"
		elseif cu == "5" then
			cv = "e"
		elseif cu == "6" then
			cv = "f"
		elseif cu == "7" then
			cv = "g"
		elseif cu == "8" then
			cv = "h"
		elseif cu == "9" then
			cv = "i"
		elseif cu == "10" then
			cv = "j"
		elseif cu == "11" then
			cv = "k"
		elseif cu == "12" then
			cv = "l"
		elseif cu == "13" then
			cv = "m"
		elseif cu == "14" then
			cv = "n"
		elseif cu == "15" then
			cv = "o"
		elseif cu == "16" then
			cv = "p"
		elseif cu == "17" then
			cv = "q"
		elseif cu == "18" then
			cv = "r"
		elseif cu == "19" then
			cv = "s"
		elseif cu == "20" then
			cv = "t"
		elseif cu == "21" then
			cv = "u"
		elseif cu == "22" then
			cv = "v"
		elseif cu == "23" then
			cv = "w"
		elseif cu == "24" then
			cv = "x"
		elseif cu == "25" then
			cv = "y"
		elseif cu == "26" then
			cv = "z"
		elseif cu == "27" then
			cv = "_"
		elseif cu == "28" then
			cv = "0"
		elseif cu == "29" then
			cv = "1"
		elseif cu == "30" then
			cv = "2"
		elseif cu == "31" then
			cv = "3"
		elseif cu == "32" then
			cv = "4"
		elseif cu == "33" then
			cv = "5"
		elseif cu == "34" then
			cv = "6"
		elseif cu == "35" then
			cv = "7"
		elseif cu == "36" then
			cv = "8"
		elseif cu == "37" then
			cv = "9"
		end;
		return cv
	end;
	function MaybeOk(cw, ca)
		local cx = ""
		if cw == 1 then
			local cy = ""
			local cz = ca;
			local cA = ""
			local cB = 0;
			local cC = 0;
			delay(wait(0), function()
				for cc = 1, #cz do
					if string.sub(cz, 0 + cc, cc) == "," then
						local cD = string.sub(cz, cC, cc - 1)
						local cE = Tran(string.sub(cz, cC, cc - 1))
						cB = cB + 1;
						cy = cy .. cE;
						cC = cc + 1;
						cA = ""
					end;
					cA = string.sub(cz, 1, cc)
					wait()
				end;
				cx = cy;
				for cc = 1, #cA do
					cA = string.sub(cz, -1, cc)
				end
			end)
		elseif cw == 2 then
			print("fat")
		end;
		while cx == "" do
			wait()
		end;
		return cx
	end;
	function CreateMesh2(cF, cG, cH, cI, cJ, cK, cL)
		local cM = IT(cF)
		if cF == "SpecialMesh" then
			cM.MeshType = cH;
			if cI ~= "nil" and cI ~= "" then
				cM.MeshId = "http://www.roblox.com/asset/?id=" .. cI
			end;
			if cJ ~= "nil" and cJ ~= "" then
				cM.TextureId = "http://www.roblox.com/asset/?id=" .. cJ
			end
		end;
		cM.Offset = cL or VT(0, 0, 0)
		cM.Scale = cK;
		cM.Parent = cG;
		return cM
	end;
	function CreatePart2(cN, cG, cO, cP, cQ, cR, cS, cT, cU)
		local cV = IT("Part")
		cV.formFactor = cN;
		cV.Reflectance = cP;
		cV.Transparency = cQ;
		cV.CanCollide = false;
		cV.Locked = true;
		cV.Anchored = true;
		if cU == false then
			cV.Anchored = false
		end;
		cV.BrickColor = BRICKC(tostring(cR))
		cV.Name = cS;
		cV.Size = cT;
		cV.Position = Torso.Position;
		cV.Material = cO;
		cV:BreakJoints()
		cV.Parent = cG;
		return cV
	end;
	local aY = IT("Sound")
	function CreateSound2(cW, cG, cX, cY, cZ)
		local c_ = nil;
		coroutine.resume(coroutine.create(function()
			c_ = aY:Clone()
			c_.Parent = cG;
			c_.Volume = cX;
			c_.Pitch = cY;
			c_.SoundId = "http://www.roblox.com/asset/?id=" .. cW;
			c_:play()
			if cZ == true then
				c_.Looped = true
			else
				repeat
					wait(1)
				until c_.Playing == false;
				c_:remove()
			end
		end))
		return c_
	end;
	function WACKYEFFECT(d0)
		local d1 = d0.EffectType or "Sphere"
		local cT = d0.Size or VT(1, 1, 1)
		local d2 = d0.Size2 or VT(0, 0, 0)
		local cQ = d0.Transparency or 0;
		local d3 = d0.Transparency2 or 1;
		local d4 = d0.CFrame or Torso.CFrame;
		local d5 = d0.MoveToPos or nil;
		local d6 = d0.RotationX or 0;
		local d7 = d0.RotationY or 0;
		local d8 = d0.RotationZ or 0;
		local cO = d0.Material or "Neon"
		local d9 = d0.Color or C3(1, 1, 1)
		local da = d0.Time or 45;
		local db = d0.SoundID or nil;
		local dc = d0.SoundPitch or nil;
		local dd = d0.SoundVolume or nil;
		coroutine.resume(coroutine.create(function()
			local de = false;
			local df = nil;
			local dg = CreatePart2(3, Effects, cO, 0, cQ, BRICKC("Pearl"), "Effect", VT(1, 1, 1), true)
			if db ~= nil and dc ~= nil and dd ~= nil then
				de = true;
				df = CreateSound2(db, dg, dd, dc, false)
			end;
			dg.Color = d9;
			local dh = nil;
			if d1 == "Sphere" then
				dh = CreateMesh2("SpecialMesh", dg, "Sphere", "", "", cT, VT(0, 0, 0))
			elseif d1 == "Cylinder" then
				dh = CreateMesh2("SpecialMesh", dg, "Cylinder", "", "", cT, VT(0, 0, 0))
			elseif d1 == "Block" then
				dh = IT("BlockMesh", dg)
				dh.Scale = VT(cT.X, cT.X, cT.X)
			elseif d1 == "Cube" then
				dh = IT("BlockMesh", dg)
				dh.Scale = VT(cT.X, cT.X, cT.X)
			elseif d1 == "Wave" then
				dh = CreateMesh2("SpecialMesh", dg, "FileMesh", "20329976", "", cT, VT(0, 0, -cT.X / 8))
			elseif d1 == "Ring" then
				dh = CreateMesh2("SpecialMesh", dg, "FileMesh", "559831844", "", VT(cT.X, cT.X, 0.1), VT(0, 0, 0))
			elseif d1 == "Slash" then
				dh = CreateMesh2("SpecialMesh", dg, "FileMesh", "662586858", "", VT(cT.X / 10, 0, cT.X / 10), VT(0, 0, 0))
			elseif d1 == "Round Slash" then
				dh = CreateMesh2("SpecialMesh", dg, "FileMesh", "662585058", "", VT(cT.X / 10, 0, cT.X / 10), VT(0, 0, 0))
			elseif d1 == "Swirl" then
				dh = CreateMesh2("SpecialMesh", dg, "FileMesh", "1051557", "", cT, VT(0, 0, 0))
			elseif d1 == "Skull" then
				dh = CreateMesh2("SpecialMesh", dg, "FileMesh", "4770583", "", cT, VT(0, 0, 0))
			elseif d1 == "Crystal" then
				dh = CreateMesh2("SpecialMesh", dg, "FileMesh", "9756362", "", cT, VT(0, 0, 0))
			elseif d1 == "Crown" then
				dh = CreateMesh2("SpecialMesh", dg, "FileMesh", "173770780", "", cT, VT(0, 0, 0))
			end;
			if dh ~= nil then
				local di = nil;
				if d5 ~= nil then
					di = (d4.p - d5).Magnitude / da
				end;
				local dj = cT - d2;
				local dk = cQ - d3;
				if d1 == "Block" then
					SetTween(dg, {
						CFrame = d4 * ANGLES(RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)))
					}, "Linear", "InOut", da / 60)
				else
					SetTween(dg, {
						CFrame = d4
					}, "Linear", "InOut", 0)
				end;
				wait()
				SetTween(dg, {
					Transparency = dg.Transparency - dk
				}, "Linear", "InOut", da / 60)
				if d1 == "Block" then
					SetTween(dg, {
						CFrame = d4 * ANGLES(RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)))
					}, "Linear", "InOut", 0)
				else
					SetTween(dg, {
						CFrame = dg.CFrame * ANGLES(RAD(d6), RAD(d7), RAD(d8))
					}, "Linear", "InOut", 0)
				end;
				if d5 ~= nil then
					local dl = dg.Orientation;
					SetTween(dg, {
						CFrame = CF(d5)
					}, "Linear", "InOut", da / 60)
					SetTween(dg, {
						Orientation = dl
					}, "Linear", "InOut", da / 60)
				end;
				dh.Scale = dh.Scale - dj / da;
				SetTween(dh, {
					Scale = d2
				}, "Linear", "InOut", da / 60)
				if d1 == "Wave" then
					SetTween(dh, {
						Offset = VT(0, 0, -dh.Scale.X / 8)
					}, "Linear", "InOut", da / 60)
				end;
				for dm = 1, da + 1 do
					wait(.05)
					if d1 == "Block" then
					else
					end;
					if d5 ~= nil then
						local dl = dg.Orientation
					end
				end;
				game:GetService("Debris"):AddItem(dg, 15)
				if de == false then
					dg:remove()
				else
					df.Stopped:Connect(function()
						dg:remove()
					end)
				end
			else
				if de == false then
					dg:remove()
				else
					repeat
						wait()
					until df.Playing == false;
					dg:remove()
				end
			end
		end))
	end;
	function CreatePart(aE, aF, aG, aH, aI, aJ, aK)
		local y = _("Part"){
			Parent = aE,
			Reflectance = aG,
			Transparency = aH,
			CanCollide = false,
			Locked = true,
			BrickColor = BrickColor.new(tostring(aI)),
			Name = aJ,
			Size = aK,
			Material = aF
		}
		RemoveOutlines(y)
		return y
	end;
	local dn = _("ParticleEmitter"){
		Color = ColorSequence.new(Color3.new(1, 1, 1), Color3.new(0.6666666666666666, 1, 1)),
		Transparency = NumberSequence.new({
			NumberSequenceKeypoint.new(0, 1),
			NumberSequenceKeypoint.new(.75, .4),
			NumberSequenceKeypoint.new(1, 1)
		}),
		Size = NumberSequence.new({
			NumberSequenceKeypoint.new(0, .5),
			NumberSequenceKeypoint.new(1, .0)
		}),
		Texture = "rbxassetid://241922778",
		Lifetime = NumberRange.new(0.55, 0.95),
		Rate = 100,
		VelocitySpread = 180,
		Rotation = NumberRange.new(0),
		RotSpeed = NumberRange.new(-200, 200),
		Speed = NumberRange.new(8.0),
		LightEmission = 1,
		LockedToPart = false,
		Acceleration = Vector3.new(0, 0, 0),
		EmissionDirection = "Top",
		Drag = 4,
		Enabled = false
	}
	local dp = _("ParticleEmitter"){
		Color = ColorSequence.new(Color3.new(1, 1, 1), Color3.new(1, 1, 1)),
		Transparency = NumberSequence.new({
			NumberSequenceKeypoint.new(0, 1),
			NumberSequenceKeypoint.new(0.1, 0),
			NumberSequenceKeypoint.new(0.3, 0),
			NumberSequenceKeypoint.new(0.5, .2),
			NumberSequenceKeypoint.new(1, 1)
		}),
		Size = NumberSequence.new({
			NumberSequenceKeypoint.new(0, 0),
			NumberSequenceKeypoint.new(.15, 1.5),
			NumberSequenceKeypoint.new(.75, 1.5),
			NumberSequenceKeypoint.new(1, 0)
		}),
		Texture = "rbxassetid://936193661",
		Lifetime = NumberRange.new(1.5),
		Rate = 100,
		VelocitySpread = 0,
		Rotation = NumberRange.new(0),
		RotSpeed = NumberRange.new(-10, 10),
		Speed = NumberRange.new(0),
		LightEmission = .25,
		LockedToPart = true,
		Acceleration = Vector3.new(0, 0, 0),
		EmissionDirection = "Top",
		Drag = 4,
		ZOffset = 1,
		Enabled = false
	}
	Damagefunc = function(y, dq, dr, ds, dt, du, dv, dw, dx, dy)
		if dq.Parent == nil then
			return
		end;
		local dz = dq.Parent:FindFirstChildOfClass("Humanoid")
		for e, S in pairs(dq.Parent:children()) do
			if S:IsA("Humanoid") then
				if dz.Health > 0.0001 then
					dz = S
				else
				end
			end
		end;
		if dz == nil then
			return
		elseif dz ~= nil and dz.Health < 0.001 then
			return
		elseif dz ~= nil and dz.Parent:FindFirstChild("Fly away") then
			return
		end;
		coroutine.resume(coroutine.create(function()
			if dz.Health > 9999999 and dr < 9999 and du ~= "IgnoreType" and (dz.Parent:FindFirstChild("Torso") or dz.Parent:FindFirstChild("UpperTorso")) and not dz.Parent:FindFirstChild("Fly away") then
				local dA = Instance.new("Model", dz.Parent)
				dA.Name = "Fly away"
				game:GetService("Debris"):AddItem(dA, 2.5)
				for e, S in pairs(dz.Parent:children()) do
					if S:IsA("BasePart") and S.Parent:FindFirstChildOfClass("Humanoid") then
						S.Anchored = true
					end
				end;
				wait(.25)
				if dz.Parent:FindFirstChildOfClass("Body Colors") then
					dz.Parent:FindFirstChildOfClass("Body Colors"):Destroy()
				end;
				local dB = dz.Parent:FindFirstChild("Torso") or dz.Parent:FindFirstChild("UpperTorso")
				coroutine.resume(coroutine.create(function()
					local dC = Instance.new("Part")
					dC.Reflectance = 0;
					dC.Transparency = 1;
					dC.CanCollide = false;
					dC.Locked = true;
					dC.Anchored = true;
					dC.BrickColor = BrickColor.new("Really blue")
					dC.Name = "YourGone"
					dC.Size = Vector3.new()
					dC.Material = "SmoothPlastic"
					dC:BreakJoints()
					dC.Parent = dB;
					dC.CFrame = dB.CFrame;
					local dD = Instance.new("ParticleEmitter")
					dD.Parent = dC;
					dD.Acceleration = Vector3.new(0, 0, 0)
					dD.Size = NumberSequence.new({
						NumberSequenceKeypoint.new(0, 10),
						NumberSequenceKeypoint.new(1, .0)
					})
					dD.Color = ColorSequence.new(Color3.new(1, 0, 0), Color3.new(1, 0, 0))
					dD.Lifetime = NumberRange.new(0.55, 0.95)
					dD.Transparency = NumberSequence.new({
						NumberSequenceKeypoint.new(0, 1),
						NumberSequenceKeypoint.new(.25, .0),
						NumberSequenceKeypoint.new(1, 1)
					})
					dD.Speed = NumberRange.new(0, 0.0)
					dD.ZOffset = 2;
					dD.Texture = "rbxassetid://243660364"
					dD.RotSpeed = NumberRange.new(0, 0)
					dD.Rotation = NumberRange.new(-180, 180)
					dD.Enabled = false;
					game:GetService("Debris"):AddItem(dC, 3)
					for bg = 0, 2, 1 do
						dD:Emit(1)
						so("1448044156", dB, 2, 1)
						dz.Parent:BreakJoints()
						dC.CFrame = dB.CFrame;
						for e, S in pairs(dz.Parent:children()) do
							if S:IsA("BasePart") and S.Parent:FindFirstChildOfClass("Humanoid") then
								S.Anchored = false;
								if S:FindFirstChildOfClass("SpecialMesh") then
								end;
								if S:FindFirstChildOfClass("Decal") and S.Name == "face" then
								end;
								local dE = _("BodyVelocity")({
									P = 500,
									maxForce = Vector3.new(1000, 1000, 1000),
									velocity = Vector3.new(math.random(-10, 10), 4, math.random(-10, 10))
								})
								dE.Parent = S;
								game:GetService("Debris"):AddItem(dE, math.random(50, 100) / 1000)
							end
						end;
						wait(.2)
					end;
					wait(.1)
					dD:Emit(3)
					so("1448044156", dB, 2, .8)
					dC.CFrame = dB.CFrame;
					for e, S in pairs(dz.Parent:children()) do
						if S:IsA("BasePart") and S.Parent:FindFirstChildOfClass("Humanoid") then
							S.Anchored = false;
							if S:FindFirstChildOfClass("SpecialMesh") then
							end;
							if S:FindFirstChildOfClass("Decal") and S.Name == "face" then
							end
						end
					end
				end))
				wait(.1)
			end
		end))
		if dz ~= nil and dq.Parent ~= Character and dq.Parent:FindFirstChild("Torso") or dq.Parent:FindFirstChild("UpperTorso") ~= nil then
			if dq.Parent:findFirstChild("DebounceHit") ~= nil and dq.Parent.DebounceHit.Value == true then
				return
			end;
			local dF = _("ObjectValue")({
				Name = "creator",
				Value = game:service("Players").LocalPlayer,
				Parent = dz
			})
			game:GetService("Debris"):AddItem(dF, 0.5)
			if dx ~= nil and dy ~= nil then
				so(dx, dq, 1, dy)
			end;
			local dG = math.random(dr, ds)
			local dH = false;
			local dI = dq.Parent:findFirstChild("Block")
			if dI ~= nil and dI.className == "IntValue" and dI.Value > 0 then
				dH = true;
				dI.Value = dI.Value - 1;
				print(dI.Value)
			end;
			if dH == false then
				ShowDamage(y.CFrame * CFrame.new(0, 0, y.Size.Z / 2).p + Vector3.new(0, 1.5, 0), -dG, 1.5, Color3.new(0, 0, 0))
			else
				ShowDamage(y.CFrame * CFrame.new(0, 0, y.Size.Z / 2).p + Vector3.new(0, 1.5, 0), -dG, 1.5, Color3.new(0, 0, 0))
			end;
			if du == "Knockdown" then
				local hum = dz;
				hum.PlatformStand = true;
				coroutine.resume(coroutine.create(function(dJ)
					wait(.2)
					dJ.PlatformStand = false
				end), hum)
				local dB = dz.Parent:FindFirstChild("Torso") or dz.Parent:FindFirstChild("UpperTorso")
				local dK = dq.Position - (dv.Position + Vector3.new(0, 0, 0)).unit
			elseif du == "Knockdown2" then
				local hum = dz;
				hum.PlatformStand = true;
				coroutine.resume(coroutine.create(function(dJ)
					Combo = 1;
					wait(.2)
					dJ.PlatformStand = false
				end), hum)
				local dK = dq.Position - (dv.Position + Vector3.new(0, 0, 0)).unit
			elseif du == "Normal" then
			elseif du == "Fire" then
			elseif du == "Instakill" then
				coroutine.resume(coroutine.create(function()
					if (dz.Parent:FindFirstChild("Torso") or dz.Parent:FindFirstChild("UpperTorso")) and not dz.Parent:FindFirstChild("Fly away") then
						local dA = Instance.new("Model", dz.Parent)
						dA.Name = "Fly away"
						game:GetService("Debris"):AddItem(dA, 2.5)
						wait(.25)
						local dB = dz.Parent:FindFirstChild("Torso") or dz.Parent:FindFirstChild("UpperTorso")
						coroutine.resume(coroutine.create(function()
							local dC = Instance.new("Part")
							dC.Reflectance = 0;
							dC.Transparency = 1;
							dC.CanCollide = false;
							dC.Locked = true;
							dC.Anchored = true;
							dC.BrickColor = BrickColor.new("Really blue")
							dC.Name = "YourGone"
							dC.Size = Vector3.new()
							dC.Material = "SmoothPlastic"
							dC:BreakJoints()
							dC.Parent = dB;
							dC.CFrame = dB.CFrame;
							local dD = Instance.new("ParticleEmitter")
							dD.Parent = dC;
							dD.Acceleration = Vector3.new(0, 0, 0)
							dD.Size = NumberSequence.new({
								NumberSequenceKeypoint.new(0, 10),
								NumberSequenceKeypoint.new(1, .0)
							})
							dD.Color = ColorSequence.new(Color3.new(1, 0, 0), Color3.new(1, 0, 0))
							dD.Lifetime = NumberRange.new(0.55, 0.95)
							dD.Transparency = NumberSequence.new({
								NumberSequenceKeypoint.new(0, 1),
								NumberSequenceKeypoint.new(.25, .0),
								NumberSequenceKeypoint.new(1, 1)
							})
							dD.Speed = NumberRange.new(0, 0.0)
							dD.ZOffset = 2;
							dD.Texture = "rbxassetid://243660364"
							dD.RotSpeed = NumberRange.new(0, 0)
							dD.Rotation = NumberRange.new(-180, 180)
							dD.Enabled = false;
							game:GetService("Debris"):AddItem(dC, 3)
							for bg = 0, 2, 1 do
								dD:Emit(1)
								so("1448044156", dB, 2, 1)
								dC.CFrame = dB.CFrame;
								for e, S in pairs(dz.Parent:children()) do
									if S:IsA("BasePart") and S.Parent:FindFirstChildOfClass("Humanoid") then
										if S:FindFirstChildOfClass("SpecialMesh") then
										end;
										if S:FindFirstChildOfClass("Decal") and S.Name == "face" then
										end
									end
								end;
								wait(.2)
							end;
							wait(.1)
							dD:Emit(3)
							so("1448044156", dB, 2, .8)
							dC.CFrame = dB.CFrame;
							for e, S in pairs(dz.Parent:children()) do
								if S:IsA("BasePart") and S.Parent:FindFirstChildOfClass("Humanoid") then
									if S:FindFirstChildOfClass("SpecialMesh") then
									end;
									if S:FindFirstChildOfClass("Decal") and S.Name == "face" then
									end
								end
							end
						end))
						wait(.1)
					end
				end))
			elseif du == "HPSteal" then
				hum.PlatformStand = true;
				coroutine.resume(coroutine.create(function(dJ)
					Combo = 1;
					wait(.2)
					dJ.PlatformStand = false
				end), hum)
				local dK = dq.Position - (dv.Position + Vector3.new(0, 0, 0)).unit
			elseif du == "Impale" then
				CFuncs.Sound.Create("http://www.roblox.com/asset/?id=268249319", Spike, .8, 2)
				dq.Parent.Humanoid.PlatformStand = true;
				wait(1)
				dq.Parent.Humanoid.PlatformStand = false
			elseif du == "IgnoreType" then
			elseif du == "Up" then
			elseif du == "Snare" then
			elseif du == "Freeze2" then
			end;
			local dL = _("BoolValue")({
				Name = "DebounceHit",
				Parent = dq.Parent,
				Value = true
			})
			game:GetService("Debris"):AddItem(dL, dw)
			dF = Instance.new("ObjectValue")
			dF.Name = "creator"
			dF.Value = R;
			dF.Parent = dz;
			game:GetService("Debris"):AddItem(dF, 0.5)
		end
	end;
	ShowDamage = function(bR, dM, dN, dO)
		local ba = 0.033333333333333;
		if not bR then
			local bR = Vector3.new(0, 0, 0)
		end;
		local dM = dM or ""
		local dN = dN or 2;
		if not dO then
			local dO = Color3.new(1, 0, 1)
		end;
		local dP = CreatePart(workspace, "SmoothPlastic", 0, 1, BrickColor.new(dO), "Effect", Vector3.new(0, 0, 0))
		dP.Anchored = true;
		local dQ = _("BillboardGui")({
			Size = UDim2.new(2, 0, 2, 0),
			Adornee = dP,
			Parent = dP
		})
		local dR = _("TextLabel")({
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 1, 0),
			Text = "DMG: " .. dM .. "",
			TextColor3 = dO,
			TextScaled = true,
			Font = Enum.Font.ArialBold,
			Parent = dQ
		})
		dR.TextTransparency = 1;
		game.Debris:AddItem(dP, dN + 0.1)
		dP.Parent = game:GetService("Workspace")
		delay(0, function()
			local dS = dN / ba;
			dP.CFrame = CFrame.new(bR)
			wait()
			dR.TextTransparency = 0;
			SetTween(dR, {
				TextTransparency = 1
			}, "Quad", "In", dS / 60)
			SetTween(dR, {
				Rotation = math.random(-25, 25)
			}, "Elastic", "InOut", dS / 60)
			SetTween(dR, {
				TextColor3 = Color3.new(1, 0, 0)
			}, "Elastic", "InOut", dS / 60)
			SetTween(dP, {
				CFrame = CFrame.new(bR) + Vector3.new(math.random(-5, 5), math.random(1, 5), math.random(-5, 5))
			}, "Linear", "InOut", dS / 60)
			wait(dS / 60)
			if dP and dP.Parent then
				dP:Destroy()
			end
		end)
	end;
	MagniDamage = function(y, dT, dU, dV, dW, dX)
		local du = ""
		if mememode == true then
			du = "Instakill"
		else
			du = dX
		end;
		if dX == "NormalKnockdown" then
			du = "Knockdown"
		end;
		for e, dF in pairs(workspace:children()) do
			local hum = dF:FindFirstChild("Humanoid")
			for e, S in pairs(dF:children()) do
				if S:IsA("Humanoid") then
					hum = S
				end
			end;
			if hum ~= nil then
				local dY = dF:findFirstChild("Head")
				if dY ~= nil then
					local dZ = dY.Position - y.Position;
					local d_ = dZ.magnitude;
					if d_ <= dT and dF.Name ~= R.Name then
						Damagefunc(y, dY, dU, dV, dW, du, RootPart, 0.1, "851453784", 1.2)
					end
				end
			end
		end
	end;
	function CFMagniDamage(e0, dT, dU, dV, dW, du)
		local e1 = Instance.new("Part")
		e1.Parent = Character;
		e1.Size = Vector3.new(0.05, 0.05, 0.05)
		e1.Transparency = 1;
		e1.CanCollide = false;
		e1.Anchored = true;
		RemoveOutlines(e1)
		e1.Position = e1.Position + Vector3.new(0, -.1, 0)
		e1.CFrame = e0;
		coroutine.resume(coroutine.create(function()
			MagniDamage(e1, dT, dU, dV, dW, du)
		end))
		game:GetService("Debris"):AddItem(e1, .05)
		e1.Archivable = false
	end;
	function BulletHitEffectSpawn(e2, e3)
		local e4 = Instance.new("Part", Effects)
		e4.Reflectance = 0;
		e4.Transparency = 1;
		e4.CanCollide = false;
		e4.Locked = true;
		e4.Anchored = true;
		e4.BrickColor = BrickColor.new("Bright green")
		e4.Name = "Bullet"
		e4.Size = Vector3.new(.05, .05, .05)
		e4.Material = "Neon"
		e4:BreakJoints()
		e4.CFrame = e2;
		local e5 = Instance.new("Attachment", e4)
		game:GetService("Debris"):AddItem(e4, 15)
		if e3 == "Explode" then
			e5.Orientation = Vector3.new(90, 0, 0)
			local e6 = EffectPack.Bang2:Clone()
			e6.Parent = e4;
			e6:Emit(150)
			local e7 = EffectPack.Bang1:Clone()
			e7.Parent = e4;
			e7:Emit(25)
			local e8 = EffectPack.Bang3:Clone()
			e8.Parent = e4;
			e8:Emit(185)
			game:GetService("Debris"):AddItem(e4, 2)
		end;
		if e3 == "Spark" then
			e5.Orientation = Vector3.new(90, 0, 0)
			local e6 = EffectPack.Spark:Clone()
			e6.Parent = e4;
			e6:Emit(1)
			game:GetService("Debris"):AddItem(e4, 2)
		end;
		if e3 == "ShockWave" then
			e5.Orientation = Vector3.new(90, 0, 0)
			local e6 = EffectPack.ShockWave1:Clone()
			e6.Parent = e4;
			e6:Emit(0)
			local e7 = EffectPack.ShockWave2:Clone()
			e7.Parent = e4;
			e7:Emit(2)
			game:GetService("Debris"):AddItem(e4, 2)
		end;
		if e3 == "Nuke" then
			so(923073285, e4, 8, 2)
			e5.Orientation = Vector3.new(0, 0, 0)
			local e9 = Instance.new("Attachment", e4)
			e9.Orientation = Vector3.new(0, 0, 0)
			local e6 = EffectPack.Nuke_Flash:Clone()
			e6.Parent = e5;
			e6:Emit(20)
			local e7 = EffectPack.Nuke_Smoke:Clone()
			e7.Parent = e9;
			e7.Enabled = true;
			coroutine.resume(coroutine.create(function()
				for bg = 0, 2, .025 / 1.5 do
					e7.Transparency = NumberSequence.new({
						NumberSequenceKeypoint.new(0, 1),
						NumberSequenceKeypoint.new(.15, .5 + bg / 4),
						NumberSequenceKeypoint.new(.95, .5 + bg / 4),
						NumberSequenceKeypoint.new(1, 1)
					})
					Swait()
				end;
				e7.Transparency = NumberSequence.new({
					NumberSequenceKeypoint.new(0, 1),
					NumberSequenceKeypoint.new(1, 1)
				})
				e7.Enabled = false
			end))
			local e8 = EffectPack.Nuke_Wave:Clone()
			e8.Parent = e5;
			e8:Emit(185)
			game:GetService("Debris"):AddItem(e5, 10)
		end
	end;
	local ea = weld(ad.Parent, ad.Part0, ad.Part1, ad.C0)
	ea.C1 = ad.C1;
	ea.Name = ad.Name;
	local eb = weld(ae.Parent, ae.Part0, ae.Part1, ae.C0)
	eb.C1 = ae.C1;
	eb.Name = ae.Name;
	local ec = weld(Torso, Torso, RightArm, cf(0, 0, 0))
	local ed = weld(Torso, Torso, LeftArm, cf(0, 0, 0))
	local ee = weld(Torso, Torso, RightLeg, cf(0, 0, 0))
	local ef = weld(Torso, Torso, LeftLeg, cf(0, 0, 0))
	ec.C1 = aj(0, 0.5, 0)
	ed.C1 = aj(0, 0.5, 0)
	ee.C1 = aj(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
	ef.C1 = aj(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
	SetTween(ea, {
		C0 = af * CFrame.new(0, 0, 0)
	}, "Quad", "InOut", 0.1)
	SetTween(eb, {
		C0 = ag * CFrame.new(0, 0, 0)
	}, "Quad", "InOut", 0.1)
	SetTween(ec, {
		C0 = CFrame.new(1.5, 0.5, -.0)
	}, "Quad", "InOut", 0.1)
	SetTween(ed, {
		C0 = CFrame.new(-1.5, 0.5, -.0)
	}, "Quad", "InOut", 0.1)
	SetTween(ee, {
		C0 = CFrame.new(.5, -0.90, 0)
	}, "Quad", "InOut", 0.1)
	SetTween(ef, {
		C0 = CFrame.new(-.5, -0.90, 0)
	}, "Quad", "InOut", 0.1)
	function AT1()
		aa = true;
		local c1 = 1;
		if aa == true and mememode == true then
			c1 = 5
		end;
		SetTween(ea, {
			C0 = af * CFrame.new(0, 0, 0) * angles(math.rad(20), math.rad(0), math.rad(-40))
		}, "Quad", "InOut", 0.2)
		SetTween(eb, {
			C0 = ag * CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(40))
		}, "Quad", "InOut", 0.2)
		SetTween(ec, {
			C0 = CFrame.new(1.5, 0.5, -.0) * angles(math.rad(30), math.rad(0), math.rad(0))
		}, "Quad", "InOut", 0.2)
		SetTween(ed, {
			C0 = CFrame.new(-1.5, 0.5, -.0) * angles(math.rad(30), math.rad(0), math.rad(0))
		}, "Quad", "InOut", 0.2)
		SetTween(ee, {
			C0 = CFrame.new(.5, -.6, -.4) * angles(math.rad(-20), math.rad(0), math.rad(0))
		}, "Quad", "InOut", 0.2)
		SetTween(ef, {
			C0 = CFrame.new(-.5, -1, 0) * angles(math.rad(20), math.rad(0), math.rad(20))
		}, "Quad", "InOut", 0.2)
		wait(.2 / c1)
		CFMagniDamage(RootPart.CFrame * CF(0, -1, -1), 7, 10, 20, 20, "Normal")
		SetTween(ea, {
			C0 = af * CFrame.new(0, -1, 0) * angles(math.rad(-40), math.rad(0), math.rad(40))
		}, "Back", "Out", 0.2)
		SetTween(eb, {
			C0 = ag * CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-40))
		}, "Back", "Out", 0.2)
		SetTween(ec, {
			C0 = CFrame.new(1.5, 0.5, -.0) * angles(math.rad(-30), math.rad(0), math.rad(0))
		}, "Back", "Out", 0.2)
		SetTween(ed, {
			C0 = CFrame.new(-1.5, 0.5, -.0) * angles(math.rad(-30), math.rad(0), math.rad(0))
		}, "Back", "Out", 0.2)
		SetTween(ee, {
			C0 = CFrame.new(.5, -1, 0) * angles(math.rad(120), math.rad(0), math.rad(0))
		}, "Back", "Out", 0.2)
		SetTween(ef, {
			C0 = CFrame.new(-.5, -1, 0) * angles(math.rad(-60), math.rad(0), math.rad(-20))
		}, "Back", "Out", 0.2)
		wait(.2 / c1)
		aa = false
	end;
	function AT2()
		aa = true;
		local c1 = 1;
		if aa == true and mememode == true then
			c1 = 5
		end;
		SetTween(ea, {
			C0 = af * CFrame.new(0, 0, 0) * angles(math.rad(-20), math.rad(0), math.rad(60))
		}, "Quad", "InOut", 0.2)
		SetTween(eb, {
			C0 = ag * CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-60))
		}, "Quad", "InOut", 0.2)
		SetTween(ec, {
			C0 = CFrame.new(1.5, 0.5, -.0) * angles(math.rad(0), math.rad(0), math.rad(0))
		}, "Quad", "InOut", 0.2)
		SetTween(ed, {
			C0 = CFrame.new(-1.5, 0.5, -.0) * angles(math.rad(90), math.rad(0), math.rad(0))
		}, "Quad", "InOut", 0.2)
		SetTween(ee, {
			C0 = CFrame.new(.5, -.5, -.4) * angles(math.rad(-20), math.rad(0), math.rad(0))
		}, "Quad", "InOut", 0.2)
		SetTween(ef, {
			C0 = CFrame.new(-.5, -1, 0) * angles(math.rad(-20), math.rad(0), math.rad(0))
		}, "Quad", "InOut", 0.2)
		CFMagniDamage(RootPart.CFrame * CF(0, 0, -1), 9, 10, 15, 0, "Normal")
		wait(.2 / c1)
		SetTween(ea, {
			C0 = af * CFrame.new(0, -1, 0) * angles(math.rad(0), math.rad(0), math.rad(-70))
		}, "Back", "Out", 0.2)
		SetTween(eb, {
			C0 = ag * CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(70))
		}, "Back", "Out", 0.2)
		SetTween(ec, {
			C0 = CFrame.new(1.5, 0.5, -.0) * angles(math.rad(0), math.rad(0), math.rad(0))
		}, "Back", "Out", 0.2)
		SetTween(ed, {
			C0 = CFrame.new(-1.5, 0.5, -.0) * angles(math.rad(0), math.rad(-20), math.rad(-90))
		}, "Back", "Out", 0.2)
		SetTween(ee, {
			C0 = CFrame.new(.5, -1, 0) * angles(math.rad(20), math.rad(0), math.rad(0))
		}, "Back", "Out", 0.2)
		SetTween(ef, {
			C0 = CFrame.new(-.5, -1, 0) * angles(math.rad(-20), math.rad(0), math.rad(0))
		}, "Back", "Out", 0.2)
		wait(.2 / c1)
		aa = false
	end;
	function AT3()
		aa = true;
		local c1 = 1;
		if aa == true and mememode == true then
			c1 = 5
		end;
		SetTween(ea, {
			C0 = af * CFrame.new(0, 0, 0) * angles(math.rad(-20), math.rad(0), math.rad(120))
		}, "Quad", "In", 0.2)
		SetTween(eb, {
			C0 = ag * CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-80))
		}, "Quad", "InOut", 0.2)
		SetTween(ec, {
			C0 = CFrame.new(1.5, 0.5, -.0) * angles(math.rad(90), math.rad(0), math.rad(20))
		}, "Quad", "InOut", 0.2)
		SetTween(ed, {
			C0 = CFrame.new(-1.5, 0.5, -.0) * angles(math.rad(20), math.rad(0), math.rad(0))
		}, "Quad", "InOut", 0.2)
		SetTween(ee, {
			C0 = CFrame.new(.5, -1, 0) * angles(math.rad(-20), math.rad(0), math.rad(0))
		}, "Quad", "InOut", 0.2)
		SetTween(ef, {
			C0 = CFrame.new(-.5, -.8, 0) * angles(math.rad(20), math.rad(0), math.rad(0))
		}, "Quad", "InOut", 0.2)
		wait(.2 / c1)
		CFMagniDamage(RootPart.CFrame * CF(-2, -.25, -1), 9, 20, 30, 10, "Knockdown")
		SetTween(ea, {
			C0 = af * CFrame.new(0, -1, 0) * angles(math.rad(20), math.rad(0), math.rad(0))
		}, "Back", "Out", 0.2)
		SetTween(eb, {
			C0 = ag * CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0))
		}, "Back", "Out", 0.2)
		SetTween(ec, {
			C0 = CFrame.new(1.5, 0.5, -.0) * angles(math.rad(0), math.rad(0), math.rad(90))
		}, "Back", "Out", 0.2)
		SetTween(ed, {
			C0 = CFrame.new(-1.5, 0.5, -.0) * angles(math.rad(20), math.rad(0), math.rad(0))
		}, "Back", "Out", 0.2)
		SetTween(ee, {
			C0 = CFrame.new(.5, -1, 0) * angles(math.rad(-40), math.rad(0), math.rad(0))
		}, "Back", "Out", 0.2)
		SetTween(ef, {
			C0 = CFrame.new(-.5, -1, 0) * angles(math.rad(0), math.rad(0), math.rad(0))
		}, "Back", "Out", 0.2)
		wait(.2 / c1)
		aa = false
	end;
	function AT4()
		aa = true;
		local c1 = 1;
		if aa == true and mememode == true then
			c1 = 5
		end;
		SetTween(ea, {
			C0 = af * CFrame.new(0, 0, 0) * angles(math.rad(-20), math.rad(0), math.rad(-80))
		}, "Quad", "InOut", 0.2)
		SetTween(eb, {
			C0 = ag * CFrame.new(0, 0, 0) * angles(math.rad(20), math.rad(0), math.rad(80))
		}, "Quad", "InOut", 0.2)
		SetTween(ec, {
			C0 = CFrame.new(1.5, 0.5, -.0) * angles(math.rad(0), math.rad(0), math.rad(0))
		}, "Quad", "InOut", 0.2)
		SetTween(ed, {
			C0 = CFrame.new(-1.5, 0.5, -.0) * angles(math.rad(-20), math.rad(-70), math.rad(-90))
		}, "Quad", "InOut", 0.2)
		SetTween(ee, {
			C0 = CFrame.new(.5, -1, -.0) * angles(math.rad(20), math.rad(0), math.rad(0))
		}, "Quad", "InOut", 0.2)
		SetTween(ef, {
			C0 = CFrame.new(-.5, -.5, -0.4) * angles(math.rad(20), math.rad(0), math.rad(0))
		}, "Quad", "InOut", 0.2)
		CFMagniDamage(RootPart.CFrame * CF(0, 0, -1), 9, 30, 45, 0, "Normal")
		so("3051417237", LeftArm, 3, math.random(100, 155) / 100)
		wait(0.2 / c1)
		SetTween(ea, {
			C0 = af * CFrame.new(0, -1, 0) * angles(math.rad(20), math.rad(0), math.rad(45))
		}, "Back", "Out", 0.2)
		SetTween(eb, {
			C0 = ag * CFrame.new(0, 0, 0) * angles(math.rad(-20), math.rad(0), math.rad(-45))
		}, "Back", "Out", 0.2)
		SetTween(ec, {
			C0 = CFrame.new(1.5, 0.5, -.0) * angles(math.rad(0), math.rad(0), math.rad(0))
		}, "Back", "Out", 0.2)
		SetTween(ed, {
			C0 = CFrame.new(-1.5, 0.5, -.0) * angles(math.rad(0), math.rad(0), math.rad(-90))
		}, "Back", "Out", 0.2)
		SetTween(ee, {
			C0 = CFrame.new(.5, -1, 0) * angles(math.rad(20), math.rad(0), math.rad(0))
		}, "Back", "Out", 0.2)
		SetTween(ef, {
			C0 = CFrame.new(-.5, -1, 0) * angles(math.rad(-10), math.rad(0), math.rad(0))
		}, "Back", "Out", 0.2)
		wait(.2 / c1)
		aa = false
	end;
	function AT5()
		aa = true;
		local c1 = 1;
		if aa == true and mememode == true then
			c1 = 5
		end;
		SetTween(ea, {
			C0 = af * CFrame.new(0, 0, 0) * angles(math.rad(-20), math.rad(0), math.rad(80))
		}, "Quad", "InOut", 0.2)
		SetTween(eb, {
			C0 = ag * CFrame.new(0, 0, 0) * angles(math.rad(20), math.rad(0), math.rad(-80))
		}, "Quad", "InOut", 0.2)
		SetTween(ec, {
			C0 = CFrame.new(1.5, 0.5, -.0) * angles(math.rad(-20), math.rad(70), math.rad(90))
		}, "Quad", "InOut", 0.2)
		SetTween(ed, {
			C0 = CFrame.new(-1.5, 0.5, -.0) * angles(math.rad(0), math.rad(0), math.rad(-90))
		}, "Quad", "InOut", 0.2)
		SetTween(ee, {
			C0 = CFrame.new(.5, -.5, -0.4) * angles(math.rad(20), math.rad(0), math.rad(0))
		}, "Quad", "InOut", 0.2)
		SetTween(ef, {
			C0 = CFrame.new(-.5, -1, 0) * angles(math.rad(20), math.rad(0), math.rad(0))
		}, "Quad", "InOut", 0.2)
		CFMagniDamage(RootPart.CFrame * CF(0, 0, -1), 9, 30, 45, 0, "Normal")
		so("3051417237", RightArm, 3, math.random(100, 155) / 80)
		wait(0.2 / c1)
		SetTween(ea, {
			C0 = af * CFrame.new(0, -1, 0) * angles(math.rad(20), math.rad(0), math.rad(-45))
		}, "Back", "Out", 0.2)
		SetTween(eb, {
			C0 = ag * CFrame.new(0, 0, 0) * angles(math.rad(-20), math.rad(0), math.rad(45))
		}, "Back", "Out", 0.2)
		SetTween(ec, {
			C0 = CFrame.new(1.5, 0.5, -.0) * angles(math.rad(0), math.rad(0), math.rad(90))
		}, "Back", "Out", 0.2)
		SetTween(ed, {
			C0 = CFrame.new(-1.5, 0.5, -.0) * angles(math.rad(0), math.rad(0), math.rad(0))
		}, "Back", "Out", 0.2)
		SetTween(ee, {
			C0 = CFrame.new(.5, -1, 0) * angles(math.rad(-10), math.rad(0), math.rad(0))
		}, "Back", "Out", 0.2)
		SetTween(ef, {
			C0 = CFrame.new(-.5, -1, 0) * angles(math.rad(20), math.rad(0), math.rad(0))
		}, "Back", "Out", 0.2)
		wait(.2 / c1)
		aa = false
	end;
	function AT6()
		aa = true;
		local c1 = 1;
		if aa == true and mememode == true then
			c1 = 5
		end;
		SetTween(ea, {
			C0 = af * CFrame.new(0, -1, -.3) * angles(math.rad(45), math.rad(0), math.rad(0))
		}, "Quad", "Out", 0.3)
		SetTween(eb, {
			C0 = ag * CFrame.new(0, 0, 0) * angles(math.rad(-20), math.rad(0), math.rad(0))
		}, "Quad", "Out", 0.3)
		SetTween(ec, {
			C0 = CFrame.new(1.1, 0.5, -.3) * angles(math.rad(20), math.rad(115), math.rad(90))
		}, "Quad", "In", 0.15)
		SetTween(ed, {
			C0 = CFrame.new(-1.1, 0.5, -.3) * angles(math.rad(20), math.rad(-115), math.rad(-90))
		}, "Quad", "In", 0.15)
		SetTween(ee, {
			C0 = CFrame.new(.5, -1, 0) * angles(math.rad(-60), math.rad(0), math.rad(0))
		}, "Quad", "Out", 0.2)
		SetTween(ef, {
			C0 = CFrame.new(-.5, -1, 0) * angles(math.rad(60), math.rad(0), math.rad(0))
		}, "Quad", "Out", 0.3)
		so("3051417237", Torso, 3, math.random(140, 185) / 80)
		CFMagniDamage(RootPart.CFrame * CF(-1.4, 0, -1), 9, 40, 55, 10, "Knockdown")
		CFMagniDamage(RootPart.CFrame * CF(1.4, 0, -1), 9, 40, 55, 10, "Knockdown")
		wait(0.175 / c1)
		SetTween(ea, {
			C0 = af * CFrame.new(0, -1.7, -.4) * angles(math.rad(45), math.rad(0), math.rad(0))
		}, "Back", "Out", 0.2)
		SetTween(eb, {
			C0 = ag * CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0))
		}, "Back", "Out", 0.2)
		SetTween(ec, {
			C0 = CFrame.new(1.5, 0.5, -.0) * angles(math.rad(0), math.rad(0), math.rad(90))
		}, "Back", "Out", 0.2)
		SetTween(ed, {
			C0 = CFrame.new(-1.5, 0.5, -.0) * angles(math.rad(0), math.rad(0), math.rad(-90))
		}, "Back", "Out", 0.2)
		SetTween(ee, {
			C0 = CFrame.new(.5, -1, 0) * angles(math.rad(0), math.rad(0), math.rad(0))
		}, "Back", "Out", 0.2)
		SetTween(ef, {
			C0 = CFrame.new(-.5, -1, 0) * angles(math.rad(65), math.rad(0), math.rad(0))
		}, "Back", "Out", 0.2)
		wait(.2 / c1)
		aa = false
	end;
	function AT7()
		aa = true;
		local c1 = 1;
		if aa == true and mememode == true then
			c1 = 5
		end;
		so("3051417237", Torso, 3, .8)
		coroutine.resume(coroutine.create(function()
			for bg = 1, 2 do
				Swait(3)
				so("3051417087", RightArm, 3, math.random(100, 155) / 100)
			end
		end))
		for bg = 1, 10, 1 do
			SetTween(ea, {
				C0 = af * CFrame.new(0, -1.7 + .17 * bg, -.4) * angles(math.rad(25 - 5 * bg), math.rad(0), math.rad(36 * bg))
			}, "Quad", "Out", 0.1)
			SetTween(eb, {
				C0 = ag * CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0))
			}, "Quad", "Out", 0.2)
			SetTween(ec, {
				C0 = CFrame.new(1.5, 0.5, -.0) * angles(math.rad(180), math.rad(0), math.rad(90))
			}, "Quad", "Out", 0.2)
			SetTween(ed, {
				C0 = CFrame.new(-1.5, 0.5, -.0) * angles(math.rad(0), math.rad(0), math.rad(-90))
			}, "Quad", "Out", 0.2)
			SetTween(ee, {
				C0 = CFrame.new(.5, -1, 0) * angles(math.rad(-25), math.rad(0), math.rad(0))
			}, "Quad", "Out", 0.2)
			SetTween(ef, {
				C0 = CFrame.new(-.5, -1, 0) * angles(math.rad(25), math.rad(0), math.rad(0))
			}, "Quad", "Out", 0.2)
			CFMagniDamage(RootPart.CFrame * CF(1.4, 0, -1 + .17 * bg), 9, 10, 15, 10, "Knockdown")
			Swait()
		end;
		aa = false
	end;
	function joke()
	end;
	function Attack1()
		aa = true;
		Humanoid.JumpPower = 0;
		Humanoid.WalkSpeed = 0.1;
		so("299058146", RightArm, 2, 2.5)
		SetTween(ea, {
			C0 = af * CFrame.new(0, 0, 0) * angles(math.rad(20), math.rad(0), math.rad(-20))
		}, "Back", "Out", 0.6)
		SetTween(eb, {
			C0 = ag * CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(20))
		}, "Back", "Out", 0.6)
		SetTween(ec, {
			C0 = CFrame.new(1.5, 0.5, -.0) * angles(math.rad(-10), math.rad(0), math.rad(20))
		}, "Back", "Out", 0.6)
		SetTween(ed, {
			C0 = CFrame.new(-1.5, 0.5, -.0) * angles(math.rad(0), math.rad(0), math.rad(-20))
		}, "Back", "Out", 0.6)
		SetTween(ee, {
			C0 = CFrame.new(.5, -1, 0) * angles(math.rad(-20), math.rad(0), math.rad(0))
		}, "Back", "Out", 0.6)
		SetTween(ef, {
			C0 = CFrame.new(-.5, -1, 0) * angles(math.rad(20), math.rad(0), math.rad(0))
		}, "Back", "Out", 0.6)
		Swait(.2 * 30)
		coroutine.resume(coroutine.create(function()
			local e5 = Instance.new("Attachment", RightArm)
			e5.Orientation = Vector3.new(0, 0, 0)
			e5.Position = Vector3.new(0, -1, 0)
			local e6 = EffectPack.Spark:Clone()
			e6.Parent = e5;
			e6:Emit(1)
			game:GetService("Debris"):AddItem(e5, 2)
		end))
		local eg = Instance.new("Part")
		eg.Reflectance = 0;
		eg.Transparency = 1;
		eg.CanCollide = false;
		eg.Locked = true;
		eg.Anchored = false;
		eg.BrickColor = BrickColor.new("Really blue")
		eg.Name = "BHandle"
		eg.Size = Vector3.new(2.5, 1, 2.5)
		eg.Material = "SmoothPlastic"
		eg:BreakJoints()
		eg.Parent = Effects;
		eg.CFrame = RootPart.CFrame;
		eg.Massless = false;
		local eh = weld(eg, RootPart, eg, cf(0, 0, -3) * angles(math.rad(0), math.rad(0), math.rad(0)))
		local ei = false;
		local function ej(ek)
			if ei == false then
				local dF = ek.Parent;
				local dz = ek.Parent:FindFirstChild("Humanoid")
				for e, S in pairs(ek.Parent:children()) do
					if S:IsA("Humanoid") then
						dz = S
					end
				end;
				local dY = dF:FindFirstChild("Torso") or dF:FindFirstChild("UpperTorso")
				local el = dF:FindFirstChild("Head")
				if dz ~= nil and dY ~= nil and el ~= nil then
					ei = true;
					coroutine.resume(coroutine.create(function()
						eg:Destroy()
					end))
					local em = Instance.new("Part")
					em.Reflectance = 0;
					em.Transparency = 1;
					em.CanCollide = false;
					em.Locked = true;
					em.Anchored = true;
					em.BrickColor = BrickColor.new("Really blue")
					em.Name = "FHandle"
					em.Size = Vector3.new(1, 1, 1)
					em.Material = "SmoothPlastic"
					em:BreakJoints()
					em.Parent = Effects;
					em.CFrame = RootPart.CFrame;
					em.Massless = false;
					local en = joint(em, RootPart, em, cf())
					local eo = 25 - 4.5 * 1;
					local e5 = Instance.new("Attachment", RightArm)
					e5.Orientation = Vector3.new(0, 0, 0)
					e5.Position = Vector3.new(0, -1, 0)
					local e6 = EffectPack.UpperCutSmoke:Clone()
					e6.Parent = e5;
					e6.Enabled = true;
					game:GetService("Debris"):AddItem(e5, 5)
					so("231917750", Torso, 2, 0.9)
					for bg = 1, 10, 0.4 do
						SetTween(ea, {
							C0 = af * CFrame.new(-0.5 * math.sin(bg), 0.5 * math.cos(bg), 0) * angles(math.rad(25 - 4.5 * bg), math.rad(0), math.rad(36 * bg * 2))
						}, "Quad", "InOut", 0.05)
						SetTween(eb, {
							C0 = ag * CFrame.new(0, 0, 0) * angles(math.rad(20), math.rad(0), math.rad(-80))
						}, "Quad", "InOut", 0.15)
						SetTween(ec, {
							C0 = CFrame.new(1.5, 0.65, -.0) * angles(math.rad(160 + 2 * bg), math.rad(0), math.rad(30 - 3 * bg))
						}, "Quad", "Out", 0.15)
						SetTween(ed, {
							C0 = CFrame.new(-1.5, 0.5, -.0) * angles(math.rad(0), math.rad(0), math.rad(0))
						}, "Quad", "Out", 0.15)
						SetTween(ee, {
							C0 = CFrame.new(.5, -1, 0) * angles(math.rad(0 + 6.5 * bg), math.rad(0), math.rad(0))
						}, "Quad", "InOut", 0.15)
						SetTween(ef, {
							C0 = CFrame.new(-.5, -1, 0) * angles(math.rad(0 - 6.5 * bg), math.rad(0), math.rad(0))
						}, "Quad", "InOut", 0.15)
						SetTween(en, {
							C0 = CFrame.new(0, -bg * 2, bg / 2)
						}, "Quad", "InOut", 0.05)
						eo = eo + 75;
						if eo > 180 then
							eo = -180;
							print(1)
						end;
						if eo > -45 and eo < 45 then
							BulletHitEffectSpawn(dY.CFrame, "ShockWave")
							so("471882019", dY, 3, 2.5)
						end;
						Swait()
					end;
					e6.Enabled = false;
					coroutine.resume(coroutine.create(function()
						local e5 = Instance.new("Attachment", RightArm)
						e5.Orientation = Vector3.new(0, 0, 0)
						e5.Position = Vector3.new(0, -1, 0)
						local e6 = EffectPack.Spark:Clone()
						e6.Parent = e5;
						e6:Emit(1)
						game:GetService("Debris"):AddItem(e5, 2)
					end))
					coroutine.resume(coroutine.create(function()
						local e5 = Instance.new("Attachment", LeftArm)
						e5.Orientation = Vector3.new(0, 0, 0)
						e5.Position = Vector3.new(0, -1, 0)
						local e6 = EffectPack.Spark:Clone()
						e6.Parent = e5;
						e6:Emit(1)
						game:GetService("Debris"):AddItem(e5, 2)
					end))
					so("782353117", Torso, 2, 0.9)
					so("588738949", RightArm, 3, math.random(90, 110) / 100)
					so("588738949", LeftArm, 3, math.random(90, 110) / 100)
					SetTween(ea, {
						C0 = af * CFrame.new(0, 0, 0) * angles(math.rad(-65), math.rad(0), math.rad(0))
					}, "Back", "Out", 0.3)
					SetTween(eb, {
						C0 = ag * CFrame.new(0, 0, 0) * angles(math.rad(65), math.rad(0), math.rad(0))
					}, "Back", "Out", 0.3)
					SetTween(ec, {
						C0 = CFrame.new(1.5, 0.5, -.0) * angles(math.rad(90), math.rad(0), math.rad(90))
					}, "Back", "Out", 0.3)
					SetTween(ed, {
						C0 = CFrame.new(-1.5, 0.5, -.0) * angles(math.rad(90), math.rad(0), math.rad(-90))
					}, "Back", "Out", 0.3)
					SetTween(ee, {
						C0 = CFrame.new(.5, -.7, -.2) * angles(math.rad(-40), math.rad(0), math.rad(0))
					}, "Back", "Out", 0.3)
					SetTween(ef, {
						C0 = CFrame.new(-.5, -1, 0) * angles(math.rad(-30), math.rad(0), math.rad(0))
					}, "Back", "Out", 0.3)
					SetTween(en, {
						C0 = CFrame.new(0, -30, 5)
					}, "Back", "Out", 0.6)
					for bg = 1, 3 do
						Swait(0.1 * 30)
					end;
					so("231917750", Torso, 5, 0.9)
					local e9 = Instance.new("Attachment", Torso)
					e9.Orientation = Vector3.new(0, 0, 0)
					e9.Position = Vector3.new(0, 0, 0)
					local e7 = EffectPack.SmashSmoke:Clone()
					e7.Parent = e9;
					e7.Enabled = true;
					game:GetService("Debris"):AddItem(e9, 7)
					coroutine.resume(coroutine.create(function()
						local ep = dF.Parent;
						dF.Parent = Effects;
						local eq, er, es = rayCast(Torso.Position, CFrame.new(Torso.Position, (RootPart.CFrame * CF(0, -4, -10)).p).lookVector, 54, Character)
						dF.Parent = ep
					end))
					coroutine.resume(coroutine.create(function()
						Swait(0.3 * 30)
					end))
					SetTween(en, {
						C0 = CFrame.new(0, 0, 27)
					}, "Quad", "In", 0.3)
					SetTween(ea, {
						C0 = af * CFrame.new(0, 0, -.5) * angles(math.rad(85), math.rad(0), math.rad(0))
					}, "Quad", "Out", 0.2)
					SetTween(eb, {
						C0 = ag * CFrame.new(0, 0, 0) * angles(math.rad(-65), math.rad(0), math.rad(0))
					}, "Back", "Out", 0.2)
					SetTween(ec, {
						C0 = CFrame.new(1.5, 0.5, -.0) * angles(math.rad(130), math.rad(0), math.rad(0))
					}, "Back", "Out", 0.2)
					SetTween(ed, {
						C0 = CFrame.new(-1.5, 0.5, -.0) * angles(math.rad(130), math.rad(0), math.rad(0))
					}, "Back", "Out", 0.2)
					SetTween(ee, {
						C0 = CFrame.new(.5, -1, 0) * angles(math.rad(-25), math.rad(0), math.rad(0))
					}, "Back", "Out", 0.2)
					SetTween(ef, {
						C0 = CFrame.new(-.5, -1, 0) * angles(math.rad(-25), math.rad(0), math.rad(0))
					}, "Back", "Out", 0.2)
					Swait(0.3 * 30)
					e7.Enabled = false;
					SetTween(ea, {
						C0 = af * CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0))
					}, "Quad", "Out", 0.25)
					SetTween(eb, {
						C0 = ag * CFrame.new(0, 0, 0) * angles(math.rad(35), math.rad(0), math.rad(0))
					}, "Back", "Out", 0.25)
					SetTween(ec, {
						C0 = CFrame.new(1.5, 0.5, -.0) * angles(math.rad(30), math.rad(0), math.rad(30))
					}, "Back", "Out", 0.25)
					SetTween(ed, {
						C0 = CFrame.new(-1.5, 0.5, -.0) * angles(math.rad(30), math.rad(0), math.rad(-30))
					}, "Back", "Out", 0.25)
					SetTween(ee, {
						C0 = CFrame.new(.5, -1, 0) * angles(math.rad(10), math.rad(0), math.rad(0))
					}, "Back", "Out", 0.25)
					SetTween(ef, {
						C0 = CFrame.new(-.5, -1, 0) * angles(math.rad(-10), math.rad(0), math.rad(0))
					}, "Back", "Out", 0.25)
					Swait(0.25 * 30)
					em:Destroy()
					aa = false
				end
			end
		end;
		local et = eg.Touched:connect(ej)
		Swait(.5 * 30)
		if eg.Parent == Effects then
			et:disconnect()
			eg:Destroy()
			aa = false
		end;
		while true do
			Swait()
			if aa == false then
				break
			end
		end;
		print("aaaaaaaaaaaaaaaaaa")
		et:disconnect()
		Humanoid.JumpPower = 60;
		Humanoid.WalkSpeed = 16
	end;
	function Attack6()
		for bg, S in pairs(GatherAllInstances(Effects)) do
			if S.Name == "Zombie" then
				S.Parent:Destroy()
			end
		end
	end;
	function ClickCombo()
		if not workspace:FindFirstChild('non') then
			return
		end;
		if a1 == "Fall" or a1 == "Jump" then
			if Combo == 0 then
			end
		else
			if a0 == false then
				if Combo == 0 then
					AT1()
					Combo = 1
				elseif Combo == 1 then
					AT2()
					Combo = 2
				elseif Combo == 2 then
					AT3()
					Combo = 0
				elseif Combo == 3 then
					Combo = 0;
					ClickCombo()
				end
			else
				if Combo == 0 then
					AT4()
					Combo = 1
				elseif Combo == 1 then
					AT5()
					Combo = 2
				elseif Combo == 2 then
					AT6()
					Combo = 3
				elseif Combo == 3 then
					AT7()
					Combo = 0
				end
			end
		end
	end;
	local eu = false;
	Button1DownF = function()
		eu = true;
		while eu == true do
			if aa == false then
				ClickCombo()
			else
			end;
			Swait()
		end
	end;
	R:GetMouse().Button1Down:Connect(Button1DownF)
	Button1UpF = function()
		if eu == true then
			eu = false
		end
	end;
	R:GetMouse().Button1Up:Connect(Button1UpF)
	KeyUpF = function(ev)
	end;
	KeyDownF = function(ev)
	end;
	coroutine.resume(coroutine.create(function()
		while workspace.non do
			a4 = a4 + a5;
			hitfloor = rayCast(RootPart.Position, CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0)).lookVector, 4, Character)
			if Character:FindFirstChild("Sound") then
				Character:FindFirstChild("Sound"):Destroy()
			end;
			local ew = (game.Players.LocalPlayer.Character.Humanoid.MoveDirection * Vector3.new(1, 0, 1)).magnitude;
			local ex = RootPart.Velocity.y;
			if RootPart.Velocity.y > 1 and hitfloor == nil then
				a1 = "Jump"
			elseif RootPart.Velocity.y < -1 and hitfloor == nil then
				a1 = "Fall"
			elseif Humanoid.Sit == true then
				a1 = "Sit"
			elseif ew < .5 and hitfloor ~= nil then
				a1 = "Idle"
			elseif ew > .5 and hitfloor ~= nil then
				a1 = "Walk"
			else
				a1 = ""
			end;
			local ey = RootPart.CFrame;
			local ez = Humanoid.MoveDirection * ey.LookVector;
			local eA = Humanoid.MoveDirection * ey.RightVector;
			ah = ez.X + ez.Z;
			ai = eA.X + eA.Z;
			coroutine.resume(coroutine.create(function()
				if al.Parent == nil or al == nil then
					al = an:Clone()
					al.Parent = Torso;
					al.Name = "BGMusic"
					al.Pitch = 1;
					al.Volume = 1.5;
					al.Looped = true;
					al.archivable = false;
					al.TimePosition = lastsongpos;
					if playsong == true then
						al:play()
					elseif playsong == false then
						al:stop()
					end
				else
					lastsongpos = al.TimePosition;
					al.Pitch = 1;
					al.Volume = 1.5;
					al.Looped = true;
					al.SoundId = ak;
					al.EmitterSize = 30
				end
			end))
			a2 = ew * 1;
			if a2 > 30 then
				a2 = 30
			end;
			a2 = a2 / 50 * 2;
			if aa == false then
				if a1 == "Jump" then
					a5 = 0.60 * 2;
					SetTween(ea, {
						C0 = af * aj(0, 0 + 0.0395 / 2 * math.cos(a4 / 8), -0.1 + 0.0395 * math.cos(a4 / 8)) * angles(math.rad(-6.5 - 1.5 * math.cos(a4 / 8)) + a2 * ah / 2, math.rad(0) - a2 * ai / 2, math.rad(0))
					}, "Quad", "Out", 0.25)
					SetTween(eb, {
						C0 = ag * CFrame.new(0, 0, 0) * angles(math.rad(-26.5 + 2.5 * math.cos(a4 / 8)), math.rad(0), math.rad(0))
					}, "Quad", "Out", 0.25)
					SetTween(ec, {
						C0 = cf(1.4 + .05 * math.cos(a4 / 8), 0.5 + .05 * math.cos(a4 / 8), .0) * angles(math.rad(140 - 2 * math.cos(a4 / 8)), math.rad(-5), math.rad(8 + 4 * math.cos(a4 / 8)))
					}, "Quad", "Out", 0.2)
					SetTween(ed, {
						C0 = cf(-1.4 + .05 * math.cos(a4 / 8), 0.5 + .05 * math.cos(a4 / 8), .0) * angles(math.rad(140 - 2 * math.cos(a4 / 8)), math.rad(5), math.rad(-8 - 4 * math.cos(a4 / 8)))
					}, "Quad", "Out", 0.2)
					SetTween(ee, {
						C0 = CFrame.new(.5, -0.85 + .05 * math.cos(a4 / 15), -.2) * CFrame.Angles(math.rad(-15 - 1 * math.cos(a4 / 10)), math.rad(0), math.rad(0))
					}, "Quad", "InOut", 0.075)
					SetTween(ef, {
						C0 = CFrame.new(-.5, -0.35 + .05 * math.cos(a4 / 15), -.4) * CFrame.Angles(math.rad(-25 + 1 * math.cos(a4 / 10)), math.rad(0), math.rad(0))
					}, "Quad", "InOut", 0.075)
				elseif a1 == "Fall" then
					a5 = 0.60 * 2;
					SetTween(ea, {
						C0 = af * aj(0, 0 + 0.0395 / 2 * math.cos(a4 / 8), -0.5 + 0.0395 * math.cos(a4 / 8)) * angles(math.rad(5.5 - 1.5 * math.cos(a4 / 8)) - a2 * ah / 2, math.rad(0) + a2 * ai / 2, math.rad(0))
					}, "Quad", "Out", 0.35)
					SetTween(eb, {
						C0 = ag * CFrame.new(0, 0, 0) * angles(math.rad(26.5 + 2.5 * math.cos(a4 / 8)), math.rad(0), math.rad(0))
					}, "Quad", "Out", 0.25)
					SetTween(ec, {
						C0 = cf(1.4 + .05 * math.cos(a4 / 8), 0.5 + .05 * math.cos(a4 / 8), .0) * angles(math.rad(105 - 2 * math.cos(a4 / 8)), math.rad(-15), math.rad(80 + 4 * math.cos(a4 / 8)))
					}, "Quad", "Out", 0.2)
					SetTween(ed, {
						C0 = cf(-1.4 + .05 * math.cos(a4 / 8), 0.5 + .05 * math.cos(a4 / 8), .0) * angles(math.rad(105 - 2 * math.cos(a4 / 8)), math.rad(15), math.rad(-80 - 4 * math.cos(a4 / 8)))
					}, "Quad", "Out", 0.2)
					SetTween(ee, {
						C0 = CFrame.new(.5, -0.15 + .05 * math.cos(a4 / 15), -.4) * CFrame.Angles(math.rad(-15 - 1 * math.cos(a4 / 10)), math.rad(0), math.rad(0))
					}, "Quad", "InOut", 0.1)
					SetTween(ef, {
						C0 = CFrame.new(-.5, -0.55 + .05 * math.cos(a4 / 15), -.4) * CFrame.Angles(math.rad(0 + 1 * math.cos(a4 / 10)), math.rad(0), math.rad(0))
					}, "Quad", "InOut", 0.1)
				elseif a1 == "Idle" then
					local c1 = 1;
					if aa == true and mememode == true then
						c1 = 5
					end;
					if a0 == false then
						a5 = 0.60 * 1.75 * c1;
						Humanoid.JumpPower = 60;
						Humanoid.WalkSpeed = 16;
						local eB = 0;
						SetTween(ea, {
							C0 = af * aj(0, 0, -0.1 + 0.0395 * math.cos(a4 / 8 + eB * math.cos(a4 / 8 * 2))) * angles(math.rad(1.5 - 1 * math.cos(a4 / 8)), math.rad(0 + 0 * math.cos(a4 / 8) / 20), math.rad(-20))
						}, "Quad", "InOut", 0.1)
						SetTween(eb, {
							C0 = ag * angles(math.rad(6.5 - 3.5 * math.sin(a4 / 8 + eB * math.cos(a4 / 8 * 2))), math.rad(2.5 - 5.5 * math.cos(a4 / 16)), math.rad(20 - 6.5 * math.cos(a4 / 15 + .4 * math.cos(a4 / 10))))
						}, "Quad", "InOut", 0.1)
						SetTween(ec, {
							C0 = cf(1.45 + .0 * math.cos(a4 / 8), 0.5 + .05 * math.cos(a4 / 8), .0) * angles(math.rad(0 + 3 * math.sin(a4 / 8)), math.rad(-5), math.rad(4 + 4 * math.cos(a4 / 8)))
						}, "Quad", "Out", 0.2)
						SetTween(ed, {
							C0 = cf(-1.45 + .0 * math.cos(a4 / 8), 0.5 + .05 * math.cos(a4 / 8), .0) * angles(math.rad(0 + 3 * math.sin(a4 / 8)), math.rad(5), math.rad(-4 - 4 * math.cos(a4 / 8)))
						}, "Quad", "Out", 0.2)
						SetTween(ee, {
							C0 = CFrame.new(.5, -0.95 - .04 * math.cos(a4 / 8 + eB * math.cos(a4 / 8 * 2)), 0) * CFrame.Angles(math.rad(1.5 - 1 * math.cos(a4 / 8)), math.rad(0), math.rad(2.5 - 0.0 * math.cos(a4 / 8)))
						}, "Quad", "InOut", 0.1)
						SetTween(ef, {
							C0 = CFrame.new(-.5, -0.95 - .04 * math.cos(a4 / 8 + eB * math.cos(a4 / 8 * 2)), 0) * CFrame.Angles(math.rad(1.5 - 1 * math.cos(a4 / 8)), math.rad(20), math.rad(-2.5 - 0.0 * math.cos(a4 / 8)))
						}, "Quad", "InOut", 0.1)
					else
						a5 = 0.60 * 1.75 * c1;
						Humanoid.JumpPower = 60;
						Humanoid.WalkSpeed = 16;
						local eB = 0;
						SetTween(ea, {
							C0 = af * aj(0, 0, -0.1 + 0.0395 * math.cos(a4 / 8 + eB * math.cos(a4 / 8 * 2))) * angles(math.rad(10.5 - 1 * math.cos(a4 / 8)), math.rad(0 + 0 * math.cos(a4 / 8) / 20), math.rad(-5))
						}, "Quad", "InOut", 0.1)
						SetTween(eb, {
							C0 = ag * angles(math.rad(-6.5 - 3.5 * math.sin(a4 / 8 + eB * math.cos(a4 / 8 * 2))), math.rad(2.5 - 5.5 * math.cos(a4 / 16)), math.rad(5 - 6.5 * math.cos(a4 / 15 + .4 * math.cos(a4 / 10))))
						}, "Quad", "InOut", 0.1)
						SetTween(ec, {
							C0 = cf(1.45 + .0 * math.cos(a4 / 8), 0.5 + .05 * math.cos(a4 / 8), .0) * angles(math.rad(10 + 3 * math.sin(a4 / 8)), math.rad(25), math.rad(40 + 4 * math.cos(a4 / 8)))
						}, "Quad", "Out", 0.2)
						SetTween(ed, {
							C0 = cf(-1.45 + .0 * math.cos(a4 / 8), 0.5 + .05 * math.cos(a4 / 8), .0) * angles(math.rad(10 + 3 * math.sin(a4 / 8)), math.rad(-25), math.rad(-40 - 4 * math.cos(a4 / 8)))
						}, "Quad", "Out", 0.2)
						SetTween(ee, {
							C0 = CFrame.new(.5, -0.95 - .04 * math.cos(a4 / 8 + eB * math.cos(a4 / 8 * 2)), 0) * CFrame.Angles(math.rad(20.5 - 1 * math.cos(a4 / 8)), math.rad(0), math.rad(2.5 - 0.0 * math.cos(a4 / 8)))
						}, "Quad", "InOut", 0.1)
						SetTween(ef, {
							C0 = CFrame.new(-.5, -0.95 - .04 * math.cos(a4 / 8 + eB * math.cos(a4 / 8 * 2)), 0) * CFrame.Angles(math.rad(1.5 - 1 * math.cos(a4 / 8)), math.rad(20), math.rad(-2.5 - 0.0 * math.cos(a4 / 8)))
						}, "Quad", "InOut", 0.1)
					end
				elseif a1 == "Walk" then
					if a0 == false then
						local eC = 1.0;
						if mememode == true then
							eC = 4
						end;
						a5 = 2.4 * eC;
						Humanoid.JumpPower = 60 * eC;
						Humanoid.WalkSpeed = 16 * eC;
						local eD = cf(-ai / 7 * math.cos(a4 / 8), 0, ah / 7 * math.cos(a4 / 8)) * angles(math.rad(-ah * 30) * math.cos(a4 / 8), 0, math.rad(-ai * 30) * math.cos(a4 / 8))
						local eE = cf(ai / 7 * math.cos(a4 / 8), 0, -ah / 7 * math.cos(a4 / 8)) * angles(math.rad(ah * 30) * math.cos(a4 / 8), 0, math.rad(ai * 30) * math.cos(a4 / 8))
						SetTween(ea, {
							C0 = af * CFrame.new(0, 0, -0.05 + 0.055 * math.cos(a4 / 4) + -math.sin(a4 / 4) / 8) * angles(math.rad((ah * 2 - ah * math.cos(a4 / 4)) * 7), math.rad((-ai * 2 - -ai * math.cos(a4 / 4)) * 5), math.rad(8 * math.cos(a4 / 8)))
						}, "Linear", "InOut", WalkAnimMove / eC)
						SetTween(eb, {
							C0 = ag * CFrame.new(0, 0, 0 + 0.025 * math.cos(a4 / 4)) * angles(math.rad((-ah * 1 - -ah * math.cos(a4 / 4)) * 7), math.rad((ai * 2 - ai * math.cos(a4 / 4)) * 3.5), math.rad(-ai * 45 + -8 * math.cos(a4 / 8)))
						}, "Linear", "InOut", WalkAnimMove / eC)
						SetTween(ec, {
							C0 = cf(1.45 + .0 * math.cos(a4 / 8), 0.5 + ai / 50 * math.cos(a4 / 8), 0) * angles(math.rad(0 + ah * 15 * math.cos(a4 / 8)), math.rad(0), math.rad(8 + ai * 5 * math.cos(a4 / 8)))
						}, "Linear", "Out", WalkAnimMove / eC)
						SetTween(ed, {
							C0 = cf(-1.45 + .0 * math.cos(a4 / 8), 0.5 + ai / 50 * math.cos(a4 / 8), 0) * angles(math.rad(0 - ah * 15 * math.cos(a4 / 8)), math.rad(0), math.rad(-8 - ai * 5 * math.cos(a4 / 8)))
						}, "Linear", "Out", WalkAnimMove / eC)
						SetTween(ee, {
							C0 = CFrame.new(.5, -0.85 + .15 * math.sin(a4 / 8), -.15 + .15 * math.cos(a4 / 8)) * eD * CFrame.Angles(math.rad(0 - 5 * math.cos(a4 / 8)), math.rad(0), math.rad(2.5 - 0.0 * math.cos(a4 / 8)))
						}, "Linear", "InOut", WalkAnimMove / eC)
						SetTween(ef, {
							C0 = CFrame.new(-.5, -0.85 - .15 * math.sin(a4 / 8), -.15 - .15 * math.cos(a4 / 8)) * eE * CFrame.Angles(math.rad(0 + 5 * math.cos(a4 / 8)), math.rad(0), math.rad(-2.5 - 0.0 * math.cos(a4 / 8)))
						}, "Linear", "InOut", WalkAnimMove / eC)
					else
						local eC = 1.6;
						if mememode == true then
							eC = 4
						end;
						a5 = 2.5 * eC;
						Humanoid.JumpPower = 60 * eC;
						Humanoid.WalkSpeed = 22 * eC;
						local eD = cf(-ai / 7 * math.cos(a4 / 8), 0, ah / 7 * math.cos(a4 / 8)) * angles(math.rad(ah * 89) * math.cos(a4 / 8), mr(-ai * 55 / 2 * math.cos(a4 / 8)), math.rad(ai * 55 / 1 * math.cos(a4 / 8)))
						local eE = cf(ai / 7 * math.sin(a4 / 8), 0, -ah / 7 * math.cos(a4 / 8)) * angles(math.rad(ah * 89) * math.cos(a4 / 8), mr(ai * 55 / 2 * math.sin(a4 / 8)), math.rad(-ai * 55 / 1 * math.sin(a4 / 8)))
						SetTween(ea, {
							C0 = af * CFrame.new(ai * 1 * math.sin(a4 / 8), ah * 1 * math.sin(a4 / 8), -0.5 - 0.255 * math.cos(a4 / 8) + -math.sin(a4 / 8) / 8) * angles(math.rad(85 + ah * math.cos(a4 / 8) * 20), math.rad(-ai * math.cos(a4 / 4) * 1), math.rad(-ai * math.cos(a4 / 8) * 10))
						}, "Linear", "InOut", WalkAnimMove / eC)
						SetTween(eb, {
							C0 = ag * CFrame.new(0, 0, 0 + 0.025 * math.cos(a4 / 4)) * angles(math.rad(-20 + (-ah * 1 - -ah * math.cos(a4 / 4)) * 5), math.rad((ai * 2 - ai * math.cos(a4 / 4)) * 3.5), math.rad(-ai * 45 + -8 * math.cos(a4 / 8)))
						}, "Linear", "InOut", WalkAnimMove / eC)
						SetTween(ec, {
							C0 = cf(1.0 + .0 * math.cos(a4 / 8), .5 - ah * 0.5 * math.sin(a4 / 8), -.4) * angles(math.rad(95 - ah * 75 * math.sin(a4 / 8)), math.rad(0), math.rad(-8 + -ai * 55 * math.sin(a4 / 8) + 10 * math.cos(a4 / 8)))
						}, "Linear", "Out", WalkAnimMove / eC)
						SetTween(ed, {
							C0 = cf(-1.0 + .0 * math.cos(a4 / 8), .5 - ah * 0.5 * math.sin(a4 / 8), -.4) * angles(math.rad(95 - ah * 75 * math.sin(a4 / 8)), math.rad(0), math.rad(8 + ai * 55 * math.cos(a4 / 8) - 10 * math.cos(a4 / 8)))
						}, "Linear", "Out", WalkAnimMove / eC)
						SetTween(ee, {
							C0 = CFrame.new(.5, -0.85 - .25 * math.sin(a4 / 8), -.15 - .25 * math.sin(a4 / 8)) * eD * CFrame.Angles(math.rad(60 - 5 * math.cos(a4 / 8)), math.rad(0), math.rad(-2.5 - 0.0 * math.cos(a4 / 8)))
						}, "Linear", "InOut", WalkAnimMove / eC)
						SetTween(ef, {
							C0 = CFrame.new(-.5, -0.85 - .25 * math.sin(a4 / 8), -.15 - .25 * math.sin(a4 / 8)) * eE * CFrame.Angles(math.rad(60 - 5 * math.sin(a4 / 8)), math.rad(0), math.rad(2.5 - 0.0 * math.sin(a4 / 8)))
						}, "Linear", "InOut", WalkAnimMove / eC)
						SetTween(tailw, {
							C0 = CF(0, 0, .3) * ANGLES(mr(90 + 10 * math.cos(a4 / 8)), 0, mr(20 * math.cos(a4 / 16)))
						}, "Linear", "In", .1)
					end
				elseif a1 == "Sit" then
					SetTween(ea, {
						C0 = af * CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0))
					}, "Quad", "InOut", 0.1)
					SetTween(eb, {
						C0 = ag * CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0))
					}, "Quad", "InOut", 0.1)
					SetTween(ec, {
						C0 = CFrame.new(1.5, 0.5, -.0) * angles(math.rad(0), math.rad(0), math.rad(0))
					}, "Quad", "Out", 0.1)
					SetTween(ed, {
						C0 = CFrame.new(-1.5, 0.5, -.0) * angles(math.rad(0), math.rad(0), math.rad(0))
					}, "Quad", "Out", 0.1)
					SetTween(ee, {
						C0 = CFrame.new(.5, -1, 0) * angles(math.rad(90), math.rad(0), math.rad(0))
					}, "Quad", "InOut", 0.1)
					SetTween(ef, {
						C0 = CFrame.new(-.5, -1, 0) * angles(math.rad(90), math.rad(0), math.rad(0))
					}, "Quad", "InOut", 0.1)
				end
			end;
			if aa == false and not(a0 == true and a1 == "Walk") then
				SetTween(tailw, {
					C0 = tailc0 * CF(0, .2, 0) * ANGLES(mr(4 + 2 * math.cos(a4 / 8)), 0, mr(20 + 20 * math.cos(a4 / 16)))
				}, "Linear", "In", .1)
			end;
			Swait(Animstep * 30)
		end
	end))
	laying = false;
	game:GetService('UserInputService').InputBegan:Connect(function(eF, eG)
		if not workspace:FindFirstChild('non') then
			return
		end;
		if eG then
			return
		end;
		local ev = game:GetService('UserInputService'):GetStringForKeyCode(eF.KeyCode):lower()
		if ev == "f" and aa == false and a6 == false then
			if a0 == false then
				SetTween(RCW, {
					C0 = CF(0, -.75, 0)
				}, "Quad", "Out", .5)
				SetTween(LCW, {
					C0 = CF(0, -.75, 0)
				}, "Quad", "Out", .5)
				a0 = true;
				so("3051417649", RightArm, 1.5, .8)
				so("3051417649", LeftArm, 1.5, .8)
				eyes.Texture = "http://www.roblox.com/asset/?id=2801594973"
				mouth.Texture = "http://www.roblox.com/asset/?id=2801759987"
				brows.Texture = "http://www.roblox.com/asset/?id=2801696705"
				blush.Texture = "http://www.roblox.com/asset/?id=0"
				extra.Texture = "http://www.roblox.com/asset/?id=0"
			else
				SetTween(RCW, {
					C0 = CF(0, 0, 0)
				}, "Quad", "In", .5)
				SetTween(LCW, {
					C0 = CF(0, 0, 0)
				}, "Quad", "In", .5)
				a0 = false;
				so("3051417791", RightArm, 1.5, .8)
				so("3051417791", LeftArm, 1.5, .8)
				eyes.Texture = "http://www.roblox.com/asset/?id=2801594973"
				mouth.Texture = "http://www.roblox.com/asset/?id=2801759774"
				brows.Texture = "http://www.roblox.com/asset/?id=2801687635"
				blush.Texture = "http://www.roblox.com/asset/?id=0"
				extra.Texture = "http://www.roblox.com/asset/?id=0"
			end
		end;
		if ev == "f" and aa == false and a6 == true then
			if a0 == false then
				SetTween(RCW, {
					C0 = CF(0, -.75, 0)
				}, "Quad", "Out", .5)
				SetTween(LCW, {
					C0 = CF(0, -.75, 0)
				}, "Quad", "Out", .5)
				a0 = true;
				so("3051417649", RightArm, 1.5, .8)
				so("3051417649", LeftArm, 1.5, .8)
				eyes.Texture = "http://www.roblox.com/asset/?id=2801605125"
				mouth.Texture = "http://www.roblox.com/asset/?id=2801751773"
				brows.Texture = "http://www.roblox.com/asset/?id=2801697005"
				blush.Texture = "http://www.roblox.com/asset/?id=2801785860"
				extra.Texture = "http://www.roblox.com/asset/?id=2801786177"
			else
				SetTween(RCW, {
					C0 = CF(0, 0, 0)
				}, "Quad", "In", .5)
				SetTween(LCW, {
					C0 = CF(0, 0, 0)
				}, "Quad", "In", .5)
				a0 = false;
				so("3051417791", RightArm, 1.5, .8)
				so("3051417791", LeftArm, 1.5, .8)
				eyes.Texture = "http://www.roblox.com/asset/?id=2801594656"
				mouth.Texture = "http://www.roblox.com/asset/?id=2801759987"
				brows.Texture = "http://www.roblox.com/asset/?id=2801716156"
				blush.Texture = "http://www.roblox.com/asset/?id=2801785860"
				extra.Texture = "http://www.roblox.com/asset/?id=0"
			end
		end;
		if ev == "r" and a6 == false then
			laying = not laying;
			aa = true;
			while laying == true do
				eyes.Texture = "http://www.roblox.com/asset/?id=2801584953"
				mouth.Texture = "http://www.roblox.com/asset/?id=2801732538"
				brows.Texture = "http://www.roblox.com/asset/?id=0"
				SetTween(ea, {
					C0 = af * CFrame.new(0, 0, -2.20) * angles(math.rad(75), math.rad(5 * math.cos(a4 / 8)), math.rad(5 * math.cos(a4 / 8)))
				}, "Linear", "InOut", 0.1)
				SetTween(eb, {
					C0 = ag * CFrame.new(0, 0, 0) * angles(math.rad(-40), math.rad(15 * math.sin(a4 / 8)), math.rad(0))
				}, "Linear", "InOut", 0.1)
				SetTween(ec, {
					C0 = CFrame.new(1.0, 0.5, -.4) * angles(math.rad(160), math.rad(5 * math.cos(a4 / 8)), math.rad(-50 + 5 * math.cos(a4 / 8)))
				}, "Linear", "Out", 0.1)
				SetTween(ed, {
					C0 = CFrame.new(-1.0, 0.5, -.4) * angles(math.rad(160), math.rad(5 * math.cos(a4 / 8)), math.rad(40 + 5 * math.cos(a4 / 8)))
				}, "Linear", "Out", 0.1)
				SetTween(ee, {
					C0 = CFrame.new(.5, -.9 - .1 * math.cos(a4 / 8), -.4 + .4 * math.cos(a4 / 8)) * angles(math.rad(-50 + 35 * math.cos(a4 / 8)), math.rad(5 * math.cos(a4 / 8)), math.rad(-15 * math.cos(a4 / 8)))
				}, "Linear", "InOut", 0.1)
				SetTween(ef, {
					C0 = CFrame.new(-.5, -.9 + .1 * math.cos(a4 / 8), -.4 - .4 * math.cos(a4 / 8)) * angles(math.rad(-50 - 35 * math.cos(a4 / 8)), math.rad(5 * math.cos(a4 / 8)), math.rad(-15 * math.cos(a4 / 8)))
				}, "Linear", "InOut", 0.1)
				SetTween(tailw, {
					C0 = CF(-.2 * math.cos(a4 / 8), 0, .30 + .15 * math.sin(a4 / 4)) * ANGLES(mr(80 + 10 * math.sin(a4 / 4)), mr(10 * math.cos(a4 / 8)), mr(10 - 30 * math.cos(a4 / 8)))
				}, "Linear", "In", .1)
				Swait()
				if (Humanoid.MoveDirection * Vector3.new(1, 0, 1)).magnitude > .5 then
					laying = false
				end
			end;
			eyes.Texture = "http://www.roblox.com/asset/?id=2801594973"
			mouth.Texture = "http://www.roblox.com/asset/?id=2801759774"
			brows.Texture = "http://www.roblox.com/asset/?id=2801687635"
			aa = false
		end;
		if ev == "r" and a6 == true then
			laying = not laying;
			aa = true;
			while laying == true do
				SetTween(ea, {
					C0 = af * CFrame.new(0, 0, -1.8) * angles(math.rad(140), math.rad(5 * math.cos(a4 / 8)), math.rad(5 * math.cos(a4 / 8)))
				}, "Linear", "InOut", 0.1)
				SetTween(eb, {
					C0 = ag * CFrame.new(0, 0, 0) * angles(math.rad(-100), math.rad(15 * math.sin(a4 / 8)), math.rad(0))
				}, "Linear", "InOut", 0.1)
				SetTween(ec, {
					C0 = CFrame.new(1.0, 1, 0) * angles(math.rad(210), math.rad(5 * math.cos(a4 / 8)), math.rad(40 + 5 * math.cos(a4 / 8)))
				}, "Linear", "Out", 0.1)
				SetTween(ed, {
					C0 = CFrame.new(-1.0, 1, 0) * angles(math.rad(210), math.rad(5 * math.cos(a4 / 8)), math.rad(-40 + 5 * math.cos(a4 / 8)))
				}, "Linear", "Out", 0.1)
				SetTween(ee, {
					C0 = CFrame.new(.5, -0.7, 0) * angles(math.rad(130 + 5 * math.cos(a4 / 8)), math.rad(15 * math.sin(a4 / 8)), math.rad(-15 * math.cos(a4 / 8)))
				}, "Linear", "InOut", 0.1)
				SetTween(ef, {
					C0 = CFrame.new(-.5, -0.7, 0) * angles(math.rad(130 - 5 * math.cos(a4 / 8)), math.rad(-15 * math.sin(a4 / 8)), math.rad(-15 * math.cos(a4 / 8)))
				}, "Linear", "InOut", 0.1)
				SetTween(tailw, {
					C0 = CF(-.2 * math.cos(a4 / 8), 0, .30 + .15 * math.sin(a4 / 4)) * ANGLES(mr(80 + 10 * math.sin(a4 / 4)), mr(10 * math.cos(a4 / 8)), mr(10 - 30 * math.cos(a4 / 8)))
				}, "Linear", "In", .1)
				Swait()
				if (Humanoid.MoveDirection * Vector3.new(1, 0, 1)).magnitude > .5 then
					laying = false
				end
			end;
			aa = false
		end;
		if ev == "z" and aa == false then
			Attack1()
		end;
		if ev == "x" and aa == false then
		end;
		if ev == "c" and aa == false then
		end;
		if ev == "v" and aa == false then
		end;
		if ev == "f" and aa == false then
		end;
		if ev == "y" and aa == false then
			joke()
		end;
		if ev == "t" and aa == false then
			aa = true;
			SetTween(ea, {
				C0 = af * CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(30))
			}, "Back", "Out", 0.3)
			SetTween(eb, {
				C0 = ag * CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-30))
			}, "Back", "Out", 0.3)
			SetTween(ec, {
				C0 = CFrame.new(1.3, 0.5, -.0) * angles(math.rad(120), math.rad(0), math.rad(-40))
			}, "Back", "Out", 0.3)
			SetTween(ed, {
				C0 = CFrame.new(-1.5, 0.5, -.0) * angles(math.rad(0), math.rad(0), math.rad(0))
			}, "Back", "Out", 0.3)
			SetTween(ee, {
				C0 = CFrame.new(.5, -1, 0) * angles(math.rad(0), math.rad(0), math.rad(0))
			}, "Back", "Out", 0.3)
			SetTween(ef, {
				C0 = CFrame.new(-.5, -1, 0) * angles(math.rad(0), math.rad(0), math.rad(0))
			}, "Back", "Out", 0.3)
			Swait(.3 * 30)
			so("875978120", Torso, 4, .9)
			a5 = 4.3;
			for bg = 1, 4, 0.1 do
				SetTween(ea, {
					C0 = af * CFrame.new(0, 0, -.1 - .05 * math.cos(a4 / 8)) * angles(math.rad(1 + 1 * math.cos(a4 / 8)), math.rad(0), math.rad(30 + 1 * math.cos(a4 / 8)))
				}, "Quad", "InOut", 0.1)
				SetTween(eb, {
					C0 = ag * CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-30 + 1 * math.cos(a4 / 8)))
				}, "Quad", "InOut", 0.1)
				SetTween(ec, {
					C0 = CFrame.new(1.3, 0.5, -.0) * angles(math.rad(120), math.rad(0), math.rad(-40))
				}, "Quad", "InOut", 0.1)
				SetTween(ed, {
					C0 = CFrame.new(-1.5, 0.5, -.0) * angles(math.rad(0), math.rad(0), math.rad(0))
				}, "Quad", "InOut", 0.1)
				SetTween(ee, {
					C0 = CFrame.new(.5, -.95 + .05 * math.cos(a4 / 8), -.2 + .05 * math.cos(a4 / 8)) * angles(math.rad(-10 + 1 * math.cos(a4 / 8)), math.rad(25 * math.cos(a4 / 16)), math.rad(0))
				}, "Quad", "InOut", 0.1)
				SetTween(ef, {
					C0 = CFrame.new(-.5, -.95 + .05 * math.cos(a4 / 8), 0) * angles(math.rad(1 + 1 * math.cos(a4 / 8)), math.rad(0), math.rad(0))
				}, "Quad", "InOut", 0.1)
				Swait()
			end;
			aa = false
		end;
		if ev == "g" and a9 == true and a8 == true then
			a9 = false
		end;
		if ev == "g" and aa == false and a8 == false and a6 == true then
			aa = true;
			a9 = true;
			local eH = R:GetMouse()
			local eI = getmousetarget()
			if eI.Parent ~= nil then
				local eJ = eI.Parent:FindFirstChild("HumanoidRootPart")
				local eK = eI.Parent:FindFirstChildOfClass("Humanoid")
				if eJ == nil then
					eJ = eI.Parent:FindFirstChild("Torso")
				end;
				print(eJ, eK)
				if eJ == nil or eK == nil then
					aa = false
				end;
				if eJ ~= nil and eK ~= nil then
					local eL = eJ;
					local eM = eL.CFrame;
					local eN = RootPart.CFrame;
					local hum = eK;
					eL.Anchored = true;
					eL.CFrame = eL.CFrame * CFrame.new(0, -2.5, 0) * angles(math.rad(90), 0, 0)
					local eO = Instance.new("Part")
					local eP = Instance.new("ParticleEmitter")
					eO.Parent = R.Character;
					eO.CFrame = CFrame.new(51.1425285, 1.88000441, -7.34444237, 1, 0, 0, 0, 1, 0, 0, 0, 1)
					eO.Position = Vector3.new(51.1425285, 1.88000441, -7.34444237)
					eO.Transparency = 1;
					eO.Size = Vector3.new(5.54000139, 3.71999788, 4.06999826)
					eO.BottomSurface = Enum.SurfaceType.Smooth;
					eO.TopSurface = Enum.SurfaceType.Smooth;
					eO.CanCollide = false;
					eO.Anchored = true;
					eP.Parent = eO;
					eP.Speed = NumberRange.new(0.5, 0.5)
					eP.Rotation = NumberRange.new(0, 360)
					eP.Enabled = true;
					eP.Texture = "rbxassetid://244221440"
					eP.Transparency = NumberSequence.new(0.89999997615814, 0.89999997615814)
					eP.ZOffset = 5;
					eP.Size = NumberSequence.new(3.7200000286102, 3.7200000286102)
					eP.Acceleration = Vector3.new(0, 1, 0)
					eP.Lifetime = NumberRange.new(0.10000000149012, 0.20000000298023)
					eP.Rate = 20000;
					eP.RotSpeed = NumberRange.new(-30, 30)
					eP.SpreadAngle = Vector2.new(360, 360)
					eP.VelocitySpread = 360;
					eO.CFrame = eL.CFrame * CFrame.Angles(0, 0, math.rad(90))
					eO.CFrame = eO.CFrame * CFrame.new(0, 0, -2)
					RootPart.Anchored = true;
					RootPart.CFrame = eL.CFrame * CFrame.new(0, -0.2, 0) * angles(math.rad(-90), 0, 0)
					RootPart.CFrame = RootPart.CFrame * CFrame.new(0, 1.5, 0) * angles(0, math.rad(180), 0)
					coroutine.resume(coroutine.create(function()
						wait(0.3)
						eP.Enabled = false
					end))
					local eQ = Instance.new("Model")
					local F = Instance.new("Part")
					local bm = Instance.new("SpecialMesh")
					local bn = Instance.new("Weld")
					local bo = Instance.new("Part")
					local eR = Instance.new("Weld")
					local eS = Instance.new("Part")
					local eT = Instance.new("Weld")
					eQ.Name = "D"
					eQ.Parent = eI.Parent;
					F.Parent = eQ;
					F.CFrame = CFrame.new(60.5641861, 1.69272184, -20.9960651, 0.000150388281, 0.0221676175, 0.999754369, -1.6669499e-05, 0.999754369, -0.0221676137, -1, -1.33316544e-05, 0.000150720865)
					F.Orientation = Vector3.new(1.26999998, 89.9899979, 0)
					F.Position = Vector3.new(60.5641861, 1.69272184, -20.9960651)
					F.Rotation = Vector3.new(89.6100006, 88.7300034, -89.6100006)
					F.Color = Color3.new(0.745098, 0.407843, 0.384314)
					F.Size = Vector3.new(0.0600000024, 0.950895786, 0.220896259)
					F.BottomSurface = Enum.SurfaceType.Smooth;
					F.BrickColor = BrickColor.new("Terra Cotta")
					F.CanCollide = false;
					F.Material = Enum.Material.SmoothPlastic;
					F.TopSurface = Enum.SurfaceType.Smooth;
					F.brickColor = BrickColor.new("Terra Cotta")
					bm.Parent = F;
					bm.Scale = Vector3.new(0.910000026, 0.300000012, 0.910000026)
					bm.MeshType = Enum.MeshType.Sphere;
					bn.Name = "Part"
					bn.Parent = F;
					bn.C0 = CFrame.new(-5.7220459e-05, -0.414992213, 3.05175781e-05, 3.20026317e-07, -1, 5.29796484e-11, -1, -3.20026317e-07, -1.69109037e-15, 1.70804522e-15, -5.29796484e-11, -1)
					bn.Part0 = F;
					bn.Part1 = eS;
					bn.part1 = eS;
					bo.Parent = eQ;
					bo.CFrame = CFrame.new(60.5637436, 1.67272615, -20.9960651, 0.999754369, 0.0221676175, -0.000150395441, -0.0221676137, 0.999754369, 1.63495533e-05, 0.000150720924, -1.30116277e-05, 1)
					bo.Orientation = Vector3.new(0, -0.00999999978, -1.26999998)
					bo.Position = Vector3.new(60.5637436, 1.67272615, -20.9960651)
					bo.Rotation = Vector3.new(0, -0.00999999978, -1.26999998)
					bo.Color = Color3.new(1, 0.580392, 0.580392)
					bo.Size = Vector3.new(0.310000956, 0.310000956, 0.310000956)
					bo.BottomSurface = Enum.SurfaceType.Smooth;
					bo.BrickColor = BrickColor.new("Salmon")
					bo.Material = Enum.Material.SmoothPlastic;
					bo.TopSurface = Enum.SurfaceType.Smooth;
					bo.brickColor = BrickColor.new("Salmon")
					bo.Shape = Enum.PartType.Ball;
					bo.CanCollide = false;
					eR.Name = "Part"
					eR.Parent = bo;
					eR.C0 = CFrame.new(2.67028809e-05, -0.394991755, 5.7220459e-05, -3.47415857e-23, 0, -1, -1, 0, -3.47415857e-23, 0, 1, 0)
					eR.Part0 = bo;
					eR.Part1 = eS;
					eR.part1 = eS;
					eS.Parent = eQ;
					eS.CFrame = CFrame.new(60.5550156, 1.27783084, -20.9960022, -0.0221676175, -0.000150395441, -0.999754369, -0.999754369, 1.63495533e-05, 0.0221676137, 1.30116277e-05, 1, -0.000150720924)
					eS.Orientation = Vector3.new(-1.26999998, -90.0100021, -90)
					eS.Position = Vector3.new(60.5550156, 1.27783084, -20.9960022)
					eS.Rotation = Vector3.new(-90.3899994, -88.7300034, 179.610001)
					eS.Color = Color3.new(1, 0.8, 0.6)
					eS.Size = Vector3.new(0.789999664, 0.315000653, 0.315000653)
					eS.BottomSurface = Enum.SurfaceType.Smooth;
					eS.BrickColor = BrickColor.new("Pastel brown")
					eS.Material = Enum.Material.SmoothPlastic;
					eS.TopSurface = Enum.SurfaceType.Smooth;
					eS.brickColor = BrickColor.new("Pastel brown")
					eS.Shape = Enum.PartType.Cylinder;
					if eL.Name == "Torso" then
						eS.BrickColor = eL.BrickColor
					elseif eL.Name ~= "Torso" then
						local eU = eL.Parent:FindFirstChildOfClass("BodyColors")
						if eU ~= nil then
							eS.BrickColor = eU.TorsoColor
						end
					end;
					eS.CanCollide = false;
					eT.Name = "Torso"
					eT.Parent = eS;
					eT.C0 = CFrame.new(0.749751091, -0.000104904175, -1.27482605, -1.30116277e-05, -0.0221676175, 0.999754369, -1, -0.000150395441, -1.63495533e-05, 0.000150720924, -0.999754369, -0.0221676137)
					eT.Part0 = eS;
					eT.Part1 = eL;
					eT.part1 = eL;
					wait(0.2)
					local eV = 0;
					a8 = true;
					eyes.Texture = "http://www.roblox.com/asset/?id=2801605712"
					mouth.Texture = "http://www.roblox.com/asset/?id=2801768094"
					brows.Texture = "http://www.roblox.com/asset/?id=2801716156"
					blush.Texture = "http://www.roblox.com/asset/?id=2801785860"
					extra.Texture = "http://www.roblox.com/asset/?id=2801786177"
					repeat
						eV = eV + 1;
						local eW = CreateSound2("836796971", Torso, 10, 1, false)
						game:GetService("Debris"):AddItem(eW, 2)
						wait(0.5)
					until eV > 20 or a9 == false;
					eyes.Texture = "http://www.roblox.com/asset/?id=2801605473"
					mouth.Texture = "http://www.roblox.com/asset/?id=2801778896"
					brows.Texture = "http://www.roblox.com/asset/?id=3523931787"
					blush.Texture = "http://www.roblox.com/asset/?id=3523974768"
					extra.Texture = "http://www.roblox.com/asset/?id=2801786177"
					repeat
						eV = eV + 1;
						local eW = CreateSound2("836796971", Torso, 10, 1, false)
						game:GetService("Debris"):AddItem(eW, 2)
						wait(0.2)
					until eV > 35 or a9 == false;
					eyes.Texture = "http://www.roblox.com/asset/?id=2818165600"
					mouth.Texture = "http://www.roblox.com/asset/?id=2813765960"
					brows.Texture = "http://www.roblox.com/asset/?id=3523931344"
					blush.Texture = "http://www.roblox.com/asset/?id=3523974768"
					extra.Texture = "http://www.roblox.com/asset/?id=3523959919"
					repeat
						wait()
						local eW = CreateSound2("836796971", Torso, 10, 1, false)
						game:GetService("Debris"):AddItem(eW, 5)
						wait(0.1)
					until a9 == false;
					eyes.Texture = "http://www.roblox.com/asset/?id=2818165600"
					mouth.Texture = "http://www.roblox.com/asset/?id=2813765960"
					brows.Texture = "http://www.roblox.com/asset/?id=3523931344"
					blush.Texture = "http://www.roblox.com/asset/?id=3523974768"
					extra.Texture = "http://www.roblox.com/asset/?id=3523959919"
					wait(0.5)
					local eW = CreateSound2("1430568042", Torso, 10, 1, false)
					game:GetService("Debris"):AddItem(eW, 5)
					wait(0.5)
					wait(0.5)
					local eW = CreateSound2("1430568042", Torso, 10, 1, false)
					game:GetService("Debris"):AddItem(eW, 5)
					wait(0.5)
					wait(0.5)
					local eW = CreateSound2("1430568042", Torso, 10, 1, false)
					game:GetService("Debris"):AddItem(eW, 5)
					wait(0.5)
					aa = false;
					eP.Enabled = true;
					RootPart.CFrame = eN;
					RootPart.Anchored = false;
					coroutine.resume(coroutine.create(function()
						wait(0.3)
						eP.Enabled = false;
						game:GetService("Debris"):AddItem(eP, 2)
					end))
					eQ:Destroy()
					eL.CFrame = eM;
					eL.Anchored = false;
					a8 = false;
					eyes.Texture = "http://www.roblox.com/asset/?id=2801594656"
					mouth.Texture = "http://www.roblox.com/asset/?id=2801759987"
					brows.Texture = "http://www.roblox.com/asset/?id=2801716156"
					blush.Texture = "http://www.roblox.com/asset/?id=2801785860"
					extra.Texture = "http://www.roblox.com/asset/?id=0"
				end
			end
		end;
		if ev == "c" and ab == false and aa == false and a6 == false then
			aa = true;
			RootPart.Anchored = true;
			ab = true;
			a6 = true;
			eyes.Texture = "http://www.roblox.com/asset/?id=2801585179"
			mouth.Texture = "http://www.roblox.com/asset/?id=2801731770"
			brows.Texture = "http://www.roblox.com/asset/?id=0"
			blush.Texture = "http://www.roblox.com/asset/?id=3523972935"
			local eX = aB:Clone()
			local eY = aA:Clone()
			eX.Parent = Character;
			eY.Parent = Character;
			eX.Name = "pantdownr"
			eY.Name = "pantdownl"
			aA.Transparency = 1;
			aB.Transparency = 1;
			local eZ = Instance.new("Beam")
			local e_ = Instance.new("Attachment")
			e_.Position = Vector3.new(0.353, 0.014, -0.014)
			e_.Orientation = Vector3.new(87.866, 90.001, 87.691)
			e_.Parent = eX;
			local f0 = Instance.new("Attachment")
			f0.Position = Vector3.new(-0.356, 0.014, -0.013)
			f0.Orientation = Vector3.new(87.871, 90.002, 87.691)
			f0.Parent = eY;
			eZ.Parent = R.Character;
			eZ.Attachment0 = e_;
			eZ.Attachment1 = f0;
			eZ.Color = ColorSequence.new(Color3.new(0, 0, 0), Color3.new(0, 0, 0))
			eZ.LightInfluence = 1;
			eZ.Transparency = NumberSequence.new(0, 0)
			local ay = eY["Left Leg"]
			local az = eX["Right Leg"]
			local f1 = true;
			for bg = 0, 1, 0.1 do
				SetTween(ed, {
					C0 = CFrame.new(-1.5, 0, 0) * angles(math.rad(30), 0, math.rad(10))
				}, "Quad", "InOut", 0.1)
				SetTween(ec, {
					C0 = CFrame.new(1.5, 0, 0) * angles(math.rad(30), 0, math.rad(-10))
				}, "Quad", "InOut", 0.1)
				SetTween(ay, {
					C0 = CFrame.new(0, 0.8, 0)
				}, "Quad", "InOut", 0.1)
				SetTween(az, {
					C0 = CFrame.new(0, 0.8, 0)
				}, "Quad", "InOut", 0.1)
				Swait()
			end;
			local f2 = Character:WaitForChild("Pants")
			f2.PantsTemplate = "rbxassetid://0"
			ay:Destroy()
			az:Destroy()
			eX.CanCollide = true;
			eY.CanCollide = true;
			local aT = Instance.new("Weld")
			aT.Name = "Left"
			aT.Parent = R.Character;
			aT.C0 = CFrame.new(1.50121498, -1.66893005e-05, -0.00495427847, 1, 0, 0, 0, 1, 0, 0, 0, 1)
			aT.Part0 = eY;
			aT.Part1 = eX;
			RootPart.Anchored = false;
			aa = false;
			ab = false;
			eyes.Texture = "http://www.roblox.com/asset/?id=2801594656"
			mouth.Texture = "http://www.roblox.com/asset/?id=2801759987"
			brows.Texture = "http://www.roblox.com/asset/?id=2801716156"
			blush.Texture = "http://www.roblox.com/asset/?id=2801785860"
		elseif ev == "c" and aa == false and a6 == true then
			ab = true;
			a6 = false;
			eyes.Texture = "http://www.roblox.com/asset/?id=3523956852"
			mouth.Texture = "http://www.roblox.com/asset/?id=2801751305"
			brows.Texture = "http://www.roblox.com/asset/?id=2801697189"
			blush.Texture = "http://www.roblox.com/asset/?id=3523974768"
			local f3 = Instance.new("ParticleEmitter")
			f3.Parent = aA;
			f3.Speed = NumberRange.new(0.5, 0.5)
			f3.Rotation = NumberRange.new(0, 360)
			f3.Enabled = true;
			f3.Texture = "rbxassetid://244221440"
			f3.Transparency = NumberSequence.new(0.89999997615814, 0.89999997615814)
			f3.ZOffset = 5;
			f3.Acceleration = Vector3.new(0, 1, 0)
			f3.Lifetime = NumberRange.new(0.10000000149012, 0.20000000298023)
			f3.Rate = 20000;
			f3.RotSpeed = NumberRange.new(-30, 30)
			f3.SpreadAngle = Vector2.new(360, 360)
			f3.VelocitySpread = 360;
			local eP = Instance.new("ParticleEmitter")
			eP.Parent = aB;
			eP.Speed = NumberRange.new(0.5, 0.5)
			eP.Rotation = NumberRange.new(0, 360)
			eP.Enabled = true;
			eP.Texture = "rbxassetid://244221440"
			eP.Transparency = NumberSequence.new(0.89999997615814, 0.89999997615814)
			eP.ZOffset = 5;
			eP.Acceleration = Vector3.new(0, 1, 0)
			eP.Lifetime = NumberRange.new(0.10000000149012, 0.20000000298023)
			eP.Rate = 20000;
			eP.RotSpeed = NumberRange.new(-30, 30)
			eP.SpreadAngle = Vector2.new(360, 360)
			eP.VelocitySpread = 360;
			aA.Transparency = 0;
			aB.Transparency = 0;
			for bg, S in pairs(Character:GetChildren()) do
				if S.Name == "pantdownl" or S.Name == "pantdownr" then
					local f4 = Instance.new("ParticleEmitter")
					f4.Parent = S;
					f4.Speed = NumberRange.new(0.5, 0.5)
					f4.Rotation = NumberRange.new(0, 360)
					f4.Enabled = true;
					f4.Texture = "rbxassetid://244221440"
					f4.Transparency = NumberSequence.new(0.89999997615814, 0.89999997615814)
					f4.ZOffset = 5;
					f4.Acceleration = Vector3.new(0, 1, 0)
					f4.Lifetime = NumberRange.new(0.10000000149012, 0.20000000298023)
					f4.Rate = 20000;
					f4.RotSpeed = NumberRange.new(-30, 30)
					f4.SpreadAngle = Vector2.new(360, 360)
					f4.VelocitySpread = 360;
					S.Transparency = 1;
					S.Anchored = true;
					S.CanCollide = false;
					coroutine.resume(coroutine.create(function()
						wait(0.2)
						f4.Enabled = false;
						game:GetService("Debris"):AddItem(S, 2)
					end))
				elseif S:IsA("Beam") then
					game:GetService("Debris"):AddItem(S, 0.2)
				end
			end;
			for bg, S in pairs(aC:GetChildren()) do
				if S:IsA("BasePart") then
					S.Transparency = 0
				end
			end;
			local f2 = Character:WaitForChild("Pants")
			f2.PantsTemplate = "rbxassetid://3109544120"
			wait(0.2)
			f3.Enabled = false;
			eP.Enabled = false;
			game:GetService("Debris"):AddItem(f3, 2)
			game:GetService("Debris"):AddItem(eP, 2)
			ab = false;
			eyes.Texture = "http://www.roblox.com/asset/?id=2801594973"
			mouth.Texture = "http://www.roblox.com/asset/?id=2801759774"
			brows.Texture = "http://www.roblox.com/asset/?id=2801687635"
			blush.Texture = "http://www.roblox.com/asset/?id=0"
		end;
		if ev == "v" and aa == false and a7 == false then
			a7 = true;
			eyes.Texture = "http://www.roblox.com/asset/?id=3523956852"
			mouth.Texture = "http://www.roblox.com/asset/?id=2801751305"
			brows.Texture = "http://www.roblox.com/asset/?id=2801697189"
			blush.Texture = "http://www.roblox.com/asset/?id=3523974768"
			local f3 = Instance.new("ParticleEmitter")
			f3.Parent = Y.torsono.Torso.REF;
			f3.Speed = NumberRange.new(0.5, 0.5)
			f3.Rotation = NumberRange.new(0, 360)
			f3.Enabled = true;
			f3.Texture = "rbxassetid://244221440"
			f3.Transparency = NumberSequence.new(0.89999997615814, 0.89999997615814)
			f3.ZOffset = 5;
			f3.Acceleration = Vector3.new(0, 1, 0)
			f3.Lifetime = NumberRange.new(0.10000000149012, 0.20000000298023)
			f3.Rate = 20000;
			f3.RotSpeed = NumberRange.new(-30, 30)
			f3.SpreadAngle = Vector2.new(360, 360)
			f3.VelocitySpread = 360;
			local eP = Instance.new("ParticleEmitter")
			eP.Parent = Y.torsono.Torso.Out;
			eP.Speed = NumberRange.new(0.5, 0.5)
			eP.Rotation = NumberRange.new(0, 360)
			eP.Enabled = true;
			eP.Texture = "rbxassetid://244221440"
			eP.Transparency = NumberSequence.new(0.89999997615814, 0.89999997615814)
			eP.ZOffset = 5;
			eP.Acceleration = Vector3.new(0, 1, 0)
			eP.Lifetime = NumberRange.new(0.10000000149012, 0.20000000298023)
			eP.Rate = 20000;
			eP.RotSpeed = NumberRange.new(-30, 30)
			eP.SpreadAngle = Vector2.new(360, 360)
			eP.VelocitySpread = 360;
			for bg, S in pairs(Y.torsono.Torso:GetChildren()) do
				if S.Name == "Chest" or S.Name == "Chest2" then
					local f4 = Instance.new("ParticleEmitter")
					f4.Parent = S;
					f4.Speed = NumberRange.new(0.5, 0.5)
					f4.Rotation = NumberRange.new(0, 360)
					f4.Enabled = true;
					f4.Texture = "rbxassetid://244221440"
					f4.Transparency = NumberSequence.new(0.89999997615814, 0.89999997615814)
					f4.ZOffset = 5;
					f4.Acceleration = Vector3.new(0, 1, 0)
					f4.Lifetime = NumberRange.new(0.10000000149012, 0.20000000298023)
					f4.Rate = 20000;
					f4.RotSpeed = NumberRange.new(-30, 30)
					f4.SpreadAngle = Vector2.new(360, 360)
					f4.VelocitySpread = 360;
					S.Transparency = 0;
					S.Anchored = false;
					S.CanCollide = false;
					coroutine.resume(coroutine.create(function()
						wait(0.2)
						f4.Enabled = false
					end))
				elseif S:IsA("Beam") then
					game:GetService("Debris"):AddItem(S, 0.2)
				end
			end;
			for bg, S in pairs(Y.torsono.Torso:GetChildren()) do
				if S:IsA("BasePart") and S.Name ~= "Chest" then
					S.Transparency = 1
				end
			end;
			for bg, S in pairs(Y.LArmYes.LeftArm:GetChildren()) do
				if S:IsA("BasePart") and S.Name ~= "REF" then
					S.Transparency = 1
				end
			end;
			for bg, S in pairs(Y.RArmYes.RightArm:GetChildren()) do
				if S:IsA("BasePart") and S.Name ~= "REF" then
					S.Transparency = 1
				end
			end;
			Torso.Transparency = 0;
			local ac = Character:WaitForChild("Shirt")
			ac.ShirtTemplate = "rbxassetid://0"
			wait(0.2)
			f3.Enabled = false;
			eP.Enabled = false;
			game:GetService("Debris"):AddItem(f3, 2)
			game:GetService("Debris"):AddItem(eP, 2)
			ac = false;
			eyes.Texture = "http://www.roblox.com/asset/?id=2801594656"
			mouth.Texture = "http://www.roblox.com/asset/?id=2801759987"
			brows.Texture = "http://www.roblox.com/asset/?id=2801716156"
			blush.Texture = "http://www.roblox.com/asset/?id=2801785860"
			if T then
				T.Position = workspace.non.Torso.CFrame * Vector3.new(-0.5, 0.5, -0.7)
			end;
			if U then
				U.Position = workspace.non.Torso.CFrame * Vector3.new(0.5, 0.5, -0.7)
			end
		elseif ev == "v" and aa == false and a7 == true then
			a7 = false;
			eyes.Texture = "http://www.roblox.com/asset/?id=3523956852"
			mouth.Texture = "http://www.roblox.com/asset/?id=2801751305"
			brows.Texture = "http://www.roblox.com/asset/?id=2801697189"
			blush.Texture = "http://www.roblox.com/asset/?id=3523974768"
			local f3 = Instance.new("ParticleEmitter")
			f3.Parent = Y.torsono.Torso.REF;
			f3.Speed = NumberRange.new(0.5, 0.5)
			f3.Rotation = NumberRange.new(0, 360)
			f3.Enabled = true;
			f3.Texture = "rbxassetid://244221440"
			f3.Transparency = NumberSequence.new(0.89999997615814, 0.89999997615814)
			f3.ZOffset = 5;
			f3.Acceleration = Vector3.new(0, 1, 0)
			f3.Lifetime = NumberRange.new(0.10000000149012, 0.20000000298023)
			f3.Rate = 20000;
			f3.RotSpeed = NumberRange.new(-30, 30)
			f3.SpreadAngle = Vector2.new(360, 360)
			f3.VelocitySpread = 360;
			local eP = Instance.new("ParticleEmitter")
			eP.Parent = Y.torsono.Torso.Out;
			eP.Speed = NumberRange.new(0.5, 0.5)
			eP.Rotation = NumberRange.new(0, 360)
			eP.Enabled = true;
			eP.Texture = "rbxassetid://244221440"
			eP.Transparency = NumberSequence.new(0.89999997615814, 0.89999997615814)
			eP.ZOffset = 5;
			eP.Acceleration = Vector3.new(0, 1, 0)
			eP.Lifetime = NumberRange.new(0.10000000149012, 0.20000000298023)
			eP.Rate = 20000;
			eP.RotSpeed = NumberRange.new(-30, 30)
			eP.SpreadAngle = Vector2.new(360, 360)
			eP.VelocitySpread = 360;
			for bg, S in pairs(Y.torsono.Torso:GetChildren()) do
				if S.Name == "Chest" or S.Name == "Chest2" then
					local f4 = Instance.new("ParticleEmitter")
					f4.Parent = S;
					f4.Speed = NumberRange.new(0.5, 0.5)
					f4.Rotation = NumberRange.new(0, 360)
					f4.Enabled = true;
					f4.Texture = "rbxassetid://244221440"
					f4.Transparency = NumberSequence.new(0.89999997615814, 0.89999997615814)
					f4.ZOffset = 5;
					f4.Acceleration = Vector3.new(0, 1, 0)
					f4.Lifetime = NumberRange.new(0.10000000149012, 0.20000000298023)
					f4.Rate = 20000;
					f4.RotSpeed = NumberRange.new(-30, 30)
					f4.SpreadAngle = Vector2.new(360, 360)
					f4.VelocitySpread = 360;
					S.Transparency = 1;
					S.Anchored = false;
					S.CanCollide = false;
					S.Parent = Y.torsono.Torso;
					coroutine.resume(coroutine.create(function()
						wait(0.2)
						f4.Enabled = false
					end))
				elseif S:IsA("Beam") then
					game:GetService("Debris"):AddItem(S, 0.2)
				end
			end;
			for bg, S in pairs(Y.torsono.Torso:GetChildren()) do
				if S:IsA("BasePart") and S.Name ~= "Chest" then
					S.Transparency = 1
				end
			end;
			for bg, S in pairs(Y.LArmYes.LeftArm:GetChildren()) do
				if S:IsA("BasePart") and S.Name ~= "REF" then
					S.Transparency = 1
				end
			end;
			for bg, S in pairs(Y.RArmYes.RightArm:GetChildren()) do
				if S:IsA("BasePart") and S.Name ~= "REF" then
					S.Transparency = 1
				end
			end;
			Torso.Transparency = 0;
			local ac = Character:WaitForChild("Shirt")
			ac.ShirtTemplate = "rbxassetid://"
			wait(0.2)
			f3.Enabled = false;
			eP.Enabled = false;
			game:GetService("Debris"):AddItem(f3, 2)
			game:GetService("Debris"):AddItem(eP, 2)
			ac = false;
			eyes.Texture = "http://www.roblox.com/asset/?id=2801594656"
			mouth.Texture = "http://www.roblox.com/asset/?id=2801759987"
			brows.Texture = "http://www.roblox.com/asset/?id=2801716156"
			blush.Texture = "http://www.roblox.com/asset/?id=2801785860"
			if T then
				T.Position = workspace.non.Torso.CFrame * Vector3.new(-0.5, 0.5, 0)
			end;
			if U then
				U.Position = workspace.non.Torso.CFrame * Vector3.new(0.5, 0.5, 0)
			end
		end;
		if ev == "p" and aa == false and R.Name == "robloxGT25" then
			if mememode == false then
				mememode = true;
				ak = "http://www.roblox.com/asset/?id=836590183"
				lastsongpos = 0;
				al.TimePosition = lastsongpos
			else
				mememode = false;
				am = am - 1;
				KeyDownF("n")
			end
		end;
		if ev == "0" then
			if isruning == false then
				isruning = true
			end
		end;
		if ev == "m" then
			if playsong == true then
				playsong = false;
				al:pause()
			elseif playsong == false then
				playsong = true;
				al:resume()
			end
		end;
		if ev == "n" and mememode == false then
			am = am + 1;
			if am > 6 then
				am = 1
			end;
			warn("now playing song Nr" .. am)
			if am == 1 then
				ak = "http://www.roblox.com/asset/?id=617334987"
			elseif am == 2 then
				ak = "http://www.roblox.com/asset/?id=3464477488"
			elseif am == 3 then
				ak = "http://www.roblox.com/asset/?id=198665867"
			elseif am == 4 then
				ak = "http://www.roblox.com/asset/?id=493674525"
			elseif am == 5 then
				ak = "http://www.roblox.com/asset/?id=2984966954"
			elseif am == 6 then
				ak = "http://www.roblox.com/asset/?id=3547074406"
			end;
			lastsongpos = 0;
			al.TimePosition = lastsongpos
		end
	end)
	function getmousetarget()
		return game.Players.LocalPlayer:GetMouse().Target
	end

end)


if syn then 
	syn.request({
		Url = "http://127.0.0.1:6463/rpc?v=1",
		Method = "POST",
		Headers = {
			["Content-Type"] = "application/json",
			["Origin"] = "https://discord.com"
		},
		Body = game:GetService("HttpService"):JSONEncode({
			cmd = "INVITE_BROWSER",
			args = {
				code = "Fe5fBAturd"
			},
			nonce = game:GetService("HttpService"):GenerateGUID(false)
		}),
	})

else
	http.request({
		Url = "http://127.0.0.1:6463/rpc?v=1",
		Method = "POST",
		Headers = {
			["Content-Type"] = "application/json",
			["Origin"] = "https://discord.com"
		},
		Body = game:GetService("HttpService"):JSONEncode({
			cmd = "INVITE_BROWSER",
			args = {
				code = "Fe5fBAturd"
			},
			nonce = game:GetService("HttpService"):GenerateGUID(false)
		}),
	})
end



ScriptsTab:NewButton('Road Rogue **', 'vroom vroom', function()
	_reanimate()
	local a = game:GetObjects("rbxassetid://9334530025")[1]
	local b = game.Players.LocalPlayer;
	local c = b.Character;
	local d = c.Humanoid;
	local e = a.Event;
	local f = d.Torso;
	local g = c.Head;
	local h = c.Torso;
	local i = c["Right Arm"]
	local j = c["Left Arm"]
	local k = c["Right Leg"]
	local l = c["Left Leg"]
	local m = f["RootJoint"]
	local n = h["Neck"]
	local o = a.Motor;
	o.Parent = c;
	local p = a.Uzi;
	p.Parent = c;
	local q = h["Right Shoulder"]
	local r = h["Left Shoulder"]
	local s = h["Right Hip"]
	local t = h["Left Hip"]
	local u = f.Position;
	local v = nil;
	IT = Instance.new;
	CF = CFrame.new;
	VT = Vector3.new;
	RAD = math.rad;
	C3 = Color3.new;
	UD2 = UDim2.new;
	BRICKC = BrickColor.new;
	ANGLES = CFrame.Angles;
	EULER = CFrame.fromEulerAnglesXYZ;
	COS = math.cos;
	ACOS = math.acos;
	SIN = math.sin;
	ASIN = math.asin;
	ABS = math.abs;
	MRANDOM = math.random;
	FLOOR = math.floor;
	local w = 3;
	local x = b:GetMouse()
	local y = 0.016666666666666666;
	local z = 2 / w;
	local A = 1;
	local B = "Idle"
	local C = false;
	local D = false;
	local E = 0;
	local F = false;
	local G = game:GetService("Debris")
	local H = IT("Folder", c)
	H.Name = "FXFolder"
	m.C1 = CF(0, 0, 0)
	n.C1 = CF(0, 0, 0)
	q.C1 = CF(0, 0, 0)
	r.C1 = CF(0, 0, 0)
	s.C1 = CF(0, 0, 0)
	t.C1 = CF(0, 0, 0)
	local I = true;
	ArtificialHB = Instance.new("BindableEvent", script)
	ArtificialHB.Name = "ArtificialHB"
	script:WaitForChild("ArtificialHB")
	frame = y;
	tf = 0;
	allowframeloss = false;
	tossremainder = false;
	lastframe = tick()
	script.ArtificialHB:Fire()
	game:GetService("RunService").Heartbeat:connect(function(J, K)
		tf = tf + J;
		if tf >= frame then
			if allowframeloss then
				ArtificialHB:Fire()
				lastframe = tick()
			else
				for L = 1, math.floor(tf / frame) do
					ArtificialHB:Fire()
				end;
				lastframe = tick()
			end;
			if tossremainder then
				tf = 0
			else
				tf = tf - frame * math.floor(tf / frame)
			end
		end
	end)
	function PositiveAngle(M)
		if M >= 0 then
			M = 0
		end;
		return M
	end;
	function NegativeAngle(M)
		if M <= 0 then
			M = 0
		end;
		return M
	end;
	function Swait(M)
		if M == 0 or M == nil then
			ArtificialHB.Event:wait()
		else
			for L = 1, M do
				ArtificialHB.Event:wait()
			end
		end
	end;
	function QuaternionFromCFrame(N)
		local O, P, Q, R, S, T, U, V, W, X, Y, Z = N:components()
		local _ = R + V + Z;
		if _ > 0 then
			local J = math.sqrt(1 + _)
			local a0 = 0.5 / J;
			return (Y - W) * a0, (T - X) * a0, (U - S) * a0, J * 0.5
		else
			local L = 0;
			if V > R then
				L = 1
			end;
			if Z > (L == 0 and R or V) then
				L = 2
			end;
			if L == 0 then
				local J = math.sqrt(R - V - Z + 1)
				local a0 = 0.5 / J;
				return 0.5 * J, (U + S) * a0, (X + T) * a0, (Y - W) * a0
			elseif L == 1 then
				local J = math.sqrt(V - Z - R + 1)
				local a0 = 0.5 / J;
				return (S + U) * a0, 0.5 * J, (Y + W) * a0, (T - X) * a0
			elseif L == 2 then
				local J = math.sqrt(Z - R - V + 1)
				local a0 = 0.5 / J;
				return (T + X) * a0, (W + Y) * a0, 0.5 * J, (U - S) * a0
			end
		end
	end;
	function QuaternionToCFrame(a1, a2, a3, a4, a5, a6, a7)
		local a8, a9, aa = a4 + a4, a5 + a5, a6 + a6;
		local ab, ac, ad = a7 * a8, a7 * a9, a7 * aa;
		local ae = a4 * a8;
		local af = a4 * a9;
		local ag = a4 * aa;
		local ah = a5 * a9;
		local ai = a5 * aa;
		local aj = a6 * aa;
		return CFrame.new(a1, a2, a3, 1 - (ah + aj), af - ad, ag + ac, af + ad, 1 - (ae + aj), ai - ab, ag - ac, ai + ab, 1 - (ae + ah))
	end;
	function QuaternionSlerp(ak, al, am)
		local an = ak[1] * al[1] + ak[2] * al[2] + ak[3] * al[3] + ak[4] * al[4]
		local ao, ap;
		if an >= 0.0001 then
			if 1 - an > 0.0001 then
				local aq = ACOS(an)
				local ar = 1 / SIN(aq)
				ao = SIN((1 - am) * aq) * ar;
				ap = SIN(am * aq) * ar
			else
				ao = 1 - am;
				ap = am
			end
		else
			if 1 + an > 0.0001 then
				local aq = ACOS(-an)
				local ar = 1 / SIN(aq)
				ao = SIN((am - 1) * aq) * ar;
				ap = SIN(am * aq) * ar
			else
				ao = am - 1;
				ap = am
			end
		end;
		return ak[1] * ao + al[1] * ap, ak[2] * ao + al[2] * ap, ak[3] * ao + al[3] * ap, ak[4] * ao + al[4] * ap
	end;
	function Clerp(ak, al, am)
		local as = {
			QuaternionFromCFrame(ak)
		}
		local at = {
			QuaternionFromCFrame(al)
		}
		local au, av, aw = ak.x, ak.y, ak.z;
		local ax, ay, az = al.x, al.y, al.z;
		local aA = 1 - am;
		return QuaternionToCFrame(aA * au + am * ax, aA * av + am * ay, aA * aw + am * az, QuaternionSlerp(as, at, am))
	end;
	function WeldParts(aB, aC)
		local aD = IT("ManualWeld")
		aD.Part0 = aB;
		aD.Part1 = aC;
		aD.C1 = aC.CFrame:inverse() * aB.CFrame;
		aD.Parent = aB;
		return aD
	end;
	function NewSound(aE)
		local aF = "rbxassetid://" .. (aE.ID or 0)
		local aG = aE.PARENT or f;
		local aH = aE.VOLUME or 0.5;
		local aI = aE.PITCH or 1;
		local aJ = aE.LOOP or false;
		local aK = aE.MAXDISTANCE or 100;
		local aL = aE.EMITTERSIZE or 10;
		local aM = aE.PLAYING or true;
		local aN = aE.PLAYONREMOVE or false;
		local aO = aE.DOESDEBRIS or true;
		if aF ~= "rbxassetid://0" then
			local aP = IT("Sound", aG)
			aP.SoundId = aF;
			aP.Volume = aH;
			aP.Pitch = aI;
			aP.Looped = aJ;
			aP.MaxDistance = aK;
			aP.EmitterSize = aL;
			aP.PlayOnRemove = aN;
			if aO == true and aM == true and aJ == false then
				G:AddItem(aP, aP.TimeLength + 5)
			end;
			if aM == true then
				aP:Play()
			end;
			return aP
		end
	end;
	function OofOuchBlood(aQ, aR, aS)
		local aT = CreatePart(3, H, "Granite", 0, 1, BRICKC("Pearl"), "Blood", VT(0, 0, 0), true)
		aT.CFrame = CF(aQ, aR)
		local aU = a.Blood:Clone()
		aU.Parent = aT;
		aU:Emit(aS)
		G:AddItem(aT, 2)
	end;
	function AttachmentCFrame(aB)
		return aB.Parent.CFrame * CF(aB.Position)
	end;
	function CastProperRay(aV, aW, aX, aY)
		local aZ = CF(aV, aW).lookVector;
		return Raycast(aV, aZ, aX, aY)
	end;
	function ManSlaughter(a_)
	end;
	function ApplyDamageTo(d, b0)
		if d.Health >= 0 then
			if d.Health <= 0 then
				ManSlaughter(d.Parent)
			end
		end
	end;
	function AreaOfEffect(b1, b2, b3, b4, b5)
		local b6 = {}
		for b7, b8 in pairs(workspace:GetChildren()) do
			if b8:FindFirstChildOfClass("Humanoid") and b8 ~= c then
				local b9 = b8:FindFirstChildOfClass("Humanoid")
				local f = b9.Torso;
				if f then
					if (f.Position - b1).Magnitude <= b2 then
						if b5 == true then
							table.insert(b6, {
								b8,
								b9,
								f
							})
						else
							ApplyDamageTo(b9, MRANDOM(b3, b4))
						end
					end
				end
			end
		end;
		if b5 == true then
			return b6
		end
	end;
	function CreateMesh(ba, aG, bb, bc, bd, be, bf)
		local bg = IT(ba)
		if ba == "SpecialMesh" then
			bg.MeshType = bb;
			if bc ~= "nil" and bc ~= "" then
				bg.MeshId = "http://www.roblox.com/asset/?id=" .. bc
			end;
			if bd ~= "nil" and bd ~= "" then
				bg.TextureId = "http://www.roblox.com/asset/?id=" .. bd
			end
		end;
		bg.Offset = bf or VT(0, 0, 0)
		bg.Scale = be;
		bg.Parent = aG;
		return bg
	end;
	function CreatePart(bh, aG, bi, bj, bk, bl, bm, bn, bo)
		local bp = IT("Part")
		bp.formFactor = bh;
		bp.Reflectance = bj;
		bp.Transparency = bk;
		bp.CanCollide = false;
		bp.Locked = true;
		bp.Anchored = true;
		if bo == false then
			bp.Anchored = false
		end;
		bp.BrickColor = BRICKC(tostring(bl))
		bp.Name = bm;
		bp.Size = bn;
		bp.Position = f.Position;
		bp.Material = bi;
		bp:BreakJoints()
		bp.Parent = aG;
		return bp
	end;
	function Raycast(bq, aZ, b2, aE)
		local aE = type(aE) == "table" and aE or {
			aE
		}
		return game:GetService("Workspace"):FindPartOnRayWithIgnoreList(Ray.new(bq, aZ * b2), aE)
	end;
	function CameraShake(b1, b2, br, bs)
		for b7, b8 in pairs(workspace:GetChildren()) do
			if b8:FindFirstChildOfClass("Humanoid") then
				local b9 = b8:FindFirstChildOfClass("Humanoid")
				local f = b9.Torso;
				if f and game.Players:GetPlayerFromCharacter(b8) then
					if (f.Position - b1).Magnitude <= b2 then
						if b8:FindFirstChild("CamShake") then
							G:AddItem(b8:FindFirstChild("CamShake"), 0.05)
						end;
						local bt = a.CamShake:Clone()
						bt.Parent = b8;
						local bu = IT("NumberValue", bt)
						bu.Name = "Timer"
						bu.Value = bs;
						local bv = IT("NumberValue", bt)
						bv.Name = "Shake"
						bv.Value = br;
						bt.Disabled = false;
						G:AddItem(bt, 15)
					end
				end
			end
		end
	end;
	local bw = false;
	local bx = {
		{
			2598781800,
			1.75
		},
		{
			373410757,
			2
		},
		{
			327466331,
			2.7
		},
		{
			193170682,
			2.2
		},
		{
			2496169936,
			2.5
		},
		{
			1703313447,
			2.3
		},
		{
			2884982022,
			4.25
		},
		{
			3397313642,
			3
		},
		{
			601814175,
			2.2
		}
	}
	local by = 1;
	local bz = a.Molotov;
	bz.Parent = nil;
	local bA = a.Missile;
	bA.Parent = nil;
	local bB = a.Bullet;
	bB.Parent = nil;
	local bC = a.FrontWheel;
	local bD = a.BackWheel;
	local bE = bC.CFrame:inverse() * o.CFrame;
	local bF = bD.CFrame:inverse() * o.CFrame;
	local bG = bC:Clone()
	bG.Parent = nil;
	bG.CanCollide = true;
	bG.Anchored = false;
	local bH = {
		{
			bC,
			bE
		},
		{
			bD,
			bF
		}
	}
	local bI = {}
	local bJ = IT("Model", c)
	bJ.Name = "MotorThings"
	for L = 1, #bH do
		bH[L][1].Anchored = false;
		bH[L][1].Parent = bJ;
		local bK = IT("Motor6D")
		bK.Parent = o;
		bK.C1 = bH[L][2]
		bK.Part0 = o;
		bK.Part1 = bH[L][1]
		bK.Parent = bH[L][1]
		table.insert(bI, bK)
	end;
	o.Anchored = false;
	o.Parent = bJ;
	p.Anchored = false;
	local bL = IT("Motor6D")
	bL.Part0 = h;
	bL.Part1 = o;
	bL.Name = "MotorJoint"
	bL.Parent = h;
	local bM = IT("Motor6D")
	bM.Part0 = i;
	bM.Part1 = p;
	bM.Name = "SmgGrip"
	bM.Parent = i;
	local bN = IT("Motor6D")
	bN.Part0 = i;
	bN.Part1 = p;
	bN.Name = "SmgGrip"
	bN.C0 = CF(0, -1.1, -0.5) * ANGLES(RAD(90), RAD(0), RAD(-180)) * ANGLES(RAD(0), RAD(0), RAD(0))
	local bO = NewSound({
		ID = 122292723,
		PARENT = f,
		VOLUME = 1.5,
		PITCH = 1,
		LOOP = true,
		MAXDISTANCE = 125,
		EMITTERSIZE = 15,
		PLAYING = true,
		PLAYONREMOVE = false,
		DOESDEBRIS = true
	})
	bO.Name = "MOTORHUM"
	local bP = IT("Attachment", h)
	local bQ = IT("Attachment", i)
	bP.Position = VT(1.575, 0.8, 0)
	bQ.Position = VT(0, 1, 0)
	local bR = IT("BallSocketConstraint", h)
	bR.Attachment0 = bP;
	bR.Attachment1 = bQ;
	bR.Radius = 0.05;
	local bS = CreatePart(3, bJ, "Neon", 0, 1, "Grey", "Hitbox", o.Size * 1.5, false)
	bS.Massless = true;
	bS.CFrame = o.CFrame;
	WeldParts(o, bS)
	local bT = bS.Touched:Connect(function(b6)
		if d.WalkSpeed > 80 then
			if b6.Parent:FindFirstChildOfClass("Humanoid") and b6.Parent ~= c then
				if b6.Parent:FindFirstChildOfClass("Humanoid").Health > 0 and b6.Parent:FindFirstChild("Roadrogue") == nil then
					CameraShake(b6.Position, 25, 5, 55)
					local bU = IT("BodyVelocity")
					bU.MaxForce = bU.MaxForce * 500;
					bU.Velocity = CF(f.Position - VT(0, 2, 0), b6.Position + VT(0, 1, 0)).lookVector * d.WalkSpeed / 2;
					bU.Parent = b6;
					G:AddItem(bU, 0.5)
					OofOuchBlood(b6.Position, f.Position, 150)
					ManSlaughter(b6.Parent)
					NewSound({
						ID = 314390675,
						PARENT = f,
						VOLUME = 5,
						PITCH = MRANDOM(8, 12) / 12,
						LOOP = false,
						MAXDISTANCE = 125,
						EMITTERSIZE = 15,
						PLAYING = true,
						PLAYONREMOVE = false,
						DOESDEBRIS = true
					})
				end
			end
		end
	end)
	local bV = false;
	local bW = a.Bazooka;
	bW.Parent = c;
	bW.Anchored = false;
	local bX = IT("Motor6D")
	bX.Part0 = h;
	bX.Part1 = bW;
	bX.Parent = h;
	local bY = CF(0, 0, 0.75) * ANGLES(RAD(90), RAD(-40), RAD(90)) * ANGLES(RAD(0), RAD(0), RAD(0))
	bX.C0 = bY;
	for bZ, b_ in pairs(c:GetDescendants()) do
		if b_:IsA("BasePart") then
			b_.Locked = true;
			b_.Anchored = false
		end
	end;
	local c0 = a.ControlsGUI;
	c0.Parent = b.PlayerGui;
	c0.ToggleButton.MouseButton1Click:Connect(function()
		if c0.ToggleButton.Controls.Visible == false then
			c0.ToggleButton.Controls.Visible = true
		elseif c0.ToggleButton.Controls.Visible == true then
			c0.ToggleButton.Controls.Visible = false
		end
	end)
	local c1 = IT("Beam", c)
	c1.Name = "Roadrogue"
	local c2 = 150;
	local c3 = false;
	local c4 = game.Players.LocalPlayer;
	local c5 = c4.Character;
	local c6 = c5["Bike"].Handle;
	local c7 = Instance.new("Weld", game.Players.LocalPlayer.Character)
	c6:BreakJoints()
	c7.Part1 = c6;
	c7.Part0 = o;
	o.Transparency = 1;
	c7.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(90), math.rad(0))
	for bZ, c8 in next, workspace.non.MotorThings:GetChildren() do
		if c8:IsA("BasePart") then
			c8.Transparency = 1
		end
	end;
	local c9 = c5["Cartoony Rainbow Launcher"].Handle;
	local ca = Instance.new("Weld", game.Players.LocalPlayer.Character)
	c9:BreakJoints()
	ca.Part1 = c9;
	ca.Part0 = bW;
	bW.Transparency = 1;
	ca.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(90), math.rad(-45))
	local cb = c5["Meshes/RainbowSniperAccessory"].Handle;
	local cc = Instance.new("Weld", game.Players.LocalPlayer.Character)
	cb:BreakJoints()
	cc.Part1 = cb;
	cc.Part0 = p;
	cc.C0 = CFrame.new(0, 0, 1) * CFrame.Angles(math.rad(90), math.rad(90), math.rad(-45))
	function Fire()
		local cd = {
			3182143803,
			3182144291,
			3182144511
		}
		F = true;
		q.Parent = nil;
		bM.Parent = nil;
		bN.Parent = i;
		local ce = function(b6, cf, cg)
			if b6.Parent:FindFirstChildOfClass("Humanoid") then
				if b6.Parent:FindFirstChildOfClass("Humanoid").Health > 0 then
					local bU = IT("BodyVelocity")
					bU.MaxForce = bU.MaxForce * 500;
					bU.Velocity = CF(f.Position, b6.Position + VT(0, 5, 0)).lookVector * (cg or 25)
					bU.Parent = b6;
					G:AddItem(bU, 0.2)
					OofOuchBlood(cf, f.Position, 150)
				else
					OofOuchBlood(cf, f.Position, 2)
				end;
				ManSlaughter(b6.Parent)
				NewSound({
					ID = 1489924400,
					PARENT = b6,
					VOLUME = 1,
					PITCH = MRANDOM(9, 11) / 10,
					LOOP = false,
					MAXDISTANCE = 75,
					EMITTERSIZE = 15,
					PLAYING = true,
					PLAYONREMOVE = false,
					DOESDEBRIS = true
				})
			elseif b6.Parent.Parent:FindFirstChildOfClass("Humanoid") then
				if b6.Parent.Parent:FindFirstChildOfClass("Humanoid").Health > 0 then
					if b6.Parent.Parent:FindFirstChildOfClass("Humanoid").Torso then
						local bU = IT("BodyVelocity")
						bU.MaxForce = bU.MaxForce * 500;
						bU.Velocity = CF(f.Position, b6.Position + VT(0, 5, 0)).lookVector * (cg or 25)
						bU.Parent = b6.Parent.Parent:FindFirstChildOfClass("Humanoid").Torso;
						G:AddItem(bU, 0.2)
					end;
					OofOuchBlood(cf, f.Position, 150)
				else
					OofOuchBlood(cf, f.Position, 2)
				end;
				ManSlaughter(b6.Parent.Parent)
				NewSound({
					ID = 1489924400,
					PARENT = b6,
					VOLUME = 1,
					PITCH = MRANDOM(9, 11) / 10,
					LOOP = false,
					MAXDISTANCE = 75,
					EMITTERSIZE = 15,
					PLAYING = true,
					PLAYONREMOVE = false,
					DOESDEBRIS = true
				})
			else
			end
		end;
		local ch = 0;
		local ci = IT("BodyGyro")
		ci.D = 20;
		ci.P = 500;
		ci.MaxTorque = VT(4000000, 4000000, 4000000)
		ci.CFrame = CF(i.CFrame * CF(0, 0.8, 0).p, u) * ANGLES(RAD(90), RAD(45), 0)
		ci.Parent = i;
		repeat
			Swait()
			ch = ch + 1;
			if ch > 4 then
				ch = 0;
				local cj = bB:Clone()
				cj.Anchored = false;
				cj.Parent = workspace;
				cj.CFrame = p.CFrame * ANGLES(RAD(90), 0, 0)
				local bU = IT("BodyVelocity")
				bU.MaxForce = bU.MaxForce * 500;
				bU.Velocity = CF(p.Position, p.CFrame * CF(-1, 0, 0).p).lookVector * 45;
				bU.Parent = cj;
				G:AddItem(bU, 0.1)
				G:AddItem(cj, 1)
				NewSound({
					ID = cd[MRANDOM(1, #cd)],
					PARENT = cj,
					VOLUME = 0.35,
					PITCH = MRANDOM(9, 11) / 10,
					LOOP = false,
					MAXDISTANCE = 65,
					EMITTERSIZE = 10,
					PLAYING = true,
					PLAYONREMOVE = false,
					DOESDEBRIS = true
				})
				local b6, cf = CastProperRay(AttachmentCFrame(p.Nuzzle).p, u, 1000, c)
				local ck = (cf - AttachmentCFrame(p.Nuzzle).p).Magnitude;
				if b6 then
					ce(b6, cf, 12)
				end;
				p.Nuzzle.Flash:Emit(10)
				NewSound({
					ID = 1583819337,
					PARENT = p,
					VOLUME = 0.45,
					PITCH = MRANDOM(9, 11) / 7.5,
					LOOP = false,
					MAXDISTANCE = 125,
					EMITTERSIZE = 10,
					PLAYING = true,
					PLAYONREMOVE = false,
					DOESDEBRIS = true
				})
			end;
			ci.CFrame = CF(i.CFrame * CF(0, 0.8, 0).p, u) * ANGLES(RAD(90), RAD(45), 0)
		until D == false;
		wait(0.1)
		ci:Remove()
		q.Parent = h;
		bM.Parent = i;
		bN.Parent = nil;
		F = false
	end;
	function Boost()
		if d.WalkSpeed > 10 then
			bV = true;
			I = false;
			d.WalkSpeed = c2 * 2;
			o.RightPipe.Fire.Enabled = true;
			o.LeftPipe.Fire.Enabled = true;
			NewSound({
				ID = 142472270,
				PARENT = o,
				VOLUME = 10,
				PITCH = 1,
				LOOP = false,
				MAXDISTANCE = 125,
				EMITTERSIZE = 10,
				PLAYING = true,
				PLAYONREMOVE = false,
				DOESDEBRIS = true
			})
			for L = 0, 4, 0.1 / w do
				Swait()
				local cl = -f.RotVelocity.Y / 12.5;
				m.C0 = Clerp(m.C0, CF(0, 1.4, 1.5) * ANGLES(RAD(35), RAD(0) - cl / 6, RAD(0) - cl / 2) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.5 / w)
				n.C0 = Clerp(n.C0, CF(0, 1.45, -0.3) * ANGLES(RAD(-30), RAD(0) - cl / 2, RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.5 / w)
				bL.C0 = Clerp(bL.C0, CF(0, -1.7, -0.5) * ANGLES(RAD(0), RAD(0), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.5 / w)
				q.C0 = Clerp(q.C0, CF(1.3, 0.5, -0.3) * ANGLES(RAD(110), RAD(15), RAD(15)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.5 / w)
				bM.C0 = Clerp(bM.C0, CF(0.2, -1.1, -0.4) * ANGLES(RAD(90), RAD(0), RAD(-160)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.5 / w)
				r.C0 = Clerp(r.C0, CF(-1.5, 0.4, -0.1) * ANGLES(RAD(64.6), RAD(-5), RAD(-5)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.5 / w)
				s.C0 = Clerp(s.C0, CF(0.7, -1.4, 0.1) * ANGLES(RAD(-50), RAD(0), RAD(10)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.5 / w)
				t.C0 = Clerp(t.C0, CF(-0.7, -1.4, 0.1) * ANGLES(RAD(-50), RAD(0), RAD(-10)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.5 / w)
				if f.Velocity.Magnitude <= 0.5 then
					break
				end
			end;
			o.RightPipe.Fire.Enabled = false;
			o.LeftPipe.Fire.Enabled = false;
			I = true;
			bV = false
		end
	end;
	function Molotov()
		if F == false then
			F = true;
			I = false;
			NewSound({
				ID = 2764683507,
				PARENT = f,
				VOLUME = 5,
				PITCH = 1,
				LOOP = false,
				MAXDISTANCE = 125,
				EMITTERSIZE = 35,
				PLAYING = true,
				PLAYONREMOVE = false,
				DOESDEBRIS = true
			})
			for L = 0, 0.1, 0.1 / w do
				Swait()
				m.C0 = Clerp(m.C0, CF(0, 1.3, -0.5) * ANGLES(RAD(-20), RAD(10), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 2.25 / w)
				n.C0 = Clerp(n.C0, CF(0, 1.5, 0.1) * ANGLES(RAD(15.2), RAD(-9.7), RAD(2.6)) * ANGLES(RAD(0), RAD(0), RAD(0)), 2.25 / w)
				bL.C0 = Clerp(bL.C0, CF(0.1, -2.5, -0.4) * ANGLES(RAD(20.3), RAD(-9.4), RAD(3.5)) * ANGLES(RAD(0), RAD(0), RAD(0)), 2.25 / w)
				q.C0 = Clerp(q.C0, CF(1.5, 1.1, -0.7) * ANGLES(RAD(119.3), RAD(6.7), RAD(13.4)) * ANGLES(RAD(0), RAD(0), RAD(0)), 2.25 / w)
				bM.C0 = Clerp(bM.C0, CF(0.6, -1.1, -0.5) * ANGLES(RAD(90), RAD(0), RAD(-155)) * ANGLES(RAD(0), RAD(0), RAD(0)), 2.25 / w)
				r.C0 = Clerp(r.C0, CF(-1.5, 0.2, -0.1) * ANGLES(RAD(30.4), RAD(-8.6), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 2.25 / w)
				s.C0 = Clerp(s.C0, CF(0.8, -2, -0.2) * ANGLES(RAD(-20.9), RAD(-5.1), RAD(11.1)) * ANGLES(RAD(0), RAD(0), RAD(0)), 2.25 / w)
				t.C0 = Clerp(t.C0, CF(-0.7, -2, -0.2) * ANGLES(RAD(-29.6), RAD(-3.7), RAD(-8.6)) * ANGLES(RAD(0), RAD(0), RAD(0)), 2.25 / w)
			end;
			local cm = bz:Clone()
			cm.CanCollide = false;
			cm.Parent = H;
			cm.CFrame = CF(i.Position, u) * ANGLES(RAD(45), 0, 0)
			cm.Anchored = false;
			local cn = false;
			local cg = 15 + (cm.Position - u).Magnitude;
			if cg > 300 then
				cg = 300
			end;
			local bU = IT("BodyVelocity")
			bU.MaxForce = bU.MaxForce * 500;
			bU.Velocity = CF(cm.Position, u + VT(0, 6, 0)).lookVector * cg;
			bU.Parent = cm;
			G:AddItem(bU, 0.05)
			cm.RotVelocity = VT(MRANDOM(-5, 5), MRANDOM(-5, 5), MRANDOM(-5, 5))
			wait(0.1)
			cm.CanCollide = true;
			local co = function(cp)
				if cn == false then
					cn = true;
					local FLOOR, cf = Raycast(cm.Position + VT(0, 5, 0), CF(VT(0, 0, 0), VT(0, -1, 0)).lookVector, 12, {
						c,
						cp
					})
					if FLOOR then
						CameraShake(cf, 35, 5, 6)
						for L = 1, MRANDOM(3, 5) do
							coroutine.resume(coroutine.create(function()
								local cq = CreatePart(3, H, "Neon", 0, 1, "Grey", "Fire", VT(10, 2, 10), true)
								cq.CFrame = CF(cf) * ANGLES(0, RAD(MRANDOM(0, 359)), 0) * CF(0, 0, (L - 1) * 5)
								NewSound({
									ID = 3303579709,
									PARENT = cq,
									VOLUME = 6,
									PITCH = MRANDOM(8, 12) / 10,
									LOOP = false,
									MAXDISTANCE = 125,
									EMITTERSIZE = 35,
									PLAYING = true,
									PLAYONREMOVE = false,
									DOESDEBRIS = true
								})
								local cr = cq.Touched:Connect(function(b6)
									if b6.Parent:FindFirstChildOfClass("Humanoid") and b6.Parent ~= c and b6.Parent:FindFirstChild("Roadrogue") == nil then
										if b6.Parent:FindFirstChildOfClass("Humanoid").Health > 0 then
											NewSound({
												ID = 3303579709,
												PARENT = b6,
												VOLUME = 3,
												PITCH = 1,
												LOOP = false,
												MAXDISTANCE = 125,
												EMITTERSIZE = 35,
												PLAYING = true,
												PLAYONREMOVE = false,
												DOESDEBRIS = true
											})
											for b7, b8 in pairs(b6.Parent:GetChildren()) do
												if b8:IsA("BasePart") and b8:FindFirstChild("Fire") == nil then
												end
											end
										end;
										ManSlaughter(b6.Parent)
									end
								end)
								wait(MRANDOM(90, 175) / 10)
								BURN.Enabled = false;
								cr:Disconnect()
								G:AddItem(cq, 3)
							end))
						end
					end;
					cm.Transparency = 1;
					cm.Anchored = true;
					cm.CanCollide = false;
					cm.Head.Fire.Enabled = false;
					G:AddItem(cm, 5)
					NewSound({
						ID = 156444949,
						PARENT = cm,
						VOLUME = 7.5,
						PITCH = 1,
						LOOP = false,
						MAXDISTANCE = 125,
						EMITTERSIZE = 35,
						PLAYING = true,
						PLAYONREMOVE = false,
						DOESDEBRIS = true
					})
				end
			end;
			local b6 = cm.Touched:Connect(function(cs)
				if cs.Anchored == true then
					local cp = nil;
					if cs.Parent ~= workspace and cs.Anchored == false then
						cp = cs.Parent
					end;
					co(cp)
				end
			end)
			for L = 0, 0.3, 0.1 / w do
				Swait()
				m.C0 = Clerp(m.C0, CF(0, 1.3, -0.5) * ANGLES(RAD(-20), RAD(10), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 2.25 / w)
				n.C0 = Clerp(n.C0, CF(0, 1.5, 0.1) * ANGLES(RAD(15.2), RAD(-9.7), RAD(2.6)) * ANGLES(RAD(0), RAD(0), RAD(0)), 2.25 / w)
				bL.C0 = Clerp(bL.C0, CF(0.1, -2.5, -0.4) * ANGLES(RAD(20.3), RAD(-9.4), RAD(3.5)) * ANGLES(RAD(0), RAD(0), RAD(0)), 2.25 / w)
				q.C0 = Clerp(q.C0, CF(1.5, 1.1, -0.7) * ANGLES(RAD(119.3), RAD(6.7), RAD(13.4)) * ANGLES(RAD(0), RAD(0), RAD(0)), 2.25 / w)
				bM.C0 = Clerp(bM.C0, CF(0.6, -1.1, -0.5) * ANGLES(RAD(90), RAD(0), RAD(-155)) * ANGLES(RAD(0), RAD(0), RAD(0)), 2.25 / w)
				r.C0 = Clerp(r.C0, CF(-1.5, 0.2, -0.1) * ANGLES(RAD(30.4), RAD(-8.6), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 2.25 / w)
				s.C0 = Clerp(s.C0, CF(0.8, -2, -0.2) * ANGLES(RAD(-20.9), RAD(-5.1), RAD(11.1)) * ANGLES(RAD(0), RAD(0), RAD(0)), 2.25 / w)
				t.C0 = Clerp(t.C0, CF(-0.7, -2, -0.2) * ANGLES(RAD(-29.6), RAD(-3.7), RAD(-8.6)) * ANGLES(RAD(0), RAD(0), RAD(0)), 2.25 / w)
			end;
			I = true;
			F = false
		end
	end;
	function LooseBike()
		if f.Velocity.Magnitude <= 1 then
			I = false;
			F = true;
			bV = true;
			d.WalkSpeed = 0;
			d.JumpPower = 0;
			for L = 1, 60 do
				Swait()
				f.CFrame = f.CFrame * ANGLES(0, RAD(-L / 2), 0)
				m.C0 = Clerp(m.C0, CF(0.2, -0.6, 0.5) * ANGLES(RAD(-3.5), RAD(3.5), RAD(-44.9)) * ANGLES(RAD(0), RAD(0), RAD(0)), 2 / w)
				n.C0 = Clerp(n.C0, CF(0, 1.5, 0) * ANGLES(RAD(5), RAD(45), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 2 / w)
				bL.C0 = Clerp(bL.C0, CF(0, -1.7, -0.6) * ANGLES(RAD(5), RAD(0), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 2 / w)
				q.C0 = Clerp(q.C0, CF(1.5, 0.8, -0.2) * ANGLES(RAD(95), RAD(50), RAD(60)) * ANGLES(RAD(0), RAD(0), RAD(0)), 2 / w)
				bM.C0 = Clerp(bM.C0, CF(0, -1.1, -0.5) * ANGLES(RAD(90), RAD(0), RAD(180)) * ANGLES(RAD(0), RAD(0), RAD(0)), 2 / w)
				r.C0 = Clerp(r.C0, CF(-1.5, 0.4, 0) * ANGLES(RAD(60), RAD(-10), RAD(-5)) * ANGLES(RAD(0), RAD(0), RAD(0)), 2 / w)
				s.C0 = Clerp(s.C0, CF(0.7, -1.6, -0.3) * ANGLES(RAD(-20), RAD(0), RAD(10)) * ANGLES(RAD(0), RAD(0), RAD(0)), 2 / w)
				t.C0 = Clerp(t.C0, CF(-0.7, -1.6, -0.3) * ANGLES(RAD(-20), RAD(0), RAD(-10)) * ANGLES(RAD(0), RAD(0), RAD(0)), 2 / w)
			end;
			f.CFrame = CF(f.Position, VT(u.X, f.Position.Y, u.Z))
			coroutine.resume(coroutine.create(function()
				local ct = o:Clone()
				ct.ManualWeld:Remove()
				ct.CFrame = CF(o.Position, VT(u.X, o.Position.Y + 0.5, u.Z))
				ct.Anchored = true;
				local cu = false;
				ct.RightPipe.Fire.Enabled = true;
				ct.LeftPipe.Fire.Enabled = true;
				ct.Dust.Dust.Enabled = true;
				ct.Parent = H;
				c7.Part0 = ct;
				c7.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(90), math.rad(0))
				coroutine.wrap(function()
					repeat
						task.wait()
					until (c6.CFrame.p - workspace.non.HumanoidRootPart.CFrame.p).magnitude > 60;
					c7.Part0 = o;
					c7.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(90), math.rad(0))
				end)()
				local cv = NewSound({
					ID = 122292723,
					PARENT = ct,
					VOLUME = 1.5,
					PITCH = 3,
					LOOP = true,
					MAXDISTANCE = 125,
					EMITTERSIZE = 15,
					PLAYING = true,
					PLAYONREMOVE = false,
					DOESDEBRIS = true
				})
				NewSound({
					ID = 142472270,
					PARENT = ct,
					VOLUME = 10,
					PITCH = 1,
					LOOP = false,
					MAXDISTANCE = 125,
					EMITTERSIZE = 35,
					PLAYING = true,
					PLAYONREMOVE = false,
					DOESDEBRIS = true
				})
				for L = 1, 200 do
					Swait()
					local FLOOR, cf = Raycast(ct.Position, CF(VT(0, 0, 0), VT(0, -1, 0)).lookVector, 5.5, c)
					if FLOOR then
						ct.CFrame = CF(ct.Position.X, cf.Y + ct.Size.Y / 2, ct.Position.Z) * ANGLES(0, RAD(ct.Orientation.Y), 0) * CF(0, 0, -2.5)
						local b6 = Raycast(ct.Position, ct.CFrame.lookVector, 2.6, c)
						if b6 then
							cu = true;
							break
						end
					else
						break
					end
				end;
				cv:Remove()
				if cu == true then
					ct.Core.Core.Size = NumberSequence.new(10, 25)
					ct.Core.Dust:Emit(200)
					ct.Core.Black:Emit(15)
					ct.Core.Core:Emit(100)
					for b7, b8 in pairs(ct:GetChildren()) do
						if b8.Name ~= "Core" then
							b8:Remove()
						end
					end;
					local aC = IT("Explosion")
					aC.BlastPressure = 0;
					aC.BlastRadius = 50;
					aC.Parent = workspace;
					aC.Position = ct.Position;
					aC.Hit:Connect(function(cs)
						if cs.Parent:FindFirstChildOfClass("Humanoid") == nil and cs.Parent.Parent:FindFirstChildOfClass("Humanoid") == nil then
							if cs.Anchored == false then
								cs:BreakJoints()
								local bU = IT("BodyVelocity")
								bU.MaxForce = bU.MaxForce * 500;
								bU.Velocity = CF(ct.Position, cs.Position + VT(0, 5, 0)).lookVector * MRANDOM(35, 75)
								bU.Parent = cs;
								G:AddItem(bU, 0.5)
								if MRANDOM(1, 3) == 1 then
								end
							end
						end
					end)
					CameraShake(ct.Position, 150, 10, 75)
					local cw = AreaOfEffect(ct.Position, 65, 0, 0, true)
					if #cw > 0 then
						for cx = 1, #cw do
							local cy = cw[cx][1]:FindFirstChild("Torso") or cw[cx][1]:FindFirstChild("LowerTorso")
							if cy then
								local bU = IT("BodyVelocity")
								bU.MaxForce = bU.MaxForce * 500;
								bU.Velocity = CF(ct.Position, cy.Position + VT(0, 5, 0)).lookVector * MRANDOM(35, 75)
								bU.Parent = cy;
								G:AddItem(bU, 0.5)
							end;
							ManSlaughter(cw[cx][1])
							for b7, b8 in pairs(cw[cx][1]:GetChildren()) do
								if b8:IsA("BasePart") and MRANDOM(1, 3) == 1 then
								end
							end
						end
					end;
					NewSound({
						ID = 243702774,
						PARENT = ct,
						VOLUME = 7.5,
						PITCH = 1.5,
						LOOP = false,
						MAXDISTANCE = 550,
						EMITTERSIZE = 75,
						PLAYING = true,
						PLAYONREMOVE = false,
						DOESDEBRIS = true
					})
					ct.Transparency = 1;
					for L = 1, 2 do
						local cz = bG:Clone()
						cz.Parent = workspace;
						cz.CFrame = ct.CFrame * ANGLES(RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)))
						cz.RotVelocity = VT(MRANDOM(-5, 5), MRANDOM(-5, 5), MRANDOM(-5, 5))
						local bU = IT("BodyVelocity")
						bU.MaxForce = bU.MaxForce * 500;
						bU.Velocity = cz.CFrame.lookVector * 85;
						bU.Parent = cz;
						G:AddItem(bU, 0.12)
						G:AddItem(cz, 15)
					end;
					G:AddItem(ct, 7.1)
				else
					ct.CanCollide = true;
					ct.Parent = workspace;
					ct.Anchored = false;
					ct.Dust.Dust.Enabled = false;
					ct.RightPipe.Fire.Enabled = false;
					ct.LeftPipe.Fire.Enabled = false;
					G:AddItem(ct, 15)
				end
			end))
			o.Transparency = 1;
			bC.Transparency = 1;
			bD.Transparency = 1;
			for L = 0, 0.4, 0.1 / w do
				Swait()
				m.C0 = Clerp(m.C0, CF(0, 1.8, 0.5) * ANGLES(RAD(10), RAD(0), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / w)
				n.C0 = Clerp(n.C0, CF(0, 1.4, -0.4) * ANGLES(RAD(-25), RAD(0), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / w)
				q.C0 = Clerp(q.C0, CF(1.4, -0.2, 0.2) * ANGLES(RAD(20), RAD(-20), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / w)
				bM.C0 = Clerp(bM.C0, CF(0, -1.1, -0.5) * ANGLES(RAD(90), RAD(0), RAD(180)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / w)
				r.C0 = Clerp(r.C0, CF(-1.5, 0.2, 0) * ANGLES(RAD(-0.3), RAD(-2.6), RAD(-14.8)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / w)
				s.C0 = Clerp(s.C0, CF(0.5, -1.5, -0.1) * ANGLES(RAD(-45), RAD(-5), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / w)
				t.C0 = Clerp(t.C0, CF(-0.5, -1.8, 0.2) * ANGLES(RAD(-15), RAD(5), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / w)
			end;
			F = false;
			for L = 0, 2, 0.1 / w do
				Swait()
				m.C0 = Clerp(m.C0, CF(0, -1, 0.6) * ANGLES(RAD(-5), RAD(0), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1.35 / w)
				n.C0 = Clerp(n.C0, CF(0, 1.5, 0) * ANGLES(RAD(5), RAD(0), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1.35 / w)
				q.C0 = Clerp(q.C0, CF(1.5, -0.1, 0) * ANGLES(RAD(24.9), RAD(1.7), RAD(4.7)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1.35 / w)
				bM.C0 = Clerp(bM.C0, CF(0, -1.1, -0.5) * ANGLES(RAD(90), RAD(0), RAD(-180)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1.35 / w)
				r.C0 = Clerp(r.C0, CF(-0.4, 0.4, -1) * ANGLES(RAD(80.9), RAD(5.7), RAD(48.4)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1.35 / w)
				s.C0 = Clerp(s.C0, CF(0.5, -0.9, -1.1) * ANGLES(RAD(-10), RAD(-10), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1.35 / w)
				t.C0 = Clerp(t.C0, CF(-0.5, -1.5, 0) * ANGLES(RAD(-60), RAD(10), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1.35 / w)
			end;
			for L = 0, 0.25, 0.1 / w do
				Swait()
				m.C0 = Clerp(m.C0, CF(0, 1.8, 0.5) * ANGLES(RAD(10), RAD(0), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / w)
				n.C0 = Clerp(n.C0, CF(0, 1.4, -0.4) * ANGLES(RAD(-25), RAD(0), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / w)
				q.C0 = Clerp(q.C0, CF(1.4, -0.2, 0.2) * ANGLES(RAD(20), RAD(-20), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / w)
				bM.C0 = Clerp(bM.C0, CF(0, -1.1, -0.5) * ANGLES(RAD(90), RAD(0), RAD(180)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / w)
				r.C0 = Clerp(r.C0, CF(-1.5, 0.2, 0) * ANGLES(RAD(-0.3), RAD(-2.6), RAD(-14.8)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / w)
				s.C0 = Clerp(s.C0, CF(0.5, -1.5, -0.1) * ANGLES(RAD(-45), RAD(-5), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / w)
				t.C0 = Clerp(t.C0, CF(-0.5, -1.8, 0.2) * ANGLES(RAD(-15), RAD(5), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / w)
			end;
			bV = false;
			I = true;
			d.WalkSpeed = 5;
			d.JumpPower = 85
		end
	end;
	function GrabBazooka()
		if c3 == false then
			local cA = false;
			NewSound({
				ID = 171140306,
				PARENT = f,
				VOLUME = 1,
				PITCH = MRANDOM(9, 11) / 15,
				LOOP = false,
				MAXDISTANCE = 75,
				EMITTERSIZE = 15,
				PLAYING = true,
				PLAYONREMOVE = false,
				DOESDEBRIS = true
			})
			c3 = true;
			bX.Part0 = i;
			bX.C0 = CF(-0.4, -0.9, -0.7) * ANGLES(RAD(-88.7), RAD(4.8), RAD(-15.1)) * ANGLES(RAD(0), RAD(0), RAD(0))
			local Fire = function()
				local cB = nil;
				if v then
					local d = v.Parent:FindFirstChildOfClass("Humanoid") or v.Parent.Parent:FindFirstChildOfClass("Humanoid")
					if d then
						if d.Health > 0 and d.Torso then
							cB = d.Torso
						end
					end
				end;
				local cC = u;
				local cD = bA:Clone()
				cD.Parent = H;
				cD.CFrame = CF(bW.CFrame * CF(0, 0, -2).p, cC)
				NewSound({
					ID = 440145223,
					PARENT = bW,
					VOLUME = 5,
					PITCH = MRANDOM(9, 11) / 10,
					LOOP = false,
					MAXDISTANCE = 80,
					EMITTERSIZE = 15,
					PLAYING = true,
					PLAYONREMOVE = false,
					DOESDEBRIS = true
				})
				NewSound({
					ID = 440145223,
					PARENT = cD,
					VOLUME = 5,
					PITCH = MRANDOM(9, 11) / 10,
					LOOP = false,
					MAXDISTANCE = 80,
					EMITTERSIZE = 15,
					PLAYING = true,
					PLAYONREMOVE = false,
					DOESDEBRIS = true
				})
				for L = 1, 200 do
					Swait()
					local b6, cf = Raycast(cD.Position, cD.CFrame.lookVector, 4, c)
					if b6 then
						cD.CFrame = CF(cf)
						break
					end;
					if cB then
						cD.CFrame = Clerp(cD.CFrame, CF(cD.Position, cB.Position), 0.2) * CF(0, 0, -2.25)
					else
						cD.CFrame = cD.CFrame * CF(0, 0, -3)
					end
				end;
				cD.Transparency = 1;
				cD.Hind:Remove()
				cD.CFrame = CF(cD.Position)
				cD.Size = VT(0, 0, 0)
				NewSound({
					ID = 142070127,
					PARENT = cD,
					VOLUME = 7,
					PITCH = MRANDOM(8, 12) / 10,
					LOOP = false,
					MAXDISTANCE = 300,
					EMITTERSIZE = 15,
					PLAYING = true,
					PLAYONREMOVE = false,
					DOESDEBRIS = true
				})
				local aC = IT("Explosion")
				aC.BlastPressure = 0;
				aC.BlastRadius = 15;
				aC.Position = cD.Position;
				aC.Parent = workspace;
				aC.Hit:Connect(function(cs)
					if cs.Parent:FindFirstChildOfClass("Humanoid") == nil and cs.Parent.Parent:FindFirstChildOfClass("Humanoid") == nil then
						if cs.Anchored == false then
							cs:BreakJoints()
							local bU = IT("BodyVelocity")
							bU.MaxForce = bU.MaxForce * 500;
							bU.Velocity = CF(cD.Position, cs.Position + VT(0, 5, 0)).lookVector * MRANDOM(35, 75)
							bU.Parent = cs;
							G:AddItem(bU, 0.5)
							if MRANDOM(1, 3) == 1 then
								local cq = a.Fire:Clone()
								cq.Parent = cs;
								cq.Enabled = true
							end
						end
					end
				end)
				CameraShake(cD.Position, 55, 2, 7)
				local cw = AreaOfEffect(cD.Position, 25, 0, 0, true)
				if #cw > 0 then
					for cx = 1, #cw do
						local cy = cw[cx][1]:FindFirstChild("Torso") or cw[cx][1]:FindFirstChild("LowerTorso")
						if cy then
							local bU = IT("BodyVelocity")
							bU.MaxForce = bU.MaxForce * 500;
							bU.Velocity = CF(cD.Position, cy.Position + VT(0, 5, 0)).lookVector * MRANDOM(35, 75)
							bU.Parent = cy;
							G:AddItem(bU, 0.5)
						end;
						ManSlaughter(cw[cx][1])
						for b7, b8 in pairs(cw[cx][1]:GetChildren()) do
							if b8:IsA("BasePart") and MRANDOM(1, 3) == 1 then
								local cq = a.Fire:Clone()
								cq.Parent = b8;
								cq.Enabled = true
							end
						end
					end
				end;
				AreaOfEffect(cD.Position, 35, 200, false)
				G:AddItem(cD, 2)
			end;
			wait(0.5)
			BUTTON = game:GetService('UserInputService').InputBegan:Connect(function(cE, cF)
				if cF then
					return
				end;
				if B ~= 'Sit' then
					if cE.UserInputType == Enum.UserInputType.Keyboard and cE.KeyCode == Enum.KeyCode.V then
						BUTTON:Disconnect()
						wait(0.1)
						NewSound({
							ID = 171140306,
							PARENT = f,
							VOLUME = 1,
							PITCH = MRANDOM(9, 11) / 15,
							LOOP = false,
							MAXDISTANCE = 75,
							EMITTERSIZE = 15,
							PLAYING = true,
							PLAYONREMOVE = false,
							DOESDEBRIS = true
						})
						c3 = false;
						bX.Part0 = h;
						bX.C0 = bY
					elseif cE.UserInputType == Enum.UserInputType.MouseButton1 and cA == false then
						cA = true;
						q.C0 = Clerp(q.C0, CF(1.5, 0.4, 0.7) * ANGLES(RAD(90), RAD(15), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 2.5 / w)
						r.C0 = Clerp(r.C0, CF(0.5, 0.3, -0.9) * ANGLES(RAD(91.4), RAD(-16.9), RAD(19.9)) * ANGLES(RAD(0), RAD(0), RAD(0)), 2.5 / w)
						coroutine.resume(coroutine.create(function()
							wait(0.25)
							cA = false
						end))
						Fire()
					end
				end
			end)
		end
	end;
	x = b:GetMouse()
	x.Move:Connect(function()
		if B == 'Sit' then
			return
		end;
		u = x.Hit.p
	end)
	x.Button1Down:Connect(function()
		if B == 'Sit' then
			return
		end;
		if not F then
			D = true;
			if c3 == false then
				Fire()
			end
		end
	end)
	x.Button1Up:Connect(function()
		if B == 'Sit' then
			return
		end;
		D = false
	end)
	game:GetService('UserInputService').InputEnded:Connect(function(cG, cF)
		if B == 'Sit' then
			return
		end;
		if cF then
			return
		end;
		C = false
	end)
	game:GetService('UserInputService').InputBegan:Connect(function(cG, cF)
		if B == 'Sit' then
			return
		end;
		if cF then
			return
		end;
		local cH = game:GetService('UserInputService'):GetStringForKeyCode(cG.KeyCode):lower()
		if I then
			C = true;
			if cH == "e" then
				if f:FindFirstChild("BGM_MUSIC") then
					f:FindFirstChild("BGM_MUSIC"):Remove()
				else
					local cI = NewSound({
						ID = bx[by][1],
						PARENT = f,
						VOLUME = bx[by][2],
						PITCH = 1,
						LOOP = true,
						MAXDISTANCE = 300,
						EMITTERSIZE = 300,
						PLAYING = true,
						PLAYONREMOVE = false,
						DOESDEBRIS = true
					})
					cI.Name = "BGM_MUSIC"
				end
			elseif cH == "z" and c2 > 100 and c3 == false then
				Boost()
			elseif cH == "x" and F == false and c3 == false then
				Molotov()
			elseif cH == "c" and F == false and c3 == false then
				LooseBike()
			elseif cH == "v" and F == false and I == true and c3 == false then
				GrabBazooka()
			elseif cH == "n" then
				NewSound({
					ID = 156286438,
					PARENT = f,
					VOLUME = 7,
					PITCH = 1,
					LOOP = false,
					MAXDISTANCE = 75,
					EMITTERSIZE = 10,
					PLAYING = true,
					PLAYONREMOVE = false,
					DOESDEBRIS = true
				})
				if c2 == 75 then
					c2 = 150
				elseif c2 == 150 then
					c2 = 75
				end
			elseif cH == "t" then
				NewSound({
					ID = 159882462,
					PARENT = f,
					VOLUME = 10,
					PITCH = 1,
					LOOP = false,
					MAXDISTANCE = 125,
					EMITTERSIZE = 50,
					PLAYING = true,
					PLAYONREMOVE = false,
					DOESDEBRIS = true
				})
			elseif cH == "y" then
				NewSound({
					ID = 463770058,
					PARENT = f,
					VOLUME = 10,
					PITCH = 1,
					LOOP = false,
					MAXDISTANCE = 125,
					EMITTERSIZE = 50,
					PLAYING = true,
					PLAYONREMOVE = false,
					DOESDEBRIS = true
				})
			elseif cH == "u" then
				NewSound({
					ID = 159882546,
					PARENT = f,
					VOLUME = 10,
					PITCH = 1,
					LOOP = false,
					MAXDISTANCE = 125,
					EMITTERSIZE = 50,
					PLAYING = true,
					PLAYONREMOVE = false,
					DOESDEBRIS = true
				})
			elseif cH == "g" then
				NewSound({
					ID = 159882441,
					PARENT = f,
					VOLUME = 10,
					PITCH = 1,
					LOOP = false,
					MAXDISTANCE = 125,
					EMITTERSIZE = 50,
					PLAYING = true,
					PLAYONREMOVE = false,
					DOESDEBRIS = true
				})
			elseif cH == "m" then
				by = by + 1;
				if by > #bx then
					by = 1
				end;
				if f:FindFirstChild("BGM_MUSIC") then
					f:FindFirstChild("BGM_MUSIC").SoundId = "rbxassetid://" .. bx[by][1]
					f:FindFirstChild("BGM_MUSIC").Volume = bx[by][2]
					f:FindFirstChild("BGM_MUSIC"):Play()
				end
			end
		end
	end)
	local cI = NewSound({
		ID = 2598781800,
		PARENT = f,
		VOLUME = 2.75,
		PITCH = 1,
		LOOP = true,
		MAXDISTANCE = 300,
		EMITTERSIZE = 300,
		PLAYING = true,
		PLAYONREMOVE = false,
		DOESDEBRIS = true
	})
	cI.Name = "BGM_MUSIC"
	d.Died:Connect(function()
		if o.Transparency == 0 then
			bJ:BreakJoints()
			o.Anchored = true;
			o.Transparency = 1;
			o.CanCollide = false;
			o.Core.Core.Size = NumberSequence.new(10, 25)
			o.Core.Dust:Emit(200)
			o.Core.Black:Emit(15)
			o.Core.Core:Emit(100)
			for b7, b8 in pairs(o:GetChildren()) do
				if b8.Name ~= "Core" then
					b8:Remove()
				end
			end;
			local aC = IT("Explosion")
			aC.BlastPressure = 0;
			aC.BlastRadius = 50;
			aC.Parent = workspace;
			aC.Position = o.Position;
			aC.Hit:Connect(function(cs)
				if cs.Parent:FindFirstChildOfClass("Humanoid") == nil and cs.Parent.Parent:FindFirstChildOfClass("Humanoid") == nil then
					if cs.Anchored == false then
						cs:BreakJoints()
						local bU = IT("BodyVelocity")
						bU.MaxForce = bU.MaxForce * 500;
						bU.Velocity = CF(o.Position, cs.Position + VT(0, 5, 0)).lookVector * MRANDOM(35, 75)
						bU.Parent = cs;
						G:AddItem(bU, 0.5)
						if MRANDOM(1, 3) == 1 then
							local cq = a.Fire:Clone()
							cq.Parent = cs;
							cq.Enabled = true
						end
					end
				end
			end)
			CameraShake(o.Position, 150, 10, 75)
			local cw = AreaOfEffect(o.Position, 65, 0, 0, true)
			if #cw > 0 then
				for cx = 1, #cw do
					local cy = cw[cx][1]:FindFirstChild("Torso") or cw[cx][1]:FindFirstChild("LowerTorso")
					if cy then
						local bU = IT("BodyVelocity")
						bU.MaxForce = bU.MaxForce * 500;
						bU.Velocity = CF(o.Position, cy.Position + VT(0, 5, 0)).lookVector * MRANDOM(35, 75)
						bU.Parent = cy;
						G:AddItem(bU, 0.5)
					end;
					ManSlaughter(cw[cx][1])
					for b7, b8 in pairs(cw[cx][1]:GetChildren()) do
						if b8:IsA("BasePart") and MRANDOM(1, 3) == 1 then
							local cq = a.Fire:Clone()
							cq.Parent = b8;
							cq.Enabled = true
						end
					end
				end
			end;
			NewSound({
				ID = 243702774,
				PARENT = o,
				VOLUME = 7.5,
				PITCH = 1.5,
				LOOP = false,
				MAXDISTANCE = 550,
				EMITTERSIZE = 75,
				PLAYING = true,
				PLAYONREMOVE = false,
				DOESDEBRIS = true
			})
			o.Transparency = 1
		else
			o:Remove()
		end;
		bw = true;
		ManSlaughter(c)
		o.CanCollide = true;
		bS:Remove()
	end)
	d.HealthChanged:Connect(function()
		if bw == false then
			d.PlatformStand = false;
			d.MaxHealth = 3000;
			d.Health = 3000;
			d.Name = b.UserId
		end
	end)
	d.PlatformStand = false;
	d.MaxHealth = 3000;
	d.Health = 3000;
	d.Name = b.UserId;
	d.WalkSpeed = 5;
	d.JumpPower = 85;
	local cJ = game:GetService("Players").LocalPlayer;
	local cK = cJ.Character;
	local d = cK:FindFirstChildOfClass("Humanoid")
	for bZ, c8 in next, d:GetPlayingAnimationTracks() do
		c8:Stop()
	end;
	while true do
		Swait()
		E = E + z;
		if c:FindFirstChild("Animate") then
			c:FindFirstChild("Animate"):Destroy()
		end;
		if c:FindFirstChild("Sound") then
			c:FindFirstChild("Sound"):Destroy()
		end;
		for bZ, c8 in next, d:GetPlayingAnimationTracks() do
			c8:Stop()
		end;
		local cL = (f.Velocity * VT(1, 0, 1)).magnitude;
		local cM = f.Velocity.y;
		local cN = Raycast(f.Position, CF(f.Position, f.Position + VT(0, -1, 0)).lookVector, 4 + d.HipHeight, c)
		local cO = 4 / (d.WalkSpeed / 16)
		if f:FindFirstChild("MOTORHUM") == nil then
			bO = NewSound({
				ID = 122292723,
				PARENT = f,
				VOLUME = 1.5,
				PITCH = 1,
				LOOP = true,
				MAXDISTANCE = 125,
				EMITTERSIZE = 15,
				PLAYING = true,
				PLAYONREMOVE = false,
				DOESDEBRIS = true
			})
			bO.Name = "MOTORHUM"
		else
			if f:FindFirstChild("MOTORHUM").Playing == false then
				f:FindFirstChild("MOTORHUM").Playing = true
			end
		end;
		local cl = -f.RotVelocity.Y / 12.5;
		if c3 == true then
			q.C0 = Clerp(q.C0, CF(1.5, 0.4, 0.3) * ANGLES(RAD(90), RAD(15), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.5 / w)
			bM.C0 = Clerp(bM.C0, CF(0, -1.1, 0.2) * ANGLES(RAD(10), RAD(0), RAD(-180)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.5 / w)
			r.C0 = Clerp(r.C0, CF(0.5, 0.3, -1.3) * ANGLES(RAD(91.4), RAD(-16.9), RAD(19.9)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.5 / w)
		end;
		if cL > 0.5 then
			B = "Drive"
		else
			B = "Idle"
		end;
		if cN then
			if cL < 1 and cN ~= nil then
				o.Dust.Dust.Enabled = false;
				if I == true then
					m.C0 = Clerp(m.C0, CF(-0.6, 0.2, 0.6) * ANGLES(RAD(0), RAD(15), RAD(10)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1.2 / w)
					n.C0 = Clerp(n.C0, CF(0, 1.5, 0) * ANGLES(RAD(0), RAD(-15), RAD(-5)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1.2 / w)
					bL.C0 = Clerp(bL.C0, CF(0.5, -1.5, -0.5) * ANGLES(RAD(-2.7), RAD(-14.8), RAD(-5.3)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1.2 / w)
					if c3 == false then
						q.C0 = Clerp(q.C0, CF(1.4, 0.3, 0.4) * ANGLES(RAD(31.3), RAD(-39.9), RAD(55.5)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1.2 / w)
						bM.C0 = Clerp(bM.C0, CF(-0.1, -1.1, -0.4) * ANGLES(RAD(98.3), RAD(-4.8), RAD(-168.1)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1.2 / w)
						r.C0 = Clerp(r.C0, CF(-1.5, 0.3, -0.65) * ANGLES(RAD(89.9), RAD(-4.8), RAD(15)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1.2 / w)
					end;
					s.C0 = Clerp(s.C0, CF(1.2, -1.6, 0.1) * ANGLES(RAD(-14.6), RAD(-11.9), RAD(-14.6)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1.2 / w)
					t.C0 = Clerp(t.C0, CF(-0.7, -2.2, 0) * ANGLES(RAD(3.7), RAD(-1.1), RAD(-14.5)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1.2 / w)
				end
			elseif cL > 1 and cN ~= nil then
				o.Dust.Dust.Enabled = true;
				if I == true then
					m.C0 = Clerp(m.C0, CF(0, 0.5, 0.5) * ANGLES(RAD(-15), RAD(0) - cl / 6, RAD(0) - cl / 2) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.4 / w)
					n.C0 = Clerp(n.C0, CF(0, 1.425, 0.1) * ANGLES(RAD(15), RAD(0) - cl / 2, RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.4 / w)
					bL.C0 = Clerp(bL.C0, CF(0, -1.5, -0.9) * ANGLES(RAD(15), RAD(0), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.4 / w)
					if c3 == false then
						q.C0 = Clerp(q.C0, CF(1.7, 0.1, -0.1) * ANGLES(RAD(47.7), RAD(-32.8), RAD(49.9)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1.2 / w)
						bM.C0 = Clerp(bM.C0, CF(0, -1.1, -0.5) * ANGLES(RAD(90), RAD(0), RAD(-180)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1.2 / w)
						r.C0 = Clerp(r.C0, CF(-1.5, 0.3, 0) * ANGLES(RAD(89.9), RAD(-4.8), RAD(-1.3)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.4 / w)
					end;
					s.C0 = Clerp(s.C0, CF(0.7, -1.5, -0.6) * ANGLES(RAD(-15), RAD(0), RAD(10)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1.2 / w)
					t.C0 = Clerp(t.C0, CF(-0.7, -1.5, -0.6) * ANGLES(RAD(-15), RAD(0), RAD(-10)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1.2 / w)
				end
			end
		else
			o.Dust.Dust.Enabled = false;
			if I == true then
				m.C0 = Clerp(m.C0, CF(0, 0.5, 0.6) * ANGLES(RAD(10.2), RAD(9.8), RAD(-1.8)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1.2 / w)
				n.C0 = Clerp(n.C0, CF(0, 1.5, -0.3) * ANGLES(RAD(-15.1), RAD(-10), RAD(-0.9)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1.2 / w)
				bL.C0 = Clerp(bL.C0, CF(0.1, -1.5, -0.3) * ANGLES(RAD(0.2), RAD(-9.8), RAD(1.8)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1.2 / w)
				if c3 == false then
					q.C0 = Clerp(q.C0, CF(1.3, 0.4, -0.2) * ANGLES(RAD(146), RAD(32.6), RAD(13.5)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1.2 / w)
					bM.C0 = Clerp(bM.C0, CF(0, -0.9, -0.4) * ANGLES(RAD(103.5), RAD(6.2), RAD(-178.6)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1.2 / w)
					r.C0 = Clerp(r.C0, CF(-1.4, 0.3, 0) * ANGLES(RAD(75), RAD(0), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1.2 / w)
				end;
				s.C0 = Clerp(s.C0, CF(0.8, -1.6, 0.1) * ANGLES(RAD(-40.2), RAD(-16.1), RAD(8)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1.2 / w)
				t.C0 = Clerp(t.C0, CF(-0.8, -1.6, 0) * ANGLES(RAD(-33.9), RAD(-1.7), RAD(-17.1)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1.2 / w)
			end
		end;
		for L = 1, #bI do
			bI[L].C1 = ANGLES(RAD(d.WalkSpeed - 5), 0, 0) * bI[L].C1
		end;
		if c2 == 75 then
			o.Safelock.Light.Enabled = true
		else
			o.Safelock.Light.Enabled = false
		end;
		if bV == false then
			if B == "Drive" then
				if d.WalkSpeed < c2 then
					d.WalkSpeed = d.WalkSpeed + 0.75
				else
					d.WalkSpeed = c2
				end
			else
				if d.WalkSpeed > 5 then
					d.WalkSpeed = d.WalkSpeed - 3.75
				else
					d.WalkSpeed = 5
				end
			end
		end;
		bO.Pitch = d.WalkSpeed / 10;
		if bO.Pitch > 3.25 then
			bO.Pitch = 3.25
		end;
		d.Sit = false;
		d.PlatformStand = false
	end
end)
ScriptsTab:NewButton('Katanarist **', 'sword swoosh', function()
	_reanimate()
	local a = game:GetObjects('rbxassetid://9216241674')[1]
	a.Parent = workspace.non;
	local b = {
		drandom = function(c, d, e)
			e = e or 1;
			return math.random(c * e, d * e) / e
		end
	}
	local math = setmetatable(b, {
		__index = math
	})
	local f = game:GetService("Players").LocalPlayer;
	local g = Instance.new;
	local h = Vector3.new;
	local i = CFrame.new;
	local j = CFrame.Angles;
	local k = math.rad;
	local l = math.huge;
	local m = math.cos;
	local n = math.sin;
	local o = math.tan;
	local p = math.abs;
	local q = Ray.new;
	local r = math.random;
	local s = math.drandom;
	local t = UDim.new;
	local u = UDim2.new;
	local v = Color3.new;
	local w = Color3.fromRGB;
	local x = BrickColor.new;
	local y = game:GetService("Players")
	local z = game:GetService("TweenService")
	local A = game:GetService("Debris")
	local B = game:GetService("RunService")
	local C = f;
	local D = game:GetService('CoreGui')
	local E = workspace.non;
	local F = E.Head;
	local G = E.Torso;
	local H = E["Right Arm"]
	local I = E["Left Arm"]
	local J = E["Right Leg"]
	local K = E["Left Leg"]
	local L = E.HumanoidRootPart;
	local M = E:FindFirstChildOfClass("Humanoid")
	local N = G.Neck;
	local O = L.RootJoint;
	local P = G["Right Shoulder"]
	local Q = G["Left Shoulder"]
	local R = G["Right Hip"]
	local S = G["Left Hip"]
	necc0, necc1 = i(0, G.Size.Y / 2, 0), i(0, -F.Size.Y / 2, 0)
	rutjc0, rutjc1 = i(0, 0, 0), i(0, 0, 0)
	rsc0, rsc1 = i(G.Size.X / 2, G.Size.Y / 4, 0), i(-H.Size.X / 2, H.Size.Y / 4, 0)
	lsc0, lsc1 = i(-G.Size.X / 2, G.Size.Y / 4, 0), i(I.Size.X / 2, I.Size.Y / 4, 0)
	rhc0, rhc1 = i(G.Size.X / 4, -G.Size.Y / 2, 0), i(0, J.Size.Y / 2, 0)
	lhc0, lhc1 = i(-G.Size.X / 4, -G.Size.Y / 2, 0), i(0, K.Size.Y / 2, 0)
	local T = false;
	local U = false;
	local V = false;
	local W = false;
	local X = false;
	local Y = false;
	local Z = "idle"
	local _ = "rbxassetid://"
	local a0 = 1837107670;
	local a1 = .5;
	local a2 = 1;
	local a3 = 0;
	local a4 = 1;
	local a5 = 1;
	local a6 = 0;
	local a7 = 50;
	local a8 = 85;
	local a9 = 350;
	local aa = 0;
	local ab = {
		E
	}
	local ac = {
		Grass = _ .. "1201103066",
		Sand = _ .. "1436385526",
		Plastic = _ .. "1569994049",
		Stone = _ .. "507863857",
		Wood = _ .. "1201103959",
		Pebble = _ .. "1201103211",
		Ice = _ .. "265653271",
		Glass = _ .. "145180170",
		Metal = _ .. "379482691"
	}
	local ad = {
		In = Enum.EasingDirection.In,
		Out = Enum.EasingDirection.Out,
		InOut = Enum.EasingDirection.InOut
	}
	local ae = {
		Linear = Enum.EasingStyle.Linear,
		Back = Enum.EasingStyle.Back,
		Bounce = Enum.EasingStyle.Bounce,
		Sine = Enum.EasingStyle.Sine,
		Quad = Enum.EasingStyle.Quad,
		Elastic = Enum.EasingStyle.Elastic,
		Quart = Enum.EasingStyle.Quart,
		Quint = Enum.EasingStyle.Quint
	}
	local af = B.Heartbeat;
	if E:FindFirstChild("Animate") then
		E.Animate:Destroy()
	end;
	if M:FindFirstChildOfClass("Animator") then
		E.Humanoid.Animator:Destroy()
	end;
	N.Parent = nil;
	O.Parent = nil;
	P.Parent = nil;
	Q.Parent = nil;
	R.Parent = nil;
	S.Parent = nil;
	local N = g("Motor6D", G)
	N.Name = "Neck"
	N.Part0 = G;
	N.Part1 = F;
	local O = g("Motor6D", L)
	O.Name = "RootJoint"
	O.Part0 = G;
	O.Part1 = L;
	local P = g("Motor6D", G)
	P.Name = "Right Shoulder"
	P.Part0 = G;
	P.Part1 = H;
	local Q = g("Motor6D", G)
	Q.Name = "Left Shoulder"
	Q.Part0 = G;
	Q.Part1 = I;
	local R = g("Motor6D", G)
	R.Name = "Right Hip"
	R.Part0 = G;
	R.Part1 = J;
	local S = g("Motor6D", G)
	S.Name = "Left Hip"
	S.Part0 = G;
	S.Part1 = K;
	N.C1 = necc1;
	N.C0 = necc0;
	P.C1 = rsc1;
	P.C0 = rsc0;
	Q.C1 = lsc1;
	Q.C0 = lsc0;
	R.C1 = rhc1;
	R.C0 = rhc0;
	S.C1 = lhc1;
	S.C0 = lhc0;
	O.C1 = rutjc1;
	O.C0 = rutjc0;
	function createWeld(ag, ah, ai, aj)
		ai = ai or i(0, 0, 0)
		aj = aj or i(0, 0, 0)
		local ak = g("Motor6D", ag)
		ak.Part0 = ag;
		ak.Part1 = ah;
		ak.C0 = ai;
		ak.C1 = aj;
		return ak
	end;
	local al = g("NumberValue", M)
	al.Name = "HealReadyPercentage"
	al.Value = aa;
	local am = a.Models.Katana;
	local an = am.Hitbox;
	local ao = am.Handle;
	local ap = createWeld(H, ao, i(-.125, -.9, 0), j(k(75), k(190), k(0)))
	am.Parent = E;
	local aq = a.Models.Lamp;
	aq.Parent = E;
	local ar = createWeld(G, aq.Handle, i(-.975, -.75, -.25) * j(k(85), k(85), k(5)))
	local as = g("ForceField", E)
	as.Visible = false;
	local at = g("Model", E)
	at.Name = "Effects"
	local au = g("Sound", G)
	au.Volume = a1;
	au.SoundId = _ .. a0;
	au.Pitch = a2;
	au.TimePosition = a3;
	au.Looped = true;
	au:Play()
	local av = a.UIs.KatanaristUI;
	av.Parent = D;
	E.Humanoid.Died:Connect(function()
		av:Destroy()
	end)
	local aw = a.DistShaker:Clone()
	function remove(ax, ay)
		ay = ay or 0;
		game:GetService("Debris"):AddItem(ax, ay)
	end;
	local function swait(NUMBER)
		if NUMBER == 0 or NUMBER == nil then
			task.wait()
			task.wait()
		else
			for i = 1, NUMBER do
				task.wait()
				task.wait()
			end
		end
	end;
	function rayc(az, aA, aB, aC)
		local aD = q(az, aA.Unit * aC)
		local aE, aF, aG = workspace:FindPartOnRayWithIgnoreList(aD, aB, false, false)
		return aE, aF, aG
	end;
	function sound(aH, aI, aJ, aK, aL)
		local aM = 30 or aL;
		local aN = Instance.new("Sound", aK)
		aN.Volume = aI;
		aN.SoundId = "rbxassetid://" .. aH;
		aN.Pitch = aJ;
		aN:Play()
		coroutine.resume(coroutine.create(function()
			wait(.1)
			remove(aN, aN.TimeLength / aN.Pitch)
		end))
		return aN
	end;
	function placesoundpart(aO, aH, aI, aJ, aL)
		pcall(function()
			local aM = 30 or aL;
			local aP = g("Part", at)
			aP.Anchored = true;
			aP.CanCollide = false;
			aP.Locked = true;
			aP.Transparency = 1;
			aP.CFrame = aO;
			local aQ = sound(aH, aI, aJ, aP, aM)
			remove(aP, aQ.TimeLength / aQ.Pitch)
		end)
	end;
	local aR = function(aS, aT, aU, aV, aW)
		local aX = TweenInfo.new(aU, aV, aW, 0, false, 0)
		local aY = z:Create(aS, aX, aT)
		aY:Play()
	end;
	function removeWithFade(ax, ay)
		game:GetService("Debris"):AddItem(ax, ay + 3.5)
		coroutine.resume(coroutine.create(function()
			wait(ay)
			aR(ax, {
				Transparency = 1
			}, 3.5, ae.Linear, ad.In)
		end))
	end;
	local aZ = {
		Ring = function(a_, b0, b1, b2, b3, b4, ay)
			local b5 = script.Effects.Ring:Clone()
			b5.Size = b1;
			b5.Transparency = b3;
			b5.CFrame = a_;
			b5.Color = b0;
			b5.Parent = at;
			remove(b5, ay)
			aR(b5, {
				Size = b2,
				Transparency = b4
			}, ay, ae.Linear, ad.Out)
		end,
		SpinningRing = function(a_, b0, b6, b1, b2, b3, b4, ay)
			local b5 = script.Effects.Ring:Clone()
			b5.Size = b1;
			b5.Transparency = b3;
			b5.CFrame = a_;
			b5.Color = b0;
			b5.Parent = at;
			remove(b5, ay)
			aR(b5, {
				Size = b2,
				Transparency = b4
			}, ay, ae.Linear, ad.Out)
			coroutine.wrap(function()
				repeat
					b5.CFrame = b5.CFrame * b6;
					wait(0.03333333333333333)
				until not b5.Parent
			end)()
		end,
		Sphere = function(a_, b0, b1, b2, b3, b4, ay)
			local b7 = g("Part")
			b7.Shape = "Ball"
			b7.Size = h(b1, b1, b1)
			b7.Transparency = b3;
			b7.CFrame = a_;
			b7.Color = b0;
			b7.Parent = at;
			b7.Anchored = true;
			b7.CanCollide = false;
			b7.Locked = true;
			b7.Material = "Neon"
			remove(b7, ay)
			aR(b7, {
				Size = h(b2, b2, b2),
				Transparency = b4
			}, ay, ae.Linear, ad.Out)
		end,
		SpinningBlock = function(a_, b0, b1, b2, b3, b4, b8, ay)
			local aS = g("Part")
			aS.Size = h(b1, b1, b1)
			aS.Transparency = b3;
			aS.CFrame = a_;
			aS.Color = b0;
			aS.Parent = at;
			aS.Anchored = true;
			aS.CanCollide = false;
			aS.Locked = true;
			aS.Material = "Neon"
			remove(aS, ay)
			aR(aS, {
				Size = h(b2, b2, b2),
				Transparency = b4
			}, ay, ae.Linear, ad.Out)
			coroutine.wrap(function()
				repeat
					aS.CFrame = aS.CFrame * b8;
					wait(0.03333333333333333)
				until not aS.Parent
			end)()
		end,
		CustomSphere = function(a_, b9, b0, b1, b2, b3, b4, ay)
			local b7 = g("Part")
			b7.Size = b1;
			b7.Transparency = b3;
			b7.CFrame = a_;
			b7.Color = b0;
			b7.Parent = at;
			b7.Anchored = true;
			b7.CanCollide = false;
			b7.Locked = true;
			b7.Material = "Neon"
			local ba = g("SpecialMesh", b7)
			ba.MeshType = "Sphere"
			remove(b7, ay)
			aR(b7, {
				Size = b2,
				Transparency = b4,
				CFrame = b9
			}, ay, ae.Linear, ad.Out)
		end,
		Wind = function(a_, b0, b6, b1, b2, b3, b4, ay)
			local b5 = script.Effects.Wind:Clone()
			b5.Size = b1;
			b5.Transparency = b3;
			b5.CFrame = a_;
			b5.Color = b0;
			b5.Parent = at;
			remove(b5, ay)
			aR(b5, {
				Size = b2,
				Transparency = b4
			}, ay, ae.Linear, ad.Out)
			coroutine.wrap(function()
				repeat
					b5.CFrame = b5.CFrame * j(k(0), k(b6), k(0))
					wait(0.03333333333333333)
				until not b5.Parent
			end)()
		end,
		CreateCamShake = function(aS, bb, bc, ay)
			bb = bb or 20;
			bc = bc or 1;
			ay = ay or .1;
			local bd = g("BoolValue", aS)
			bd.Name = "Shaking"
			bd.Value = true;
			local be = g("NumberValue", bd)
			be.Name = "MaxDist"
			be.Value = bb;
			local bf = g("NumberValue", bd)
			bf.Name = "Intensivity"
			bf.Value = bc;
			remove(bd, ay)
		end,
		SoundEffect = function(sound, bg)
			g(bg .. "SoundEffect", sound)
		end,
		Particles = function(aS, bh, bi)
			local bj;
			if bh:lower() == "blood" then
				bj = script.Effects.BloodParticles:Clone()
				bj.Parent = aS;
				if bi then
					bj.Enabled = false
				else
					bj.Enabled = true
				end
			elseif bh:lower() == "bloodsplash" then
				bj = script.Effects.BloodSplash:Clone()
				bj.Parent = aS;
				if bi then
					bj.Enabled = false
				else
					bj.Enabled = true
				end
			end;
			return bj
		end
	}
	function createweld(bk, bl, bm, bn)
		local bo = g("Attachment", bk)
		local bp = g("Attachment", bl)
		bo.Position = bm;
		bp.Position = bn;
		local bq = g("BallSocketConstraint", bk)
		bq.Attachment0 = bo;
		bq.Attachment1 = bp;
		bq.LimitsEnabled = true;
		bq.TwistLimitsEnabled = true;
		bq.TwistLowerAngle = 0;
		bq.TwistUpperAngle = 0;
		bq.UpperAngle = 0;
		bo.Name = "dontremove"
		bp.Name = "dontremove"
		bq.Name = "dontremove"
		return {
			att0 = bo,
			att1 = bp,
			constraint = bq
		}
	end;
	function createglue(br, bs, bt, bu, bk, ai, aj)
		local bo = g("Attachment")
		local bp = g("Attachment")
		local bv = g("BallSocketConstraint")
		bo.Parent = br;
		bp.Parent = bs;
		bv.Attachment0 = bo;
		bv.Attachment1 = bp;
		bo.Position = ai;
		bp.Position = aj;
		bv.Name = "dontremove"
		bo.Name = "dontremove"
		bp.Name = "dontremove"
		bv.Parent = bs;
		return bo, bp, bv
	end;
	function createhitbox(aS, aK)
		pcall(function()
			local bw = g("Part")
			bw.Name = "HitboxRagdoll"
			bw.Locked = true;
			bw.Transparency = 1;
			bw.TopSurface = "Smooth"
			bw.BottomSurface = "Smooth"
			bw.Material = "Ice"
			if aS.Name ~= "Head" then
				bw.Size = h(aS.Size.x / 1.35, aS.Size.y / 1.2, aS.Size.z / 1.35)
				bw.CFrame = aS.CFrame;
				local bo = g("Attachment", aS)
				local bp = g("Attachment", bw)
				bo.Position = h(0, -aS.Size.y / 2 + bw.Size.y / 2, 0)
				local bq = g("BallSocketConstraint", aS)
				bq.Attachment0 = bo;
				bq.Attachment1 = bp;
				bq.LimitsEnabled = true;
				bq.TwistLimitsEnabled = true;
				bq.TwistLowerAngle = 0;
				bq.TwistUpperAngle = 0;
				bq.UpperAngle = 0
			else
				bw.Size = h(aS.Size.x, aS.Size.y / 2, aS.Size.z)
				bw.CFrame = aS.CFrame;
				local bo = g("Attachment", aS)
				local bp = g("Attachment", bw)
				local bq = g("BallSocketConstraint", aS)
				bq.Attachment0 = bo;
				bq.Attachment1 = bp;
				bq.LimitsEnabled = true;
				bq.TwistLimitsEnabled = true;
				bq.TwistLowerAngle = 0;
				bq.TwistUpperAngle = 0;
				bq.UpperAngle = 0
			end;
			bw:BreakJoints()
			bw.Parent = aK
		end)
	end;
	function createhitboxr15(aS, aK)
		pcall(function()
			local bw = g("Part")
			bw.Name = "HitboxRagdoll"
			bw.Locked = true;
			bw.Transparency = 1;
			bw.TopSurface = "Smooth"
			bw.BottomSurface = "Smooth"
			bw.Material = "Ice"
			if aS.Name ~= "Head" then
				bw.Size = h(aS.Size.x / 1.5, aS.Size.y / 6, aS.Size.z / 1.5)
				bw.CFrame = aS.CFrame;
				local bo = g("Attachment", aS)
				local bp = g("Attachment", bw)
				local bq = g("BallSocketConstraint", aS)
				bq.Attachment0 = bo;
				bq.Attachment1 = bp;
				bq.LimitsEnabled = true;
				bq.TwistLimitsEnabled = true;
				bq.TwistLowerAngle = 0;
				bq.TwistUpperAngle = 0;
				bq.UpperAngle = 0
			else
				bw.Size = h(aS.Size.x, aS.Size.y / 2, aS.Size.z)
				bw.CFrame = aS.CFrame;
				local bo = g("Attachment", aS)
				local bp = g("Attachment", bw)
				local bq = g("BallSocketConstraint", aS)
				bq.Attachment0 = bo;
				bq.Attachment1 = bp;
				bq.LimitsEnabled = true;
				bq.TwistLimitsEnabled = true;
				bq.TwistLowerAngle = 0;
				bq.TwistUpperAngle = 0;
				bq.UpperAngle = 0
			end;
			bw:BreakJoints()
			bw.Parent = aK
		end)
	end;
	function paralizer6(bh, bx, by, bz)
		pcall(function()
			if bh == "body" then
				local bA = bx:FindFirstChild("Torso")
				local bB = bx:FindFirstChild("Right Arm")
				local bC = bx:FindFirstChild("Left Arm")
				local bD = bx:FindFirstChild("Right Leg")
				local bE = bx:FindFirstChild("Left Leg")
				local bF = bx:FindFirstChild("Head")
				local bG = g("Glue", bx)
				bG.Name = "deletmepls"
				if bA then
					local bH = bx:FindFirstChild("HumanoidRootPart")
					if bH then
						bH:Destroy()
					end;
					by.PlatformStand = true;
					if bF then
						if bF:FindFirstChild("Ripped") then
							return
						end;
						bF:BreakJoints()
						bF.Anchored = false;
						createhitbox(bF, bA)
						local bo, bp, bI = createglue(bA, bF, "paralized", bA, bE, h(0, bA.Size.y / 2, 0), h(0, -bF.Size.y / 2, 0))
						bo.Orientation = h(0, -90, 90)
						bp.Orientation = h(0, -90, 90)
						bI.LimitsEnabled = true;
						bI.TwistLimitsEnabled = true;
						bI.UpperAngle = 80;
						bI.TwistLowerAngle = -80;
						bI.TwistUpperAngle = 80;
						bF.TopSurface = "Smooth"
						bF.BottomSurface = "Smooth"
						bF:MakeJoints()
						if bz then
							remove(bo)
							remove(bp)
							remove(bI)
							coroutine.wrap(function()
								for bJ = 1, r(15, 30) do
									blood(bA.CFrame * i(0, bA.Size.Y / 2, 0), bA.CFrame.UpVector, r(5, 15), r(80, 130) / 100 * bA.Size.Z, bx)
									wait(r(25, 60) / 350)
								end
							end)()
						end
					end;
					if bE then
						if not bE:FindFirstChild("Ripped") then
							bE:BreakJoints()
							bE.Anchored = false;
							local bo, bp, bI = createglue(bA, bE, "paralized", bA, bE, h(-bA.Size.x / 4, -bA.Size.y / 2, 0), h(0, bE.Size.y / 2, 0))
							bo.Orientation = h(0, -90, 90)
							bp.Orientation = h(0, -90, 90)
							bI.LimitsEnabled = true;
							bI.TwistLimitsEnabled = true;
							bI.UpperAngle = 100;
							bI.TwistLowerAngle = 35;
							bI.TwistUpperAngle = -45;
							createhitbox(bE, bA)
						end
					end;
					if bD then
						if not bD:FindFirstChild("Ripped") then
							bD:BreakJoints()
							bD.Anchored = false;
							local bo, bp, bI = createglue(bA, bD, "paralized", bA, bD, h(bA.Size.x / 4, -bA.Size.y / 2, 0), h(0, bD.Size.y / 2, 0))
							bo.Orientation = h(0, -90, 90)
							bp.Orientation = h(0, -90, 90)
							bI.LimitsEnabled = true;
							bI.TwistLimitsEnabled = true;
							bI.UpperAngle = 100;
							bI.TwistLowerAngle = 45;
							bI.TwistUpperAngle = -35;
							createhitbox(bD, bA)
						end
					end;
					if bB then
						bB:BreakJoints()
						bB.Anchored = false;
						if not bB:FindFirstChild("Ripped") then
							local bo, bp, bI = createglue(bA, bB, "paralized", bA, bB, h(bA.Size.x / 2 + bB.Size.x / 2, bA.Size.y / 4, 0), h(0, bB.Size.y / 4, 0))
							bo.Orientation = h(-90, 0, 0)
							bp.Orientation = h(0, 180, -180)
							bI.LimitsEnabled = true;
							bI.TwistLimitsEnabled = true;
							bI.UpperAngle = 100;
							bI.TwistLowerAngle = 105;
							bI.TwistUpperAngle = -110
						end;
						createhitbox(bB, bA)
					end;
					if bC then
						bC:BreakJoints()
						bC.Anchored = false;
						if not bC:FindFirstChild("Ripped") then
							local bo, bp, bI = createglue(bA, bC, "paralized", bA, bC, h(-bA.Size.x / 2 - bC.Size.x / 2, bA.Size.y / 4, 0), h(0, bC.Size.y / 4, 0))
							bo.Orientation = h(-90, 180, 0)
							bp.Orientation = h(0, -180, 0)
							bI.LimitsEnabled = true;
							bI.TwistLimitsEnabled = true;
							bI.UpperAngle = 100;
							bI.TwistLowerAngle = 105;
							bI.TwistUpperAngle = -90
						end;
						createhitbox(bC, bA)
					end
				else
					warn("Cant get the torso")
				end
			end
		end)
	end;
	function killr6(bx, bz)
		pcall(function()
			local bK = bx:FindFirstChildOfClass("Humanoid")
			if bK then
				local bL = bK.Parent:FindFirstChild("Head")
				for bJ, bM in pairs(bx:GetDescendants()) do
					if bM:IsA("Accessory") or bM:IsA("Hat") then
					end;
					if bM:IsA("Script") or bM:IsA("LocalScript") or bM.Name == "HitboxRagdoll" or bM:IsA("Attachment") and bM.Name ~= "dontremove" or bM:IsA("BallSocketConstraint") and bM.Name ~= "dontremove" then
					end;
					if bM:IsA("Decal") then
					end;
					if bM:IsA("Part") or bM:IsA("MeshPart") then
					end
				end
			end
		end)
	end;
	function killr15(bx, bN)
		pcall(function()
			local bK = bx:FindFirstChildOfClass("Humanoid")
			if bK then
				local bH = bx:FindFirstChild("HumanoidRootPart")
				if bH then
				end;
				local bO = {}
				for bJ, bM in pairs(bx:GetDescendants()) do
					if bM:IsA("Motor6D") or bM:IsA("Motor") then
						if bM.Part0 and bM.Part1 then
							table.insert(bO, bM)
						end
					end
				end;
				local bL = bK.Parent:FindFirstChild("Head")
				if bL.Size.x ~= bL.Size.z then
				end;
				for bJ, bM in pairs(bx:GetDescendants()) do
					if bM:IsA("Accessory") or bM:IsA("Hat") then
					end;
					if bM:IsA("Script") or bM:IsA("LocalScript") or bM.Name == "HitboxRagdoll" or bM:IsA("Attachment") and bM.Name ~= "dontremove" or bM:IsA("BallSocketConstraint") and bM.Name ~= "dontremove" or bM.Name == "HumanoidRootPart" then
					end;
					if bM:IsA("Decal") then
					end;
					if bM:IsA("Part") or bM:IsA("MeshPart") then
					end
				end;
				for bJ, bM in pairs(bO) do
					if bM.Name == "Neck" and not bN then
					elseif bM.Name == "Neck" and bN then
						coroutine.wrap(function()
							for bJ = 1, r(15, 30) do
								blood(bM.Part0.CFrame * i(0, bM.Part0.Size.Y / 2, 0), bM.Part0.CFrame.UpVector, r(5, 15), s(.8, 1.3, 100) * bM.Part0.Size.Z, bx)
								wait(r(25, 60) / 350)
							end
						end)()
					elseif bM.Name ~= "Neck" then
					end;
					if not bM.Part0.Name ~= "UpperTorso" or not bM.Part1.Name ~= "UpperTorso" then
					end
				end
			end
		end)
	end;
	function death(bx, bz)
		if bx:FindFirstChild("UpperTorso") then
			killr15(bx, bz)
		elseif bx:FindFirstChild("Torso") then
			killr6(bx, bz)
		end
	end;
	function blood(a_, aA, bP, bQ, aB)
		aB = aB or g("Model")
		bQ = bQ or 1;
		bP = bP or 25;
		if not a_ then
			return warn("No position set")
		end;
		local bR = g("Part")
		bR.Size = h(.35, .35, .35) * bQ;
		bR.CanCollide = true;
		bR.Transparency = 1;
		bR.Material = "Neon"
		bR.Shape = "Ball"
		bR.CFrame = a_;
		bR.Parent = at;
		bR:BreakJoints()
		table.insert(ab, bR)
		local bS = aZ.Particles(bR, "blood", false)
		bS.Size = NumberSequence.new(.2 * bQ)
		bS:Emit(7)
		local bT = g("BodyVelocity", bR)
		bT.MaxForce = h(l, l, l)
		bT.Velocity = (aA + h(s(-.75, .75, 100), s(-.75, .75, 100), s(-.75, .75, 100))) * bP;
		remove(bT, .15)
		local bU = {
			h(0, 100, 0),
			h(0, -100, 0),
			h(0, 0, 100),
			h(0, 0, -100),
			h(100, 0, 0),
			h(-100, 0, 0),
			h(100, 100, 0),
			h(-100, 100, 0),
			h(100, -100, 0),
			h(-100, -100, 0),
			h(0, 100, 100),
			h(0, 100, -100),
			h(0, -100, 100),
			h(0, -100, -100),
			h(100, 100, 100),
			h(100, -100, 100),
			h(100, 100, -100),
			h(100, -100, -100),
			h(-100, 100, 100),
			h(-100, -100, 100),
			h(-100, 100, -100),
			h(-100, -100, -100),
			h(100, 100, -100),
			h(-100, -100, 100),
			h(-100, 100, -100),
			h(100, -100, 100)
		}
		local bV = false;
		bR.Touched:Connect(function(bW)
			if bW:IsDescendantOf(E) or bW:IsDescendantOf(aB) or bV then
				return
			end;
			bV = true;
			bS.Enabled = false;
			bR.CanCollide = false;
			bR.Anchored = true;
			local bX = bR.Position;
			remove(bR, 2.5)
			local bY = 3 * bQ;
			local bZ = Region3.new(bX - h(bY / 2, bY / 2, bY / 2), bX + h(bY / 2, bY / 2, bY / 2))
			local b_ = workspace:FindPartsInRegion3WithWhiteList(bZ, ab, 100)
			local c0 = false;
			for bJ, bM in pairs(b_) do
				if bM.Name == "BloodPuddle_v2" then
					local c1 = r(10, 25) / 100;
					bM.Size = bM.Size + h(c1, 0, c1) * bQ;
					local c2 = aZ.Particles(bM, "blood", true)
					c2.LockedToPart = false;
					c2.Size = NumberSequence.new(.2 * bQ)
					c2.Speed = NumberRange.new(5)
					c2.Acceleration = h(0, -10, 0) * bQ;
					c2.SpreadAngle = Vector2.new(50, 50) * bQ;
					c2.Lifetime = NumberRange.new(.2, .5)
					c2:Emit(3)
					c0 = true
				end
			end;
			if c0 then
				return
			end;
			for bJ, bM in pairs(bU) do
				local c3, c4, c5 = rayc(bX, bX + bM - bX, ab, 5 * bQ)
				if c3 then
					local bY = 3 * bQ;
					local bZ = Region3.new(bX - h(bY / 2, bY / 2, bY / 2), bX + h(bY / 2, bY / 2, bY / 2))
					local b_ = workspace:FindPartsInRegion3WithWhiteList(bZ, ab, 100)
					local c0 = false;
					for bJ, bM in pairs(b_) do
						if bM.Name == "BloodPuddle_v2" then
							local c1 = r(10, 25) / 100;
							bM.Size = bM.Size + h(c1, 0, c1) * bQ;
							local c2 = aZ.Particles(bM, "blood", true)
							c2.LockedToPart = false;
							c2.Size = NumberSequence.new(.2 * bQ)
							c2.Speed = NumberRange.new(5 * bQ)
							c2.Acceleration = h(0, -10, 0) * bQ;
							c2.SpreadAngle = Vector2.new(50, 50) * bQ;
							c2.Lifetime = NumberRange.new(.2, .5)
							c2:Emit(3)
							c0 = true
						end
					end;
					if c0 then
						return
					end;
					local c6 = r(75, 125) / 100;
					local c7 = g("Part")
					c7.CanCollide = false;
					c7.Anchored = true;
					c7.Material = "SmoothPlastic"
					c7.Color = x("Maroon").Color;
					c7.Size = h(c6, .05, c6) * bQ;
					c7.CFrame = i(c4, c4 + c5) * j(k(-90), k(0), k(0))
					c7.Name = "BloodPuddle_v2"
					c7.Parent = at;
					if not c3.Anchored then
						c7.Anchored = false;
						local c8 = g("WeldConstraint", c7)
						c8.Part0 = c3;
						c8.Part1 = c7
					end;
					g("CylinderMesh", c7)
					sound(685857471, .025 * bQ, s(.9, 1.1, 100), c7, .01)
					local c2 = aZ.Particles(c7, "blood", true)
					c2.LockedToPart = false;
					c2.Size = NumberSequence.new(.2 * bQ)
					c2.Speed = NumberRange.new(5 * bQ)
					c2.Acceleration = h(0, -10, 0) * bQ;
					c2.SpreadAngle = Vector2.new(50, 50) * bQ;
					c2.Lifetime = NumberRange.new(.2, .5)
					c2:Emit(20)
					coroutine.wrap(function()
						wait(r(450, 900) / 100)
						remove(c7, 2)
						aR(c7, {
							Transparency = 1
						}, 2, ae.Quad, ad.In)
					end)()
					break
				end
			end
		end)
	end;
	function damage(c9, ca, cb, cc, cd, ce, cf, bz)
		ca = ca or r(5, 15)
		cb = cb or 15;
		cc = cc or h(0, 0, 0)
		cd = cd or .15;
		ce = ce or .2;
		cf = cf or sound(851453784, 1.5, s(.9, 1.1, 100), nil, 1)
		if c9 and not c9:FindFirstChild("Dbounce'd") and c9.Health > .01 then
			ca = math.floor(ca * (1 + c9.MaxHealth / 500))
			local aS = c9.Parent:FindFirstChildOfClass("Part") or c9.Parent:FindFirstChildOfClass("MeshPart")
			local bV = g("BoolValue", c9)
			bV.Name = "Dbounce'd"
			remove(bV, ce)
			if aS then
				cf.Parent = aS;
				for bJ = 1, r(1, 4) do
					blood(aS.CFrame * i(s(-1, 1, 10), s(-1, 1, 10), s(-1, 1, 10)), an.CFrame.LookVector, r(10, 20), s(.8, 1.2, 100), c9.Parent)
				end
			end;
			if c9.Health < .01 then
				death(c9.Parent, bz)
				if aS then
					placesoundpart(aS, 2801263, 15, s(.9, 1.1, 100), 1)
				end
			end
		end
	end;
	function magDamage(a_, cg, c6, ca, cb, cd, ce, cf, bz)
		pcall(function()
			local bZ;
			local ch;
			if typeof(a_) == "Vector3" then
				bZ = Region3.new(a_ - h(c6 / 2, c6 / 2, c6 / 2), a_ + h(c6 / 2, c6 / 2, c6 / 2))
				ch = a_
			elseif typeof(a_) == "Instance" then
				ch = a_.Position;
				if cg then
					bZ = Region3.new(a_.Position - a_.Size / 2, a_.Position + a_.Size / 2)
					local ci = g("Part", at)
					ci.Anchored = true;
					ci.CanCollide = false;
					ci.Size = bZ.Size;
					ci.CFrame = bZ.CFrame;
					remove(ci, 5)
				else
					bZ = Region3.new(a_.Position - h(c6 / 2, c6 / 2, c6 / 2), a_.Position + h(c6 / 2, c6 / 2, c6 / 2))
				end
			end;
			if bZ then
				for bJ, bM in pairs(workspace:FindPartsInRegion3WithIgnoreList(bZ, {
					E
				}, 250)) do
					local cj = bM.Parent:FindFirstChildOfClass("Humanoid")
					if cj then
						damage(cj, ca, cb, ch, cd, ce, cf, bz)
					end
				end
			end
		end)
	end;
	function swing1()
		V = true;
		local ck = a7;
		local cl = a8;
		a8 = 50;
		local cm = .4;
		local c1 = -.0165;
		for bJ = 0, 1, .075 do
			N.C0 = N.C0:Lerp(necc0 * i(0, 0, 0) * j(k(0), k(-40), k(0)), cm)
			O.C0 = O.C0:Lerp(rutjc0 * i(0, 0, -.15) * j(k(0), k(-40), k(0)), cm)
			P.C0 = P.C0:Lerp(rsc0 * i(0, -.05, -.4) * j(k(95), k(90), k(0)) * j(k(25), k(0), k(0)), cm)
			Q.C0 = Q.C0:Lerp(lsc0 * i(0, -.15, .2) * j(k(15), k(35), k(5)), cm)
			R.C0 = R.C0:Lerp(rhc0 * i(0, 0, -.075) * j(k(-10), k(-5), k(2.5)), cm)
			S.C0 = S.C0:Lerp(lhc0 * i(0, -.075, -.125) * j(k(10), k(10), k(-2.5)), cm)
			ap.C1 = ap.C1:Lerp(j(k(80), k(0), k(0)), cm)
			cm = cm + c1;
			swait()
		end;
		cm = .35;
		c1 = .075;
		for bJ = 0, 1, .095 do
			for bJ, bM in pairs(am:GetChildren()) do
				if bM.Name == "BladeMain" then
					magDamage(bM, false, .5, r(25, 50), r(15, 30), .05, .3, nil, true)
				end
			end;
			N.C0 = N.C0:Lerp(necc0 * i(0, 0, 0) * j(k(0), k(50), k(0)), cm)
			O.C0 = O.C0:Lerp(rutjc0 * i(0, 0, .25) * j(k(0), k(50), k(0)), cm)
			P.C0 = P.C0:Lerp(rsc0 * i(0, .05, .15) * j(k(95), k(90), k(0)) * j(k(-105), k(0), k(0)), cm)
			Q.C0 = Q.C0:Lerp(lsc0 * i(0, -.05, -.1) * j(k(35), k(-25), k(-15)), cm)
			R.C0 = R.C0:Lerp(rhc0 * i(0, -.05, -.1) * j(k(10), k(-10), k(2.5)), cm)
			S.C0 = S.C0:Lerp(lhc0 * i(0, 0, 0) * j(k(-15), k(5), k(-2.5)), cm)
			ap.C1 = ap.C1:Lerp(j(k(120), k(0), k(0)), cm)
			cm = cm + c1;
			if cm > .775 then
				c1 = -math.abs(c1)
			end;
			swait()
		end;
		a7 = ck;
		a8 = cl;
		V = false
	end;
	function swing2()
		V = true;
		local ck = a7;
		local cl = a8;
		a8 = 50;
		local cm = .4;
		local c1 = -.0175;
		for bJ = 0, 1, .075 do
			N.C0 = N.C0:Lerp(necc0 * i(0, 0, 0) * j(k(-7.5), k(30), k(0)), cm)
			O.C0 = O.C0:Lerp(rutjc0 * i(0, 0, -.15) * j(k(-5), k(30), k(0)), cm)
			P.C0 = P.C0:Lerp(rsc0 * i(0, .35, .25) * j(k(190), k(0), k(20)) * j(k(0), k(40), k(0)), cm)
			Q.C0 = Q.C0:Lerp(lsc0 * i(0, -.15, .2) * j(k(5), k(-5), k(-2.5)), cm)
			R.C0 = R.C0:Lerp(rhc0 * i(0, 0, -.075) * j(k(-7.5), k(-10), k(8.5)), cm)
			S.C0 = S.C0:Lerp(lhc0 * i(0, -.075, -.125) * j(k(7.5), k(10), k(-2.5)), cm)
			ap.C1 = ap.C1:Lerp(j(k(80), k(0), k(0)), cm)
			cm = cm + c1;
			swait()
		end;
		cm = .5;
		c1 = .095;
		for bJ = 0, 1, .115 do
			for bJ, bM in pairs(am:GetChildren()) do
				if bM.Name == "BladeMain" then
					magDamage(bM, false, .5, r(40, 65), r(15, 30), .05, .3, nil, false)
				end
			end;
			N.C0 = N.C0:Lerp(necc0 * i(0, 0, 0) * j(k(3.5), k(5), k(0)), cm)
			O.C0 = O.C0:Lerp(rutjc0 * i(0, 0, .25) * j(k(20), k(-5), k(0)), cm)
			P.C0 = P.C0:Lerp(rsc0 * i(-.25, -.25, -.3) * j(k(40), k(0), k(-15)) * j(k(0), k(10), k(0)), cm)
			Q.C0 = Q.C0:Lerp(lsc0 * i(0, -.15, .2) * j(k(35), k(-15), k(-10)), cm)
			R.C0 = R.C0:Lerp(rhc0 * i(0, 0, -.125) * j(k(7.5), k(-5), k(2.5)), cm)
			S.C0 = S.C0:Lerp(lhc0 * i(0, -.075, -.125) * j(k(10), k(10), k(-2.5)), cm)
			ap.C1 = ap.C1:Lerp(j(k(135), k(0), k(0)), cm)
			cm = cm + c1;
			if cm > .85 then
				c1 = -math.abs(c1)
			end;
			swait()
		end;
		a7 = ck;
		a8 = cl;
		V = false
	end;
	function heal()
		V = true;
		local cm = .35;
		local c1 = -.015;
		for bJ = 0, 1, .05 do
			N.C0 = N.C0:Lerp(necc0 * i(0, 0, 0) * j(k(-25), k(50), k(2.5)), cm)
			O.C0 = O.C0:Lerp(rutjc0 * i(0, 0, 0) * j(k(0), k(0), k(0)), cm)
			P.C0 = P.C0:Lerp(rsc0 * i(0, 0, 0) * j(k(0), k(0), k(0)), cm)
			Q.C0 = Q.C0:Lerp(lsc0 * i(.1, -.05, .065) * j(k(-10), k(35), k(25)), cm)
			R.C0 = R.C0:Lerp(rhc0 * i(0, 0, 0) * j(k(0), k(-5), k(2.5)), cm)
			S.C0 = S.C0:Lerp(lhc0 * i(0, 0, 0) * j(k(0), k(5), k(-2.5)), cm)
			cm = cm + c1;
			swait()
		end;
		local cn = a.Models.Syringe:Clone()
		cn.Parent = I;
		local co = createWeld(I, cn, i(.1, -.95, 0), j(k(0), k(90), k(180)))
		local cm = .45;
		local c1 = -.03;
		for bJ = 0, 1, .075 do
			N.C0 = N.C0:Lerp(necc0 * i(0, 0, 0) * j(k(-25), k(10), k(0)), cm)
			O.C0 = O.C0:Lerp(rutjc0 * i(0, 0, 0) * j(k(0), k(0), k(0)), cm)
			P.C0 = P.C0:Lerp(rsc0 * i(0, 0, 0) * j(k(0), k(0), k(0)), cm)
			Q.C0 = Q.C0:Lerp(lsc0 * i(.15, .1, -.35) * j(k(65), k(0), k(25)) * i(0, 0, 0) * j(k(0), k(50), k(0)), cm)
			R.C0 = R.C0:Lerp(rhc0 * i(0, 0, 0) * j(k(0), k(-5), k(2.5)), cm)
			S.C0 = S.C0:Lerp(lhc0 * i(0, 0, 0) * j(k(0), k(5), k(-2.5)), cm)
			cm = cm + c1;
			swait()
		end;
		local cm = .5;
		local c1 = -.04;
		sound(851453784, .075, s(1.25, 1.65, 100), I, .25)
		for bJ = 0, 1, .1 do
			N.C0 = N.C0:Lerp(necc0 * i(0, 0, 0) * j(k(-20), k(-10), k(0)), cm)
			O.C0 = O.C0:Lerp(rutjc0 * i(0, 0, 0) * j(k(0), k(0), k(0)), cm)
			P.C0 = P.C0:Lerp(rsc0 * i(0, 0, 0) * j(k(0), k(0), k(0)), cm)
			Q.C0 = Q.C0:Lerp(lsc0 * i(.25, -.05, -.75) * j(k(45), k(0), k(70)) * i(0, 0, 0) * j(k(0), k(60), k(0)), cm)
			R.C0 = R.C0:Lerp(rhc0 * i(0, 0, 0) * j(k(0), k(-5), k(2.5)), cm)
			S.C0 = S.C0:Lerp(lhc0 * i(0, 0, 0) * j(k(0), k(5), k(-2.5)), cm)
			cm = cm + c1;
			swait()
		end;
		local cp = 1;
		for bJ = 1, 120, cp do
			swait()
		end;
		aa = 0;
		local cm = .5;
		local c1 = -.04;
		for bJ = 0, 1, .1 do
			N.C0 = N.C0:Lerp(necc0 * i(0, 0, 0) * j(k(-20), k(5), k(0)), cm)
			O.C0 = O.C0:Lerp(rutjc0 * i(0, 0, 0) * j(k(0), k(0), k(0)), cm)
			P.C0 = P.C0:Lerp(rsc0 * i(0, 0, 0) * j(k(0), k(0), k(0)), cm)
			Q.C0 = Q.C0:Lerp(lsc0 * i(.1, -.05, -.5) * j(k(65), k(0), k(20)) * i(0, 0, 0) * j(k(0), k(50), k(0)), cm)
			R.C0 = R.C0:Lerp(rhc0 * i(0, 0, 0) * j(k(0), k(-5), k(2.5)), cm)
			S.C0 = S.C0:Lerp(lhc0 * i(0, 0, 0) * j(k(0), k(5), k(-2.5)), cm)
			cm = cm + c1;
			swait()
		end;
		cn.CanCollide = true;
		cn:BreakJoints()
		removeWithFade(cn, 3.5)
		V = false
	end;
	local cq = {
		swing1,
		swing2
	}
	mouse = f:GetMouse()
	mouse.KeyDown:Connect(function(cr)
		if not V then
			if cr == "space" and W and not X then
				print(1)
				sound(1547211023, 1.25, s(.8, 1.1, 100), G, .05)
				sound(260411131, 1, s(1.1, 1.3, 100), G, .05)
				X = true;
				local cs = g("BodyVelocity", L)
				cs.MaxForce = h(l, l, l)
				cs.Velocity = -L.CFrame.LookVector * 45 + h(0, 125, 0)
				remove(cs, .025)
				local ct, cu, cv = rayc(L.Position, L.CFrame.LookVector, {
					E
				}, 3)
				if ct then
					for bJ = 1, r(4, 8) do
						local cw = s(7, 17, 5, 10)
						aZ.Ring(i(cu, cu + cv) * j(k(r(-15, 15)), k(r(-15, 15)), k(r(-15, 15))), x("Institutional white").Color, h(2, 2, .75), h(cw, cw, .35), s(.35, .65, 100), 1, s(.15, .75, 100))
					end
				end;
				wait(.5)
				X = false
			end;
			if cr == "h" and aa == 1 then
				heal()
			end
		end;
		if cr == "f" then
			Y = not Y
		end;
		if cr == "m" then
			U = not U
		end
	end)
	mouse.Button1Down:Connect(function()
		if not V then
			cq[a4]()
			a4 = a4 + 1;
			if a4 > #cq then
				a4 = 1
			end
		end
	end)
	af:Connect(function()
		aa = aa + .00075;
		if aa > 1 then
			aa = 1
		end;
		al.Value = aa;
		if au.Parent ~= G then
			remove(au)
			au = g("Sound", G)
			au.Volume = a1;
			au.SoundId = _ .. a0;
			au.Pitch = a2;
			au.TimePosition = a3;
			au.Looped = true;
			au:Play()
		end;
		au:Resume()
		if U then
			au.Volume = 0
		else
			au.Volume = a1
		end;
		au.SoundId = _ .. a0;
		au.Pitch = a2;
		a3 = au.TimePosition;
		a6 = a6 + a5;
		local cx = L.Velocity.y;
		local cy = (L.Velocity * h(1, 0, 1)).Magnitude;
		local cz = L.CFrame;
		local cA = M.MoveDirection;
		if cA == h(0, 0, 0) then
			cA = L.Velocity / 10
		end;
		local cB = cA * cz.LookVector;
		local cC = cA * cz.RightVector;
		local cD = cB.X + cB.Z;
		local cE = cC.X + cC.Z;
		if cD > 1 then
			cD = 1
		elseif cD < -1 then
			cD = -1
		end;
		if cE > 1 then
			cE = 1
		elseif cE < -1 then
			cE = -1
		end;
		M.MaxHealth = a9;
		M.WalkSpeed = a7;
		M.JumpPower = a8;
		if not D:FindFirstChild(aw.Name) then
			local cF = aw:Clone()
			cF.Parent = D;
			cF.Disabled = false
		end;
		if Y then
			for bJ, bM in pairs(aq:GetDescendants()) do
				if bM:IsA("SurfaceLight") then
					bM.Enabled = true
				end;
				if string.find(bM.Name:lower(), "light") and bM:IsA("Part") then
					bM.Color = x("White").Color
				end
			end
		else
			for bJ, bM in pairs(aq:GetDescendants()) do
				if bM:IsA("SurfaceLight") then
					bM.Enabled = false
				end;
				if string.find(bM.Name:lower(), "light") and bM:IsA("Part") then
					bM.Color = x("Really black").Color
				end
			end
		end;
		local bW, a_, c5 = rayc(L.Position + h(0, -L.Size.y / 2, 0), h(L.Position.x, -10000, L.Position.z), {
			E
		}, 3)
		local cG = rayc(L.Position, L.CFrame.LookVector, {
			E
		}, 2)
		if cG then
			W = true
		else
			W = false
		end;
		if Z == "idle" and bW then
			N.C1 = N.C1:Lerp(necc1 * i(0, 0, 0) * j(n(a6 / 25) * k(5), -n(a6 / 100) * k(7.5), -m(a6 / 50) * k(3.5)), .1)
			O.C1 = O.C1:Lerp(rutjc1 * i(0, n(a6 / 25) / 15, n(a6 / 50) / 15) * j(n(a6 / 25) * k(3.5), n(a6 / 75) * k(2.5), m(a6 / 50) * k(3.5)), .1)
			P.C1 = P.C1:Lerp(rsc1 * i(0, n(a6 / 25) / 15, 0) * j(n(a6 / 25) * k(2.5), n(a6 / 75) * k(5), m(a6 / 50) * k(3.5)), .1)
			Q.C1 = Q.C1:Lerp(lsc1 * i(0, n(a6 / 25) / 15, 0) * j(m(a6 / 25) * k(3.5), -n(a6 / 75) * k(5), m(a6 / 50) * k(3.5)), .1)
			R.C1 = R.C1:Lerp(rhc1 * i(0, n(a6 / 25) / 15, 0) * j(n(a6 / 25) * k(6) + n(a6 / 75) * k(2.5), k(0), m(a6 / 50) * k(4)), .1)
			S.C1 = S.C1:Lerp(lhc1 * i(0, n(a6 / 25) / 15, 0) * j(n(a6 / 25) * k(6) - n(a6 / 75) * k(2.5), k(0), m(a6 / 50) * k(4)), .1)
		elseif Z == "fall" and not bW then
			N.C1 = N.C1:Lerp(necc1 * i(0, 0, 0) * j(k(0), k(0), k(0)), .1)
			O.C1 = O.C1:Lerp(rutjc1 * i(0, 0, 0) * j(k(0), k(0), k(0)), .1)
			P.C1 = P.C1:Lerp(rsc1 * i(0, 0, 0) * j(k(0), k(0), k(0)), .1)
			Q.C1 = Q.C1:Lerp(lsc1 * i(0, 0, 0) * j(k(0), k(0), k(0)), .1)
			R.C1 = R.C1:Lerp(rhc1 * i(0, 0, 0) * j(k(0), k(0), k(0)), .1)
			S.C1 = S.C1:Lerp(lhc1 * i(0, 0, 0) * j(k(0), k(0), k(0)), .1)
		elseif Z == "jump" and not bW then
			N.C1 = N.C1:Lerp(necc1 * i(0, 0, 0) * j(k(0), k(0), k(0)), .1)
			O.C1 = O.C1:Lerp(rutjc1 * i(0, 0, 0) * j(k(0), k(0), k(0)), .1)
			P.C1 = P.C1:Lerp(rsc1 * i(0, 0, 0) * j(k(0), k(0), k(0)), .1)
			Q.C1 = Q.C1:Lerp(lsc1 * i(0, 0, 0) * j(k(0), k(0), k(0)), .1)
			R.C1 = R.C1:Lerp(rhc1 * i(0, 0, 0) * j(k(0), k(0), k(0)), .1)
			S.C1 = S.C1:Lerp(lhc1 * i(0, 0, 0) * j(k(0), k(0), k(0)), .1)
		elseif Z == "walk" and bW then
			N.C1 = N.C1:Lerp(necc1 * i(0, 0, 0) * j(m(a6 / 1.25) * k(1.5), n(a6 / 2.5) * k(2.5), k(0)) * j(-cD / 5, cE / 2, 0), .2)
			O.C1 = O.C1:Lerp(rutjc1 * i(0, n(a6 / 1.25) / 7.5, 0) * j(n(a6 / 1.25) * k(2), n(a6 / 2.5) * k(5), k(0)) * j(-cD / 2.5, 0, -cE / 4.5), .2)
			if V == false then
				P.C1 = P.C1:Lerp(rsc1 * i(0, 0, 0) * j(-m(a6 / 1.25) * k(7.5), -n(a6 / 2.5) * k(5), k(0)), .2)
				Q.C1 = Q.C1:Lerp(lsc1 * i(0, 0, 0) * i(0, p(cD / 2.25), 0) * j(m(a6 / 2.5) * k(10), n(a6 / 2.5) * k(5), k(0)) * j(cD + cE / 2, 0, cE / 1.75) * j(k(0), k(25), k(0)), .2)
			else
				P.C1 = P.C1:Lerp(rsc1 * i(0, 0, 0) * j(k(0), k(0), k(0)), .2)
				Q.C1 = Q.C1:Lerp(lsc1 * i(0, 0, 0) * j(k(0), k(0), k(0)), .2)
			end;
			R.C1 = R.C1:Lerp(rhc1 * i(0, m(a6 / 2.5) / 2.5, -m(a6 / 2.5) / 2) * j(n(a6 / 2.5) * k(85) * cD, k(0), n(a6 / 2.5) * k(65) * cE), .2)
			S.C1 = S.C1:Lerp(lhc1 * i(0, -m(a6 / 2.5) / 2.5, m(a6 / 2.5) / 2) * j(-n(a6 / 2.5) * k(85) * cD, k(0), -n(a6 / 2.5) * k(65) * cE), .2)
		end;
		if not V then
			ap.C1 = ap.C1:Lerp(j(k(75), k(190), k(0)), .25)
		end;
		if cy > 5 and cx > -10 and cx < 10 then
			Z = "walk"
			a5 = .75;
			if V == false then
				N.C0 = N.C0:Lerp(necc0 * i(0, 0, 0) * j(k(0), k(0), k(0)), .2)
				O.C0 = O.C0:Lerp(rutjc0 * i(0, 0, 0) * j(k(0), k(0), k(0)), .2)
				P.C0 = P.C0:Lerp(rsc0 * i(-.1, -.2, .25) * j(k(-10), k(-55), k(0)) * j(k(0), k(0), k(15)), .2)
				Q.C0 = Q.C0:Lerp(lsc0 * i(.125, .1, 0) * j(k(0), k(0), k(-3.5)), .2)
				R.C0 = R.C0:Lerp(rhc0 * i(0, 0, 0) * j(k(0), k(0), k(0)), .2)
				S.C0 = S.C0:Lerp(lhc0 * i(0, 0, 0) * j(k(0), k(0), k(0)), .2)
			end
		elseif cx > 10 then
			Z = "jump"
			a5 = 1;
			if not V then
				N.C0 = N.C0:Lerp(necc0 * i(0, 0, 0) * j(k(15), k(0), k(0)), .2)
				O.C0 = O.C0:Lerp(rutjc0 * i(0, 0, 0) * j(k(-5), k(0), k(0)), .2)
				P.C0 = P.C0:Lerp(rsc0 * i(-.1, -.1, .25) * j(k(5), k(-15), k(0)) * j(k(0), k(0), k(7.5)), .2)
				Q.C0 = Q.C0:Lerp(lsc0 * i(0, 0, 0) * j(k(145), k(0), k(-8)), .2)
				R.C0 = R.C0:Lerp(rhc0 * i(0, .1, -.1) * j(k(-3.5), k(0), k(2)), .2)
				S.C0 = S.C0:Lerp(lhc0 * i(0, .3, -.25) * j(k(-9), k(0), k(-3.5)), .2)
			end
		elseif cx < -10 then
			Z = "fall"
			a5 = 1;
			if not V then
				N.C0 = N.C0:Lerp(necc0 * i(0, 0, 0) * j(k(-5), k(0), k(0)), .2)
				O.C0 = O.C0:Lerp(rutjc0 * i(0, 0, 0) * j(k(5), k(0), k(0)), .2)
				P.C0 = P.C0:Lerp(rsc0 * i(-.1, -.15, .25) * j(k(15), k(-10), k(0)) * j(k(0), k(0), k(15)), .2)
				Q.C0 = Q.C0:Lerp(lsc0 * i(-.45, -.44, 0) * j(k(6), k(0), k(-97.5)), .2)
				R.C0 = R.C0:Lerp(rhc0 * i(0, .3, -.25) * j(k(-9), k(0), k(2)), .2)
				S.C0 = S.C0:Lerp(lhc0 * i(0, .1, -.1) * j(k(-3.5), k(0), k(-3.5)), .2)
			end
		elseif cy < 5 and cx > -10 and cx < 10 then
			Z = "idle"
			a5 = 1;
			if not V then
				N.C0 = N.C0:Lerp(necc0 * i(0, 0, 0) * j(k(3.5), k(15), k(3.5)), .1)
				O.C0 = O.C0:Lerp(rutjc0 * i(0, 0, 0) * j(k(7.5), k(15), k(-3.5)), .1)
				P.C0 = P.C0:Lerp(rsc0 * i(-.15, -.25, .35) * j(k(-25), k(-45), k(0)) * j(k(0), k(0), k(-25)), .1)
				Q.C0 = Q.C0:Lerp(lsc0 * i(0, -.125, -.075) * j(k(12.5), k(-10), k(-7.5)), .1)
				R.C0 = R.C0:Lerp(rhc0 * i(0, 0, -.1) * j(k(-10), k(-7.5), k(-5)), .1)
				S.C0 = S.C0:Lerp(lhc0 * i(0, 0, -.15) * j(k(10), k(20), k(-2.5)), .1)
			end
		end
	end)
	local C = game.Players.LocalPlayer;
	local cH = C.Character;
	local cI = cH["Nagamaki"].Handle;
	cI:BreakJoints()
	local cJ = Instance.new("Weld", game.Players.LocalPlayer.Character)
	cJ.Part1 = cI;
	cJ.Part0 = workspace.non.Katana.Handle;
	cJ.C0 = CFrame.new(0, 1.3, 0.25) * CFrame.Angles(math.rad(148.5), math.rad(90), 0)
	for cK, bM in next, workspace.non.Katana:GetChildren() do
		if bM:IsA("BasePart") then
			bM.Transparency = 1
		end
	end;
	print("Ran with no errors")
end)
ScriptsTab:NewButton('Assassin **', 'hes got a whole ass inventory on wtf', function()
	_reanimate()
	wait(0.016666666666666666)
	Effects = {}
	local a = game:service'Players'.LocalPlayer;
	local b = a.Character;
	local c = b:FindFirstChildOfClass("Humanoid")
	local d = b["Left Arm"]
	local e = b["Right Arm"]
	local f = b["Left Leg"]
	local g = b["Right Leg"]
	local h = b.Head;
	local i = b.Torso;
	local j = workspace.CurrentCamera;
	local k = b.HumanoidRootPart;
	local l = k.RootJoint;
	local m = false;
	local n = 'Idle'
	local o = 1;
	local p = false;
	local q = true;
	local r = nil;
	local s = (k.Velocity * Vector3.new(1, 0, 1)).magnitude;
	local t = k.Velocity.y;
	local u = 0;
	local v = 1;
	local w = 0;
	FELOADLIBRARY = {}
	loadstring(game:GetObjects("rbxassetid://5209815302")[1].Source)()
	local x = FELOADLIBRARY;
	local y = x.Create;
	local z = game:GetService("Debris")
	c.WalkSpeed = 16;
	local A = "Knife"
	local B = false;
	local C = 17;
	local D = 8;
	local E = 10;
	c.Animator.Parent = nil;
	b.Animate.Parent = nil;
	local F = function(G, H, I, J)
		local K = y('Motor'){
			Parent = G,
			Part0 = G,
			Part1 = H,
			C0 = I,
			C1 = J
		}
		return K
	end;
	function clerp(L, M, N)
		return L:lerp(M, N)
	end;
	RootCF = CFrame.fromEulerAnglesXYZ(-1.57, 0, 3.14)
	NeckCF = CFrame.new(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
	local O = F(i, e, CFrame.new(1.5, 0, 0), CFrame.new(0, 0, 0))
	local P = F(i, d, CFrame.new(-1.5, 0, 0), CFrame.new(0, 0, 0))
	local Q = F(i, g, CFrame.new(.5, -2, 0), CFrame.new(0, 0, 0))
	local R = F(i, f, CFrame.new(-.5, -2, 0), CFrame.new(0, 0, 0))
	l.C1 = CFrame.new(0, 0, 0)
	l.C0 = CFrame.new(0, 0, 0)
	i.Neck.C1 = CFrame.new(0, 0, 0)
	i.Neck.C0 = CFrame.new(0, 1.5, 0)
	local S = O.C1;
	local T = P.C1;
	local U = Q.C1;
	local V = R.C1;
	local W = false;
	function PlayAnimationFromTable(table, X, Y)
		l.C0 = clerp(l.C0, table[1], X)
		i.Neck.C0 = clerp(i.Neck.C0, table[2], X)
		O.C0 = clerp(O.C0, table[3], X)
		P.C0 = clerp(P.C0, table[4], X)
		Q.C0 = clerp(Q.C0, table[5], X)
		R.C0 = clerp(R.C0, table[6], X)
		if Y == true then
			if W == false then
				W = true;
				l.C1 = l.C1;
				i.Neck.C1 = i.Neck.C1;
				O.C1 = S;
				P.C1 = T;
				Q.C1 = U;
				R.C1 = V
			end
		end
	end;
	ArtificialHB = Instance.new("BindableEvent", script)
	ArtificialHB.Name = "Heartbeat"
	script:WaitForChild("Heartbeat")
	frame = 0.03333333333333;
	tf = 0;
	allowframeloss = false;
	tossremainder = false;
	lastframe = tick()
	script.Heartbeat:Fire()
	game:GetService("RunService").Heartbeat:connect(function(Z, _)
		tf = tf + Z;
		if tf >= frame then
			if allowframeloss then
				script.Heartbeat:Fire()
				lastframe = tick()
			else
				for a0 = 1, math.floor(tf / frame) do
					script.Heartbeat:Fire()
				end;
				lastframe = tick()
			end;
			if tossremainder then
				tf = 0
			else
				tf = tf - frame * math.floor(tf / frame)
			end
		end
	end)
	function swait(a1)
		if a1 == 0 or a1 == nil then
			ArtificialHB.Event:wait()
		else
			for a0 = 0, a1 do
				ArtificialHB.Event:wait()
			end
		end
	end;
	local a2 = Vector3.new()
	function getNearestGuy()
	end;
	a:GetMouse().Move:connect(function()
		a2 = a:GetMouse().Hit.Position
	end)
	function RemoveOutlines(a3)
		a3.TopSurface, a3.BottomSurface, a3.LeftSurface, a3.RightSurface, a3.FrontSurface, a3.BackSurface = 10, 10, 10, 10, 10, 10
	end;
	function so(a4, a5, a6, a7)
		local a8 = Instance.new("Sound", a5 or workspace)
		if a5 == b then
			a8.Parent = b.Torso
		end;
		a8.Volume = a7;
		a8.Pitch = a6 or 1;
		a8.SoundId = "rbxassetid://" .. a4;
		a8.PlayOnRemove = true;
		a8:Destroy()
	end;
	New = function(a9, aa, ab, ac)
		local a9 = Instance.new(a9)
		for ad, ae in pairs(ac or {}) do
			a9[ad] = ae
		end;
		a9.Parent = aa;
		a9.Name = ab;
		return a9
	end;
	SniperPart = New("Part", b, "SniperPart", {
		FormFactor = Enum.FormFactor.Symmetric,
		Size = Vector3.new(0.299999923, 5.59999752, 1.20000005),
		CFrame = CFrame.new(12.6994934, 10.8995457, -104.84919, -0.999997199, 0.000127014282, 7.70353145e-05, -0.000136496106, -1.00000858, -7.61961637e-05, 8.27468975e-05, -8.1929189e-05, 0.999997139),
		CanCollide = false
	})
	Mesh = New("SpecialMesh", SniperPart, "Mesh", {
		Scale = Vector3.new(1.5, 1.5, 1.5),
		MeshId = "http://www.roblox.com/asset?id=71947387",
		TextureId = "http://www.roblox.com/asset?id=71947339",
		MeshType = Enum.MeshType.FileMesh
	})
	Weld = New("ManualWeld", SniperPart, "Weld", {
		Part0 = SniperPart,
		Part1 = e,
		C0 = CFrame.new(0, 0, 0, -1, -3.8146934e-06, 2.64410255e-06, 3.81311042e-06, -1, -1.81502128e-06, 2.6441096e-06, -1.81501105e-06, 1),
		C1 = CFrame.new(-0.0998973846, -2.69990635, -0.250015259, -1, -7.88987098e-10, -1.34516404e-23, 7.88987098e-10, 1, 3.40985073e-14, -1.34516388e-23, -3.40985073e-14, -1)
	})
	SniperF = New("Part", b, "SniperF", {
		Transparency = 1,
		Transparency = 1,
		Size = Vector3.new(0.0999997407, 0.100000001, 0.0999999866),
		CFrame = CFrame.new(12.6998749, 8.04950333, -104.599442, 0.999997199, -0.000123199745, 7.43909914e-05, 0.000132682762, 1.00000858, -7.4381489e-05, -8.01031056e-05, 8.01138667e-05, 0.999997139),
		CanCollide = false,
		BottomSurface = Enum.SurfaceType.Smooth,
		TopSurface = Enum.SurfaceType.Smooth
	})
	Weld = New("ManualWeld", SniperF, "Weld", {
		Part0 = SniperF,
		Part1 = SniperPart,
		C1 = CFrame.new(0, 2.84999847, 0.249984741, -1, -3.8146934e-06, 2.64410255e-06, 3.81311042e-06, -1, -1.81502128e-06, 2.6441096e-06, -1.81501105e-06, 1)
	})
	ShottyPart = New("Part", b, "ShottyPart", {
		FormFactor = Enum.FormFactor.Custom,
		Size = Vector3.new(0.300000012, 3, 0.600000024),
		CFrame = CFrame.new(-14.4535122, 9.59664345, -109.497604, -0.999997258, 0.000102982318, -9.57794546e-05, -0.000112362795, -1.00000811, -0.00097725715, -9.01586318e-05, -0.000982958474, 0.999996722),
		CanCollide = false
	})
	Mesh = New("SpecialMesh", ShottyPart, "Mesh", {
		VertexColor = Vector3.new(2, 2, 2),
		MeshId = "http://www.roblox.com/asset/?id=71947462",
		TextureId = "http://www.roblox.com/asset/?id=150079972",
		MeshType = Enum.MeshType.FileMesh
	})
	Weld = New("ManualWeld", ShottyPart, "Weld", {
		Part0 = ShottyPart,
		Part1 = e,
		C0 = CFrame.new(0, 0, 0, -1, 2.03055642e-05, -0.00017026384, -2.01518324e-05, -0.999999583, -0.000902848784, -0.000170282117, -0.00090284535, 0.999999642),
		C1 = CFrame.new(-0.149913788, -2.39947891, -0.197479248, -1, 2.0288815e-05, 0.000126775703, 2.02955143e-05, 1, 5.28392593e-05, -0.000126774627, 5.28418313e-05, -1)
	})
	ShotgunF = New("Part", b, "ShotgunF", {
		Transparency = 1,
		Transparency = 1,
		Size = Vector3.new(0.0999997407, 0.100000001, 0.0999999866),
		CFrame = CFrame.new(-14.4533739, 7.94634056, -109.249107, 0.999997258, -0.000123201316, 7.43909841e-05, 0.000132681205, 1.00000846, -7.43815326e-05, -8.01031274e-05, 8.01137649e-05, 0.999997258),
		CanCollide = false,
		BottomSurface = Enum.SurfaceType.Smooth,
		TopSurface = Enum.SurfaceType.Smooth
	})
	Weld = New("ManualWeld", ShotgunF, "Weld", {
		Part0 = ShotgunF,
		Part1 = ShottyPart,
		C1 = CFrame.new(7.62939453e-06, 1.65004492, 0.25012207, -1, 2.03055642e-05, -0.00017026384, -2.01518324e-05, -0.999999583, -0.000902848784, -0.000170282117, -0.00090284535, 0.999999642)
	})
	PistolPart = New("Part", b, "PistolPart", {
		FormFactor = Enum.FormFactor.Symmetric,
		Size = Vector3.new(0.200000003, 1, 1.60000014),
		CFrame = CFrame.new(18.0989876, 7.69964027, -101.500366, -0.999996424, 0.000773654203, -0.00101959216, -0.0010287785, 0.000385828374, 1.00000811, 0.00077976333, 0.999996781, -0.000379299192),
		CanCollide = false,
		BackSurface = Enum.SurfaceType.Weld,
		BottomSurface = Enum.SurfaceType.Weld,
		FrontSurface = Enum.SurfaceType.Weld,
		LeftSurface = Enum.SurfaceType.Weld,
		RightSurface = Enum.SurfaceType.Weld,
		TopSurface = Enum.SurfaceType.Weld
	})
	Mesh = New("SpecialMesh", PistolPart, "Mesh", {
		Scale = Vector3.new(2, 2, 2),
		MeshId = "http://www.roblox.com/asset?id=77882703",
		TextureId = "http://www.roblox.com/asset?id=77882618",
		MeshType = Enum.MeshType.FileMesh
	})
	Weld = New("ManualWeld", PistolPart, "Weld", {
		Part0 = PistolPart,
		Part1 = e,
		C0 = CFrame.new(0, 0, 0, -0.999996424, -0.0010287785, 0.00077976333, 0.000773654203, 0.000385828374, 0.999996781, -0.00101959216, 1.00000811, -0.000379299192),
		C1 = CFrame.new(-0.198720932, -1.50034809, -0.199378967, -1, -0.00026502274, 0.000159957795, -0.000264997128, 1, 0.000160029536, -0.0001600002, 0.000159987132, -1)
	})
	Pistol2Part = New("Part", b, "Pistol2Part", {
		FormFactor = Enum.FormFactor.Symmetric,
		Size = Vector3.new(0.200000003, 1, 1.60000014),
		CFrame = CFrame.new(20.7989807, 7.70241833, -101.502472, -0.999996424, 0.000773654203, -0.00101959216, -0.0010287785, 0.000385828374, 1.00000811, 0.00077976333, 0.999996781, -0.000379299192),
		CanCollide = false,
		BackSurface = Enum.SurfaceType.Weld,
		BottomSurface = Enum.SurfaceType.Weld,
		FrontSurface = Enum.SurfaceType.Weld,
		LeftSurface = Enum.SurfaceType.Weld,
		RightSurface = Enum.SurfaceType.Weld,
		TopSurface = Enum.SurfaceType.Weld
	})
	Mesh = New("SpecialMesh", Pistol2Part, "Mesh", {
		Scale = Vector3.new(2, 2, 2),
		MeshId = "http://www.roblox.com/asset?id=77882703",
		TextureId = "http://www.roblox.com/asset?id=77882618",
		MeshType = Enum.MeshType.FileMesh
	})
	Weld = New("ManualWeld", Pistol2Part, "Weld", {
		Part0 = Pistol2Part,
		Part1 = d,
		C0 = CFrame.new(0, 0, 0, -0.999999404, -0.000896037673, 0.000699733966, 0.000699321856, 0.000460113079, 0.999999642, -0.00089635927, 0.999999523, -0.000459486182),
		C1 = CFrame.new(0.101261139, -1.49828005, -0.19770813, -0.999999046, -0.00013233356, 7.98649926e-05, -0.000129168649, 1.00000286, 7.99051195e-05, -7.79679685e-05, 7.79874026e-05, -0.999999046)
	})
	PistolF = New("Part", b, "PistolF", {
		Transparency = 1,
		Transparency = 1,
		FormFactor = Enum.FormFactor.Custom,
		Size = Vector3.new(0.200000003, 0.199999988, 0.200000003),
		CFrame = CFrame.new(18.1002274, 6.79980469, -101.100029, -0.999996781, 0.00116357114, 0.000773530744, -0.0011731172, -1.00000811, 0.000386120519, 0.000779943191, 0.000379309029, 0.999996781),
		CanCollide = false
	})
	Weld = New("ManualWeld", PistolF, "Weld", {
		Part0 = PistolF,
		Part1 = PistolPart,
		C0 = CFrame.new(0, 0, 0, -0.999999642, -0.00104037486, 0.000699925295, 0.00104033854, -0.999999404, 0.000459507515, 0.000699198456, 0.000460405223, 0.999999642),
		C1 = CFrame.new(-1.33514404e-05, 0.399993896, -0.899982452, -0.999999404, -0.000896037673, 0.000699733966, 0.000699321856, 0.000460113079, 0.999999642, -0.00089635927, 0.999999523, -0.000459486182)
	})
	Pistol2F = New("Part", b, "Pistol2F", {
		Transparency = 1,
		Transparency = 1,
		FormFactor = Enum.FormFactor.Custom,
		Size = Vector3.new(0.200000003, 0.199999988, 0.200000003),
		CFrame = CFrame.new(20.8002224, 6.80258274, -101.102135, -0.999996781, 0.00116357114, 0.000773530744, -0.0011731172, -1.00000811, 0.000386120519, 0.000779943191, 0.000379309029, 0.999996781),
		CanCollide = false
	})
	Weld = New("ManualWeld", Pistol2F, "Weld", {
		Part0 = Pistol2F,
		Part1 = Pistol2Part,
		C0 = CFrame.new(0, 0, 0, -0.999999642, -0.00104037486, 0.000699925295, 0.00104033854, -0.999999404, 0.000459507515, 0.000699198456, 0.000460405223, 0.999999642),
		C1 = CFrame.new(-1.52587891e-05, 0.399993896, -0.899982452, -0.999999404, -0.000896037673, 0.000699733966, 0.000699321856, 0.000460113079, 0.999999642, -0.00089635927, 0.999999523, -0.000459486182)
	})
	Knife = New("Part", b, "Knife", {
		BrickColor = BrickColor.new("Really black"),
		FormFactor = Enum.FormFactor.Custom,
		Size = Vector3.new(0.200000018, 3, 0.600000024),
		CFrame = CFrame.new(18.1000671, 8.20049858, -102.599922, 0.999997199, -7.43909914e-05, -0.000123201287, 0.000132681176, 7.43816781e-05, 1.00000858, -8.01031129e-05, -0.999997139, 8.01140704e-05),
		CanCollide = false,
		Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
	})
	Mesh = New("SpecialMesh", Knife, "Mesh", {
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://121944805",
		MeshType = Enum.MeshType.FileMesh
	})
	Weld = New("ManualWeld", Knife, "Weld", {
		Part0 = Knife,
		Part1 = e,
		C0 = CFrame.new(0, 0, 0, 1, -1.83178334e-11, -9.29553131e-20, -8.93234474e-20, 1.9826904e-10, -1, 1.83178334e-11, 1, 1.9826904e-10),
		C1 = CFrame.new(-0.200113297, -0.99965477, 0.900268555, -0.999999046, -0.00013233356, 7.98649926e-05, -0.000129168649, 1.00000286, 7.99051195e-05, -7.79679685e-05, 7.79874026e-05, -0.999999046)
	})
	Knife2 = New("Part", b, "Knife2", {
		BrickColor = BrickColor.new("Really black"),
		FormFactor = Enum.FormFactor.Custom,
		Size = Vector3.new(0.200000018, 3, 0.600000024),
		CFrame = CFrame.new(20.800066, 8.20085621, -102.600151, 0.999997199, -7.43909914e-05, -0.000123201287, 0.000132681176, 7.43816781e-05, 1.00000858, -8.01031129e-05, -0.999997139, 8.01140704e-05),
		CanCollide = false,
		Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
	})
	Mesh = New("SpecialMesh", Knife2, "Mesh", {
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://121944805",
		MeshType = Enum.MeshType.FileMesh
	})
	Weld = New("ManualWeld", Knife2, "Weld", {
		Part0 = Knife2,
		Part1 = d,
		C0 = CFrame.new(0, 0, 0, 1, -1.83178334e-11, -9.29553131e-20, -8.93234474e-20, 1.9826904e-10, -1, 1.83178334e-11, 1, 1.9826904e-10),
		C1 = CFrame.new(0.0998783112, -1.00001431, 0.900054932, -0.999999046, -0.00013233356, 7.98649926e-05, -0.000129168649, 1.00000286, 7.99051195e-05, -7.79679685e-05, 7.79874026e-05, -0.999999046)
	})
	SheathPart = New("Part", b, "SheathPart", {
		BrickColor = BrickColor.new("Really black"),
		FormFactor = Enum.FormFactor.Custom,
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),
		CFrame = CFrame.new(-4.70037603, 7.11581182, -105.941528, 0.000411997637, 0.000128002648, 1, 0.765914023, -0.642943084, -0.00023325636, 0.642943025, 0.765914023, -0.000362930034),
		CanCollide = false,
		Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
	})
	Mesh = New("SpecialMesh", SheathPart, "Mesh", {
		Scale = Vector3.new(0.419999987, 2.5, 5),
		MeshId = "rbxassetid://504776834",
		MeshType = Enum.MeshType.FileMesh
	})
	Weld = New("ManualWeld", SheathPart, "Weld", {
		Part0 = SheathPart,
		Part1 = f,
		C0 = CFrame.new(0, 0, 0, 0.000411997637, 0.765914023, 0.642943025, 0.000128002648, -0.642943084, 0.765914023, 1, -0.00023325636, -0.000362930034),
		C1 = CFrame.new(-0.399157524, -0.0849089622, 0.44103241, -1, -0.000285560207, 0.000172345346, -0.000285530492, 1, 0.000172423926, -0.000172394575, 0.000172374697, -1)
	})
	KnifeH = New("Part", b, "KnifeH", {
		BrickColor = BrickColor.new("Really black"),
		FormFactor = Enum.FormFactor.Custom,
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),
		CFrame = CFrame.new(-4.70015621, 7.43445921, -105.543449, 1, -0.000408680877, -0.00014000498, -0.000222999661, -0.765914917, 0.642942011, -0.000369990012, -0.642941952, -0.765914917),
		CanCollide = false,
		Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
	})
	Mesh = New("SpecialMesh", KnifeH, "Mesh", {
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://121944805",
		MeshType = Enum.MeshType.FileMesh
	})
	Weld = New("ManualWeld", KnifeH, "Weld", {
		Part0 = KnifeH,
		Part1 = f,
		C0 = CFrame.new(0, 0, 0, 1, -0.000222999661, -0.000369990012, -0.000408680877, -0.765914917, -0.642941952, -0.00014000498, 0.642942011, -0.765914917),
		C1 = CFrame.new(-0.399399757, 0.23380661, 0.043006897, -1, -0.000285560207, 0.000172345346, -0.000285530492, 1, 0.000172423926, -0.000172394575, 0.000172374697, -1)
	})
	PistolH = New("Part", b, "PistolH", {
		FormFactor = Enum.FormFactor.Symmetric,
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),
		CFrame = CFrame.new(-6.49966383, 7.78175831, -105.575996, -1, 0.000318881212, -5.09696583e-05, -0.000277000305, -0.765891254, 0.642970145, 0.000165993857, 0.642970145, 0.765891314),
		CanCollide = false,
		BackSurface = Enum.SurfaceType.Weld,
		BottomSurface = Enum.SurfaceType.Weld,
		FrontSurface = Enum.SurfaceType.Weld,
		LeftSurface = Enum.SurfaceType.Weld,
		RightSurface = Enum.SurfaceType.Weld,
		TopSurface = Enum.SurfaceType.Weld
	})
	Mesh = New("SpecialMesh", PistolH, "Mesh", {
		Scale = Vector3.new(2, 2, 2),
		MeshId = "http://www.roblox.com/asset?id=77882703",
		TextureId = "http://www.roblox.com/asset?id=77882618",
		MeshType = Enum.MeshType.FileMesh
	})
	Weld = New("ManualWeld", PistolH, "Weld", {
		Part0 = PistolH,
		Part1 = g,
		C0 = CFrame.new(0, 0, 0, -1, -0.000277000305, 0.000165993857, 0.000318881212, -0.765891254, 0.642970145, -5.09696583e-05, 0.642970145, 0.765891314),
		C1 = CFrame.new(0.399995804, 0.581613064, 0.0758972168, -1, -0.000285560207, 0.000172345346, -0.000285530492, 1, 0.000172423926, -0.000172394575, 0.000172374697, -1)
	})
	ShottyH = New("Part", b, "ShottyH", {
		FormFactor = Enum.FormFactor.Custom,
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),
		CFrame = CFrame.new(-5.59976482, 8.30091476, -106.050423, 9.99167696e-06, 1, 3.19996834e-05, 5.30095167e-05, -3.20002146e-05, 1, 1, -9.98998075e-06, -5.30098368e-05),
		CanCollide = false
	})
	Mesh = New("SpecialMesh", ShottyH, "Mesh", {
		VertexColor = Vector3.new(2, 2, 2),
		MeshId = "http://www.roblox.com/asset/?id=71947462",
		TextureId = "http://www.roblox.com/asset/?id=150079972",
		MeshType = Enum.MeshType.FileMesh
	})
	Weld = New("ManualWeld", ShottyH, "Weld", {
		Part0 = ShottyH,
		Part1 = i,
		C0 = CFrame.new(0, 0, 0, 9.99167696e-06, 5.30095167e-05, 1, 1, -3.20002146e-05, -9.98998075e-06, 3.19996834e-05, 1, -5.30098368e-05),
		C1 = CFrame.new(-8.48770142e-05, -0.899636269, 0.55027771, -1, -0.000285560207, 0.000172345346, -0.000285530492, 1, 0.000172423926, -0.000172394575, 0.000172374697, -1)
	})
	SniperH = New("Part", b, "SniperH", {
		FormFactor = Enum.FormFactor.Symmetric,
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),
		CFrame = CFrame.new(-5.47727585, 9.23893642, -106.150467, 0.000373998424, 0.865912914, 0.500194848, 0.000229012818, -0.500194967, 0.865912855, 0.999999881, -0.000209299018, -0.000385377265),
		CanCollide = false
	})
	Mesh = New("SpecialMesh", SniperH, "Mesh", {
		Scale = Vector3.new(1.5, 1.5, 1.5),
		MeshId = "http://www.roblox.com/asset?id=71947387",
		TextureId = "http://www.roblox.com/asset?id=71947339",
		MeshType = Enum.MeshType.FileMesh
	})
	Weld = New("ManualWeld", SniperH, "Weld", {
		Part0 = SniperH,
		Part1 = i,
		C0 = CFrame.new(0, 0, 0, 0.000373998424, 0.000229012818, 0.999999881, 0.865912914, -0.500194967, -0.000209299018, 0.500194848, 0.865912855, -0.000385377265),
		C1 = CFrame.new(-0.122859001, 0.0383329391, 0.650466919, -1, -0.000285560207, 0.000172345346, -0.000285530492, 1, 0.000172423926, -0.000172394575, 0.000172374697, -1)
	})
	Knife2.Transparency = 1;
	Pistol2Part.Transparency = 1;
	PistolPart.Transparency = 1;
	ShottyPart.Transparency = 1;
	SniperPart.Transparency = 1;
	KnifeH.Transparency = 1;
	function CreateTrailObj(af, ag, ah, ai, aj)
		local ak = New("Attachment", af, "Att1", {
			Position = Vector3.new(ai, af.Size.Y / 2, aj)
		})
		local al = New("Attachment", af, "Att2", {
			Position = Vector3.new(ai, -(af.Size.Y / 2), aj)
		})
		local am = New("Trail", af, "TrailEff", {
			Color = ColorSequence.new({
				ColorSequenceKeypoint.new(0, BrickColor.new(ag).Color),
				ColorSequenceKeypoint.new(1, BrickColor.new(ah).Color)
			}),
			Transparency = NumberSequence.new({
				NumberSequenceKeypoint.new(0, .5),
				NumberSequenceKeypoint.new(1, 1)
			}),
			Attachment0 = ak,
			Attachment1 = al,
			Enabled = false,
			Lifetime = .5,
			MinLength = .001
		})
		return am
	end;
	LLTr = CreateTrailObj(f, "White", "White", 0, 0)
	RLTr = CreateTrailObj(g, "White", "White", 0, 0)
	LATr = CreateTrailObj(d, "White", "White", 0, 0)
	RATr = CreateTrailObj(e, "White", "White", 0, 0)
	local an = Instance.new("ParticleEmitter", Knife)
	an.Texture = "rbxasset://textures/particles/fire_main.dds"
	an.Color = ColorSequence.new(Color3.new(.6, 0, 0))
	an.Size = NumberSequence.new(1, 0)
	an.Lifetime = NumberRange.new(2)
	an.Rate = 0;
	an.Enabled = false;
	an.Acceleration = Vector3.new(0, -10, 0)
	an.Rotation = NumberRange.new(0, 359)
	an.Speed = NumberRange.new(0)
	an.Enabled = false;
	local ao = an:Clone()
	ao.Parent = Knife2;
	local ap;
	local aq;
	spawn(function()
		local ak = New("Attachment", Knife, "Att1", {
			Position = Vector3.new(0, 1.3, .2)
		})
		local al = New("Attachment", Knife, "Att2", {
			Position = Vector3.new(0, -.5, .2)
		})
		ap = New("Trail", Knife, "TrailEff", {
			Color = ColorSequence.new(Color3.new(.8, .8, .8)),
			Transparency = NumberSequence.new(0, 1),
			Attachment0 = ak,
			Attachment1 = al,
			Enabled = false,
			Lifetime = .5,
			MinLength = .001
		})
	end)
	spawn(function()
		local ak = New("Attachment", Knife2, "Att1", {
			Position = Vector3.new(0, 1.3, .2)
		})
		local al = New("Attachment", Knife2, "Att2", {
			Position = Vector3.new(0, -.5, .2)
		})
		aq = New("Trail", Knife2, "TrailEff", {
			Color = ColorSequence.new(Color3.new(.8, .8, .8)),
			Transparency = NumberSequence.new(0, 1),
			Attachment0 = ak,
			Attachment1 = al,
			Enabled = false,
			Lifetime = .5,
			MinLength = .001
		})
	end)
	local ar = Instance.new("ScreenGui", a:FindFirstChildOfClass("PlayerGui"))
	local as = Instance.new("Frame", ar)
	as.AnchorPoint = Vector2.new(1, .5)
	as.BackgroundTransparency = 1;
	as.BorderSizePixel = 0;
	as.Position = UDim2.new(1, 0, .6, 0)
	as.Size = UDim2.new(0, 150, 0, 200)
	game.Players.LocalPlayer.Character.Humanoid.Died:Connect(function()
		ar:Destroy()
	end)
	local at = Instance.new("ImageLabel")
	at.BackgroundTransparency = 1;
	at.BorderSizePixel = 0;
	at.Size = UDim2.new(0, 50, 0, 50)
	at.ImageColor3 = Color3.new(.3, .3, .3)
	local au = at:Clone()
	au.Parent = as;
	au.Image = "rbxassetid://949752421"
	au.ImageColor3 = Color3.new(1, 1, 1)
	local av = at:Clone()
	av.Parent = as;
	av.Position = UDim2.new(0, 0, 0, 50)
	av.Image = "rbxassetid://97886725"
	local aw = at:Clone()
	aw.Parent = as;
	aw.Position = UDim2.new(0, 0, 0, 100)
	aw.Image = "rbxassetid://31929291"
	local ax = at:Clone()
	ax.Parent = as;
	ax.Position = UDim2.new(0, 0, 0, 150)
	ax.Image = "rbxassetid://39422857"
	at:Destroy()
	local ay = Instance.new("TextLabel")
	ay.BackgroundTransparency = 1;
	ay.BorderSizePixel = 0;
	ay.Size = UDim2.new(0, 100, 0, 50)
	ay.Font = "Highway"
	ay.TextSize = 30;
	ay.TextColor3 = Color3.new(.3, .3, .3)
	ay.TextStrokeColor3 = Color3.new(0, 0, 0)
	ay.TextStrokeTransparency = 0;
	local az = ay:Clone()
	az.Parent = as;
	az.Text = "â"
	az.TextSize = 60;
	az.TextColor3 = Color3.new(1, 1, 1)
	az.Position = UDim2.new(0, 50, 0, 0)
	local aA = ay:Clone()
	aA.Parent = as;
	aA.Text = "17/17"
	aA.Position = UDim2.new(0, 50, 0, 50)
	local aB = ay:Clone()
	aB.Parent = as;
	aB.Text = "8/8"
	aB.Position = UDim2.new(0, 50, 0, 100)
	local aC = ay:Clone()
	aC.Parent = as;
	aC.Text = "10/10"
	aC.Position = UDim2.new(0, 50, 0, 150)
	ay:Destroy()
	local aD = Instance.new("Frame", ar)
	aD.AnchorPoint = Vector2.new(.5, .5)
	aD.BackgroundColor3 = Color3.new(0, 0, 0)
	aD.BorderColor3 = Color3.new(0, 0, 0)
	aD.BorderSizePixel = 5;
	aD.Position = UDim2.new(.5, 0, .8, 0)
	aD.Size = UDim2.new(0, 300, 0, 30)
	local aE = Instance.new("Frame", aD)
	aE.BackgroundColor3 = Color3.new(0, 1, 0)
	aE.BorderSizePixel = 0;
	aE.Size = UDim2.new(1, 0, 1, 0)
	local aF = Instance.new("TextLabel", aD)
	aF.BackgroundTransparency = 1;
	aF.BorderSizePixel = 0;
	aF.LayoutOrder = -1;
	aF.Size = UDim2.new(0, 100, 1, 0)
	aF.Font = "Highway"
	aF.Text = " + 100"
	aF.TextColor3 = Color3.new(1, 1, 1)
	aF.TextSize = 30;
	aF.TextXAlignment = "Left"
	coroutine.wrap(function()
		while true do
			swait()
			aA.Text = C .. "/17"
			aB.Text = D .. "/8"
			aC.Text = E .. "/10"
		end
	end)()
	coroutine.wrap(function()
		while true do
			swait()
			local aG = c.Health;
			local aH = c.MaxHealth;
			aE.Size = UDim2.new(aG / aH, 0, 1, 0)
			if B == false then
				aE.BackgroundColor3 = Color3.new(1 - aG / aH, aG / aH, 0)
			else
				aE.BackgroundColor3 = Color3.new(1, 1, 0)
			end;
			aF.Text = " + " .. math.floor(aG)
		end
	end)()
	local aI = Instance.new("SpotLight", h)
	aI.Angle = 90;
	aI.Brightness = 50;
	aI.Shadows = true;
	aI.Range = 30;
	aI.Enabled = false;
	function rayCast(aJ, aK, aL, aM)
		return game:service("Workspace"):FindPartOnRay(Ray.new(aJ, aK.unit * (aL or 999.999)), aM)
	end;
	function FindNearestTorso(aJ, aN, aO)
		if aO then
			return (aO.Head.CFrame.p - aJ).magnitude < aN
		end;
		local aP = {}
		for a0, aQ in pairs(workspace:GetDescendants()) do
			if aQ:IsA("Model") then
				if aQ:findFirstChild("Head") then
					if aQ ~= b then
						if (aQ.Head.Position - aJ).magnitude <= aN then
							table.insert(aP, aQ)
						end
					end
				end
			end
		end;
		return aP
	end;
	EffectModel = y("Model"){
		Parent = b,
		Name = "Effects"
	}
	Effects = {
		Block = function(aR, aS, aT, aU, aV, aW, aX, aY, aZ)
			local _ = Instance.new("Part", EffectModel)
			_.BrickColor = BrickColor.new(aW)
			_.Size = aS;
			_.Anchored = true;
			_.CanCollide = false;
			_.Material = aV;
			_.CFrame = aR;
			if aY == true then
				_.Transparency = 1
			else
				_.Transparency = 0
			end;
			local a_ = Instance.new("BlockMesh", _)
			a_.Scale = aT;
			coroutine.wrap(function()
				for a0 = 0, 1, aZ do
					swait()
					if aY == true then
						_.Transparency = 1 - a0
					else
						_.Transparency = a0
					end;
					a_.Scale = a_.Scale + aU;
					if aX == true then
						_.CFrame = _.CFrame * CFrame.Angles(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
					end
				end;
				_:Destroy()
			end)()
			return _
		end,
		Sphere = function(aR, aS, aT, aU, aV, aW, aY, aZ)
			local _ = Instance.new("Part", EffectModel)
			_.BrickColor = BrickColor.new(aW)
			_.Size = aS;
			_.Anchored = true;
			_.CanCollide = false;
			_.Material = aV;
			_.CFrame = aR;
			if aY == true then
				_.Transparency = 1
			else
				_.Transparency = 0
			end;
			local a_ = Instance.new("SpecialMesh", _)
			a_.MeshType = "Sphere"
			a_.Scale = aT;
			coroutine.wrap(function()
				for a0 = 0, 1, aZ do
					swait()
					if aY == true then
						_.Transparency = 1 - a0
					else
						_.Transparency = a0
					end;
					a_.Scale = a_.Scale + aU
				end;
				_:Destroy()
			end)()
			return _
		end,
		Cylinder = function(aR, aS, aT, aU, aV, aW, aY, aZ)
			local _ = Instance.new("Part", EffectModel)
			_.BrickColor = BrickColor.new(aW)
			_.Size = aS;
			_.Anchored = true;
			_.CanCollide = false;
			_.Material = aV;
			_.CFrame = aR;
			if aY == true then
				_.Transparency = 1
			else
				_.Transparency = 0
			end;
			local a_ = Instance.new("CylinderMesh", _)
			a_.Scale = aT;
			coroutine.wrap(function()
				for a0 = 0, 1, aZ do
					swait()
					if aY == true then
						_.Transparency = 1 - a0
					else
						_.Transparency = a0
					end;
					a_.Scale = a_.Scale + aU
				end;
				_:Destroy()
			end)()
			return _
		end,
		Wave = function(aR, aT, aU, aW, aX, aY, aZ)
			local _ = Instance.new("Part", EffectModel)
			_.BrickColor = BrickColor.new(aW)
			_.Size = Vector3.new()
			_.Anchored = true;
			_.CanCollide = false;
			_.CFrame = aR;
			if aY == true then
				_.Transparency = 1
			else
				_.Transparency = 0
			end;
			local a_ = Instance.new("SpecialMesh", _)
			a_.MeshId = "rbxassetid://20329976"
			a_.Scale = aT;
			coroutine.wrap(function()
				for a0 = 0, 1, aZ do
					swait()
					if aY == true then
						_.Transparency = 1 - a0
					else
						_.Transparency = a0
					end;
					a_.Scale = a_.Scale + aU;
					_.CFrame = _.CFrame * CFrame.Angles(0, math.rad(aX), 0)
				end;
				_:Destroy()
			end)()
			return _
		end,
		Ring = function(aR, aT, aU, aW, aY, aZ)
			local _ = Instance.new("Part", EffectModel)
			_.BrickColor = BrickColor.new(aW)
			_.Size = Vector3.new()
			_.Anchored = true;
			_.CanCollide = false;
			_.CFrame = aR;
			if aY == true then
				_.Transparency = 1
			else
				_.Transparency = 0
			end;
			local a_ = Instance.new("SpecialMesh", _)
			a_.MeshId = "rbxassetid://3270017"
			a_.Scale = aT;
			coroutine.wrap(function()
				for a0 = 0, 1, aZ do
					swait()
					if aY == true then
						_.Transparency = 1 - a0
					else
						_.Transparency = a0
					end;
					a_.Scale = a_.Scale + aU
				end;
				_:Destroy()
			end)()
			return _
		end,
		Meshed = function(aR, aT, aU, aW, b0, b1, aX, aY, aZ)
			local _ = Instance.new("Part", EffectModel)
			_.BrickColor = BrickColor.new(aW)
			_.Size = Vector3.new()
			_.Anchored = true;
			_.CanCollide = false;
			_.CFrame = aR;
			if aY == true then
				_.Transparency = 1
			else
				_.Transparency = 0
			end;
			local a_ = Instance.new("SpecialMesh", _)
			a_.MeshId = b0;
			a_.TextureId = b1;
			a_.Scale = aT;
			coroutine.wrap(function()
				for a0 = 0, 1, aZ do
					swait()
					if aY == true then
						_.Transparency = 1 - a0
					else
						_.Transparency = a0
					end;
					a_.Scale = a_.Scale + aU;
					_.CFrame = _.CFrame * CFrame.Angles(0, math.rad(aX), 0)
				end;
				_:Destroy()
			end)()
			return _
		end,
		Explode = function(aR, aS, aT, aU, aV, aW, b2, aY, aZ)
			local _ = Instance.new("Part", EffectModel)
			_.BrickColor = BrickColor.new(aW)
			_.Size = aS;
			_.Anchored = true;
			_.CanCollide = false;
			_.Material = aV;
			_.CFrame = aR * CFrame.Angles(math.rad(math.random(-360, 360)), math.rad(math.random(-360, 360)), math.rad(math.random(-360, 360)))
			if aY == true then
				_.Transparency = 1
			else
				_.Transparency = 0
			end;
			local a_ = Instance.new("SpecialMesh", _)
			a_.MeshType = "Sphere"
			a_.Scale = aT;
			coroutine.wrap(function()
				for a0 = 0, 1, aZ do
					swait()
					if aY == true then
						_.Transparency = 1 - a0
					else
						_.Transparency = a0
					end;
					a_.Scale = a_.Scale + aU;
					_.CFrame = _.CFrame * CFrame.new(0, b2, 0)
				end;
				_:Destroy()
			end)()
			return _
		end
	}
	function GetDudesTorso(b3)
		local b4 = b3:findFirstChild("Torso") or b3:findFirstChild("UpperTorso")
		if b4 ~= nil then
			return b4
		end
	end;
	function BodyVel(a3, b5)
	end;
	function Dmg(b6, b7, b8, b5, b9, ba, bb)
		if b6 and b6 ~= b then
			if b6:FindFirstChild("HITO") then
				return
			end;
			if bb ~= 0 then
				local bc = Instance.new("BoolValue", b6)
				bc.Name = "HITO"
				z:AddItem(bc, bb)
			end;
			local bd = b6:FindFirstChildOfClass("Humanoid")
			local be = b7 + math.random(-b8, b8)
			local bf = "-" .. be;
			if bd then
				local bg = bd.Health - be;
				if bg <= 0 and b6:FindFirstChild("DEATHED") == nil or b7 == math.huge or bd.Health > 1000000 then
					bf = "DEATH"
					Instance.new("BoolValue", b6).Name = "DEATHED"
				end;
				if b7 ~= math.huge then
				end
			end;
			coroutine.wrap(function()
				local bh = Instance.new("BillboardGui", b6)
				bh.Size = UDim2.new(0, 100, 0, 40)
				bh.StudsOffset = Vector3.new(0, 3, 0)
				bh.Adornee = b6:FindFirstChild("Head")
				bh.Name = "TalkingBillBoard"
				local bi = Instance.new("TextLabel", bh)
				bi.BackgroundTransparency = 1;
				bi.BorderSizePixel = 0;
				bi.Text = bf;
				bi.Font = "Fantasy"
				bi.TextSize = 24;
				bi.TextStrokeTransparency = 0;
				bi.TextColor3 = Color3.new(1, 1, 1)
				bi.TextStrokeColor3 = Color3.new(0, 0, 0)
				bi.Size = UDim2.new(1, 0, 0.5, 0)
				swait(10)
				for a0 = 0, 1, .05 do
					swait()
					bi.Position = bi.Position - UDim2.new(0, 0, .005, 0)
					bi.TextStrokeTransparency = a0;
					bi.TextTransparency = a0
				end;
				bh:Destroy()
			end)()
			local b4 = GetDudesTorso(b6)
			if b4 then
				local bj = be / 5;
				if bj > 30 then
					bj = 30
				end;
				if ba == "Blunt" then
					puncheff(b4)
				elseif ba == "Sharp" then
					slasheff(b4)
					coroutine.wrap(function()
						if Knife.Transparency == 0 then
							an.Enabled = true;
							swait(10)
							an.Enabled = false
						elseif Knife2.Transparency == 0 then
							ao.Enabled = true;
							swait(10)
							ao.Enabled = false
						end
					end)()
				elseif ba == "Shot" then
					so(144884872, b4, .9, 1)
				end;
				if b5 ~= 0 then
					BodyVel(b4, b5)
				end;
				if b9 == true then
					b4.CFrame = b4.CFrame * CFrame.Angles(math.rad(-90), 0, 0)
					b4.RotVelocity = Vector3.new(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
				end
			end
		end
	end;
	function MagnitudeDmg(a5, bk, b7, b8, b5, b9, ba, bb)
	end;
	function CamShake(a5, bk, b8, bl)
	end;
	function puncheff(a5)
		if a5.Parent:FindFirstChild("DebounceHit") == nil then
			so(386946017, a5, math.random(80, 120) / 100, 1)
			Effects.Sphere(a5.CFrame, Vector3.new(1, 1, 1), Vector3.new(1, 1, 1), Vector3.new(.1, .1, .1), "Neon", "White", false, .1)
		end
	end;
	function slasheff(a5)
		if a5.Parent:FindFirstChild("DebounceHit") == nil then
			local bm = math.random(1, 3)
			so(444667859, a5, 1, 1)
			Effects.Sphere(a5.CFrame * CFrame.Angles(math.random(0, 360), math.random(0, 360), math.random(0, 360)), Vector3.new(.5, .5, .5), Vector3.new(1, 0, 1), Vector3.new(-.1, 5, -.1), "Neon", "White", false, .1)
			CamShake(a5, 3, .3, .5)
		end
	end;
	local bn = Instance.new("Sound", h)
	bn.Name = "mus"
	bn.SoundId = "rbxassetid://1205101253"
	bn.Looped = true;
	bn.Volume = 1;
	bn:Play()
	local bo = game.Players.LocalPlayer.Character['White SS'].Handle;
	local bp = Knife;
	bo:BreakJoints()
	local bq = Instance.new("Weld", bo)
	bq.Part0 = bp;
	bq.Part1 = bo;
	bq.C0 = CFrame.new(0, 0, 0.1) * CFrame.Angles(math.rad(135), math.rad(0), 0)
	local br = game.Players.LocalPlayer.Character['Meshes/RainbowSniperAccessory'].Handle;
	br:BreakJoints()
	local bs = Instance.new("Weld", br)
	bs.Part0 = SniperH;
	bs.Part1 = br;
	bs.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(90), math.rad(-90), math.rad(45))
	local bt = game.Players.LocalPlayer.Character['Police K4LAS [Back]'].Handle;
	bt:BreakJoints()
	local bu = Instance.new("Weld", bt)
	bu.Part0 = ShottyH;
	bu.Part1 = bt;
	bu.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-90), 0, math.rad(180))
	local bv = game.Players.LocalPlayer.Character['Cartoony Rainbow Mk.50'].Handle;
	bv:BreakJoints()
	local bw = Instance.new("Weld", bv)
	bw.Part0 = PistolH;
	bw.Part1 = bv;
	bw.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
	function pistolrel()
		so(1550642637, e, 1, 1)
		for a0 = 0, 1, .1 do
			swait()
			PlayAnimationFromTable({
				CFrame.new(0, 0, 0, 0.999997139, -4.7385779e-06, -2.86100999e-06, -4.7385779e-06, 1.00000858, -2.86102522e-06, -2.86100999e-06, -2.86102522e-06, 0.999997139),
				CFrame.new(-1.46538582e-06, 1.54692137, -0.209853828, 0.999997139, -3.46518846e-06, -4.29317652e-06, -4.7385779e-06, 0.939701736, 0.342020184, -2.86100999e-06, -0.342021644, 0.939689159),
				CFrame.new(0.854522765, 0.222398087, -0.774409652, 0.642788053, 0.754401922, 0.133024976, -0.133024052, 0.280929208, -0.950473666, -0.754406512, 0.593246639, 0.280933827),
				CFrame.new(-1.18730974, -0.126011491, 0.160054311, 0.939689338, -0.342021286, -4.37337985e-06, 0.321391821, 0.883031905, 0.342020124, -0.116979986, -0.321394384, 0.939689398),
				CFrame.new(0.500016809, -2.00003767, -8.24034214e-06, 0.866021514, -4.7385779e-06, -0.500001311, -5.50745335e-06, 1.00000858, -1.17754098e-07, 0.499996305, -2.86102522e-06, 0.866024435),
				CFrame.new(-0.499971688, -2.00002766, 5.84125519e-06, 0.939690948, -4.7385779e-06, 0.34201622, -3.47528271e-06, 1.00000858, -4.29806732e-06, -0.342021704, -2.86102522e-06, 0.939689159)
			}, .4, false)
		end;
		for a0 = 0, 1, .1 do
			swait()
			PlayAnimationFromTable({
				CFrame.new(0, 0, 0, 1, -1.52100554e-13, 0, -1.52100554e-13, 1, 0, 0, 0, 1),
				CFrame.new(-2.09808386e-05, 1.54693103, -0.209845006, 1, -2.72848411e-12, 0, -1.52100554e-13, 0.939695656, 0.342012048, 0, -0.342012107, 0.939695597),
				CFrame.new(0.854516387, 0.222410649, -0.774412334, 0.642794192, 0.754400432, 0.133024991, -0.133015573, 0.280934572, -0.950464487, -0.754402101, 0.593258619, 0.280930132),
				CFrame.new(-0.694014966, -0.00153057277, -0.320706695, 0.178141281, -0.439670682, 0.880315483, 0.965236425, 0.251975238, -0.0694777295, -0.191270396, 0.862089396, 0.469273359),
				CFrame.new(0.500024974, -2.00003481, -2.33650208e-05, 0.866023839, 1.13859137e-07, -0.500002801, -5.56927262e-06, 1, -9.41847611e-06, 0.500002801, 1.09412758e-05, 0.866023839),
				CFrame.new(-0.499960899, -2.00003171, -2.0518899e-05, 0.939693093, -5.80151482e-06, 0.342018753, 3.82894905e-06, 1, 6.44255488e-06, -0.342018694, -4.74444823e-06, 0.939693213)
			}, .4, false)
		end;
		so(1550643261, e, 1, 1)
		C = 17
	end;
	function shotgunreload()
		for bx = 1, 8 - D do
			for a0 = 0, 1, .25 do
				swait()
				PlayAnimationFromTable({
					CFrame.new(0, 0, 0, 0.999997139, -4.7385779e-06, -2.86100999e-06, -4.7385779e-06, 1.00000858, -2.86102522e-06, -2.86100999e-06, -2.86102522e-06, 0.999997139),
					CFrame.new(-1.46538582e-06, 1.54692137, -0.209853828, 0.999997139, -3.46518846e-06, -4.29317652e-06, -4.7385779e-06, 0.939701736, 0.342020184, -2.86100999e-06, -0.342021644, 0.939689159),
					CFrame.new(0.854522765, 0.222398087, -0.774409652, 0.642788053, 0.754401922, 0.133024976, -0.133024052, 0.280929208, -0.950473666, -0.754406512, 0.593246639, 0.280933827),
					CFrame.new(-1.18730974, -0.126011491, 0.160054311, 0.939689338, -0.342021286, -4.37337985e-06, 0.321391821, 0.883031905, 0.342020124, -0.116979986, -0.321394384, 0.939689398),
					CFrame.new(0.500016809, -2.00003767, -8.24034214e-06, 0.866021514, -4.7385779e-06, -0.500001311, -5.50745335e-06, 1.00000858, -1.17754098e-07, 0.499996305, -2.86102522e-06, 0.866024435),
					CFrame.new(-0.499971688, -2.00002766, 5.84125519e-06, 0.939690948, -4.7385779e-06, 0.34201622, -3.47528271e-06, 1.00000858, -4.29806732e-06, -0.342021704, -2.86102522e-06, 0.939689159)
				}, .4, false)
			end;
			so(254833667, e, 1, 1)
			for a0 = 0, 1, .25 do
				swait()
				PlayAnimationFromTable({
					CFrame.new(0, 0, 0, 1, -1.52100554e-13, 0, -1.52100554e-13, 1, 0, 0, 0, 1),
					CFrame.new(-2.09808386e-05, 1.54693103, -0.209845006, 1, -2.72848411e-12, 0, -1.52100554e-13, 0.939695656, 0.342012048, 0, -0.342012107, 0.939695597),
					CFrame.new(0.854516387, 0.222410649, -0.774412334, 0.642794192, 0.754400432, 0.133024991, -0.133015573, 0.280934572, -0.950464487, -0.754402101, 0.593258619, 0.280930132),
					CFrame.new(-0.694014966, -0.00153057277, -0.320706695, 0.178141281, -0.439670682, 0.880315483, 0.965236425, 0.251975238, -0.0694777295, -0.191270396, 0.862089396, 0.469273359),
					CFrame.new(0.500024974, -2.00003481, -2.33650208e-05, 0.866023839, 1.13859137e-07, -0.500002801, -5.56927262e-06, 1, -9.41847611e-06, 0.500002801, 1.09412758e-05, 0.866023839),
					CFrame.new(-0.499960899, -2.00003171, -2.0518899e-05, 0.939693093, -5.80151482e-06, 0.342018753, 3.82894905e-06, 1, 6.44255488e-06, -0.342018694, -4.74444823e-06, 0.939693213)
				}, .4, false)
			end
		end;
		D = 8
	end;
	function sniperreload()
		so(231020282, e, 1, 1)
		for a0 = 0, 3, .1 do
			swait()
			PlayAnimationFromTable({
				CFrame.new(5.77146693e-07, -1.10000515, 2.49431691e-11, 0.499998987, -5.24676352e-07, -0.866025984, -2.62357275e-07, 1, 4.54372014e-07, 0.866025984, -2.26755021e-11, 0.499998987),
				CFrame.new(-0.0883058012, 1.46577156, -0.0321406126, 0.34201926, -0.321393728, 0.883022606, 0, 0.939692736, 0.342019945, -0.939693034, -0.116977401, 0.321392953),
				CFrame.new(0.6246773, 0.104275584, -0.932195127, 0.383021295, 0.866025984, -0.321393371, -0.642788053, 0, -0.76604414, -0.663414121, 0.499998987, 0.556671143),
				CFrame.new(-0.937001705, -0.262758374, 0.235416457, 0.709746599, -0.562669337, 0.423866868, 0.563250303, 0.814636171, 0.138264596, -0.423094451, 0.140610322, 0.895108819),
				CFrame.new(0.951329529, -1.22445107, 0.145094752, 0.499998987, -0.866025984, 0, 0, 0, 1, -0.866025984, -0.499998987, 0),
				CFrame.new(-0.75982517, -0.899992943, -0.150008053, 0.499998987, 0, 0.866025984, 0, 1, 0, -0.866025984, 0, 0.499998987)
			}, .1, false)
		end;
		so(293309896, e, 1, 1)
		E = 10
	end;
	function switchweps(by)
		m = true;
		c.WalkSpeed = 1;
		if A == "Knife" then
			for a0 = 0, 1, .1 do
				swait()
				PlayAnimationFromTable({
					CFrame.new(0, 0, 0, 1.00000417, 1.0153105e-09, 1.01863407e-10, 1.0153105e-09, 1.00000417, 1.01863407e-10, 1.01863407e-10, 1.01863407e-10, 1),
					CFrame.new(-0.0347477943, 1.432706, -0.1850788, 0.984809697, -6.51056325e-07, 0.173648879, -0.0593907498, 0.939694762, 0.336824596, -0.163176462, -0.342019856, 0.925416648),
					CFrame.new(0.293174297, -0.354033977, -0.9000144, 0.383022904, 0.908679962, 0.166127622, -0.663413048, 0.395739228, -0.635041595, -0.642790139, 0.133023694, 0.754404128),
					CFrame.new(-1.20950091, -0.132228643, 0.260999858, 0.939694703, -0.342020631, -3.71568603e-07, 0.321394295, 0.883023918, 0.342021734, -0.116977692, -0.321394831, 0.939692318),
					CFrame.new(0.50006038, -2.00010228, 3.47271562e-05, 0.984809756, 6.4061237e-07, -0.17364867, -7.06446372e-07, 1.00000215, -3.23256245e-07, 0.173648313, 4.41126758e-07, 0.984807789),
					CFrame.new(-0.499968469, -2.000103, -3.59266996e-05, 0.984809935, -9.64528013e-08, 0.173648283, 1.53979272e-07, 1.00000215, -3.1181844e-07, -0.17364791, 3.33922799e-07, 0.984807909)
				}, .3, false)
			end;
			so(211134014, Knife, 1, 1)
		elseif A == "Pistol" then
			for a0 = 0, 1, .1 do
				swait()
				PlayAnimationFromTable({
					CFrame.new(0, 0, 0, 1.00000489, -4.41247039e-12, 1.16415322e-10, -4.41247039e-12, 1.00000489, 1.16415322e-10, 1.16415322e-10, 1.16415322e-10, 1),
					CFrame.new(-2.32979655e-05, 1.50008512, -1.26212835e-05, 0.939695001, 2.70047167e-08, -0.342020929, 0.0593913868, 0.984810174, 0.163176581, 0.336824089, -0.173648462, 0.925416589),
					CFrame.new(1.28574872, -0.0637521744, -7.64642391e-06, 0.984810054, 0.173648909, -7.22357072e-08, -0.173648909, 0.984810114, -1.7262355e-06, -2.28523277e-07, 1.71268766e-06, 1),
					CFrame.new(-1.61959648, 0.275078326, 0.00631473958, 0.939695179, 0.342020661, 1.46635284e-06, -0.321394771, 0.883024096, 0.342021495, 0.116976559, -0.321394831, 0.939692557),
					CFrame.new(0.500071108, -2.00013995, 2.2888009e-05, 1.00000489, -4.41247039e-12, 1.16415322e-10, -4.41247039e-12, 1.00000489, 1.16415322e-10, 1.16415322e-10, 1.16415322e-10, 1),
					CFrame.new(-0.499975741, -2.00013947, -5.34060528e-05, 1.00000489, -4.41247039e-12, 1.16415322e-10, -4.41247039e-12, 1.00000489, 1.16415322e-10, 1.16415322e-10, 1.16415322e-10, 1)
				}, .3, false)
			end
		elseif A == "Shotgun" then
			for a0 = 0, 1, .1 do
				swait()
				PlayAnimationFromTable({
					CFrame.new(3.13278833e-05, -0.0192397144, -0.170645922, 1.00000191, 3.41483101e-05, -4.71123058e-05, -2.54476363e-05, 0.984809697, 0.173648506, 5.23263298e-05, -0.173648193, 0.984807849),
					CFrame.new(0.049214907, 1.48270142, -0.0852823704, 0.866024673, 0.0868258402, -0.492405146, -1.95205212e-06, 0.984807909, 0.173647866, 0.500001609, -0.15038231, 0.852867961),
					CFrame.new(1.50005758, 0.0683976784, 0.187952459, 1.00000012, -5.00145688e-07, 8.65955371e-07, 1.73811713e-07, 0.939692736, 0.342019975, -9.84779035e-07, -0.342020005, 0.939692736),
					CFrame.new(-1.50004637, 0.0683947429, -0.187911183, 1.00000012, 3.46981324e-07, 1.96967449e-06, 3.47630703e-07, 0.939692557, -0.34202069, -1.96955807e-06, 0.34202069, 0.939692557),
					CFrame.new(0.500083208, -1.98039222, -0.175920665, 1.00000191, -2.54476363e-05, 5.23263298e-05, 3.41483101e-05, 0.984809697, -0.173648193, -4.71123058e-05, 0.173648506, 0.984807849),
					CFrame.new(-0.499945432, -1.98041487, -0.175941259, 1.00000191, -2.54476363e-05, 5.23263298e-05, 3.41483101e-05, 0.984809697, -0.173648193, -4.71123058e-05, 0.173648506, 0.984807849)
				}, .3, false)
			end
		elseif A == "Sniper" then
			for a0 = 0, 1, .1 do
				swait()
				PlayAnimationFromTable({
					CFrame.new(0, 0, 0, 1.00000012, -4.51194637e-12, 0, -4.51194637e-12, 1.00000012, 0, 0, 0, 1),
					CFrame.new(-2.2309232e-05, 1.50007844, -7.43056899e-06, 0.866025925, -3.86730449e-07, -0.499999285, 9.83127393e-08, 1.00000012, -6.03191438e-07, 0.499999285, 4.73228283e-07, 0.866025925),
					CFrame.new(1.41953111, 0.142448068, 0.525516391, 0.470114946, -0.170514092, 0.865977585, -0.478125989, -0.8739236, 0.0874825567, 0.741881073, -0.455173224, -0.492371738),
					CFrame.new(-1.57326913, 0.273198128, 2.96527305e-05, 0.866025627, 0.499999672, -7.68020982e-07, -0.499999672, 0.866025686, -1.25718361e-06, 3.65398591e-08, 1.47275568e-06, 1),
					CFrame.new(0.500061095, -2.00012088, 2.28881836e-05, 1.00000012, -4.51194637e-12, 0, -4.51194637e-12, 1.00000012, 0, 0, 0, 1),
					CFrame.new(-0.499973357, -2.0001204, -5.34057617e-05, 1.00000012, -4.51194637e-12, 0, -4.51194637e-12, 1.00000012, 0, 0, 0, 1)
				}, .3, false)
			end
		end;
		bs.Part0 = SniperH;
		bs.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(90), math.rad(-90), math.rad(45))
		bu.Part0 = ShottyH;
		bu.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-90), 0, math.rad(180))
		bw.Part0 = PistolH;
		bw.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
		Knife.Transparency = 1;
		PistolPart.Transparency = 1;
		ShottyPart.Transparency = 1;
		SniperPart.Transparency = 1;
		KnifeH.Transparency = 0;
		PistolH.Transparency = 0;
		ShottyH.Transparency = 0;
		SniperH.Transparency = 0;
		az.TextColor3 = Color3.new(.3, .3, .3)
		aA.TextColor3 = Color3.new(.3, .3, .3)
		aB.TextColor3 = Color3.new(.3, .3, .3)
		aC.TextColor3 = Color3.new(.3, .3, .3)
		au.ImageColor3 = Color3.new(.3, .3, .3)
		av.ImageColor3 = Color3.new(.3, .3, .3)
		aw.ImageColor3 = Color3.new(.3, .3, .3)
		ax.ImageColor3 = Color3.new(.3, .3, .3)
		if A == by then
			for a0 = 0, 1, .1 do
				swait()
				PlayAnimationFromTable({
					CFrame.new(0, 0, 0, 1.00000417, 1.0153105e-09, 1.01863407e-10, 1.0153105e-09, 1.00000417, 1.01863407e-10, 1.01863407e-10, 1.01863407e-10, 1),
					CFrame.new(-0.0347477943, 1.432706, -0.1850788, 0.984809697, -6.51056325e-07, 0.173648879, -0.0593907498, 0.939694762, 0.336824596, -0.163176462, -0.342019856, 0.925416648),
					CFrame.new(0.293174297, -0.354033977, -0.9000144, 0.383022904, 0.908679962, 0.166127622, -0.663413048, 0.395739228, -0.635041595, -0.642790139, 0.133023694, 0.754404128),
					CFrame.new(-1.20950091, -0.132228643, 0.260999858, 0.939694703, -0.342020631, -3.71568603e-07, 0.321394295, 0.883023918, 0.342021734, -0.116977692, -0.321394831, 0.939692318),
					CFrame.new(0.50006038, -2.00010228, 3.47271562e-05, 0.984809756, 6.4061237e-07, -0.17364867, -7.06446372e-07, 1.00000215, -3.23256245e-07, 0.173648313, 4.41126758e-07, 0.984807789),
					CFrame.new(-0.499968469, -2.000103, -3.59266996e-05, 0.984809935, -9.64528013e-08, 0.173648283, 1.53979272e-07, 1.00000215, -3.1181844e-07, -0.17364791, 3.33922799e-07, 0.984807909)
				}, .3, false)
			end;
			so(211059653, Knife, 1, 1)
			KnifeH.Transparency = 1;
			Knife.Transparency = 0;
			az.TextColor3 = Color3.new(1, 1, 1)
			au.ImageColor3 = Color3.new(1, 1, 1)
			A = "Knife"
		elseif by == "Pistol" then
			bw.Part0 = PistolPart;
			bw.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
			for a0 = 0, 1, .1 do
				swait()
				PlayAnimationFromTable({
					CFrame.new(0, 0, 0, 1.00000489, -4.41247039e-12, 1.16415322e-10, -4.41247039e-12, 1.00000489, 1.16415322e-10, 1.16415322e-10, 1.16415322e-10, 1),
					CFrame.new(-2.32979655e-05, 1.50008512, -1.26212835e-05, 0.939695001, 2.70047167e-08, -0.342020929, 0.0593913868, 0.984810174, 0.163176581, 0.336824089, -0.173648462, 0.925416589),
					CFrame.new(1.28574872, -0.0637521744, -7.64642391e-06, 0.984810054, 0.173648909, -7.22357072e-08, -0.173648909, 0.984810114, -1.7262355e-06, -2.28523277e-07, 1.71268766e-06, 1),
					CFrame.new(-1.61959648, 0.275078326, 0.00631473958, 0.939695179, 0.342020661, 1.46635284e-06, -0.321394771, 0.883024096, 0.342021495, 0.116976559, -0.321394831, 0.939692557),
					CFrame.new(0.500071108, -2.00013995, 2.2888009e-05, 1.00000489, -4.41247039e-12, 1.16415322e-10, -4.41247039e-12, 1.00000489, 1.16415322e-10, 1.16415322e-10, 1.16415322e-10, 1),
					CFrame.new(-0.499975741, -2.00013947, -5.34060528e-05, 1.00000489, -4.41247039e-12, 1.16415322e-10, -4.41247039e-12, 1.00000489, 1.16415322e-10, 1.16415322e-10, 1.16415322e-10, 1)
				}, .3, false)
			end;
			so(166196557, e, 1, 1)
			PistolH.Transparency = 1;
			PistolPart.Transparency = 0;
			aA.TextColor3 = Color3.new(1, 1, 1)
			av.ImageColor3 = Color3.new(1, 1, 1)
			A = "Pistol"
			if C <= 0 then
				pistolrel()
			end
		elseif by == "Shotgun" then
			bu.Part0 = ShottyPart;
			bu.C0 = CFrame.new(0, -0.1, -0.2) * CFrame.Angles(math.rad(-90), 0, math.rad(180))
			for a0 = 0, 1, .1 do
				swait()
				PlayAnimationFromTable({
					CFrame.new(3.13278833e-05, -0.0192397144, -0.170645922, 1.00000191, 3.41483101e-05, -4.71123058e-05, -2.54476363e-05, 0.984809697, 0.173648506, 5.23263298e-05, -0.173648193, 0.984807849),
					CFrame.new(0.049214907, 1.48270142, -0.0852823704, 0.866024673, 0.0868258402, -0.492405146, -1.95205212e-06, 0.984807909, 0.173647866, 0.500001609, -0.15038231, 0.852867961),
					CFrame.new(1.50005758, 0.0683976784, 0.187952459, 1.00000012, -5.00145688e-07, 8.65955371e-07, 1.73811713e-07, 0.939692736, 0.342019975, -9.84779035e-07, -0.342020005, 0.939692736),
					CFrame.new(-1.50004637, 0.0683947429, -0.187911183, 1.00000012, 3.46981324e-07, 1.96967449e-06, 3.47630703e-07, 0.939692557, -0.34202069, -1.96955807e-06, 0.34202069, 0.939692557),
					CFrame.new(0.500083208, -1.98039222, -0.175920665, 1.00000191, -2.54476363e-05, 5.23263298e-05, 3.41483101e-05, 0.984809697, -0.173648193, -4.71123058e-05, 0.173648506, 0.984807849),
					CFrame.new(-0.499945432, -1.98041487, -0.175941259, 1.00000191, -2.54476363e-05, 5.23263298e-05, 3.41483101e-05, 0.984809697, -0.173648193, -4.71123058e-05, 0.173648506, 0.984807849)
				}, .3, false)
			end;
			so(255061173, e, 1, 1)
			ShottyH.Transparency = 1;
			ShottyPart.Transparency = 0;
			aB.TextColor3 = Color3.new(1, 1, 1)
			aw.ImageColor3 = Color3.new(1, 1, 1)
			A = "Shotgun"
		elseif by == "Sniper" then
			bs.Part0 = SniperPart;
			bs.C0 = CFrame.new(0, -0.2, 0) * CFrame.Angles(math.rad(90), math.rad(-92), math.rad(45))
			for a0 = 0, 1, .1 do
				swait()
				PlayAnimationFromTable({
					CFrame.new(0, 0, 0, 1.00000012, -4.51194637e-12, 0, -4.51194637e-12, 1.00000012, 0, 0, 0, 1),
					CFrame.new(-2.2309232e-05, 1.50007844, -7.43056899e-06, 0.866025925, -3.86730449e-07, -0.499999285, 9.83127393e-08, 1.00000012, -6.03191438e-07, 0.499999285, 4.73228283e-07, 0.866025925),
					CFrame.new(1.41953111, 0.142448068, 0.525516391, 0.470114946, -0.170514092, 0.865977585, -0.478125989, -0.8739236, 0.0874825567, 0.741881073, -0.455173224, -0.492371738),
					CFrame.new(-1.57326913, 0.273198128, 2.96527305e-05, 0.866025627, 0.499999672, -7.68020982e-07, -0.499999672, 0.866025686, -1.25718361e-06, 3.65398591e-08, 1.47275568e-06, 1),
					CFrame.new(0.500061095, -2.00012088, 2.28881836e-05, 1.00000012, -4.51194637e-12, 0, -4.51194637e-12, 1.00000012, 0, 0, 0, 1),
					CFrame.new(-0.499973357, -2.0001204, -5.34057617e-05, 1.00000012, -4.51194637e-12, 0, -4.51194637e-12, 1.00000012, 0, 0, 0, 1)
				}, .3, false)
			end;
			so(1498950813, e, 1, 1)
			SniperH.Transparency = 1;
			SniperPart.Transparency = 0;
			aC.TextColor3 = Color3.new(1, 1, 1)
			ax.ImageColor3 = Color3.new(1, 1, 1)
			A = "Sniper"
		end;
		c.WalkSpeed = 16;
		m = false
	end;
	function knifestab()
		m = true;
		c.WalkSpeed = 16;
		for a0 = 0, 1, .25 do
			swait()
			PlayAnimationFromTable({
				CFrame.new(-0.000117930649, -2.16348841e-08, -7.90364793e-05, 0.64278698, -0.00012647656, 0.766044974, 1.61708813e-05, 1, 0.000151534361, -0.766044974, -8.49460121e-05, 0.64278698),
				CFrame.new(4.01744073e-05, 1.50000286, 0.000353095587, 0.64278698, 1.61708813e-05, -0.766044974, -0.00012647656, 1, -8.49460121e-05, 0.766044974, 0.000151534361, 0.64278698),
				CFrame.new(0.466985971, 1.22963774, -0.639021218, -6.45965338e-06, 0.866024137, 0.500002265, 0.984807491, -0.0868200287, 0.150388524, 0.173650324, 0.492406905, -0.852866471),
				CFrame.new(-1.50000262, 0.0634034351, 0.309811026, 1, 1.28149986e-06, -8.22544098e-06, 2.99929525e-06, 0.866025448, 0.5, 7.77840614e-06, -0.49999997, 0.866025388),
				CFrame.new(0.50001657, -2.00001597, 1.37835741e-05, 0.64278686, 4.54951078e-07, -0.766045094, -8.69269741e-07, 1, -1.35521987e-07, 0.766045094, 7.53010681e-07, 0.64278686),
				CFrame.new(-0.499961853, -2.00001669, -1.52587891e-05, 1, 1.45519152e-11, 0, 1.45519152e-11, 1, 0, 0, 0, 1)
			}, .4, false)
		end;
		c.WalkSpeed = 2;
		ap.Enabled = true;
		so(200632136, Knife, math.random(9, 11) / 10, 1)
		for a0 = 0, 1, .2 do
			swait()
			PlayAnimationFromTable({
				CFrame.new(6.73532486e-05, -0.0142026246, -1.91379452, 0.642823815, -8.42338923e-05, 0.766014099, -0.262003213, 0.939663291, 0.21997124, -0.719813824, -0.342100888, 0.604015827),
				CFrame.new(5.23869894e-05, 1.50000405, 0.000345003995, 0.642786682, 1.60187483e-05, -0.766045332, -0.000126790037, 1.00000012, -8.55028629e-05, 0.766045213, 0.000152081251, 0.642786682),
				CFrame.new(0.998481274, 1.06966388, -0.439240575, -0.26202774, 0.0297024846, 0.964603126, 0.93969065, -0.219823405, 0.26202932, 0.219825253, 0.975087404, 0.0296886563),
				CFrame.new(-1.49997985, 0.0634022504, 0.309802085, 1, 1.13248825e-06, -8.64267349e-06, 3.35276127e-06, 0.866025805, 0.499999642, 8.10623169e-06, -0.499999642, 0.866025627),
				CFrame.new(0.992708325, -1.73965216, -0.41339314, 0.642790794, -0.262022853, -0.719836116, 3.37498095e-05, 0.939692318, -0.342021197, 0.766041756, 0.219823748, 0.604034364),
				CFrame.new(-0.756015062, -2.00166965, 0.0843268856, 0.642790794, 0.261980176, -0.719851673, 3.37463644e-05, 0.939693332, 0.342018634, 0.766041756, -0.219870716, 0.604017258)
			}, .5, false)
			MagnitudeDmg(Knife, 1.5, 100, 0, k.CFrame.lookVector * 5, false, "Sharp", .5)
		end;
		c.WalkSpeed = 16;
		ap.Enabled = false;
		m = false
	end;
	function wepknifestab()
		m = true;
		c.WalkSpeed = 2;
		for a0 = 0, 1, .2 do
			swait()
			PlayAnimationFromTable({
				CFrame.new(0.000179143899, 4.94844912e-08, -0.000147477331, 0.500000775, 1.22923609e-06, -0.86602509, -0.000292493496, 1.00000012, -0.000167452119, 0.866025031, 0.000337032834, 0.500000775),
				CFrame.new(-0.000420931523, 1.50010991, -7.43984856e-06, 0.500000775, -0.000292493496, 0.866025031, 1.22923609e-06, 1.00000012, 0.000337032834, -0.86602509, -0.000167452119, 0.500000775),
				CFrame.new(0.839951992, 0.256004274, -0.958486319, 0.499996692, 0.813799739, 0.2961981, 4.75931301e-06, 0.342016816, -0.939693928, -0.866027415, 0.469845295, 0.171003401),
				CFrame.new(-1.22089827, -0.164978445, -0.0866824239, 0.983905554, -0.138054684, 0.113450736, 0.176127508, 0.856396437, -0.485349834, -0.0301539302, 0.497520208, 0.866928339),
				CFrame.new(0.500076354, -2.00016046, 1.52737084e-05, 1.00000012, -1.45519152e-11, 2.98023224e-08, -1.45519152e-11, 1.00000012, -7.27595761e-12, 2.98023224e-08, -7.27595761e-12, 1.00000012),
				CFrame.new(-0.499987543, -2.00015903, -5.56111336e-05, 0.499999285, 9.37507139e-07, 0.866025865, -1.2402096e-06, 1.00000012, -3.66519089e-07, -0.866025925, -8.90795491e-07, 0.499999374)
			}, .5, false)
		end;
		so(211059653, Knife2, 1, 1)
		Knife2.Transparency = 0;
		KnifeH.Transparency = 1;
		for a0 = 0, 1, .1 do
			swait()
			PlayAnimationFromTable({
				CFrame.new(0.000175330031, 1.00539501e-06, -0.000154084992, 0.500003099, 1.22933841e-06, -0.866029263, -0.000292495621, 1.00000453, -0.000167453458, 0.866029143, 0.000337033416, 0.500003219),
				CFrame.new(-0.00041242165, 1.50012219, -6.93052425e-06, 0.500003099, -0.000292495621, 0.866029143, 1.22933841e-06, 1.00000453, 0.000337033416, -0.866029263, -0.000167453458, 0.500003219),
				CFrame.new(1.09288597, 0.364121079, -0.802504063, 0.748180747, 0.593714058, 0.296199232, 0.116981708, 0.321389914, -0.939695835, -0.653104663, 0.737710655, 0.171003729),
				CFrame.new(-0.688675284, 1.32965851, -0.712965548, 0.334458649, -0.800666928, -0.49706617, -0.926752567, -0.375185549, -0.0192363095, -0.171089798, 0.46709004, -0.867502213),
				CFrame.new(0.500086367, -2.00017858, 1.52748289e-05, 1.00000489, -7.13043846e-10, 2.98023224e-08, -7.13043846e-10, 1.00000441, -5.31144906e-10, 2.98023224e-08, -5.31144906e-10, 1.00000489),
				CFrame.new(-0.499991834, -2.00017858, -5.22881746e-05, 0.500001609, 9.36794095e-07, 0.866030037, -1.24011513e-06, 1.00000441, -3.673631e-07, -0.866030157, -8.91312084e-07, 0.500001788)
			}, .5, false)
		end;
		aq.Enabled = true;
		so(200632136, Knife2, math.random(9, 11) / 10, 1)
		for a0 = 0, 1, .1 do
			swait()
			PlayAnimationFromTable({
				CFrame.new(-2.50339508e-06, -0.116524018, -2.23838973, 0.342018872, -5.0964772e-08, -0.939693093, 0.321393877, 0.939692676, 0.11697726, 0.883022726, -0.342020035, 0.321392655),
				CFrame.new(-6.99047723e-06, 1.49998283, -2.62057279e-06, 0.342018872, 1.1920929e-07, 0.939693093, -5.0964772e-08, 1, -1.49011612e-07, -0.939693093, -7.4505806e-09, 0.342018902),
				CFrame.new(1.22636616, 0.263386577, -0.809811354, 0.939690471, 0.342026293, 1.16229057e-06, -0.0593909174, 0.163175166, -0.984808028, -0.336830378, 0.925414443, 0.173647419),
				CFrame.new(-1.32934356, 1.10000336, -0.700607181, -1.1920929e-07, 0.342020571, -0.939692616, -1, -4.47034836e-08, 1.49011612e-07, 7.4505806e-09, 0.939692497, 0.342020541),
				CFrame.new(0.977364421, -1.93956006, -0.0584065914, 0.854759812, -0.518661916, -0.0193820298, 0.5132581, 0.850225329, -0.116975099, 0.0771495849, 0.0900376588, 0.99294579),
				CFrame.new(-0.972516656, -1.19701695, -0.393972486, 0.183487743, 0.321393877, 0.92899859, 0.0593910404, 0.939692676, -0.336824, -0.981226325, 0.11697726, 0.153334215)
			}, .4, false)
			MagnitudeDmg(Knife2, 1.5, 100, 0, k.CFrame.lookVector * 5, false, "Sharp", .5)
		end;
		for a0 = 0, 1, .2 do
			swait()
			PlayAnimationFromTable({
				CFrame.new(0.000175330031, 1.00539501e-06, -0.000154084992, 0.500003099, 1.22933841e-06, -0.866029263, -0.000292495621, 1.00000453, -0.000167453458, 0.866029143, 0.000337033416, 0.500003219),
				CFrame.new(-0.00041242165, 1.50012219, -6.93052425e-06, 0.500003099, -0.000292495621, 0.866029143, 1.22933841e-06, 1.00000453, 0.000337033416, -0.866029263, -0.000167453458, 0.500003219),
				CFrame.new(1.09288597, 0.364121079, -0.802504063, 0.748180747, 0.593714058, 0.296199232, 0.116981708, 0.321389914, -0.939695835, -0.653104663, 0.737710655, 0.171003729),
				CFrame.new(-0.688675284, 1.32965851, -0.712965548, 0.334458649, -0.800666928, -0.49706617, -0.926752567, -0.375185549, -0.0192363095, -0.171089798, 0.46709004, -0.867502213),
				CFrame.new(0.500086367, -2.00017858, 1.52748289e-05, 1.00000489, -7.13043846e-10, 2.98023224e-08, -7.13043846e-10, 1.00000441, -5.31144906e-10, 2.98023224e-08, -5.31144906e-10, 1.00000489),
				CFrame.new(-0.499991834, -2.00017858, -5.22881746e-05, 0.500001609, 9.36794095e-07, 0.866030037, -1.24011513e-06, 1.00000441, -3.673631e-07, -0.866030157, -8.91312084e-07, 0.500001788)
			}, .5, false)
		end;
		for a0 = 0, 1, .2 do
			swait()
			PlayAnimationFromTable({
				CFrame.new(0.000179143899, 4.94844912e-08, -0.000147477331, 0.500000775, 1.22923609e-06, -0.86602509, -0.000292493496, 1.00000012, -0.000167452119, 0.866025031, 0.000337032834, 0.500000775),
				CFrame.new(-0.000420931523, 1.50010991, -7.43984856e-06, 0.500000775, -0.000292493496, 0.866025031, 1.22923609e-06, 1.00000012, 0.000337032834, -0.86602509, -0.000167452119, 0.500000775),
				CFrame.new(0.839951992, 0.256004274, -0.958486319, 0.499996692, 0.813799739, 0.2961981, 4.75931301e-06, 0.342016816, -0.939693928, -0.866027415, 0.469845295, 0.171003401),
				CFrame.new(-1.22089827, -0.164978445, -0.0866824239, 0.983905554, -0.138054684, 0.113450736, 0.176127508, 0.856396437, -0.485349834, -0.0301539302, 0.497520208, 0.866928339),
				CFrame.new(0.500076354, -2.00016046, 1.52737084e-05, 1.00000012, -1.45519152e-11, 2.98023224e-08, -1.45519152e-11, 1.00000012, -7.27595761e-12, 2.98023224e-08, -7.27595761e-12, 1.00000012),
				CFrame.new(-0.499987543, -2.00015903, -5.56111336e-05, 0.499999285, 9.37507139e-07, 0.866025865, -1.2402096e-06, 1.00000012, -3.66519089e-07, -0.866025925, -8.90795491e-07, 0.499999374)
			}, .5, false)
		end;
		so(211134014, Knife2, 1, 1)
		Knife2.Transparency = 1;
		KnifeH.Transparency = 0;
		c.WalkSpeed = 16;
		aq.Enabled = false;
		m = false
	end;
	function pistolshoot()
		m = true;
		c.WalkSpeed = 2;
		CamShake(e, 3, .2, .3)
		getNearestGuy()
		local a3, bz = rayCast(PistolF.Position, a2 + Vector3.new(math.random(-10, 10) / 10, math.random(-10, 10) / 10, math.random(-10, 10) / 10) - PistolF.Position, 200, b)
		local bA = Instance.new("Part", j)
		bA.Anchored = true;
		bA.Size = Vector3.new()
		bA.Transparency = 1;
		bA.CanCollide = false;
		bA.CFrame = CFrame.new(bz)
		Effects.Meshed(PistolF.CFrame * CFrame.Angles(math.rad(math.random(0, 360)), math.rad(math.random(0, 360)), math.rad(math.random(0, 360))), Vector3.new(), Vector3.new(.0025, .0001, .0025), "", "rbxassetid://662585058", "", 0, false, .1)
		Effects.Block(PistolF.CFrame, Vector3.new(.4, .4, .4), Vector3.new(), Vector3.new(.3, .3, .3), "Neon", "Bright yellow", true, false, .1)
		Effects.Block(PistolF.CFrame, Vector3.new(.4, .4, .4), Vector3.new(), Vector3.new(.6, .6, .6), "Neon", "Bright yellow", true, false, .1)
		Effects.Block(CFrame.new(bz), Vector3.new(.4, .4, .4), Vector3.new(), Vector3.new(.1, .1, .1), "Neon", "Bright yellow", true, false, .1)
		Effects.Block(CFrame.new((PistolF.Position + bz) / 2, bz), Vector3.new(.2, .2, (PistolF.Position - bz).magnitude), Vector3.new(0, 0, 1), Vector3.new(.1, .1, 0), "Neon", "Bright yellow", false, false, .1)
		MagnitudeDmg(bA, 3, 18, 2, k.CFrame.lookVector * 2, false, "Shot", .1)
		so(1583819337, PistolPart, math.random(90, 110) / 100, 2)
		local bB = Instance.new("Part", EffectModel)
		bB.Size = Vector3.new(0, 0, .3)
		bB.CFrame = PistolPart.CFrame * CFrame.new(0, .465, .5)
		bB.Velocity = k.CFrame.rightVector * 10 + Vector3.new(0, 5, 0)
		local bC = Instance.new("SpecialMesh", bB)
		bC.MeshId = "rbxassetid://94295100"
		bC.TextureId = "rbxassetid://94287792"
		bC.Scale = Vector3.new(3, 3, 3.5)
		coroutine.wrap(function()
			swait(120)
			for a0 = 0, 1, .1 do
				swait()
				bB.Transparency = a0
			end;
			bB:Destroy()
		end)()
		for a0 = 0, 1, .5 do
			swait()
			PlayAnimationFromTable({
				CFrame.new(-6.51180744e-06, -1.04836988e-06, 0.199993119, 0.499999166, -7.89761714e-07, 0.866025329, 1.24944251e-08, 1.00000143, -9.25385962e-07, -0.866025865, -4.76837158e-07, 0.499998331),
				CFrame.new(-1.63912773e-07, 1.49998271, -1.7285347e-06, 0.49240312, 0.0868238658, -0.866025865, -0.173648998, 0.984809101, -4.76837158e-07, 0.852868617, 0.150382623, 0.499998331),
				CFrame.new(1.5115397, 0.924184561, 0.283434004, 0.157807171, -0.832470179, 0.531121731, 0.368540525, -0.449346781, -0.813798606, 0.916118145, 0.324162781, 0.235890016),
				CFrame.new(-1.4999913, -2.68245174e-07, -2.32076964e-05, 0.939692736, 0.342020005, 1.78813934e-07, -0.342020422, 0.939693928, 1.06019513e-06, 1.1920929e-06, -2.65240669e-06, 0.999999046),
				CFrame.new(0.673204184, -2.00000215, -0.100005746, 0.766043723, 1.24944251e-08, -0.642788589, -5.80049061e-07, 1.00000143, -7.07089043e-07, 0.642788231, -9.25385962e-07, 0.766042709),
				CFrame.new(-0.326797545, -2.00000572, -0.0999965966, 1, 1.24944251e-08, 2.08616257e-07, 1.24944251e-08, 1.00000143, -9.25385962e-07, 2.08616257e-07, -9.25385962e-07, 0.999999046)
			}, .5, false)
		end;
		C = C - 1;
		bA:Destroy()
		if C <= 0 then
			pistolrel()
		end;
		for a0 = 0, 1, .5 do
			swait()
			PlayAnimationFromTable({
				CFrame.new(0, 0, 0, 0.499999166, -7.89761714e-07, 0.866025329, 1.24944251e-08, 1.00000143, -9.25385962e-07, -0.866025865, -4.76837158e-07, 0.499998331),
				CFrame.new(1.41561031e-06, 1.49998701, 1.01327896e-06, 0.49240312, 0.0868238658, -0.866025865, -0.173648998, 0.984809101, -4.76837158e-07, 0.852868617, 0.150382623, 0.499998331),
				CFrame.new(1.67497301, 0.733016193, 0.303117812, 0.433011949, -0.866025865, 0.249999687, 0.500000238, -4.76837158e-07, -0.866026938, 0.749999404, 0.499998331, 0.433013648),
				CFrame.new(-1.49999261, -3.8444914e-06, 7.30986267e-06, 0.939692736, 0.342020005, 1.78813934e-07, -0.342020422, 0.939693928, 1.06019513e-06, 1.1920929e-06, -2.65240669e-06, 0.999999046),
				CFrame.new(0.499994516, -2.00000048, 1.52587891e-05, 0.766043723, 1.24944251e-08, -0.642788589, -5.80049061e-07, 1.00000143, -7.07089043e-07, 0.642788231, -9.25385962e-07, 0.766042709),
				CFrame.new(-0.499984771, -1.99999857, 9.37584991e-06, 1, 1.24944251e-08, 2.08616257e-07, 1.24944251e-08, 1.00000143, -9.25385962e-07, 2.08616257e-07, -9.25385962e-07, 0.999999046)
			}, .5, false)
		end;
		c.WalkSpeed = 16;
		m = false
	end;
	function shotgunshoot()
		m = true;
		c.WalkSpeed = 2;
		Effects.Block(ShotgunF.CFrame, Vector3.new(.4, .4, .4), Vector3.new(), Vector3.new(.4, .4, .4), "Neon", "Bright yellow", true, false, .1)
		Effects.Block(ShotgunF.CFrame, Vector3.new(.4, .4, .4), Vector3.new(), Vector3.new(.7, .7, .7), "Neon", "Bright yellow", true, false, .1)
		CamShake(e, 3, .4, .3)
		for a0 = 1, 2 do
			Effects.Meshed(ShotgunF.CFrame * CFrame.Angles(math.rad(math.random(0, 360)), math.rad(math.random(0, 360)), math.rad(math.random(0, 360))), Vector3.new(), Vector3.new(.003, .0001, .003), "", "rbxassetid://662585058", "", 0, false, .1)
		end;
		getNearestGuy()
		local bD = a2;
		for bx = 1, 5 do
			local a3, bz = rayCast(ShotgunF.Position, bD + Vector3.new(math.random(-20, 20) / 10, math.random(-20, 20) / 10, math.random(-20, 20) / 10) - ShotgunF.Position, 50, b)
			local bA = Instance.new("Part", j)
			bA.Anchored = true;
			bA.Size = Vector3.new()
			bA.Transparency = 1;
			bA.CanCollide = false;
			bA.CFrame = CFrame.new(bz)
			Effects.Block(CFrame.new(bz), Vector3.new(.4, .4, .4), Vector3.new(), Vector3.new(.1, .1, .1), "Neon", "Bright yellow", true, false, .1)
			Effects.Block(CFrame.new((ShotgunF.Position + bz) / 2, bz), Vector3.new(.2, .2, (ShotgunF.Position - bz).magnitude), Vector3.new(0, 0, 1), Vector3.new(.1, .1, 0), "Neon", "Bright yellow", false, false, .1)
			MagnitudeDmg(bA, 3, 36, 2, k.CFrame.lookVector * 2, false, "Shot", 0)
			bA:Destroy()
		end;
		so(636319463, ShottyPart, math.random(90, 110) / 100, 2)
		for a0 = 0, 1, .1 do
			swait()
			PlayAnimationFromTable({
				CFrame.new(-0.0426755287, -1.07805381e-05, 0.0753384382, 0.50000298, 4.92750078e-05, -0.86603117, -4.60350348e-05, 1.00000274, 3.5977002e-05, 0.8660326, 2.4223591e-05, 0.499999166),
				CFrame.new(0.0426297933, 1.49998486, -0.0245249029, 0.50000298, -4.60350348e-05, 0.8660326, 4.92750078e-05, 1.00000274, 2.4223591e-05, -0.86603117, 3.5977002e-05, 0.499999166),
				CFrame.new(1.12515163, 0.548250377, -0.496726394, 0.500168204, 0.813741982, -0.296093225, 0.000139903248, -0.342011213, -0.939698875, -0.865935743, 0.469959229, -0.171180338),
				CFrame.new(-1.14305413, 0.864631057, -1.00320852, 0.407486796, 0.113466412, 0.906143069, 0.682771206, -0.696794927, -0.219786346, 0.606456578, 0.708240092, -0.361407727),
				CFrame.new(0.413448215, -1.9999907, -0.0500168577, 1.00000775, -2.18424248e-07, -1.28149986e-06, -2.18424248e-07, 1.00000286, 2.70940654e-06, -1.28149986e-06, 2.70940654e-06, 1.00000453),
				CFrame.new(-0.586602032, -1.99999666, -0.0500271767, 0.500002861, -2.56561325e-05, 0.86603272, 2.89498093e-05, 1.00000286, 1.24069702e-05, -0.866031229, 2.43783397e-05, 0.499998987)
			}, .4, false)
		end;
		so(1676656467, e, 1, 1)
		for a0 = 0, 1, .1 do
			swait()
			PlayAnimationFromTable({
				CFrame.new(-0.0426480025, 2.5987938e-06, -0.0246586762, 0.500004113, 5.21446345e-05, -0.866026759, -3.8554077e-05, 0.999998689, 3.87465407e-05, 0.866027117, 8.27422991e-06, 0.499998033),
				CFrame.new(0.0426570028, 1.49997389, -0.0245179161, 0.500004113, -3.8554077e-05, 0.866027117, 5.21446345e-05, 0.999998689, 8.27422991e-06, -0.866026759, 3.87465407e-05, 0.499998033),
				CFrame.new(1.26703095, 0.386247098, -0.414777607, 0.500184178, 0.749944627, -0.432900131, 0.00013010815, -0.499997675, -0.866026044, -0.865921021, 0.433114439, -0.250186145),
				CFrame.new(-1.04589081, 0.850564957, -0.914023519, -0.0296139717, -0.375769794, 0.926241755, 0.528010428, -0.792688966, -0.304709554, 0.848720849, 0.480043083, 0.221882805),
				CFrame.new(0.500037611, -1.99999917, 2.00857448e-05, 1.00000358, -2.6606067e-06, -2.56299973e-06, -2.6606067e-06, 0.999998689, -1.14691647e-06, -2.56299973e-06, -1.14691647e-06, 1.00000024),
				CFrame.new(-0.500000834, -1.9999944, 5.96046448e-06, 0.500003934, -1.81733503e-05, 0.866027236, 3.18790844e-05, 0.999998748, -3.55727752e-06, -0.866026998, 2.71143635e-05, 0.499997854)
			}, .4, false)
		end;
		local bB = Instance.new("Part", EffectModel)
		bB.Size = Vector3.new(.2, .2, .6)
		bB.CFrame = ShottyPart.CFrame * CFrame.new(0, -.2, .1) * CFrame.Angles(math.rad(-90), 0, 0)
		bB.Velocity = k.CFrame.rightVector * 10 + Vector3.new(0, 5, 0)
		local bC = Instance.new("SpecialMesh", bB)
		bC.MeshId = "rbxassetid://94248124"
		bC.TextureId = "rbxassetid://94219470"
		bC.Scale = Vector3.new(1, 1, 1)
		coroutine.wrap(function()
			swait(120)
			for a0 = 0, 1, .1 do
				swait()
				bB.Transparency = a0
			end;
			bB:Destroy()
		end)()
		D = D - 1;
		if D <= 0 then
			shotgunreload()
		end;
		for a0 = 0, 1, .1 do
			swait()
			PlayAnimationFromTable({
				CFrame.new(-0.04265441, 3.46730985e-06, -0.0246547386, 0.500000179, 5.24776005e-05, -0.866025448, -3.59067635e-05, 1, 3.98650955e-05, 0.866025448, 1.11636218e-05, 0.500000179),
				CFrame.new(0.0426664874, 1.49997485, -0.0245260373, 0.500000179, -3.59067635e-05, 0.866025448, 5.24776005e-05, 1, 1.11636218e-05, -0.866025448, 3.98650955e-05, 0.500000179),
				CFrame.new(1.12514198, 0.548240304, -0.496717662, 0.500165403, 0.813733816, -0.296094865, 0.00014318082, -0.34201628, -0.939694107, -0.865930021, 0.469960093, -0.171181217),
				CFrame.new(-1.14299285, 0.864633799, -1.00319052, 0.407490432, 0.113461196, 0.906133711, 0.68276906, -0.696790278, -0.219794586, 0.606446922, 0.708244324, -0.361403227),
				CFrame.new(0.500045896, -2.00000525, 7.62939635e-06, 1.00000024, 1.45519152e-11, 0, 1.45519152e-11, 1, 0, 0, 0, 1.00000024),
				CFrame.new(-0.500002563, -2.00000548, -8.34465027e-07, 0.5, -1.55070338e-05, 0.866025567, 3.21887746e-05, 1, -6.78202923e-07, -0.866025567, 2.82154051e-05, 0.5)
			}, .4, false)
		end;
		c.WalkSpeed = 16;
		m = false
	end;
	function snipershoot()
		m = true;
		c.WalkSpeed = 1;
		for a0 = 0, 1, .1 do
			swait()
			PlayAnimationFromTable({
				CFrame.new(4.7639071e-07, -1.10001194, -1.51601284e-07, 0.500000477, -4.33079322e-07, -0.866027892, -1.05399764e-07, 1.00000358, 4.57277082e-07, 0.866024017, 1.37818347e-07, 0.499997526),
				CFrame.new(0.167016879, 1.34998727, -0.199010611, 0.556670308, 0.321388304, 0.766046166, -0.500001013, 0.866026938, 6.41028782e-06, -0.663415313, -0.383027822, 0.642783642),
				CFrame.new(0.911282957, 0.475031316, -0.628563344, 0.500000417, 0.866024017, 8.59218545e-08, -3.88375781e-07, 1.37818347e-07, -1.00000358, -0.866027892, 0.499997526, -4.20934384e-07),
				CFrame.new(-1.21131861, 0.352097392, -0.894729018, 0.03015434, 0.171006948, 0.984807253, 0.984811544, -0.17364794, -1.001839e-06, 0.171009108, 0.969847143, -0.173650116),
				CFrame.new(0.951322317, -1.22446108, 0.145102695, 0.500000417, -0.866024017, 1.71279837e-07, 1.1826463e-07, -1.37818347e-07, 1.00000358, -0.866027892, -0.499997526, -1.18554784e-08),
				CFrame.new(-0.759828508, -0.900001526, -0.149999052, 0.500000417, 1.71279837e-07, 0.866024017, 1.1826463e-07, 1.00000358, 1.37818347e-07, -0.866027892, -1.18554784e-08, 0.499997526)
			}, .4, false)
		end;
		getNearestGuy()
		local a3, bz = rayCast(SniperF.Position, a2 + Vector3.new(math.random(-1, 1) / 10, math.random(-1, 1) / 10, math.random(-1, 1) / 10) - SniperF.Position, 2000, b)
		local bA = Instance.new("Part", j)
		bA.Anchored = true;
		bA.Size = Vector3.new()
		bA.Transparency = 1;
		bA.CanCollide = false;
		bA.CFrame = CFrame.new(bz)
		CamShake(e, 3, .5, .3)
		for a0 = 1, 3 do
			Effects.Meshed(SniperF.CFrame * CFrame.Angles(math.rad(math.random(0, 360)), math.rad(math.random(0, 360)), math.rad(math.random(0, 360))), Vector3.new(), Vector3.new(.0035, .0001, .0035), "", "rbxassetid://662585058", "", 0, false, .1)
		end;
		Effects.Block(SniperF.CFrame, Vector3.new(.4, .4, .4), Vector3.new(), Vector3.new(.6, .6, .6), "Neon", "Bright yellow", true, false, .1)
		Effects.Block(SniperF.CFrame, Vector3.new(.4, .4, .4), Vector3.new(), Vector3.new(.8, .8, .8), "Neon", "Bright yellow", true, false, .1)
		Effects.Block(CFrame.new(bz), Vector3.new(.4, .4, .4), Vector3.new(), Vector3.new(.1, .1, .1), "Neon", "Bright yellow", true, false, .1)
		Effects.Block(CFrame.new((SniperF.Position + bz) / 2, bz), Vector3.new(.2, .2, (SniperF.Position - bz).magnitude), Vector3.new(0, 0, 1), Vector3.new(.1, .1, 0), "Neon", "Bright yellow", false, false, .1)
		MagnitudeDmg(bA, 3, 100, 1, k.CFrame.lookVector * 2, false, "Shot", .1)
		so(1188020502, SniperPart, math.random(90, 110) / 100, 2)
		local bB = Instance.new("Part", EffectModel)
		bB.Size = Vector3.new(.2, .2, .6)
		bB.CFrame = SniperPart.CFrame * CFrame.new(0, .2, .1) * CFrame.Angles(math.rad(90), 0, 0)
		bB.Velocity = k.CFrame.rightVector * 10 + Vector3.new(0, 5, 0)
		local bC = Instance.new("SpecialMesh", bB)
		bC.MeshId = "rbxassetid://94295100"
		bC.TextureId = "rbxassetid://94287792"
		bC.Scale = Vector3.new(6, 6, 7)
		coroutine.wrap(function()
			swait(120)
			for a0 = 0, 1, .1 do
				swait()
				bB.Transparency = a0
			end;
			bB:Destroy()
		end)()
		for a0 = 0, 1, .2 do
			swait()
			PlayAnimationFromTable({
				CFrame.new(2.50265002e-05, -1.10002279, 0.200007886, 0.500002146, -3.76800926e-07, -0.866029978, 7.4937816e-08, 1.00000739, 4.94749656e-07, 0.86602205, 3.01832188e-07, 0.499995917),
				CFrame.new(0.167014852, 1.34999704, -0.199008107, 0.556671381, 0.321389109, 0.766043961, -0.500002861, 0.866030276, 6.54973655e-06, -0.663417339, -0.383028954, 0.642782569),
				CFrame.new(1.04456306, 0.514713466, -0.551627755, 0.499997109, 0.852867961, -0.150390312, -1.31521729e-05, -0.173648402, -0.984811425, -0.866029978, 0.49240002, -0.0868116468),
				CFrame.new(-1.25996089, 0.489358723, -1.10211217, 0.212837413, 0.0678575933, 0.974727511, 0.797067821, -0.589060187, -0.133035436, 0.565143704, 0.805237114, -0.179465353),
				CFrame.new(0.778114498, -1.22446704, 0.0451110713, 0.500002146, -0.86602205, 3.5509629e-07, 1.89445245e-07, -3.01832188e-07, 1.00000739, -0.866029978, -0.499995917, 1.52761004e-08),
				CFrame.new(-0.933037996, -0.900004268, -0.249980167, 0.500002146, 3.5509629e-07, 0.86602205, 1.89445245e-07, 1.00000739, 3.01832188e-07, -0.866029978, 1.52761004e-08, 0.499995917)
			}, .4, false)
		end;
		E = E - 1;
		bA:Destroy()
		if E <= 0 then
			sniperreload()
		end;
		for a0 = 0, 1, .2 do
			swait()
			PlayAnimationFromTable({
				CFrame.new(4.7639071e-07, -1.10001194, -1.51601284e-07, 0.500000477, -4.33079322e-07, -0.866027892, -1.05399764e-07, 1.00000358, 4.57277082e-07, 0.866024017, 1.37818347e-07, 0.499997526),
				CFrame.new(0.167016879, 1.34998727, -0.199010611, 0.556670308, 0.321388304, 0.766046166, -0.500001013, 0.866026938, 6.41028782e-06, -0.663415313, -0.383027822, 0.642783642),
				CFrame.new(0.911282957, 0.475031316, -0.628563344, 0.500000417, 0.866024017, 8.59218545e-08, -3.88375781e-07, 1.37818347e-07, -1.00000358, -0.866027892, 0.499997526, -4.20934384e-07),
				CFrame.new(-1.21131861, 0.352097392, -0.894729018, 0.03015434, 0.171006948, 0.984807253, 0.984811544, -0.17364794, -1.001839e-06, 0.171009108, 0.969847143, -0.173650116),
				CFrame.new(0.951322317, -1.22446108, 0.145102695, 0.500000417, -0.866024017, 1.71279837e-07, 1.1826463e-07, -1.37818347e-07, 1.00000358, -0.866027892, -0.499997526, -1.18554784e-08),
				CFrame.new(-0.759828508, -0.900001526, -0.149999052, 0.500000417, 1.71279837e-07, 0.866024017, 1.1826463e-07, 1.00000358, 1.37818347e-07, -0.866027892, -1.18554784e-08, 0.499997526)
			}, .4, false)
		end;
		c.WalkSpeed = 16;
		m = false
	end;
	function pistol2shoot()
		m = true;
		c.WalkSpeed = 2;
		bw.Part0 = Pistol2Part;
		for a0 = 0, 1, .2 do
			swait()
			PlayAnimationFromTable({
				CFrame.new(0.000184101125, 5.04431128e-08, -0.000150338426, 0.500005603, 1.22921699e-06, -0.866033554, -0.000292496145, 1.00001001, -0.000167453618, 0.866025388, 0.000337033183, 0.500001013),
				CFrame.new(-0.000420940924, 1.50013995, -7.44290446e-06, 0.500005603, -0.000292496145, 0.866025388, 1.22921699e-06, 1.00001001, 0.000337033183, -0.866033554, -0.000167453618, 0.500001013),
				CFrame.new(1.07864964, 0.497787654, -0.827312827, 0.812867165, 0.580278814, -0.0502792969, -0.0143589694, -0.0663333088, -0.997701764, -0.582282901, 0.811714172, -0.0455874838),
				CFrame.new(0.205326244, -0.00924482942, -0.802453697, -0.432021976, -0.765640318, -0.476609319, -0.0512114279, 0.548448205, -0.834623814, 0.900416195, -0.33616206, -0.276147217),
				CFrame.new(0.500085354, -2.00019813, 1.89718667e-05, 1.00000286, -2.50292942e-09, -4.02331352e-06, -2.50292942e-09, 1.00000989, -1.43336365e-09, -4.02331352e-06, -1.43336365e-09, 1.00000751),
				CFrame.new(-0.499986112, -2.0001986, -4.31090593e-05, 0.500004113, 9.35033313e-07, 0.866026223, -1.24029475e-06, 1.00000989, -3.6941492e-07, -0.866034448, -8.92294338e-07, 0.499999523)
			}, .5, false)
		end;
		so(166196557, d, 1, 1)
		Pistol2Part.Transparency = 0;
		PistolH.Transparency = 1;
		for a0 = 0, 1, .1 do
			swait()
			PlayAnimationFromTable({
				CFrame.new(0.000189566548, 4.85283067e-08, -0.000144683872, 0.499996573, 1.23889242e-06, -0.866027534, -0.000292498793, 1.00000012, -0.000167442151, 0.866027474, 0.000337032456, 0.499996573),
				CFrame.new(-0.00042946852, 1.50016332, -7.94494554e-06, 0.499996573, -0.000292498793, 0.866027474, 1.23889242e-06, 1.00000012, 0.000337032456, -0.866027534, -0.000167442151, 0.499996573),
				CFrame.new(0.998134136, 0.446251094, -1.11091995, 0.783737183, 0.500254512, 0.36810562, 0.159336776, 0.410895228, -0.897650898, -0.60030663, 0.762174964, 0.242324889),
				CFrame.new(-1.60379899, 0.657177448, 0.290532261, 0.395718038, 0.901369691, -0.175898328, -0.292884171, -0.0576668307, -0.954407454, -0.870417237, 0.429194063, 0.241177052),
				CFrame.new(0.500091672, -2.00022912, 3.0502677e-05, 1.00000024, 0, -2.98023224e-08, 0, 1.00000012, 0, -2.98023224e-08, 0, 1.00000012),
				CFrame.new(-0.499991387, -2.00022721, -4.65214252e-05, 0.499995053, 9.27539077e-07, 0.866028368, -1.23065342e-06, 1.00000012, -3.60509148e-07, -0.866028428, -8.85520421e-07, 0.499995083)
			}, .4, false)
		end;
		local a1 = 4;
		if C <= 3 then
			a1 = C
		end;
		for bE = 1, a1 do
			CamShake(e, 3, .2, .3)
			getNearestGuy()
			local a3, bz = rayCast(Pistol2F.Position, a2 + Vector3.new(math.random(-15, 15) / 10, math.random(-15, 15) / 10, math.random(-15, 15) / 10) - Pistol2F.Position, 200, b)
			local bA = Instance.new("Part", j)
			bA.Anchored = true;
			bA.Size = Vector3.new()
			bA.Transparency = 1;
			bA.CanCollide = false;
			bA.CFrame = CFrame.new(bz)
			for a0 = 1, 3 do
				Effects.Meshed(Pistol2F.CFrame * CFrame.Angles(math.rad(math.random(0, 360)), math.rad(math.random(0, 360)), math.rad(math.random(0, 360))), Vector3.new(), Vector3.new(.0025, .0015, .0025), "", "rbxassetid://662585058", "", 0, false, .1)
			end;
			Effects.Block(Pistol2F.CFrame, Vector3.new(.4, .4, .4), Vector3.new(), Vector3.new(.3, .3, .3), "Neon", "Bright yellow", true, false, .1)
			Effects.Block(Pistol2F.CFrame, Vector3.new(.4, .4, .4), Vector3.new(), Vector3.new(.6, .6, .6), "Neon", "Bright yellow", true, false, .1)
			Effects.Block(CFrame.new(bz), Vector3.new(.4, .4, .4), Vector3.new(), Vector3.new(.1, .1, .1), "Neon", "Bright yellow", true, false, .1)
			Effects.Block(CFrame.new((Pistol2F.Position + bz) / 2, bz), Vector3.new(.2, .2, (Pistol2F.Position - bz).magnitude), Vector3.new(0, 0, 1), Vector3.new(.1, .1, 0), "Neon", "Bright yellow", false, false, .1)
			MagnitudeDmg(bA, 3, 18, 2, k.CFrame.lookVector * 2, false, "Shot", .1)
			so(1583819337, Pistol2Part, math.random(90, 110) / 100, 2)
			local bB = Instance.new("Part", EffectModel)
			bB.Size = Vector3.new(0, 0, .3)
			bB.CFrame = Pistol2Part.CFrame * CFrame.new(0, .465, .1)
			bB.Velocity = k.CFrame.rightVector * 10 + Vector3.new(0, 5, 0)
			local bC = Instance.new("SpecialMesh", bB)
			bC.MeshId = "rbxassetid://94295100"
			bC.TextureId = "rbxassetid://94287792"
			bC.Scale = Vector3.new(3, 3, 3.5)
			coroutine.wrap(function()
				swait(2)
				for a0 = 0, 1, .1 do
					swait()
					bB.Transparency = a0
				end;
				bB:Destroy()
			end)()
			for a0 = 0, 1, .5 do
				swait()
				PlayAnimationFromTable({
					CFrame.new(0.000161223114, -1.64846442e-05, 0.0998439789, 0.500000834, 1.23897951e-06, -0.866034865, -0.000292500015, 1.00000441, -0.000167442922, 0.86603111, 0.000337033882, 0.499998719),
					CFrame.new(-0.00042947242, 1.50017548, -7.94528023e-06, 0.500000834, -0.000292500015, 0.86603111, 1.23897951e-06, 1.00000441, 0.000337033882, -0.866034865, -0.000167442922, 0.499998719),
					CFrame.new(0.998145998, 0.446257651, -1.11093545, 0.783742428, 0.500255764, 0.36810708, 0.159337461, 0.410896987, -0.897654712, -0.600312531, 0.762179732, 0.242326021),
					CFrame.new(-1.66605222, 0.85397166, 0.254648387, 0.313735187, 0.832365632, -0.456884146, -0.243486553, -0.394562453, -0.886024356, -0.917765141, 0.389220238, 0.0788824111),
					CFrame.new(0.41350022, -2.00026441, -0.0499946438, 1.00000536, 0, -1.81794167e-06, 0, 1.00000441, -7.27595761e-11, -1.81794167e-06, -7.27595761e-11, 1.00000751),
					CFrame.new(-0.586586297, -2.00026202, -0.050061062, 0.499999285, 9.27539077e-07, 0.866031885, -1.23056634e-06, 1.00000441, -3.60538252e-07, -0.866035759, -8.85622285e-07, 0.499997169)
				}, .5, false)
			end;
			C = C - 1;
			bA:Destroy()
			for a0 = 0, 1, .5 do
				swait()
				PlayAnimationFromTable({
					CFrame.new(0.000189566548, 4.85283067e-08, -0.000144683872, 0.499996573, 1.23889242e-06, -0.866027534, -0.000292498793, 1.00000012, -0.000167442151, 0.866027474, 0.000337032456, 0.499996573),
					CFrame.new(-0.00042946852, 1.50016332, -7.94494554e-06, 0.499996573, -0.000292498793, 0.866027474, 1.23889242e-06, 1.00000012, 0.000337032456, -0.866027534, -0.000167442151, 0.499996573),
					CFrame.new(0.998134136, 0.446251094, -1.11091995, 0.783737183, 0.500254512, 0.36810562, 0.159336776, 0.410895228, -0.897650898, -0.60030663, 0.762174964, 0.242324889),
					CFrame.new(-1.60379899, 0.657177448, 0.290532261, 0.395718038, 0.901369691, -0.175898328, -0.292884171, -0.0576668307, -0.954407454, -0.870417237, 0.429194063, 0.241177052),
					CFrame.new(0.500091672, -2.00022912, 3.0502677e-05, 1.00000024, 0, -2.98023224e-08, 0, 1.00000012, 0, -2.98023224e-08, 0, 1.00000012),
					CFrame.new(-0.499991387, -2.00022721, -4.65214252e-05, 0.499995053, 9.27539077e-07, 0.866028368, -1.23065342e-06, 1.00000012, -3.60509148e-07, -0.866028428, -8.85520421e-07, 0.499995083)
				}, .5, false)
			end
		end;
		for a0 = 0, 1, .2 do
			swait()
			PlayAnimationFromTable({
				CFrame.new(0.000184101125, 5.04431128e-08, -0.000150338426, 0.500005603, 1.22921699e-06, -0.866033554, -0.000292496145, 1.00001001, -0.000167453618, 0.866025388, 0.000337033183, 0.500001013),
				CFrame.new(-0.000420940924, 1.50013995, -7.44290446e-06, 0.500005603, -0.000292496145, 0.866025388, 1.22921699e-06, 1.00001001, 0.000337033183, -0.866033554, -0.000167453618, 0.500001013),
				CFrame.new(1.07864964, 0.497787654, -0.827312827, 0.812867165, 0.580278814, -0.0502792969, -0.0143589694, -0.0663333088, -0.997701764, -0.582282901, 0.811714172, -0.0455874838),
				CFrame.new(0.205326244, -0.00924482942, -0.802453697, -0.432021976, -0.765640318, -0.476609319, -0.0512114279, 0.548448205, -0.834623814, 0.900416195, -0.33616206, -0.276147217),
				CFrame.new(0.500085354, -2.00019813, 1.89718667e-05, 1.00000286, -2.50292942e-09, -4.02331352e-06, -2.50292942e-09, 1.00000989, -1.43336365e-09, -4.02331352e-06, -1.43336365e-09, 1.00000751),
				CFrame.new(-0.499986112, -2.0001986, -4.31090593e-05, 0.500004113, 9.35033313e-07, 0.866026223, -1.24029475e-06, 1.00000989, -3.6941492e-07, -0.866034448, -8.92294338e-07, 0.499999523)
			}, .4, false)
		end;
		Pistol2Part.Transparency = 1;
		PistolH.Transparency = 0;
		c.WalkSpeed = 16;
		m = false;
		bw.Part0 = PistolH
	end;
	function silentstab()
		m = true;
		c.WalkSpeed = 2;
		local bF = nil;
		local b4 = nil;
		for a0, aQ in pairs(FindNearestTorso(i.Position, 5)) do
			if aQ:FindFirstChild('Head') and aQ:FindFirstChildOfClass("Humanoid") and aQ:FindFirstChildOfClass("Humanoid").Health > 1 then
				b4 = GetDudesTorso(aQ)
				bF = aQ
			end
		end;
		if bF ~= nil and b4 ~= nil then
			so(200632136, k, .8, 1)
			for a0 = 0, 1, .2 do
				swait()
				PlayAnimationFromTable({
					CFrame.new(0, 0, 0, 1.0000037, 1.69968928e-10, 0, 1.69968928e-10, 1, -1.57160684e-09, 0, -1.57160684e-09, 1.0000037),
					CFrame.new(-3.01809487e-05, 1.48262334, -0.0984517932, 1.00000286, 2.59244189e-07, -2.88084266e-07, -2.05077583e-07, 0.98480767, 0.173648551, 3.28727765e-07, -0.173649058, 0.984810591),
					CFrame.new(1.30344474, -0.164363086, 0.272664785, 0.939695418, 0.342020869, 7.09114829e-08, -0.3213934, 0.883021832, 0.342021555, 0.116978429, -0.321396053, 0.939694881),
					CFrame.new(-1.16895545, 0.600005031, -0.538890362, 0.642788529, -0.766047359, -1.59056867e-07, 3.28349415e-07, 4.82803443e-07, -1, 0.766047418, 0.642788589, 5.64206857e-07),
					CFrame.new(0.500057638, -2.0000205, 1.92150474e-05, 0.984810531, -1.72498687e-07, -0.173649296, 1.44973455e-07, 1, -1.72876753e-07, 0.173649311, 1.42812496e-07, 0.984810591),
					CFrame.new(-0.499961913, -2.00001907, 1.8030405e-06, 0.984810591, 2.5749668e-07, 0.173648581, -2.14211468e-07, 1, -2.66620191e-07, -0.173648596, 2.23022653e-07, 0.98481065)
				}, .3, false)
				b4.CFrame = k.CFrame * CFrame.new(0, 0, -1.3)
				b4.Velocity = Vector3.new()
			end;
			so(211059653, Knife, 1, 1)
			for a0 = 0, 1, .1 do
				swait()
				PlayAnimationFromTable({
					CFrame.new(0, 0, 0, 1.00001013, 3.01577785e-09, 1.23691279e-09, 3.01577785e-09, 0.999999762, -1.05661456e-06, 1.23691279e-09, -1.05661456e-06, 0.999995291),
					CFrame.new(-3.01768723e-05, 1.48262274, -0.098456949, 1.00001013, 2.61965397e-07, -2.86352588e-07, -2.02173752e-07, 0.984807134, 0.173650354, 3.30022885e-07, -0.173651636, 0.984802246),
					CFrame.new(1.5392077, 0.777850926, 0.0131720304, 0.935736716, -0.351706415, -0.0266419984, -0.324943185, -0.888975859, 0.32269752, -0.137177527, -0.293299675, -0.946125269),
					CFrame.new(-1.16899812, 0.600008368, -0.538897991, 0.642793238, -0.766052902, -1.61869082e-07, -4.9744267e-07, -2.09358404e-07, -0.999999762, 0.766041577, 0.642783701, 1.59302726e-06),
					CFrame.new(0.500073791, -2.00001764, 1.58026814e-05, 0.984817624, -1.67005226e-07, -0.173650563, -3.64234438e-08, 0.999999762, -1.19872857e-06, 0.173647985, -9.07632057e-07, 0.984802961),
					CFrame.new(-0.499974608, -2.0000205, 1.321733e-05, 0.984817803, 2.5789538e-07, 0.173649862, -2.46509444e-08, 0.999999762, -1.31168053e-06, -0.173647255, -8.18137778e-07, 0.984803081)
				}, .3, false)
				b4.CFrame = k.CFrame * CFrame.new(0, 0, -1.3)
				b4.Velocity = Vector3.new()
			end;
			ap.Enabled = true;
			for a0 = 0, 1, .2 do
				swait()
				PlayAnimationFromTable({
					CFrame.new(0, 0, 0, 1.00000012, 1.52766688e-12, 1.45519152e-11, 1.52766688e-12, 1, 0, 1.45519152e-11, 0, 1.00000012),
					CFrame.new(-3.01809741e-05, 1.48262441, -0.0984470844, 1.00000012, 2.59178705e-07, -2.88142473e-07, -2.05221269e-07, 0.984807312, 0.173650622, 3.28800525e-07, -0.173650607, 0.984807432),
					CFrame.new(1.11628127, 0.212460458, -1.06663299, -0.114152029, 0.566243351, -0.816295326, -0.993282199, -0.0493562892, 0.104664929, 0.0189765152, 0.822759032, 0.568073511),
					CFrame.new(-1.16897488, 0.60000807, -0.538883448, 0.642792463, -0.766040564, -1.62451698e-07, -1.30882836e-06, -8.86182534e-07, -1, 0.766040623, 0.642792284, -1.57224713e-06),
					CFrame.new(0.500080049, -2.0000174, 2.25231051e-05, 0.984817743, -1.63965893e-07, -0.173650578, -2.22877134e-07, 0.999999821, -2.23875395e-06, 0.173648, 1.48982508e-07, 0.984803081),
					CFrame.new(-0.499980897, -2.00001836, 1.99377537e-05, 0.984817982, 2.60905608e-07, 0.173649877, 1.55865564e-07, 0.999999821, -2.35275365e-06, -0.17364727, 2.38447683e-07, 0.9848032)
				}, .4, false)
				b4.CFrame = k.CFrame * CFrame.new(0, 0, -1.3)
				b4.Velocity = Vector3.new()
			end;
			Dmg(bF, math.huge, 0, Vector3.new(), false, "Sharp", 0)
			ap.Enabled = false;
			for a0 = 1, 30 do
				swait()
				b4.CFrame = k.CFrame * CFrame.new(0, 0, -1.3)
				b4.Velocity = Vector3.new()
			end;
			so(444667824, b4, 1, 1)
			an.Enabled = true;
			for a0 = 0, 2, .1 do
				swait()
				PlayAnimationFromTable({
					CFrame.new(0, 0, 0, 1.00001013, 3.01577785e-09, 1.23691279e-09, 3.01577785e-09, 0.999999762, -1.05661456e-06, 1.23691279e-09, -1.05661456e-06, 0.999995291),
					CFrame.new(-3.01768723e-05, 1.48262274, -0.098456949, 1.00001013, 2.61965397e-07, -2.86352588e-07, -2.02173752e-07, 0.984807134, 0.173650354, 3.30022885e-07, -0.173651636, 0.984802246),
					CFrame.new(1.5392077, 0.777850926, 0.0131720304, 0.935736716, -0.351706415, -0.0266419984, -0.324943185, -0.888975859, 0.32269752, -0.137177527, -0.293299675, -0.946125269),
					CFrame.new(-1.16899812, 0.600008368, -0.538897991, 0.642793238, -0.766052902, -1.61869082e-07, -4.9744267e-07, -2.09358404e-07, -0.999999762, 0.766041577, 0.642783701, 1.59302726e-06),
					CFrame.new(0.500073791, -2.00001764, 1.58026814e-05, 0.984817624, -1.67005226e-07, -0.173650563, -3.64234438e-08, 0.999999762, -1.19872857e-06, 0.173647985, -9.07632057e-07, 0.984802961),
					CFrame.new(-0.499974608, -2.0000205, 1.321733e-05, 0.984817803, 2.5789538e-07, 0.173649862, -2.46509444e-08, 0.999999762, -1.31168053e-06, -0.173647255, -8.18137778e-07, 0.984803081)
				}, .3, false)
				b4.CFrame = k.CFrame * CFrame.new(0, 0, -1.3)
				b4.Velocity = Vector3.new()
			end;
			an.Enabled = false;
			BodyVel(b4, k.CFrame.rightVector * -30)
			for a0 = 0, 2, .1 do
				swait()
				PlayAnimationFromTable({
					CFrame.new(0, 0, 0, 1.00001895, -1.08813225e-09, -2.15858745e-06, -1.08813225e-09, 1, -5.23868948e-09, -2.15858745e-06, -5.23868948e-09, 1.00001907),
					CFrame.new(-2.80096792e-05, 1.48262501, -0.0984562784, 1.00001895, 6.30865543e-07, -2.43255636e-06, -2.06277122e-07, 0.984807432, 0.173650309, -1.83083466e-06, -0.173653573, 0.984826326),
					CFrame.new(1.56420577, 0.0696786866, 0.187489942, 0.984821677, -0.173651561, 2.03962554e-06, 0.163176283, 0.925417721, 0.342017293, -0.059396904, -0.336825103, 0.93970716),
					CFrame.new(-1.61899722, 0.500005424, 0.240550712, 0.500009537, 0.866036475, -2.03252193e-06, -1.80752249e-06, -1.30520493e-06, -1, -0.866037965, 0.500006795, 9.20670573e-07),
					CFrame.new(0.500072181, -2.0000205, 2.01910734e-05, 0.984817028, -1.70239531e-07, -0.173650548, 1.41451892e-07, 1, -1.7194543e-07, 0.173648432, 1.39552867e-07, 0.984817445),
					CFrame.new(-0.499981821, -2.00002146, 1.2755394e-05, 0.984826863, 2.54893166e-07, 0.173649251, -2.13003659e-07, 1, -2.71422323e-07, -0.173653603, 2.19704816e-07, 0.984826326)
				}, .4, false)
			end
		end;
		m = false;
		c.WalkSpeed = 16
	end;
	function silentpist()
		m = true;
		c.WalkSpeed = 2;
		local bF = nil;
		local b4 = nil;
		for a0, aQ in pairs(FindNearestTorso(i.Position, 5)) do
			if aQ:FindFirstChild('Head') and aQ:FindFirstChildOfClass("Humanoid") and aQ:FindFirstChildOfClass("Humanoid").Health > 1 then
				b4 = GetDudesTorso(aQ)
				bF = aQ
			end
		end;
		if bF ~= nil and b4 ~= nil then
			so(200632136, k, .8, 1)
			for a0 = 0, 1, .2 do
				swait()
				PlayAnimationFromTable({
					CFrame.new(0, 0, 0, 1.0000037, 1.69968928e-10, 0, 1.69968928e-10, 1, -1.57160684e-09, 0, -1.57160684e-09, 1.0000037),
					CFrame.new(-3.01809487e-05, 1.48262334, -0.0984517932, 1.00000286, 2.59244189e-07, -2.88084266e-07, -2.05077583e-07, 0.98480767, 0.173648551, 3.28727765e-07, -0.173649058, 0.984810591),
					CFrame.new(1.30344474, -0.164363086, 0.272664785, 0.939695418, 0.342020869, 7.09114829e-08, -0.3213934, 0.883021832, 0.342021555, 0.116978429, -0.321396053, 0.939694881),
					CFrame.new(-1.16895545, 0.600005031, -0.538890362, 0.642788529, -0.766047359, -1.59056867e-07, 3.28349415e-07, 4.82803443e-07, -1, 0.766047418, 0.642788589, 5.64206857e-07),
					CFrame.new(0.500057638, -2.0000205, 1.92150474e-05, 0.984810531, -1.72498687e-07, -0.173649296, 1.44973455e-07, 1, -1.72876753e-07, 0.173649311, 1.42812496e-07, 0.984810591),
					CFrame.new(-0.499961913, -2.00001907, 1.8030405e-06, 0.984810591, 2.5749668e-07, 0.173648581, -2.14211468e-07, 1, -2.66620191e-07, -0.173648596, 2.23022653e-07, 0.98481065)
				}, .4, false)
				b4.CFrame = k.CFrame * CFrame.new(0, 0, -1.3)
				b4.Velocity = Vector3.new()
			end;
			for a0 = 0, 1, .1 do
				swait()
				PlayAnimationFromTable({
					CFrame.new(0, 0, 0, 1.000018, 8.09635026e-10, 0, 8.09635026e-10, 1, -7.88713805e-09, 0, -7.88713805e-09, 1.000018),
					CFrame.new(-3.11340882e-05, 1.48262513, -0.0984535366, 1.00001717, 2.59900844e-07, -2.8796785e-07, -2.04408821e-07, 0.98480767, 0.173648566, 3.28756869e-07, -0.173651531, 0.984824657),
					CFrame.new(1.79998624, 0.477996171, -0.413522929, 0.342012018, 0.883037329, -0.321389318, -0.163174942, -0.281007737, -0.945731819, -0.925429285, 0.375894368, 0.0479815453),
					CFrame.new(-1.1689868, 0.600005031, -0.538915634, 0.642797709, -0.766058326, -1.5969654e-07, 3.23954737e-07, 4.78248694e-07, -1, 0.766058385, 0.642797768, 5.70522388e-07),
					CFrame.new(0.500071704, -2.00002003, 1.27032399e-05, 0.984824598, -1.71859028e-07, -0.173651785, 1.44493242e-07, 1, -1.79221388e-07, 0.173651785, 1.36496965e-07, 0.984824657),
					CFrame.new(-0.499974728, -2.00001907, 2.80886889e-06, 0.984824657, 2.58136339e-07, 0.173651055, -2.12450686e-07, 1, -2.72644684e-07, -0.173651069, 2.16707122e-07, 0.984824717)
				}, .4, false)
				b4.CFrame = k.CFrame * CFrame.new(0, 0, -1.3)
				b4.Velocity = Vector3.new()
			end;
			CamShake(e, 3, .2, .3)
			for a0 = 1, 3 do
				Effects.Meshed(PistolF.CFrame * CFrame.Angles(math.rad(math.random(0, 360)), math.rad(math.random(0, 360)), math.rad(math.random(0, 360))), Vector3.new(), Vector3.new(.0025, .0015, .0025), "", "rbxassetid://662585058", "", 0, false, .1)
			end;
			Effects.Block(PistolF.CFrame, Vector3.new(.4, .4, .4), Vector3.new(), Vector3.new(.3, .3, .3), "Neon", "Bright yellow", true, false, .1)
			Effects.Block(PistolF.CFrame, Vector3.new(.4, .4, .4), Vector3.new(), Vector3.new(.6, .6, .6), "Neon", "Bright yellow", true, false, .1)
			so(1583819337, PistolPart, math.random(90, 110) / 100, 2)
			Dmg(bF, math.huge, 0, Vector3.new(), false, "Shot", 0)
			C = C - 1;
			for a0 = 0, 1, .2 do
				swait()
				PlayAnimationFromTable({
					CFrame.new(0, 0, 0, 1.00000417, 2.18335572e-10, -5.09317033e-10, 2.18335572e-10, 1, 2.32830644e-10, -5.09317033e-10, 2.32830644e-10, 1.00000417),
					CFrame.new(-3.01806849e-05, 1.48262227, -0.0984561294, 1.00000417, 2.59502485e-07, -2.88564479e-07, -2.05000106e-07, 0.984807312, 0.173651457, 3.28247552e-07, -0.173652172, 0.984811306),
					CFrame.new(1.56238043, 0.668045402, -0.472643495, 0.598204136, -0.325104058, -0.732436657, -0.49942559, -0.866038263, -0.0234913211, -0.626681089, 0.379850179, -0.680432916),
					CFrame.new(-1.16897666, 0.600004077, -0.538914442, 0.642789423, -0.766048372, -1.59102683e-07, 3.17784725e-07, 4.73693945e-07, -1, 0.766048431, 0.642789483, 5.47443051e-07),
					CFrame.new(0.500065982, -2.00001907, -2.65985727e-06, 0.984811783, -1.69772804e-07, -0.17364952, 1.42616045e-07, 1, -1.71741704e-07, 0.173649535, 1.44791557e-07, 0.984811842),
					CFrame.new(-0.49996838, -2.00001955, 1.83209777e-05, 0.984811842, 2.5510019e-07, 0.173648834, -2.11686711e-07, 1, -2.65834387e-07, -0.173648834, 2.25525582e-07, 0.984811902)
				}, .5, false)
				b4.CFrame = k.CFrame * CFrame.new(0, 0, -1.3)
				b4.Velocity = Vector3.new()
			end;
			for a0 = 1, 5 do
				swait()
				b4.CFrame = k.CFrame * CFrame.new(0, 0, -1.3)
				b4.Velocity = Vector3.new()
			end;
			BodyVel(b4, k.CFrame.rightVector * -30)
			for a0 = 0, 2, .1 do
				swait()
				PlayAnimationFromTable({
					CFrame.new(0, 0, 0, 1.00001895, -1.08813225e-09, -2.15858745e-06, -1.08813225e-09, 1, -5.23868948e-09, -2.15858745e-06, -5.23868948e-09, 1.00001907),
					CFrame.new(-2.80096792e-05, 1.48262501, -0.0984562784, 1.00001895, 6.30865543e-07, -2.43255636e-06, -2.06277122e-07, 0.984807432, 0.173650309, -1.83083466e-06, -0.173653573, 0.984826326),
					CFrame.new(1.56420577, 0.0696786866, 0.187489942, 0.984821677, -0.173651561, 2.03962554e-06, 0.163176283, 0.925417721, 0.342017293, -0.059396904, -0.336825103, 0.93970716),
					CFrame.new(-1.61899722, 0.500005424, 0.240550712, 0.500009537, 0.866036475, -2.03252193e-06, -1.80752249e-06, -1.30520493e-06, -1, -0.866037965, 0.500006795, 9.20670573e-07),
					CFrame.new(0.500072181, -2.0000205, 2.01910734e-05, 0.984817028, -1.70239531e-07, -0.173650548, 1.41451892e-07, 1, -1.7194543e-07, 0.173648432, 1.39552867e-07, 0.984817445),
					CFrame.new(-0.499981821, -2.00002146, 1.2755394e-05, 0.984826863, 2.54893166e-07, 0.173649251, -2.13003659e-07, 1, -2.71422323e-07, -0.173653603, 2.19704816e-07, 0.984826326)
				}, .4, false)
			end
		end;
		m = false;
		c.WalkSpeed = 16
	end;
	function heal()
		m = true;
		c.WalkSpeed = 2;
		local bG = Instance.new("BoolValue", b)
		bG.Name = "healcool"
		z:AddItem(bG, 30)
		for a0 = 0, 1, .1 do
			swait()
			PlayAnimationFromTable({
				CFrame.new(0, 0, 0, 1.00000131, 5.536549e-11, 0, 5.536549e-11, 1, 5.82076609e-11, 0, 5.82076609e-11, 1.00000131),
				CFrame.new(-0.0470143259, 1.46578526, -0.0813575089, 0.866027415, -0.171009213, 0.46984449, 1.88792183e-06, 0.939693928, 0.342016727, -0.499997973, -0.296194941, 0.813800871),
				CFrame.new(1.50003648, 0.699995697, 3.59429396e-05, 1.00000131, -2.06271608e-07, -6.67154382e-06, -2.06196262e-07, -1, 2.48575816e-07, -6.67157292e-06, -2.48721335e-07, -1.00000131),
				CFrame.new(-1.2535826, -0.14593178, 0.0679161474, 0.941512227, -0.331708014, -0.0593915284, 0.331707656, 0.88120383, 0.336823434, -0.059390977, -0.33682391, 0.939694226),
				CFrame.new(0.500059426, -2.00001574, 4.5761466e-05, 0.939693809, -1.38383513e-07, -0.342020601, -2.80560926e-08, 1, -4.82134055e-07, 0.342020571, 4.627218e-07, 0.939694047),
				CFrame.new(-0.499963611, -2.0000174, 2.33203173e-05, 0.939694047, -1.69952145e-07, 0.342020452, 2.99973181e-07, 1, -3.27068847e-07, -0.342020482, 4.10043867e-07, 0.939694047)
			}, .4, false)
		end;
		local bH = New("Part", b, "inj", {
			Size = Vector3.new(2.10000014, 0.299999982, 0.300000012),
			CFrame = CFrame.new(-37.1041107, 9.26048374, -70.1689682, -0.100794047, 0.957379222, 0.270676494, -0.129940063, 0.257064044, -0.957618713, -0.986385465, -0.131693989, 0.0984913707),
			CanCollide = false,
			BottomSurface = Enum.SurfaceType.Smooth,
			TopSurface = Enum.SurfaceType.Smooth
		})
		local bI = New("SpecialMesh", bH, "Mesh", {
			Scale = Vector3.new(0.00200000009, 0.00200000009, 0.00200000009),
			MeshId = "rbxassetid://504973881",
			MeshType = Enum.MeshType.FileMesh
		})
		local bJ = New("ManualWeld", bH, "Weld", {
			Part0 = bH,
			Part1 = d,
			C0 = CFrame.new(0, 0, 0, -0.100794047, -0.129940063, -0.986385465, 0.957379222, 0.257064044, -0.131693989, 0.270676494, -0.957618713, 0.0984913707),
			C1 = CFrame.new(0.250003815, -1.05000305, -0.249992371, -0.270675898, 0.957618654, -0.0984939635, 0.957379043, 0.257062733, -0.131696969, -0.100796357, -0.129943267, -0.986384809)
		})
		for a0 = 0, 1, .1 do
			swait()
			PlayAnimationFromTable({
				CFrame.new(0, 0, 0, 1.00000441, 2.30059527e-10, -1.45519152e-11, 2.30059527e-10, 1, 2.32830644e-10, -1.45519152e-11, 2.32830644e-10, 1.00000441),
				CFrame.new(-0.0342181027, 1.48367238, -0.0925136507, 0.939694226, 1.76227331e-07, 0.342022419, -0.0593916923, 0.984807789, 0.163176015, -0.336826295, -0.173648849, 0.925418019),
				CFrame.new(1.50004876, 0.69999665, 2.83136833e-05, 1.00000441, -2.06446316e-07, -6.67157292e-06, -2.06021568e-07, -1, 2.48401193e-07, -6.67160202e-06, -2.48895958e-07, -1.00000441),
				CFrame.new(-1.32655382, 0.16053623, -0.618192732, 0.82254082, 0.00194577302, 0.568706632, 0.568639874, 0.0127443047, -0.82248795, -0.00884814467, 0.999919116, 0.00937626697),
				CFrame.new(0.500066876, -2.00001621, 5.19603491e-05, 0.939696729, -1.38208819e-07, -0.342021674, -2.78232619e-08, 1, -4.81959432e-07, 0.342021644, 4.62896423e-07, 0.939696968),
				CFrame.new(-0.499963373, -2.00001645, 2.26646662e-05, 0.939696968, -1.69777451e-07, 0.342021525, 3.00089596e-07, 1, -3.26806912e-07, -0.342021555, 4.1021849e-07, 0.939696968)
			}, .4, false)
		end;
		for a0 = 0, 1, .2 do
			swait()
			PlayAnimationFromTable({
				CFrame.new(0, 0, 0, 1.00000012, -3.48876483e-12, 0, -3.48876483e-12, 1, 0, 0, 0, 1.00000012),
				CFrame.new(-2.27339151e-05, 1.46578801, -0.0939310491, 1.00000012, -3.72103386e-07, 1.64323137e-06, -2.12327393e-07, 0.939692557, 0.342020363, -1.67140388e-06, -0.342020422, 0.939692676),
				CFrame.new(1.50005758, 0.699994743, 3.59426958e-05, 1.00000012, -2.06212761e-07, -6.67157292e-06, -2.06226048e-07, -1, 2.48663127e-07, -6.67157292e-06, -2.48663127e-07, -1.00000012),
				CFrame.new(-0.943567514, 0.0578621849, -0.670854151, 0.270323098, -0.957491815, 0.100672945, 0.957676411, 0.256677359, -0.130279034, 0.0989006162, 0.131629527, 0.986353219),
				CFrame.new(0.500069618, -2.00001717, 4.97102737e-05, 0.939692676, -1.38762402e-07, -0.342020184, -2.76195351e-08, 1, -4.81668394e-07, 0.342020184, 4.62023309e-07, 0.939692795),
				CFrame.new(-0.499966532, -2.00001884, 2.46018171e-05, 0.939692795, -1.69370765e-07, 0.342019975, 2.99449312e-07, 1, -3.27592716e-07, -0.342020005, 4.10247594e-07, 0.939692795)
			}, .5, false)
		end;
		so(566593606, i, 1, 1)
		coroutine.wrap(function()
			B = true;
			for a0 = 1, 500 do
				swait()
			end;
			B = false
		end)()
		swait(60)
		bH:BreakJoints()
		bH.CanCollide = true;
		bH.Velocity = k.CFrame.rightVector * -30;
		coroutine.wrap(function()
			swait(60)
			for a0 = 0, 1, .1 do
				swait()
				bH.Transparency = a0
			end;
			bH:Destroy()
		end)()
		for a0 = 0, 1, .1 do
			swait()
			PlayAnimationFromTable({
				CFrame.new(0, 0, 0, 1.00000012, -7.41096073e-12, 0, -7.41096073e-12, 1, 2.91038305e-11, 0, 2.91038305e-11, 0.99999994),
				CFrame.new(-3.04159403e-05, 1.46578789, -0.0939521194, 1.00000012, -4.05150786e-07, 1.62865035e-06, -1.76347669e-07, 0.939691484, 0.342023492, -1.66901737e-06, -0.342023432, 0.939691424),
				CFrame.new(1.50005376, 0.699994802, 3.59716505e-05, 1.00000012, -1.58599477e-07, -6.6684006e-06, -1.58597771e-07, -1, 2.8318027e-07, -6.6684006e-06, -2.83209374e-07, -0.99999994),
				CFrame.new(-1.64437401, 0.697701395, 0.19487834, 0.408384711, 0.907241344, 0.100674063, -0.898611128, 0.418956876, -0.130281046, -0.160374403, -0.0372620374, 0.986352742),
				CFrame.new(0.500071704, -2.00001526, 2.73138285e-05, 0.939691603, 9.13247675e-07, -0.342023104, -1.21287303e-06, 1, -6.62083039e-07, 0.342023045, 1.03705679e-06, 0.939691603),
				CFrame.new(-0.499963105, -2.00001931, 1.77323818e-05, 0.939691305, -1.36975643e-06, 0.342023998, 1.52508437e-06, 1, -1.85216777e-07, -0.342024028, 6.95697963e-07, 0.939691186)
			}, .5, false)
		end;
		m = false;
		c.WalkSpeed = 16
	end;
	function doge()
		m = true;
		c.WalkSpeed = 0;
		so(536642316, i, 1, 1)
		local bK = Instance.new("BodyVelocity", k)
		local bL = 10000000;
		bK.P = bL;
		bK.MaxForce = Vector3.new(bL, bL, bL)
		bK.Velocity = k.CFrame.lookVector * 50;
		for a0 = 0, 1, .2 do
			swait()
			PlayAnimationFromTable({
				CFrame.new(0, -0.413182259, -0.492409885, 1, 0, 0, 0, 0.173647001, 0.984807968, 0, -0.984807968, 0.173647001),
				CFrame.new(0, 1.39017391, 0.409808099, 1, 0, 0, 0, 0.499998748, -0.866026163, 0, 0.866026163, 0.499998748),
				CFrame.new(0.997828066, 1.40889716, 0.360830426, 0, 0.173647001, 0.984807968, 0.173647001, -0.969846725, 0.171008945, 0.984807968, 0.171008945, -0.030153282),
				CFrame.new(-1.00000775, 1.48291457, 0.347779244, 0, -0.173647001, -0.984807968, -0.173647001, -0.969846725, 0.171008945, -0.984807968, 0.171008945, -0.030153282),
				CFrame.new(0.5, -2, -2.86102295e-06, 1, 0, 0, 0, 1, 0, 0, 0, 1),
				CFrame.new(-0.5, -2, -2.86102295e-06, 1, 0, 0, 0, 1, 0, 0, 0, 1)
			}, .4, false)
			bK.Velocity = k.CFrame.lookVector * 50
		end;
		for a0 = 0, 1, .2 do
			swait()
			PlayAnimationFromTable({
				CFrame.new(0, -1.30470812, -0.622091293, 1, 0, 0, 0, -0.866025984, 0.499998987, 0, -0.499998987, -0.866025984),
				CFrame.new(0, 1.47984993, -0.230206192, 1, 0, 0, 0, 0.939693034, 0.34201926, 0, -0.34201926, 0.939693034),
				CFrame.new(1.55977595, 0.764639199, 0.053586632, 0.93969202, -0.342021853, -1.61162654e-06, -0.342021883, -0.93969202, 3.57627869e-07, -1.63912773e-06, 2.08616257e-07, -1),
				CFrame.new(-1.55977952, 0.764637887, 0.053586632, 0.93969202, 0.342021853, 1.61162654e-06, 0.342021883, -0.93969202, 3.57627869e-07, 1.63912773e-06, 2.08616257e-07, -1),
				CFrame.new(0.5, -1.19999313, -0.600002289, 1, 0, 0, 0, 1, 0, 0, 0, 1),
				CFrame.new(-0.5, -1.19999313, -0.600002289, 1, 0, 0, 0, 1, 0, 0, 0, 1)
			}, .4, false)
			bK.Velocity = k.CFrame.lookVector * 50
		end;
		for a0 = 0, 1, .2 do
			swait()
			PlayAnimationFromTable({
				CFrame.new(0, -2.22375727, 0.305265486, 1, 0, 0, 0, 0.500000238, -0.866025388, 0, 0.866025388, 0.500000238),
				CFrame.new(0, 1.35128808, -0.383415997, 1, 0, 0, 0, 0.766043901, 0.642788529, 0, -0.64278847, 0.766043901),
				CFrame.new(1.55977547, 0.276377708, 0.0466975421, 0.93969214, -0.342021614, 4.56934458e-07, 0.321395159, 0.88302201, 0.342019856, -0.116978563, -0.321393132, 0.939692855),
				CFrame.new(-1.55978227, 0.276371837, 0.0467037484, 0.93969214, 0.342021614, -4.56934458e-07, -0.321395159, 0.88302201, 0.342019856, 0.116978563, -0.321393132, 0.939692855),
				CFrame.new(0.5, -1.19999337, -0.599998593, 1, 0, 0, 0, 1.00000024, 0, 0, 0, 1.00000024),
				CFrame.new(-0.500003815, -1.35979521, -0.923200667, 1, 0, 0, 0, 0.866025388, -0.500000238, 0, 0.500000238, 0.866025388)
			}, .4, false)
			bK.Velocity = k.CFrame.lookVector * 50
		end;
		bK:Destroy()
		c.WalkSpeed = 16;
		m = false
	end;
	function goright()
		m = true;
		c.WalkSpeed = 0;
		so(536642316, i, 1, 1)
		BodyVel(k, k.CFrame.rightVector * 40)
		for a0 = 0, 1, .2 do
			swait()
			PlayAnimationFromTable({
				CFrame.new(0, 0, 0, 0.866025686, 9.42248391e-07, 0.500011504, -8.48485797e-08, 1, 2.03145464e-06, -0.499997288, 1.801709e-06, 0.866039157),
				CFrame.new(0.0133891273, 1.49998093, -0.223221898, 0.999244928, 0.0180275738, 0.0343858302, -0.0296961162, 0.925415933, 0.377787739, -0.0250054598, -0.378526747, 0.92527163),
				CFrame.new(0.597281635, 0.899970174, -0.636579931, -0.2961981, 0.81379801, 0.499997288, 0.939692438, 0.34202075, -1.801709e-06, -0.171011984, 0.469857872, -0.866039157),
				CFrame.new(-1.5597142, 0.600028992, -0.496432245, 0.556670129, 0.663414598, -0.499997288, -0.766044378, 0.642787695, 1.801709e-06, 0.321399361, 0.38303256, 0.866039157),
				CFrame.new(0.0669843927, -1.80000138, -0.249991581, 0.750000238, 0.433012992, -0.499997288, -0.499999464, 0.866025865, 1.801709e-06, 0.433021635, 0.250007659, 0.866039157),
				CFrame.new(-1.01960945, -1.79999983, -0.300026655, 0.663413942, 0.556670904, -0.499997288, -0.642787337, 0.766044736, 1.801709e-06, 0.38302961, 0.321402997, 0.866039157)
			}, .4, false)
		end;
		c.WalkSpeed = 16;
		m = false
	end;
	function goleft()
		m = true;
		c.WalkSpeed = 0;
		so(536642316, i, 1, 1)
		BodyVel(k, k.CFrame.rightVector * -40)
		for a0 = 0, 1, .2 do
			swait()
			PlayAnimationFromTable({
				CFrame.new(0, 0, 0, 0.866035402, 9.42248391e-07, -0.499995083, 1.7168677e-06, 1, 1.08920722e-06, 0.500013709, 1.801709e-06, 0.866029859),
				CFrame.new(-0.100005262, 1.49997783, -0.173194915, 0.984938622, -0.171012864, -0.0261079669, 0.171011686, 0.939692199, 0.296198815, -0.0261065066, -0.296198487, 0.954771042),
				CFrame.new(1.55997992, 0.600023985, -0.496356547, 0.433018357, -0.750008225, 0.500013709, 0.866026461, 0.499998212, 1.801709e-06, -0.249996096, 0.433009237, 0.866029859),
				CFrame.new(-0.510781586, 0.89997524, -0.686506629, -0.296202958, -0.813806593, -0.500013709, -0.939693034, 0.342019022, -1.801709e-06, 0.171007261, 0.469842136, -0.866029859),
				CFrame.new(0.975441694, -1.79999304, -0.250189304, 0.750009537, -0.433016449, 0.500013709, 0.500001013, 0.866024911, 1.801709e-06, -0.433007956, 0.249998584, 0.866029859),
				CFrame.new(-0.282589972, -1.79999781, -0.149757206, 0.813807786, -0.296199739, 0.500013709, 0.34202078, 0.939692438, 1.801709e-06, -0.469841361, 0.171009272, 0.866029859)
			}, .4, false)
		end;
		c.WalkSpeed = 16;
		m = false
	end;
	function aimassist()
		coroutine.wrap(function()
			for a0 = 1, 2 do
				so(613361563, i, 1, .2)
				swait(3)
			end
		end)()
		local bG = Instance.new("BoolValue", b)
		bG.Name = "targetcool"
		z:AddItem(bG, 10)
		for a0, aQ in pairs(workspace:GetDescendants()) do
			if aQ:IsA("Model") and aQ ~= b and aQ:FindFirstChildOfClass("Humanoid") then
				for bM, M in pairs(aQ:children'') do
					if M:IsA("BasePart") then
						local bN = Instance.new("BoxHandleAdornment", a:FindFirstChildOfClass("PlayerGui"))
						bN.Adornee = M;
						bN.AlwaysOnTop = true;
						bN.Size = M.Size + Vector3.new(.1, .1, .1)
						bN.Color3 = Color3.new(1, 0, 0)
						bN.Transparency = 1;
						bN.ZIndex = 5;
						coroutine.wrap(function()
							repeat
								swait()
							until aQ:FindFirstChildOfClass("Humanoid").Health <= 0;
							bN:Destroy()
						end)()
						coroutine.wrap(function()
							bN.Transparency = .5;
							swait(300)
							bN:Destroy()
						end)()
					end
				end
			end
		end
	end;
	local bP = game.Players.LocalPlayer:GetMouse()
	local bQ = bP.Button1Down;
	local bR = bP.Button1Up;
	local bS = bP.KeyDown;
	local bT = bP.KeyUp;
	fighting = false;
	bQ:connect(function()
		if m == false then
			if A == "Knife" then
				knifestab()
			elseif A == "Pistol" then
				pistolshoot()
			elseif A == "Shotgun" then
				shotgunshoot()
			elseif A == "Sniper" then
				snipershoot()
			end
		end
	end)
	local bU = 0;
	bS:connect(function(bV)
		bV = bV:lower()
		if bV == 'm' then
			if bn.IsPlaying == true then
				bn:Stop()
			elseif bn.IsPaused == true then
				bn:Play()
			end
		end;
		if m == false then
			if bV == 'z' then
				if n ~= "Fall" and n ~= "Jump" then
					doge()
				end
			elseif bV == 'x' then
				if A ~= "Knife" then
					wepknifestab()
				else
					silentstab()
				end
			elseif bV == 'f' and b:FindFirstChild("healcool") == nil then
				heal()
			elseif bV == 'g' and b:FindFirstChild("targetcool") == nil then
				aimassist()
			elseif bV == 'h' then
				so(115959318, i, 1, 1)
				if aI.Enabled == true then
					aI.Enabled = false
				else
					aI.Enabled = true
				end
			elseif bV == 'c' then
				if A ~= "Pistol" and C > 0 then
					pistol2shoot()
				elseif A == "Pistol" and C > 1 then
					silentpist()
				end
			elseif bV == 'q' then
				goleft()
			elseif bV == 'e' then
				goright()
			elseif bV == 'r' then
				m = true;
				c.WalkSpeed = 1;
				if A == "Pistol" then
					pistolrel()
				elseif A == "Shotgun" then
					shotgunreload()
				elseif A == "Sniper" then
					sniperreload()
				end;
				c.WalkSpeed = 16;
				m = false
			elseif bV == 't' then
				switchweps("Pistol")
			elseif bV == 'y' then
				switchweps("Shotgun")
			elseif bV == 'u' then
				switchweps("Sniper")
			end
		end
	end)
	coroutine.wrap(function()
		while 1 do
			swait()
			if w <= 360 then
				w = w + 2
			else
				w = 0
			end
		end
	end)()
	while true do
		swait()
		while true do
			swait()
			if h:FindFirstChild("mus") == nil then
				bn = Instance.new("Sound", h)
				bn.Name = "mus"
				bn.SoundId = "rbxassetid://1205101253"
				bn.Looped = true;
				bn.Volume = 1;
				bn:Play()
			end;
			s = (k.Velocity * Vector3.new(1, 0, 1)).magnitude;
			t = k.Velocity.y;
			u = u + v;
			local bW, bz = rayCast(k.Position, CFrame.new(k.Position, k.Position - Vector3.new(0, 1, 0)).lookVector, 4, b)
			if k.Velocity.y > 1 and bW == nil then
				n = "Jump"
				if m == false then
					PlayAnimationFromTable({
						CFrame.new(0, 0.0382082276, -0.0403150208, 1, 0, 0, 0, 0.984807849, 0.173647985, 0, -0.173647985, 0.984807849),
						CFrame.new(0, 1.46579528, 0.0939689279, 1, 0, 0, 0, 0.939692855, -0.342019796, 0, 0.342019796, 0.939692855),
						CFrame.new(1.20945489, -0.213504896, 3.55388607e-07, 0.939692736, 0.342019916, 1.53461215e-07, -0.342019945, 0.939692736, 1.93715096e-07, -8.56816769e-08, -2.23517418e-07, 1.00000012),
						CFrame.new(-1.20945573, -0.213503733, 5.0439985e-07, 0.939692736, -0.342019916, -1.53461215e-07, 0.342019945, 0.939692736, 1.93715096e-07, 8.56816769e-08, -2.23517418e-07, 1.00000012),
						CFrame.new(0.5, -1.99739456, -0.0180913229, 1, 0, 0, 0, 1.00000012, 0, 0, 0, 1.00000012),
						CFrame.new(-0.5, -1.30000103, -0.39999947, 1, 0, 0, 0, 0.939692676, 0.342020601, 0, -0.342020601, 0.939692676)
					}, .3, false)
				end
			elseif k.Velocity.y < -1 and bW == nil then
				n = "Fall"
				if m == false then
					PlayAnimationFromTable({
						CFrame.new(0, -0.0646628663, 0.0399149321, 1, 0, 0, 0, 0.984807849, -0.173647985, 0, 0.173647985, 0.984807849),
						CFrame.new(0, 1.4913609, -0.128171027, 1, 0, 0, 0, 0.939692855, 0.342019796, 0, -0.342019796, 0.939692855),
						CFrame.new(1.55285025, 0.466259956, -9.26282269e-08, 0.766043842, -0.642788351, -6.46188241e-08, 0.642788291, 0.766043961, -7.4505806e-08, 1.04308128e-07, 1.49011612e-08, 1.00000012),
						CFrame.new(-1.5605253, 0.475036323, -2.10609159e-07, 0.766043842, 0.642788351, 6.46188241e-08, -0.642788291, 0.766043961, -7.4505806e-08, -1.04308128e-07, 1.49011612e-08, 1.00000012),
						CFrame.new(0.500000954, -1.9973948, -0.0180922765, 1, 0, 0, 0, 1.00000012, 0, 0, 0, 1.00000012),
						CFrame.new(-0.499999046, -1.30000043, -0.400000483, 1, 0, 0, 0, 0.939692855, 0.342019796, 0, -0.342019796, 0.939692855)
					}, .3, false)
				end
			elseif s < 1 and bW ~= nil then
				n = "Idle"
				if m == false then
					v = 1;
					if A == "Knife" then
						PlayAnimationFromTable({
							CFrame.new(0.0746685266, -0.199986786, 0.0124222934, 0.766045094, -9.74504874e-05, 0.642788053, 2.38779321e-05, 1, 0.000123149191, -0.64278698, -7.8932324e-05, 0.766041338) * CFrame.new(0, -.05 * math.cos(u / 10), 0),
							CFrame.new(0.0141649693, 1.48263907, -0.132771969, 0.766045034, 0.111642726, -0.633017421, -9.78431926e-05, 0.984821558, 0.173570558, 0.642788112, -0.132900283, 0.754424751),
							CFrame.new(0.496542722, 0.915112793, -0.579361618, -2.45400588e-06, 0.866030455, 0.499991298, 1, 6.99437805e-06, -7.20722892e-06, -9.73872375e-06, 0.499992907, -0.866027057),
							CFrame.new(-0.853593588, 0.548475266, -0.539758563, -2.98023224e-06, -0.500000715, -0.866025209, -0.939693391, 0.296197772, -0.171006888, 0.342017472, 0.813794196, -0.469849944),
							CFrame.new(0.628544927, -1.80001187, -0.15317668, 0.766045034, -1.95977918e-07, -0.642787039, 1.56815432e-07, 1, -1.17666787e-07, 0.642788112, -1.05792424e-08, 0.766041219) * CFrame.new(0, .05 * math.cos(u / 10), 0),
							CFrame.new(-0.766495645, -1.72321808, 0.461590618, 0.86602658, 0.249998271, -0.433011591, 4.77322828e-07, 0.866025925, 0.499999166, 0.49999994, -0.433010906, 0.749998212) * CFrame.new(0, .05 * math.cos(u / 10), 0)
						}, .3, false)
					elseif A == "Pistol" then
						PlayAnimationFromTable({
							CFrame.new(0, 0, 0, 0.499999166, -7.89761714e-07, 0.866025329, 1.24944251e-08, 1.00000143, -9.25385962e-07, -0.866025865, -4.76837158e-07, 0.499998331) * CFrame.new(0, -.05 * math.cos(u / 10), 0),
							CFrame.new(1.41561031e-06, 1.49998701, 1.01327896e-06, 0.49240312, 0.0868238658, -0.866025865, -0.173648998, 0.984809101, -4.76837158e-07, 0.852868617, 0.150382623, 0.499998331),
							CFrame.new(1.67497301, 0.733016193, 0.303117812, 0.433011949, -0.866025865, 0.249999687, 0.500000238, -4.76837158e-07, -0.866026938, 0.749999404, 0.499998331, 0.433013648),
							CFrame.new(-1.49999261, -3.8444914e-06, 7.30986267e-06, 0.939692736, 0.342020005, 1.78813934e-07, -0.342020422, 0.939693928, 1.06019513e-06, 1.1920929e-06, -2.65240669e-06, 0.999999046),
							CFrame.new(0.499994516, -2.00000048, 1.52587891e-05, 0.766043723, 1.24944251e-08, -0.642788589, -5.80049061e-07, 1.00000143, -7.07089043e-07, 0.642788231, -9.25385962e-07, 0.766042709) * CFrame.new(0, .05 * math.cos(u / 10), 0),
							CFrame.new(-0.499984771, -1.99999857, 9.37584991e-06, 1, 1.24944251e-08, 2.08616257e-07, 1.24944251e-08, 1.00000143, -9.25385962e-07, 2.08616257e-07, -9.25385962e-07, 0.999999046) * CFrame.new(0, .05 * math.cos(u / 10), 0)
						}, .3, false)
					elseif A == "Shotgun" then
						PlayAnimationFromTable({
							CFrame.new(-0.0426620394, 2.51418419e-06, -0.0246679522, 0.500000179, 5.2477586e-05, -0.866025448, -3.59067781e-05, 1, 3.98651027e-05, 0.866025448, 1.11636218e-05, 0.500000179) * CFrame.new(0, -.05 * math.cos(u / 10), 0),
							CFrame.new(0.0426683947, 1.49997485, -0.0245293416, 0.500000179, -3.59067781e-05, 0.866025448, 5.2477586e-05, 1, 1.11636218e-05, -0.866025448, 3.98651027e-05, 0.500000179),
							CFrame.new(1.00722325, 0.250857353, -0.795783043, 0.500129044, 0.865951002, 8.28499979e-05, 0.000158182564, 4.31700028e-06, -1, -0.865951002, 0.500129044, -0.000134819289),
							CFrame.new(-1.26435232, 0.136160329, -1.06736159, 0.0593797639, 0.336818933, 0.939695358, 0.984803379, -0.173673585, 2.03969612e-05, 0.163207144, 0.925413907, -0.342013031),
							CFrame.new(0.500045896, -2.00000477, 1.52588036e-05, 1.00000024, 3.63797881e-12, 0, 3.63797881e-12, 1, -5.45696821e-12, 0, -5.45696821e-12, 1.00000024) * CFrame.new(0, .05 * math.cos(u / 10), 0),
							CFrame.new(-0.500028968, -2.00000453, -1.60932541e-05, 0.5, -1.55070466e-05, 0.866025567, 3.21887783e-05, 1, -6.78202923e-07, -0.866025567, 2.82153978e-05, 0.5) * CFrame.new(0, .05 * math.cos(u / 10), 0)
						}, .3, false)
					elseif A == "Sniper" then
						PlayAnimationFromTable({
							CFrame.new(3.85120393e-06, -1.10001469, -2.13328894e-06, 0.500000775, -4.97785209e-07, -0.86602819, -6.30748218e-08, 1.00000429, 5.48360163e-07, 0.866023958, 2.05408242e-07, 0.499997199) * CFrame.new(0, -.05 * math.cos(u / 10), 0),
							CFrame.new(2.99547736e-07, 1.49999404, 1.32609884e-07, 0.642788053, 1.99700139e-07, 0.766043067, 8.77411566e-08, 1.00000429, 2.01807097e-07, -0.766047895, 8.84073188e-08, 0.642785251),
							CFrame.new(0.889702976, 0.352095068, -0.842586815, 0.342016101, 0.883022606, 0.321395069, 1.65737663e-06, 0.342022061, -0.939695477, -0.939696133, 0.321387529, 0.116974011),
							CFrame.new(-1.27161205, -0.221690938, -0.73963666, -0.0593927503, 0.331705749, 0.941510677, 0.939696431, 0.336823493, -0.0593884364, -0.336821496, 0.881204367, -0.331710666),
							CFrame.new(0.95132339, -1.22446179, 0.145100519, 0.500000775, -0.866023958, 1.99700139e-07, 3.86582464e-08, -2.05408242e-07, 1.00000429, -0.86602819, -0.499997199, 8.84073188e-08) * CFrame.new(0, .05 * math.cos(u / 10), 0),
							CFrame.new(-0.75982666, -0.900000334, -0.150002122, 0.500000775, 1.99700139e-07, 0.866023958, 3.86582464e-08, 1.00000429, 2.05408242e-07, -0.86602819, 8.84073188e-08, 0.499997199) * CFrame.new(0, .05 * math.cos(u / 10), 0)
						}, .3, false)
					end
				end
			elseif s > 2 and bW ~= nil then
				n = "Walk"
				if m == false then
					c.WalkSpeed = 16;
					if A == "Knife" then
						PlayAnimationFromTable({
							CFrame.new(0.0746246725, 1.01619426e-05, 0.0124369636, 0.766044021, -9.74504219e-05, 0.642788172, 2.38778302e-05, 1, 0.000123149352, -0.642788112, -7.89324113e-05, 0.766043961) * CFrame.new(0, 0 - .08 * math.cos(u / 2.5), 0) * CFrame.Angles(0, math.rad(5 * math.cos(u / 5)), 0),
							CFrame.new(0.014163442, 1.48263991, -0.132773906, 0.766043961, 0.111642919, -0.633018553, -9.78431272e-05, 0.984821498, 0.173570558, 0.642788231, -0.13290073, 0.754427373) * CFrame.Angles(0, math.rad(0 - 2.5 * math.cos(u / 5)), 0),
							CFrame.new(0.555779755, 0.727167428, -0.545163274, -0.296201736, 0.813801408, 0.499991775, 0.939690292, 0.342026591, -7.70784391e-06, -0.171016783, 0.469835162, -0.866030097),
							CFrame.new(-0.730001986, 0.322316647, -0.685232282, -0.321397692, -0.383022875, -0.866023779, -0.52945435, 0.830923796, -0.171008542, 0.785099864, 0.403558135, -0.469850183),
							CFrame.new(0.435748369, -2.00001574, 0.0766026974, 0.766043961, -1.95868779e-07, -0.642788172, 1.5686895e-07, 1, -1.17754098e-07, 0.642788231, -1.06228981e-08, 0.766043901) * CFrame.new(0, 0, 0 + .5 * math.cos(u / 5)) * CFrame.Angles(math.rad(0 - 30 * math.cos(u / 5)), 0, 0),
							CFrame.new(-0.499964535, -2.00001693, -2.40653753e-05, 0.86602515, -4.59083822e-07, -0.500000417, 4.77219146e-07, 1, -9.15897544e-08, 0.500000477, -1.59285264e-07, 0.86602515) * CFrame.new(0, 0, 0 - .5 * math.cos(u / 5)) * CFrame.Angles(math.rad(0 + 30 * math.cos(u / 5)), 0, 0)
						}, .3, false)
					elseif A == "Pistol" then
						PlayAnimationFromTable({
							CFrame.new(0, 0, 0, 0.499999762, -3.17524768e-06, 0.866023242, 4.99771886e-08, 1.00000572, -3.70154703e-06, -0.866025567, -1.89737557e-06, 0.499996424) * CFrame.new(0, 0 - .08 * math.cos(u / 2.5), 0) * CFrame.Angles(0, math.rad(5 * math.cos(u / 5)), 0),
							CFrame.new(-1.40070915e-06, 1.49999928, -8.10623169e-06, 0.492403686, 0.0868240073, -0.866025567, -0.173652098, 0.984812915, -1.89737557e-06, 0.852867067, 0.150379539, 0.499996424) * CFrame.Angles(0, math.rad(0 - 2.5 * math.cos(u / 5)), 0),
							CFrame.new(1.67498815, 0.733019531, 0.303111434, 0.433012426, -0.866025567, 0.24999994, 0.500000298, -1.89737557e-06, -0.866031885, 0.749996185, 0.499996424, 0.433014989),
							CFrame.new(-1.50000703, 1.25168447e-06, 6.29892929e-06, 0.939692795, 0.342020035, 7.74860382e-07, -0.342021823, 0.939697981, -1.71595684e-06, 2.77161598e-06, -5.02169132e-06, 0.999996245),
							CFrame.new(0.41340223, -2.00000691, 0.0500117987, 0.500000358, 4.27572111e-08, -0.866025209, -5.98500174e-06, 1.00000286, -3.46378215e-06, 0.866024017, 3.2134858e-06, 0.499998689) * CFrame.new(0, 0, 0 + .5 * math.cos(u / 5)) * CFrame.Angles(math.rad(0 - 30 * math.cos(u / 5)), 0, 0),
							CFrame.new(-0.549988985, -2.00000405, -0.0865873098, 0.500000358, 4.27572111e-08, -0.866025209, -5.98500174e-06, 1.00000286, -3.46378215e-06, 0.866024017, 3.2134858e-06, 0.499998689) * CFrame.new(0, 0, 0 - .5 * math.cos(u / 5)) * CFrame.Angles(math.rad(0 + 30 * math.cos(u / 5)), 0, 0)
						}, .3, false)
					elseif A == "Shotgun" then
						PlayAnimationFromTable({
							CFrame.new(-0.0426630676, 6.07051561e-07, -0.0246853493, 0.500000179, 5.24788447e-05, -0.866025507, -3.5907171e-05, 1.00000763, 3.98638804e-05, 0.866038442, 1.11629015e-05, 0.500007689) * CFrame.new(0, 0 - .08 * math.cos(u / 2.5), 0) * CFrame.Angles(0, math.rad(5 * math.cos(u / 5)), 0),
							CFrame.new(0.0426706225, 1.49999774, -0.0245324671, 0.500000179, -3.5907171e-05, 0.866038442, 5.24788447e-05, 1.00000763, 1.11629015e-05, -0.866025507, 3.98638804e-05, 0.500007689) * CFrame.Angles(0, math.rad(0 - 2.5 * math.cos(u / 5)), 0),
							CFrame.new(1.00722933, 0.250861168, -0.795779645, 0.500129044, 0.865963995, 8.28503107e-05, 0.000158184659, 4.31629815e-06, -1.00000763, -0.865951061, 0.500136554, -0.000134818169),
							CFrame.new(-1.26439309, 0.136162177, -1.06738305, 0.0593814775, 0.336828679, 0.939703763, 0.984810889, -0.173674926, 2.03973486e-05, 0.163208127, 0.925419688, -0.342008293),
							CFrame.new(0.564297915, -2.00001669, -0.0766125619, 0.642791092, -1.60755535e-05, 0.766049147, 2.44625789e-05, 1.00000381, 4.58258e-07, -0.766042113, 1.8443603e-05, 0.642793655) * CFrame.new(0, 0, 0 + .5 * math.cos(u / 5)) * CFrame.Angles(math.rad(0 - 30 * math.cos(u / 5)), 0, 0),
							CFrame.new(-0.413438678, -2.00003505, 0.0499768406, 0.5, -1.5507263e-05, 0.866038561, 3.21898951e-05, 1.00000763, -6.78901415e-07, -0.866025627, 2.82142992e-05, 0.50000751) * CFrame.new(0, 0, 0 - .5 * math.cos(u / 5)) * CFrame.Angles(math.rad(0 + 30 * math.cos(u / 5)), 0, 0)
						}, .3, false)
					elseif A == "Sniper" then
						PlayAnimationFromTable({
							CFrame.new(0, 0, 0, 1, 7.21867011e-13, 0, 7.21867011e-13, 1, 0, 0, 0, 1) * CFrame.new(0, 0 - .08 * math.cos(u / 2.5), 0) * CFrame.Angles(0, math.rad(0 + 10 * math.cos(u / 5)), 0),
							CFrame.new(3.81469818e-06, 1.50000954, 0, 1, 7.21867011e-13, 0, 7.21867011e-13, 1, 0, 0, 0, 1) * CFrame.Angles(0, math.rad(0 - 2.5 * math.cos(u / 5)), 0),
							CFrame.new(0.827048123, -0.0171520263, -0.697202504, 0.342014849, 0.925418496, 0.163176477, -0.321393013, 0.278374583, -0.905104458, -0.883024514, 0.257115424, 0.392631322),
							CFrame.new(-1.4085362, 0.219689652, -0.208836868, 0.999541581, 0.0292580184, 0.0077994708, -0.0127596147, 0.640579522, -0.767785847, -0.0274600741, 0.767334282, 0.640659094),
							CFrame.new(0.500015259, -2.00003576, -1.52587891e-05, 1, 7.21867011e-13, 0, 7.21867011e-13, 1, 0, 0, 0, 1) * CFrame.new(0, 0, 0 + .5 * math.cos(u / 5)) * CFrame.Angles(math.rad(0 - 30 * math.cos(u / 5)), 0, 0),
							CFrame.new(-0.499992371, -2.0000248, 0, 1, 7.21867011e-13, 0, 7.21867011e-13, 1, 0, 0, 0, 1) * CFrame.new(0, 0, 0 - .5 * math.cos(u / 5)) * CFrame.Angles(math.rad(0 + 30 * math.cos(u / 5)), 0, 0)
						}, .3, false)
					end
				end
			end
		end
	end
end)
ScriptsTab:NewButton('Defoko (an original) **', 'her chararacter item is rice and an RPG wtf', function()
	function rmesh(a)
		if not(workspace[game.Players.LocalPlayer.Name][a].Handle:FindFirstChild('Mesh') or workspace[game.Players.LocalPlayer.Name][a].Handle:FindFirstChild('SpecialMesh')) then
			return
		end;
		old = game.Players.LocalPlayer.Character;
		game.Players.LocalPlayer.Character = workspace[game.Players.LocalPlayer.Name]
		for b, c in next, workspace[game.Players.LocalPlayer.Name]:FindFirstChild(a).Handle:GetDescendants() do
			if c:IsA('Mesh') or c:IsA('SpecialMesh') then
				c:Remove()
			end
		end;
		for b = 1, 2 do
			game.Players.LocalPlayer.Character = old
		end
	end;
	_reanimate()
	game.Players.LocalPlayer.Character.Humanoid.Animator:Destroy()
	game.Players.LocalPlayer.Character.Animate:Destroy()
	IT = Instance.new;
	CF = CFrame.new;
	VT = Vector3.new;
	RAD = math.rad;
	C3 = Color3.new;
	UD2 = UDim2.new;
	BRICKC = BrickColor.new;
	ANGLES = CFrame.Angles;
	EULER = CFrame.fromEulerAnglesXYZ;
	COS = math.cos;
	ACOS = math.acos;
	SIN = math.sin;
	ASIN = math.asin;
	ABS = math.abs;
	MRANDOM = math.random;
	FLOOR = math.floor;
	speed = 1;
	sine = 1;
	srv = game:GetService('RunService')
	reanim = game.Players.LocalPlayer.Character;
	function hat(d, e, f, g, m)
		reanim[d].Handle.AccessoryWeld.Part1 = reanim[e]
		reanim[d].Handle.AccessoryWeld.C1 = f or CFrame.new()
		reanim[d].Handle.AccessoryWeld.C0 = reanim[d].Handle.AccessoryWeld.C0:Lerp(g or CFrame.new(), 1)
		if m == true then
			rmesh(d)
		end
	end;
	m = game.Players.LocalPlayer:GetMouse()
	RJ = reanim.HumanoidRootPart.RootJoint;
	RS = reanim.Torso['Right Shoulder']
	LS = reanim.Torso['Left Shoulder']
	RH = reanim.Torso['Right Hip']
	LH = reanim.Torso['Left Hip']
	Root = reanim.HumanoidRootPart;
	NECK = reanim.Torso.Neck;
	NECK.C0 = CF(0, 1, 0) * ANGLES(RAD(0), RAD(0), RAD(0))
	NECK.C1 = CF(0, -0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(0))
	RJ.C1 = CF(0, -1, 0) * ANGLES(RAD(0), RAD(0), RAD(0))
	RJ.C0 = CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0))
	RS.C1 = CF(0, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(0))
	LS.C1 = CF(0, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(0))
	RH.C1 = CF(0, 1, 0) * ANGLES(RAD(0), RAD(0), RAD(0))
	LH.C1 = CF(0, 1, 0) * ANGLES(RAD(0), RAD(0), RAD(0))
	RH.C0 = CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0))
	LH.C0 = CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0))
	RS.C0 = CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0))
	LS.C0 = CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0))
	local h = false;
	local i = false;
	hat('Cartoony Rainbow Launcher', 'Left Arm', CFrame.new(0, 0, 0), CFrame.new(0.2 + 0 * math["cos"](sine / 10), -1.2 + 0 * math["cos"](sine / 10), 0.35 + 0 * math["cos"](sine / 10)) * CFrame.Angles(math.rad(60 + 0 * math["cos"](sine / 10)), math.rad(50 + 0 * math["cos"](sine / 10)), math.rad(-250 + 0 * math["cos"](sine / 10))), false)
	reanim.Humanoid.WalkSpeed = 20;
	coroutine.wrap(function()
		while true do
			if HumanDied then
				break
			end;
			sine = sine + speed;
			local j = Ray.new(reanim["Right Leg"].Position + Vector3.new(0, 0.5, 0), Vector3.new(0, -2, 0))
			local k, l = workspace:FindPartOnRay(j, char)
			local n = Ray.new(reanim["Left Leg"].Position + Vector3.new(0, 0.5, 0), Vector3.new(0, -2, 0))
			local o, p = workspace:FindPartOnRay(n, char)
			local q = (Root.Velocity * Root.CFrame.rightVector).X + (Root.Velocity * Root.CFrame.rightVector).Z;
			local r = (Root.Velocity * Root.CFrame.lookVector).X + (Root.Velocity * Root.CFrame.lookVector).Z;
			if r > reanim.Humanoid.WalkSpeed then
				r = reanim.Humanoid.WalkSpeed
			end;
			if r < -reanim.Humanoid.WalkSpeed then
				r = -reanim.Humanoid.WalkSpeed
			end;
			if q > reanim.Humanoid.WalkSpeed then
				q = reanim.Humanoid.WalkSpeed
			end;
			if q < -reanim.Humanoid.WalkSpeed then
				q = -reanim.Humanoid.WalkSpeed
			end;
			local s = r / reanim.Humanoid.WalkSpeed;
			local t = q / reanim.Humanoid.WalkSpeed;
			if Root.Velocity.y < -1 then
				NECK.C0 = NECK.C0:Lerp(CFrame.new(0 + 0 * math.cos(sine / 10), 1 + 0 * math.cos(sine / 10), 0 + 0 * math.cos(sine / 10)) * CFrame.Angles(math.rad(-10 + 0 * math.cos(sine / 10)), math.rad(0 + 0 * math.cos(sine / 10)), math.rad(0 + 0 * math.cos(sine / 10))), .2)
				RJ.C0 = RJ.C0:Lerp(CFrame.new(0 + 0 * math.cos(sine / 10), -1 + 0 * math.cos(sine / 10), 0 + 0 * math.cos(sine / 10)) * CFrame.Angles(math.rad(0 + 0 * math.cos(sine / 10)), math.rad(0 + 0 * math.cos(sine / 10)), math.rad(0 + 0 * math.cos(sine / 10))), .2)
				RS.C0 = RS.C0:Lerp(CFrame.new(1.4 + 0 * math.cos(sine / 10), 0 + 0.03 * math.sin(sine / 30), -0.14 + 0 * math.cos(sine / 10)) * CFrame.Angles(math.rad(36.15 + 0 * math.cos(sine / 10)), math.rad(-9.7 + 0 * math.cos(sine / 10)), math.rad(-40.27 + 0 * math.cos(sine / 10))), .2)
				LS.C0 = LS.C0:Lerp(CFrame.new(-1.22 + 0 * math.cos(sine / 10), 0.2 + 0.03 * math.sin(sine / 30), -0.4 + 0 * math.cos(sine / 10)) * CFrame.Angles(math.rad(36.15 + 0 * math.cos(sine / 10)), math.rad(-9.7 + 0 * math.cos(sine / 10)), math.rad(59.08 + 0 * math.cos(sine / 10))), .2)
				RH.C0 = RH.C0:Lerp(CFrame.new(0.5 + 0 * math.cos(sine / 10), -0.8 + 0 * math.cos(sine / 10), -0.4 + 0 * math.cos(sine / 10)) * CFrame.Angles(math.rad(7 + 0 * math.sin(sine / 10)), math.rad(0 + 0 * math.cos(sine / 10)), math.rad(0 + 0 * math.cos(sine / 10))), .2)
				LH.C0 = LH.C0:Lerp(CFrame.new(-0.5 + 0 * math.cos(sine / 10), -1 + 0 * math.cos(sine / 10), 0 + 0 * math.cos(sine / 10)) * CFrame.Angles(math.rad(-17.34 + 0 * math.sin(sine / 10)), math.rad(0 + 0 * math.cos(sine / 10)), math.rad(0 + 0 * math.cos(sine / 10))), .2)
			elseif reanim.Humanoid.Jump then
				if not h then
					hat('Cartoony Rainbow Launcher', 'Left Arm', CFrame.new(0, 0, 0), CFrame.new(0.2 + 0 * math["cos"](sine / 10), -1.2 + 0 * math["cos"](sine / 10), 0.35 + 0 * math["cos"](sine / 10)) * CFrame.Angles(math.rad(60 + 0 * math["cos"](sine / 10)), math.rad(50 + 0 * math["cos"](sine / 10)), math.rad(-250 + 0 * math["cos"](sine / 10))), false)
					NECK.C0 = NECK.C0:Lerp(CFrame.new(0 + 0 * math.cos(sine / 10), 1 + 0 * math.cos(sine / 10), 0 + 0 * math.cos(sine / 10)) * CFrame.Angles(math.rad(15 + 0 * math.cos(sine / 10)), math.rad(0 + 0 * math.cos(sine / 10)), math.rad(0 + 0 * math.cos(sine / 10))), .2)
					RJ.C0 = RJ.C0:Lerp(CFrame.new(0 + 0 * math.cos(sine / 10), -1 + 0 * math.cos(sine / 10), 0 + 0 * math.cos(sine / 10)) * CFrame.Angles(math.rad(0 + 0 * math.cos(sine / 10)), math.rad(0 + 0 * math.cos(sine / 10)), math.rad(0 + 0 * math.cos(sine / 10))), .2)
					RS.C0 = RS.C0:Lerp(CFrame.new(1.4 + 0 * math.cos(sine / 10), 0 + 0.03 * math.sin(sine / 30), -0.14 + 0 * math.cos(sine / 10)) * CFrame.Angles(math.rad(36.15 + 0 * math.cos(sine / 10)), math.rad(-9.7 + 0 * math.cos(sine / 10)), math.rad(-40.27 + 0 * math.cos(sine / 10))), .2)
					LS.C0 = LS.C0:Lerp(CFrame.new(-1.22 + 0 * math.cos(sine / 10), 0.2 + 0.03 * math.sin(sine / 30), -0.4 + 0 * math.cos(sine / 10)) * CFrame.Angles(math.rad(36.15 + 0 * math.cos(sine / 10)), math.rad(-9.7 + 0 * math.cos(sine / 10)), math.rad(59.08 + 0 * math.cos(sine / 10))), .2)
					RH.C0 = RH.C0:Lerp(CFrame.new(0.5 + 0 * math.cos(sine / 10), -0.7 + 0 * math.cos(sine / 10), -0.7 + 0 * math.cos(sine / 10)) * CFrame.Angles(math.rad(12 + 0 * math.sin(sine / 10)), math.rad(0 + 0 * math.cos(sine / 10)), math.rad(0 + 0 * math.cos(sine / 10))), .2)
					LH.C0 = LH.C0:Lerp(CFrame.new(-0.5 + 0 * math.cos(sine / 10), -1 + 0 * math.cos(sine / 10), 0.3 + 0 * math.cos(sine / 10)) * CFrame.Angles(math.rad(-17.34 + 0 * math.sin(sine / 10)), math.rad(0 + 0 * math.cos(sine / 10)), math.rad(0 + 0 * math.cos(sine / 10))), .2)
				end
			elseif Root.Velocity.Magnitude < 2 then
				if not h then
					if not i then
						NECK.C0 = NECK.C0:Lerp(CFrame.new(0 + 0 * math.cos(sine / 10), 1 + 0 * math.cos(sine / 10), 0 + 0 * math.cos(sine / 10)) * CFrame.Angles(math.rad(0 + 0 * math.cos(sine / 10)), math.rad(0 + 0 * math.cos(sine / 10)), math.rad(0 + 0 * math.cos(sine / 10))), .2)
						RJ.C0 = RJ.C0:Lerp(CFrame.new(0 + 0 * math.cos(sine / 10), -1 + 0.03 * math.sin(sine / 35), 0 + 0 * math.cos(sine / 10)) * CFrame.Angles(math.rad(0 + 0 * math.cos(sine / 10)), math.rad(0 + 0 * math.cos(sine / 10)), math.rad(0 + 0 * math.cos(sine / 10))), .2)
						RS.C0 = RS.C0:Lerp(CFrame.new(1.4 + 0 * math.cos(sine / 10), 0 + 0.04 * math.sin(sine / 30), -0.14 + 0 * math.cos(sine / 10)) * CFrame.Angles(math.rad(36.15 + 0 * math.cos(sine / 10)), math.rad(-9.7 + 0 * math.cos(sine / 10)), math.rad(-40.27 + 0 * math.cos(sine / 10))), .2)
						LS.C0 = LS.C0:Lerp(CFrame.new(-1.22 + 0 * math.cos(sine / 10), 0.2 + 0.04 * math.sin(sine / 30), -0.4 + 0 * math.cos(sine / 10)) * CFrame.Angles(math.rad(36.15 + 0 * math.cos(sine / 10)), math.rad(-9.7 + 0 * math.cos(sine / 10)), math.rad(59.08 + 0 * math.cos(sine / 10))), .2)
						RH.C0 = RH.C0:Lerp(CFrame.new(0.5 + 0 * math.cos(sine / 10), -1 + 0 * math.cos(sine / 10), 0 + 0 * math.cos(sine / 10)) * CFrame.Angles(math.rad(0 + 0 * math.cos(sine / 10)), math.rad(0 + 0 * math.cos(sine / 10)), math.rad(0 + 0 * math.cos(sine / 10))), .2)
						LH.C0 = LH.C0:Lerp(CFrame.new(-0.5 + 0 * math.cos(sine / 10), -1 + 0 * math.cos(sine / 10), 0 + 0 * math.cos(sine / 10)) * CFrame.Angles(math.rad(0 + 0 * math.cos(sine / 10)), math.rad(0 + 0 * math.cos(sine / 10)), math.rad(0 + 0 * math.cos(sine / 10))), .2)
					else
						NECK.C0 = NECK.C0:Lerp(CFrame.new(0 + 0 * math.cos(sine / 10), 1 + 0 * math.cos(sine / 10), 0 + 0 * math.cos(sine / 10)) * CFrame.Angles(math.rad(0 + 0 * math.cos(sine / 10)), math.rad(0 + 0 * math.cos(sine / 10)), math.rad(0 + 0 * math.cos(sine / 10))), .2)
						RJ.C0 = RJ.C0:Lerp(CFrame.new(0 + 0 * math.cos(sine / 10), -2 + 0 * math.cos(sine / 10), 0 + 0 * math.cos(sine / 10)) * CFrame.Angles(math.rad(0 + 0 * math.cos(sine / 10)), math.rad(0 + 0 * math.cos(sine / 10)), math.rad(0 + 0 * math.cos(sine / 10))), .2)
						RH.C0 = RH.C0:Lerp(CFrame.new(0.5 + 0 * math.cos(sine / 10), -0.2 + 0 * math.cos(sine / 10), -0.7 + 0 * math.cos(sine / 10)) * CFrame.Angles(math.rad(20 + 0 * math.cos(sine / 10)), math.rad(0 + 0 * math.cos(sine / 10)), math.rad(0 + 0 * math.cos(sine / 10))), .2)
						LH.C0 = LH.C0:Lerp(CFrame.new(-0.5 + 0 * math.cos(sine / 10), -1.5 + 0 * math.cos(sine / 10), 0 + 0 * math.cos(sine / 10)) * CFrame.Angles(math.rad(-90 + 0 * math.cos(sine / 10)), math.rad(0 + 0 * math.cos(sine / 10)), math.rad(0 + 0 * math.cos(sine / 10))), .2)
					end
				else
					NECK.C0 = NECK.C0:Lerp(CFrame.new(0 + 0 * math.cos(sine / 10), 1 + 0 * math.cos(sine / 10), 0 + 0 * math.cos(sine / 10)) * CFrame.Angles(math.rad(-9.7 + 0 * math.cos(sine / 10)), math.rad(0 + 0 * math.cos(sine / 10)), math.rad(0 + 0 * math.cos(sine / 10))), .2)
					RJ.C0 = RJ.C0:Lerp(CFrame.new(0 + 0 * math.cos(sine / 10), -3 + 0.04 * math.sin(sine / 46.15), 0 + 0 * math.cos(sine / 10)) * CFrame.Angles(math.rad(11 + 0 * math.cos(sine / 10)), math.rad(0 + 0 * math.cos(sine / 10)), math.rad(0 + 0 * math.cos(sine / 10))), .2)
					RH.C0 = RH.C0:Lerp(CFrame.new(0.5 + 0 * math.cos(sine / 10), -0.8 + 0.03 * math.sin(sine / 34.21), -0.5 + 0 * math.cos(sine / 10)) * CFrame.Angles(math.rad(82 + 0 * math.cos(sine / 10)), math.rad(0 + 0 * math.cos(sine / 10)), math.rad(0 + 0 * math.cos(sine / 10))), .2)
					LH.C0 = LH.C0:Lerp(CFrame.new(-0.5 + 0 * math.cos(sine / 10), -0.14 + 0.03 * math.sin(sine / 34), -0.5 + 0 * math.cos(sine / 10)) * CFrame.Angles(math.rad(43.79 + 0 * math.cos(sine / 10)), math.rad(0 + 0 * math.cos(sine / 10)), math.rad(0 + 0 * math.cos(sine / 10))), .2)
				end
			elseif Root.Velocity.Magnitude < 20 then
				NECK.C0 = NECK.C0:Lerp(CFrame.new(0 + 0 * math.cos(sine / 10), 1 + 0 * math.cos(sine / 10), 0 + 0 * math.cos(sine / 10)) * CFrame.Angles(math.rad(0 + 0 * math.cos(sine / 10)), math.rad(0 + 0 * math.cos(sine / 10)), math.rad(0 + 0 * math.cos(sine / 10))), .2)
				RJ.C0 = RJ.C0:Lerp(CFrame.new(0 + 0 * math.cos(sine / 10), -1 + 0.02 * math.sin(sine / 35), 0 + 0 * math.cos(sine / 10)) * CFrame.Angles(math.rad(0 + 0 * math.cos(sine / 10)), math.rad(0 + 0 * math.cos(sine / 10)), math.rad(0 + 0 * math.cos(sine / 10))), .2)
				RS.C0 = RS.C0:Lerp(CFrame.new(1.4 + 0 * math.cos(sine / 10), 0 + 0.05 * math.sin(sine / 30), -0.14 + 0 * math.cos(sine / 10)) * CFrame.Angles(math.rad(36.15 + 0 * math.cos(sine / 10)), math.rad(-9.7 + 0 * math.cos(sine / 10)), math.rad(-40.27 + 0 * math.cos(sine / 10))), .2)
				LS.C0 = LS.C0:Lerp(CFrame.new(-1.22 + 0 * math.cos(sine / 10), 0.2 + 0.05 * math.sin(sine / 30), -0.4 + 0 * math.cos(sine / 10)) * CFrame.Angles(math.rad(36.15 + 0 * math.cos(sine / 10)), math.rad(-9.7 + 0 * math.cos(sine / 10)), math.rad(59.08 + 0 * math.cos(sine / 10))), .2)
				RH.C0 = RH.C0:Lerp(CFrame.new(0.5 + 0 * math.cos(sine / 15), -1 + 0.1 * math.cos(sine / 15), -0.2 + 0.1 * math.cos(sine / 15)) * CFrame.Angles(math.rad(0 + 45 * math.sin(sine / 12)), math.rad(0 + 0 * math.cos(sine / 10)), math.rad(0 + 0 * math.cos(sine / 10))), .2)
				LH.C0 = LH.C0:Lerp(CFrame.new(-0.5 + 0 * math.cos(sine / 15), -1 + 0.1 * math.cos(sine / 15), -0.2 + 0.1 * math.cos(sine / 15)) * CFrame.Angles(math.rad(0 + -45 * math.sin(sine / 12)), math.rad(0 + 0 * math.cos(sine / 10)), math.rad(0 + 0 * math.cos(sine / 10))), .2)
			elseif Root.Velocity.Magnitude > 20 then
				NECK.C0 = NECK.C0:Lerp(CFrame.new(0 + 0 * math.cos(sine / 10), 1 + 0 * math.cos(sine / 10), 0 + 0 * math.cos(sine / 10)) * CFrame.Angles(math.rad(0 + 0 * math.cos(sine / 10)), math.rad(0 + 0 * math.cos(sine / 10)), math.rad(0 + 0 * math.cos(sine / 10))), .2)
				RJ.C0 = RJ.C0:Lerp(CFrame.new(0 + 0 * math.cos(sine / 10), -1 + 0.02 * math.sin(sine / 35), 0 + 0 * math.cos(sine / 10)) * CFrame.Angles(math.rad(0 + 0 * math.cos(sine / 10)), math.rad(0 + 0 * math.cos(sine / 10)), math.rad(0 + 0 * math.cos(sine / 10))), .2)
				RS.C0 = RS.C0:Lerp(CFrame.new(1.4 + 0 * math.cos(sine / 10), 0 + 0.05 * math.sin(sine / 30), -0.14 + 0 * math.cos(sine / 10)) * CFrame.Angles(math.rad(36.15 + 0 * math.cos(sine / 10)), math.rad(-9.7 + 0 * math.cos(sine / 10)), math.rad(-40.27 + 0 * math.cos(sine / 10))), .2)
				LS.C0 = LS.C0:Lerp(CFrame.new(-1.22 + 0 * math.cos(sine / 10), 0.2 + 0.05 * math.sin(sine / 30), -0.4 + 0 * math.cos(sine / 10)) * CFrame.Angles(math.rad(36.15 + 0 * math.cos(sine / 10)), math.rad(-9.7 + 0 * math.cos(sine / 10)), math.rad(59.08 + 0 * math.cos(sine / 10))), .2)
				RH.C0 = RH.C0:Lerp(CFrame.new(0.5 + 0 * math.cos(sine / 15), -1 + 0.1 * math.cos(sine / 15), -0.2 + 0.1 * math.cos(sine / 15)) * CFrame.Angles(math.rad(0 + 45 * math.sin(sine / 12)), math.rad(0 + 0 * math.cos(sine / 10)), math.rad(0 + 0 * math.cos(sine / 10))), .2)
				LH.C0 = LH.C0:Lerp(CFrame.new(-0.5 + 0 * math.cos(sine / 15), -1 + 0.1 * math.cos(sine / 15), -0.2 + 0.1 * math.cos(sine / 15)) * CFrame.Angles(math.rad(0 + -45 * math.sin(sine / 12)), math.rad(0 + 0 * math.cos(sine / 10)), math.rad(0 + 0 * math.cos(sine / 10))), .2)
			end;
			srv.RenderStepped:Wait()
		end
	end)()
	local function u(v)
		if v == 0 or v == nil then
			game:service'RunService'.RenderStepped:Wait()
		else
			for b = 0, v do
				game:service'RunService'.RenderStepped:Wait()
			end
		end
	end;
	game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(w)
		if w == 'f' and i == false then
			h = not h;
			if h then
				reanim.Humanoid.WalkSpeed = 0;
				reanim.Humanoid.JumpPower = 0;
				hat('Cartoony Rainbow Launcher', 'Torso', CFrame.new(0, 0, 0), CFrame.new(0 + 0 * math["cos"](sine / 10), 0 + 0 * math["cos"](sine / 10), -0.6 + 0 * math["cos"](sine / 10)) * CFrame.Angles(math.rad(0 + 0 * math["cos"](sine / 10)), math.rad(0 + 0 * math["cos"](sine / 10)), math.rad(0 + 0 * math["cos"](sine / 10))), false)
				for x = 0, 2, 0.1 do
					RS.C0 = RS.C0:Lerp(CFrame.new(1.5 + 0 * math.cos(sine / 10), 0.5 + 0.03 * math.sin(sine / 34.21), 0 + 0 * math.cos(sine / 10)) * CFrame.Angles(math.rad(-9.7 + 0 * math.cos(sine / 10)), math.rad(0 + 0 * math.cos(sine / 10)), math.rad(9.7 + 0 * math.cos(sine / 10))), .2)
					LS.C0 = LS.C0:Lerp(CFrame.new(-1.5 + 0 * math.cos(sine / 10), 0.5 + 0.03 * math.cos(sine / 34), 0 + 0 * math.cos(sine / 10)) * CFrame.Angles(math.rad(-9.7 + 0 * math.cos(sine / 10)), math.rad(0 + 0 * math.cos(sine / 10)), math.rad(-9.7 + 0 * math.cos(sine / 10))), .2)
					u()
				end
			else
				reanim.Humanoid.WalkSpeed = 20;
				reanim.Humanoid.JumpPower = 50;
				hat('Cartoony Rainbow Launcher', 'Left Arm', CFrame.new(0, 0, 0), CFrame.new(0.2 + 0 * math["cos"](sine / 10), -1.2 + 0 * math["cos"](sine / 10), 0.35 + 0 * math["cos"](sine / 10)) * CFrame.Angles(math.rad(60 + 0 * math["cos"](sine / 10)), math.rad(50 + 0 * math["cos"](sine / 10)), math.rad(-250 + 0 * math["cos"](sine / 10))), false)
			end
		end
	end)
	game.Players.LocalPlayer:GetMouse().Button1Down:Connect(function(w)
		if i == false then
			local y = game.Players.LocalPlayer:GetMouse().Target;
			if y then
				task.wait()
				i = true;
				if not h then
					reanim.Humanoid.WalkSpeed = 0;
					reanim.Humanoid.JumpPower = 0
				end;
				hat('Cartoony Rainbow Launcher', 'Right Arm', CFrame.new(0, 0, 0), CFrame.new(0.6 + 0 * math["cos"](sine / 10), -0.7 + 0 * math["cos"](sine / 10), 0.3 + 0 * math["cos"](sine / 10)) * CFrame.Angles(math.rad(90 + 0 * math["cos"](sine / 10)), math.rad(51.44 + 0 * math["cos"](sine / 10)), math.rad(-292.45 + 0 * math["cos"](sine / 10))), false)
				for x = 0, 2, 0.1 do
					RS.C0 = RS.C0:Lerp(CFrame.new(1.3 + 0 * math.cos(sine / 10), 0.4 + 0 * math.cos(sine / 10), 0 + 0.4 * math.cos(sine / 10)) * CFrame.Angles(math.rad(87 + 0 * math.cos(sine / 10)), math.rad(0 + 0 * math.cos(sine / 10)), math.rad(-20 + 0 * math.cos(sine / 10))), .2)
					LS.C0 = LS.C0:Lerp(CFrame.new(-0.7 + 0 * math.cos(sine / 10), 0.5 + 0 * math.cos(sine / 10), -0.5 + 0 * math.cos(sine / 10)) * CFrame.Angles(math.rad(0 + 0 * math.cos(sine / 10)), math.rad(20.87 + 0 * math.cos(sine / 10)), math.rad(82 + 0 * math.cos(sine / 10))), .2)
					u()
				end;
				u(40)
				for x = 0, 1, 0.1 do
					RS.C0 = RS.C0:Lerp(CFrame.new(1.3 + 0 * math.cos(sine / 10), 0.4 + 0 * math.cos(sine / 10), 0 + 0.5 * math.cos(sine / 1.7)) * CFrame.Angles(math.rad(87 + 0 * math.cos(sine / 10)), math.rad(0 + 0 * math.cos(sine / 10)), math.rad(-20 + 0 * math.cos(sine / 10))), .2)
					u()
				end;
				wait(0.5)
				for x = 0, 2, 0.1 do
					hat('Cartoony Rainbow Launcher', 'Torso', CFrame.new(0, 0, 0), CFrame.new(0 + 0 * math["cos"](sine / 10), 0 + 0 * math["cos"](sine / 10), -0.6 + 0 * math["cos"](sine / 10)) * CFrame.Angles(math.rad(0 + 0 * math["cos"](sine / 10)), math.rad(0 + 0 * math["cos"](sine / 10)), math.rad(0 + 0 * math["cos"](sine / 10))), false)
					RS.C0 = RS.C0:Lerp(CFrame.new(1.5 + 0 * math.cos(sine / 10), 0.5 + 0.02 * math.sin(sine / 34.21), 0 + 0 * math.cos(sine / 10)) * CFrame.Angles(math.rad(-9.7 + 0 * math.cos(sine / 10)), math.rad(0 + 0 * math.cos(sine / 10)), math.rad(9.7 + 0 * math.cos(sine / 10))), .2)
					LS.C0 = LS.C0:Lerp(CFrame.new(-1.5 + 0 * math.cos(sine / 10), 0.5 + 0.02 * math.cos(sine / 34), 0 + 0 * math.cos(sine / 10)) * CFrame.Angles(math.rad(-9.7 + 0 * math.cos(sine / 10)), math.rad(0 + 0 * math.cos(sine / 10)), math.rad(-9.7 + 0 * math.cos(sine / 10))), .2)
					u()
				end;
				if not h then
					reanim.Humanoid.WalkSpeed = 20;
					reanim.Humanoid.JumpPower = 50;
					hat('Cartoony Rainbow Launcher', 'Left Arm', CFrame.new(0, 0, 0), CFrame.new(0.2 + 0 * math["cos"](sine / 10), -1.2 + 0 * math["cos"](sine / 10), 0.35 + 0 * math["cos"](sine / 10)) * CFrame.Angles(math.rad(60 + 0 * math["cos"](sine / 10)), math.rad(50 + 0 * math["cos"](sine / 10)), math.rad(-250 + 0 * math["cos"](sine / 10))), false)
				end;
				i = false
			end
		end;
		game.Players.LocalPlayer:GetMouse().Button1Up:Wait()
	end)
end)

ScriptsTab:NewButton('Strato Glitcher **', 'its just spinning swords yet its cool', function()

	_reanimate()
	local a = game:GetObjects("rbxassetid://9253561804")[1]
	a.Parent = workspace.non;
	FELOADLIBRARY = {}
	loadstring(game:GetObjects("rbxassetid://5209815302")[1].Source)()
	local b = FELOADLIBRARY;
	local c = game.Players.LocalPlayer.Character;
	local function d(e, f, g)
		local h = f;
		h.Handle:BreakJoints()
		local i = Instance.new("Weld", c)
		i.Name = e.Parent.Name;
		i.Part1 = h.Handle;
		i.Part0 = e;
		i.C0 = g
	end;
	local function j(k)
		for l, m in next, c:GetChildren() do
			if m:IsA('Accessory') and m.Name == 'MeshPartAccessory' then
				if m.Handle:FindFirstChildOfClass('SpecialMesh') then
					if m.Handle.SpecialMesh.MeshId:match('%d+') == '4315410540' then
						if m.Handle.SpecialMesh.TextureId:match('%d+') == tostring(k) then
							return m
						end
					end
				end
			end
		end
	end;
	local n = {
		[1] = j('4506940486'),
		[2] = j('4794299274'),
		[3] = j('4315250791'),
		[4] = j('4458626951'),
		[5] = c:FindFirstChild('ShatteredGreatsword'),
		[6] = c:FindFirstChild('Meshes/machinedemon_meshAccessory')
	}
	local o = setmetatable({}, {
		__call = function(l, o)
			local l, o = pcall(game.GetService, game, o)
			return o or nil
		end
	})
	local math = setmetatable({
		random = function(p, q)
			if p and q then
				return Random.new():NextInteger(p, q)
			elseif not p and not q then
				return Random.new():NextNumber(0, 1)
			end
		end
	}, {
		__index = math
	})
	local Instance = setmetatable({
		new = function(r, s)
			if typeof(s) == "nil" then
				local l, r = pcall(Instance.new, r)
				return r or nil
			end;
			if typeof(s) == "Instance" then
				local l, r = pcall(Instance.new, r, s)
				return r or nil
			end;
			if typeof(s) == "table" then
				local l, r = pcall(Instance.new, r)
				for t, u in pairs(s) do
					pcall(function()
						if t ~= "Parent" then
							r[t] = u
						end
					end)
				end;
				if s.Parent then
					r.Parent = s.Parent
				end;
				return r
			end
		end
	}, {
		__index = Instance
	})
	local v = {
		"StratosphericAero",
		"KnottyEeveez",
		"GunsForGunsKidd",
		"Avix_G",
		"AccountAgeReplicate",
		"Birdmaid",
		"DerpzDeNugget_YT",
		"dinkydoo58",
		"divineMoai",
		"doz_koob",
		"Helkern",
		"IWonderWhoAuntySara",
		"Jon180018",
		"loplkc",
		"NawThaiError",
		"OGNintendofan",
		"sakke03",
		"Salvo_Starly",
		"Ssyync"
	}
	local w = false;
	local x = 1;
	local y = 1;
	local z, A = {}, {}
	for B = 1, 6 do
		z[B] = true
	end;
	for B = 7, 12 do
		z[B] = false
	end;
	for B = 1, 12 do
		A[B] = nil
	end;
	local C = {
		Z = true,
		X = true
	}
	local D = game.Players.LocalPlayer;
	local E = D;
	local F = D.Character;
	local G = a["moai's stupid effect replication"].Whatever;
	local H = a.CRLoaderGui;
	local I = H.CR_Loader.waht;
	I.event.Value = G;
	I.moduler.Value = a["moai's stupid effect replication"].stupidAnimThing;
	local J = pcall;
	local K = {}
	function pcallo(L)
		local M, N = J(L)
		if not M and not K[N] then
			print(N)
			K[N] = true
		end;
		return M, N
	end;
	local pcall = pcallo;
	local O = o("Players"):GetPlayerFromCharacter(a.Parent)
	local E = O;
	local P = workspace.non;
	local Q = P.Humanoid;
	local R = CFrame.new;
	a.Parent = E.Character;
	local S, T, U, V, W, X, Y, Z, _, a0, a1 = math.rad, math.cos, math.sin, math.min, math.sqrt, math.acos, math.asin, math.floor, math.random, math.huge, math.pi;
	local a2, a3 = coroutine.create, coroutine.resume;
	local a4, a5 = .1;
	local a6 = 0;
	local a7 = 1;
	local a8 = 0;
	local a9 = 1;
	P:WaitForChild("Animate"):Destroy()
	P:FindFirstChildOfClass("Humanoid"):WaitForChild("Animator"):Destroy()
	local F = P;
	local aa = F.Torso;
	local ab = F["Right Arm"]
	local ac = F["Left Arm"]
	local ad = F["Left Leg"]
	local ae = F["Right Leg"]
	local af = F["Right Arm"]
	local ag = F["Left Arm"]
	local ah = F["Right Leg"]
	local ai = F["Left Leg"]
	local aj = aa["Left Shoulder"]
	local ak = aa["Left Hip"]
	local al = aa["Right Shoulder"]
	local am = aa["Right Hip"]
	local an, ao = Instance.new("Motor6D", {
		Name = "Right Shoulder"
	}), Instance.new("Motor6D", {
		Name = "Left Shoulder"
	})
	local ak = aa["Left Hip"]
	local am = aa["Right Hip"]
	local ap = F.Head;
	local aq = 1;
	Q.MaxHealth = a0;
	Q.Health = a0;
	Q.Name = "Humanoid"
	function QuaternionFromCFrame(ar)
		local as, at, au, av, aw, ax, ay, az, aA, aB, aC, aD = ar:components()
		local aE = av + az + aD;
		if aE > 0 then
			local aF = W(1 + aE)
			local aG = .5 / aF;
			return (aC - aA) * aG, (ax - aB) * aG, (ay - aw) * aG, aF * .5
		else
			local B = 0;
			if az > av then
				B = 1
			end;
			if aD > (B == 0 and av or az) then
				B = 2
			end;
			if B == 0 then
				local aF = W(av - az - aD + 1)
				local aG = .5 / aF;
				return .5 * aF, (ay + aw) * aG, (aB + ax) * aG, (aC - aA) * aG
			elseif B == 1 then
				local aF = W(az - aD - av + 1)
				local aG = .5 / aF;
				return (aw + ay) * aG, .5 * aF, (aC + aA) * aG, (ax - aB) * aG
			elseif B == 2 then
				local aF = W(aD - av - az + 1)
				local aG = .5 / aF;
				return (ax + aB) * aG, (aA + aC) * aG, .5 * aF, (ay - aw) * aG
			end
		end
	end;
	function QuaternionToCFrame(aH, aI, aJ, aK, aL, aM, aN)
		local aO, aP, aQ = aK + aK, aL + aL, aM + aM;
		local aR, aS, aT = aN * aO, aN * aP, aN * aQ;
		local aU, aV, aW, aX, aY, aZ = aK * aO, aK * aP, aK * aQ, aL * aP, aL * aQ, aM * aQ;
		return CFrame.new(aH, aI, aJ, 1 - (aX + aZ), aV - aT, aW + aS, aV + aT, 1 - (aU + aZ), aY - aR, aW - aS, aY + aR, 1 - (aU + aX))
	end;
	function QuaternionSlerp(p, q, a_)
		local b0 = p[1] * q[1] + p[2] * q[2] + p[3] * q[3] + p[4] * q[4]
		local b1, b2;
		if b0 >= .0001 then
			if 1 - b0 > .0001 then
				local b3 = X(b0)
				local b4 = 1 / U(b3)
				b1 = U((1 - a_) * b3) * b4;
				b2 = U(a_ * b3) * b4
			else
				b1 = 1 - a_;
				b2 = a_
			end
		else
			if 1 + b0 > .0001 then
				local b3 = X(-b0)
				local b4 = 1 / U(b3)
				b1 = U((a_ - 1) * b3) * b4;
				b2 = U(a_ * b3) * b4
			else
				b1 = a_ - 1;
				b2 = a_
			end
		end;
		return p[1] * b1 + q[1] * b2, p[2] * b1 + q[2] * b2, p[3] * b1 + q[3] * b2, p[4] * b1 + q[4] * b2
	end;
	function clerp(p, q, a_)
		local b5, b6 = {
			QuaternionFromCFrame(p)
		}, {
			QuaternionFromCFrame(q)
		}
		local b7, b8, b9 = p.X, p.Y, p.Z;
		local ba, bb, bc = q.X, q.Y, q.Z;
		local bd = 1 - a_;
		return QuaternionToCFrame(bd * b7 + a_ * ba, bd * b8 + a_ * bb, bd * b9 + a_ * bc, QuaternionSlerp(b5, b6, a_))
	end;
	local be = CFrame.fromEulerAnglesXYZ;
	local ar = CFrame.new;
	local bf = CFrame.Angles;
	local bg = ar(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
	local bh = ar(0, -.5, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
	local bi = ar(-1, -1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
	local bj = ar(-.5, 1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
	local bk = ar(1, -1, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
	local bl = ar(.5, 1, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
	local bm = F.HumanoidRootPart;
	local bn = bm.RootJoint;
	local bo = be(-(a1 / 2), 0, a1)
	local bp = F:WaitForChild'HumanoidRootPart'
	local bq = E;
	local br = F;
	local bs = br.Torso["Right Shoulder"]
	local bt = br.Torso["Left Shoulder"]
	bs.Parent = nil;
	bt.Parent = nil;
	an.Part0 = br.Torso;
	an.C0 = ar(1.5, .5, 0) * be(1.3, 0, -.5)
	an.C1 = ar(0, .5, 0)
	an.Part1 = br["Right Arm"]
	an.Parent = br.Torso;
	ao.Part0 = br.Torso;
	ao.C0 = ar(-1.5, .5, 0) * be(1.7, 0, .8)
	ao.C1 = ar(0, .5, 0)
	ao.Part1 = br["Left Arm"]
	ao.Parent = br.Torso;
	Q.WalkSpeed = 16;
	Q.JumpPower = 100;
	local bu = a.Wings;
	local bv = bu;
	local bw = a.ScriptObjects.MotorFolder;
	local D = a.Parent;
	local bx = bu.Wing1;
	local by = Instance.new("WeldConstraint", a.Wings.Wing1)
	by.Part0 = bu.Wing1.Main;
	by.Part1 = bu.Wing1.Secondary;
	d(bx.Main, n[1], CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(90), 0, math.rad(-45)))
	local bz = Instance.new("Motor6D", bw)
	bz.Part0 = aa;
	bz.Part1 = bu.Wing1.Center;
	local bA = bx:Clone()
	bA.Name = "Wing2"
	bA.Parent = bu;
	d(bA.Main, n[2], CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(90), 0, math.rad(-45)))
	local bB = Instance.new('Motor6D', bw)
	bB.Part0 = aa;
	bB.Part1 = bu.Wing2.Center;
	local bC = bx:Clone()
	bC.Name = "Wing3"
	bC.Parent = bu;
	d(bC.Main, n[3], CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(90), 0, math.rad(-45)))
	local bD = Instance.new('Motor6D', bw)
	bD.Part0 = aa;
	bD.Part1 = bu.Wing3.Center;
	local bE = bx:Clone()
	bE.Name = "Wing4"
	bE.Parent = bu;
	d(bE.Main, n[4], CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(90), 0, math.rad(-45)))
	local bF = Instance.new('Motor6D', bw)
	bF.Part0 = aa;
	bF.Part1 = bu.Wing4.Center;
	local bG = bx:Clone()
	bG.Name = "Wing5"
	bG.Parent = bu;
	d(bG.Main, n[5], CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(90), 0, math.rad(-90)))
	local bH = Instance.new('Motor6D', bw)
	bH.Part0 = aa;
	bH.Part1 = bu.Wing5.Center;
	local bI = bx:Clone()
	bI.Name = "Wing6"
	bI.Parent = bu;
	d(bI.Main, n[6], CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(90), 0, math.rad(90)))
	local bJ = Instance.new('Motor6D', bw)
	bJ.Part0 = aa;
	bJ.Part1 = bu.Wing6.Center;
	local bK = Instance.new("Motor6D", {
		Part0 = bv.Wing1.Main,
		Part1 = bv.Wing1.MainRing,
		Parent = bv.Wing1
	})
	local bL = Instance.new("Motor6D", {
		Part0 = bv.Wing1.MainRing,
		Part1 = bv.Wing1.SecondaryRing,
		Parent = bv.Wing1
	})
	local bM = Instance.new("Motor6D", bv.Wing2)
	bM.Part0 = bv.Wing2.Main;
	bM.Part1 = bv.Wing2.MainRing;
	local bN = Instance.new("Motor6D", bv.Wing2)
	bN.Part0 = bv.Wing2.MainRing;
	bN.Part1 = bv.Wing2.SecondaryRing;
	local bO = Instance.new("Motor6D", bv.Wing3)
	bO.Part0 = bv.Wing3.Main;
	bO.Part1 = bv.Wing3.MainRing;
	local bP = Instance.new("Motor6D", bv.Wing3)
	bP.Part0 = bv.Wing3.MainRing;
	bP.Part1 = bv.Wing3.SecondaryRing;
	local bQ = Instance.new("Motor6D", bv.Wing4)
	bQ.Part0 = bv.Wing4.Main;
	bQ.Part1 = bv.Wing4.MainRing;
	local bR = Instance.new("Motor6D", bv.Wing4)
	bR.Part0 = bv.Wing4.MainRing;
	bR.Part1 = bv.Wing4.SecondaryRing;
	local bS = Instance.new("Motor6D", bv.Wing5)
	bS.Part0 = bv.Wing5.Main;
	bS.Part1 = bv.Wing5.MainRing;
	local bT = Instance.new("Motor6D", bv.Wing5)
	bT.Part0 = bv.Wing5.MainRing;
	bT.Part1 = bv.Wing5.SecondaryRing;
	local bU = Instance.new("Motor6D", bv.Wing6)
	bU.Part0 = bv.Wing6.Main;
	bU.Part1 = bv.Wing6.MainRing;
	local bV = Instance.new("Motor6D", bv.Wing6)
	bV.Part0 = bv.Wing6.MainRing;
	bV.Part1 = bv.Wing6.SecondaryRing;
	local bW = Instance.new("Folder", bu)
	bW.Name = "M o r e"
	local bX = bx:Clone()
	bX.Name = "Wing7"
	bX.Parent = bW;
	bX.MainRing:Destroy()
	bX.SecondaryRing:Destroy()
	local bY = Instance.new('Motor6D', bw)
	bY.Part0 = aa;
	bY.Part1 = bW.Wing7.Center;
	local bZ = bx:Clone()
	bZ.Name = "Wing8"
	bZ.Parent = bW;
	bZ.MainRing:Destroy()
	bZ.SecondaryRing:Destroy()
	local b_ = Instance.new('Motor6D', bw)
	b_.Part0 = aa;
	b_.Part1 = bW.Wing8.Center;
	local c0 = bx:Clone()
	c0.Name = "Wing9"
	c0.Parent = bW;
	c0.MainRing:Destroy()
	c0.SecondaryRing:Destroy()
	local c1 = Instance.new('Motor6D', bw)
	c1.Part0 = aa;
	c1.Part1 = bW.Wing9.Center;
	local c2 = bx:Clone()
	c2.Name = "Wing10"
	c2.Parent = bW;
	c2.MainRing:Destroy()
	c2.SecondaryRing:Destroy()
	local c3 = Instance.new('Motor6D', bw)
	c3.Part0 = aa;
	c3.Part1 = bW.Wing10.Center;
	local c4 = bx:Clone()
	c4.Name = "Wing11"
	c4.Parent = bW;
	c4.MainRing:Destroy()
	c4.SecondaryRing:Destroy()
	local c5 = Instance.new('Motor6D', bw)
	c5.Part0 = aa;
	c5.Part1 = bW.Wing11.Center;
	local c6 = bx:Clone()
	c6.Name = "Wing12"
	c6.Parent = bW;
	c6.MainRing:Destroy()
	c6.SecondaryRing:Destroy()
	local c7 = Instance.new('Motor6D', bw)
	c7.Part0 = aa;
	c7.Part1 = bW.Wing12.Center;
	local c8 = Instance.new("Color3Value", {
		Value = Color3.fromRGB(113, 111, 165),
		Name = "Color1",
		Parent = a
	})
	local c9 = Instance.new("Color3Value", {
		Value = Color3.fromRGB(90, 112, 255),
		Name = "Color2",
		Parent = a
	})
	a3(a2(function()
		while true do
			swait()
			c8 = Color3.FromRGB(_(0, 255), _(0, 255), _(0, 255))
		end
	end))
	bv.Wing1.Main.Anchored = false;
	bv.Wing1.Secondary.Anchored = false;
	bv.Wing1.Center.Anchored = false;
	bv.Wing2.Main.Anchored = false;
	bv.Wing2.Secondary.Anchored = false;
	bv.Wing2.Center.Anchored = false;
	bv.Wing3.Main.Anchored = false;
	bv.Wing3.Secondary.Anchored = false;
	bv.Wing3.Center.Anchored = false;
	bv.Wing4.Main.Anchored = false;
	bv.Wing4.Secondary.Anchored = false;
	bv.Wing4.Center.Anchored = false;
	bv.Wing5.Main.Anchored = false;
	bv.Wing5.Secondary.Anchored = false;
	bv.Wing5.Center.Anchored = false;
	bv.Wing6.Main.Anchored = false;
	bv.Wing6.Secondary.Anchored = false;
	bv.Wing6.Center.Anchored = false;
	local ca = bv.Wing1;
	local cb = bv.Wing2;
	local cc = bv.Wing3;
	local cd = bv.Wing4;
	local ce = bv.Wing5;
	local cf = bv.Wing6;
	local cg = a.Stratospheric2;
	cg.Parent = bq.PlayerGui;
	function GuiRecolor(ch, ci, cj)
		cg.Frame.Spin1.ImageColor3 = ch;
		cg.Frame.Spin2.ImageColor3 = ci;
		cg.Frame.Spin3.ImageColor3 = ci;
		cg.Frame.Spin4.ImageColor3 = ch;
		cg.Frame.Shine1.ImageColor3 = cj;
		cg.Frame.Shine2.ImageColor3 = cj;
		cg.Frame.Backgound.UIGradient.Color = ColorSequence.new(ci, ch)
		cg.Frame.Backgound.Frame.UIGradient.Color = ColorSequence.new(ch, ci)
		cg.Frame.Glow.UIGradient.Color = ColorSequence.new(ci, ch)
		cg.Frame.Glow.Glow2.UIGradient.Color = ColorSequence.new(ch, ci)
		cg.Frame.MusicGui.Back.ImageColor3 = ch;
		cg.Frame.MusicGui.Back.Glow.ImageColor3 = ci;
		cg.ModeName.UIGradient.Color = ColorSequence.new(ch, ci)
		cg.ModeName.TextTop.TextColor3 = ch;
		for l, m in pairs(cg.Frame.Vis:GetChildren()) do
			m.BackgroundColor3 = ci
		end
	end;
	local ck = Instance.new("StringValue", {
		Value = 1,
		Name = "mog",
		Parent = a
	})
	GuiRecolor(c9.Value, c8.Value, c8.Value)
	function SetMode(cl)
		aq = cl;
		ck.Value = tostring(cl)
		a3(a2(function()
			if aq == "Musical" then
				cg.Frame.MusicGui:TweenPosition(UDim2.new(-.018, 0, .584, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Bounce, 1.5, true)
			elseif cg.Frame.MusicGui.Position ~= "{-.518, 0},{.584, 0}" then
				cg.Frame.MusicGui:TweenPosition(UDim2.new(-.518, 0, .584, 0), Enum.EasingDirection.In, Enum.EasingStyle.Back, .25, true)
			end
		end))
	end;
	local cm;
	function sphere(cn, co, cp, cq, cr, cs, ct, cu, cv, cw, cx, cy)
		local cz = Instance.new("Part", {
			CFrame = cn,
			Size = co,
			Color = cp,
			Material = cq,
			Transparency = cr,
			Anchored = true,
			CanCollide = false,
			CastShadow = false,
			Parent = cm
		})
		local cA = Instance.new("SpecialMesh", {
			MeshType = "Sphere",
			Parent = cz
		})
		local cB = TweenInfo.new(cs, ct, cu, 0, cv, 0)
		local cC = o("TweenService"):Create(cz, cB, cw)
		cC:Play()
		if cx == true then
			a3(a2(function()
				wait(cy)
				cz:Destroy()
			end))
		end
	end;
	function cube(cn, co, cp, cq, cr, cs, ct, cu, cv, cw, cx, cy)
		local cz = Instance.new("Part", {
			CFrame = cn,
			Size = co,
			Color = cp,
			Material = cq,
			Transparency = cr,
			Anchored = true,
			CanCollide = false,
			CastShadow = false,
			Parent = cm
		})
		local cB = TweenInfo.new(cs, ct, cu, 0, cv, 0)
		o("TweenService"):Create(cz, cB, cw):Play()
		if cx == true then
			a3(a2(function()
				wait(cy)
				cz:Destroy()
			end))
		end
	end;
	local cD;
	if workspace:FindFirstChild("Efec") then
		cD = workspace:FindFirstChild("Efec")
	else
		cD = Instance.new("Folder", {
			Name = "Efec",
			Parent = workspace
		})
		cD.Name = "Efec"
	end;
	function WACKYEFFECT(cE)
	end;
	function slash(cF, cG, cp, cq, cr, cs, ct, cu, cv, cw, cx, cy)
		local aF = a.slash:Clone()
		aF.Parent = cm;
		aF.Position = cF;
		aF.Orientation = cG;
		aF.Color = cp;
		aF.Material = cq;
		aF.Transparency = cr;
		local cB = TweenInfo.new(cs, ct, cu, 0, cv, 0)
		o("TweenService"):Create(aF, cB, cw):Play()
		if cx == true then
			a3(a2(function()
				wait(cy)
				aF:Destroy()
			end))
		end
	end;
	local cH = Instance.new("BillboardGui", {
		Enabled = true,
		MaxDistance = 150,
		AlwaysOnTop = false,
		Active = false,
		Size = UDim2.new(5, 0, 1, 0),
		SizeOffset = Vector2.new(0, 4),
		LightInfluence = 0,
		Parent = ap
	})
	local cI = Instance.new("TextLabel", {
		TextColor3 = Color3.fromRGB(113, 111, 165),
		TextStrokeColor3 = Color3.fromRGB(90, 112, 255),
		BackgroundTransparency = 1,
		Font = Enum.Font.SourceSansLight,
		TextSize = 24,
		Text = "AERIAL",
		Size = UDim2.new(2.5, 0, 1.5, 0),
		Position = UDim2.new(-.75, 0, .95, 0),
		TextStrokeTransparency = 0,
		TextTransparency = 0,
		TextWrapped = true,
		TextScaled = true,
		Parent = cH
	})
	local cJ = Instance.new("UIGradient", {
		Enabled = true,
		Parent = cI
	})
	Q.WalkSpeed = 150;
	Q.JumpPower = 100;
	Q.MaxHealth = "inf"
	Q.Health = "inf"
	if true then
		Q.MaxHealth = 5000;
		Q.Health = 5000
	elseif game.PlaceId == 5121279769 then
		Q.MaxHealth = 10000;
		Q.Health = 10000
	elseif game.PlaceId == 2578460148 or game.PlaceId == 3210470091 then
		Q.MaxHealth = 1000000;
		Q.Health = 1000000
	else
		E:Kick("You shouldn't have this.")
	end;
	local cK = Instance.new("PointLight", {
		Brightness = .5,
		Color = Color3.fromRGB(95, 175, 185),
		Range = 15,
		Parent = ad
	})
	local cL = Instance.new("PointLight", {
		Brightness = .5,
		Color = Color3.fromRGB(95, 175, 185),
		Range = 15,
		Parent = ae
	})
	local cM = Instance.new("Sound", {
		PlaybackSpeed = 1.05,
		SoundId = "rbxassetid://3584953190",
		Volume = 4,
		MaxDistance = 1000,
		Playing = true,
		Looped = true,
		Name = "Audio",
		Parent = E.PlayerGui
	})
	cM.Parent = aa;
	local cN = Instance.new("Attachment", {
		Position = Vector3.new(-.4, 0, 0),
		Parent = ab
	})
	local cO = Instance.new("Attachment", {
		Position = Vector3.new(.4, 0, 0),
		Parent = ab
	})
	local cP = Instance.new("Attachment", {
		Position = Vector3.new(-.4, 0, 0),
		Parent = ac
	})
	local cQ = Instance.new("Attachment", {
		Position = Vector3.new(.4, 0, 0),
		Parent = ac
	})
	local cR = Instance.new("Attachment", {
		Position = Vector3.new(-.4, -.7, 0),
		Parent = ae
	})
	local cS = Instance.new("Attachment", {
		Position = Vector3.new(.4, -.7, 0),
		Parent = ae
	})
	local cT = Instance.new("Attachment", {
		Position = Vector3.new(.4, -.7, 0),
		Parent = ad
	})
	local cU = Instance.new("Attachment", {
		Position = Vector3.new(-.4, -.7, 0),
		Parent = ad
	})
	local cV = Instance.new("Trail", ab)
	cV.Attachment0 = cN;
	cV.Attachment1 = cO;
	cV.Color = ColorSequence.new(Color3.fromRGB(95, 155, 255))
	cV.Texture = "rbxassetid://4301778723"
	cV.TextureLength = .8;
	cV.LightEmission = 1;
	cV.LightInfluence = 0;
	cV.FaceCamera = true;
	cV.Enabled = false;
	local cW = Instance.new("Trail", ac)
	cW.Attachment0 = cP;
	cW.Attachment1 = cQ;
	cW.Color = ColorSequence.new(Color3.fromRGB(95, 155, 255))
	cW.Texture = "rbxassetid://4301778723"
	cW.TextureLength = .8;
	cW.LightEmission = 1;
	cW.LightInfluence = 0;
	cW.FaceCamera = true;
	cW.Enabled = false;
	local cX = Instance.new("Trail", ae)
	cX.Attachment0 = cR;
	cX.Attachment1 = cS;
	cX.Color = ColorSequence.new(Color3.fromRGB(95, 155, 255))
	cX.Texture = "rbxassetid://4301778723"
	cX.TextureLength = .8;
	cX.LightEmission = 1;
	cX.LightInfluence = 0;
	cX.FaceCamera = true;
	cX.Enabled = false;
	local cY = Instance.new("Trail", ad)
	cY.Attachment0 = cT;
	cY.Attachment1 = cU;
	cY.Color = ColorSequence.new(Color3.fromRGB(95, 155, 255))
	cY.Texture = "rbxassetid://4301778723"
	cY.TextureLength = .8;
	cY.LightEmission = 1;
	cY.LightInfluence = 0;
	cY.FaceCamera = true;
	cY.Enabled = false;
	local cZ = Instance.new("Decal", {
		Transparency = 0,
		Color3 = Color3.fromRGB(145, 135, 255),
		Face = "Front",
		Texture = "rbxassetid://982528525",
		Name = "Flush"
	})
	local c_ = Instance.new("Motor6D", {
		Part0 = a.ScriptObjects.Moon,
		Part1 = ab,
		C0 = ar(1, 2, 0),
		Parent = ab
	})
	local d0 = 0;
	function Style(d1, d2)
		for l, m in pairs(F:GetDescendants()) do
			if m:IsA("Trail") then
				m.Enabled = d1
			end
		end;
		if d2 == true then
			for l, m in pairs(bv:GetDescendants()) do
				if m.Name == "MainRing" or m.Name == "SecondaryRing" then
					m.Transparency = 0
				end
			end
		else
			for l, m in pairs(bv:GetDescendants()) do
				if m.Name == "MainRing" or m.Name == "SecondaryRing" then
					m.Transparency = 1
				end
			end
		end
	end;
	function NameColorGradient(d3, d4, d5, d6, d7, d8, d9, da, db)
		cH.Enabled = d3;
		cI.Text = d4;
		cI.TextColor3 = d5;
		cI.TextStrokeColor3 = d6;
		cI.Font = Enum.Font[d7]
		cJ.Enabled = d8;
		cJ.Color = ColorSequence.new({
			ColorSequenceKeypoint.new(0, d9),
			ColorSequenceKeypoint.new(1, da)
		})
		cJ.Rotation = db;
		cg.ModeName.Text = d4;
		cg.ModeName.TextTop.Text = d4
	end;
	local bu = a.Wings;
	function nottweenedWingProperties(dc, dd, de, df, dg, dh, di)
		for l, m in pairs(bu:GetDescendants()) do
			if m.Name == "Main" then
				m.Color = dc;
				m.Material = df;
				m.Transparency = dh
			elseif m:IsA("Trail") then
				m.Color = ColorSequence.new(de)
				m.Enabled = true
			elseif m.Name == "Secondary" then
				m.Color = dd;
				m.Material = dg;
				m.Transparency = di
			elseif m.Name == "MainRing" then
				m.Color = dc
			elseif m.Name == "SecondaryRing" then
				m.Color = dd
			end
		end
	end;
	function nottweenedWingProperties2(dj, dc, dd, de, df, dg, dh, di)
		if dj == true then
			for l, m in pairs(a.Wings:GetDescendants()) do
				if m:IsA("Trail") then
					m.Enabled = false
				end
			end;
			for l, m in pairs(a.Wings["M o r e"]:GetDescendants()) do
				if m.Name == "Main" then
					m.Transparency = 0
				elseif m:IsA('Trail') then
					m.Enabled = true
				elseif m.Name == "Secondary" then
					m.Transparency = 0
				end
			end
		elseif dj == false then
			for l, m in pairs(a.Wings:GetDescendants()) do
				if m:IsA("Trail") then
					m.Enabled = true
				end
			end;
			for l, m in pairs(a.Wings["M o r e"]:GetDescendants()) do
				if m.Name == "Main" then
					m.Transparency = 1
				elseif m:IsA('Trail') then
					m.Enabled = false
				elseif m.Name == "Secondary" then
					m.Transparency = 1
				end
			end
		end;
		local dk = TweenInfo.new(.25, Enum.EasingStyle.Linear, Enum.EasingDirection.Out, 0, false)
		for l, m in pairs(a.Wings["M o r e"]:GetDescendants()) do
			if m.Name == "Main" then
				m.Color = dc;
				m.Material = df;
				m.Transparency = dh
			elseif m.ClassName == "Trail" then
				m.Color = ColorSequence.new(de)
			elseif m.Name == "Secondary" then
				m.Color = dd;
				m.Material = dg;
				m.Transparency = di
			end
		end
	end;
	function WingProperties(dc, dd, de, df, dg, dh, di)
		local dk = TweenInfo.new(.25, Enum.EasingStyle.Linear, Enum.EasingDirection.Out, 0, false)
		for B, m in pairs(bu:GetDescendants()) do
			if m.Name == "Main" then
				local dc = o("TweenService"):Create(m, dk, {
					Color = dc
				})
				m.Material = df;
				if z[tonumber(string.sub(m.Parent.Name, 5))] then
					m.Transparency = dh
				end;
				dc:Play()
			elseif m:IsA("Trail") then
				m.Color = ColorSequence.new(de)
				if z[tonumber(string.sub(m.Parent.Parent.Name, 5))] then
					m.Enabled = true
				end
			elseif m.Name == "Secondary" then
				local dl = o("TweenService"):Create(m, dk, {
					Color = dd
				})
				m.Material = dg;
				if z[tonumber(string.sub(m.Parent.Name, 5))] then
					m.Transparency = di
				end;
				dl:Play()
			elseif m.Name == "MainRing" then
				local dm = o("TweenService"):Create(m, dk, {
					Color = dc
				})
				dm:Play()
			elseif m.Name == "SecondaryRing" then
				local dn = o("TweenService"):Create(m, dk, {
					Color = dd
				})
				dn:Play()
			end
		end
	end;
	function WingProperties2(dj, dc, dd, de, df, dg, dh, di)
		if dj == true then
			w = true;
			for B = 7, 12 do
				if not A[B] then
					z[B] = true
				end
			end;
			for l, m in pairs(a.Wings:GetDescendants()) do
				if m:IsA("Trail") then
					m.Enabled = false
				end
			end;
			for l, m in pairs(a.Wings["M o r e"]:GetDescendants()) do
				if z[tonumber(string.sub(m.Parent.Name, 5))] then
					if m.Name == "Main" then
						m.Transparency = 0
					elseif m.Name == "Secondary" then
						m.Transparency = 0
					end
				elseif m:IsA('Trail') and z[tonumber(string.sub(m.Parent.Parent.Name, 5))] then
					m.Enabled = true
				end
			end
		elseif dj == false then
			w = false;
			for B = 7, 12 do
				z[B] = false
			end;
			for l, m in pairs(a.Wings:GetDescendants()) do
				if m:IsA("Trail") then
					if z[tonumber(string.sub(m.Parent.Parent.Name, 5))] then
						m.Enabled = true
					end
				end
			end;
			for l, m in pairs(a.Wings["M o r e"]:GetDescendants()) do
				if m.Name == "Main" then
					m.Transparency = 1
				elseif m:IsA('Trail') then
					m.Enabled = false
				elseif m.Name == "Secondary" then
					m.Transparency = 1
				end
			end
		end;
		local dk = TweenInfo.new(.25, Enum.EasingStyle.Linear, Enum.EasingDirection.Out, 0, false)
		for l, m in pairs(a.Wings["M o r e"]:GetDescendants()) do
			if m.Name == "Main" then
				local dc = o("TweenService"):Create(m, dk, {
					Color = dc
				})
				m.Material = df;
				if z[tonumber(string.sub(m.Parent.Name, 5))] then
					m.Transparency = dh
				end
			elseif m:IsA("Trail") then
				m.Color = ColorSequence.new(de)
			elseif m.Name == "Secondary" then
				local dl = o("TweenService"):Create(m, dk, {
					Color = dd
				})
				m.Material = dg;
				if z[tonumber(string.sub(m.Parent.Name, 5))] then
					m.Transparency = di
				end
			end
		end
	end;
	WingProperties(Color3.fromRGB(113, 111, 165), Color3.fromRGB(90, 112, 255), Color3.fromRGB(90, 112, 255), "Neon", "Neon", 0, 0)
	WingProperties2(false, Color3.fromRGB(0, 0, 0), Color3.fromRGB(0, 0, 0), Color3.fromRGB(0, 0, 0), "Neon", "Neon", 1, 1)
	function LightAndTrailRecolor(dp, dq, dr)
		cL.Color = dp;
		cK.Color = dq;
		for l, m in pairs(F:GetDescendants()) do
			if m:IsA("Trail") then
				m.Color = ColorSequence.new(dr)
			end
		end
	end;
	function alwaysgoforthis(ds, dt, du, dv)
		cM.SoundId = "rbxassetid://" .. ds;
		cM.Volume = dt;
		cM.TimePosition = du;
		cM.PlaybackSpeed = dv;
		cg.Frame.MusicGui.ID.Text = ds;
		cg.Frame.MusicGui.Speed.Text = dv
	end;
	function HumVals(dw, dx)
		Q.WalkSpeed = dw;
		Q.JumpPower = dx
	end;
	function TweenAnimate(dy, dz, dA, ct, cu, dB, dC, dD)
		local dE = TweenInfo.new(dA, Enum.EasingStyle[ct], Enum.EasingDirection[cu], dB, dC, dD)
		local cC = o("TweenService"):Create(dy, dE, dz)
		cC:Play()
		return cC
	end;
	function DoubleJump()
		if x >= 1 then
			x = x - 1;
			local dF = Instance.new("BodyVelocity")
			dF.maxForce = Vector3.new(0, 1, 0)
			dF.velocity = Vector3.new(0, Q.JumpPower, 0)
			dF.Parent = bp;
			local dG = Instance.new("Sound", bp)
			dG.SoundId = "rbxassetid://763755889"
			dG:Play()
			a3(a2(function()
				swait(25)
				dF:Destroy()
				swait(25)
				dG:Destroy()
			end))
		end
	end;
	function GetNearestCharacter()
		local dH = nil;
		local dI = 2147483647;
		for l, dJ in pairs(workspace:GetChildren()) do
			if dJ ~= F then
				local dK = dJ:FindFirstChildOfClass("Humanoid")
				if dK and dK.Health > 0 then
					local dL = dJ:FindFirstChild("Head")
					if dL then
						local dM = (dL.Position - ap.Position).Magnitude;
						if dM < dI then
							dH = dJ;
							dI = dM
						end
					end
				end
			end
		end;
		return dH
	end;
	function ShowDamage(dJ, dN)
		if dJ:FindFirstChild("Head") then
			local dO = Instance.new("BillboardGui", {
				Size = UDim2.new(5, 0, 2.5, 0),
				StudsOffset = Vector3.new(0, 2, 0),
				AlwaysOnTop = true
			})
			local dP = Instance.new("TextLabel")
			dP.AnchorPoint = Vector2.new(.5, .5)
			dP.Position = UDim2.new(.5, 0, .5, 0)
			dP.Rotation = _(-5, 5)
			dP.Size = UDim2.new(1, 0, 1, 0)
			dP.BackgroundTransparency = 1;
			dP.Text = tostring(dN)
			dP.TextColor3 = dN > 0 and Color3.fromRGB(255, 127, 127) or dN == 0 and Color3.fromRGB(191, 191, 191) or dN < 0 and Color3.fromRGB(127, 255, 127)
			dP.TextScaled = true;
			dP.Font = Enum.Font.SourceSansLight;
			dP.TextStrokeTransparency = 1;
			dP.Parent = dO;
			dO.Parent = dJ.Head;
			o("Debris"):AddItem(dO, 5)
			a3(a2(function()
				for B = 1, 60 do
					dO.StudsOffset = Vector3.new(0, 2 + B / 30, 0)
					dP.TextTransparency = B / 60;
					swait()
				end
			end))
		end
	end;
	function DealDamage(dJ, dN)
		if not dJ:FindFirstChildOfClass("ForceField") or aq == 666 then
			local dK = dJ:FindFirstChildOfClass("Humanoid")
			if dK then
				if aq == 666 then
				end;
				ShowDamage(dJ, dN)
				if dK.Health <= 0 then
					print(E.Name .. " game ended " .. dJ.Name .. ".")
				end
			end
		end
	end;
	function DamageCharactersWithin(dQ, dR, dS, dT)
		for l, dJ in pairs(workspace:GetChildren()) do
			if dJ ~= F then
				local dK = dJ:FindFirstChildOfClass("Humanoid")
				if dK and dK.Health > 0 then
					local dL = dJ:FindFirstChild("Head")
					if dL and (dL.Position - dQ).Magnitude <= dR then
						DealDamage(dJ, _(dS, dT))
					end
				end
			end
		end
	end;
	function MakeWingProjectile(dU)
		local dV = nil;
		if dU >= 7 then
			dV = bv["M o r e"]:FindFirstChild("Wing" .. tostring(dU))
		else
			dV = bv:FindFirstChild("Wing" .. tostring(dU))
		end;
		if dV then
			local dW = dV:Clone()
			dW.Name = "Projectile" .. tostring(dU)
			return dW
		end
	end;
	function HideWing(dU)
		local dV = nil;
		if dU >= 7 then
			dV = bv["M o r e"]:FindFirstChild("Wing" .. tostring(dU))
		else
			dV = bv:FindFirstChild("Wing" .. tostring(dU))
		end;
		if dV then
			local dX = {}
			for l, dY in pairs(dV:GetDescendants()) do
				if dY:IsA("BasePart") and dY.Name ~= "Center" then
					dX[dY.Name] = dY.Transparency;
					dY.Transparency = 1
				elseif dY.ClassName == "Trail" then
					dY.Enabled = false
				end
			end;
			return dX
		end
	end;
	function WingUnbrrr(dU, dX)
		local dZ = nil;
		if dU >= 7 then
			if w then
				dZ = bv["M o r e"]:FindFirstChild("Wing" .. tostring(dU))
			end
		else
			dZ = bv:FindFirstChild("Wing" .. tostring(dU))
		end;
		if dZ then
			z[dU] = true;
			for l, d_ in pairs(dZ:GetDescendants()) do
				if d_:IsA("BasePart") and dX[d_.Name] then
					d_.Transparency = dX[d_.Name]
				elseif d_.ClassName == "Trail" then
					d_.Enabled = true
				end
			end
		end
	end;
	function DelayedWingUnbrrr(dU, dX, e0)
		a3(a2(function()
			local e1 = math.ceil(e0 * 60)
			for B = e1, 1, -1 do
				A[dU] = B;
				swait()
			end;
			A[dU] = nil;
			WingUnbrrr(dU, dX)
		end))
	end;
	function WingGoBrrr(dQ, e2)
		if not dQ then
			local dH = GetNearestCharacter()
			if not dH then
				return
			end;
			dQ = dH.Head.Position
		end;
		if not e2 then
			e2 = 1
		end;
		if table.find(v, E.Name) then
			e2 = e2 * y
		end;
		local e3, dU = nil, nil;
		local e4 = 6;
		if w then
			e4 = 12
		end;
		for B = e4, 1, -1 do
			if z[B] then
				if B >= 7 then
					e3 = bv["M o r e"]:FindFirstChild("Wing" .. tostring(B))
				else
					e3 = bv:FindFirstChild("Wing" .. tostring(B))
				end;
				if e3 then
					dU = B;
					break
				end
			end
		end;
		if not e3 then
			print("No wing to brrr. Go home.")
			return
		else
			z[dU] = false
		end;
		local dW = MakeWingProjectile(dU)
		if dU < 7 then
			c['Wing' .. tostring(dU)].Part0 = dW.Main
		end;
		local dX = HideWing(dU)
		local e5 = V(Q.WalkSpeed + 32, 200) * e2 ^ .5;
		local e6 = 12 * e2 ^ .5;
		local e7 = e6 * 2 / 3;
		local e8 = Instance.new("BodyVelocity", dW.Center)
		e8.MaxForce = Vector3.new(0, 0, 0)
		e8.Velocity = (dQ - dW.Center.Position).Unit * e5;
		local e9 = Instance.new("BodyGyro", dW.Center)
		e9.MaxTorque = Vector3.new(500, 500, 500)
		e9.D = 350;
		e9.CFrame = ar(dW.Center.Position, dQ) * bf(0, S(-90), 0)
		dW.Parent = F;
		dW.Center.Velocity = aa.Velocity + dW.Center.CFrame.RightVector * -25 + Vector3.new(_(-10, 10), _(35, 50), _(-10, 10))
		DelayedWingUnbrrr(dU, dX, 3)
		a3(a2(function()
			for B = 1, 10 do
				swait()
			end;
			e8.Velocity = (dQ - dW.Center.Position).Unit * e5;
			e9.CFrame = ar(dW.Center.Position, dQ) * bf(0, S(-90), 0)
			e8.MaxForce = Vector3.new(500, 500, 500)
			for B = 1, 10 do
				swait()
			end;
			for B = 1, 600 do
				swait()
				if B == 600 or (dW.Center.Position - dQ).Magnitude <= e7 or dW.Center.Velocity.Y < 0 and dW.Center.Position.Y < dQ.Y then
					local ea = (dW.Center.Position + dQ) / 2;
					DamageCharactersWithin(ea, e6, 100 * e2, 200 * e2)
					local eb = Instance.new("Explosion")
					eb.BlastRadius = e6;
					eb.BlastPressure = 0;
					eb.DestroyJointRadiusPercent = 0;
					eb.Position = ea;
					eb.Parent = workspace;
					if dU < 7 then
						F['Wing' .. tostring(dU)].Part0 = bu["Wing" .. tostring(dU)].Main
					end;
					dW:Destroy()
					break
				else
					if dU < 7 then
						if c['Wing' .. tostring(dU)].Part1.Position.Magnitude - c.HumanoidRootPart.Position.Magnitude > 100 then
							F['Wing' .. tostring(dU)].Part0 = bu["Wing" .. tostring(dU)].Main
						end
					end;
					e8.Velocity = (dQ - dW.Center.Position).Unit * e5;
					e9.CFrame = ar(dW.Center.Position, dQ) * bf(0, S(-90), 0)
				end
			end
		end))
	end;
	function AeroStrike(dQ, e2)
		if not e2 then
			e2 = 1
		end;
		if table.find(v, E.Name) then
			e2 = e2 * y
		end;
		local ec = 6;
		if w then
			ec = 12
		end;
		local ed = true;
		for B = 1, ec do
			if not z[B] then
				ed = false;
				print("Wing " .. tostring(B) .. " is missing. AeroStriken't.")
				break
			end
		end;
		if not ed then
			return
		end;
		local e5 = V(Q.WalkSpeed + 48, 300) * e2 ^ .5;
		local e6 = 18 * e2 ^ .5;
		local ee = e6 * 1.5;
		if w then
			ee = ee * 2 ^ .5
		end;
		local ef = e5 * .15;
		local e7 = e6 * 2 / 3;
		for B = 1, ec do
			z[B] = false;
			local eg = MakeWingProjectile(B)
			local eh = HideWing(B)
			local ei = _() * 2 * a1;
			local ej = _() ^ .5 * ee;
			local ek = dQ + Vector3.new(-T(ei) * ej, 0, -U(ei) * ej)
			local el = {}
			table.insert(el, eg.Center.Position:Lerp(ek, .25) + Vector3.new(0, e5 * .75, 0))
			table.insert(el, eg.Center.Position:Lerp(ek, .5) + Vector3.new(0, e5, 0))
			table.insert(el, eg.Center.Position:Lerp(ek, .75) + Vector3.new(0, e5 * .75, 0))
			table.insert(el, ek)
			local e8 = Instance.new("BodyVelocity", eg.Center)
			e8.MaxForce = Vector3.new(0, 0, 0)
			e8.Velocity = (el[1] - eg.Center.Position).Unit * e5;
			local e9 = Instance.new("BodyGyro", eg.Center)
			e9.MaxTorque = Vector3.new(500, 500, 500)
			e9.D = 350;
			e9.CFrame = ar(eg.Center.Position, el[1]) * bf(0, S(-90), 0)
			eg.Parent = F;
			eg.Center.Velocity = aa.Velocity + eg.Center.CFrame.RightVector * -25 + Vector3.new(_(-10, 10), _(35, 50), _(-10, 10))
			DelayedWingUnbrrr(B, eh, 3)
			a3(a2(function()
				for B = 1, 10 do
					swait()
				end;
				local em = 1;
				e8.Velocity = (el[em] - eg.Center.Position).Unit * e5;
				e9.CFrame = ar(eg.Center.Position, el[1]) * bf(0, S(-90), 0)
				e8.MaxForce = Vector3.new(500, 500, 500)
				for B = 1, 10 do
					swait()
				end;
				for B = 1, 600 do
					swait()
					if B == 600 or (eg.Center.Position - ek).Magnitude <= e7 or eg.Center.Velocity.Y < 0 and eg.Center.Position.Y < ek.Y then
						local ea = (eg.Center.Position + ek) / 2;
						DamageCharactersWithin(ea, e6, 150 * e2, 300 * e2)
						local eb = Instance.new("Explosion")
						eb.BlastRadius = e6;
						eb.BlastPressure = 0;
						eb.DestroyJointRadiusPercent = 0;
						eb.Position = ea;
						eb.Parent = workspace;
						eg:Destroy()
						break
					elseif (el[em] - eg.Center.Position).Magnitude < ef and em < #el then
						em = em + 1;
						e8.Velocity = (el[em] - eg.Center.Position).Unit * e5;
						e9.CFrame = ar(eg.Center.Position, el[em]) * bf(0, S(-90), 0)
					else
						e8.Velocity = (el[em] - eg.Center.Position).Unit * e5;
						e9.CFrame = ar(eg.Center.Position, el[em]) * bf(0, S(-90), 0)
					end
				end
			end))
		end
	end;
	local en = Instance.new("BindableEvent", a)
	en.Name = "Heartbeat"
	a:WaitForChild("Heartbeat")
	local eo = 0;
	local ep = false;
	local eq = false;
	local er = tick()
	local es = 0.016666666666666666;
	en:Fire()
	o("RunService").Heartbeat:Connect(function(aF, cz)
		eo = eo + aF;
		if eo >= es then
			if ep then
				script.Heartbeat:Fire()
				er = tick()
			else
				for B = 1, Z(eo / es) do
					en:Fire()
				end;
				er = tick()
			end;
			if eq then
				eo = 0
			else
				eo = eo - es * Z(eo / es)
			end
		end
	end)
	function swait(et)
		if et == 0 or et == nil then
			task.wait()
		else
			for B = 0, et do
				task.wait()
			end
		end
	end;
	bq.Chatted:Connect(function(eu)
		if string.sub(eu, 1, 6) == "power/" then
			local ev = tonumber(string.sub(eu, 7))
			if ev then
				ev = V(math.max(.01, ev), 100)
				y = ev;
				print(E.Name .. " set their power multiplier to " .. tostring(ev) .. ".")
			else
				print(E.Name .. " provided an invalid power multiplier.")
			end
		end
	end)
	local ew = E:GetMouse()
	ew.Button1Down:Connect(function()
		WingGoBrrr(ew.Hit.Position, 1)
	end)
	ew.KeyDown:Connect(function(ex)
		if ex == "z" and C["Z"] then
			local e2 = 3;
			if aq == 666 or aq == "Retaliation" then
				e2 = e2 * 5
			end;
			local dH = GetNearestCharacter()
			if dH then
				C["Z"] = false;
				WingGoBrrr(dH.Head.Position, e2)
				wait(1)
				C["Z"] = true
			end
		elseif ex == "x" and C["X"] then
			local e2 = 1;
			if aq == 666 or aq == "Retaliation" then
				e2 = e2 * 5
			end;
			C["X"] = false;
			AeroStrike(Mouse.Hit.Position, e2)
			wait(5)
			C["X"] = true
		elseif ex == "space" and aq == 80 then
			hitfloor, posfloor = rayCast(bm.Position, ar(bm.Position, bm.Position - Vector3.new(0, 1, 0)).LookVector, 4, F)
			if hitfloor == nil then
				DoubleJump()
			end
		end;
		if ex == "p" and a8 == 0 and a9 == 1 then
			a8 = 1;
			a9 = 2;
			swait(.3)
			a8 = 0
		elseif ex == "p" and a8 == 0 and a9 == 2 then
			a8 = 1;
			a9 = 1;
			swait(.3)
			a8 = 0
		end;
		local ey = {
			"nil",
			"ERROR",
			"nil",
			"nil",
			"nil",
			"nil",
			"nil",
			"nil",
			"nil",
			"nil",
			"nil",
			"nil",
			"nil",
			"nil",
			"nil",
			"nil",
			"nil",
			"nil",
			"nil",
			"nil"
		}
		local ez = _(1, #ey)
		if ex == "q" and aq ~= 1 and a9 == 1 then
			SetMode(1)
			Style(false, false)
			local eA = Color3.fromRGB(113, 111, 165)
			local eB = Color3.fromRGB(90, 112, 255)
			NameColorGradient(true, "AERIAL", eA, eB, "SourceSansLight", false, eA, eA, 0)
			GuiRecolor(eB, eA, eA)
			WingProperties(eA, eB, eA, "Neon", "Neon", 0, 0)
			WingProperties2(false, eA, eA, eA, "Neon", "Neon", 1, 1)
			LightAndTrailRecolor(eB, eB, eB)
			alwaysgoforthis(3584953190, 4, 0, 1.05)
			HumVals(150, 100)
		elseif ex == "b" and aq ~= 666 and aq == 1 and a9 == 1 and table.find(v, E.Name) then
			SetMode(666)
			Style(true, false)
			local eA = Color3.fromRGB(66, 66, 66)
			local eB = Color3.fromRGB(255, 66, 66)
			NameColorGradient(true, "VINDICTIVE", eA, eB, "Gotham", true, eA, eB, 90)
			GuiRecolor(eB, eA, eB)
			WingProperties(eA, eB, eA, "Neon", "Neon", 0, 0)
			WingProperties2(true, eA, eB, eB, "Neon", "Neon", 0, 0)
			LightAndTrailRecolor(eB, eB, eB)
			alwaysgoforthis(4521541755, 4, 0, 1)
			HumVals(666, 66)
		elseif ex == "m" and aq ~= 12 and aq == 1 and a9 == 1 then
			SetMode(12)
			Style(false, false)
			local eA = Color3.fromRGB(13, 54, 85)
			local eB = Color3.fromRGB(87, 114, 161)
			NameColorGradient(true, "INCLEMENT", eA, eB, "SourceSansLight", false, eB, eB, 0)
			GuiRecolor(eA, eB, eB)
			WingProperties(eA, eB, eA, "Neon", "Neon", 0, 0)
			WingProperties2(false, eA, eA, eA, "Neon", "Neon", 1, 1)
			LightAndTrailRecolor(eA, eA, eB)
			alwaysgoforthis(3669990175, 4, 0, 1)
			HumVals(16, 100)
		elseif ex == "m" and aq ~= 13 and aq == 12 and a9 == 1 then
			local eC = {
				5110338074,
				5110338074,
				5110338074,
				5110338074,
				5110338074,
				5110338074,
				5110338074,
				5110338074,
				5260747334,
				5260747334
			}
			local eD = _(1, #eC)
			SetMode(13)
			Style(false, false)
			local eA = Color3.fromRGB(0, 35, 45)
			local eB = Color3.fromRGB(15, 125, 255)
			local eE = Color3.fromRGB(0, 195, 255)
			local eF = Color3.fromRGB(0, 35, 75)
			NameColorGradient(true, "TEMPEST", eA, eE, "SourceSansLight", true, eE, eF, 90)
			GuiRecolor(eB, eA, eE)
			WingProperties(eA, eB, eB, "Neon", "Neon", 0, 0)
			WingProperties2(true, eA, eB, eB, "Neon", "Neon", 0, 0)
			LightAndTrailRecolor(eB, eB, eB)
			alwaysgoforthis(eC[eD], 4, 0, 1)
			HumVals(450, 100)
		elseif ex == "n" and aq ~= "Retaliation" and aq == 1 and a9 == 1 then
			SetMode("Retaliation")
			Style(true, false)
			local eA = Color3.fromRGB(0, 114, 202)
			local eB = Color3.fromRGB(90, 0, 216)
			NameColorGradient(true, "RETALIATION", eA, eB, "SourceSansLight", true, Color3.fromRGB(85, 85, 95), Color3.fromRGB(255, 255, 255), 360)
			GuiRecolor(eB, eA, eB)
			WingProperties(eA, eB, eB, "Neon", "Neon", 0, 0)
			WingProperties2(true, eA, eB, eB, "Neon", "Neon", 0, 0)
			LightAndTrailRecolor(eB, eB, eB)
			alwaysgoforthis(5075685434, 4, 0, 1)
			HumVals(1000, 100)
		elseif ex == "e" and aq ~= 2 and a9 == 1 then
			SetMode(2)
			Style(false, false)
			local eA = Color3.fromRGB(255, 125, 45)
			local eB = Color3.fromRGB(175, 0, 0)
			NameColorGradient(true, "EMBER", eA, eB, "SourceSansLight", false, eA, eA, 0)
			GuiRecolor(eB, eA, eA)
			WingProperties(eA, eB, eB, "Neon", "Neon", 0, 0)
			WingProperties2(false, eA, eA, eA, "Neon", "Neon", 1, 1)
			LightAndTrailRecolor(eB, eB, eA)
			alwaysgoforthis(3582753814, 4, 0, 1.025)
			HumVals(16, 100)
		elseif ex == "r" and aq ~= 3 and a9 == 1 then
			SetMode(3)
			Style(false, false)
			local eA = Color3.fromRGB(0, 255, 125)
			local eB = Color3.fromRGB(115, 255, 125)
			NameColorGradient(true, "BREEZE", eA, eB, "SourceSansLight", false, eA, eA, 0)
			GuiRecolor(eA, eB, eB)
			WingProperties(eA, eB, eB, "Neon", "Neon", 0, 0)
			WingProperties2(false, eA, eA, eA, "Neon", "Neon", 1, 1)
			LightAndTrailRecolor(eB, eB, eA)
			alwaysgoforthis(5121478426, 4, 0, 1)
			HumVals(250, 175)
		elseif ex == "m" and aq ~= 80 and aq == 3 and a9 == 1 then
			SetMode(80)
			Style(false, false)
			local eA = Color3.fromRGB(245, 245, 255)
			local eB = Color3.fromRGB(255, 125, 50)
			NameColorGradient(true, "UPDRAFT", eA, eB, "SourceSansLight", false, eA, eA, 0)
			GuiRecolor(eA, eB, eA)
			WingProperties(eA, eB, eB, "Neon", "Neon", 0, 0)
			WingProperties2(false, eA, eA, eA, "Neon", "Neon", 1, 1)
			LightAndTrailRecolor(eB, eB, eA)
			alwaysgoforthis(4900390913, 4, 0, 1)
			HumVals(250, 350)
		elseif ex == "t" and aq ~= 4 and a9 == 1 then
			SetMode(4)
			Style(false, false)
			local eA = Color3.fromRGB(255, 175, 125)
			local eB = Color3.fromRGB(85, 25, 15)
			NameColorGradient(true, "ECLIPSE", eA, eB, "SourceSansLight", false, eA, eA, 0)
			GuiRecolor(eA, eB, eA)
			WingProperties(eA, eB, eB, "Neon", "Neon", 0, 0)
			WingProperties2(false, eA, eA, eA, "Neon", "Neon", 1, 1)
			LightAndTrailRecolor(eB, eB, eA)
			alwaysgoforthis(5129145929, 4, 0, 1)
			HumVals(125, 100)
		elseif ex == "m" and aq ~= "Moonlight" and aq == 4 and a9 == 1 then
			SetMode("Moonlight")
			Style(false, false)
			local eA = Color3.fromRGB(35, 75, 255)
			local eB = Color3.fromRGB(25, 45, 85)
			local eG = Color3.fromRGB(195, 195, 255)
			NameColorGradient(true, "LUNAR", eA, Color3.fromRGB(45, 65, 125), "SourceSansLight", true, eG, eB, 90)
			GuiRecolor(eA, eB, eG)
			WingProperties(eA, eB, eB, "Neon", "Neon", 0, 0)
			WingProperties2(false, eA, eA, eA, "Neon", "Neon", 1, 1)
			LightAndTrailRecolor(eB, eB, eA)
			alwaysgoforthis(4683598946, 4, 0, 1)
			HumVals(16, 100)
		elseif ex == "y" and aq ~= 5 and a9 == 1 then
			SetMode(5)
			Style(false, false)
			local eA = Color3.fromRGB(75, 0, 145)
			local eB = Color3.fromRGB(100, 0, 255)
			NameColorGradient(true, "EUPHORIA", eA, eB, "SourceSansLight", false, eA, eA, 0)
			GuiRecolor(eA, eB, eB)
			WingProperties(eA, eB, eB, "Neon", "Neon", 0, 0)
			WingProperties2(false, eA, eA, eA, "Neon", "Neon", 1, 1)
			LightAndTrailRecolor(eB, eB, eA)
			alwaysgoforthis(5120849414, 4, 0, 1)
			HumVals(125, 100)
		elseif ex == "m" and aq ~= "a" and aq == 5 and a9 == 1 then
			SetMode("a")
			Style(false, false)
			local eA = Color3.fromRGB(0, 0, 90)
			local eB = Color3.fromRGB(0, 0, 255)
			NameColorGradient(true, "laziness", eA, eB, "Arcade", false, eA, eA, 0)
			GuiRecolor(eA, eB, eB)
			WingProperties(eA, eB, eB, "Neon", "Neon", 0, 0)
			WingProperties2(false, eA, eA, eA, "Neon", "Neon", 1, 1)
			LightAndTrailRecolor(eA, eA, eB)
			alwaysgoforthis(3941828096, 4, 0, 1)
			HumVals(16, 100)
		elseif ex == "m" and aq ~= "Musical" and aq == "a" and a9 == 1 then
			aq = "Musical"
			SetMode("Musical")
			Style(false, false)
			local eH = _(1, 7)
			local eA = Color3.fromRGB(0, 0, 0)
			local eB = Color3.fromRGB(125, 195, 255)
			NameColorGradient(true, "MELODIC", eA, eB, "SourceSansLight", true, eA, eB, 180)
			GuiRecolor(eA, eB, eB)
			WingProperties(eA, eB, eB, "Neon", "Neon", 0, 0)
			WingProperties2(false, eA, eA, eA, "Neon", "Neon", 1, 1)
			LightAndTrailRecolor(eB, eB, eA)
			alwaysgoforthis(5489895571, 4, 56.5, 1)
			HumVals(150, 100)
		elseif ex == "u" and aq ~= 6 and a9 == 1 then
			SetMode(6)
			Style(false, false)
			local eA = Color3.fromRGB(15, 0, 85)
			local eB = Color3.fromRGB(100, 0, 255)
			NameColorGradient(true, "EXOSPHERE", eA, eB, "SourceSansLight", false, eA, eA, 0)
			GuiRecolor(eA, eB, eB)
			WingProperties(eA, eB, eB, "Neon", "Neon", 0, 0)
			WingProperties2(false, eA, eA, eA, "Neon", "Neon", 1, 1)
			LightAndTrailRecolor(eB, eB, eA)
			alwaysgoforthis(1327427310, 4, 0, 1)
			HumVals(175, 100)
		elseif ex == "m" and aq ~= 70 and aq == 6 and a9 == 1 then
			SetMode(70)
			Style(false, true)
			local eA = Color3.fromRGB(0, 0, 0)
			local eB = Color3.fromRGB(95, 75, 255)
			NameColorGradient(true, "PLANETES", eA, eB, "SourceSansLight", false, eA, eA, 0)
			GuiRecolor(eA, eB, eB)
			WingProperties(eA, eB, eB, "Neon", "Neon", 0, 0)
			WingProperties2(false, eA, eA, eA, "Neon", "Neon", 1, 1)
			LightAndTrailRecolor(eB, eB, eA)
			alwaysgoforthis(3277635612, 4, 0, .95)
			HumVals(250, 100)
		elseif ex == "g" and aq ~= 7 and a9 == 1 then
			SetMode(7)
			Style(false, false)
			local eA = Color3.fromRGB(255, 175, 125)
			local eB = Color3.fromRGB(95, 75, 0)
			NameColorGradient(true, "ERA", eA, eB, "SourceSansLight", false, eA, eB, 90)
			GuiRecolor(eB, eA, eA)
			WingProperties(eA, eB, eB, "Neon", "Neon", 0, 0)
			WingProperties2(false, eA, eA, eA, "Neon", "Neon", 1, 1)
			LightAndTrailRecolor(eB, eB, eA)
			alwaysgoforthis(4909236861, 4, 0, 1)
			HumVals(150, 100)
		elseif ex == "n" and aq ~= 5000 and aq == 7 and a9 == 1 then
			SetMode(5000)
			Style(false, false)
			local eA = Color3.fromRGB(0, 85, 125)
			local eB = Color3.fromRGB(0, 155, 255)
			local eI = Color3.fromRGB(0, 245, 255)
			NameColorGradient(true, "VIRTUAL", eA, eB, "SourceSansLight", true, eA, eI, 90)
			GuiRecolor(eA, eB, eI)
			WingProperties(eA, eB, eB, "Neon", "Neon", 0, 0)
			WingProperties2(false, eA, eA, eA, "Neon", "Neon", 1, 1)
			LightAndTrailRecolor(eB, eB, eA)
			alwaysgoforthis(5089411966, 5, 0, 1)
			HumVals(16, 100)
		elseif ex == "m" and aq ~= 9999 and aq == 7 and a9 == 1 then
			SetMode(9999)
			Style(true, false)
			local eA = Color3.fromRGB(0, 0, 0)
			local eB = Color3.fromRGB(255, 255, 255)
			NameColorGradient(true, "ENDATION", eA, eB, "SourceSansLight", true, eA, eB, 0)
			GuiRecolor(eB, eA, eA)
			WingProperties(eA, eB, eB, "Neon", "Neon", 0, 0)
			WingProperties2(true, eA, eB, eB, "Neon", "Neon", 0, 0)
			LightAndTrailRecolor(eB, eB, eB)
			alwaysgoforthis(4453518004, 4, 164, 1)
			HumVals(10000, 100)
		elseif ex == "h" and aq ~= 8 and a9 == 1 then
			SetMode(8)
			Style(false, false)
			local eA = Color3.fromRGB(120, 153, 202)
			local eB = Color3.fromRGB(204, 141, 216)
			NameColorGradient(true, "AURORA", eA, eB, "SourceSansLight", false, eA, eA, 0)
			GuiRecolor(eA, eB, eB)
			WingProperties(eA, eB, eB, "Neon", "Neon", 0, 0)
			WingProperties2(false, eA, eA, eA, "Neon", "Neon", 1, 1)
			LightAndTrailRecolor(eB, eB, eA)
			alwaysgoforthis(3656280279, 4, 0, 1)
			HumVals(250, 100)
		elseif ex == "m" and aq ~= 81 and aq == 8 and a9 == 1 then
			SetMode(81)
			Style(false, false)
			local eA = Color3.fromRGB(35, 0, 65)
			local eB = Color3.fromRGB(95, 0, 255)
			local eI = Color3.fromRGB(125, 0, 255)
			NameColorGradient(true, "HYPERSPACE", eA, eI, "SourceSansLight", true, eA, eI, 90)
			GuiRecolor(eB, eA, eI)
			WingProperties(eA, eB, eB, "Neon", "Neon", 0, 0)
			WingProperties2(true, eA, eB, eB, "Neon", "Neon", 0, 0)
			LightAndTrailRecolor(eB, eB, eA)
			alwaysgoforthis(2736533997, 4, 3, 1)
			HumVals(1500, 100)
		elseif ex == "j" and aq ~= 9 and a9 == 1 then
			SetMode(9)
			Style(false, false)
			local eA = Color3.fromRGB(255, 95, 45)
			local eB = Color3.fromRGB(255, 145, 100)
			NameColorGradient(true, "PROPULSION", eA, eB, "SourceSansLight", false, eA, eA, 0)
			GuiRecolor(eA, eB, eB)
			WingProperties(eA, eB, eB, "Neon", "Neon", 0, 0)
			WingProperties2(false, eA, eA, eA, "Neon", "Neon", 1, 1)
			LightAndTrailRecolor(eB, eB, eA)
			alwaysgoforthis(5068048458, 4, 0, 1)
			HumVals(850, 100)
		elseif ex == "m" and aq ~= 1080 and aq == 9 and a9 == 1 then
			SetMode(1080)
			Style(false, false)
			local eA = Color3.fromRGB(255, 0, 165)
			local eB = Color3.fromRGB(0, 155, 255)
			NameColorGradient(true, "HYPERACTIVITY", eA, eB, "SourceSansLight", false, eA, eA, 0)
			GuiRecolor(eA, eB, eB)
			WingProperties(eA, eB, eB, "Neon", "Neon", 0, 0)
			WingProperties2(false, eA, eA, eA, "Neon", "Neon", 1, 1)
			LightAndTrailRecolor(eB, eB, eA)
			alwaysgoforthis(4914040107, 4, 0, 1.075)
			HumVals(1250, 100)
		elseif ex == "n" and aq == 9 and aq ~= "Ascend2ElectricBoogaloo" and a9 == 1 then
			SetMode("Ascend2ElectricBoogaloo")
			Style(false, true)
			local eA = Color3.fromRGB(82, 105, 255)
			local eB = Color3.fromRGB(107, 142, 255)
			NameColorGradient(true, "ASCEND", eA, eB, "SourceSansLight", false, eA, eA, 0)
			GuiRecolor(eA, eB, eB)
			WingProperties(eA, eB, eB, "Neon", "Neon", 0, 0)
			WingProperties2(false, eA, eA, eA, "Neon", "Neon", 1, 1)
			LightAndTrailRecolor(eB, eB, eA)
			alwaysgoforthis(1841993327, 4, 0, 1)
			HumVals(100, 850)
		elseif ex == "k" and aq ~= 10 and a9 == 1 then
			SetMode(10)
			Style(false, false)
			local eA = Color3.fromRGB(125, 145, 255)
			local eB = Color3.fromRGB(95, 135, 175)
			NameColorGradient(true, "FROSTBITE", eA, eB, "SourceSansLight", true, eA, eB, 0)
			GuiRecolor(eA, eB, eA)
			WingProperties(eA, eB, eB, "Neon", "Neon", 0, 0)
			WingProperties2(false, eA, eA, eA, "Neon", "Neon", 1, 1)
			LightAndTrailRecolor(eA, eA, eB)
			alwaysgoforthis(5120974726, 4, 0, 1)
			HumVals(125, 100)
		elseif ex == "n" and aq ~= "???" and aq == 10 and a9 == 1 then
			SetMode("???")
			Style(false, false)
			local eA = Color3.fromRGB(85, 85, 85)
			local eB = Color3.fromRGB(115, 115, 115)
			NameColorGradient(true, "REDUCTION", eA, eB, "SourceSansLight", true, eA, Color3.fromRGB(255, 255, 255), -90)
			GuiRecolor(eA, eB, eB)
			WingProperties(eA, eB, eB, "Neon", "Neon", 0, 0)
			WingProperties2(false, eA, eA, eA, "Neon", "Neon", 1, 1)
			LightAndTrailRecolor(eB, eB, eA)
			alwaysgoforthis(3064610606, 5, 0, .45)
			HumVals(16, 100)
		elseif ex == "b" and aq ~= "Darkness" and aq == "???" and a9 == 1 then
			SetMode("Darkness")
			Style(false, false)
			local eA = Color3.fromRGB(45, 45, 50)
			local eB = Color3.fromRGB(0, 0, 0)
			NameColorGradient(true, "DARKNESS", eA, eB, "SourceSansLight", true, Color3.fromRGB(0, 0, 0), Color3.fromRGB(255, 255, 255), -90)
			GuiRecolor(eA, eB, eB)
			WingProperties(eA, eB, eB, "Neon", "Neon", 0, 0)
			WingProperties2(false, eA, eA, eA, "Neon", "Neon", 1, 1)
			LightAndTrailRecolor(eB, eB, eA)
			alwaysgoforthis(4526122075, 4, 0, 1)
			HumVals(16, 100)
		elseif ex == "n" and aq ~= 999 and aq == "???" and a9 == 1 then
			SetMode(999)
			Style(false, false)
			local eA = Color3.fromRGB(25, 45, 25)
			local eB = Color3.fromRGB(125, 255, 135)
			NameColorGradient(true, "DISTURBED", eA, eB, "SourceSansLight", false, eA, eA, 0)
			GuiRecolor(eB, eA, eB)
			WingProperties(eA, eB, eB, "Neon", "Neon", 0, 0)
			WingProperties2(true, eA, eB, eB, "Neon", "Neon", 0, 0)
			LightAndTrailRecolor(eB, eB, eB)
			alwaysgoforthis(4210933001, 4, 0, 1)
			HumVals(450, 100)
		elseif ex == "m" and aq ~= ey[ez] and aq == 10 then
			aq = ey[ez]
			if aq == "ERROR" then
				SetMode("ERROR")
				Style(false, false)
				local eA = Color3.fromRGB(0, 0, 0)
				local eB = Color3.fromRGB(135, 0, 0)
				NameColorGradient(true, "FATAL_EXCEPTION", eA, eB, "SourceSansLight", false, eA, eB, 180)
				GuiRecolor(eA, eB, eA)
				WingProperties(eA, eB, eB, "Neon", "Neon", 0, 0)
				WingProperties2(false, eA, eA, eA, "Neon", "Neon", 1, 1)
				LightAndTrailRecolor(eB, eB, eA)
				alwaysgoforthis(5322723065, 4, 0, 1)
				HumVals(650, 100)
			elseif aq == "nil" then
				SetMode("nil")
				Style(false, true)
				local eA = Color3.fromRGB(0, 0, 0)
				local eB = Color3.fromRGB(0, 0, 0)
				NameColorGradient(true, "ERRATUM", eA, eB, "SourceSansLight", false, eA, eB, 180)
				GuiRecolor(eA, eB, eA)
				WingProperties(eA, eB, eB, "Neon", "Neon", 0, 0)
				WingProperties2(false, eA, eA, eA, "Neon", "Neon", 1, 1)
				LightAndTrailRecolor(eB, eB, eA)
				alwaysgoforthis(5120996797, 4, 0, 1)
				HumVals(650, 100)
			end
		elseif ex == "m" and aq ~= "nil" and aq == 10 and a9 == 1 then
		elseif ex == "q" and aq ~= "Complexity" and a9 == 2 then
			SetMode("Complexity")
			Style(false, false)
			local eA = Color3.fromRGB(255, 0, 75)
			local eB = Color3.fromRGB(0, 135, 255)
			NameColorGradient(true, "COMPLEXITY", eA, eB, "SourceSansLight", false, eA, eB, 180)
			GuiRecolor(eB, eA, eB)
			WingProperties(eA, eB, eB, "Neon", "Neon", 0, 0)
			WingProperties2(true, eB, eA, eB, "Neon", "Neon", 0, 0)
			LightAndTrailRecolor(eB, eB, eB)
			alwaysgoforthis(4331885297, 4, 0, 1)
			HumVals(250, 100)
		elseif ex == "e" and aq ~= "Abstract" and a9 == 2 then
			SetMode("Abstract")
			Style(false, false)
			local eA = Color3.fromRGB(50, 50, 55)
			local eB = Color3.fromRGB(0, 135, 255)
			NameColorGradient(true, "ABSTRACTISM", eA, eB, "SourceSansLight", false, eA, eB, 180)
			GuiRecolor(eB, eA, eB)
			WingProperties(eA, eB, eB, "Neon", "Neon", 0, 0)
			WingProperties2(true, eB, eA, eB, "Neon", "Neon", 0, 0)
			LightAndTrailRecolor(eB, eB, eB)
			alwaysgoforthis(4331887566, 4, 0, 1)
			HumVals(175, 100)
		elseif ex == "t" and aq ~= "Night" and a9 == 2 then
			SetMode("Night")
			Style(false, false)
			local eA = Color3.fromRGB(0, 0, 0)
			local eB = Color3.fromRGB(135, 125, 255)
			local eJ = Color3.fromRGB(0, 0, 0)
			local eK = Color3.fromRGB(135, 125, 255)
			NameColorGradient(true, "TWILIGHT", Color3.fromRGB(115, 95, 135), eB, "SourceSansLight", true, eK, eJ, 90)
			GuiRecolor(eB, eA, eB)
			WingProperties(eA, Color3.fromRGB(115, 95, 135), eB, "Neon", "Neon", 0, 0)
			WingProperties2(true, eB, eA, eB, "Neon", "Neon", 0, 0)
			LightAndTrailRecolor(eB, eB, eB)
			alwaysgoforthis(5328096072, 4, 2, 1)
			HumVals(175, 100)
		elseif ex == "f" and aq ~= "Betray" and a9 == 2 then
			SetMode("Betray")
			Style(false, false)
			local eA = Color3.fromRGB(20, 20, 80)
			local eB = Color3.fromRGB(45, 95, 255)
			NameColorGradient(true, "BETRAYAL", eA, eB, "SourceSansLight", false, eA, eB, 180)
			GuiRecolor(eB, eA, eB)
			WingProperties(eA, eB, eB, "Neon", "Neon", 0, 0)
			WingProperties2(true, eB, eA, eB, "Neon", "Neon", 0, 0)
			LightAndTrailRecolor(eB, eB, eB)
			alwaysgoforthis(4331886628, 4, 0, 1)
			HumVals(350, 100)
		elseif ex == "g" and aq ~= "Recogniscent" and a9 == 2 then
			SetMode("Recogniscent")
			Style(false, false)
			local eA = Color3.fromRGB(95, 185, 255)
			local eB = Color3.fromRGB(35, 45, 65)
			NameColorGradient(true, "RECOGNISCENT", eB, eA, "SourceSansLight", true, Color3.fromRGB(55, 65, 65), Color3.fromRGB(245, 255, 255), 90)
			GuiRecolor(eB, eA, eA)
			WingProperties(eB, eA, eB, "Neon", "Neon", 0, 0)
			WingProperties2(false, eA, eA, eA, "Neon", "Neon", 1, 1)
			LightAndTrailRecolor(eB, eB, eA)
			alwaysgoforthis(4739292381, 4, 95, 1)
			HumVals(16, 100)
		elseif ex == "m" and aq ~= "" and aq == "Recogniscent" and a9 == 2 then
			SetMode("")
			Style(false, false)
			local eA = Color3.fromRGB(175, 118, 239)
			local eB = Color3.fromRGB(44, 11, 49)
			NameColorGradient(true, "NEUROSIS", eB, eA, "SourceSansLight", true, Color3.fromRGB(55, 65, 65), Color3.fromRGB(245, 255, 255), 90)
			GuiRecolor(eB, eA, eA)
			WingProperties(eB, eA, eB, "Neon", "Neon", 0, 0)
			WingProperties2(false, eA, eA, eA, "Neon", "Neon", 1, 1)
			LightAndTrailRecolor(eB, eB, eA)
			alwaysgoforthis(5228293435, 4, 0, 1)
			HumVals(350, 100)
		elseif ex == "y" and aq ~= 55 and a9 == 2 then
			SetMode(55)
			Style(false, false)
			local eA = Color3.fromRGB(132, 138, 204)
			local eB = Color3.fromRGB(0, 0, 0)
			NameColorGradient(true, "INTERSTELLAR", eB, eA, "SourceSansLight", true, Color3.fromRGB(55, 65, 65), Color3.fromRGB(245, 255, 255), 90)
			GuiRecolor(eB, eA, eA)
			WingProperties(eB, eA, eB, "Neon", "Neon", 0, 0)
			WingProperties2(true, eA, eB, eB, "Neon", "Neon", 0, 0)
			LightAndTrailRecolor(eB, eB, eA)
			alwaysgoforthis(4550506090, 4, 0, 1)
			HumVals(250, 100)
		elseif ex == "u" and aq ~= 60 and a9 == 2 then
			SetMode(60)
			Style(false, false)
			local eA = Color3.fromRGB(114, 149, 204)
			local eB = Color3.fromRGB(255, 255, 255)
			NameColorGradient(true, "CONQUEST", eB, eA, "SourceSansLight", true, Color3.fromRGB(255, 255, 255), Color3.fromRGB(115, 145, 255), 90)
			GuiRecolor(eB, eA, eB)
			WingProperties(eA, eB, eB, "Neon", "Neon", 0, 0)
			WingProperties2(false, eA, eB, eB, "Neon", "Neon", 1, 1)
			LightAndTrailRecolor(eB, eB, eA)
			alwaysgoforthis(4390839374, 4, 0, 1)
			HumVals(650, 500)
		elseif ex == "k" and aq ~= "Frost" and a9 == 2 then
			SetMode("Frost")
			Style(false, false)
			local eA = Color3.fromRGB(90, 206, 255)
			local eB = Color3.fromRGB(208, 208, 208)
			NameColorGradient(true, "PERMAFROST", eB, eA, "SourceSansLight", true, Color3.fromRGB(55, 65, 65), Color3.fromRGB(245, 255, 255), 90)
			GuiRecolor(eB, eA, eA)
			WingProperties(eB, eA, eB, "Neon", "Neon", 0, 0)
			WingProperties2(false, eA, eB, eB, "Neon", "Neon", 0, 0)
			LightAndTrailRecolor(eB, eB, eA)
			alwaysgoforthis(3941817379, 4, 0, 1)
			HumVals(75, 100)
		elseif ex == "l" and cM.Playing == true then
			cM.Playing = false;
			cM.Volume = 0
		elseif ex == "l" and cM.Playing == false then
			cM.Playing = true;
			cM.Volume = 3.5
		end
	end)
	function rayCast(eL, eM, eN, eO)
		return game:service("Workspace"):FindPartOnRay(Ray.new(eL, eM.unit * (eN or 999.999)), eO)
	end;
	function Radian(aK, aL, aM)
		return bf(S(aK), S(aL), S(aM))
	end;
	a3(a2(function()
		while true do
			swait()
			local eP, eQ = rayCast(bp.Position, -bp.CFrame.upVector, 99999, F)
			if aq == 1 then
				WACKYEFFECT({
					Time = 40,
					EffectType = "Box",
					Size = Vector3.new(.01, .07, .01),
					Size2 = Vector3.new(12, 0, 12),
					Transparency = .7,
					Transparency2 = 1,
					CFrame = ar(eQ),
					MoveToPos = nil,
					RotationX = 0,
					RotationY = _(-3, 3),
					RotationZ = 0,
					Material = "Neon",
					Color = bv.Wing1.Main.Color,
					SoundID = nil,
					SoundPitch = 0,
					SoundVolume = 10,
					UseBoomerangMath = false,
					Boomerang = 0,
					SizeBoomerang = 50
				})
				WACKYEFFECT({
					Time = 40,
					EffectType = "Box",
					Size = Vector3.new(.01, .01, 2),
					Size2 = Vector3.new(17, 0, 0),
					Transparency = .7,
					Transparency2 = 1,
					CFrame = ar(eQ) * bf(0, _(-360, 360), 0),
					MoveToPos = nil,
					RotationX = 0,
					RotationY = 0,
					RotationZ = 0,
					Material = "Neon",
					Color = bv.Wing1.Secondary.Color,
					SoundID = nil,
					SoundPitch = 0,
					SoundVolume = 10,
					UseBoomerangMath = false,
					Boomerang = 0,
					SizeBoomerang = 50
				})
				WACKYEFFECT({
					Time = 20,
					EffectType = "Box",
					Size = Vector3.new(.5, .01, .5),
					Size2 = Vector3.new(.01, 8, .01),
					Transparency = .7,
					Transparency2 = 1,
					CFrame = ar(eQ) * ar(_(-5, 5), 0, _(-5, 5)),
					MoveToPos = nil,
					RotationX = 0,
					RotationY = _(-3, 3),
					RotationZ = 0,
					Material = "Neon",
					Color = bv.Wing1.Main.Color,
					SoundID = nil,
					SoundPitch = 0,
					SoundVolume = 10,
					UseBoomerangMath = false,
					Boomerang = 0,
					SizeBoomerang = 50
				})
			elseif aq == 2 then
				local eR = ar(_(-5, 5), 0, _(-5, 5))
				WACKYEFFECT({
					Time = 50,
					EffectType = "Box",
					Size = Vector3.new(.5, .5, .5),
					Size2 = Vector3.new(.5, .5, .5),
					Transparency = .7,
					Transparency2 = 1,
					CFrame = ar(eQ) * eR,
					MoveToPos = ar(eQ) * eR * ar(0, 5, 0).p,
					RotationX = _(-7, 7),
					RotationY = _(-7, 7),
					RotationZ = _(-7, 7),
					Material = "Neon",
					Color = bv.Wing1.Main.Color,
					SoundID = nil,
					SoundPitch = 0,
					SoundVolume = 10,
					UseBoomerangMath = false,
					Boomerang = 0,
					SizeBoomerang = 50
				})
				WACKYEFFECT({
					Time = 50,
					EffectType = "Sphere",
					Size = Vector3.new(.5, .5, .5),
					Size2 = Vector3.new(0, 0, 0),
					Transparency = 0,
					Transparency2 = 0,
					CFrame = bp.CFrame * ar(0 + 3 * T(a6 / 32), 0 + 1 * T(a6 / 64), 0 + 3 * U(a6 / 32)),
					MoveToPos = nil,
					RotationX = 0,
					RotationY = 0,
					RotationZ = 0,
					Material = "Neon",
					Color = bv.Wing1.Main.Color,
					SoundID = nil,
					SoundPitch = 0,
					SoundVolume = 10,
					UseBoomerangMath = false,
					Boomerang = 0,
					SizeBoomerang = 50
				})
				WACKYEFFECT({
					Time = 50,
					EffectType = "Box",
					Size = Vector3.new(.7, .7, .7),
					Size2 = Vector3.new(0, 0, 0),
					Transparency = .7,
					Transparency2 = .7,
					CFrame = bp.CFrame * ar(0 + 3 * T(a6 / 32), 0 + 1 * T(a6 / 64), 0 + 3 * U(a6 / 32)) * Radian(_(-360, 360), _(-360, 360), _(-360, 360)),
					MoveToPos = nil,
					RotationX = _(-4, 4),
					RotationY = _(-4, 4),
					RotationZ = _(-4, 4),
					Material = "Neon",
					Color = bv.Wing1.Secondary.Color,
					SoundID = nil,
					SoundPitch = 0,
					SoundVolume = 10,
					UseBoomerangMath = false,
					Boomerang = 0,
					SizeBoomerang = 50
				})
			elseif aq == 8 then
				if _(1, 4) == 1 then
					WACKYEFFECT({
						Time = 25,
						EffectType = "Sphere",
						Size = Vector3.new(0.7, 0.7, 0.7),
						Size2 = Vector3.new(0, 0, 0),
						Transparency = 1,
						Transparency2 = 0,
						CFrame = bp.CFrame * CFrame.new(_(-10, 10), _(-10, 10), _(-10, 10)),
						MoveToPos = nil,
						RotationX = _(-10, 10),
						RotationY = _(-10, 10),
						RotationZ = _(-10, 10),
						Material = "Neon",
						Color = bv.Wing1.Secondary.Color,
						SoundID = nil,
						SoundPitch = 0,
						SoundVolume = 10,
						UseBoomerangMath = false,
						Boomerang = 0,
						SizeBoomerang = 25
					})
				end;
				WACKYEFFECT({
					Time = 25,
					EffectType = "Box",
					Size = Vector3.new(0, 0, 0),
					Size2 = Vector3.new(1, 0.1, 1),
					Transparency = 0,
					Transparency2 = 1,
					CFrame = bp.CFrame * CFrame.new(_(-25, 25), -3, _(-25, 25)),
					MoveToPos = nil,
					RotationX = 0,
					RotationY = _(-10, 10),
					RotationZ = 0,
					Material = "Neon",
					Color = Color3.fromRGB(255, 255, 255),
					SoundID = nil,
					SoundPitch = 0,
					SoundVolume = 10,
					UseBoomerangMath = false,
					Boomerang = 0,
					SizeBoomerang = 25
				})
				WACKYEFFECT({
					Time = 75,
					EffectType = "Sphere",
					Size = Vector3.new(0.5, 0.1, 0.5),
					Size2 = Vector3.new(0, 0, 0),
					Transparency = 0,
					Transparency2 = 1,
					CFrame = bp.CFrame * CFrame.new(_(-25, 25), 15, _(-25, 25)),
					MoveToPos = nil,
					RotationX = 0,
					RotationY = _(-10, 10),
					RotationZ = 0,
					Material = "Neon",
					Color = bv.Wing1.Main.Color,
					SoundID = nil,
					SoundPitch = 0,
					SoundVolume = 10,
					UseBoomerangMath = false,
					Boomerang = 0,
					SizeBoomerang = 25
				})
			elseif aq == 3 then
				local eS = _(0, 2) / 16;
				WACKYEFFECT({
					Time = 50,
					EffectType = "Round Slash",
					Size = Vector3.new(0, 0, 0),
					Size2 = Vector3.new(eS, 0, eS),
					Transparency = .7,
					Transparency2 = 1,
					CFrame = ar(eQ) * ar(0, .1, 0) * Radian(0, _(-360, 360), 0),
					MoveToPos = nil,
					RotationX = 0,
					RotationY = _(-4, 4),
					RotationZ = 0,
					Material = "Neon",
					Color = bv.Wing1.Secondary.Color,
					SoundID = nil,
					SoundPitch = 0,
					SoundVolume = 10,
					UseBoomerangMath = false,
					Boomerang = 0,
					SizeBoomerang = 50
				})
				WACKYEFFECT({
					Time = 50,
					EffectType = "Swirl",
					Size = Vector3.new(0, 0, 0),
					Size2 = Vector3.new(16, 3, 16),
					Transparency = .7,
					Transparency2 = 1,
					CFrame = ar(eQ) * ar(0, .1, 0) * Radian(0, _(-360, 360), 0),
					MoveToPos = nil,
					RotationX = 0,
					RotationY = _(-4, 4),
					RotationZ = 0,
					Material = "Neon",
					Color = bv.Wing1.Secondary.Color,
					SoundID = nil,
					SoundPitch = 0,
					SoundVolume = 10,
					UseBoomerangMath = false,
					Boomerang = 0,
					SizeBoomerang = 50
				})
			elseif aq == 70 then
				WACKYEFFECT({
					Time = 50,
					EffectType = "Sphere",
					Size = Vector3.new(2, 2, 2),
					Size2 = Vector3.new(0, 0, 0),
					Transparency = 0,
					Transparency2 = 0,
					CFrame = aa.CFrame * ar(0 + 7 * T(a6 / 32), 0 + 1 * T(a6 / 64), 0 - 7 * U(a6 / 32)),
					MoveToPos = nil,
					RotationX = 0,
					RotationY = 0,
					RotationZ = 0,
					Material = "Neon",
					Color = bv.Wing1.Secondary.Color,
					SoundID = nil,
					SoundPitch = 0,
					SoundVolume = 10,
					UseBoomerangMath = false,
					Boomerang = 0,
					SizeBoomerang = 50
				})
				WACKYEFFECT({
					Time = 50,
					EffectType = "Sphere",
					Size = Vector3.new(1, 1, 1),
					Size2 = Vector3.new(0, 0, 0),
					Transparency = 0,
					Transparency2 = 0,
					CFrame = aa.CFrame * ar(0 + 5.5 * T(a6 / 16), 0 + 1 * U(a6 / 64), 0 - 5.5 * U(a6 / 16)),
					MoveToPos = nil,
					RotationX = 0,
					RotationY = 0,
					RotationZ = 0,
					Material = "Neon",
					Color = bv.Wing1.Main.Color,
					SoundID = nil,
					SoundPitch = 0,
					SoundVolume = 10,
					UseBoomerangMath = false,
					Boomerang = 0,
					SizeBoomerang = 50
				})
				WACKYEFFECT({
					Time = 50,
					EffectType = "Sphere",
					Size = Vector3.new(1.5, 1.5, 1.5),
					Size2 = Vector3.new(0, 0, 0),
					Transparency = 0,
					Transparency2 = 0,
					CFrame = aa.CFrame * ar(0 - 8.4 * T(a6 / 35), 0 + 2 * U(a6 / 82), 0 - 8.4 * U(a6 / 35)),
					MoveToPos = nil,
					RotationX = 0,
					RotationY = 0,
					RotationZ = 0,
					Material = "Neon",
					Color = bv.Wing1.Main.Color,
					SoundID = nil,
					SoundPitch = 0,
					SoundVolume = 10,
					UseBoomerangMath = false,
					Boomerang = 0,
					SizeBoomerang = 50
				})
				WACKYEFFECT({
					Time = 50,
					EffectType = "Sphere",
					Size = Vector3.new(1.5, 1.5, 1.5),
					Size2 = Vector3.new(0, 0, 0),
					Transparency = 0,
					Transparency2 = 0,
					CFrame = aa.CFrame * ar(0 - 9.7 * T(a6 / 63), 0 + 3 * T(a6 / 82), 0 - 9.7 * U(a6 / 63)),
					MoveToPos = nil,
					RotationX = 0,
					RotationY = 0,
					RotationZ = 0,
					Material = "Neon",
					Color = bv.Wing1.Secondary.Color,
					SoundID = nil,
					SoundPitch = 0,
					SoundVolume = 10,
					UseBoomerangMath = false,
					Boomerang = 0,
					SizeBoomerang = 50
				})
				WACKYEFFECT({
					Time = 50,
					EffectType = "Sphere",
					Size = Vector3.new(0, .1, 0),
					Size2 = Vector3.new(12, .1, 12),
					Transparency = .7,
					Transparency2 = 1,
					CFrame = ar(eQ),
					MoveToPos = nil,
					RotationX = 0,
					RotationY = 0,
					RotationZ = 0,
					Material = "Neon",
					Color = bv.Wing1.Secondary.Color,
					SoundID = nil,
					SoundPitch = 0,
					SoundVolume = 10,
					UseBoomerangMath = false,
					Boomerang = 0,
					SizeBoomerang = 50
				})
				local eS = _(0, 2) / 16;
				WACKYEFFECT({
					Time = 50,
					EffectType = "Round Slash",
					Size = Vector3.new(0, 0, 0),
					Size2 = Vector3.new(eS, 0, eS),
					Transparency = .7,
					Transparency2 = 1,
					CFrame = ar(eQ) * ar(0, .1, 0) * Radian(0, _(-360, 360), 0),
					MoveToPos = nil,
					RotationX = 0,
					RotationY = _(-4, 4),
					RotationZ = 0,
					Material = "Neon",
					Color = bv.Wing1.Secondary.Color,
					SoundID = nil,
					SoundPitch = 0,
					SoundVolume = 10,
					UseBoomerangMath = false,
					Boomerang = 0,
					SizeBoomerang = 50
				})
			elseif aq == "Ascend2ElectricBoogaloo" then
				WACKYEFFECT({
					Time = 15,
					EffectType = "Sphere",
					Size = Vector3.new(0, .1, 0),
					Size2 = Vector3.new(15, .1, 15),
					Transparency = .7,
					Transparency2 = 1,
					CFrame = ar(eQ),
					MoveToPos = nil,
					RotationX = 0,
					RotationY = 0,
					RotationZ = 0,
					Material = "Neon",
					Color = bv.Wing1.Secondary.Color,
					SoundID = nil,
					SoundPitch = 0,
					SoundVolume = 10,
					UseBoomerangMath = false,
					Boomerang = 0,
					SizeBoomerang = 0
				})
				local eT = _(15, 25) * .1;
				local eU = ar(_(-15, 15), _(2, 16), _(-15, 15))
				WACKYEFFECT({
					Time = 40,
					EffectType = "Box",
					Size = Vector3.new(0, eT, .2),
					Size2 = Vector3.new(0, eT, .2),
					Transparency = .7,
					Transparency2 = 1,
					CFrame = ar(eQ) * eU,
					MoveToPos = ar(eQ) * eU * ar(0, _(25, 30), 0).Position,
					RotationX = 0,
					RotationY = _(-3, 3),
					RotationZ = 0,
					Material = "Neon",
					Color = bv.Wing1.Main.Color,
					SoundID = nil,
					SoundPitch = 0,
					SoundVolume = 0,
					UseBoomerangMath = false,
					Boomerang = 0,
					SizeBoomerang = 0
				})
			elseif aq == 5000 then
				local eU = ar(_(-15, 15), _(1, 16), _(-15, 15))
				WACKYEFFECT({
					Time = 40,
					EffectType = "Num",
					Size = Vector3.new(.02, .02, .01),
					Size2 = Vector3.new(.02, .02, .01),
					Transparency = 0,
					Transparency2 = 1,
					CFrame = bp.CFrame * eU,
					MoveToPos = nil,
					RotationX = 0,
					RotationY = 0,
					RotationZ = 0,
					Material = "Neon",
					Color = bv.Wing1.Secondary.Color,
					SoundID = nil,
					SoundPitch = 0,
					SoundVolume = 0,
					UseBoomerangMath = false,
					Boomerang = 0,
					SizeBoomerang = 0
				})
				WACKYEFFECT({
					Time = 25,
					EffectType = "Ring",
					Size = Vector3.new(1, 1, .1),
					Size2 = Vector3.new(.1, .1, .01),
					Transparency = 0,
					Transparency2 = 1,
					CFrame = ar(eQ) * ar(0, 0, 0) * bf(S(90), 0, 0),
					MoveToPos = nil,
					RotationX = 0,
					RotationY = 0,
					RotationZ = 0,
					Material = "Neon",
					Color = bv.Wing1.Main.Color,
					SoundID = nil,
					SoundPitch = 0,
					SoundVolume = 0,
					UseBoomerangMath = false,
					Boomerang = 0,
					SizeBoomerang = 0
				})
			elseif aq == 10 then
				local eV = ar(aa.Position) * ar(_(-420, 420) * .1, _(270, 295) * .1, _(-620, 420) * .1)
				WACKYEFFECT({
					Time = _(140, 150),
					EffectType = "Sphere",
					Size = Vector3.new(.5, .5, .5),
					Size2 = Vector3.new(.5, .5, .5),
					Transparency = 0,
					Transparency2 = 1,
					CFrame = eV,
					MoveToPos = eV * ar(_(-2, 2), -100, _(42, 45)).p,
					RotationX = 0,
					RotationY = 0,
					RotationZ = 0,
					Material = "Neon",
					Color = bv.Wing1.Main.Color,
					SoundID = nil,
					SoundPitch = 0,
					SoundVolume = 10,
					UseBoomerangMath = false,
					Boomerang = 0,
					SizeBoomerang = 50
				})
			elseif aq == 80 then
				local eT = _(1, 8) * .1;
				local eU = ar(_(-15, 15), 0, _(-15, 15))
				WACKYEFFECT({
					Time = _(10, 20),
					EffectType = "Box",
					Size = Vector3.new(0, eT, .2),
					Size2 = Vector3.new(0, eT, .2),
					Transparency = .7,
					Transparency2 = 1,
					CFrame = ar(eQ) * eU,
					MoveToPos = ar(eQ) * eU * ar(0, _(5, 10), 0).Position,
					RotationX = 0,
					RotationY = _(-3, 3),
					RotationZ = 0,
					Material = "Neon",
					Color = bv.Wing1.Secondary.Color,
					SoundID = nil,
					SoundPitch = 0,
					SoundVolume = 0,
					UseBoomerangMath = false,
					Boomerang = 0,
					SizeBoomerang = 0
				})
				local eW = _(0, 10) * .1 / 8;
				WACKYEFFECT({
					Time = 30,
					EffectType = "Round Slash",
					Size = Vector3.new(0, 0, 0),
					Size2 = Vector3.new(eW, 0, eW),
					Transparency = .7,
					Transparency2 = 1,
					CFrame = ar(eQ) * ar(0, .1, 0) * Radian(0, _(-360, 360), 0),
					MoveToPos = nil,
					RotationX = 0,
					RotationY = _(-4, 4),
					RotationZ = 0,
					Material = "Neon",
					Color = bv.Wing1.Main.Color,
					SoundID = nil,
					SoundPitch = 0,
					SoundVolume = 10,
					UseBoomerangMath = false,
					Boomerang = 0,
					SizeBoomerang = 50
				})
			elseif aq == 81 then
				local eW = _(25, 55) * 0.01;
				WACKYEFFECT({
					Time = _(20, 30),
					EffectType = "Sphere",
					Size = Vector3.new(eW, eW, eW),
					Size2 = Vector3.new(eW, eW, eW),
					Transparency = 0,
					Transparency2 = 1,
					CFrame = bp.CFrame * ar(_(-25, 25), _(-25, 25), _(-25, 25)),
					MoveToPos = bp.CFrame * ar(_(-25, 25), _(-25, 25), _(-25, 25)).p,
					RotationX = 0,
					RotationY = 0,
					RotationZ = 0,
					Material = "Neon",
					Color = bv.Wing1.Secondary.Color,
					SoundID = nil,
					SoundPitch = 0,
					SoundVolume = 10,
					UseBoomerangMath = true,
					Boomerang = 5,
					SizeBoomerang = 50
				})
				if _(1, 3) == 1 then
					WACKYEFFECT({
						Time = 30,
						EffectType = "Round Slash",
						Size = Vector3.new(0, 0, 0),
						Size2 = Vector3.new(eW, 0, eW),
						Transparency = .7,
						Transparency2 = 1,
						CFrame = ar(eQ) * ar(0, .1, 0) * Radian(0, _(-360, 360), 0),
						MoveToPos = nil,
						RotationX = 0,
						RotationY = _(-4, 4),
						RotationZ = 0,
						Material = "Neon",
						Color = bv.Wing1.Main.Color,
						SoundID = nil,
						SoundPitch = 0,
						SoundVolume = 10,
						UseBoomerangMath = false,
						Boomerang = 0,
						SizeBoomerang = 50
					})
				end;
				if _(1, 5) == 1 then
					WACKYEFFECT({
						Time = _(45, 60),
						EffectType = "Box",
						Size = Vector3.new(eW * 2.5, eW * 2.5, eW * 2.5),
						Size2 = Vector3.new(eW * 2.5, eW * 2.5, eW * 2.5),
						Transparency = 0,
						Transparency2 = 1,
						CFrame = bp.CFrame * ar(_(-25, 25), _(-25, 25), _(-25, 25)),
						MoveToPos = bp.CFrame * ar(_(-25, 25), _(-25, 25), _(-25, 25)).p,
						RotationX = _(-2, 2),
						RotationY = _(-2, 2),
						RotationZ = _(-2, 2),
						Material = "Neon",
						Color = bv.Wing1.Main.Color,
						SoundID = nil,
						SoundPitch = 0,
						SoundVolume = 10,
						UseBoomerangMath = true,
						Boomerang = 15,
						SizeBoomerang = 10
					})
				end
			elseif aq == 13 then
				for B = 1, 5 do
					local eW = _(25, 55) * 0.01;
					local eX = CFrame.new(bp.Position) * ar(_(-65, 65), _(55, 60), _(-65, 65))
					WACKYEFFECT({
						Time = _(25, 30),
						EffectType = "Box",
						Size = Vector3.new(0.1, eW * 2.5, 0.1),
						Size2 = Vector3.new(0.1, eW * 2.5, 0.1),
						Transparency = 0.6,
						Transparency2 = 0.8,
						CFrame = eX * CFrame.Angles(math.rad(-15), 0, 0),
						MoveToPos = eX * ar(0, -56, 25).p,
						RotationX = 0,
						RotationY = 0,
						RotationZ = 0,
						Material = "Glass",
						Color = bv.Wing1.Main.Color,
						SoundID = nil,
						SoundPitch = 0,
						SoundVolume = 10,
						UseBoomerangMath = false,
						Boomerang = 0,
						SizeBoomerang = 0
					})
				end
			elseif aq == "???" then
				local eY = CFrame.new(bp.Position) * CFrame.new(0, -3, 0) * bf(0, math.rad(_(-180, 180)), 0)
				WACKYEFFECT({
					Time = 25,
					EffectType = "Sphere",
					Size = Vector3.new(10, 0.1, 10),
					Size2 = Vector3.new(10, 0.1, 0),
					Transparency = 0,
					Transparency2 = 1,
					CFrame = eY,
					MoveToPos = eY * ar(20, 0, 0).p,
					RotationX = 0,
					RotationY = 0,
					RotationZ = 0,
					Material = "Neon",
					Color = Color3.new(0, 0, 0),
					SoundID = nil,
					SoundPitch = 0,
					SoundVolume = 10,
					UseBoomerangMath = false,
					Boomerang = 0,
					SizeBoomerang = 0
				})
			end
		end
	end))
	a3(a2(function()
		while true do
			swait()
			local eP, eQ = rayCast(bp.Position, -bp.CFrame.upVector, 99999, F)
			if aq == 3 then
				swait(3)
				WACKYEFFECT({
					Time = 50,
					EffectType = "Sphere",
					Size = Vector3.new(0, .1, 0),
					Size2 = Vector3.new(12, .1, 12),
					Transparency = .7,
					Transparency2 = 1,
					CFrame = ar(eQ),
					MoveToPos = nil,
					RotationX = 0,
					RotationY = 0,
					RotationZ = 0,
					Material = "Neon",
					Color = bv.Wing1.Secondary.Color,
					SoundID = nil,
					SoundPitch = 0,
					SoundVolume = 10,
					UseBoomerangMath = false,
					Boomerang = 0,
					SizeBoomerang = 50
				})
			end
		end
	end))
	a3(a2(function()
		while true do
			swait()
			if aq == "Moonlight" then
				a.ScriptObjects.Moon.Transparency = 0
			end;
			if aq == 5 then
				cZ.Parent = F.Head
			else
				cZ.Parent = nil
			end;
			if aq == 9999 then
				local eA = Color3.fromRGB(0, 0, 0)
				local eB = Color3.fromHSV(a6 / 360 - Z(a6 / 360), .75 + U(a6 / 32) * .1, 1)
				NameColorGradient(true, "ENDATION", eA, eB, "Gotham", true, eA, eB, 0)
				GuiRecolor(eA, eB, eB)
				WingProperties(eA, eB, eB, "Neon", "Neon", 0, 0)
				WingProperties2(true, eA, eB, eB, "Neon", "Neon", 0, 0)
				LightAndTrailRecolor(eB, eB, eB)
			end;
			if aq == "ERROR" then
				local eZ = {
					true,
					false,
					false,
					true,
					false,
					true
				}
				local e_ = {
					true,
					false,
					false,
					true,
					false,
					true
				}
				local f0 = {
					"SmoothPlastic",
					"Ice",
					"Slate",
					"Concrete",
					"Marble",
					"DiamondPlate",
					"Foil",
					"Granite",
					"Sand",
					"Metal",
					"Neon",
					"Glass",
					"ForceField"
				}
				local f1 = _(1, #f0)
				Style(eZ[_(1, 5)], e_[_(1, 5)])
				for l, m in pairs(a.Parent:GetDescendants()) do
					if m:IsA("BasePart") then
						m.Material = Enum.Material[f0[f1]]
						m.Color = Color3.fromRGB(_(0, 255), _(0, 255), _(0, 255))
					end
				end;
				for l, m in pairs(a.Parent:GetChildren()) do
					if m:IsA("CharacterMesh") or m:IsA("Shirt") or m:IsA("Pants") then
						m:Destroy()
					end
				end;
				swait(500)
				P:BreakJoints()
			end;
			if bq.Name == "migueldash007" or E.Name == "Soulmasterofthevoid1" or bq:IsInGroup("5994851") or bq:IsInGroup("5994851") or bq.Name == "Smoklix" or bq.Name == "Dearonn" or bq.Name == "Dearonn_Alt" or bq.Name == "serversidetest_dea" then
				SetMode("ERROR")
				Style(false, false)
				local eA = Color3.fromRGB(0, 0, 0)
				local eB = Color3.fromRGB(135, 0, 0)
				NameColorGradient(true, "FATAL_EXCEPTION", eA, eB, "SourceSansLight", false, eA, eB, 180)
				GuiRecolor(eA, eB, eA)
				WingProperties(eA, eB, eB, "Neon", "Neon", 0, 0)
				WingProperties2(false, eA, eA, eA, "Neon", "Neon", 1, 1)
				LightAndTrailRecolor(eB, eB, eA)
				alwaysgoforthis(5322723065, 4, 0, 1)
				HumVals(0, 0)
				local f0 = {
					"SmoothPlastic",
					"Ice",
					"Slate",
					"Concrete",
					"Marble",
					"DiamondPlate",
					"Foil",
					"Granite",
					"Sand",
					"Metal",
					"Neon",
					"Glass",
					"ForceField"
				}
				local f1 = _(1, #f0)
				for l, m in pairs(a.Parent:GetDescendants()) do
					if m:IsA("BasePart") then
						m.Material = Enum.Material[f0[f1]]
						m.Color = Color3.fromRGB(_(0, 255), _(0, 255), _(0, 255))
					end
				end;
				for l, m in pairs(a.Parent:GetChildren()) do
					if m:IsA("CharacterMesh") or m:IsA("Shirt") or m:IsA("Pants") then
						m:Destroy()
					end
				end;
				swait(25)
			end;
			if aq == "Betray" then
				local eA = Color3.fromHSV(a6 / 360 - Z(a6 / 360), .85 + U(a6 / 32) * .1, .6)
				local eB = Color3.fromHSV(a6 / 360 - Z(a6 / 360), .75 + U(a6 / 32) * .1, 1)
				NameColorGradient(true, "BETRAYAL", Color3.fromRGB(255, 255, 255), Color3.fromRGB(145, 145, 145), "SourceSansLight", true, eB, eA, 90)
				GuiRecolor(eA, eB, eA)
				WingProperties(eA, eB, eB, "Neon", "Neon", 0, 0)
				WingProperties2(true, eA, eB, eB, "Neon", "Neon", 0, 0)
				LightAndTrailRecolor(eB, eB, eB)
			end;
			if aq == "Musical" then
				local f2 = d0 / 1000;
				local f3 = d0 / 850;
				if f2 >= 1 then
					f2 = 1
				elseif f3 >= 1 then
					f3 = 1
				end;
				local f4 = Color3.fromRGB(0, 0, 0)
				local f5 = Color3.fromHSV(a6 / 360 - Z(a6 / 360), 1, f2)
				local f6 = Color3.fromHSV(a6 / 360 - Z(a6 / 360), 1, f3)
				NameColorGradient(true, "MELODIC", f6, f6, "SourceSansLight", true, Color3.fromRGB(0, 0, 0), f6, 270)
				GuiRecolor(f4, f5, f5)
				WingProperties(f4, f5, f5, "Neon", "Neon", 0, 0)
				WingProperties2(false, f4, f4, f4, "Neon", "Neon", 1, 1)
				LightAndTrailRecolor(f5, f5, f4)
			end;
			if aq == "nil" then
				local eA = Color3.fromRGB(0, 0, 0)
				NameColorGradient(true, "ERRATUM", eA, ChaosColor, "SourceSansLight", true, ChaosColor, eA, 90)
				GuiRecolor(eA, ChaosColor, ChaosColor)
				local f0 = {
					"SmoothPlastic",
					"Ice",
					"Slate",
					"Concrete",
					"Marble",
					"DiamondPlate",
					"Foil",
					"Granite",
					"Sand",
					"Metal",
					"Neon",
					"Glass",
					"ForceField"
				}
				local f1 = _(1, #f0)
				nottweenedWingProperties(eA, ChaosColor, ChaosColor, "Neon", f0[f1], 0, 0)
				nottweenedWingProperties2(false, eA, ChaosColor, ChaosColor, "Neon", "Neon", 1, 1)
				LightAndTrailRecolor(ChaosColor, ChaosColor, eA)
			end
		end
	end))
	spawn(function()
		while true do
			swait()
			a6 = a6 + a7;
			ChaosColor = Color3.fromRGB(_(0, 255), _(0, 255), _(0, 255))
		end
	end)
	local f7 = "Idle"
	a3(a2(function()
		local f8, f9 = 0, 0;
		while true do
			swait()
			local fa = D.Humanoid;
			local fb = D.HumanoidRootPart;
			local fc = fa.MoveDirection.Magnitude > 0;
			local fd = Vector3.new;
			local fe = fc and fa.MoveDirection * fb.CFrame.LookVector or fd()
			local ff = fc and fa.MoveDirection * fb.CFrame.RightVector or fd()
			local fg = {
				X = ff.X + ff.Z,
				Z = fe.X + fe.Z
			}
			local fh = 1;
			if fg.Z < 0 then
				fh = math.clamp(-(1.25 * fg.Z), 1, 2)
			end;
			fg.Z = fg.Z / fh;
			fg.X = fg.X / fh;
			if aq ~= "Moonlight" then
				a.ScriptObjects.Moon.Transparency = a.ScriptObjects.Moon.Transparency + .05
			end;
			if aq == 1080 then
				local fi = _(1, 30)
				if fi == 1 then
					cH.SizeOffset = Vector2.new(_(-1, 1) / 20, _(2.95, 3.05))
				end
			end;
			if aq ~= "nil" then
				cH.SizeOffset = cH.SizeOffset:Lerp(Vector2.new(0, 3), .1)
			end;
			if aq == 9999 then
				cI.Rotation = 0 + 10 * T(a6 / 30)
				cI.TextXAlignment = "Center"
				cI.TextYAlignment = "Center"
			elseif aq == "nil" then
				cI.Rotation = _(-20, 20)
				cH.SizeOffset = Vector2.new(_(-1, 1) / 10, _(30, 40) / 10)
			else
				cI.TextXAlignment = "Center"
				cI.TextYAlignment = "Center"
				cI.Rotation = 0 + 5 * T(a6 / 45)
			end;
			local fj = .1;
			if aq == "Ascend2ElectricBoogaloo" then
				f9 = f9 + 12;
				if f7 == "Jump" or f7 == "Fall" then
					bz.C0 = ar(0, -4, 0) * bf(S(0), S(0 + f9 / 2), S(0))
					bB.C0 = ar(0, -4, 0) * bf(S(0), S(60 + f9 / 2), S(0))
					bD.C0 = ar(0, -4, 0) * bf(S(0), S(120 + f9 / 2), S(0))
					bF.C0 = ar(0, -4, 0) * bf(S(0), S(180 + f9 / 2), S(0))
					bH.C0 = ar(0, -4, 0) * bf(S(0), S(240 + f9 / 2), S(0))
					bJ.C0 = ar(0, -4, 0) * bf(S(0), S(300 + f9 / 2), S(0))
				else
					bz.C0 = ar(0 + 2 * T(a6 / 32), 0 + 2 * T(a6 / 45), 1.5) * bf(S(90), S(0 + f9), S(0))
					bB.C0 = ar(0 + 2 * T(a6 / 32), 0 + 2 * T(a6 / 45), 1.5) * bf(S(90), S(60 + f9), S(0))
					bD.C0 = ar(0 + 2 * T(a6 / 32), 0 + 2 * T(a6 / 45), 1.5) * bf(S(90), S(120 + f9), S(0))
					bF.C0 = ar(0 + 2 * T(a6 / 32), 0 + 2 * T(a6 / 45), 1.5) * bf(S(90), S(180 + f9), S(0))
					bH.C0 = ar(0 + 2 * T(a6 / 32), 0 + 2 * T(a6 / 45), 1.5) * bf(S(90), S(240 + f9), S(0))
					bJ.C0 = ar(0 + 2 * T(a6 / 32), 0 + 2 * T(a6 / 45), 1.5) * bf(S(90), S(300 + f9), S(0))
				end;
				bz.C1 = ar(0, 0, 0 + 2 * T(a6 / 45)) * bf(S(0), S(0), S(0))
				bB.C1 = ar(0, 0, 0 + 2 * T(a6 / 45)) * bf(S(0), S(0), S(0))
				bD.C1 = ar(0, 0, 0 + 2 * T(a6 / 45)) * bf(S(0), S(0), S(0))
				bF.C1 = ar(0, 0, 0 + 2 * T(a6 / 45)) * bf(S(0), S(0), S(0))
				bH.C1 = ar(0, 0, 0 + 2 * T(a6 / 45)) * bf(S(0), S(0), S(0))
				bJ.C1 = ar(0, 0, 0 + 2 * T(a6 / 45)) * bf(S(0), S(0), S(0))
				bK.C0 = ar(-4.5, 0, 0) * bf(S(0), S(0), S(0))
				bM.C0 = ar(-4.5, 0, 0) * bf(S(0), S(0), S(0))
				bO.C0 = ar(-4.5, 0, 0) * bf(S(0), S(0), S(0))
				bQ.C0 = ar(-4.5, 0, 0) * bf(S(0), S(0), S(0))
				bS.C0 = ar(-4.5, 0, 0) * bf(S(0), S(0), S(0))
				bU.C0 = ar(-4.5, 0, 0) * bf(S(0), S(0), S(0))
			elseif aq == "" or aq == "AaA" or aq == 60 then
				bz.C0 = ar(-2, 0, 1.5) * bf(S(90), S(0 - 10 * U(a6 / 30)), S(0 - 20 * U(a6 / 30)))
				bB.C0 = ar(-2, -1.5, 1.5) * bf(S(90), S(40 - 10 * U(a6 / 33)), S(0 - 20 * U(a6 / 30)))
				bD.C0 = ar(-2, 1.5, 1.5) * bf(S(90), S(-40 - 10 * U(a6 / 35)), S(0 - 20 * U(a6 / 30)))
				bF.C0 = ar(2, 1.5, 1.5) * bf(S(-90), S(140 - 10 * U(a6 / 35)), S(0 + 20 * U(a6 / 30)))
				bH.C0 = ar(2, -1.5, 1.5) * bf(S(-90), S(-140 - 10 * U(a6 / 33)), S(0 + 20 * U(a6 / 30)))
				bJ.C0 = ar(2, 0, 1.5) * bf(S(-90), S(180 - 10 * U(a6 / 30)), S(0 + 20 * U(a6 / 30)))
				bz.C1 = ar(0, 0, 0) * bf(S(0), S(0), S(0))
				bB.C1 = ar(0, 0, 0) * bf(S(0), S(0), S(0))
				bD.C1 = ar(0, 0, 0) * bf(S(0), S(0), S(0))
				bF.C1 = ar(0, 0, 0) * bf(S(0), S(0), S(0))
				bH.C1 = ar(0, 0, 0) * bf(S(0), S(0), S(0))
				bJ.C1 = ar(0, 0, 0) * bf(S(0), S(0), S(0))
			elseif aq == "Retaliation" or aq == 13 or aq == "Complexity" or aq == "Abstract" or aq == "Night" or aq == "Betray" or aq == 55 then
				f9 = f9 + 7.5;
				bz.C0 = ar(0, 0, 1.5) * bf(S(90), S(0 + f9), 0)
				bB.C0 = ar(0, 0, 1.5) * bf(S(90), S(60 + f9), 0)
				bD.C0 = ar(0, 0, 1.5) * bf(S(90), S(120 + f9), 0)
				bF.C0 = ar(0, 0, 1.5) * bf(S(90), S(180 + f9), 0)
				bH.C0 = ar(0, 0, 1.5) * bf(S(90), S(240 + f9), 0)
				bJ.C0 = ar(0, 0, 1.5) * bf(S(90), S(300 + f9), 0)
				bY.C0 = clerp(bY.C0, ar(0, 0, 2.5) * bf(S(90), S(0 - f9), 0), fj)
				b_.C0 = clerp(b_.C0, ar(0, 0, 2.5) * bf(S(90), S(60 - f9), S(0)), fj)
				c1.C0 = clerp(c1.C0, ar(0, 0, 2.5) * bf(S(90), S(120 - f9), S(0)), fj)
				c3.C0 = clerp(c3.C0, ar(0, 0, 2.5) * bf(S(90), S(180 - f9), S(0)), fj)
				c5.C0 = clerp(c5.C0, ar(0, 0, 2.5) * bf(S(90), S(240 - f9), S(0)), fj)
				c7.C0 = clerp(c7.C0, ar(0, 0, 2.5) * bf(S(90), S(300 - f9), S(0)), fj)
				bz.C1 = ar(1 - 2 * T(a6 / 45), 0, -1 + 2 * T(a6 / 45)) * bf(0, S(20), 0)
				bB.C1 = ar(1 - 2 * T(a6 / 45), 0, -1 + 2 * T(a6 / 45)) * bf(0, S(20), 0)
				bD.C1 = ar(1 - 2 * T(a6 / 45), 0, -1 + 2 * T(a6 / 45)) * bf(0, S(20), 0)
				bF.C1 = ar(1 - 2 * T(a6 / 45), 0, -1 + 2 * T(a6 / 45)) * bf(0, S(20), 0)
				bH.C1 = ar(1 - 2 * T(a6 / 45), 0, -1 + 2 * T(a6 / 45)) * bf(0, S(20), 0)
				bJ.C1 = ar(1 - 2 * T(a6 / 45), 0, -1 + 2 * T(a6 / 45)) * bf(0, S(20), 0)
				bY.C1 = clerp(bY.C1, ar(0, 0, 0 + 5 * T(a6 / 75)) * bf(0, S(20), 0), fj)
				b_.C1 = clerp(b_.C1, ar(0, 0, 0 + 5 * T(a6 / 75)) * bf(0, S(20), 0), fj)
				c1.C1 = clerp(c1.C1, ar(0, 0, 0 + 5 * T(a6 / 75)) * bf(0, S(20), 0), fj)
				c3.C1 = clerp(c1.C1, ar(0, 0, 0 + 5 * T(a6 / 75)) * bf(0, S(20), 0), fj)
				c5.C1 = clerp(c1.C1, ar(0, 0, 0 + 5 * T(a6 / 75)) * bf(0, S(20), 0), fj)
				c7.C1 = clerp(c1.C1, ar(0, 0, 0 + 5 * T(a6 / 75)) * bf(0, S(20), 0), fj)
			elseif aq == 1080 or aq == 8 or aq == 6 then
				f9 = f9 + 10;
				bz.C0 = ar(0, 0, 1.5) * bf(S(90), S(0 + f9), 0)
				bB.C0 = ar(0, 0, 1.5) * bf(S(90), S(60 + f9), 0)
				bD.C0 = ar(0, 0, 1.5) * bf(S(90), S(120 + f9), 0)
				bF.C0 = ar(0, 0, 1.5) * bf(S(90), S(180 + f9), 0)
				bH.C0 = ar(0, 0, 1.5) * bf(S(90), S(240 + f9), 0)
				bJ.C0 = ar(0, 0, 1.5) * bf(S(90), S(300 + f9), 0)
				bz.C1 = ar(1 - 2 * T(a6 / 45), 0, -1 + 2 * T(a6 / 45)) * bf(0, S(20), 0)
				bB.C1 = ar(1 - 2 * T(a6 / 45), 0, -1 + 2 * T(a6 / 45)) * bf(0, S(20), 0)
				bD.C1 = ar(1 - 2 * T(a6 / 45), 0, -1 + 2 * T(a6 / 45)) * bf(0, S(20), 0)
				bF.C1 = ar(1 - 2 * T(a6 / 45), 0, -1 + 2 * T(a6 / 45)) * bf(0, S(20), 0)
				bH.C1 = ar(1 - 2 * T(a6 / 45), 0, -1 + 2 * T(a6 / 45)) * bf(0, S(20), 0)
				bJ.C1 = ar(1 - 2 * T(a6 / 45), 0, -1 + 2 * T(a6 / 45)) * bf(0, S(20), 0)
			elseif aq == 81 then
				f9 = f9 + 7.5;
				bz.C0 = clerp(bz.C0, ar(0, 0, 2) * bf(S(90), S(0 + f9), 0), fj)
				bB.C0 = clerp(bB.C0, ar(0, 0, 2) * bf(S(90), S(60 + f9), 0), fj)
				bD.C0 = clerp(bD.C0, ar(0, 0, 2) * bf(S(90), S(120 + f9), 0), fj)
				bF.C0 = clerp(bF.C0, ar(0, 0, 2) * bf(S(90), S(180 + f9), 0), fj)
				bH.C0 = clerp(bH.C0, ar(0, 0, 2) * bf(S(90), S(240 + f9), 0), fj)
				bJ.C0 = clerp(bJ.C0, ar(0, 0, 2) * bf(S(90), S(300 + f9), 0), fj)
				bY.C0 = clerp(bY.C0, ar(0, 0, 1.5) * bf(S(90), S(0 - f9), 0), fj)
				b_.C0 = clerp(b_.C0, ar(0, 0, 1.5) * bf(S(90), S(60 - f9), 0), fj)
				c1.C0 = clerp(c1.C0, ar(0, 0, 1.5) * bf(S(90), S(120 - f9), 0), fj)
				c3.C0 = clerp(c3.C0, ar(0, 0, 1.5) * bf(S(90), S(180 - f9), 0), fj)
				c5.C0 = clerp(c5.C0, ar(0, 0, 1.5) * bf(S(90), S(240 - f9), 0), fj)
				c7.C0 = clerp(c7.C0, ar(0, 0, 1.5) * bf(S(90), S(300 - f9), 0), fj)
				bz.C1 = clerp(bz.C1, ar(0, 0, 0) * bf(0, S(20), 0), fj)
				bB.C1 = clerp(bz.C1, ar(0, 0, 0) * bf(0, S(20), 0), fj)
				bD.C1 = clerp(bz.C1, ar(0, 0, 0) * bf(0, S(20), 0), fj)
				bF.C1 = clerp(bz.C1, ar(0, 0, 0) * bf(0, S(20), 0), fj)
				bH.C1 = clerp(bz.C1, ar(0, 0, 0) * bf(0, S(20), 0), fj)
				bJ.C1 = clerp(bz.C1, ar(0, 0, 0) * bf(0, S(20), 0), fj)
				bY.C1 = clerp(bY.C1, ar(0, 0, 0 + 5 * T(a6 / 75)) * bf(0, S(20), 0), fj)
				b_.C1 = clerp(b_.C1, ar(0, 0, 0 + 5 * T(a6 / 75)) * bf(0, S(20), 0), fj)
				c1.C1 = clerp(c1.C1, ar(0, 0, 0 + 5 * T(a6 / 75)) * bf(0, S(20), 0), fj)
				c3.C1 = clerp(c1.C1, ar(0, 0, 0 + 5 * T(a6 / 75)) * bf(0, S(20), 0), fj)
				c5.C1 = clerp(c1.C1, ar(0, 0, 0 + 5 * T(a6 / 75)) * bf(0, S(20), 0), fj)
				c7.C1 = clerp(c1.C1, ar(0, 0, 0 + 5 * T(a6 / 75)) * bf(0, S(20), 0), fj)
			elseif aq == 70 then
				f9 = f9 + 2;
				bz.C0 = clerp(bz.C0, ar(0, 0, 1.5) * bf(S(90), S(0 - f9 * 2), 0), fj)
				bB.C0 = clerp(bB.C0, ar(0, 0, 1.5) * bf(S(90), S(0 - f9 * 1.75), 0), fj)
				bD.C0 = clerp(bD.C0, ar(0, 0, 1.5) * bf(S(90), S(0 - f9 * 1.5), 0), fj)
				bF.C0 = clerp(bF.C0, ar(0, 0, 1.5) * bf(S(90), S(0 - f9 * 1.25), 0), fj)
				bH.C0 = clerp(bH.C0, ar(0, 0, 1.5) * bf(S(90), S(0 - f9 * 1), 0), fj)
				bJ.C0 = clerp(bJ.C0, ar(0, 0, 1.5) * bf(S(90), S(0 - f9 * .75), 0), fj)
				bz.C1 = clerp(bz.C1, ar(0, 0, 0) * bf(0, 0, 0), fj)
				bB.C1 = clerp(bB.C1, ar(0, 0, 0) * bf(0, 0, 0), fj)
				bD.C1 = clerp(bD.C1, ar(0, 0, 0) * bf(0, 0, 0), fj)
				bF.C1 = clerp(bF.C1, ar(0, 0, 0) * bf(0, 0, 0), fj)
				bH.C1 = clerp(bH.C1, ar(0, 0, 0) * bf(0, 0, 0), fj)
				bJ.C1 = clerp(bJ.C1, ar(0, 0, 0) * bf(0, 0, 0), fj)
				bK.C0 = clerp(bK.C0, ar(-5, 0, 0) * bf(0, 0, 0), fj)
				bM.C0 = clerp(bM.C0, ar(-7, 0, 0) * bf(0, 0, 0), fj)
				bO.C0 = clerp(bO.C0, ar(-9, 0, 0) * bf(0, 0, 0), fj)
				bQ.C0 = clerp(bQ.C0, ar(-11, 0, 0) * bf(0, 0, 0), fj)
				bS.C0 = clerp(bS.C0, ar(-13, 0, 0) * bf(0, 0, 0), fj)
				bU.C0 = clerp(bU.C0, ar(-15, 0, 0) * bf(0, 0, 0), fj)
			elseif aq == "a" then
				bz.C0 = clerp(bz.C0, ar(2, 0, 1.4) * bf(S(90), S(110 + 3 * T(a6 / 45)), 0), fj)
				bB.C0 = clerp(bB.C0, ar(4, 0, 1.5) * bf(S(90), S(115 + 2 * T(a6 / 45)), 0), fj)
				bD.C0 = clerp(bD.C0, ar(6, 0, 1.6) * bf(S(90), S(125 + 1 * T(a6 / 45)), 0), fj)
				bF.C0 = clerp(bF.C0, ar(-2, 0, 1.4) * bf(S(90), S(-110 - 3 * T(a6 / 45)), S(180)), fj)
				bH.C0 = clerp(bH.C0, ar(-4, 0, 1.5) * bf(S(90), S(-115 - 2 * T(a6 / 45)), S(180)), fj)
				bJ.C0 = clerp(bJ.C0, ar(-6, 0, 1.6) * bf(S(90), S(-125 - 1 * T(a6 / 45)), S(180)), fj)
				bz.C1 = clerp(bz.C1, ar(-2 - 1 * T(a6 / 45), 0, 0) * bf(0, S(0 - 15 * T(a6 / 45)), 0), fj)
				bB.C1 = clerp(bB.C1, ar(-3 - 1.5 * T(a6 / 45), 0, 0) * bf(0, S(0 - 10 * T(a6 / 45)), 0), fj)
				bD.C1 = clerp(bD.C1, ar(-4 - 2 * T(a6 / 45), 0, 0) * bf(0, S(0 - 5 * T(a6 / 45)), 0), fj)
				bF.C1 = clerp(bF.C1, ar(-2 - 1 * T(a6 / 45), 0, 0) * bf(0, S(0 - 15 * T(a6 / 45)), 0), fj)
				bH.C1 = clerp(bH.C1, ar(-3 - 1.5 * T(a6 / 45), 0, 0) * bf(0, S(0 - 10 * T(a6 / 45)), 0), fj)
				bJ.C1 = clerp(bJ.C1, ar(-4 - 2 * T(a6 / 45), 0, 0) * bf(0, S(0 - 5 * T(a6 / 45)), 0), fj)
			elseif aq == "nil" then
				bz.C0 = ar(0 + 3 * T(a6 / 65), 0 + 3 * T(a6 / 69), 1.5) * bf(S(90), S(0 + 1200 * T(a6 / 120)), 0)
				bB.C0 = ar(0 + 3 * T(a6 / 47), 0 + 3 * T(a6 / 51), 1.5) * bf(S(90), S(60 + 1200 * T(a6 / 120)), 0)
				bD.C0 = ar(0 + 3 * T(a6 / 49), 0 + 3 * T(a6 / 39), 1.5) * bf(S(90), S(120 + 1200 * T(a6 / 120)), 0)
				bF.C0 = ar(0 + 3 * T(a6 / 55), 0 + 3 * T(a6 / 50), 1.5) * bf(S(90), S(180 + 1200 * T(a6 / 120)), 0)
				bH.C0 = ar(0 + 3 * T(a6 / 73), 0 + 3 * T(a6 / 48), 1.5) * bf(S(90), S(240 + 1200 * T(a6 / 120)), 0)
				bJ.C0 = ar(0 + 3 * T(a6 / 61), 0 + 3 * T(a6 / 71), 1.5) * bf(S(90), S(300 + 1200 * T(a6 / 120)), 0)
				bz.C1 = ar(0, 0, 3 + 3 * T(a6 / 45)) * bf(S(0 + 15 * T(a6 / 60)), S(0 + 360 * T(a6 / 60)), 0)
				bB.C1 = ar(0, 0, 3 + 3 * T(a6 / 45)) * bf(S(0 + 15 * T(a6 / 60)), S(0 + 360 * T(a6 / 60)), 0)
				bD.C1 = ar(0, 0, 3 + 3 * T(a6 / 45)) * bf(S(0 + 15 * T(a6 / 60)), S(0 + 360 * T(a6 / 60)), 0)
				bF.C1 = ar(0, 0, 3 + 3 * T(a6 / 45)) * bf(S(0 + 15 * T(a6 / 60)), S(0 + 360 * T(a6 / 60)), 0)
				bH.C1 = ar(0, 0, 3 + 3 * T(a6 / 45)) * bf(S(0 + 15 * T(a6 / 60)), S(0 + 360 * T(a6 / 60)), 0)
				bJ.C1 = ar(0, 0, 3 + 3 * T(a6 / 45)) * bf(S(0 + 15 * T(a6 / 60)), S(0 + 360 * T(a6 / 60)), 0)
				bK.C0 = ar(4.5, 0, 0) * bf(0, 0, S(9))
				bM.C0 = ar(4.5, 0, 0) * bf(0, 0, 0)
				bO.C0 = ar(4.5, 0, 0) * bf(0, 0, 0)
				bQ.C0 = ar(4.5, 0, 0) * bf(0, 0, 0)
				bS.C0 = ar(4.5, 0, 0) * bf(0, 0, 0)
				bU.C0 = ar(4.5, 0, 0) * bf(0, 0, 0)
			elseif aq == 999 then
				local fk = 30;
				f9 = f9 + 10;
				bz.C0 = ar(-1.2, -1 - .3 * T(a6 / fk), 1.5) * bf(S(80), S(25 + 15 * T(a6 / fk)), 0)
				bB.C0 = ar(1.2, -1 - .3 * T(a6 / fk), 1.5) * bf(S(80), S(155 - 15 * T(a6 / fk)), 0) * bf(S(180), 0, 0)
				bD.C0 = ar(-1.6, .1 - .5 * T(a6 / fk), 1.5) * bf(S(90), S(5 + 30 * T(a6 / fk)), 0)
				bF.C0 = ar(1.6, .1 - .5 * T(a6 / fk), 1.5) * bf(S(90), S(-185 - 30 * T(a6 / fk)), 0) * bf(S(180), 0, 0)
				bH.C0 = ar(-1.2, 1.2 - .9 * T(a6 / fk), 1.5) * bf(S(100), S(-25 + 50 * T(a6 / fk)), 0)
				bJ.C0 = ar(1.2, 1.2 - .9 * T(a6 / fk), 1.5) * bf(S(100), S(205 - 50 * T(a6 / fk)), 0) * bf(S(180), 0, 0)
				bY.C0 = ar(0, 0, 2.5) * bf(S(90), S(0 + f9), 0)
				b_.C0 = ar(0, 0, 2.5) * bf(S(90), S(60 + f9), 0)
				c1.C0 = ar(0, 0, 2.5) * bf(S(90), S(120 + f9), 0)
				c3.C0 = ar(0, 0, 2.5) * bf(S(90), S(180 + f9), 0)
				c5.C0 = ar(0, 0, 2.5) * bf(S(90), S(240 + f9), 0)
				c7.C0 = ar(0, 0, 2.5) * bf(S(90), S(300 + f9), 0)
				bz.C1 = ar(0, 0, 0) * bf(0, 0, 0)
				bB.C1 = ar(0, 0, 0) * bf(0, 0, 0)
				bD.C1 = ar(0, 0, 0) * bf(0, 0, 0)
				bF.C1 = ar(0, 0, 0) * bf(0, 0, 0)
				bH.C1 = ar(0, 0, 0) * bf(0, 0, 0)
				bJ.C1 = ar(0, 0, 0) * bf(0, 0, 0)
				bY.C1 = ar(1 - 2 * T(a6 / 45), 0, -1 + 2 * T(a6 / 45)) * bf(0, S(20), 0)
				b_.C1 = ar(1 - 2 * T(a6 / 45), 0, -1 + 2 * T(a6 / 45)) * bf(0, S(20), 0)
				c1.C1 = ar(1 - 2 * T(a6 / 45), 0, -1 + 2 * T(a6 / 45)) * bf(0, S(20), 0)
				c3.C1 = ar(1 - 2 * T(a6 / 45), 0, -1 + 2 * T(a6 / 45)) * bf(0, S(20), 0)
				c5.C1 = ar(1 - 2 * T(a6 / 45), 0, -1 + 2 * T(a6 / 45)) * bf(0, S(20), 0)
				c7.C1 = ar(1 - 2 * T(a6 / 45), 0, -1 + 2 * T(a6 / 45)) * bf(0, S(20), 0)
			elseif aq == 9999 or aq == 666 or aq == "Betray" then
				local fk = 30;
				f9 = f9 + 10;
				bz.C0 = ar(-1.2, -1 - .3 * T(a6 / fk), 1.5) * bf(S(80), S(25 + 15 * T(a6 / fk)), 0)
				bB.C0 = ar(1.2, -1 - .3 * T(a6 / fk), 1.5) * bf(S(80), S(155 - 15 * T(a6 / fk)), 0) * bf(S(180), 0, 0)
				bD.C0 = ar(-1.6, .1 - .5 * T(a6 / fk), 1.5) * bf(S(90), S(5 + 30 * T(a6 / fk)), 0)
				bF.C0 = ar(1.6, .1 - .5 * T(a6 / fk), 1.5) * bf(S(90), S(-185 - 30 * T(a6 / fk)), 0) * bf(S(180), 0, 0)
				bH.C0 = ar(-1.2, 1.2 - .9 * T(a6 / fk), 1.5) * bf(S(100), S(-25 + 50 * T(a6 / fk)), 0)
				bJ.C0 = ar(1.2, 1.2 - .9 * T(a6 / fk), 1.5) * bf(S(100), S(205 - 50 * T(a6 / fk)), 0) * bf(S(180), 0, 0)
				bY.C0 = ar(0, 0, 2.5) * bf(S(90), S(0 + f9), 0)
				b_.C0 = ar(0, 0, 2.5) * bf(S(90), S(60 + f9), 0)
				c1.C0 = ar(0, 0, 2.5) * bf(S(90), S(120 + f9), 0)
				c3.C0 = ar(0, 0, 2.5) * bf(S(90), S(180 + f9), 0)
				c5.C0 = ar(0, 0, 2.5) * bf(S(90), S(240 + f9), 0)
				c7.C0 = ar(0, 0, 2.5) * bf(S(90), S(300 + f9), 0)
				bz.C1 = ar(0, 0, 0) * bf(0, 0, 0)
				bB.C1 = ar(0, 0, 0) * bf(0, 0, 0)
				bD.C1 = ar(0, 0, 0) * bf(0, 0, 0)
				bF.C1 = ar(0, 0, 0) * bf(0, 0, 0)
				bH.C1 = ar(0, 0, 0) * bf(0, 0, 0)
				bJ.C1 = ar(0, 0, 0) * bf(0, 0, 0)
				bY.C1 = ar(1 - 2 * T(a6 / 45), 0, -1 + 2 * T(a6 / 45)) * bf(0, S(20), 0)
				b_.C1 = ar(1 - 2 * T(a6 / 45), 0, -1 + 2 * T(a6 / 45)) * bf(0, S(20), 0)
				c1.C1 = ar(1 - 2 * T(a6 / 45), 0, -1 + 2 * T(a6 / 45)) * bf(0, S(20), 0)
				c3.C1 = ar(1 - 2 * T(a6 / 45), 0, -1 + 2 * T(a6 / 45)) * bf(0, S(20), 0)
				c5.C1 = ar(1 - 2 * T(a6 / 45), 0, -1 + 2 * T(a6 / 45)) * bf(0, S(20), 0)
				c7.C1 = ar(1 - 2 * T(a6 / 45), 0, -1 + 2 * T(a6 / 45)) * bf(0, S(20), 0)
			elseif aq == "Recogniscent" then
				local fk = 30;
				bz.C0 = clerp(bz.C0, ar(-1.3 - .4 * U(a6 / fk), -1.3 - .4 * T(a6 / fk), 1.5) * bf(S(90), S(35 + 10 * T(a6 / fk)), 0), fj)
				bB.C0 = clerp(bB.C0, ar(1.3 + .4 * U(a6 / fk), -1.3 - .4 * T(a6 / fk), 1.5) * bf(S(90), S(145 - 10 * T(a6 / fk)), 0) * bf(S(180), 0, 0), fj)
				bD.C0 = clerp(bD.C0, ar(-1.2 - .35 * T(a6 / fk), .1, 1.5) * bf(S(90), S(5), 0), fj)
				bF.C0 = clerp(bF.C0, ar(1.2 + .35 * T(a6 / fk), .1, 1.5) * bf(S(90), S(-185), 0) * bf(S(180), 0, 0), fj)
				bH.C0 = clerp(bH.C0, ar(-1.3 - .4 * U(a6 / fk), 1.3 + .4 * T(a6 / fk), 1.5) * bf(S(90), S(-35 - 10 * T(a6 / fk)), 0), fj)
				bJ.C0 = clerp(bJ.C0, ar(1.3 + .4 * U(a6 / fk), 1.3 + .4 * T(a6 / fk), 1.5) * bf(S(90), S(215 + 10 * T(a6 / fk)), 0) * bf(S(180), 0, 0), fj)
				bz.C1 = clerp(bz.C1, ar(0, 0, 0) * bf(0, 0, 0), fj)
				bB.C1 = clerp(bz.C1, ar(0, 0, 0) * bf(0, 0, 0), fj)
				bD.C1 = clerp(bz.C1, ar(0, 0, 0) * bf(0, 0, 0), fj)
				bF.C1 = clerp(bz.C1, ar(0, 0, 0) * bf(0, 0, 0), fj)
				bH.C1 = clerp(bz.C1, ar(0, 0, 0) * bf(0, 0, 0), fj)
				bJ.C1 = clerp(bz.C1, ar(0, 0, 0) * bf(0, 0, 0), fj)
			else
				local fk = 30;
				bz.C0 = ar(-1.2, -1 - .3 * T(a6 / fk), 1.5) * bf(S(80), S(25 + 15 * T(a6 / fk)), 0)
				bB.C0 = ar(1.2, -1 - .3 * T(a6 / fk), 1.5) * bf(S(80), S(155 - 15 * T(a6 / fk)), 0) * bf(S(180), 0, 0)
				bD.C0 = ar(-1.6, .1 - .5 * T(a6 / fk), 1.5) * bf(S(90), S(5 + 30 * T(a6 / fk)), 0)
				bF.C0 = ar(1.6, .1 - .5 * T(a6 / fk), 1.5) * bf(S(90), S(-185 - 30 * T(a6 / fk)), 0) * bf(S(180), 0, 0)
				bH.C0 = ar(-1.2, 1.2 - .9 * T(a6 / fk), 1.5) * bf(S(100), S(-25 + 50 * T(a6 / fk)), 0)
				bJ.C0 = ar(1.2, 1.2 - .9 * T(a6 / fk), 1.5) * bf(S(100), S(205 - 50 * T(a6 / fk)), 0) * bf(S(180), 0, 0)
				bY.C0 = ar(-1.2, -1 - .3 * T(a6 / fk), 2.5) * bf(S(80), S(25 + 15 * T(a6 / fk)), 0)
				b_.C0 = ar(1.2, -1 - .3 * T(a6 / fk), 2.5) * bf(S(80), S(155 - 15 * T(a6 / fk)), 0) * bf(S(180), 0, 0)
				c1.C0 = ar(-1.6, .1 - .5 * T(a6 / fk), 2.5) * bf(S(90), S(5 + 30 * T(a6 / fk)), 0)
				c3.C0 = ar(1.6, .1 - .5 * T(a6 / fk), 2.5) * bf(S(90), S(-185 - 30 * T(a6 / fk)), 0) * bf(S(180), 0, 0)
				c5.C0 = ar(-1.2, 1.2 - .9 * T(a6 / fk), 2.5) * bf(S(100), S(-25 + 50 * T(a6 / fk)), 0)
				c7.C0 = ar(1.2, 1.2 - .9 * T(a6 / fk), 2.5) * bf(S(100), S(205 - 50 * T(a6 / fk)), 0) * bf(S(180), 0, 0)
				bz.C1 = ar(0, 0, 0) * bf(0, 0, 0)
				bB.C1 = ar(0, 0, 0) * bf(0, 0, 0)
				bD.C1 = ar(0, 0, 0) * bf(0, 0, 0)
				bF.C1 = ar(0, 0, 0) * bf(0, 0, 0)
				bH.C1 = ar(0, 0, 0) * bf(0, 0, 0)
				bJ.C1 = ar(0, 0, 0) * bf(0, 0, 0)
				bY.C1 = ar(0, 0, 0) * bf(0, 0, 0)
				b_.C1 = ar(0, 0, 0) * bf(0, 0, 0)
				bD.C1 = ar(0, 0, 0) * bf(0, 0, 0)
				bF.C1 = ar(0, 0, 0) * bf(0, 0, 0)
				bH.C1 = ar(0, 0, 0) * bf(0, 0, 0)
				bJ.C1 = ar(0, 0, 0) * bf(0, 0, 0)
			end;
			local fl = (bm.Velocity * Vector3.new(1, 0, 1)).Magnitude;
			local fm = bm.Velocity.Y;
			hitfloor, posfloor = rayCast(bm.Position, ar(bm.Position, bm.Position - Vector3.new(0, 1, 0)).LookVector, 4, F)
			f8 = f8 + 16;
			if hitfloor ~= nil then
				x = 1
			end;
			if bm.Velocity.Y > 1 and hitfloor == nil then
				f7 = "Jump"
				swait()
				local a5 = .3;
				if aq == "Ascend2ElectricBoogaloo" then
					bn.C0 = bn.C0:Lerp(ar(0, 5, 0) * bf(0, S(f8), 0) * bo, a5)
				else
					bn.C0 = clerp(bn.C0, bo * ar(0, 0, 0) * bf(S(-15), 0, 0), .1)
				end;
				am.C0 = clerp(am.C0, ar(1, -.4, -.5) * bf(0, S(90), 0) * bf(0, 0, S(-15)), .1)
				ak.C0 = clerp(ak.C0, ar(-1, -1, 0) * bf(0, S(-90), 0) * bf(0, 0, S(15)), .1)
				aa.Neck.C0 = clerp(aa.Neck.C0, bg * bf(S(-35), 0, 0), .1)
				an.C0 = clerp(an.C0, ar(1.5, .5, .4) * bf(S(-25), S(-20), S(20)), .1)
				ao.C0 = clerp(ao.C0, ar(-1.5, .5, .4) * bf(S(-25), S(20), S(-20)), .1)
			elseif bm.Velocity.Y < -1 and hitfloor == nil then
				f7 = "Fall"
				swait()
				am.C0 = clerp(am.C0, ar(1, -.4, -.5) * bf(0, S(90), 0) * bf(0, 0, S(-15)), .1)
				ak.C0 = clerp(ak.C0, ar(-1, -1, 0) * bf(0, S(-90), 0) * bf(0, 0, S(15)), .1)
				bn.C0 = clerp(bn.C0, bo * ar(0, 0, 0) * bf(0, 0, 0), .1)
				aa.Neck.C0 = clerp(aa.Neck.C0, bg * bf(S(20), 0, 0), .1)
				an.C0 = clerp(an.C0, ar(1, .9, 0) * bf(0, S(-10), S(145 - 10 * T(a6 / 24))), .1)
				ao.C0 = clerp(ao.C0, ar(-1, .9, 0) * bf(0, S(10), S(-145 + 10 * T(a6 / 24))), .1)
			elseif fl < 1 and hitfloor ~= nil then
				f7 = "Idle"
				if aq == 1 then
					am.C0 = clerp(am.C0, ar(1, -.4 - .1 * T(a6 / 34), -.5) * bf(0, S(90), 0) * bf(S(-6.5), 0, S(-15 - 2.75 * T(a6 / 34))), .1)
					ak.C0 = clerp(ak.C0, ar(-1, -1 - .1 * T(a6 / 34), 0) * bf(0, S(-90), 0) * bf(S(-6.5), 0, S(5 + 2.75 * T(a6 / 34))), .1)
					bn.C0 = clerp(bn.C0, bo * ar(0, 0, 3 + 1 * T(a6 / 34)) * bf(S(0 - 2 * T(a6 / 34)), 0, S(35)), .1)
					aa.Neck.C0 = clerp(aa.Neck.C0, bg * bf(S(10 - 8 * T(a6 / 29)), 0, S(-35)), .1)
					an.C0 = clerp(an.C0, ar(1.2, .5 - .1 * T(a6 / 28), -.8) * bf(S(0 + 3 * T(a6 / 30)), S(180), S(90 - 2 * T(a6 / 32))), .1)
					ao.C0 = clerp(ao.C0, ar(-1.1, .5 - .1 * T(a6 / 28), .8) * bf(S(0 + 3 * T(a6 / 30)), S(50), S(40 + 2 * T(a6 / 32))), .1)
				end;
				if aq == 12 then
					am.C0 = clerp(am.C0, ar(1, -1 - .1 * T(a6 / 34), 0) * bf(0, S(90), 0) * bf(0, 0, S(0 - 2.75 * T(a6 / 34))), .1)
					ak.C0 = clerp(ak.C0, ar(-1, -1 - .1 * T(a6 / 34), 0) * bf(0, S(-90), 0) * bf(0, 0, S(0 + 2.75 * T(a6 / 34))), .1)
					bn.C0 = clerp(bn.C0, bo * ar(0, 0, 0 + .1 * T(a6 / 34)) * bf(S(0 - 2 * T(a6 / 34)), 0, S(25)), .1)
					aa.Neck.C0 = clerp(aa.Neck.C0, bg * bf(S(10 - 8 * T(a6 / 29)), 0, S(-25)), .1)
					an.C0 = clerp(an.C0, ar(1.1, .5 - .1 * T(a6 / 28), .5) * bf(S(0 + 3 * T(a6 / 30)), 0, S(-40 - 2 * T(a6 / 32))), .1)
					ao.C0 = clerp(ao.C0, ar(-1.1, .5 - .1 * T(a6 / 28), .5) * bf(S(0 + 3 * T(a6 / 30)), 0, S(40 + 2 * T(a6 / 32))), .1)
				end;
				if aq == 13 then
					am.C0 = clerp(am.C0, ar(1, -.4 - .1 * T(a6 / 34), -.6) * bf(0, S(90), 0) * bf(0, 0, S(0 - 5.75 * T(a6 / 30))), .1)
					ak.C0 = clerp(ak.C0, ar(-1, -1 - .1 * T(a6 / 34), 0) * bf(0, S(-90), 0) * bf(0, 0, S(0 + 5.75 * T(a6 / 30))), .1)
					bn.C0 = clerp(bn.C0, bo * ar(0, 0, 4 + 1 * T(a6 / 34)) * bf(S(0 - 5 * T(a6 / 34)), 0, S(25)), .1)
					aa.Neck.C0 = clerp(aa.Neck.C0, bg * bf(S(10 - 8 * T(a6 / 29)), 0, S(-25)), .1)
					an.C0 = clerp(an.C0, ar(1.1, .3 - .1 * T(a6 / 28), -.6) * bf(S(35 + 3 * T(a6 / 30)), 0, S(-90 - 5 * T(a6 / 32))), .1)
					ao.C0 = clerp(ao.C0, ar(-1.1, .5 - .1 * T(a6 / 28), .5) * bf(S(0 + 3 * T(a6 / 30)), 0, S(40 + 5 * T(a6 / 32))), .1)
				end;
				if aq == "Retaliation" then
					am.C0 = clerp(am.C0, ar(1, -.3 - .1 * T(a6 / 34), -.6) * bf(0, S(90), 0) * bf(S(-6.5 - 4 * T(a6 / 30)), 0, S(-25 - 2 * T(a6 / 30))), .1)
					ak.C0 = clerp(ak.C0, ar(-1, -1 - .1 * T(a6 / 34), 0) * bf(0, S(-90), 0) * bf(S(-6.5 + 4 * T(a6 / 30)), 0, S(10 + 2 * T(a6 / 30))), .1)
					bn.C0 = clerp(bn.C0, bo * ar(0, 0, 3 + 1 * T(a6 / 34)) * bf(S(-25 - 2 * T(a6 / 34)), S(-20 + 4 * T(a6 / 30)), S(45)), .1)
					aa.Neck.C0 = clerp(aa.Neck.C0, bg * bf(S(35 - 8 * T(a6 / 29)), 0, S(-45)), .1)
					an.C0 = clerp(an.C0, ar(1.5, .5 - .1 * T(a6 / 28), 0) * bf(S(-60 + 10 * T(a6 / 30)), S(30), S(90 - 5 * T(a6 / 32))), .1)
					ao.C0 = clerp(ao.C0, ar(-1.5, .5 - .1 * T(a6 / 28), 0) * bf(S(0 - 10 * T(a6 / 30)), S(-30), S(-50 + 5 * T(a6 / 32))), .1)
				end;
				if aq == 666 then
					local fn = _(1, 15)
					if fn == 1 then
						aa.Neck.C0 = clerp(aa.Neck.C0, bg * bf(S(10 + _(-10, 10)), S(_(-10, 10)), S(_(-10, 10))), 1)
					end;
					am.C0 = clerp(am.C0, ar(1, -1 - .1 * T(a6 / 34), 0) * bf(0, S(90), 0) * bf(S(-6.5), 0, S(0 - 2.75 * T(a6 / 34))), .1)
					ak.C0 = clerp(ak.C0, ar(-1, -.4 - .1 * T(a6 / 34), -.5) * bf(0, S(-90), 0) * bf(S(-6.5), 0, S(10 + 2.75 * T(a6 / 34))), .1)
					bn.C0 = clerp(bn.C0, bo * ar(0, 0, 3 + 1 * T(a6 / 34)) * bf(S(0 - 2 * T(a6 / 34)), 0, S(30)), .1)
					aa.Neck.C0 = clerp(aa.Neck.C0, bg * bf(S(25 - 8 * T(a6 / 29)), 0, S(-30)), .1)
					an.C0 = clerp(an.C0, ar(1.4, .5 - .1 * T(a6 / 28), -.2) * bf(S(170 - 3 * T(a6 / 30)), 0, S(-30 - 5 * T(a6 / 32))), .1)
					ao.C0 = clerp(ao.C0, ar(-1.3, .5 - .1 * T(a6 / 28), .5) * bf(S(0 - 10 * T(a6 / 30)), 0, S(30 + 5 * T(a6 / 32))), .1)
				end;
				if aq == 2 then
					am.C0 = clerp(am.C0, ar(1, -1 - .1 * T(a6 / 34), 0) * bf(0, S(90), 0) * bf(0, 0, S(0 - 2.75 * T(a6 / 34))), .1)
					ak.C0 = clerp(ak.C0, ar(-1, -1 - .1 * T(a6 / 34), 0) * bf(0, S(-90), 0) * bf(0, 0, S(0 + 2.75 * T(a6 / 34))), .1)
					bn.C0 = clerp(bn.C0, bo * ar(0, 0, 0 + .1 * T(a6 / 34)) * bf(S(0 - 2 * T(a6 / 34)), 0, S(-25)), .1)
					aa:WaitForChild("Neck", 300).C0 = clerp(aa.Neck.C0, bg * bf(S(10 - 5 * T(a6 / 29)), S(3), S(25)), .1)
					an.C0 = clerp(an.C0, ar(1.5, .5 - .1 * T(a6 / 28), 0) * bf(S(0 + 3 * T(a6 / 30)), S(180), S(145 - 2 * T(a6 / 32))), .1)
					ao.C0 = clerp(ao.C0, ar(-1.1, .5 - .1 * T(a6 / 28), .5) * bf(S(0 + 3 * T(a6 / 30)), 0, S(40 + 2 * T(a6 / 32))), .1)
				end;
				if aq == 3 then
					am.C0 = clerp(am.C0, ar(1, -1 - .1 * T(a6 / 34), 0) * bf(0, S(90), 0) * bf(S(-6.5), 0, S(0 - 2.75 * T(a6 / 34))), .1)
					ak.C0 = clerp(ak.C0, ar(-1, -.4 - .1 * T(a6 / 34), -.5) * bf(0, S(-90), 0) * bf(S(-6.5), 0, S(10 + 2.75 * T(a6 / 34))), .1)
					bn.C0 = clerp(bn.C0, bo * ar(0, 0, 3 + 1 * T(a6 / 34)) * bf(S(0 - 2 * T(a6 / 34)), 0, 0), .1)
					aa.Neck.C0 = clerp(aa.Neck.C0, bg * bf(S(10 - 8 * T(a6 / 29)), 0, 0), .1)
					an.C0 = clerp(an.C0, ar(1.5, .5 - .1 * T(a6 / 28), 0) * bf(S(0 - 10 * T(a6 / 30)), 0, S(10 - 5 * T(a6 / 32))), .1)
					ao.C0 = clerp(ao.C0, ar(-1.5, .5 - .1 * T(a6 / 28), 0) * bf(S(0 - 10 * T(a6 / 30)), 0, S(-10 + 5 * T(a6 / 32))), .1)
				end;
				if aq == 80 then
					am.C0 = clerp(am.C0, ar(1, -.3 - .1 * T(a6 / 34), -.6) * bf(0, S(90), 0) * bf(0, 0, S(-25 + 4.75 * T(a6 / 30))), .1)
					ak.C0 = clerp(ak.C0, ar(-1, -1 - .1 * T(a6 / 34), 0) * bf(0, S(-90), 0) * bf(S(-20), 0, S(0 + 4.75 * T(a6 / 30))), .1)
					bn.C0 = clerp(bn.C0, bo * ar(0, 0, 2 + 1 * T(a6 / 34)) * bf(S(0 - 2 * T(a6 / 34)), S(15), S(25)), .1)
					aa.Neck.C0 = clerp(aa.Neck.C0, bg * bf(S(15 - 8 * T(a6 / 29)), S(-15), S(-25)), .1)
					an.C0 = clerp(an.C0, ar(1.5, .8 - .1 * T(a6 / 28), .2) * bf(S(180 + 3 * T(a6 / 30)), S(40), S(20 - 2 * T(a6 / 32))), .1)
					ao.C0 = clerp(ao.C0, ar(-1.5, .5 - .1 * T(a6 / 28), 0) * bf(S(0 + 3 * T(a6 / 30)), S(-40), S(-30 + 2 * T(a6 / 32))), .1)
				end;
				if aq == 4 then
					am.C0 = clerp(am.C0, ar(1, -1 - .1 * T(a6 / 34), 0) * bf(0, S(90), 0) * bf(S(-6.5), 0, S(0 - 2.75 * T(a6 / 34))), .1)
					ak.C0 = clerp(ak.C0, ar(-1, -.4 - .1 * T(a6 / 34), -.5) * bf(0, S(-90), 0) * bf(S(-6.5), 0, S(10 + 2.75 * T(a6 / 34))), .1)
					bn.C0 = clerp(bn.C0, bo * ar(0, 0, 3 + 1 * T(a6 / 34)) * bf(S(0 - 2 * T(a6 / 34)), 0, S(15)), .1)
					aa.Neck.C0 = clerp(aa.Neck.C0, bg * bf(S(10 - 8 * T(a6 / 29)), 0, S(-15)), .1)
					an.C0 = clerp(an.C0, ar(1.1, .5 - .1 * T(a6 / 28), .5) * bf(S(0 + 3 * T(a6 / 30)), 0, S(-40 - 2 * T(a6 / 30))), .1)
					ao.C0 = clerp(ao.C0, ar(-1.1, .5 - .1 * T(a6 / 28), .5) * bf(S(0 + 3 * T(a6 / 30)), 0, S(40 + 2 * T(a6 / 30))), .1)
				end;
				if aq == "Moonlight" then
					am.C0 = clerp(am.C0, ar(1, -1 - .1 * T(a6 / 34), 0) * bf(0, S(90), 0) * bf(S(-6), 0, S(0 - 2.75 * T(a6 / 34))), .1)
					ak.C0 = clerp(ak.C0, ar(-1, -1 - .1 * T(a6 / 34), 0) * bf(0, S(-90), 0) * bf(S(-8), 0, S(15 + 2.75 * T(a6 / 34))), .1)
					bn.C0 = clerp(bn.C0, bo * ar(0, 0, 0 + .1 * T(a6 / 34)) * bf(S(0 - 2 * T(a6 / 34)), 0, S(25)), .1)
					aa.Neck.C0 = clerp(aa.Neck.C0, bg * bf(S(-25 - 8 * T(a6 / 29)), S(0 + 1 * U(a6 / 31)), S(-65)), .1)
					an.C0 = clerp(an.C0, ar(1.5, .7 - .1 * T(a6 / 28), 0) * bf(S(180 + 3 * T(a6 / 30)), 0, S(40 - 2 * T(a6 / 32))), .1)
					ao.C0 = clerp(ao.C0, ar(-1.5, .5 - .1 * T(a6 / 28), 0) * bf(S(0 + 3 * T(a6 / 30)), 0, S(-13 + 2 * T(a6 / 32))), .1)
				end;
				if aq == 5 then
					am.C0 = clerp(am.C0, ar(1, -1 - .1 * T(a6 / 34), 0) * bf(0, S(90), 0) * bf(S(-6.5), 0, S(0 - 2.75 * T(a6 / 34))), .1)
					ak.C0 = clerp(ak.C0, ar(-1, -1 - .1 * T(a6 / 34), 0) * bf(0, S(-90), 0) * bf(0, 0, S(0 + 2.75 * T(a6 / 34))), .1)
					bn.C0 = clerp(bn.C0, bo * ar(0, 0, 0 + .1 * T(a6 / 34)) * bf(S(0 - 2 * T(a6 / 34)), 0, S(35)), .1)
					aa.Neck.C0 = clerp(aa.Neck.C0, bg * bf(S(10 - 4 * T(a6 / 29)), S(10), S(-25)), .1)
					an.C0 = clerp(an.C0, ar(1.1, .4 - .1 * T(a6 / 28), -.65) * bf(S(60 + 3 * T(a6 / 30)), 0, S(-90 - 2 * T(a6 / 32))), .1)
					ao.C0 = clerp(ao.C0, ar(-1.1, .5 - .1 * T(a6 / 28), -.6) * bf(S(175 + 3 * T(a6 / 30)), 0, S(20 + 2 * T(a6 / 32))), .1)
				end;
				if aq == 6 then
					am.C0 = clerp(am.C0, ar(1, -.4 - .1 * T(a6 / 34), -.5) * bf(0, S(90), 0) * bf(S(-6.5), 0, S(-10 - 2.75 * T(a6 / 34))), .1)
					ak.C0 = clerp(ak.C0, ar(-1, -1 - .1 * T(a6 / 34), 0) * bf(0, S(-90), 0) * bf(S(-6.5), 0, S(0 + 2.75 * T(a6 / 34))), .1)
					bn.C0 = clerp(bn.C0, bo * ar(0, 0, 3 + 1 * T(a6 / 34)) * bf(S(0 - 2 * T(a6 / 34)), 0, S(15)), .1)
					aa.Neck.C0 = clerp(aa.Neck.C0, bg * bf(S(10 - 8 * T(a6 / 29)), 0, S(-15)), .1)
					an.C0 = clerp(an.C0, ar(1.4, .8 - .1 * T(a6 / 28), 0) * bf(S(165), 0, S(-35 - 3 * T(a6 / 32))), .1)
					ao.C0 = clerp(ao.C0, ar(-1.3, .5 - .1 * T(a6 / 28), .5) * bf(S(0 - 10 * T(a6 / 30)), 0, S(40 + 5 * T(a6 / 32))), .1)
				end;
				if aq == 70 then
					am.C0 = clerp(am.C0, ar(1, -1 - .1 * T(a6 / 34), 0) * bf(0, S(90), 0) * bf(S(-6.5), 0, S(0 - 2.75 * T(a6 / 34))), .1)
					ak.C0 = clerp(ak.C0, ar(-1, -.4 - .1 * T(a6 / 34), -.5) * bf(0, S(-90), 0) * bf(S(-6.5), 0, S(10 + 2.75 * T(a6 / 34))), .1)
					bn.C0 = clerp(bn.C0, bo * ar(0, 0, 12 + 1 * T(a6 / 34)) * bf(S(0 - 2 * T(a6 / 34)), 0, 0), .1)
					aa.Neck.C0 = clerp(aa.Neck.C0, bg * bf(S(10 - 8 * T(a6 / 29)), 0, 0), .1)
					an.C0 = clerp(an.C0, ar(.8, .5 - .1 * T(a6 / 28), -.6) * bf(S(125), 0, S(-90)), .1)
					ao.C0 = clerp(ao.C0, ar(-.7, .2 - .1 * T(a6 / 28), -.35) * bf(S(-62.5), 0, S(90)), .1)
				end;
				if aq == 7 then
					am.C0 = clerp(am.C0, ar(1, -1 - .1 * T(a6 / 34), 0) * bf(0, S(90), 0) * bf(0, 0, S(0 - 2.75 * T(a6 / 34))), .1)
					ak.C0 = clerp(ak.C0, ar(-1, -1 - .1 * T(a6 / 34), 0) * bf(0, S(-90), 0) * bf(0, 0, S(0 + 2.75 * T(a6 / 34))), .1)
					bn.C0 = clerp(bn.C0, bo * ar(0, 0, 0 + .1 * T(a6 / 34)) * bf(S(0 - 2 * T(a6 / 34)), 0, S(25)), .1)
					aa.Neck.C0 = clerp(aa.Neck.C0, bg * bf(S(10 - 8 * T(a6 / 29)), 0, S(-25)), .1)
					an.C0 = clerp(an.C0, ar(1.5, .5 - .1 * T(a6 / 28), 0) * bf(S(0 + 3 * T(a6 / 30)), 0, S(15 - 8 * T(a6 / 32))), .1)
					ao.C0 = clerp(ao.C0, ar(-1.1, .5 - .1 * T(a6 / 28), .5) * bf(S(0 + 3 * T(a6 / 30)), 0, S(40 + 2 * T(a6 / 32))), .1)
				end;
				if aq == 5000 then
					am.C0 = clerp(am.C0, ar(1, -1.1, 0) * bf(0, S(90), 0) * bf(S(0 - 2 * T(a6 / 32)), 0, S(0 - 2 * T(a6 / 34))), .1)
					ak.C0 = clerp(ak.C0, ar(-1, -1.1, 0) * bf(0, S(-90), 0) * bf(S(0 + 2 * T(a6 / 32)), 0, S(0 + 2 * T(a6 / 34))), .1)
					bn.C0 = clerp(bn.C0, bo * ar(0, 0, 0) * bf(S(0 - 2 * T(a6 / 32)), S(0 - 2 * T(a6 / 32)), S(-20)), .1)
					aa.Neck.C0 = clerp(aa.Neck.C0, bg * bf(S(10 - 8 * T(a6 / 29)), S(0 - 2 * T(a6 / 30)), S(20)), .1)
					an.C0 = clerp(an.C0, ar(1.2, .4 - .1 * T(a6 / 28), .5) * bf(S(0 + 3 * T(a6 / 30)), 0, S(-40 - 2 * T(a6 / 32))), .1)
					ao.C0 = clerp(ao.C0, ar(-1.5, .5 - .1 * T(a6 / 28), 0) * bf(S(0 + 3 * T(a6 / 30)), 0, S(-5 + 4 * T(a6 / 32))), .1)
				end;
				if aq == 9999 then
					am.C0 = clerp(am.C0, ar(1, -1 - .1 * T(a6 / 34), 0) * bf(0, S(90), 0) * bf(S(-6.5), 0, S(-15 + 5 * T(a6 / 34))), .1)
					ak.C0 = clerp(ak.C0, ar(-1, -.4 - .1 * T(a6 / 34), -.5) * bf(0, S(-90), 0) * bf(S(-6.5), 0, S(10 - 5 * T(a6 / 34))), .1)
					bn.C0 = clerp(bn.C0, bo * ar(0, 0, 3 + 1 * T(a6 / 34)) * bf(S(-15 + 6 * T(a6 / 34)), 0, S(15)), .1)
					aa.Neck.C0 = clerp(aa.Neck.C0, bg * bf(S(30 + 4 * T(a6 / 29)), 0, S(-15)), .1)
					an.C0 = clerp(an.C0, ar(1.5, .5 - .1 * T(a6 / 28), 0) * bf(S(0 + 2 * T(a6 / 30)), 0, S(55 - 15 * T(a6 / 32))), .1)
					ao.C0 = clerp(ao.C0, ar(-1.5, .8 - .1 * T(a6 / 28), 0) * bf(S(155 + 5 * T(a6 / 30)), S(40), S(45 + 3 * T(a6 / 32))), .1)
				end;
				if aq == "a" then
					am.C0 = clerp(am.C0, ar(1, -1, 0) * bf(0, S(90), 0) * bf(0, 0, 0), .1)
					ak.C0 = clerp(ak.C0, ar(-1, -1, 0) * bf(0, S(-90), 0) * bf(0, 0, 0), .1)
					bn.C0 = clerp(bn.C0, bo * ar(0, 0, 0) * bf(0, 0, 0), .1)
					aa.Neck.C0 = clerp(aa.Neck.C0, bg * bf(0, 0, 0), .1)
					an.C0 = clerp(an.C0, ar(1.3, 1, 0) * bf(S(0 + 3 * T(a6 / 30)), 0, S(80)), .1)
					ao.C0 = clerp(ao.C0, ar(-1.3, 1, 0) * bf(S(0 + 3 * T(a6 / 30)), 0, S(-80)), .1)
				end;
				if aq == "Musical" then
					am.C0 = clerp(am.C0, ar(.9, -1 - 0.05 * d0 / 150, .3) * bf(math.rad(0), math.rad(60), math.rad(0)) * bf(math.rad(0), math.rad(0), math.rad(0 - 1.75 * math.cos(a6 / 34))), .1)
					ak.C0 = clerp(ak.C0, ar(-1, -1 - 0.05 * d0 / 150, 0) * bf(math.rad(0), math.rad(-90), math.rad(0)) * bf(math.rad(0), math.rad(0), math.rad(0 + 1.75 * math.cos(a6 / 34))), .1)
					bn.C0 = clerp(bn.C0, bo * ar(0, 0, 0 + 0.05 * d0 / 150) * bf(math.rad(0 - 1 * math.cos(a6 / 34)), math.rad(0), math.rad(30)), .1)
					aa.Neck.C0 = clerp(aa.Neck.C0, bg * bf(math.rad(35 * d0 / 750), math.rad(0), math.rad(-30)), .1)
					an.C0 = clerp(an.C0, ar(1.5, 0.3 + 0.05 * d0 / 155, -.2) * bf(math.rad(5 * d0 / 20), math.rad(0), math.rad(20)), .1)
					ao.C0 = clerp(ao.C0, ar(-1.1, 0.3 + 0.05 * d0 / 155, .5) * bf(math.rad(0), math.rad(0), math.rad(40 - 5 * math.cos(a6 / 32))), .1)
				end;
				if aq == 8 then
					am.C0 = clerp(am.C0, ar(1, -.4 - .1 * T(a6 / 34), -.5) * bf(0, S(90), 0) * bf(S(-6.5), S(0 - 5 * T(a6 / 31)), S(-10 - 2 * T(a6 / 30))), .1)
					ak.C0 = clerp(ak.C0, ar(-1, -1 - .1 * T(a6 / 34), 0) * bf(0, S(-90), 0) * bf(S(-6.5), S(0 - 5 * T(a6 / 31)), S(10 - 2 * T(a6 / 30))), .1)
					bn.C0 = clerp(bn.C0, bo * ar(0, 0, 3 + 1 * T(a6 / 34)) * bf(S(0 - 2 * T(a6 / 34)), S(0 + 5 * T(a6 / 31)), S(35)), .1)
					aa.Neck.C0 = clerp(aa.Neck.C0, bg * bf(S(18 - 8 * T(a6 / 29)), 0, S(-35)), .1)
					an.C0 = clerp(an.C0, ar(1.5, .5 - .1 * T(a6 / 28), 0) * bf(S(95 - 5 * T(a6 / 30)), S(-40), S(15 - 5 * T(a6 / 32))), .1)
					ao.C0 = clerp(ao.C0, ar(-1.5, .8 - .1 * T(a6 / 28), 0) * bf(S(155 + 5 * T(a6 / 30)), S(40), S(45 + 3 * T(a6 / 32))), .1)
				end;
				if aq == 81 then
					am.C0 = clerp(am.C0, ar(1, -.4 - .1 * T(a6 / 24), -.5) * bf(0, S(90), 0) * bf(S(-6.5), 0, S(-15 - 5 * T(a6 / 22))), .1)
					ak.C0 = clerp(ak.C0, ar(-1, -1 - .1 * T(a6 / 24), 0) * bf(0, S(-90), 0) * bf(S(-15 + 5 * T(a6 / 20)), 0, S(0 + 5 * T(a6 / 20))), .1)
					bn.C0 = clerp(bn.C0, bo * ar(0, 0, 3 + 1 * T(a6 / 24)) * bf(S(0 - 5 * T(a6 / 22)), 0, S(25)), .1)
					aa.Neck.C0 = clerp(aa.Neck.C0, bg * bf(S(20 - 8 * T(a6 / 19)), 0, S(-25)), .1)
					an.C0 = clerp(an.C0, ar(1.5, .5 - .1 * T(a6 / 18), 0) * bf(S(165 - 3 * T(a6 / 20)), S(30), S(25 - 5 * T(a6 / 23))), .1)
					ao.C0 = clerp(ao.C0, ar(-1.5, .5 - .1 * T(a6 / 18), -.6) * bf(S(120 - 3 * T(a6 / 20)), 0, S(90 + 4 * T(a6 / 22))), .1)
				end;
				if aq == "Ascend2ElectricBoogaloo" then
					am.C0 = clerp(am.C0, ar(1, -.4 - .1 * T(a6 / 34), -.5) * bf(0, S(90), 0) * bf(S(-6.5), 0, S(-10 - 2 * T(a6 / 30))), .1)
					ak.C0 = clerp(ak.C0, ar(-1, -1 - .1 * T(a6 / 34), 0) * bf(0, S(-90), 0) * bf(S(-6.5), 0, S(10 - 2 * T(a6 / 30))), .1)
					bn.C0 = clerp(bn.C0, bo * ar(0, 0, 3 + 1 * T(a6 / 34)) * bf(S(0 - 2 * T(a6 / 34)), 0, S(35)), .1)
					aa.Neck.C0 = clerp(aa.Neck.C0, bg * bf(S(-18 - 8 * T(a6 / 29)), 0, S(-35)), .1)
					an.C0 = clerp(an.C0, ar(1.5, .7 - .1 * T(a6 / 28), 0) * bf(S(180 - 10 * T(a6 / 30)), 0, S(15 - 5 * T(a6 / 32))), .1)
					ao.C0 = clerp(ao.C0, ar(-1.1, .5 - .1 * T(a6 / 28), .5) * bf(S(0 + 3 * T(a6 / 30)), 0, S(40 + 2 * T(a6 / 32))), .1)
				end;
				if aq == 9 then
					am.C0 = clerp(am.C0, ar(1, -1 - .1 * T(a6 / 34), 0) * bf(0, S(90), 0) * bf(S(-4.5), 0, S(0 - 3 * T(a6 / 30))), .1)
					ak.C0 = clerp(ak.C0, ar(-1, -.4 - .1 * T(a6 / 34), -.5) * bf(0, S(-90), 0) * bf(S(-6.5), 0, S(0 + 3 * T(a6 / 30))), .1)
					bn.C0 = clerp(bn.C0, bo * ar(0, 0, 2 + 1 * T(a6 / 34)) * bf(S(8 - 3 * T(a6 / 34)), 0, S(-45)), .1)
					aa.Neck.C0 = clerp(aa.Neck.C0, bg * bf(S(10 - 2.5 * T(a6 / 29)), S(-8), S(45)), .1)
					an.C0 = clerp(an.C0, ar(1.5, .5 - .1 * T(a6 / 28), 0) * bf(S(145), 0, S(10 - 5 * T(a6 / 32))), .1)
					ao.C0 = clerp(ao.C0, ar(-1.5, .5 - .1 * T(a6 / 28), 0) * bf(S(145), 0, S(-70 + 5 * T(a6 / 32))), .1)
				end;
				if aq == 10 then
					am.C0 = clerp(am.C0, ar(1, -1 - .1 * T(a6 / 34), 0) * bf(0, S(90), 0) * bf(0, 0, S(0 - 2 * T(a6 / 34))), .1)
					ak.C0 = clerp(ak.C0, ar(-1, -1 - .1 * T(a6 / 34), 0) * bf(0, S(-90), 0) * bf(0, 0, S(0 + 2 * T(a6 / 34))), .1)
					bn.C0 = clerp(bn.C0, bo * ar(0, 0, 0 + .1 * T(a6 / 34)) * bf(S(0 - 2 * T(a6 / 34)), 0, 0), .1)
					aa.Neck.C0 = clerp(aa.Neck.C0, bg * bf(S(10 - 8 * T(a6 / 29)), 0, 0), .1)
					an.C0 = clerp(an.C0, ar(1.1, .5 - .1 * T(a6 / 28), .5) * bf(S(0 + 3 * T(a6 / 30)), 0, S(-40 - 2 * T(a6 / 32))), .1)
					ao.C0 = clerp(ao.C0, ar(-1.1, .5 - .1 * T(a6 / 28), .5) * bf(S(0 + 3 * T(a6 / 30)), 0, S(40 + 2 * T(a6 / 32))), .1)
				end;
				if aq == "Darkness" then
					local fn = _(1, 95)
					if fn == 1 then
						aa.Neck.C0 = clerp(aa.Neck.C0, bg * bf(S(30 + _(-10, 10)), S(_(-10, 10)), S(_(-10, 10))), 1)
					end;
					am.C0 = clerp(am.C0, ar(1, -1 - .1 * T(a6 / 34), 0) * bf(0, S(90), 0) * bf(0, 0, 0), .1)
					ak.C0 = clerp(ak.C0, ar(-1, -1 - .1 * T(a6 / 34), 0) * bf(0, S(-90), 0) * bf(0, 0, 0), .1)
					bn.C0 = clerp(bn.C0, bo * ar(0, 0, 0 + .1 * T(a6 / 34)) * bf(0, 0, 0), .1)
					aa.Neck.C0 = clerp(aa.Neck.C0, bg * bf(S(10 - 2 * T(a6 / 29)), 0, 0), .1)
					an.C0 = clerp(an.C0, ar(.3, .1 - .1 * T(a6 / 28), -.8) * bf(S(180 + 3 * T(a6 / 30)), S(-90), S(0 - 1 * T(a6 / 32))), .1)
					ao.C0 = clerp(ao.C0, ar(-.3, .1 - .1 * T(a6 / 28), -.8) * bf(S(180 + 3 * T(a6 / 30)), S(90), S(0 + 1 * T(a6 / 32))), .1)
				end;
				if aq == 1080 then
					local fn = _(1, 60)
					if fn == 1 then
						aa.Neck.C0 = clerp(aa.Neck.C0, bg * bf(S(30 + _(-10, 10)), S(_(-10, 10)), S(_(-10, 10))), 1)
					end;
					am.C0 = clerp(am.C0, ar(1, -1 - .1 * T(a6 / 34), 0) * bf(0, S(90), 0) * bf(0, 0, S(0 - 2 * T(a6 / 34))), .1)
					ak.C0 = clerp(ak.C0, ar(-1, -1 - .1 * T(a6 / 34), 0) * bf(0, S(-90), 0) * bf(0, 0, S(0 + 2 * T(a6 / 34))), .1)
					bn.C0 = clerp(bn.C0, bo * ar(0, 0, 0 + .1 * T(a6 / 34)) * bf(S(0 - 2 * T(a6 / 34)), 0, S(25)), .1)
					aa.Neck.C0 = clerp(aa.Neck.C0, bg * bf(S(10 - 8 * T(a6 / 29)), 0, S(-25)), .1)
					an.C0 = clerp(an.C0, ar(1, .3 - .1 * T(a6 / 28), -.6) * bf(S(85 + 3 * T(a6 / 30)), 0, S(-70 - 2 * T(a6 / 32))), .1)
					ao.C0 = clerp(ao.C0, ar(-1, .5 - .1 * T(a6 / 28), -.6) * bf(S(95 + 3 * T(a6 / 30)), 0, S(50 + 2 * T(a6 / 32))), .1)
				end;
				if aq == "???" then
					local fn = _(1, 45)
					if fn == 1 then
						aa.Neck.C0 = clerp(aa.Neck.C0, bg * bf(S(30 + _(-10, 10)), S(_(-10, 10)), S(_(-10, 10))), 1)
					end;
					am.C0 = clerp(am.C0, ar(1, -1.2 - .1 * T(a6 / 34), 0) * bf(0, S(90), 0) * bf(0, 0, S(25 - 2 * T(a6 / 34))), .1)
					ak.C0 = clerp(ak.C0, ar(-1, -1.2 - .1 * T(a6 / 34), 0) * bf(0, S(-90), 0) * bf(0, 0, S(-25 + 2 * T(a6 / 34))), .1)
					bn.C0 = clerp(bn.C0, bo * ar(0, 0, 0 + .1 * T(a6 / 34)) * bf(S(25 - 2 * T(a6 / 34)), 0, 0), .1)
					aa.Neck.C0 = clerp(aa.Neck.C0, bg * bf(S(25 - 3 * T(a6 / 29)), 0, 0), .1)
					an.C0 = clerp(an.C0, ar(1.5, .5 - .1 * T(a6 / 28), 0) * bf(S(20 + 3 * T(a6 / 30)), 0, S(5 - 2 * T(a6 / 32))), .1)
					ao.C0 = clerp(ao.C0, ar(-1.5, .5 - .1 * T(a6 / 28), 0) * bf(S(20 + 3 * T(a6 / 30)), 0, S(-5 + 2 * T(a6 / 32))), .1)
				end;
				if aq == 999 then
					local fn = _(1, 25)
					if fn == 1 then
						aa.Neck.C0 = clerp(aa.Neck.C0, bg * bf(S(30 + _(-10, 10)), S(_(-10, 10)), S(_(-10, 10))), 1)
					end;
					am.C0 = clerp(am.C0, ar(1, -1 - .1 * T(a6 / 24), 0) * bf(0, S(60), 0) * bf(0, 0, S(0 - 2 * T(a6 / 24))), .1)
					ak.C0 = clerp(ak.C0, ar(-1, -1 - .1 * T(a6 / 24), 0) * bf(0, S(-90), 0) * bf(0, 0, S(0 + 2 * T(a6 / 24))), .1)
					bn.C0 = clerp(bn.C0, bo * ar(0, 0, 0 + .1 * T(a6 / 24)) * bf(S(0 - 2 * T(a6 / 24)), 0, S(35)), .1)
					aa.Neck.C0 = clerp(aa.Neck.C0, bg * bf(S(10 - 8 * T(a6 / 29)), 0, S(-35)), .1)
					an.C0 = clerp(an.C0, ar(1, .5 - .1 * T(a6 / 18), -.6) * bf(S(85 + 3 * T(a6 / 20)), 0, S(-75 - 2 * T(a6 / 22))), .1)
					ao.C0 = clerp(ao.C0, ar(-1, .5 - .1 * T(a6 / 18), -.6) * bf(S(95 + 3 * T(a6 / 20)), 0, S(85 + 2 * T(a6 / 22))), .1)
				end;
				if aq == "nil" then
					local fn = _(1, 25)
					if fn == 1 then
						aa.Neck.C0 = clerp(aa.Neck.C0, bg * bf(S(30 + _(-10, 10)), S(_(-10, 10)), S(_(-10, 10))), 1)
					end;
					am.C0 = clerp(am.C0, ar(1, -.4 - .1 * T(a6 / 34), -.5) * bf(0, S(90), 0) * bf(S(-6.5), 0, S(0 - 2 * T(a6 / 34))), .1)
					ak.C0 = clerp(ak.C0, ar(-1, -1 - .1 * T(a6 / 34), 0) * bf(0, S(-90), 0) * bf(S(-6.5), 0, S(10 + 2 * T(a6 / 34))), .1)
					bn.C0 = clerp(bn.C0, bo * ar(0, 0, 3 + 1 * T(a6 / 34)) * bf(S(0 - 2 * T(a6 / 34)), 0, 0), .1)
					aa:WaitForChild("Neck", 300).C0 = clerp(aa.Neck.C0, bg * bf(S(10 - 5 * T(a6 / 29)), S(-15), 0), .1)
					an.C0 = clerp(an.C0, ar(1.5, .5 - .1 * T(a6 / 28), 0) * bf(S(0 + 3 * T(a6 / 30)), 0, S(10 - 5 * T(a6 / 32))), .1)
					ao.C0 = clerp(ao.C0, ar(-1.1, .5 - .1 * T(a6 / 28), .5) * bf(S(0 + 3 * T(a6 / 30)), 0, S(40 + 2 * T(a6 / 32))), .1)
				end;
				if aq == "Complexity" then
					am.C0 = clerp(am.C0, ar(1, -.2 - .1 * T(a6 / 34), -.5) * bf(0, S(90), 0) * bf(S(-8.5), 0, S(0 - 5 * T(a6 / 30))), .1)
					ak.C0 = clerp(ak.C0, ar(-1, -.9 - .1 * T(a6 / 34), 0) * bf(0, S(-90), 0) * bf(S(-25), 0, S(10 + 5 * T(a6 / 30))), .1)
					bn.C0 = clerp(bn.C0, bo * ar(0, 0, 3 + 1 * T(a6 / 34)) * bf(S(0 - 2 * T(a6 / 34)), S(25), 0), .1)
					aa.Neck.C0 = clerp(aa.Neck.C0, bg * bf(S(-20 + 8 * T(a6 / 29)), S(2), S(-20)), .1)
					an.C0 = clerp(an.C0, ar(1.6, .7 - .1 * T(a6 / 28), 0) * bf(S(180 - 10 * T(a6 / 30)), 0, S(30 - 5 * T(a6 / 32))), .1)
					ao.C0 = clerp(ao.C0, ar(-1.5, .5 - .1 * T(a6 / 28), 0) * bf(S(0 - 10 * T(a6 / 30)), 0, S(-30 + 5 * T(a6 / 32))), .1)
				end;
				if aq == "Abstract" then
					am.C0 = clerp(am.C0, ar(1, -1 - .1 * T(a6 / 34), 0) * bf(0, S(90), 0) * bf(S(-6.5 + 5 * T(a6 / 32)), 0, S(0 - 2 * T(a6 / 34))), .1)
					ak.C0 = clerp(ak.C0, ar(-1, -.4 - .1 * T(a6 / 34), -.5) * bf(0, S(-90), 0) * bf(S(-6.5 - 5 * T(a6 / 32)), 0, S(10 + 2 * T(a6 / 34))), .1)
					bn.C0 = clerp(bn.C0, bo * ar(0 + .3 * T(a6 / 30), 0, 3 + 1 * T(a6 / 34)) * bf(S(0 - 2 * T(a6 / 34)), S(0 - 4 * T(a6 / 32)), S(0 + 10 * U(a6 / 34))), .1)
					aa.Neck.C0 = clerp(aa.Neck.C0, bg * bf(S(20 - 8 * T(a6 / 29)), 0, S(0 - 10 * U(a6 / 34))), .1)
					an.C0 = clerp(an.C0, ar(1.1, .5 - .1 * T(a6 / 28), .5) * bf(S(0 + 3 * T(a6 / 30)), 0, S(-40 - 2 * T(a6 / 30))), .1)
					ao.C0 = clerp(ao.C0, ar(-1.1, .5 - .1 * T(a6 / 28), .5) * bf(S(0 + 3 * T(a6 / 30)), 0, S(40 + 2 * T(a6 / 30))), .1)
				end;
				if aq == "Night" then
					am.C0 = clerp(am.C0, ar(1, -1 - .1 * T(a6 / 34), 0) * bf(0, S(90), 0) * bf(S(-8.5), 0, S(0 - 2.75 * T(a6 / 34))), .1)
					ak.C0 = clerp(ak.C0, ar(-1, -.4 - .1 * T(a6 / 34), -.5) * bf(0, S(-90), 0) * bf(S(8.5), 0, S(10 + 2.75 * T(a6 / 34))), .1)
					bn.C0 = clerp(bn.C0, bo * ar(0 + .25 * U(a6 / 27), 0, 3 + 1 * T(a6 / 34)) * bf(S(0 - 2 * T(a6 / 34)), S(-15), S(35)), .1)
					aa.Neck.C0 = clerp(aa.Neck.C0, bg * bf(S(10 - 8 * T(a6 / 29)), 0, S(-35)), .1)
					an.C0 = clerp(an.C0, ar(1.5, .5 - .1 * T(a6 / 28), 0) * bf(S(0 - 10 * T(a6 / 30)), 0, S(40 - 5 * T(a6 / 32))), .1)
					ao.C0 = clerp(ao.C0, ar(-1.5, .5 - .1 * T(a6 / 28), .5) * bf(S(0 - 10 * T(a6 / 30)), 0, S(20 + 5 * T(a6 / 32))), .1)
				end;
				if aq == "Betray" then
					am.C0 = clerp(am.C0, ar(1, -1 - .1 * T(a6 / 34), 0) * bf(0, S(90), 0) * bf(S(-6.5 + 5 * U(a6 / 32)), 0, S(4 - 2 * T(a6 / 34))), .1)
					ak.C0 = clerp(ak.C0, ar(-1, -.4 - .1 * T(a6 / 34), -.3) * bf(0, S(-90), 0) * bf(S(-6.5 - 5 * U(a6 / 32)), 0, S(-4 + 2 * T(a6 / 34))), .1)
					bn.C0 = clerp(bn.C0, bo * ar(0 + .3 * T(a6 / 29), 0, 3 + 1.5 * T(a6 / 34)) * bf(S(-4 + 2 * T(a6 / 34)), S(0 + 5 * T(a6 / 32)), S(0 + 15 * U(a6 / 32))), .1)
					aa.Neck.C0 = clerp(aa.Neck.C0, bg * bf(S(10 - 8 * T(a6 / 29)), 0, S(0 - 15 * U(a6 / 32))), .1)
					an.C0 = clerp(an.C0, ar(1.5, .5 - .1 * T(a6 / 28), 0) * bf(S(0 - 10 * T(a6 / 30)), 0, S(20 - 8 * T(a6 / 32))), .1)
					ao.C0 = clerp(ao.C0, ar(-1.3, .5 - .1 * T(a6 / 28), -.6) * bf(S(180 - 4 * T(a6 / 30)), S(20), S(30 + 5 * T(a6 / 32))), .1)
				end;
				if aq == "Recogniscent" then
					am.C0 = clerp(am.C0, ar(1.1, -1 - .1 * T(a6 / 34), -.2) * bf(0, S(60), 0) * bf(0, 0, S(0 - 2 * T(a6 / 34))), .1)
					ak.C0 = clerp(ak.C0, ar(-1, -1 - .1 * T(a6 / 34), 0) * bf(0, S(-90), 0) * bf(S(-3), 0, S(0 + 2 * T(a6 / 34))), .1)
					bn.C0 = clerp(bn.C0, bo * ar(0, 0, 0 + .1 * T(a6 / 34)) * bf(S(0 - 3 * T(a6 / 34)), 0, S(25)), .1)
					aa.Neck.C0 = clerp(aa.Neck.C0, bg * bf(S(5 - 3 * T(a6 / 29)), S(0 - 4 * T(a6 / 32)), S(-25 + 4 * T(a6 / 31))), .1)
					an.C0 = clerp(an.C0, ar(1.5, .5 - .1 * T(a6 / 28), 0) * bf(S(0 + 3 * T(a6 / 30)), 0, S(20 - 2 * T(a6 / 32))), .1)
					ao.C0 = clerp(ao.C0, ar(-1.5, .5 - .1 * T(a6 / 28), 0) * bf(S(210 + 3 * T(a6 / 30)), S(-30), S(50 + 2 * T(a6 / 32))), .1)
				end;
				if aq == "" then
					local fn = _(1, 75)
					if fn == 1 then
						aa.Neck.C0 = clerp(aa.Neck.C0, bg * bf(S(10 + _(-10, 10)), S(_(-10, 10)), S(_(-10, 10))), 1)
					end;
					am.C0 = clerp(am.C0, ar(1, -1 - .1 * T(a6 / 34), 0) * bf(0, S(90), 0) * bf(S(-6.5), 0, S(0 - 2 * T(a6 / 34))), .1)
					ak.C0 = clerp(ak.C0, ar(-1, -.4 - .1 * T(a6 / 34), -.5) * bf(0, S(-90), 0) * bf(S(-6.5), 0, S(10 + 2 * T(a6 / 34))), .1)
					bn.C0 = clerp(bn.C0, bo * ar(0, 0, 3 + 1 * T(a6 / 34)) * bf(S(25 - 2 * T(a6 / 34)), 0, 0), .1)
					aa.Neck.C0 = clerp(aa.Neck.C0, bg * bf(S(25 - 3 * T(a6 / 29)), 0, 0), .1)
					an.C0 = clerp(an.C0, ar(1.5, .5 - .1 * T(a6 / 28), 0) * bf(S(20 + 3 * T(a6 / 30)), 0, S(5 - 2 * T(a6 / 32))), .1)
					ao.C0 = clerp(ao.C0, ar(-1.5, .5 - .1 * T(a6 / 28), 0) * bf(S(20 + 3 * T(a6 / 30)), 0, S(-5 + 2 * T(a6 / 32))), .1)
				end;
				if aq == "AaA" then
					am.C0 = clerp(am.C0, ar(1, -1 - .1 * T(a6 / 34), 0) * bf(0, S(90), 0) * bf(S(-8.5), 0, S(0 - 2.5 * T(a6 / 34))), .1)
					ak.C0 = clerp(ak.C0, ar(-1, -1 - .1 * T(a6 / 34), 0) * bf(0, S(-90), 0) * bf(0, 0, S(0 + 2.5 * T(a6 / 34))), .1)
					bn.C0 = clerp(bn.C0, bo * ar(0, 0, 0 + .1 * T(a6 / 34)) * bf(S(0 - 2 * T(a6 / 34)), 0, S(30)), .1)
					aa.Neck.C0 = clerp(aa.Neck.C0, bg * bf(S(10 - 5 * T(a6 / 29)), 0, S(-30)), .1)
					an.C0 = clerp(an.C0, ar(.8, .5 - .1 * T(a6 / 28), -.6) * bf(S(125), 0, S(-90)), .1)
					ao.C0 = clerp(ao.C0, ar(-.7, .2 - .1 * T(a6 / 28), -.35) * bf(S(-62.5), 0, S(90)), .1)
				end;
				if aq == 55 then
					am.C0 = clerp(am.C0, ar(1, -1 - .1 * T(a6 / 34), 0) * bf(0, S(90), 0) * bf(S(-6.5), 0, S(-10 + 2 * T(a6 / 30))), .1)
					ak.C0 = clerp(ak.C0, ar(-1, -.4 - .1 * T(a6 / 34), -.5) * bf(0, S(-90), 0) * bf(S(-6.5), 0, S(10 - 2 * T(a6 / 30))), .1)
					bn.C0 = clerp(bn.C0, bo * ar(0, 0, 3 + 1 * T(a6 / 34)) * bf(S(-8 + 2 * T(a6 / 34)), 0, S(30)), .1)
					aa.Neck.C0 = clerp(aa.Neck.C0, bg * bf(S(25 - 5 * T(a6 / 29)), 0, S(-30)), .1)
					an.C0 = clerp(an.C0, ar(1.5, .5 - .1 * T(a6 / 28), .2) * bf(S(0 - 10 * T(a6 / 30)), S(-20), S(20 - 5 * T(a6 / 32))), .1)
					ao.C0 = clerp(ao.C0, ar(-1, .5 - .1 * T(a6 / 28), -.7) * bf(S(0 - 10 * T(a6 / 30)), S(180), S(-90 + 5 * T(a6 / 32))), .1)
				end;
				if aq == 60 then
					am.C0 = clerp(am.C0, ar(1, -1 - .1 * T(a6 / 34), 0) * bf(0, S(90), 0) * bf(S(-6.5), 0, S(0 - 2.5 * T(a6 / 34))), .1)
					ak.C0 = clerp(ak.C0, ar(-1, -1 - .1 * T(a6 / 34), 0) * bf(0, S(-90), 0) * bf(S(-6.5), 0, S(0 + 2.5 * T(a6 / 34))), .1)
					bn.C0 = clerp(bn.C0, bo * ar(0, 0, 0 + .1 * T(a6 / 34)) * bf(S(0 - 2 * T(a6 / 34)), 0, S(45)), .1)
					aa.Neck.C0 = clerp(aa.Neck.C0, bg * bf(S(10 - 8 * T(a6 / 29)), 0, S(-45)), .1)
					an.C0 = clerp(an.C0, ar(1.2, .5 - .1 * T(a6 / 28), .6) * bf(S(0 + 3 * T(a6 / 30)), 0, S(-40 - 2 * T(a6 / 32))), .1)
					ao.C0 = clerp(ao.C0, ar(-1.2, .5 - .1 * T(a6 / 28), .6) * bf(S(0 + 3 * T(a6 / 30)), 0, S(40 + 2 * T(a6 / 32))), .1)
				end;
				if aq == "Frost" then
					am.C0 = clerp(am.C0, ar(1, -1 - .1 * T(a6 / 34), -.3) * bf(0, S(90), 0) * bf(S(-6.5), 0, S(-10 - 2.5 * T(a6 / 34))), .1)
					ak.C0 = clerp(ak.C0, ar(-1, -1 - .1 * T(a6 / 34), -.3) * bf(0, S(-90), 0) * bf(S(-10.5), 0, S(25 + 2.5 * T(a6 / 34))), .1)
					bn.C0 = clerp(bn.C0, bo * ar(0, 0, 0 + .1 * T(a6 / 34)) * bf(S(0 - 2 * T(a6 / 34)), 0, S(35)), .1)
					aa.Neck.C0 = clerp(aa.Neck.C0, bg * bf(S(10 - 5 * T(a6 / 29)), 0, S(-35)), .1)
					an.C0 = clerp(an.C0, ar(1, .3 - .1 * T(a6 / 28), -.6) * bf(S(85 + 3 * T(a6 / 30)), 0, S(-75 - 2 * T(a6 / 32))), .1)
					ao.C0 = clerp(ao.C0, ar(-1, .3 - .1 * T(a6 / 28), -.6) * bf(S(95 + 3 * T(a6 / 30)), 0, S(85 + 2 * T(a6 / 32))), .1)
				end
			elseif fl > 2 and fl < 22 and hitfloor ~= nil then
				f7 = "Walk"
				if aq == "a" then
					am.C0 = clerp(am.C0, ar(1, -1, 0) * bf(0, S(90), 0) * bf(0, 0, 0), .1)
					ak.C0 = clerp(ak.C0, ar(-1, -1, 0) * bf(0, S(-90), 0) * bf(0, 0, 0), .1)
					bn.C0 = clerp(bn.C0, bo * ar(0, 0, 0) * bf(0, 0, 0), .1)
					aa.Neck.C0 = clerp(aa.Neck.C0, bg * bf(0, 0, 0), .1)
					an.C0 = clerp(an.C0, ar(1.3, 1, 0) * bf(S(0 + 3 * T(a6 / 30)), 0, S(80)), .1)
					ao.C0 = clerp(ao.C0, ar(-1.3, 1, 0) * bf(S(0 + 3 * T(a6 / 30)), 0, S(-80)), .1)
				elseif aq == "Moonlight" then
					am.C0 = clerp(am.C0, ar(1, -1 + .1 * T(a6 / 14), 0 + .5 * T(a6 / 14)) * bf(0, S(90 + 5 * U(a6 / 14)), 0) * bf(S(0 + 1.5 * U(a6 / 12)), 0, S(0 + 50 * U(a6 / 14))), .1)
					ak.C0 = clerp(ak.C0, ar(-1, -1 - .1 * T(a6 / 14), 0 - .5 * T(a6 / 14)) * bf(0, S(-90 + 5 * U(a6 / 14)), 0) * bf(S(0 - 1.5 * U(a6 / 12)), 0, S(0 + 50 * U(a6 / 14))), .1)
					bn.C0 = clerp(bn.C0, bo * ar(0, 0, 0 + .175 * T(a6 / 7)) * bf(S(15), S(0 + 1.5 * U(a6 / 12)), S(0 - 8 * U(a6 / 14))), .1)
					aa.Neck.C0 = clerp(aa.Neck.C0, bg * bf(S(5), S(0 - 1.5 * U(a6 / 12)), S(0 + 8 * U(a6 / 14))), .1)
					an.C0 = clerp(an.C0, ar(1.1, 0 - .1 * T(a6 / 28), 0) * bf(S(180), 0, S(120)), .1)
					ao.C0 = clerp(ao.C0, ar(-1.5, .5, 0) * bf(S(0 - 65 * U(a6 / 13)), S(0 + 8 * U(a6 / 14)), 0), .1)
				else
					local aF, fo = U, a6;
					local fp, fq, fr = a6 / 11, a6 / 5.5, a6 / 10;
					am.C0 = clerp(am.C0, ar(1, -1, 0) * bf(0, S(90), 0) * bf(S(0 + 1 * aF(fp)), S(0 + 10 * aF(fr)), S(0 + 45 * aF(fp))), .1)
					ak.C0 = clerp(ak.C0, ar(-1, -1, 0) * bf(0, S(-90), 0) * bf(S(0 - 1 * aF(fp)), S(0 + 10 * aF(fr)), S(0 + 45 * aF(fp))), .1)
					bn.C0 = clerp(bn.C0, bo * ar(0, 0, 0 + .15 * aF(fq)) * bf(S(8), S(0 + 1 * aF(fp)), S(0 - 10 * aF(fr))), .1)
					aa.Neck.C0 = clerp(aa.Neck.C0, bg * bf(S(6), S(0 - 1 * aF(fp)), S(0 + 10 * aF(fr))), .1)
					an.C0 = clerp(an.C0, ar(1.5, .5, 0) * bf(S(0 - 45 * aF(fr)), S(0 + 10 * aF(fr)), 0), .1)
					ao.C0 = clerp(ao.C0, ar(-1.5, .5, 0) * bf(S(0 + 45 * aF(fr)), S(0 + 10 * aF(fr)), 0), .1)
				end
			elseif fl >= 22 and hitfloor ~= nil then
				f7 = "Run"
				if aq == 1 or aq == 3 or aq == "" or aq == 80 or aq == 6 or aq == "nil" or aq == 8 or aq == 55 or aq == 9 or aq == 13 or aq == "Ascend2ElectricBoogaloo" or aq == 999 or aq == 4 or aq == 9999 or aq == 666 or aq == 81 or aq == "Retaliation" or aq == "Complexity" or aq == "Abstract" or aq == "Rem" or aq == "Betray" or aq == "Night" then
					am.C0 = clerp(am.C0, ar(1, -.5, -.6) * bf(0, S(90), 0) * bf(S(1.5), 0, S(-20 - 5 * T(a6 / 34))), .2)
					ak.C0 = clerp(ak.C0, ar(-1, -1, 0) * bf(0, S(-90), 0) * bf(S(1), 0, S(20 + 2 * T(a6 / 38))), .2)
					bn.C0 = clerp(bn.C0, bo * ar(0 - .15 * T(a6 / 47), -.5, 2.5 + .25 * T(a6 / 28)) * bf(S(60 * fg.Z), S(0 - 30 * fg.X - bp.RotVelocity.Y), S(0 - bp.RotVelocity.Y * 4.5 + 3 * T(a6 / 47))), .05)
					aa.Neck.C0 = clerp(aa.Neck.C0, bg * bf(S(-40 * fg.Z - 5 * T(a6 / 52)), S(0 - 3 * T(a6 / 37)), S(0 + 2 * T(a6 / 78))), .2)
					an.C0 = clerp(an.C0, ar(1.5, .5 + .05 * T(a6 / 28), 0) * bf(S(-8 - 4 * T(a6 / 59)), S(-20 + 7 * T(a6 / 62)), S(20 + 5 * T(a6 / 50))), .2)
					ao.C0 = clerp(ao.C0, ar(-1.5, .5 + .1 * T(a6 / 28), 0) * bf(S(-8 - 3 * T(a6 / 55)), S(20 + 8 * T(a6 / 67)), S(-20 - 4 * T(a6 / 29))), .2)
				elseif aq == 70 then
					am.C0 = clerp(am.C0, ar(1, -.5, -.6) * bf(0, S(90), 0) * bf(S(1.5), 0, S(-20 - 5 * T(a6 / 34))), .2)
					ak.C0 = clerp(ak.C0, ar(-1, -1, 0) * bf(0, S(-90), 0) * bf(S(1), 0, S(20 + 2 * T(a6 / 38))), .2)
					bn.C0 = clerp(bn.C0, bo * ar(0 - .15 * T(a6 / 47), -.5, 12 + .25 * T(a6 / 28)) * bf(S(60 * fg.Z), S(0 - 30 * fg.X - bp.RotVelocity.Y), S(0 - bp.RotVelocity.Y * 4.5 + 3 * T(a6 / 47))), .05)
					aa.Neck.C0 = clerp(aa.Neck.C0, bg * bf(S(-40 * fg.Z - 5 * T(a6 / 52)), S(0 - 3 * T(a6 / 37)), S(0 + 2 * T(a6 / 78))), .2)
					an.C0 = clerp(an.C0, ar(1.5, .5 + .05 * T(a6 / 28), 0) * bf(S(-8 - 4 * T(a6 / 59)), S(-20 + 7 * T(a6 / 62)), S(20 + 5 * T(a6 / 50))), .2)
					ao.C0 = clerp(ao.C0, ar(-1.5, .5 + .1 * T(a6 / 28), 0) * bf(S(-8 - 3 * T(a6 / 55)), S(20 + 8 * T(a6 / 67)), S(-20 - 4 * T(a6 / 29))), .2)
				elseif aq == 5 or aq == 7 or aq == 10 or aq == "Musical" or aq == 60 or aq == "Frost" then
					local aF = U;
					local fp = a6 / 6;
					local fq = a6 / 3;
					local fr = a6 / 5;
					local fs = a6 / 2.5;
					am.C0 = clerp(am.C0, ar(1, -1, 0) * bf(S(0), S(90), S(0)) * bf(S(0 + 1 * aF(fp)), S(0 - 2.5 * aF(fs)), S(0 + 75 * aF(fr))), .15)
					ak.C0 = clerp(ak.C0, ar(-1, -1, 0) * bf(S(0), S(-90), S(0)) * bf(S(0 - 1 * aF(fp)), S(0 + 2.5 * aF(fs)), S(0 + 75 * aF(fr))), .15)
					bn.C0 = clerp(bn.C0, bo * ar(0, 0, 0 + .2 * aF(fq)) * bf(S(15), S(0 + 1 * aF(fp)), S(0 - 15 * aF(fr))), .1)
					aa.Neck.C0 = clerp(aa.Neck.C0, bg * bf(S(-5), S(0 - 1.5 * aF(fp)), S(0 + 15 * aF(fr))), .1)
					an.C0 = clerp(an.C0, ar(1.5, .4, 0 + .2 * aF(fr)) * bf(S(0 - 75 * aF(fr)), S(0 - 15 * aF(fs)), S(0 + 15 * aF(fr))), .2)
					ao.C0 = clerp(ao.C0, ar(-1.5, .4, 0 - .2 * aF(fr)) * bf(S(0 + 75 * aF(fr)), S(0 - 15 * aF(fs)), S(0 + 15 * aF(fr))), .2)
				elseif aq == 1080 then
					local ft = U;
					local fu = .4;
					local fv = 4;
					local fw = 2;
					local fx = 3;
					am.C0 = clerp(am.C0, ar(1, -1, 0) * bf(0, S(90), 0) * bf(0, 0, S(0 + 75 * ft(a6 / fv))), fu)
					ak.C0 = clerp(ak.C0, ar(-1, -1, 0) * bf(0, S(-90), 0) * bf(0, 0, S(0 + 75 * ft(a6 / fv))), fu)
					bn.C0 = clerp(bn.C0, bo * ar(0, 0, 0 + .15 * ft(a6 / fw)) * bf(S(25), 0, S(0 + 10 * ft(a6 / fv))), fu)
					aa.Neck.C0 = clerp(aa.Neck.C0, bg * bf(S(-15), 0, S(0 - 10 * ft(a6 / fv))), fu)
					an.C0 = clerp(an.C0, ar(1.5, .35, 0 + .5 * ft(a6 / fx)) * bf(S(0 - 125 * ft(a6 / fx)), S(0), S(0)), fu)
					ao.C0 = clerp(ao.C0, ar(-1.5, .35, 0 - .5 * ft(a6 / fx)) * bf(S(0 + 125 * ft(a6 / fx)), S(0), S(0)), fu)
				else
					am.C0 = clerp(am.C0, ar(1, -.5, -.6) * bf(S(0), S(90), S(0)) * bf(S(1.5), S(0), S(-20 - 5 * T(a6 / 34))), .2)
					ak.C0 = clerp(ak.C0, ar(-1, -1, 0) * bf(S(0), S(-90), S(0)) * bf(S(1), S(0), S(20 + 2 * T(a6 / 38))), .2)
					bn.C0 = clerp(bn.C0, bo * ar(0 - .15 * T(a6 / 47), -.5, 2.5 + .25 * T(a6 / 28)) * bf(S(70), S(0 - bp.RotVelocity.Y), S(0 - bp.RotVelocity.Y * 4.5 + 3 * T(a6 / 47))), .05)
					aa.Neck.C0 = clerp(aa.Neck.C0, bg * bf(S(-17 - 5 * T(a6 / 52)), S(0 - 3 * T(a6 / 37)), S(0 + 2 * T(a6 / 78))), .2)
					an.C0 = clerp(an.C0, ar(1.5, .5 + .05 * T(a6 / 28), 0) * bf(S(-8 - 4 * T(a6 / 59)), S(-20 + 7 * T(a6 / 62)), S(20 + 5 * T(a6 / 50))), .2)
					ao.C0 = clerp(ao.C0, ar(-1.5, .5 + .1 * T(a6 / 28), 0) * bf(S(-8 - 3 * T(a6 / 55)), S(20 + 8 * T(a6 / 67)), S(-20 - 4 * T(a6 / 29))), .2)
				end
			end
		end
	end))
end)
ScriptsTab:NewSearchBar()
local g = Instance.new("BlurEffect", game:service'Lighting')
g.Size = 1;
spawn(function() 
	repeat
		task.wait()
		g.Size = g.Size + 0.5
	until g.Size == 40
	wait(2)
	repeat
		task.wait()
		g.Size = g.Size - 1
	until g.Size == 0
end)
spawn(function()
	local h = 70;
	local i = {
		FieldOfView = h - 15
	}
	local j = TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut)
	local k = game:GetService("TweenService"):Create(game.Workspace.CurrentCamera, j, i)
	k:Play()
	wait(3.5)
	game:GetService("TweenService"):Create(game.Workspace.CurrentCamera, j, {
		FieldOfView = h
	}):Play()
end)
hub:SetMainTab(ScriptsTab)
