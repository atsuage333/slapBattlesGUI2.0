local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/ionlyusegithubformcmods/1-Line-Scripts/main/Mobile%20Friendly%20Orion')))()
local Window = OrionLib:MakeWindow({Name = "[⚔Update]SlapBattles👏", HidePremium = false, IntroEnabled = false, SaveConfig = true, ConfigFolder = "OrionTest"})

local HomeTab = Window:MakeTab({
	Name = "Home",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

HomeTab:AddButton({
	Name = "Safe spot TP",
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

HomeTab:AddToggle({
	Name = "Anti AFK",
	Default = false,
	Callback = function(Value)
		local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
wait(1)
vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)
	end    
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

CombatTab:AddDropdown({
	Name = "Godmode (Respawn&Breaks killstreak)",
	Default = "",
	Options = {"Godmode", "Godmode + Invisibility"},
	Callback = function(Value)
if Value == "Godmode" then
if game.Players.LocalPlayer.Character:FindFirstChild("entered") == nil then
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1, 0)
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1, 1)
end
repeat task.wait() until game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Tool") or game.Players.LocalPlayer.Backpack:FindFirstChildWhichIsA("Tool")
for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                    if v.ClassName == "Tool" then
                        v.Parent = game.LogService
                    end
                end
for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                        v.Parent = game.LogService
                end
game:GetService("ReplicatedStorage"):WaitForChild("HumanoidDied"):FireServer(game.Players.LocalPlayer.Character,false)
wait(3.75)
for i,v in pairs(game.LogService:GetChildren()) do
                        v.Parent = game.Players.LocalPlayer.Backpack
                end
for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                        game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                end 
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Origo.CFrame * CFrame.new(0,-5,0)
elseif Value == "Godmode + Invisibility" then
if game.Players.LocalPlayer.leaderstats.Slaps.Value >= 666 then
if game.Players.LocalPlayer.Character:FindFirstChild("entered") == nil then
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1, 0)
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1, 1)
end
repeat task.wait() until game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Tool") or game.Players.LocalPlayer.Backpack:FindFirstChildWhichIsA("Tool")
for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                    if v.ClassName == "Tool" then
                        v.Parent = game.LogService
                    end
                end
for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                        v.Parent = game.LogService
                end
game:GetService("ReplicatedStorage"):WaitForChild("HumanoidDied"):FireServer(game.Players.LocalPlayer.Character,false)
wait(3.75)
OGlove = game.Players.LocalPlayer.leaderstats.Glove.Value
fireclickdetector(workspace.Lobby.Ghost.ClickDetector)
game.ReplicatedStorage.Ghostinvisibilityactivated:FireServer()
fireclickdetector(workspace.Lobby[OGlove].ClickDetector)
for i,v in pairs(game.LogService:GetChildren()) do
                        v.Parent = game.Players.LocalPlayer.Backpack
                end
for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                        game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                end 
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Origo.CFrame * CFrame.new(0,-5,0)
else
OrionLib:MakeNotification({Name = "Error",Content = "You need 666+ slaps.",Image = "rbxassetid://7733658504",Time = 5})
end
end
	end    
})

CombatTab:AddButton({
	Name = "Slap Speed INF",
	Callback = function()
       local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local tool = character:FindFirstChildOfClass("Tool") or player.Backpack:FindFirstChildOfClass("Tool")
 
while character.Humanoid.Health ~= 0 do
local localscript = tool:FindFirstChildOfClass("LocalScript")
local localscriptclone = localscript:Clone()
localscriptclone = localscript:Clone()
localscriptclone:Clone()
localscript:Destroy()
localscriptclone.Parent = tool
wait(0.1)
end
  	end    
})

CombatTab:AddButton({
	Name = "Slap Speed INF (Bull)",
	Callback = function()
             local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local tool = character:FindFirstChildOfClass("Tool") or player.Backpack:FindFirstChildOfClass("Tool")
 
while character.Humanoid.Health ~= 0 do
local localscript = tool:FindFirstChildOfClass("LocalScript")
local localscriptclone = localscript:Clone()
localscriptclone = localscript:Clone()
localscriptclone:Clone()
localscript:Destroy()
localscriptclone.Parent = tool
wait(0.7)
end
  	end    
})

CombatTab:AddButton({
	Name = "Reach(Needs Respawn)",
	Callback = function()
          local plr = game.Players.LocalPlayer

function supaSiza(v)
   if v:IsA("Tool") then
       v.Glove.Transparency = 0.90
       v.Glove.Size = Vector3.new(50, 50, 50)
   end
end

plr.Character.ChildAdded:Connect(supaSiza)

plr.CharacterAdded:Connect(function(char)
   char.ChildAdded:Connect(supaSiza)
end)
  	end    
})

 CombatTab:AddToggle({
                    Name = "Rhythm Spam",
                    Default = false,
                    Callback = function(Value)
RhythmSpam = Value
while RhythmSpam do
game:GetService("ReplicatedStorage").rhythmevent:FireServer("AoeExplosion",0)
task.wait()
end
                    end    
                })

CombatTab:AddButton({
	Name = "Kick player (Needs Za Hando) (Inconsistent)",
	Callback = function()
if game.Players.LocalPlayer.leaderstats.Glove.Value == "Za Hando" then
OGL = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
OGWS = game.Players.LocalPlayer.Character.Humanoid.WalkSpeed
OGJP = game.Players.LocalPlayer.Character.Humanoid.JumpPower
for i,v in pairs(game.Workspace.Lobby.brazil:GetChildren()) do
                        v.CanTouch = false
                end
game:GetService("ReplicatedStorage").Erase:FireServer()
wait(0.47)
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 0
game.Players.LocalPlayer.Character.Humanoid.JumpPower = 0
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-725,310,-2)
wait(3.75)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = OGL
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = OGWS
game.Players.LocalPlayer.Character.Humanoid.JumpPower = OGJP
for i,v in pairs(game.Workspace.Lobby.brazil:GetChildren()) do
                        v.CanTouch = true
                end
else
OrionLib:MakeNotification({Name = "Error",Content = "You don't have Za Hando equipped.",Image = "rbxassetid://7733658504",Time = 5})
end
                    end    
                })


