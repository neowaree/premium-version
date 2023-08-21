repeat wait() until game:IsLoaded()

game:GetService("Players").LocalPlayer.Idled:Connect(function()
    game:GetService("VirtualUser"):ClickButton2(Vector2.new())
end)

local noti = loadstring(game:HttpGet("https://raw.githubusercontent.com/Jxereas/UI-Libraries/main/notification_gui_library.lua", true))()
local nw = "https://raw.githubusercontent.com/neowaresoftworks/premium/main/"

local games = {
    [10358162137] = "weaklegacy.lua",
    [8540168650] = "standupright.lua",
    [5303541547] = "twopiece.lua",
    [13181454135] = "legacyseas.lua",
    [4587545091] = "vietnampiece.lua",
    [7258239416] = "vietnampiece.lua",
    [6490016198] = "slayertycoon.lua",
    [10598963932] = "catpiece.lua",
    [14281307196] = "autoldversion.lua"
}

local foundGame = false 
for i, v in pairs(games) do
    if i == game.PlaceId or i == game.GameId then
        foundGame = true
        local success, error_message = pcall(function()
            loadstring(game:HttpGet(nw .. v))()
        end)
        
        if success then
            noti.new("success", "neoware", "Found Game Supported!")
        else
            print("script is fucked")
        end

        break
    end
end

if not foundGame then
    noti.new("error", "neoware", "This Game isn't supported!")
end
