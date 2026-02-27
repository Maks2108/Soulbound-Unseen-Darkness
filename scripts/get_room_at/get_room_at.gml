function get_room_at(_x, _y)
{
    for (var i = 0; i < array_length(rooms); i++)
    {
        if (rooms[i].x == _x && rooms[i].y == _y)
            return rooms[i];
    }

    return undefined;
}