function place_room(_x, _y, _room)
{
    var ajd = array_length(rooms);

    for (var xx = _x; xx < _x + _room.w; xx++)
    for (var yy = _y; yy < _y + _room.h; yy++)
    {
        dungeon_grid[# xx, yy] = id;
    }

    array_push(rooms, {
        x: _x,
        y: _y,
        w: _room.w,
        h: _room.h,
        type: _room.type
    });
}