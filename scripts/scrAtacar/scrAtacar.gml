// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
// scrAtacar
function scrAtacar(){
    if (arma != ""){
        accion = "_Atacar"
        image_index = 0
        
        var rango_ataque = 20;
        
        var enemigo = collision_circle(x, y, rango_ataque, obEnemigo, false, true);
        
        if (enemigo != noone) {
            var dmg = 10; 
            
            enemigo.health -= dmg;
            
            if (enemigo.health <= 0) {
                with (enemigo) {
                    instance_destroy();
                }
            }
        }
    }
}