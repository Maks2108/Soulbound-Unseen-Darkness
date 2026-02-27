if instance_exists(obj_necro_boat)
{
	camera_set_view_target(global.camera, obj_necro_boat);
	view_camera[0] = global.camera;
	view_enabled = true;
	view_visible[0] = true;
	view_camera[0] = global.camera;
	

}
else{
global.camera = camera_create_view(0, 0, 1280, 720, 0, obj_necro_boat, -1, -1, -1, -1);
camera_set_view_target(global.camera, obj_necro);
view_camera[0] = global.camera;

view_enabled = true;
view_visible[0] = true;
view_camera[0] = global.camera;
}