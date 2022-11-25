
--[[ Games In The Hub
    Clicker Simulator - 7560156054
]]

local TeleportService = game:GetService("TeleportService")

local notiflib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/BoredStuff2/notify-lib/main/lib'),true))()
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("👑 | Lxst Hub | " .. game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name , Ocean)


--CLICKER SIMULATOR 
if game.PlaceId == 7560156054 then
    autotpplayer = false 
    function autotp()
        spawn(function()
            while autotpplayer == true do 
                task.wait(0.01)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[selectedplayer].Character.HumanoidRootPart.CFrame
            end
        end)
    end
local TeleportService = game:GetService("TeleportService")

local HomeTab = Window:NewTab("Home")
local welcome = HomeTab:NewSection("Welcome To Lxst Hub!")
welcome:NewButton("Copy Discord Link", "yeah", function()
    setclipboard("https://discord.gg/8XJurnuxnq");
end)
-- Player Tab
local PlayerTab = Window:NewTab("Local Player")
local pSection = PlayerTab:NewSection("Local Player")
pSection:NewSlider("Walkspeed", "Haha speed go brr", 500, 16, function(s)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)
pSection:NewSlider("JumpPower", "Haha jumppower go brr", 500, 50, function(s)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)

local auto = PlayerTab:NewSection("Auto Farm")
auto:NewToggle("Auto Clicker", "Auto Clicks", function(state)
    while state == true do
        task.Wait()
        local Event = game:GetService("ReplicatedStorage").Events.Client.emitClicks
        Event:FireServer()
        local A_1 = 
        {
            ["manual"] = 
        {
            ["4.82761951737829e+57"] = 1
        }
        }
        local Event = game:GetService("ReplicatedStorage").Clickerr
        Event:InvokeServer(A_1)
    end
end)

local other = PlayerTab:NewSection("Other")
other:NewButton("Add Gamepasses", "Gives you Double Gems, Double Luck, Double Clicks, Faster Auto Clicker, Double Shiny Chance", function()
    for i,v in pairs(game.Players.LocalPlayer.Boosts:GetDescendants()) do
        if v.Name == "isActive" then
            v.Value = true
        end
     end
end)
-- Teleports Tab
local TeleportsTab = Window:NewTab("Teleports")

-- Players
local PlayerTeleports = TeleportsTab:NewSection("Players")
local players = {}
for i,v in pairs(game.Players:GetChildren()) do
    table.insert(players, v.Name)
end
PlayerTeleports:NewDropdown("Select a Player", "", players, function(currentOption)
    selectedplayer = currentOption
end)
PlayerTeleports:NewToggle("Loop Teleport To Player", "Loop Teleports You To Player", function(x)
    autotpplayer = x 
    if autotpplayer then 
        autotp()
    end
end)
PlayerTeleports:NewButton("Teleport", "Teleport You To Selected Player", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[selectedplayer].Character.HumanoidRootPart.CFrame
end)

local TeleportsSection = TeleportsTab:NewSection("Worlds")
-- Worlds

TeleportsSection:NewDropdown("Select World", "", {"Home World", "Tech World", "Time World", "Ocean World"}, function(currentOption)
sworld = currentOption
end)
TeleportsSection:NewButton("Teleport To World", "Teleports you to your selected world", function()
    if sworld == "Home World" then 
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Lobby.teleport.CFrame
    elseif sworld == "Tech World" then 
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").techWorld.Portal.teleportPosition.CFrame
    elseif sworld == "Time World" then 
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").timeWorld.timePortal.teleportPosition.CFrame
    elseif sworld == "Ocean World" then 
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").oceanWorld.teleport.CFrame
    end
end)

--Zones
local ZonesTeleports = TeleportsTab:NewSection("Zones")
local zones = {}
for i,v in pairs(game.Workspace.Zones:GetChildren()) do
    table.insert(zones, v.Name)
end
ZonesTeleports:NewDropdown("Select Zone", "", zones, function(currentOption)
---@diagnostic disable-next-line: undefined-global
    selectedzone = currentOption
end)
ZonesTeleports:NewButton("Teleport", "Teleports you to the world you selected.", function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Zones[selectedzone].teleport.CFrame
end)

end

-- PIGGY
if game.PlaceId == 4623386862 then
local HomeTab = Window:NewTab("Home")
local welcome = HomeTab:NewSection("Welcome To Lxst Hub!")
welcome:NewButton("Copy Discord Link", "yeah", function()
    setclipboard("https://discord.gg/8XJurnuxnq");
end)
-- Player Tab
local PlayerTab = Window:NewTab("Local Player")
local pSection = PlayerTab:NewSection("Local Player")
pSection:NewSlider("Walkspeed", "Haha speed go brr", 500, 16, function(s)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)
pSection:NewSlider("JumpPower", "Haha jumppower go brr", 500, 50, function(s)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)
        
end

if game.PlaceId == 2512643572 then
    local TeleportService = game:GetService("TeleportService")
    local HomeTab = Window:NewTab("Home")
    local welcome = HomeTab:NewSection("Welcome To Lxst Hub!")
    welcome:NewButton("Copy Discord Link", "yeah", function()
        setclipboard("https://discord.gg/8XJurnuxnq");
    end)

    local TeleportsTab = Window:NewTab("Teleports")
    local IslandsTps = TeleportsTab:NewSection("Islands")
    local islands = {}
    for i,v in pairs(game.Workspace.Checkpoints:GetChildren()) do
        table.insert(islands, v.Name)
    end
    IslandsTps:NewDropdown("Select Island", "", islands, function(currentOption)
        selectedisland = currentOption
    end)
    IslandsTps:NewButton("Teleport", "Teleports you to the world you selected.", function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Checkpoints[selectedisland].TeleportPoint.CFrame
    end)
    local PlayerTps = TeleportsTab:NewSection("Player Teleports")
    local players = {}
    for i,v in pairs(game.Players:GetChildren()) do
        table.insert(players, v.Name)
    end
    PlayerTps:NewDropdown("Select a Player", "", players, function(currentOption)
        selectedplayer = currentOption
    end)
    PlayerTps:NewButton("Teleport", "Teleport You To Selected Player", function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[selectedplayer].Character.HumanoidRootPart.CFrame
    end)
    
end

-- notification leave at end
warn("Lxst v1.0 Loaded")
wait(1.2)
notiflib.prompt('Lxst Hub Loaded', 'Version v1.0.1', 2)
