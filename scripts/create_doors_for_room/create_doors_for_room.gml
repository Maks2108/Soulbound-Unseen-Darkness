function create_doors_for_room(_room)
{
    var gx = _room.x;
    var gy = _room.y;

    show_debug_message("Tworze drzwi dla pokoju: " + string(gx) + "," + string(gy));

    var base_x = gx * ROOM_PIXEL_WIDTH;
    var base_y = gy * ROOM_PIXEL_HEIGHT;

    var mid_x = ROOM_TILES_X div 2;
    var mid_y = ROOM_TILES_Y div 2;

    var tile = TILE_SIZE;

    if (dungeon_room_exists(gx+1, gy))
    {
        var world_x = base_x + (ROOM_TILES_X-1) * tile;
        var world_y = base_y + mid_y * tile;
        instance_create_layer(world_x, world_y, "Instances", obj_door_right);
    }

    if (dungeon_room_exists(gx-1, gy))
    {
        var world_x = base_x;
        var world_y = base_y + mid_y * tile;
        instance_create_layer(world_x, world_y, "Instances", obj_door_left);
    }

    if (dungeon_room_exists(gx, gy+1))
    {
        var world_x = base_x + mid_x * tile;
        var world_y = base_y + (ROOM_TILES_Y-1) * tile;
        instance_create_layer(world_x, world_y, "Instances", obj_door_down);
    }

    if (dungeon_room_exists(gx, gy-1))
    {
        var world_x = base_x + mid_x * tile;
        var world_y = base_y;
        instance_create_layer(world_x, world_y, "Instances", obj_door_up);
    }
}