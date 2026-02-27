function can_place_room(_x, _y, _room)
{
    for (var xx = _x; xx < _x + _room.w; xx++)
    for (var yy = _y; yy < _y + _room.h; yy++)
    {
        if (xx < 1 || yy < 1 || xx >= grid_w-1 || yy >= grid_h-1)
            return false;

        if (dungeon_grid[# xx, yy] != -1)
            return false;
    }

    return true;
}