--[[ Type Creation ]]--
-- For sanity checks within function parameters without if statements

export type Table
		= {}
	export type BoolTable
		= {boolean}
	export type IntTable
		= {number}
	export type StringTable
		= {string}

--[[ Custom Libraries and Functions ]]--
-- Custom variable stuff that do the jobs needed in this script, I dunno how to explain.

local Instance = {
	["new"] = function(objectType : string, ...)
		local object = Instance.new(objectType)
		local args = ... or {
			[1] = {}
		}
		if args[1] then
			for i, v in args[1] do
				object[i] = v
			end
		end

		return object
	end,
	["realInstanceLibrary"] = function(...) return Instance end
}

local game = {}

function game:GetService(className : string)
	local success, service = pcall(function()
		return rawget(game, className)
	end)
	
	if success then
		return service
	else
		return nil -- Since objects can be parented to nil
	end
end

local loadstring = function(url, ...)
	if loadstring then
		local success, response = pcall(function() return loadstring(url) end)
		if success then
			return response
		else
			return nil, response
		end
	end
end

local screengui = Instance.new("ScreenGui", {
	Parent = game:GetService("PlayerGui")
})

local containerframe = Instance.new("Frame", {
	Parent = screengui,
	Size = UDim2.new(0.3, 0, 0.5, 0)
})

local btn1 = Instance.new("TextButton", {
	Parent = containerframe,
	Size = UDim2.new(0.5, 0, 0.5, 0),
	Position = UDim2.new(0, 0, 0, 0),
	Text = "Infinite Yield",
	TextScaled = true
})

local btn2 = Instance.new("TextButton", {
	Parent = containerframe,
	Size = UDim2.new(0.5, 0, 0.5, 0),
	Position = UDim2.new(0.5, 0, 0, 0),
	Text = "Dex Explorer V3",
	TextScaled = true
})

local btn3 = Instance.new("TextButton", {
	Parent = containerframe,
	Size = UDim2.new(0.5, 0, 0.5, 0),
	Position = UDim2.new(0, 0, 0.5, 0),
	Text = "Orca Universal Hub",
	TextScaled = true
})

local btn4 = Instance.new("TextButton", {
	Parent = containerframe,
	Size = UDim2.new(0.5, 0, 0.5, 0),
	Position = UDim2.new(0.5, 0, 0.5, 0),
	Text = "CMD-X",
	TextScaled = true
})
