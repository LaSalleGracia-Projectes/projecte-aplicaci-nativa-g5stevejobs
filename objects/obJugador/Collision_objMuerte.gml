if (alarm[0] < 0) {
	audio_play_sound(PoisonSound,0,false)
	image_blend = c_red
	alarm[0] = 20
	alarm[2] = 180
}