if (keyboard_check_pressed(ord("E")) && abs(x - other.x) <= 5) {
	instance_destroy(other);
	audio_play_sound(ItemSound,0,false)
	arma = "_Espada";
	obInventario.inventory[1] = 1
}