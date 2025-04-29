/// @description Codigo para mover personaje
// Puede escribir su código en este editor
var movHorizontal = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var velocidad = 2;

if (movHorizontal != 0) {
	scrCaminar(movHorizontal, velocidad);
	accion = "_Caminando"; 
} else if (vspeed == 0) {
	accion = "_Quieto";
}

if (keyboard_check_pressed(ord("W"))) {
	scrSaltar(ancho);
}

if (mouse_check_button_pressed(mb_left)) {
    // Crear el ataque en una capa más cercana al jugador (más adelante en pantalla)
    var _inst = instance_create_depth(x, y, depth - 1, objAtaque);

    // Dirección del ataque (0 = derecha, 180 = izquierda)
    _inst.direction = (image_xscale == 1) ? 0 : 180;
    _inst.speed = 1;

    // Refleja visualmente el sprite del ataque según dirección del jugador
    _inst.image_xscale = image_xscale;

    // Aplica daño del jugador
    _inst.damage *= danoJugador;
}






