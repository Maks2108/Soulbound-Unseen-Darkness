function create_doors(_room)
{
    var gx = _room.x;
    var gy = _room.y;

    if (is_struct(get_room_at(gx+1, gy)))
        create_door(_room, "right");

    if (is_struct(get_room_at(gx-1, gy)))
        create_door(_room, "left");

    if (is_struct(get_room_at(gx, gy+1)))
        create_door(_room, "down");

    if (is_struct(get_room_at(gx, gy-1)))
        create_door(_room, "up");
}