CombatTab:AddToggle({
                    Name = "Auto Enter Arena",
                    Default = false,
                    Callback = function(Value)
AutoEnterArena = Value
while AutoEnterArena do
if game.Players.LocalPlayer.Character:FindFirstChild("entered") == nil and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1, 0)
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1, 1)
    end
task.wait()
end
end
                })

local MiscTab = Window:MakeTab({
	Name = "Misc",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

MiscTab:AddButton({
	Name = "Superfast Slapple Farm (Copies script, put in autoexec)",
	Callback = function()
setclipboard("loadstring(game:HttpGet('https://raw.githubusercontent.com/ionlyusegithubformcmods/1-Line-Scripts/main/Slap%20Farm'))()")
                    end    
                })

MiscTab:AddToggle({
                    Name = "Slapple Farm (Only works in arena)",
                    Default = false,
                    Callback = function(Value)
SlappleFarm = Value
while SlappleFarm do
for i, v in ipairs(workspace.Arena.island5.Slapples:GetDescendants()) do
                if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and game.Players.LocalPlayer.Character:FindFirstChild("entered") and v.Name == "Glove" and v:FindFirstChildWhichIsA("TouchTransmitter") then
                    firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v, 0)
        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v, 1)
                end
            end
task.wait()
end
end
                })


