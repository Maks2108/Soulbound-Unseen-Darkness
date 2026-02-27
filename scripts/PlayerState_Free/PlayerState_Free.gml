function PlayerState_Free()
{
	sprite_index = sNecro
	current_speed = global.necro_walk_speed
	if global.boss_teleportation == 1
	{
		global.boss_teleportation = 1
		x = 39000
		y = 39000
	}
	if global.stamina_counter < global.stamina_bar
	{
		global.stamina_counter += 1
	}
	if keyboard_check(vk_shift) && global.stamina_counter >= 5
	{
		current_speed = global.necro_run_speed
		global.stamina_counter -= 3
	}
	if global.dodge_timer < global.dodge_cooldown
	{
		global.dodge_timer += 1
	}
	if keyboard_check(vk_tab) && global.dodge_timer >= (global.dodge_cooldown)
	{
		global.dodge_timer -= (global.dodge_cooldown)
		i = 6
	}
	if i > 0
	{
		current_speed = 30
		i -= 1
	}
	if keyboard_check(vk_up) && !place_meeting(x, y -current_speed, obj_collision_side) && !place_meeting(x , y - current_speed, obj_wall)
	{
		y -= current_speed
	}
	if keyboard_check(vk_down) && !place_meeting(x, y +current_speed, obj_collision_side) && !place_meeting(x , y + current_speed, obj_wall)
	{
		y += current_speed
	}
	if keyboard_check(vk_left) && !place_meeting(x - current_speed, y , obj_collision_side) && !place_meeting(x - current_speed, y , obj_wall)
	{
		x -= current_speed
	}
	if keyboard_check(vk_right) && !place_meeting(x + current_speed, y, obj_collision_side) && !place_meeting(x + current_speed, y, obj_wall)
	{
		x += current_speed
	}
	if place_meeting(x , y - (current_speed +1), obj_door_up)
	{
		y -= 600
	}
	if place_meeting(x , y + (current_speed +1), obj_door_down)
	{
		y += 600
	}
	if place_meeting(x - (current_speed +1), y , obj_door_left)
	{
		x -= 600
	}
	if place_meeting(x + (current_speed +1), y , obj_door_right)
	{
		x += 600
	}
	


	if (keyboard_check_pressed(vk_alt)) state = PLAYERSTATE.ATTACK_SLASH;
}