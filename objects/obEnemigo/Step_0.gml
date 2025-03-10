var action = irandom(3)

if (wait <= 0) {
    switch(action) {
        case 0:
        case 1:
            sprite_index = spriteQuieto
            hspeed = 0;
            wait += 200;
            break;
        case 2:
            sprite_index = spriteCaminar
			direccion = 1
            hspeed = enemyspeed * direccion;
            wait += 500;
            break;
        case 3:
            sprite_index = spriteCaminar
			direccion = -1
			hspeed = enemyspeed * direccion;
            wait += 500
            break;
    }
	scrCaminar(direccion, hspeed);
} else {
    wait -= 1
}