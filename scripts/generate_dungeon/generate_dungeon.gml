function generate_dungeon(_room_count)
{
    //test
    rooms = [];

    var start_x = 10;
    var start_y = 10;

    array_push(rooms, { x: start_x, y: start_y });

    for (var i = 1; i < _room_count; i++)
    {
        var created = false;
        while (!created)
        {
            var base = rooms[irandom(array_length(rooms) - 1)];

            var dir = irandom(3);

            var nx = base.x;
            var ny = base.y;

            if (dir == 0) nx += 1;
            if (dir == 1) nx -= 1;
            if (dir == 2) ny += 1;
            if (dir == 3) ny -= 1;

            if (!dungeon_room_exists(nx, ny))
			{
				array_push(rooms, { x: nx, y: ny });
				created = true;
			}
            
        }
    }
}