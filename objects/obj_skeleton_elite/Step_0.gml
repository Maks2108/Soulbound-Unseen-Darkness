if x - global.player_x > 60 && x - global.player_x < 800 && !place_meeting(x - 4, y, obj_wall)
{
	x -= 4
}
if x - global.player_x < -60 && x - global.player_x > -800 && !place_meeting(x + 4, y, obj_wall)
{
	x += 4
}
if y - global.player_y > 60 && y - global.player_y < 800 && !place_meeting(x, y - 4, obj_wall)
{
	y -= 4
}
if y - global.player_y < -60 && y -global.player_y > -800 && !place_meeting(x, y + 4, obj_wall)
{
	y += 4
}