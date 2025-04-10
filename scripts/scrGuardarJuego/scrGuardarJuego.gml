function scrGuardarJuego() {
	if (file_exists("save.sav")) file_delete("save.sav");

	ini_open("save.sav");
	ini_write_real("Jugador", "x_actual", global.xJugador);
	ini_write_real("Jugador", "y_actual", global.yJugador);
	ini_close();

	show_message("Se ha guardado");
}
