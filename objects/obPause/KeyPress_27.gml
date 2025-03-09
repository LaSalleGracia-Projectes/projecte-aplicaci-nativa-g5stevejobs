 paused = !paused;
    
    if (paused) {
        // Store camera information before pausing
        var cam = view_camera[0];
        cam_x = camera_get_view_x(cam);
        cam_y = camera_get_view_y(cam);
        cam_width = camera_get_view_width(cam);
        cam_height = camera_get_view_height(cam);
        
        // Create a surface to save the game screen when pausing
        if (!surface_exists(pauseSurface)) {
            pauseSurface = surface_create(display_get_gui_width(), display_get_gui_height());
        }
        surface_set_target(pauseSurface);
        draw_clear_alpha(c_black, 0);
        draw_surface_stretched(application_surface, 0, 0, display_get_gui_width(), display_get_gui_height());
        surface_reset_target();
        
        // Pause the game
        instance_deactivate_all(true);
        // Keep the pause object active
        instance_activate_object(obPause);
    } else {
        // Unpause the game
        instance_activate_all();
        
        // Free the pause surface
        if (surface_exists(pauseSurface)) {
            surface_free(pauseSurface);
            pauseSurface = -1;
        }
    }