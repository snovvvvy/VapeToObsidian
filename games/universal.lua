local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/deividcomsono/Obsidian/main/Library.lua"))()

Library:Notify({
    Title = "snow hub",
    Description = "This game is not supported!",
    Time = 7.5
})
 
task.delay(7.55, function()
    Library:Unload()
end)