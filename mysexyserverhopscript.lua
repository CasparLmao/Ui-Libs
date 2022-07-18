local HttpService = game:GetService"HttpService"
local Servers = HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/"..game.PlaceId.."/servers/Public?limit=100"))
for _, Server in pairs(Servers.data) do
if Server.playing == Server.maxPlayers-1 then
game:GetService"TeleportService":TeleportToPlaceInstance(game.PlaceId,Server.id)  
end
end
syn.queue_on_teleport[[loadstring(game:HttpGet"https://gist.githubusercontent.com/CasparLmao/781c6a6b52926caeb11a527bd8249fa4/raw/e78ffa73bb680e10c81f77387fd2e8c0bf8fed95/gistfile1.txt")()]]

--serverhop