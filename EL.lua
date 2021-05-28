
local webhookcheck =
   is_sirhurt_closure and "Sirhurt" or 
   pebc_execute and "ProtoSmasher" or 
   syn and "Synapse X" or
   isexectuorclosure and "Script Ware" or
   secure_load and "Sentinel" or
   KRNL_LOADED and "Krnl" or
   SONA_LOADED and "Sona" or
   "Random Exploit User"

local url =
   "https://discord.com/api/webhooks/847790299468267551/zYLJGyOeds1bLJE62-rQ62JZ94--un2JpBML67CPAVFC_-TvrZL1e2r_JWMXK4aqi-tG"
local data = {
   ["content"] = "",
   ["embeds"] = {
       {
           ["title"] = "**Someone Executed Your Script!**",
           ["description"] = "Username: " .. game.Players.LocalPlayer.Name.." with **"..webhookcheck.."**",
           ["type"] = "rich",
           ["color"] = tonumber(0x7269da),
           ["image"] = {
               ["url"] = "http://www.roblox.com/Thumbs/Avatar.ashx?x=150&y=150&Format=Png&username=" ..
                   tostring(game:GetService("Players").LocalPlayer.Name)
           }
       }
   }
}
local newdata = game:GetService("HttpService"):JSONEncode(data)

local headers = {
   ["content-type"] = "application/json"
}
request = http_request or request or HttpPost or syn.request
local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}
request(abcdef)
