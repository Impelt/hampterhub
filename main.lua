local TeleportService = game:GetService("TeleportService")

-- Imports the library
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()

local colors = {
    SchemeColor = Color3.fromRGB(129, 40, 173),
    Background = Color3.fromRGB(62, 58, 64),
    Header = Color3.fromRGB(62, 58, 64),
    TextColor = Color3.fromRGB(255,255,255),
    ElementColor = Color3.fromRGB(48, 45, 49)
}

-- Main Gui Window

local Window = Library.CreateLib("idk hub | " .. game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name , colors)

-- Clicker Simulator

if game.PlaceId == 7560156054 then

-- Main Tab

local HomeTab = Window:NewTab("Home")
local sHome = HomeTab:NewSection("Home")
sHome:NewLabel("Made by kowalik :)")

-- Local Player tab
local PlayerTab = Window:NewTab("Player")
local pSection = PlayerTab:NewSection("Player")
pSection:NewSlider("Walkspeed", "SliderInfo", 100, 13, function(s) -- 100 (MaxValue) | 13 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)
local auto = PlayerTab:NewSection("Auto Farm")
auto:NewToggle("Auto Click (DOESNT WORK YET)", "Auto Clicks", function(state)
    if state then
        print('Toggle On')
    else
        print("Toggle Off")
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
---@diagnostic disable-next-line: undefined-global
    selectedplayer = currentOption
end)
PlayerTeleports:NewButton("Teleport", "Teleports you to the selected player", function()
    local plr1 = game.Players.LocalPlayer.Character
    local plr2 = game.Workspace:FindFirstChild(selectedplayer)
    plr1.HumanoidRootPart.CFrame = plr2.HumanoidRootPart.CFrame * CFrame.new(0,2,0)
end)

local TeleportsSection = TeleportsTab:NewSection("Worlds")
-- Worlds
TeleportsSection:NewButton("Main World", "Teleports you to Main World", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Lobby.teleport.CFrame
end)
TeleportsSection:NewButton("Tech World", "Teleports you to Tech World", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").techWorld.Portal.teleportPosition.CFrame
end)
TeleportsSection:NewButton("Time World", "Teleports you to Time World", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").timeWorld.timePortal.teleportPosition.CFrame
end)
TeleportsSection:NewButton("Ocean World", "Teleports you to Ocean World", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").oceanWorld.teleport.CFrame
end)
-- Zones
local ZonesTeleports = TeleportsTab:NewSection("Zones")
local zones = {}
for i,v in pairs(game.Workspace.Zones:GetChildren()) do 
    table.insert(zones, v.Name)
end
ZonesTeleports:NewDropdown("Select Zones", "", zones, function(currentOption)
---@diagnostic disable-next-line: undefined-global
    selectedzone = currentOption
end)
    ZonesTeleports:NewButton("Teleport", "Teleports you to the selected world", function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Zones[selectedzone].teleport.CFrame
    end)

end

-- pls donate
if game.PlaceId == 8737602449 then
local PlayerTab = Window:NewTab("Player")
local pSection = PlayerTab:NewSection("Player")
pSection:NewSlider("Walkspeed", "SliderInfo", 500, 13, function(s) -- 100 (MaxValue) | 13 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

end