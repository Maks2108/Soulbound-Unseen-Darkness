if global.paused exit;
current_speed = global.necro_walk_speed


if (keyboard_check_pressed(vk_alt)) state = PLAYERSTATE.ATTACK_SLASH;
switch (state)
{
	case PLAYERSTATE.FREE: PlayerState_Free(); break;
	case PLAYERSTATE.ATTACK_SLASH: PlayerState_Attack_Slash(); break;
	case PLAYERSTATE.ATTACK_COMBO: PlayerState_Attack_Combo(); break;
}

var t = instance_place(x, y, oEnemyParent);

if (global.paused)
{
    image_speed = 0;
}
else
{
    image_speed = 1;
}

global.player_x = x
global.player_y = y
global.current_necro_hp = hp