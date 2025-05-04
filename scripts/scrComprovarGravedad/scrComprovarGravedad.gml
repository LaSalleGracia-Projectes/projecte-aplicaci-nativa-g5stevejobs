	// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function scrComprovarGravedad(ancho){
	if (!collision_rectangle(x-ancho,y,x+ancho,y+1,obPared,false,false) or vspeed != 0){
		gravity = 0.3;
		//Añadir spride de salto
	}
}