local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/Sidhsksjsjsh/VAPE-UI-MODDED/main/.lua"))()
local wndw = lib:Window("VIP Turtle Hub V4 - Secured & better mode")
local T1 = wndw:Tab("Main")
local T2 = wndw:Tab("Attack - TESTING")
local workspace = game:GetService("Workspace")
local enemy = {}

for i,v in pairs(workspace["Mobs"]["1"]:GetChildren()) do
  table.insert(enemy,v.Name)
end

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

T1:Button("Equip multiclick",function()
  for array = 1,#game:GetService("ReplicatedStorage")["Items"]["Pencil"]:GetChildren() do
      game:GetService("ReplicatedStorage")["GameClient"]["Events"]["RemoteEvent"]["ClickChangeEvent"]:FireServer(game:GetService("ReplicatedStorage")["Items"]["Pencil"][array])
  end
end)

T2:Dropdown("Select Enemies",enemy,function(value)
    _G.enmy = value
end)

T2:Button("Attack",function()
  for i,v in pairs(workspace["Mobs"]["1"][_G.enmy]:GetDescendants()) do
      if v:IsA("ProximityPrompt") then
        fireproximityprompt(v)
      end
  end
end)
