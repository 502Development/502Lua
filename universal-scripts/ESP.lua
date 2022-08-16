-- Load UI 
local UILibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/502Development/502Lua/main/uis/finity.lua"))()
local MainUI = UILibrary.Load("Universal Drawing ESP")
local FirstPage = MainUI.AddPage("Home")

-- Load ESP
local ESP = loadstring(game:HttpGet("https://raw.githubusercontent.com/502Development/502Lua/main/resources/ESP1.lua"))()
ESP:Toggle(true)
ESP.Players = false 
ESP.Boxes = false 
ESP.Names = false 
ESP.Tracers = false 
ESP.TeamColor = true 

FirstPage.AddToggle("Master Switch", true, function(value)
    ESP:Toggle(value)
end)

FirstPage.AddToggle("Toggle Players", false, function(Value)
    ESP.Players = Value
end)

FirstPage.AddToggle("Toggle Boxes", false, function(Value)
    ESP.Boxes = Value
end)

FirstPage.AddToggle("Toggle Names", false, function(Value)
    ESP.Names = Value
end)

FirstPage.AddToggle("Toggle Tracers", false, function(Value)
    ESP.Tracers = Value
end)

FirstPage.AddToggle("Toggle Team Color", true, function(Value)
    ESP.TeamColor = Value
end)

-- Color picker
FirstPage.AddColourPicker("ESP Color", "white", function(Value)
    ESP.Color = Value
end)
