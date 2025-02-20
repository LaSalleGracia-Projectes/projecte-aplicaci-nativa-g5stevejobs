// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function scrComprovarColoisionSuelo(ancho){
	var ground = collision_rectangle(x-ancho,y,x+ancho,y+vspeed,obPared,false,false)
	if (ground && y <= ground.y + 2 && y + vspeed >= ground.y){
		y = ground.y;
		vspeed = 0;
		gravity = 0;
	}
}