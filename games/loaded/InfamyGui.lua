local function a()local b=loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()local c=b:CreateWindow({Name="Infamy GUI",LoadingTitle="Infamy GUI",LoadingSubtitle="by 502Development",ConfigurationSaving={Enabled=false,FolderName=nil,FileName="Big Hub"},Discord={Enabled=false,Invite="sirius",RememberJoins=true},KeySystem=false,KeySettings={Title="Sirius Hub",Subtitle="Key System",Note="Join the discord (discord.gg/sirius)",FileName="SiriusKey",SaveKey=true,GrabKeyFromSite=false,Key="Hello"}})local d=c:CreateTab("Main")d:CreateSection("Autofarm")local e;local f;local g;local h=0;local i;local j;d:CreateToggle({Name="Auto Rob",CurrentValue=false,Callback=function(k)e=math.round(game:GetService("Players").LocalPlayer.leaderstats.Cash.Value)h=0;j=k;g=k;if not k then f:Set("Money made: Idle")i:Set("Time: Idle")end end})local l;d:CreateToggle({Name="Safe Auto Rob (Avoids Forbidden Lands, but less $$$)",CurrentValue=false,Callback=function(k)e=math.round(game:GetService("Players").LocalPlayer.leaderstats.Cash.Value)h=0;l=k;g=k;if not k then f:Set("Money made: Idle")i:Set("Time: Idle")end end})local m=0.1;d:CreateSlider({Name="Rob Delay (Reccomended 0.1)",Range={0.1,5},Increment=0.1,Suffix="Seconds",CurrentValue=0.1,Callback=function(k)m=k end})d:CreateButton({Name="Rejoin (Escape Forbiden Lands)",Callback=function()game:GetService("TeleportService"):Teleport(game.PlaceId,game.Players.LocalPlayer)end})task.spawn(function()while task.wait(1)do pcall(function()if g then h=h+1;i:Set("Time: "..h.." Seconds")end end)end end)task.spawn(function()while task.wait()do pcall(function()if l==true then task.wait(m)if game.Players.LocalPlayer.Character.Humanoid.Sit==true then game.Players.LocalPlayer.Character.Humanoid.Sit=false end;f:Set("Money made: $"..math.round(game:GetService("Players").LocalPlayer.leaderstats.Cash.Value)-e)for n,o in ipairs(game.Workspace:GetDescendants())do if o:IsA("ProximityPrompt")and(o.Parent.Parent.Name=="bankDepositBox"or o.Parent.Parent.Name=="NewATM")and o.Parent.BrickColor~=BrickColor.new("Flame reddish orange")then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=o.Parent.CFrame;break end end;task.wait(0.1)local p=0;while p<2 do for n,o in ipairs(game.Workspace:GetDescendants())do if o:IsA("ProximityPrompt")and(o.Parent.Parent.Name=="bankDepositBox"or o.Parent.Parent.Name=="NewATM")and o.Parent.BrickColor~=BrickColor.new("Flame reddish orange")and game.Players.LocalPlayer:DistanceFromCharacter(o.Parent.Position)<50 then fireproximityprompt(o)end end;p=p+1 end end end)end end)task.spawn(function()while task.wait()do pcall(function()if j==true then task.wait(m)if game.Players.LocalPlayer.Character.Humanoid.Sit==true then game.Players.LocalPlayer.Character.Humanoid.Sit=false end;f:Set("Money made: $"..math.round(game:GetService("Players").LocalPlayer.leaderstats.Cash.Value)-e)for n,o in ipairs(game.Workspace:GetDescendants())do if o:IsA("ProximityPrompt")and(o.Parent.Parent.Name=="bankDepositBox"or o.Parent.Parent.Name=="NewATM"or string.find(o.Parent.Parent.Name,"cashReg")or o.Parent.Parent.Name=="civilianKeepAtHomeSafe")and o.Parent.BrickColor~=BrickColor.new("Flame reddish orange")then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=o.Parent.CFrame;break end end;task.wait(0.1)local p=0;while p<2 do for n,o in ipairs(game.Workspace:GetDescendants())do if o:IsA("ProximityPrompt")and(o.Parent.Parent.Name=="bankDepositBox"or o.Parent.Parent.Name=="NewATM"or string.find(o.Parent.Parent.Name,"cashReg")or o.Parent.Parent.Name=="civilianKeepAtHomeSafe")and o.Parent.BrickColor~=BrickColor.new("Flame reddish orange")and game.Players.LocalPlayer:DistanceFromCharacter(o.Parent.Position)<50 then fireproximityprompt(o)end end;p=p+1 end end end)end end)d:CreateSection("Autorob Stats")f=d:CreateLabel("Money made: Idle")i=d:CreateLabel("Time: Idle")d:CreateSection("Guns & Ammo")local q="p90"d:CreateInput({Name="Gun Name (Autocompletes)",PlaceholderText="Example: P90",RemoveTextAfterFocusLost=false,Callback=function(r)q=r;for n,o in ipairs(game.Workspace:GetDescendants())do if o:IsA("TextLabel")and string.find(string.lower(o.Text),string.lower(q))and o.Parent.Parent.Name=="buyGunPromptContainer"and not o.Parent.Parent:FindFirstChild("crimGunChooser")then b:Notify({Title="Weapon Chosen",Content="You have chosen: "..o.Text,Duration=5,Image=6034989547})break end end end})d:CreateButton({Name="Buy Gun / Ammo",Callback=function()local s=game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame;for n,o in ipairs(game.Workspace:GetDescendants())do if o:IsA("TextLabel")and string.find(string.lower(o.Text),string.lower(q))and o.Parent.Parent.Name=="buyGunPromptContainer"and not o.Parent.Parent:FindFirstChild("crimGunChooser")then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=o.Parent.Parent.CFrame;task.wait(0.3)fireproximityprompt(o.Parent.Parent:FindFirstChild("ProximityPrompt"))break end end;game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=s end})local t;d:CreateToggle({Name="Mass Buy Ammo",CurrentValue=false,Callback=function(k)t=k end})task.spawn(function()while task.wait()do pcall(function()if t==true then for n,o in ipairs(game.Workspace:GetDescendants())do if o:IsA("TextLabel")and string.find(string.lower(o.Text),string.lower(q))and o.Parent.Parent.Name=="buyGunPromptContainer"and not o.Parent.Parent:FindFirstChild("crimGunChooser")then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=o.Parent.Parent.CFrame;task.wait(0.1)fireproximityprompt(o.Parent.Parent:FindFirstChild("ProximityPrompt"))break end end end end)end end)d:CreateSection("Hostage Stuff")d:CreateButton({Name="Take all civillians hostage",Callback=function()b:Notify({Title="Warning",Content="Please refrain from moving while hostages are being taken",Duration=5,Image=6031071053})local u=game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame;pcall(function()for n,o in pairs(game.Workspace:GetDescendants())do if o:IsA("ProximityPrompt")and o.Parent.Parent.Parent.Name=="civilian"and o.Parent.Name=="handcuff"and o.ActionText=="[Handcuff (take hostage)]"and o.Parent.Parent:IsA("Part")then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=o.Parent.Parent.CFrame;task.wait(0.2)if game.Players.LocalPlayer.Character.Humanoid.Sit==true then game.Players.LocalPlayer.Character.Humanoid.Sit=false end;fireproximityprompt(o)task.wait(0.1)end end end)game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=u end})local v=c:CreateTab("Teleports")v:CreateSection("Teleports")v:CreateButton({Name="Gun Store",Callback=function()game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=CFrame.new(-299.0485534667969,3.251739263534546,83.9735107421875)end})v:CreateButton({Name="Gun Store 2",Callback=function()game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=CFrame.new(757.481689453125,1.7134655714035034,-538.2506103515625)end})v:CreateButton({Name="Criminal AI Store",Callback=function()game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=CFrame.new(184.71217346191406,6.249999046325684,179.95523071289062)end})v:CreateButton({Name="Cellphone Store",Callback=function()game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=CFrame.new(292.5691833496094,1.2952697277069092,321.9036865234375)end})v:CreateButton({Name="Bank of Roblox",Callback=function()game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=CFrame.new(-244.27301025390625,33.31637954711914,-223.75926208496094)end})v:CreateButton({Name="Bank of Roblox 2",Callback=function()game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=CFrame.new(358.5438232421875,4.666946887969971,-281.1628112792969)end})v:CreateButton({Name="City Hall",Callback=function()game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=CFrame.new(-421.2994079589844,4.265012741088867,55.234046936035156)end})v:CreateButton({Name="Jail / Police Station",Callback=function()game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=CFrame.new(-678.6033325195312,2.6682894229888916,473.1221923828125)end})v:CreateButton({Name="Weird Ass Park",Callback=function()game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=CFrame.new(-275.1120910644531,5.9442458152771,436.41650390625)end})v:CreateButton({Name="Trailer Park",Callback=function()game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=CFrame.new(105.33317565917969,7.392519474029541,403.41961669921875)end})v:CreateButton({Name="Trailer Park 2",Callback=function()game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=CFrame.new(770.8546142578125,41.27582931518555,30.139514923095703)end})v:CreateButton({Name="City Slums",Callback=function()game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=CFrame.new(845.3594360351562,6.365739345550537,-628.6738891601562)end})v:CreateButton({Name="Rich Gated Community",Callback=function()game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=CFrame.new(295.8744201660156,11.467787742614746,527.20068359375)end})v:CreateButton({Name="Rich Gated Community 2",Callback=function()game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=CFrame.new(-510.0393371582031,66.77791595458984,-432.6631164550781)end})v:CreateButton({Name="Nightclub",Callback=function()game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=CFrame.new(556.05908203125,6.686210632324219,54.72376251220703)end})v:CreateButton({Name="Warehouse",Callback=function()game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=CFrame.new(-743.4589233398438,10.198405265808105,-72.88153076171875)end})v:CreateButton({Name="North Beach",Callback=function()game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=CFrame.new(-72.04933166503906,18.7813663482666,1062.593505859375)end})v:CreateSection("Custom Teleports")local w;local x;local y=v:CreateLabel("SavedPos: None")v:CreateButton({Name="Save Position",Callback=function()w=game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame;x=game.Players.LocalPlayer.Character.HumanoidRootPart.Position;y:Set("SavedPos: "..tostring(x))end})v:CreateButton({Name="Teleport to Saved Position",Callback=function()game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=w end})local z=c:CreateTab("Misc")z:CreateSection("Stats")local A=z:CreateLabel("Money: "..tostring(math.round(game:GetService("Players").LocalPlayer.leaderstats.Cash.Value)))local B=z:CreateLabel("Notoriety: "..tostring(math.round(game:GetService("Players").LocalPlayer.leaderstats.Notoriety.Value)))local C=z:CreateLabel("Money Spent: "..tostring(math.round(game:GetService("Players").LocalPlayer.leaderstats["$Spent"].Value)))local D=z:CreateLabel("Theft: "..tostring(math.round(game:GetService("Players").LocalPlayer.leaderstats.Theft.Value)))task.spawn(function()while task.wait()do pcall(function()A:Set("Money: "..tostring(math.round(game:GetService("Players").LocalPlayer.leaderstats.Cash.Value)))B:Set("Notoriety: "..tostring(math.round(game:GetService("Players").LocalPlayer.leaderstats.Notoriety.Value)))C:Set("Money Spent: "..tostring(math.round(game:GetService("Players").LocalPlayer.leaderstats["$Spent"].Value)))D:Set("Theft: "..tostring(math.round(game:GetService("Players").LocalPlayer.leaderstats.Theft.Value)))end)end end)z:CreateSection("Misc")z:CreateButton({Name="Remove ProximityPrompt Cooldowns",Callback=function()for n,o in pairs(game.Workspace:GetDescendants())do if o:IsA("ProximityPrompt")then o.HoldDuration=0 end end;b:Notify({Title="Cooldowns Removed",Content="ProximityPrompt cooldowns have been removed.",Duration=5,Image=6031754564})end})z:CreateSlider({Name="FPS Cap",Range={0,500},Increment=1,Suffix="FPS",CurrentValue=144,Callback=function(k)setfpscap(k)end})z:CreateSection("QOL")z:CreateButton({Name="Rejoin (Escape Forbiden Lands)",Callback=function()game:GetService("TeleportService"):Teleport(game.PlaceId,game.Players.LocalPlayer)end})z:CreateSection("External Scripts")z:CreateButton({Name="Infinite Yield",Callback=function()loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()end})z:CreateSection("Credits")z:CreateParagraph({Title="Credits",Content="502 - His great, sexy brain\nWhoever made infinite yield - Infinite yield"})local E=game:service'VirtualUser'game:service'Players'.LocalPlayer.Idled:connect(function()E:CaptureController()E:ClickButton2(Vector2.new())end)b:Notify({Title="Info",Content="Anti-AFK has successfully been activated.",Duration=4,Image=6034509996})end;a()