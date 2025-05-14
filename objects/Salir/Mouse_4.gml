/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

// Inherit the parent event
event_inherited();
room_goto(MainMenuRoom)
obj_pause_manager.paused = false;
obj_pause_manager.update_pause();

audio_play_sound(CancelSound,0,false)

