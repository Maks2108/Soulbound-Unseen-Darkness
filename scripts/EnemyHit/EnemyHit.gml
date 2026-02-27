function EnemyHit()
{
	hp -= global.necro_reg_atk
	flash = true
	if (hp <= 0)
	{
	instance_destroy()
	}
}