// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function scrComprovarColisionSobre(ancho, alto){
	var ceiling = collision_rectangle(x-ancho, y-alto, x+ancho, y-alto+vspeed,obPared,false,false);
	if (ceiling && ceiling.oneSided == false) {
		y = ceiling.y + ceiling.sprite_height + alto;
		vspeed = 0;
	}
}