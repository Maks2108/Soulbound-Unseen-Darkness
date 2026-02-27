function build_room(_room, _pixel_w, _pixel_h, _tile_size, _tiles_x, _tiles_y)
{
	show_debug_message("Buduję pokój");
    var gx = _room.x;
    var gy = _room.y;

    var base_x = gx * _pixel_w;
    var base_y = gy * _pixel_h;

    for (var xx = 0; xx < _tiles_x; xx++)
    {
        for (var yy = 0; yy < _tiles_y; yy++)
        {
            var world_x = base_x + xx * _tile_size;
            var world_y = base_y + yy * _tile_size;

            var is_border = (xx == 0 || yy == 0 || xx == _tiles_x-1 || yy == _tiles_y-1);

            if (is_border)
                instance_create_layer(world_x, world_y, "Instances", obj_wall);
            else
                instance_create_layer(world_x, world_y, "Instances", obj_floor);
        }
    }
	create_doors_for_room(_room)
    show_debug_message("pokoj_utworzony")
    show_debug_message("jest_super")
    show_debug_message("naprawde_dobrze")
}