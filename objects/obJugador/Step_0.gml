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
	
	audio_play_sound(AttackSound,0,false)
}

if (alarm[2] <= 0){
	alarm[2] = 180
}

if (room==Level2){
	obInventario.inventory[1]=1
}

if (keyboard_check(ord("1"))){
	arma = ""
}

if (keyboard_check(ord("2"))){
	if (obInventario.inventory[1]=1){
		arma = "_Espada"
	}
}