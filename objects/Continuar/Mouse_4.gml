instance_activate_all();

obj_pause_manager.paused = false;
obj_pause_manager.update_pause();

audio_play_sound(ConfirmSound,0,false)