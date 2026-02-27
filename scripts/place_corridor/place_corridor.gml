function place_corridor(x1, y1, x2, y2)
{
    var cx = x1;
    var cy = y1;

    while (cx != x2)
    {
        dungeon_grid[# cx, cy] = -2; // -2 = korytarz
        cx += sign(x2 - cx);
    }

    while (cy != y2)
    {
        dungeon_grid[# cx, cy] = -2;
        cy += sign(y2 - cy);
    }
}