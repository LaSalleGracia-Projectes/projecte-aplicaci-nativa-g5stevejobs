function scrGuardarJuego() {
    // Activar todas las instancias
    instance_activate_all();

    // Asegurarse de que obJugador esté activo antes de acceder a sus propiedades
    if (instance_exists(obJugador)) {
        // Guardar los datos del jugador
        var datos = {
            jugador: {
                x: obJugador.x,
                y: obJugador.y
            }
        };

        // Guardar en archivo
        var archivo = file_text_open_write("datosGuardados.json");
        file_text_write_string(archivo, json_stringify(datos));
        file_text_close(archivo);
    } else {
        show_message("La instancia de obJugador no existe.");
    }

    // Desactivar todas las instancias después de guardar
    instance_deactivate_all(true);
}
