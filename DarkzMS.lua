-- // 🤑 LOCALS 🤑 // -- 
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local plr = game:GetService("Players").LocalPlayer
local char = plr.Character
local hum = char:FindFirstChildWhichIsA("Humanoid")
print("Creating Window")
local Window = OrionLib:MakeWindow({Name = "DarkzMS | V1.1", HidePremium = true, SaveConfig = false, ConfigFolder = "OrionTest"})

-- //

-- // Tabs // --
print("Creating Tabs")
local Scripts = Window:MakeTab({ 	Name = "📃 Scripts", 	Icon = "", 	PremiumOnly = false })
local DOORS = Window:MakeTab({ 	Name = "🚪 DOORS", 	Icon = "", 	PremiumOnly = false })

-- // Buttons // --
print("Adding Buttons")
Scripts:AddButton({
	Name = "Infinite Yield",
	Callback = function()	loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
  	end    
})

DOORS:AddButton({
	Name = "Nerd GUI (By Nerd, Needs Whitelist)",
	Callback = function()	loadstring(game:HttpGet("https://raw.githubusercontent.com/MrNeRD0/Doors-Hack/main/doorsnerdv4.lua"))()
  	end    
})

DOORS:AddButton({
	Name = "God Mode (By Nerd, Needs whitelist)",
	Callback = function()	loadstring(game:HttpGet("https://raw.githubusercontent.com/MrNeRD0/Doors-Hack/main/GodModeByNerd.lua"))()
  	end    
})


DOORS:AddButton({
	Name = "MSDOORS",
	Callback = function()	loadstring(game:HttpGet('https://raw.githubusercontent.com/mstudio45/MSDOORS/main/MSDOORS.lua'))()
  	end    
})

DOORS:AddButton({
	Name = "MSDOORS (mobile, outdated)",
	Callback = function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/mstudio45/MSDOORS/7bd97c2d956a775d683c2d7973d79715b30998ea/MSDOORS/Moonsec.lua'))()
  	end    
})

Scripts:AddButton({
	Name = "Reset Character",
	Callback = function()	
hum:TakeDamage(100)
  	end    
})

DOORS:AddButton({
	Name = "Reset Character",
	Callback = function()	
hum:TakeDamage(100)
  	end    
})

DOORS:AddButton({
	Name = "Revive (Needs at least 1 revive)",
	Callback = function()	
game:GetService("ReplicatedStorage").EntityInfo.Revive:FireServer()
  	end    
})


DOORS:AddButton({
	Name = "Crucifix (Made by PenguinManiack)",
	Callback = function()	
		_G.Uses = 1
		_G.Range = 30
		_G.OnAnything = true
		_G.Fail = false
		loadstring(game:HttpGet('https://raw.githubusercontent.com/PenguinManiack/Crucifix/main/Crucifix.lua'))()
	end    
})

DOORS:AddButton({
	Name = "Screech Remover",
	Callback = function()	
		workspace.CurrentCamera.ChildAdded:Connect(function(a)
wait(0.1)
if a.Name == "Screech" then
a:Destroy()
end
end)
	end    
})

Scripts:AddButton({
	Name = "Fling GUI",
	Callback = function()	
		loadstring(game:HttpGet("https://raw.githubusercontent.com/0Ben1/fe./main/Fling%20GUI"))()
	end
})

Scripts:AddButton({
	Name = "Keyboard GUI",
	Callback = function()	
		loadstring(game:HttpGet("https://raw.githubusercontent.com/advxzivhsjjdhxhsidifvsh/mobkeyboard/main/main.txt"))()
	end
})


-- // Make Checkboxes // --
print("Making Checkboxes")
DOORS:AddToggle({
	Name = "SpeedBoost",
	Default = false,
	Callback = function(Value)
		if Value then

   -- Warning: Changing this may occur errors if you don't know what you're doing.
			while Value do
game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid").WalkSpeed = 21
				task.wait(0.5)
			end
		else
game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid").WalkSpeed = 10
		end
	end    
})



-- // Initiate Lib // --
print("Initiating UI")
OrionLib:Init()
