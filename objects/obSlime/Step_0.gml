var action = irandom(3)

if (wait <= 0) {
    switch(action) {
        case 0:
        case 1:
            sprite_index = Slime_Quieto
            scrCaminar(direccion, 0);
            wait += 200
            break;
        case 2:
            sprite_index = Slime_Caminando
			direccion = 1
            scrCaminar(direccion, enemyspeed);
            wait += 500
            break;
        case 3:
            sprite_index = Slime_Caminando
			direccion = -1
            scrCaminar(direccion, enemyspeed);
            wait += 500
            break;
    }
} else {
    wait -= 1
}


