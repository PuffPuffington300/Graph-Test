math.randomseed(tick())

local GraphMod = require(game:GetService("ReplicatedStorage"):WaitForChild("Graph"))
local CoolStats = game:GetService("ReplicatedStorage"):WaitForChild("Stats")
local Data = {}
for _,Stat in pairs(CoolStats:GetChildren()) do
	local LineData = table.create(5)

	for i=1, 5 do
		LineData[i] = i*math.random(10,50)
	end

	Data[Stat.Name] = LineData

	wait() -- Prevent studio from freezing
end
wait(1)
-- Create the graph and give it the data
local Graph = GraphMod.new(script.Parent:WaitForChild("Frame"))
Graph.Resolution = 100
Graph.Data = Data