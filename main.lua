if game.placeID == 6403373529 then
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Slap battles Gui2.0", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

local HomeTab = Window:MakeTab({
	Name = "Home",
	PremiumOnly = false
})

HomeTab:AddButton({
	Name = "Go to Retro obby",
	Callback = function()
      		print("dadsdadwa")
  	end    
})	

end	
OrionLib:Init()
