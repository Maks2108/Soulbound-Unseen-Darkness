global.necro_walk_speed = 5
global.necro_run_speed = 10
global.necro_reg_atk = 20
global.necro_hp = 120
current_speed = 0
global.player_x = x
global.player_y = y
global.playerW = sprite_width
global.playerH = sprite_height
global.dodge_cooldown = 150
global.dodge_timer = 0
global.stamina_bar = 900
global.stamina_counter = 0
hp = 120
global.current_necro_hp = global.necro_hp = 120
global.key_count = 0
i = 0
state = PLAYERSTATE.FREE
hit_list = ds_list_create();
enum PLAYERSTATE
{
	FREE,
	ATTACK_SLASH,
	ATTACK_COMBO
}
depth = -3