MiscTab:AddToggle({
                    Name = "Replica Slap Farm (Use default arena portal)",
                    Default = false,
                    Callback = function(Value)
ReplicaFarm = Value
if game.Players.LocalPlayer.leaderstats.Glove.Value == "Replica" and game.Players.LocalPlayer.Character.IsInDefaultArena.Value == true then
if ReplicaFarm == true then
coroutine.wrap(SpamReplica)()
end
while ReplicaFarm do
for i, v in pairs(workspace:GetChildren()) do
                if v.Name:match(game.Players.LocalPlayer.Name) and v:FindFirstChild("HumanoidRootPart") then
game.ReplicatedStorage.b:FireServer(v:WaitForChild("HumanoidRootPart"))
                end
            end
task.wait()
                       end
elseif ReplicaFarm == true then
OrionLib:MakeNotification({Name = "Error",Content = "You don't have Replica equipped, or you aren't in the Default arena.",Image = "rbxassetid://7733658504",Time = 5})
wait(0.05)
RSF:Set(false)
end
end
                })
function SpamReplica()
while ReplicaFarm do
                           game:GetService("ReplicatedStorage").Duplicate:FireServer()
                       wait(19.9)
                       end
end


MiscTab:AddButton({
	Name = "Destroy all tycoons",
	Callback = function()
for i = 1, 110 do
 for i,v in pairs(workspace:GetDescendants()) do
        if v.Name == "Destruct" and v:FindFirstChild("ClickDetector") then
            fireclickdetector(v.ClickDetector)
        end
    end
task.wait()
end
                    end    
                })

local AntiTab = Window:MakeTab({
	Name = "Anti",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

AntiTab:AddToggle({
                    Name = "Anti Death Barriers",
                    Default = false,
                    Callback = function(Value)
if Value == true then
for i,v in pairs(game.Workspace.DEATHBARRIER:GetChildren()) do
                    if v.ClassName == "Part" and v.Name == "BLOCK" then
                        v.CanTouch = false
                    end
                end
workspace.DEATHBARRIER.CanTouch = false
workspace.DEATHBARRIER2.CanTouch = false
workspace.dedBarrier.CanTouch = false
workspace.ArenaBarrier.CanTouch = false
workspace.AntiDefaultArena.CanTouch = false
else
for i,v in pairs(game.Workspace.DEATHBARRIER:GetChildren()) do
                    if v.ClassName == "Part" and v.Name == "BLOCK" then
                        v.CanTouch = true
                    end
                end
workspace.DEATHBARRIER.CanTouch = true
workspace.DEATHBARRIER2.CanTouch = true
workspace.dedBarrier.CanTouch = true
workspace.ArenaBarrier.CanTouch = true
workspace.AntiDefaultArena.CanTouch = true
end
                    end    
                })

AntiTab:AddToggle({
                    Name = "Anti Ragdoll (This will reset your character)",
                    Default = false,
                    Callback = function(Value)
AntiRagdoll = Value
if AntiRagdoll then
game.Players.LocalPlayer.Character.Humanoid.Health = 0
game.Players.LocalPlayer.CharacterAdded:Connect(function()
game.Players.LocalPlayer.Character:WaitForChild("Ragdolled").Changed:Connect(function()
if game.Players.LocalPlayer.Character:WaitForChild("Ragdolled").Value == true and AntiRagdoll then
repeat task.wait() game.Players.LocalPlayer.Character.Torso.Anchored = true
until game.Players.LocalPlayer.Character:WaitForChild("Ragdolled").Value == false
game.Players.LocalPlayer.Character.Torso.Anchored = false
end
end)
end)
end
                    end    
                })

AntiTab:AddToggle({
                    Name = "Anti Cube of Death",
                    Default = false,
                    Callback = function(Value)
if Value == true then
        workspace.Arena.CubeOfDeathArea["the cube of death(i heard it kills)"].CanTouch = false
        else
                workspace.Arena.CubeOfDeathArea["the cube of death(i heard it kills)"].CanTouch = true
        end
                    end    
                })

AntiTab:AddToggle({
                    Name = "Anti Null",
                    Default = false,
                    Callback = function(Value)
AntiNull = Value
while AntiNull do
for i,v in pairs(game.Workspace:GetChildren()) do
                    if v.Name == "Imp" and v:FindFirstChild("Body") then
game.ReplicatedStorage.KSHit:FireServer(v.Body,true)
end
end
task.wait()
end
                    end    
                })

local BadgeTab = Window:MakeTab({
	Name = "Badge",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

BadgeTab:AddButton({
	Name = "Go limbo bob plush",
	Callback = function()
	        game:GetService("ReplicatedStorage").RepressedMemoriesMap.Parent = game.workspace
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(18478.27734375, 3069.2080078125, -397.5941467285156)
  	end    
})

BadgeTab:AddButton({
	Name = "Go limbo",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(18459.96484375, 2954.3212890625, -228.425537109375)
  	end    
})

BadgeTab:AddButton({
	Name = "Go retro start(TEST)",
	Callback = function()
	        game:GetService("ReplicatedStorage").Assets.Retro.Map.RetroObbyMap.Parent = game.workspace
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-16863.748046875, -3.3500030040740967, 4766.528808593757)
  	end    
})

BadgeTab:AddButton({
	Name = "Go retro start 2",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-16863.748046875, -3.3500030040740967, 4766.528808593757)
  	end    
})

BadgeTab:AddButton({
	Name = "Go Admin",
	Callback = function()
	        game:GetService("ReplicatedStorage").RetroTP:FireServer()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-16976, 801.0068359375, 4907)
  	end    
})

BadgeTab:AddButton({
	Name = "Get Elude",
	Callback = function()
local teleportFunc = queueonteleport or queue_on_teleport
if teleportFunc then
    teleportFunc([[
        if not game:IsLoaded() then
            game.Loaded:Wait()
        end
        repeat wait() until game.Players.LocalPlayer
        game:GetService("RunService").RenderStepped:Connect(function()
           game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-502.336, 14.228, -179.597)
        end)
game:GetService("TeleportService"):Teleport(6403373529)
    ]])
end
game:GetService("TeleportService"):Teleport(11828384869)
  	end    
})

