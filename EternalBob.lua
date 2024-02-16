local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/ionlyusegithubformcmods/1-Line-Scripts/main/Mobile%20Friendly%20Orion')))()
local Window = OrionLib:MakeWindow({Name = "[⚔Update]SlapBattles👏 EternalBob", HidePremium = false, IntroEnabled = false, SaveConfig = true, ConfigFolder = "OrionTest"})

local HomeTab = Window:MakeTab({
	Name = "Home",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

HomeTab:AddButton({
	Name = "Destroy Gui",
	Callback = function()
	      OrionLib:Destroy()
  	end    
})

local CombatTab = Window:MakeTab({
	Name = "Combat",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

CombatTab:AddToggle({
	Name = "Auto attack",
	Default = false,
	Callback = function(Value)
		EternalBobSlap = Value
        while EternalBobSlap do
            local Event = game:GetService("Workspace").bobBoss.DamageEvent Event:FireServer()
				wait(0.1)
            end
	end    
})

CombatTab:AddToggle({
                    Name = "Auto Click Tycoon",
                    Default = false,
                    Callback = function(Value)
AutoTycoon = Value
    for i,v in pairs(workspace:GetDescendants()) do
        if v.Name == "End" and v.ClassName == "Part" then
            v.Size = Vector3.new(28, 0.3, 4)
        end
    end
while AutoTycoon do
    for i,v in pairs(workspace:GetDescendants()) do
        if v.Name == "Click" and v:FindFirstChild("ClickDetector") then
            fireclickdetector(v.ClickDetector)
        end
    end
    task.wait()
end
                    end    
                })

				CombatTab:AddToggle({
					Name = "Auto Remove Big Meteors",
					Default = false,
					Callback = function(Value)
						_G.AutoRemoveBigMeteors = Value
				while _G.AutoRemoveBigMeteors do
				if game:GetService("Players").LocalPlayer.PlayerScripts.VFXListener:FindFirstChild("BigExplosion") then
				game:GetService("Players").LocalPlayer.PlayerScripts.VFXListener.BigExplosion:Destroy()
				end
				task.wait()
				end
					end    
				})
				
				CombatTab:AddToggle({
					Name = "Auto Remove Small Meteors",
					Default = false,
					Callback = function(Value)
						_G.AutoRemoveSmallMeteors = Value
				while _G.AutoRemoveSmallMeteors do
				if game:GetService("Players").LocalPlayer.PlayerScripts.VFXListener:FindFirstChild("SmallMeteorVFX") then
				game:GetService("Players").LocalPlayer.PlayerScripts.VFXListener.SmallMeteorVFX:Destroy()
				end
				task.wait()
				end
					end    
				})

				CombatTab:AddToggle({
					Name = "Auto Slap miniBob",
					Default = false,
					Callback = function(Value)
				_G.SlapBob = Value
				while _G.SlapBob and GloveSlap == "Killstreak" do
				game:GetService("ReplicatedStorage").KSHit:FireServer(game.Workspace.BobClone.HumanoidRootPart)
				task.wait()
				end
				while _G.SlapBob and GloveSlap == "Reaper" do
				game:GetService("ReplicatedStorage").ReaperHit:FireServer(game.Workspace.BobClone.HumanoidRootPart)
				task.wait()
				end
					end    
				})
				
				SpawnRob = CombatTab:AddToggle({
					Name = "Auto Ability Rob",
					Default = false,
					Callback = function(Value)
						_G.AutoSpawnRob = Value
				if game.Players.LocalPlayer.leaderstats.Glove.Value == "rob" then
				while _G.AutoSpawnRob do
				game:GetService("ReplicatedStorage").rob:FireServer()
				wait(15)
				end
				elseif Value == true then
				OrionLib:MakeNotification({Name = "Error",Content = "Get ethernal bob boss fight phase 6.",Image = "rbxassetid://7733658504",Time = 5})
				wait(0.05)
				SpawnRob:Set(false)
				end
					end    
				})
				

local AntiTab = Window:MakeTab({
	Name = "Anti",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

CombatTab:AddButton({
	Name = "AntiCam Shake",
	Callback = function()
		game.Players.LocalPlayer.PlayerScripts.ScreenShake:remove()
  	end    
})

AntiTab:AddToggle({
	Name = "Anti Ring",
	Default = false,
	Callback = function(Value)
		_G.AntiRing = Value
while _G.AntiRing do
if game.Workspace:FindFirstChild("Ring") then
game.Workspace:FindFirstChild("Ring"):Destroy()
end
task.wait()
end
	end    
})

AntiTab:AddToggle({
	Name = "Anti Void Damage",
	Default = false,
	Callback = function(Value)
game.Workspace["VoidPart"].CanCollide = Value
if Value == true then
game.Workspace["VoidPart"].Transparency = 0.5
else
game.Workspace["VoidPart"].Transparency = 1
end
	end    
})

local PlayerTab = Window:MakeTab({
	Name = "Player",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

PlayerTab:AddSlider({
	Name = "Walkspeed",
	Min = 20,
	Max = 1000,
	Default = 20,
	Color = Color3.fromRGB(140, 185, 255),
	Increment = 1,
	ValueName = "WS",
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
Walkspeed = Value
	end    
})

PlayerTab:AddToggle({
	Name = "Keep Walkspeed",
	Default = false,
	Callback = function(Value)
KeepWalkspeed = Value
            while KeepWalkspeed do
                if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") ~= nil and game.Players.LocalPlayer.Character.Humanoid.WalkSpeed ~= Walkspeed then
                    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Walkspeed
                end
task.wait()
            end
	end    
})

PlayerTab:AddSlider({
	Name = "Jumppower",
	Min = 50,
	Max = 1000,
	Default = 50,
	Color = Color3.fromRGB(255, 185, 140),
	Increment = 1,
	ValueName = "JP",
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
Jumppower = Value
	end    
})

PlayerTab:AddToggle({
	Name = "Keep Jumppower",
	Default = false,
	Callback = function(Value)
KeepJumppower = Value
            while KeepJumppower do
                if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") ~= nil and game.Players.LocalPlayer.Character.Humanoid.WalkSpeed ~= Jumppower then
                    game.Players.LocalPlayer.Character.Humanoid.JumpPower = Jumppower
                end
task.wait()
            end
	end    
})

OrionLib:Init()
