wait()

local CreateInstance = Instance.new;
local ConsolePrint = print;
local MyPlayerHumanoid = game.Players.LocalPlayer.Character.HumanoidRootPart;
local MyPlayerObject = game.Players.LocalPlayer;
local Tableinsert = table.insert;
local CreateTable = table.create;
local DestroyTable = table.remove;
local ClearTable = table.clear;
local PlayerMouse = game.Players.LocalPlayer:GetMouse()



local function GetPlayerObject(PlayerName,WaitTimer)
	wait(WaitTimer)	
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[PlayerName].Character.HumanoidRootPart.CFrame
end

local function GotoCFrame(CFrameCord,WaitTimer)
	wait(WaitTimer)
	game.Players.LocalPlayer.Character.HumanoidRootPart = CFrame.new(CFrameCord)
end

local function BringPlayer(PlayerName,WaitTimer)
	wait(WaitTimer)
	local GetPlayerLocal = game.Players[PlayerName]
	return GetPlayerLocal
end

local function TeleportToPlayer(PlayerName)
	local function RemoveSpaces(name)
		return name:gsub('%s+', '') or name
	end

	local function getPlayer(name)
		name = RemoveSpaces(name)
		for i, player in pairs(game:GetService('Players'):GetPlayers()) do
			if player.Name:lower():match('^'.. name:lower()) then
				return player
			end
		end
		return nil
	end
	
	game.Players[getPlayer(PlayerName)].Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
end

local function DamageHumanoid(Player,Health,WaitTimer)
	wait(WaitTimer)
	game.Players[Player].Chracter.Health = Health
end

