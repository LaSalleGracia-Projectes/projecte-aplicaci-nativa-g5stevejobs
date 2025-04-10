/*global.pausaGlobal = !global.pausaGlobal;
	
if (global.pausaGlobal == true) {
	
	room_persistent = true;
    global.previous_room = room;
	global.xJugador = obJugador.x;
	global.yJugador = obJugador.y;
    room_goto(Pause);
} else if (global.pausaGlobal == false) {
	room_persistent = false;
}*/

 paused = !paused;
    
    if (paused) {

        var cam = view_camera[0];
        cam_x = camera_get_view_x(cam);
        cam_y = camera_get_view_y(cam);
        cam_width = camera_get_view_width(cam);
        cam_height = camera_get_view_height(cam);

        if (!surface_exists(pauseSurface)) {
            pauseSurface = surface_create(display_get_gui_width(), display_get_gui_height());
        }
        surface_set_target(pauseSurface);
        draw_clear_alpha(c_black, 0);
        draw_surface_stretched(application_surface, 0, 0, display_get_gui_width(), display_get_gui_height());
        surface_reset_target();

        instance_deactivate_all(true);
        instance_activate_object(obPause);
    } else {
        instance_activate_all();

        if (surface_exists(pauseSurface)) {
            surface_free(pauseSurface);
            pauseSurface = -1;
        }
    }