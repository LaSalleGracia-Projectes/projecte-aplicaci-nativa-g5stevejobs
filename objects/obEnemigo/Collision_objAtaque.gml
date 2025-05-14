if (alarm[1] < 0)
{
	vidaEnemigo -= other.damage;
	image_blend = c_red;
	
	if(obJugador.arma="_Espada"){
		audio_play_sound(SwordHitSound,0,false)
	} else {
		audio_play_sound(HitSound,0,false)
	}
	
	kb_x = sign(x - other.x);
	kb_y = sign(y - other.y);
	alarm[1] = 20;
}