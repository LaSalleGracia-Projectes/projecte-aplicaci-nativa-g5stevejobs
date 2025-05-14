// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function scrSaltar(ancho){
    if (collision_rectangle(x - ancho, y, x + ancho, y + 1, obPared, false, false) && vspeed == 0) {
        vspeed = -5;
		audio_play_sound(JumpSound,0,false)
    }
}