local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Slap battles Gui2.0", HidePremium = false, SaveConfig = false, ConfigFolder = "OrionTest"})

local HomeTab = Window:MakeTab({
	Name = "Home",
	PremiumOnly = false
})

end	
OrionLib:Init()
