function scrCaminar(movHorizontal, velocidad){
	if (place_free(x + movHorizontal * velocidad, y)) {
			x += movHorizontal * velocidad;
	}

	image_xscale = movHorizontal;
}