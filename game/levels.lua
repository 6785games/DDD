--[[
	Contains level design and definition
	Square types :
	- 0 -> wall
	- 1 -> walking
	- 2 -> start
	- 3 -> end
]]--

local levels = {}
levels.current_level = 1
levels.total_levels = 2
levels.gamefinished = false

-- stages and coords
levels.sequence = {}
levels.points = {}

levels.sequence[1] = {
	{0,0,0,0,0,0,1,1,1,3},
	{0,0,1,1,1,0,0,1,0,0},
	{0,0,0,1,0,0,0,1,0,0},
	{0,0,0,1,0,1,1,1,0,0},
	{0,1,1,1,1,1,0,1,1,1},
	{0,0,1,0,0,0,1,0,1,0},
	{1,0,1,0,1,0,1,0,1,1},
	{1,0,1,1,1,1,1,0,1,0},
	{2,1,1,0,1,0,0,0,0,0},
	{1,0,0,0,0,0,0,0,0,0}
}
levels.points[1] = {}
levels.points[1].start_x = 8
levels.points[1].start_y = 0
levels.points[1].end_x = 0
levels.points[1].end_y = 9

levels.sequence[2] = {				
	{0,0,0,0,0,0,1,1,1,3},
	{0,1,1,0,1,0,0,1,0,0},
	{1,1,0,1,0,0,0,1,0,0},
	{1,0,0,1,0,1,1,1,0,0},
	{0,0,1,1,1,1,0,1,1,1},
	{0,1,1,0,0,0,1,0,1,0},
	{1,1,1,0,1,0,1,0,1,1},
	{1,0,1,1,1,1,1,0,1,0},
	{0,0,0,0,1,0,0,0,0,0},
	{2,1,1,3,0,0,0,0,0,0}
}
levels.points[2] = {}
levels.points[2].start_x = 9
levels.points[2].start_y = 0
levels.points[2].end_x = 9
levels.points[2].end_y = 3
 
return levels
