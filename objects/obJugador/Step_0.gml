/// @description Codigo para mover personaje
// Puede escribir su código en este editor
var movHorizontal = keyboard_check(vk_right) - keyboard_check(vk_left);

if (movHorizontal != 0) {
	x += movHorizontal * 2;
	image_xscale = movHorizontal;
	sprite_index = Personaje_Caminando;
} else {
	sprite_index = Personaje_Quieto;
}