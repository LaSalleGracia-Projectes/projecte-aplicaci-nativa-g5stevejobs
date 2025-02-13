/// @description 
// Puede escribir su código en este editor
if (!collision_rectangle(x-8,y,x+8,y+1,obPared,false,false)){
	gravity = 0.3;
	//Añadir spride de salto
}

if (vspeed > 0) {
	var ground = collision_rectangle(x-8,y,x+8,y+vspeed,obPared,false,false)
	if (ground){
		y = ground.y;
		vspeed = 0;
		gravity = 0;
	}
} else if (vspeed < 0) {
	var ceiling = collision_rectangle(x-8, y-18, x+8, y-18+vspeed,obPared,false,false);
	if (ceiling) {
		y = ceiling.y + ceiling.sprite_height + 18;
		vspeed = 0;
	}
}

sprite_index = asset_get_index("Personaje" + accion + arma);