if (hspeed != 0 && !place_free(x,y)){
	hspeed = 0
}


scrComprovarGravedad(sprite_width);

if (vspeed > 0) {
	scrComprovarColisionSuelo(sprite_width);
}