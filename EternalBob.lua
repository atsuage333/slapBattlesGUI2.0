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
