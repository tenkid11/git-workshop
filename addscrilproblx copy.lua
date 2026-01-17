local prompt = script.Parent:WaitForChild("ProximityPrompt")
local tool_tig = game.ServerStorage:WaitForChild("tigitg")

prompt.Triggered:Connect(function(player)
	local character = player.Character
	if not character then return end

	-- Prevent duplicates
	if player.Backpack:FindFirstChild(tool_tig.Name) or character:FindFirstChild(tool_tig.Name) then
		return
	end

	local tig1 = tool_tig:Clone()
	tig1.Parent = player.Backpack -- IMPORTANT

	local humanoid = character:FindFirstChildOfClass("Humanoid")
	if humanoid then
		humanoid:EquipTool(tig1)
	end
end)