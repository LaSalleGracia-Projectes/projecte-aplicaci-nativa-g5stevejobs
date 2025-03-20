function scrCargarJuego() {
    // Comprobar si el jugador no existe y reactivarlo si está desactivado
    var jugadorInactivo = !instance_exists(obJugador);  // Comprobar si el jugador no existe

    // Si el jugador está desactivado, reactívalo
    if (jugadorInactivo) {
        instance_activate_object(obJugador);  // Reactivar al jugador si estaba desactivado
    }

    // Si ya existe una instancia del jugador, destrúyela antes de crear una nueva
    var jugador_instance = instance_find(obJugador, 0); // Buscar la primera instancia del jugador
    if (jugador_instance != noone) {
        instance_destroy(jugador_instance); // Destruir la instancia anterior del jugador
    }

    // Leer el archivo JSON
    var archivo = file_text_open_read("datosGuardados.json");
    var jsonString = file_text_read_string(archivo);
    var dato = json_parse(jsonString);
    file_text_close(archivo);
    
    // Crear al jugador con las coordenadas cargadas desde el JSON
    var jugador = instance_create_layer(dato.jugador.x, dato.jugador.y, "Instances", obJugador);
    
    // Si tienes una pausa activada, desactívala para la instancia cargada
    if (paused) {
        jugador.occupied = false;  // Asegúrate de que no esté pausado, según tu sistema de pausa
        jugador.active = true;     // Despausar la instancia si es necesario
    }
}
