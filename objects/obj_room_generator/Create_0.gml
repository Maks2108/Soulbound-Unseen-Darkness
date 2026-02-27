global.paused = false
randomize();
ROOM_PIXEL_WIDTH  = 2048;
ROOM_PIXEL_HEIGHT = 2048;

TILE_SIZE = 128;

ROOM_TILES_X = 16;
ROOM_TILES_Y = 16;
enum RoomType
{
    NORMAL,
    TREASURE,
    BOSS
}

room_pool = [
    RoomDef(8, 8, RoomType.NORMAL),
    RoomDef(10, 6, RoomType.NORMAL),
    RoomDef(6, 10, RoomType.NORMAL),
    RoomDef(12, 12, RoomType.TREASURE),
    RoomDef(14, 14, RoomType.BOSS)
];
grid_w = 50;
grid_h = 50;

dungeon_grid = ds_grid_create(grid_w, grid_h);
ds_grid_clear(dungeon_grid, -1); // -1 = purooms = []; // lista wygenerowanych pokoi
rooms = []
generate_dungeon(global.dungeon_size);
show_debug_message("Rooms count: " + string(array_length(rooms)));

for (var i = 0; i < array_length(rooms); i++)
{
    build_room(
    rooms[i],
    ROOM_PIXEL_WIDTH,
    ROOM_PIXEL_HEIGHT,
    TILE_SIZE,
    ROOM_TILES_X,
    ROOM_TILES_Y
);
}

var start_room = rooms[0];

var px = start_room.x * ROOM_PIXEL_WIDTH  + ROOM_PIXEL_WIDTH  * 0.5;
var py = start_room.y * ROOM_PIXEL_HEIGHT + ROOM_PIXEL_HEIGHT * 0.5;

instance_create_layer(px, py, "Instances", obj_necro);