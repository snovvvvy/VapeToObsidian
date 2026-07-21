local function getScript(placeId)
	local url = "https://raw.githubusercontent.com/snovvvvy/VapeToObsidian/refs/heads/main/games/" .. placeId .. ".lua"

	local success, result = pcall(function()
		return game:HttpGet(url, true)
	end)

	if success and result ~= "404: Not Found" then
		return result
	end

	success, result = pcall(function()
		return game:HttpGet(
			"https://raw.githubusercontent.com/snovvvvy/VapeToObsidian/refs/heads/main/universal.lua",
			true
		)
	end)

	if not success then
		error(result)
	end

	return result
end

local source = getScript(game.PlaceId)

if type(source) ~= "string" then
	error("getScript returned " .. typeof(source) .. " instead of a string")
end

local compiled, err = loadstring(source)

if not compiled then
	error("Failed to compile script: " .. tostring(err))
end

compiled()