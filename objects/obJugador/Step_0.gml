/// @description Codigo para mover personaje
// Puede escribir su código en este editor
var movHorizontal = keyboard_check(ord("D")) - keyboard_check(ord("A"));

if (movHorizontal != 0) {
	if (place_free(x + movHorizontal * 2, y)) {
			x += movHorizontal * 2;
	}

	image_xscale = movHorizontal;
	accion = "_Caminando";
} else {
	accion = "_Quieto";
}

if (keyboard_check(ord("W")) && collision_rectangle(x-8,y,x+8,y+1,obPared,false,false)){
	vspeed = -5.5;
}