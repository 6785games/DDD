"""
	Contains level design and definition
	Square types :
	- 0 -> wall
	- 1 -> walking
	- 2 -> start
	- 3 -> end
"""

local levels = {}
levels.current_level = 1
levels.gamefinished = false
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
levels.points[1].start = (8, 0)
levels.points[1].end = (0, 9)

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
levels.points[2].start = (9, 0)
levels.points[2].end = (9, 3)

function levels.switch_to_next_level( tiles, player )
	if bricks.no_more_bricks then
	   if levels.current_level < #levels.sequence then
	  levels.current_level = levels.current_level + 1
	  player.start_position()
	  bricks.construct_level( levels.sequence[levels.current_level] )
	   else
	  levels.gamefinished = true
	   end
	end
 end
 
 return levels
