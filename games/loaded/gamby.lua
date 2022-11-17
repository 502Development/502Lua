local pass = true 
    local type 

    -- Check what type of item it is 
    for i,v in ipairs(game:GetService("Workspace").WorldObjects:GetDescendants()) do
        if (string.lower(v.Name) == "handle") and v:IsA("MeshPart") and ((game.Workspace.Characters[game.Players.LocalPlayer.Name].HumanoidRootPart.Position.Magnitude - v.Position.Magnitude) > 15) and string.find(string.lower(v.Parent.Name), _G.Nigger) then
            type = "HandleMeshPart"
        end 
    end

    for i,v in ipairs(game:GetService("Workspace").WorldObjects:GetDescendants()) do
        if (string.lower(v.Name) == "handle") and v:IsA("Part") and ((game.Workspace.Characters[game.Players.LocalPlayer.Name].HumanoidRootPart.Position.Magnitude - v.Position.Magnitude) > 15) and string.find(string.lower(v.Parent.Name), _G.Nigger) then
            type = "HandlePart"
        end 
    end

    for i,v in ipairs(game:GetService("Workspace").WorldObjects:GetDescendants()) do
        if (string.lower(v.Name) ~= "handle") and v:IsA("Part") and ((game.Workspace.Characters[game.Players.LocalPlayer.Name].HumanoidRootPart.Position.Magnitude - v.Position.Magnitude) > 15) and string.find(string.lower(v.Parent.Name), _G.Nigger) then
            type = "Part"
        end 
    end

    for i,v in ipairs(game:GetService("Workspace").WorldObjects:GetDescendants()) do
        if (string.lower(v.Name) ~= "handle") and v:IsA("MeshPart") and ((game.Workspace.Characters[game.Players.LocalPlayer.Name].HumanoidRootPart.Position.Magnitude - v.Position.Magnitude) > 15) and string.find(string.lower(v.Parent.Name), _G.Nigger) then
            type = "MeshPart"
        end 
    end

    if type == "HandleMeshPart" then 
        for i,v in ipairs(game:GetService("Workspace").WorldObjects:GetDescendants()) do
            if (string.lower(v.Name) == "handle") and v:IsA("MeshPart") and ((game.Workspace.Characters[game.Players.LocalPlayer.Name].HumanoidRootPart.Position.Magnitude - v.Position.Magnitude) > 15) and string.find(string.lower(v.Parent.Name), _G.Nigger) then
                game:GetService("ReplicatedStorage").Networking.NetworkingEvent:FireServer("PickupItem", v, true, CFrame.new(Vector3.new(0,0,0), Vector3.new(0,0,0)), 3, Vector3.new(0,0,0))
                pass = false 
            end 
        end
    elseif type == "HandlePart" then 
        for i,v in ipairs(game:GetService("Workspace").WorldObjects:GetDescendants()) do
            if (string.lower(v.Name) == "handle") and v:IsA("Part") and ((game.Workspace.Characters[game.Players.LocalPlayer.Name].HumanoidRootPart.Position.Magnitude - v.Position.Magnitude) > 15) and string.find(string.lower(v.Parent.Name), _G.Nigger) then
                game:GetService("ReplicatedStorage").Networking.NetworkingEvent:FireServer("PickupItem", v, true, CFrame.new(Vector3.new(0,0,0), Vector3.new(0,0,0)), 3, Vector3.new(0,0,0))
                pass = false
            end 
        end
    elseif type == "Part" then 
        for i,v in ipairs(game:GetService("Workspace").WorldObjects:GetDescendants()) do
            if (string.lower(v.Name) ~= "handle") and v:IsA("Part") and ((game.Workspace.Characters[game.Players.LocalPlayer.Name].HumanoidRootPart.Position.Magnitude - v.Position.Magnitude) > 15) and string.find(string.lower(v.Parent.Name), _G.Nigger) then
                game:GetService("ReplicatedStorage").Networking.NetworkingEvent:FireServer("PickupItem", v, true, CFrame.new(Vector3.new(0,0,0), Vector3.new(0,0,0)), 3, Vector3.new(0,0,0))
                pass = false
            end 
        end
    elseif type == "MeshPart" then 
        for i,v in ipairs(game:GetService("Workspace").WorldObjects:GetDescendants()) do
            if (string.lower(v.Name) ~= "handle") and v:IsA("MeshPart") and ((game.Workspace.Characters[game.Players.LocalPlayer.Name].HumanoidRootPart.Position.Magnitude - v.Position.Magnitude) > 15) and string.find(string.lower(v.Parent.Name), _G.Nigger) then
                game:GetService("ReplicatedStorage").Networking.NetworkingEvent:FireServer("PickupItem", v, true, CFrame.new(Vector3.new(0,0,0), Vector3.new(0,0,0)), 3, Vector3.new(0,0,0))
                pass = false
            end 
        end
    end 

    if pass == true then 
        Rayfield:Notify({
            Title = "Failed",
            Content = "We failed to find an item you haven't already found. Check if your item name is correct.",
            Duration = 3,
            Image = 6031071057,
        })
    else
        Rayfield:Notify({
            Title = "Success",
            Content = "You should have an item now. If not, your hand is glitched.",
            Duration = 3,
            Image = 6023426945,
        })
    end 
