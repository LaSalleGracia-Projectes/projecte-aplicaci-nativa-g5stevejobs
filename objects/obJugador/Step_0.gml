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

if (room==Level2){
	obInventario.inventory[1]=1
}

if (keyboard_check(ord("1"))){
	arma = ""
}

if (keyboard_check(ord("2"))){
	arma = "_Espada"
}