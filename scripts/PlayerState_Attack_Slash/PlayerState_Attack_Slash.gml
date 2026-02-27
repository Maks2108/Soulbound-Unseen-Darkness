function PlayerState_Attack_Slash()
{
    current_speed = 0;

    if (sprite_index != sAttack_Necro_Slash)
    {
        sprite_index = sAttack_Necro_Slash;
        image_index = 0;

        ds_list_clear(hit_list);
    }

    mask_index = sAttack_Necro_Slash;

    var hitsNow = ds_list_create();
    var hits = instance_place_list(x, y, oEnemyParent, hitsNow, false);

    if (hits > 0)
    {
        for (var i = 0; i < hits; i++)
        {
            var enemy = hitsNow[| i];

           
            if (ds_list_find_index(hit_list, enemy) == -1)
            {
                ds_list_add(hit_list, enemy);

                with (enemy)
                {
                    EnemyHit();
                }
            }
        }
    }

    ds_list_destroy(hitsNow);

    mask_index = sNecro;

    if (image_index == 3)
    {
        sprite_index = sNecro;
        state = PLAYERSTATE.FREE;
    }
}