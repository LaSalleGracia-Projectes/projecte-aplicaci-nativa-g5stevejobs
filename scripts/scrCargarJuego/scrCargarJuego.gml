function scrCargarJuego() {		
    var archivo = file_text_open_read("datosGuardados.json");
    var jsonString = file_text_read_string(archivo);
    var dato = json_parse(jsonString);
    file_text_close(archivo);
    
    var jugador = instance_create_layer(dato.jugador.x, dato.jugador.y, "Instances", obJugador);

}
