local function getScript(placeId)
    local success, result = pcall(function()
        return game:HttpGet("https://raw.githubusercontent.com/snovvvvy/VapeToObsidian/main/games/" .. placeId .. ".lua", true)
    end)

    if success and result ~= "404: Not Found" then
        return result
    end

    success, result = pcall(function()
        return game:HttpGet("https://raw.githubusercontent.com/snovvvvy/VapeToObsidian/main/games/" .. "universal.lua", true)
    end)

    if not success then
        error(result)
    end

    return result
end

loadstring(getScript(game.PlaceId))()