if (room==MainMenuRoom){
	
	var btn_width = 48;
	var btn_height = 39;
	var btn_padding = 10;
	var btn_alpha = 0.8;

	var start_x = display_get_gui_width() - (btn_width + btn_padding) * 3;
	var start_y = btn_padding;

	var language_ids = [0, 1, 2];
	var language_sprites = [flagES, flagEN, flagFR];

	var current_alpha = draw_get_alpha();
	draw_set_alpha(btn_alpha);

	for (var i = 0; i < array_length(language_ids); i++) {
	    var btn_x = start_x + (btn_width + btn_padding) * i;
	    var btn_y = start_y;
    
	    var mouse_hover = point_in_rectangle(
	        device_mouse_x_to_gui(0), device_mouse_y_to_gui(0),
	        btn_x, btn_y, btn_x + btn_width, btn_y + btn_height
	    );

	    var is_selected = (global.currentLanguage == language_ids[i]);
    
	    if (is_selected) {
	        draw_set_color(c_lime);
	        draw_rectangle(btn_x - 2, btn_y - 2, btn_x + btn_width + 2, btn_y + btn_height + 2, false);
	    } else if (mouse_hover) {
	        draw_set_color(c_yellow);
	        draw_rectangle(btn_x - 2, btn_y - 2, btn_x + btn_width + 2, btn_y + btn_height + 2, false);
	    }
		
		draw_set_color(c_white);

	    draw_sprite_ext(language_sprites[i], 0, btn_x, btn_y, btn_width / sprite_get_width(language_sprites[i]), btn_height / sprite_get_height(language_sprites[i]), 0, c_white, 1);

	    if (mouse_hover && mouse_check_button_pressed(mb_left)) {
	        audio_play_sound(ConfirmSound,0,false)
			global.currentLanguage = language_ids[i];
	        set_language(global.currentLanguage);
	    }
	}

	draw_set_alpha(current_alpha);

}

