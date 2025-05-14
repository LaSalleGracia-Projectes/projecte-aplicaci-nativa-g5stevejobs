function scrMatarJugador(){
	audio_play_sound(DeathSound,0,false)	
	if (!instance_exists(objFadeEffect)) {
        instance_create_depth(0, 0, -99999, objFadeEffect);
    }
}