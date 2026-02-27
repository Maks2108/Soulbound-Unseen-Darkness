function create_door(_room, _dir)
{
    var world_x = _room.x * global.ROOM_PIXEL_WIDTH;
    var world_y = _room.y * global.ROOM_PIXEL_HEIGHT;

    switch (_dir)
    {
        case "right":
            instance_create_layer(world_x + global.ROOM_PIXEL_WIDTH - 16,
                                  world_y + global.ROOM_PIXEL_HEIGHT/2,
                                  "Instances",
                                  obj_door_right);
        break;

        case "left":
            instance_create_layer(world_x,
                                  world_y + global.ROOM_PIXEL_HEIGHT/2,
                                  "Instances",
                                  obj_door_left);
        break;

        case "up":
            instance_create_layer(world_x + global.ROOM_PIXEL_WIDTH/2,
                                  world_y,
                                  "Instances",
                                  obj_door_up);
        break;

        case "down":
            instance_create_layer(world_x + global.ROOM_PIXEL_WIDTH/2,
                                  world_y + global.ROOM_PIXEL_HEIGHT - 16,
                                  "Instances",
                                  obj_door_down);
        break;
    }
}