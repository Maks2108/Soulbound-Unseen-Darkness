if (keyboard_check(vk_left))
    angle -= 1;

if (keyboard_check(vk_right))
    angle += 1;


angle = clamp(angle, 315, 405);

image_angle = angle;
direction = angle + 90;

if y < -100
{
	room_goto_next()
}
global.player_x = x
global.player_y = y