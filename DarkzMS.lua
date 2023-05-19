-- // 🤑 LOCALS 🤑 // -- 
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local plr = game:GetService("Players").LocalPlayer
local char = plr.Character
local hum = char:FindFirstChildWhichIsA("Humanoid")
print("Creating Window")
local Window = OrionLib:MakeWindow({Name = "DarkzMS | V1.3", HidePremium = true, SaveConfig = false, ConfigFolder = "OrionTest"})

-- //

-- // Tabs // --
print("Creating Tabs")
local Scripts = Window:MakeTab({ 	Name = "📃 | Scripts", 	Icon = "", 	PremiumOnly = false })
local DOORS = Window:MakeTab({ 	Name = "🚪 | DOORS", 	Icon = "", 	PremiumOnly = false })

-- // Buttons // --
print("Adding Buttons")
Scripts:AddButton({
	Name = "Infinite Yield",
	Callback = function()	
loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
  	end    
})

DOORS:AddButton({
	Name = "Nerd GUI (By Nerd, Needs Whitelist)",
	Callback = function()	loadstring(game:HttpGet("https://raw.githubusercontent.com/MrNeRD0/Doors-Hack/main/doorsnerdv4.lua"))()
  	end    
})




DOORS:AddButton({
	Name = "MSDOORS",
	Callback = function() loadstring(game:HttpGet(("https://raw.githubusercontent.com/mstudio45/MSDOORS/main/MSHUB_Loader.lua"),true))()	
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
    Name = "Anti-Screech",
    Callback = function()
        workspace.CurrentCamera.ChildAdded:Connect(function(child)
            if child.Name == "Screech" then
task.wait(0.1)
                child:Destroy()
            end
        end)
    end
})




Scripts:AddButton({
	Name = "Keyboard GUI",
	Callback = function()	
		loadstring(game:HttpGet("https://raw.githubusercontent.com/advxzivhsjjdhxhsidifvsh/mobkeyboard/main/main.txt"))()
	end
})



-- // Initiate Lib // --
print("Initiating UI")
OrionLib:Init()
