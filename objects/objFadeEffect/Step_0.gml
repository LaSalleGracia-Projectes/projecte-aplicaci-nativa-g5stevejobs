switch (state) {
    case "fade_out":
		instance_deactivate_all(true);
        fade_alpha += fade_speed;
        
        if (fade_alpha >= 1) {
            room_restart();
            state = "hold";
        }
        break;
		
	case "hold":
		hold_timer++;
        
        if (hold_timer >= hold_duration) {
            room_restart();
            state = "fade_in";
            hold_timer = 0;
        }
        break;
        
    case "fade_in":
        fade_alpha -= fade_speed;
        
        if (fade_alpha <= 0) {
            instance_destroy();
			instance_activate_all();
        }
		
        break;
}