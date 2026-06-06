local url = "https://raw.githubusercontent.com/scripter1321/opscriptsgui/main/main.luau?nocache=" .. tick()
local gui = loadstring(game:HttpGet(
	url
))()
gui.CreateTitle("Opscripts - +1 Brick Speed Escape")
gui.Loading()
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local reqrebremote = game:GetService("ReplicatedStorage").BrickRebirthRequest
gui.CreateTab("Farming")
local function ToEnd()
    character.HumanoidRootPart.CFrame = CFrame.new(4899, 347, 647)
end
local function ReqRebirth()
    reqrebremote:FireServer()
end
gui.CreateButton("10M wins", "Farming", ToEnd)
gui.CreateToggle("Auto Farm Wins", "Farming", function(GetToggle)
    while GetToggle() do
        ToEnd()
        task.wait(1)
    end
end)
gui.CreateButton("Rebirth", "Farming", ReqRebirth)
gui.CreateToggle("Auto Rebirth", "Farming", function(GetToggle)
    while GetToggle() do
        ReqRebirth()
        task.wait(1)
    end
end)
