if (alarm[0] < 0) {
	vidaTotal -= 2
	image_blend = c_red
	alarm[0] = 20
	alarm[2] = 180
	if (vidaTotal <= 0) {
        scrMatarJugador();
	}
}
