if x - global.player_x > 60 && x - global.player_x < 800 && !place_meeting(x + 3, y, obj_wall)
{
	x += 3
}
if x - global.player_x < -60 && x - global.player_x > -800 && !place_meeting(x - 3, y, obj_wall)
{
	x -= 3
}
if y - global.player_y > 60 && y - global.player_y < 800 && !place_meeting(x, y + 3, obj_wall)
{
	y += 3
}
if y - global.player_y < -60 && y -global.player_y > -800 && !place_meeting(x, y - 3, obj_wall)
{
	y -= 3
}