BadgeTab:AddButton({
	Name = "Get counter",
	Callback = function()
    game:GetService("TeleportService"):Teleport(11828384869)
  	end    
})

BadgeTab:AddButton({
	Name = "Fast Brick farm",
	Callback = function()
if game.Players.LocalPlayer.leaderstats.Glove.Value == "Brick" then
for i = 1, 200 do
game:GetService("ReplicatedStorage").lbrick:FireServer()
game.Players.LocalPlayer.PlayerGui.BRICKCOUNT.ImageLabel.TextLabel.Text = game.Players.LocalPlayer.PlayerGui.BRICKCOUNT.ImageLabel.TextLabel.Text + 1;
wait(Random.new():NextNumber(1.5,1.75))
game:GetService("ReplicatedStorage").lbrick:FireServer()
game.Players.LocalPlayer.PlayerGui.BRICKCOUNT.ImageLabel.TextLabel.Text = game.Players.LocalPlayer.PlayerGui.BRICKCOUNT.ImageLabel.TextLabel.Text + 1;
wait(Random.new():NextNumber(1.5,1.75))
game:GetService("ReplicatedStorage").lbrick:FireServer()
game.Players.LocalPlayer.PlayerGui.BRICKCOUNT.ImageLabel.TextLabel.Text = game.Players.LocalPlayer.PlayerGui.BRICKCOUNT.ImageLabel.TextLabel.Text + 1;
wait(Random.new():NextNumber(1.5,1.75))
game:GetService("ReplicatedStorage").lbrick:FireServer()
game.Players.LocalPlayer.PlayerGui.BRICKCOUNT.ImageLabel.TextLabel.Text = game.Players.LocalPlayer.PlayerGui.BRICKCOUNT.ImageLabel.TextLabel.Text + 1;
wait(Random.new():NextNumber(1.5,1.75))
game:GetService('VirtualInputManager'):SendKeyEvent(true,'E',false,x)
wait(Random.new():NextNumber(1.5,1.75))
end
else
OrionLib:MakeNotification({Name = "Error",Content = "You don't have Brick equipped.",Image = "rbxassetid://7733658504",Time = 5})
end
                    end    
                })

                BadgeTab:AddButton({
                    Name = "Get Chain (Needs UnlockSlapRoyal)",
                    Callback = function()
                if game.Players.LocalPlayer.leaderstats.Slaps.Value >= 1000 then
                local teleportFunc = queueonteleport or queue_on_teleport
                if teleportFunc then
                    teleportFunc([[
                        if not game:IsLoaded() then
                            game.Loaded:Wait()
                        end
                        repeat wait() until game.Players.LocalPlayer
                 repeat wait() until game.Workspace:FindFirstChild("Map"):FindFirstChild("CodeBrick")
                if game.Workspace.Map.CodeBrick.SurfaceGui:FindFirstChild("IMGTemplate") then
                game.Workspace.Map.CodeBrick.SurfaceGui.IMGTemplate.Name = "1st"
                game.Workspace.Map.CodeBrick.SurfaceGui.IMGTemplate.Name = "2nd"
                game.Workspace.Map.CodeBrick.SurfaceGui.IMGTemplate.Name = "3rd"
                game.Workspace.Map.CodeBrick.SurfaceGui.IMGTemplate.Name = "4th"
                end
                for i,v in pairs(game.Workspace.Map.CodeBrick.SurfaceGui:GetChildren()) do
                                    if v.Name == "1st" then
                                        if v.Image == "http://www.roblox.com/asset/?id=9648769161" then
                                    first = "4"
                                elseif v.Image == "http://www.roblox.com/asset/?id=9648765536" then
                                    first = "2"
                                elseif v.Image == "http://www.roblox.com/asset/?id=9648762863" then
                                    first = "3"
                                elseif v.Image == "http://www.roblox.com/asset/?id=9648759883" then
                                    first = "9"
                                elseif v.Image == "http://www.roblox.com/asset/?id=9648755440" then
                                    first = "8"
                                elseif v.Image == "http://www.roblox.com/asset/?id=9648752438" then
                                    first = "2"
                                elseif v.Image == "http://www.roblox.com/asset/?id=9648749145" then
                                    first = "8"
                                elseif v.Image == "http://www.roblox.com/asset/?id=9648745618" then
                                    first = "3"
                                elseif v.Image == "http://www.roblox.com/asset/?id=9648742013" then
                                    first = "7"
                                elseif v.Image == "http://www.roblox.com/asset/?id=9648738553" then
                                    first = "8"
                                elseif v.Image == "http://www.roblox.com/asset/?id=9648734698" then
                                    first = "2"
                                elseif v.Image == "http://www.roblox.com/asset/?id=9648730082" then
                                    first = "6"
                                elseif v.Image == "http://www.roblox.com/asset/?id=9648723237" then
                                    first = "3"
                                elseif v.Image == "http://www.roblox.com/asset/?id=9648718450" then
                                    first = "6"
                                elseif v.Image == "http://www.roblox.com/asset/?id=9648715920" then
                                    first = "6"
                                elseif v.Image == "http://www.roblox.com/asset/?id=9648712563" then
                                    first = "2"
                                end
                                    end
                                end
                for i,v in pairs(game.Workspace.Map.CodeBrick.SurfaceGui:GetChildren()) do
                                    if v.Name == "2nd" then
                                        if v.Image == "http://www.roblox.com/asset/?id=9648769161" then
                                    second = "4"
                                elseif v.Image == "http://www.roblox.com/asset/?id=9648765536" then
                                    second = "2"
                                elseif v.Image == "http://www.roblox.com/asset/?id=9648762863" then
                                    second = "3"
                                elseif v.Image == "http://www.roblox.com/asset/?id=9648759883" then
                                    second = "9"
                                elseif v.Image == "http://www.roblox.com/asset/?id=9648755440" then
                                    second = "8"
                                elseif v.Image == "http://www.roblox.com/asset/?id=9648752438" then
                                    second = "2"
                                elseif v.Image == "http://www.roblox.com/asset/?id=9648749145" then
                                    second = "8"
                                elseif v.Image == "http://www.roblox.com/asset/?id=9648745618" then
                                    second = "3"
                                elseif v.Image == "http://www.roblox.com/asset/?id=9648742013" then
                                    second = "7"
                                elseif v.Image == "http://www.roblox.com/asset/?id=9648738553" then
                                    second = "8"
                                elseif v.Image == "http://www.roblox.com/asset/?id=9648734698" then
                                    second = "2"
                                elseif v.Image == "http://www.roblox.com/asset/?id=9648730082" then
                                    second = "6"
                                elseif v.Image == "http://www.roblox.com/asset/?id=9648723237" then
                                    second = "3"
                                elseif v.Image == "http://www.roblox.com/asset/?id=9648718450" then
                                    second = "6"
                                elseif v.Image == "http://www.roblox.com/asset/?id=9648715920" then
                                    second = "6"
                                elseif v.Image == "http://www.roblox.com/asset/?id=9648712563" then
                                    second = "2"
                                end
                                    end
                                end
                for i,v in pairs(game.Workspace.Map.CodeBrick.SurfaceGui:GetChildren()) do
                                    if v.Name == "3rd" then
                                        if v.Image == "http://www.roblox.com/asset/?id=9648769161" then
                                    third = "4"
                                elseif v.Image == "http://www.roblox.com/asset/?id=9648765536" then
                                    third = "2"
                                elseif v.Image == "http://www.roblox.com/asset/?id=9648762863" then
                                    third = "3"
                                elseif v.Image == "http://www.roblox.com/asset/?id=9648759883" then
                                    third = "9"
                                elseif v.Image == "http://www.roblox.com/asset/?id=9648755440" then
                                    third = "8"
                                elseif v.Image == "http://www.roblox.com/asset/?id=9648752438" then
                                    third = "2"
                                elseif v.Image == "http://www.roblox.com/asset/?id=9648749145" then
                                    third = "8"
                                elseif v.Image == "http://www.roblox.com/asset/?id=9648745618" then
                                    third = "3"
                                elseif v.Image == "http://www.roblox.com/asset/?id=9648742013" then
                                    third = "7"
                                elseif v.Image == "http://www.roblox.com/asset/?id=9648738553" then
                                    third = "8"
                                elseif v.Image == "http://www.roblox.com/asset/?id=9648734698" then
                                    third = "2"
                                elseif v.Image == "http://www.roblox.com/asset/?id=9648730082" then
                                    third = "6"
                                elseif v.Image == "http://www.roblox.com/asset/?id=9648723237" then
                                    third = "3"
                                elseif v.Image == "http://www.roblox.com/asset/?id=9648718450" then
                                    third = "6"
                                elseif v.Image == "http://www.roblox.com/asset/?id=9648715920" then
                                    third = "6"
                                elseif v.Image == "http://www.roblox.com/asset/?id=9648712563" then
                                    third = "2"
                                end
                                    end
                                end
                for i,v in pairs(game.Workspace.Map.CodeBrick.SurfaceGui:GetChildren()) do
                                    if v.Name == "4th" then
                                        if v.Image == "http://www.roblox.com/asset/?id=9648769161" then
                                    fourth = "4"
                                elseif v.Image == "http://www.roblox.com/asset/?id=9648765536" then
                                    fourth = "2"
                                elseif v.Image == "http://www.roblox.com/asset/?id=9648762863" then
                                    fourth = "3"
                                elseif v.Image == "http://www.roblox.com/asset/?id=9648759883" then
                                    fourth = "9"
                                elseif v.Image == "http://www.roblox.com/asset/?id=9648755440" then
                                    fourth = "8"
                                elseif v.Image == "http://www.roblox.com/asset/?id=9648752438" then
                                    fourth = "2"
                                elseif v.Image == "http://www.roblox.com/asset/?id=9648749145" then
                                    fourth = "8"
                                elseif v.Image == "http://www.roblox.com/asset/?id=9648745618" then
                                    fourth = "3"
                                elseif v.Image == "http://www.roblox.com/asset/?id=9648742013" then
                                    fourth = "7"
                                elseif v.Image == "http://www.roblox.com/asset/?id=9648738553" then
                                    fourth = "8"
                                elseif v.Image == "http://www.roblox.com/asset/?id=9648734698" then
                                    fourth = "2"
                                elseif v.Image == "http://www.roblox.com/asset/?id=9648730082" then
                                    fourth = "6"
                                elseif v.Image == "http://www.roblox.com/asset/?id=9648723237" then
                                    fourth = "3"
                                elseif v.Image == "http://www.roblox.com/asset/?id=9648718450" then
                                    fourth = "6"
                                elseif v.Image == "http://www.roblox.com/asset/?id=9648715920" then
                                    fourth = "6"
                                elseif v.Image == "http://www.roblox.com/asset/?id=9648712563" then
                                    fourth = "2"
                                end
                                    end
                                end
                fireclickdetector(game.Workspace.Map.OriginOffice.Door.Keypad.Buttons.Reset.ClickDetector)
                wait(0.25)
                fireclickdetector(game.Workspace.Map.OriginOffice.Door.Keypad.Buttons[first].ClickDetector)
                wait(0.25)
                fireclickdetector(game.Workspace.Map.OriginOffice.Door.Keypad.Buttons[second].ClickDetector)
                wait(0.25)
                fireclickdetector(game.Workspace.Map.OriginOffice.Door.Keypad.Buttons[third].ClickDetector)
                wait(0.25)
                fireclickdetector(game.Workspace.Map.OriginOffice.Door.Keypad.Buttons[fourth].ClickDetector)
                wait(0.25)
                fireclickdetector(game.Workspace.Map.OriginOffice.Door.Keypad.Buttons.Enter.ClickDetector)
                game:GetService("TeleportService"):Teleport(6403373529)
                    ]])
                end
                game:GetService("TeleportService"):Teleport(9431156611)
                end
                      end    
                })

                BadgeTab:AddButton({
                    Name = "Get Tycoon(10 min) arena only",
                    Callback = function()
                        OrionLib:MakeNotification({Name = "Hint",Content = "We recommend enabling the anti death barrier in the Anti option. Otherwise I'll die.",Image = "rbxassetid://7733658504",Time = 5})
                              repeat task.wait()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Arena.Plate.CFrame * CFrame.new(0,-1.5,0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0))
                until game.Players.LocalPlayer.PlayerGui.PlateIndicator.TextLabel.Text == "Plate Counter: 600"
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
--[[
Name = <string> - The name of the toggle.
Default = <bool> - The default value of the toggle.
Callback = <function> - The function of the toggle.
]]

--[[
Name = <string> - The name of the UI.
HidePremium = <bool> - Whether or not the user details shows Premium status or not.
SaveConfig = <bool> - Toggles the config saving in the UI.
ConfigFolder = <string> - The name of the folder where the configs are saved.
IntroEnabled = <bool> - Whether or not to show the intro animation.
IntroText = <string> - Text to show in the intro animation.
IntroIcon = <string> - URL to the image you want to use in the intro animation.
Icon = <string> - URL to the image you want displayed on the window.
CloseCallback = <function> - Function to execute when the window is closed.
]]
