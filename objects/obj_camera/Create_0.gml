if (!variable_global_exists("camera")) {
    global.camera = camera_create_view(0, 0, 2560, 1440, 0, obj_necro_boat, -1, -1, -1, -1);
    view_camera[0] = global.camera;
    view_enabled = true;
    view_visible[0] = true;
}

