function scrGuardarJuego() {
    // Reactivar temporalmente al jugador si está pausado
    var jugadorInactivo = !instance_exists(obJugador);  // Comprobar si el jugador no existe

    if (jugadorInactivo) {
        instance_activate_object(obJugador);  // Reactivar al jugador si estaba desactivado
    }

    var datos = {
        jugador: {
            x: obJugador.x,
            y: obJugador.y,
            enemigos: []
        }
    };

    // Guardar la posición de los enemigos
    for (var i = 0; i < instance_number(obEnemigo); i++) {
        var enemigo = instance_find(obEnemigo, i);
        datos.jugador.enemigos.push({
            x: enemigo.x,
            y: enemigo.y
        });
    }

    // Imprimir en la consola usando show_message (para visualizarlo en pantalla) o string (para la consola de depuración)
    show_message("Guardando datos: " + json_stringify(datos));  // Muestra los datos en un cuadro emergente
    // Alternativa para consola de depuración: 
    // output_debug_string("Guardando datos: " + json_stringify(datos));

    // Guardar en archivo
    var archivo = file_text_open_write("datosGuardados.json");
    if (archivo != -1) {
        file_text_write_string(archivo, json_stringify(datos));
        file_text_close(archivo);
        show_message("Juego guardado correctamente.");
    } else {
        show_message("Error al guardar el archivo.");
    }

    // Volver a desactivar al jugador si estaba desactivado antes
    if (jugadorInactivo) {
        instance_deactivate_object(obJugador);
    }
	//se guardaaqui: 
}
