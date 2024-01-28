local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/Sidhsksjsjsh/VAPE-UI-MODDED/main/.lua"))()
local wndw = lib:Window("VIP Turtle Hub V4 - Secured & better mode")
local T1 = wndw:Tab("Main")
local T2 = wndw:Tab("Attack")
local T3 = wndw:Tab("Multiclicker")
local T4 = wndw:Tab("Hatch")
local T5 = wndw:Tab("Code log")

local workspace = game:GetService("Workspace")
local enemy = {}
local items = {}
local egg = {}
local codes = {}

lib:AddTable(workspace["Mobs"]["1"],enemy)
lib:AddTable(game:GetService("ReplicatedStorage")["Items"],items)
lib:AddTable(workspace["Eggs"],egg)
lib:AddTable(game:GetService("ReplicatedStorage")["Codes"],codes)

T1:Toggle("Auto click",false,function(value)
  _G.click = value
    while wait() do
      if _G.click == false then break end
      game:GetService("ReplicatedStorage")["ClickEvent"]:FireServer("Click")
    end
end)

T1:Toggle("Auto collect reward",false,function(value)
  _G.cr = value
    while wait() do
      if _G.cr == false then break end
      game:GetService("ReplicatedStorage")["GameClient"]["Events"]["RemoteEvent"]["ClaimGift"]:FireServer("Reward1")
      game:GetService("ReplicatedStorage")["GameClient"]["Events"]["RemoteEvent"]["ClaimGift"]:FireServer("Reward2")
      game:GetService("ReplicatedStorage")["GameClient"]["Events"]["RemoteEvent"]["ClaimGift"]:FireServer("Reward3")
      game:GetService("ReplicatedStorage")["GameClient"]["Events"]["RemoteEvent"]["ClaimGift"]:FireServer("Reward4")
      game:GetService("ReplicatedStorage")["GameClient"]["Events"]["RemoteEvent"]["ClaimGift"]:FireServer("Reward5")
      game:GetService("ReplicatedStorage")["GameClient"]["Events"]["RemoteEvent"]["ClaimGift"]:FireServer("Reward6")
      game:GetService("ReplicatedStorage")["GameClient"]["Events"]["RemoteEvent"]["ClaimGift"]:FireServer("Reward7")
      game:GetService("ReplicatedStorage")["GameClient"]["Events"]["RemoteEvent"]["ClaimGift"]:FireServer("Reward8")
      game:GetService("ReplicatedStorage")["GameClient"]["Events"]["RemoteEvent"]["ClaimGift"]:FireServer("Reward9")
      game:GetService("ReplicatedStorage")["GameClient"]["Events"]["RemoteEvent"]["ClaimGift"]:FireServer("Reward10")
      game:GetService("ReplicatedStorage")["GameClient"]["Events"]["RemoteEvent"]["ClaimGift"]:FireServer("Reward11")
      game:GetService("ReplicatedStorage")["GameClient"]["Events"]["RemoteEvent"]["ClaimGift"]:FireServer("Reward12")
    end
end)

T1:Toggle("Auto rebirth",false,function(value)
  _G.rbr = value
    while wait() do
      if _G.rbr == false then break end
      game:GetService("ReplicatedStorage")["GameClient"]["Events"]["RemoteEvent"]["RebirthEvent"]:FireServer()
    end
end)

T3:Dropdown("Select Items",items,function(value)
    _G.tool = value
end)

T3:Button("Equip multiclick",function()
  for array = 1,#game:GetService("ReplicatedStorage")["Items"][_G.tool]:GetChildren() do
      game:GetService("ReplicatedStorage")["GameClient"]["Events"]["RemoteEvent"]["ClickChangeEvent"]:FireServer(game:GetService("ReplicatedStorage")["Items"][_G.tool][array])
  end
end)

T2:Dropdown("Select Enemies",enemy,function(value)
    _G.enmy = value
end)

T2:Toggle("Auto attack",false,function(value)
  _G.atke = value
    while wait() do
      if _G.atke == false then break end
        for i,v in pairs(workspace["Mobs"]["1"][_G.enmy]:GetDescendants()) do
            if v:IsA("ProximityPrompt") then
               fireproximityprompt(v)
            end
       end
    end
end)

T4:Dropdown("Select Eggs",egg,function(value)
    _G.ball = value
end)

T4:Toggle("Auto Hatch",false,function(value)
  _G.aht = value
    while wait() do
      if _G.aht == false then break end
      game:GetService("ReplicatedStorage")["GameClient"]["Events"]["RemoteFunction"]["BuyEgg"]:InvokeServer(_G.ball,"Buy1")
    end
end)

for array = 1,#codes do
  T5:Button("Codes #" .. array .. " : " .. tostring(game:GetService("ReplicatedStorage")["Codes"][array]["Code"]["Value"]) .. " ( click to copy )",function()
      setclipboard(game:GetService("ReplicatedStorage")["Codes"][array]["Code"]["Value"])
  end)
end
