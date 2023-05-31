--[[
 ▄▄▄▄▄▄▄    ▄▄▄▄▄▄▄    ▄   ▄▄▄    ▄▄▄    ▄▄▄▄▄▄▄    ▄▄   ▄▄    ▄▄▄▄▄▄▄    ▄▄▄▄▄▄  
█       █  █       █  █ █ █   █  █   █  █       █  █  █▄█  █  █       █  █      █ 
█  ▄▄▄▄▄█  █       █  █ █▄█   █  █   █  █    ▄  █  █       █  █    ▄▄▄█  █  ▄    █
█ █▄▄▄▄▄   █     ▄▄█  █       █  █   █  █   █▄█ █  █       █  █   █▄▄▄   █ █ █   █
█▄▄▄▄▄  █  █    █     █▄▄▄    █  █   █  █    ▄▄▄█   █     █   █    ▄▄▄█  █ █▄█   █
 ▄▄▄▄▄█ █  █    █▄▄       █   █  █   █  █   █      █   ▄   █  █   █▄▄▄   █       █
█▄▄▄▄▄▄▄█  █▄▄▄▄▄▄▄█      █▄▄▄█  █▄▄▄█  █▄▄▄█      █▄▄█ █▄▄█  █▄▄▄▄▄▄▄█  █▄▄▄▄▄▄█ 
This File was Produced By Sc4pixed Creator /  Sc4ipxed#0001
--]]
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

OrionLib:MakeNotification({
	Name = "Helo , BNICR User",
	Content = "Whooo !",
	Image = "rbxassetid://4483345998",
	Time = 5
})


local Window = OrionLib:MakeWindow({Name = "BNICR|Sc4ipxed", HidePremium = false, SaveConfig = true, ConfigFolder = "Sc4ipxedBNICR"})

--Player Tab--

local PlayerTab = Window:MakeTab({
	Name = "Player",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local PlayerSection = PlayerTab:AddSection({
	Name = "Player"
})


PlayerSection:AddSlider({
	Name = "Walkspeed",
	Min = 16,
	Max = 100,
	Default = 5,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Walkspeed",
	Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
	end    
})

--Player Tab End--

--Settings Tab--

local SettingsTab = Window:MakeTab({
	Name = "Settings",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local SettingsSection = SettingsTab:AddSection({
	Name = "Settings"
})

SettingsSection:AddButton({
	Name = "Destroy UI",
	Callback = function()
        OrionLib:Destroy()
  	end    
})

--Settings End--

OrionLib:Init() --UI Lib End
