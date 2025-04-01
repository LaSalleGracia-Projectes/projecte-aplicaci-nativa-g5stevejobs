/// @description Mejorar visuales de pausa, añadir logo o algo, y settings

if (paused) {
    if (surface_exists(pauseSurface)) {
        draw_surface(pauseSurface, 0, 0);
    }
    
    draw_set_alpha(0.7);
    draw_rectangle_color(0, 0, display_get_gui_width(), display_get_gui_height(), c_black, c_black, c_black, c_black, false);
    draw_set_alpha(1.0);
    
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    
    var gui_width = display_get_gui_width();
    var gui_height = display_get_gui_height();
    
	draw_set_font(MenuTitleFont);
    draw_set_color(c_white);
    draw_text(gui_width / 2, gui_height / 3, "Juego Pausado");
    
	draw_set_font(MenuFont);
    draw_set_color(c_yellow);
    draw_text(gui_width / 2, gui_height / 2, "ESC - Para reanudar");
    draw_text(gui_width / 2, gui_height / 2 + 40, "R - Para reiniciar sala");
    draw_text(gui_width / 2, gui_height / 2 + 80, "Q - Para cerrar el juego");
	draw_text(gui_width / 2, gui_height / 2 + 120, "S - Para guardar el juego");
	draw_text(gui_width / 2, gui_height / 2 + 160, "C - Para cargar el juego");
		
	if (keyboard_check_pressed(ord("S"))) {
		instance_activate_all();
	    scrGuardarJuego();
		instance_deactivate_all(true);
	}

// Cargar el juego
if (keyboard_check_pressed(ord("C"))) {
	instance_activate_all();
    scrCargarJuego();
	paused = false;

}
	
    if (keyboard_check_pressed(ord("R"))) {
        room_restart();
        paused = false;
    }
    
    if (keyboard_check_pressed(ord("Q"))) {
        game_end();
    }
}
