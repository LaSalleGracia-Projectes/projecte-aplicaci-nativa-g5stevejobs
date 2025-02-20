// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function scrComprovarColisionPlataforma(ancho){
	var plataforma = collision_rectangle(x - ancho, y, x + ancho, y + 1, objPlataformaMovible, true, true);

	if (plataforma && vspeed == 0) { 
	    x += plataforma.hspeed;
		y = plataforma.y + 1;
	}
}