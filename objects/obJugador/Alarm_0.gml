image_blend = c_white;

if (place_meeting(x, y, objMuerte)) {
	vidaTotal -= objMuerte.damage;  
	
	if (vidaTotal <= 0) {
        scrMatarJugador();
	}
}

