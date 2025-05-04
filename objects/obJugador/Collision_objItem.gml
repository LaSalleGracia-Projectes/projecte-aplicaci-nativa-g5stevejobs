if (keyboard_check_pressed(ord("E")) && abs(x - other.x) <= 5) {
	instance_destroy(other);
	arma = "_Espada";
	obInventario.inventory[1] = 1
}