if (paused) {
    // Draw the game screenshot with a darkened overlay
    if (surface_exists(pauseSurface)) {
        draw_surface(pauseSurface, 0, 0);
    }
    
    // Draw a semi-transparent black overlay
    draw_set_alpha(0.7);
    draw_rectangle_color(0, 0, display_get_gui_width(), display_get_gui_height(), c_black, c_black, c_black, c_black, false);
    draw_set_alpha(1.0);
    
    // Draw the pause menu text
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    
    var gui_width = display_get_gui_width();
    var gui_height = display_get_gui_height();
    
    // Pause title
    draw_set_color(c_white);
    draw_text(gui_width / 2, gui_height / 3, "Juego Pausado");
    
    // Menu options
    draw_set_color(c_yellow);
    draw_text(gui_width / 2, gui_height / 2, "ESC - Para reanudar");
    draw_text(gui_width / 2, gui_height / 2 + 40, "R - Para reiniciar sala");
    draw_text(gui_width / 2, gui_height / 2 + 80, "Q - Para cerrar el juego");
    
    // Check for menu input when paused
    if (keyboard_check_pressed(ord("R"))) {
        // Restart the room
        room_restart();
        paused = false;
    }
    
    if (keyboard_check_pressed(ord("Q"))) {
        // Quit the game
        game_end();
    }
}
