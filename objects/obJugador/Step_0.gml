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

if (mouse_check_button(mb_left)) {
	scrAtacar();	
}

if (alarm[2] <= 0){
	alarm[2] = 180
}