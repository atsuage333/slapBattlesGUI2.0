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
        SafeSpot.Position = Vector3.new(53.324951171875, 278.4712829589844, 84.06188201904297)
        SafeSpot.Name = "SafeSpot"
        SafeSpot.Size = Vector3.new(5000, 50, 5000)
        SafeSpot.Anchored = true
        SafeSpot.Transparency = 0
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-194.94619750976562, 306.47119140625, -8.577287673950195)
  	end    
})


HomeTab:AddButton({
	Name = "TP to Counter 1",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-192.23495483398438, 14.985305786132812, -75.67790222167969)
  	end    
})

HomeTab:AddButton({
	Name = "TP to Counter 2",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(94.82032775878906, 7.65123176574707, 55.07276153564453)
  	end    
})

HomeTab:AddButton({
	Name = "TP to Counter 3",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-70.20014190673828, 3.235132932662964, -209.85687255859375)
  	end    
})

HomeTab:AddButton({
	Name = "TP to Counter 4",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(220.70248413085938, 12.01014518737793, -204.79151916503906)
  	end    
})

HomeTab:AddButton({
	Name = "Destroy Gui",
	Callback = function()
	      OrionLib:Destroy()
  	end    
})

HelpTab:AddButton({
	Name = "Help",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-59.6718216, 6.52948904, -45.6030807, -0.0210828781, -0.0116775334, 0.999709547, -0.002015037, 0.999930263, 0.011637616, -0.999775708, -0.00176909752, -0.0211049318)
  	end    
})

HelpTab:AddLabel("After lowering the lever, wait in the safe spot for 3 minutes. Then teleport to the counter, which is located at one of the four. It's random every time. Once you find it, click on it to get a counter.")

OrionLib:Init()