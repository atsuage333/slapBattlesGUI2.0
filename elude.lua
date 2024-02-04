local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/ionlyusegithubformcmods/1-Line-Scripts/main/Mobile%20Friendly%20Orion')))()
local Window = OrionLib:MakeWindow({Name = "[⚔Update]SlapBattles👏", HidePremium = false, IntroEnabled = false, SaveConfig = true, ConfigFolder = "OrionTest"})

local HomeTab = Window:MakeTab({
	Name = "Home",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

HomeTab:AddButton({
	Name = "TP to lever",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-59.6718216, 6.52948904, -45.6030807, -0.0210828781, -0.0116775334, 0.999709547, -0.002015037, 0.999930263, 0.011637616, -0.999775708, -0.00176909752, -0.0211049318)
  	end    
})

HomeTab:AddButton({
	Name = "Safe spot TP(pim doesn't come)",
	Callback = function()
        local SafeSpot = Instance.new("Part", workspace)
        SafeSpot.Position = Vector3.new(96, -12144, 77)
        SafeSpot.Name = "SafeSpot"
        SafeSpot.Size = Vector3.new(5000, 50, 5000)
        SafeSpot.Anchored = true
        SafeSpot.Transparency = 0
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(96.18177795410156, -12116.0029296875, 66.97261047363281)
  	end    
})

HomeTab:AddButton({
	Name = "TP to Counter",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(499.4835205078125, 80.55587005615234, 78.49658966064453)
  	end    
})

HomeTab:AddButton({
	Name = "Destroy Gui",
	Callback = function()
	      OrionLib:Destroy()
  	end    
})

OrionLib:Init()