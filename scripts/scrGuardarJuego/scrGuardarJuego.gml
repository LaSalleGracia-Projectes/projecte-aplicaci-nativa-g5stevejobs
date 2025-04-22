function scrGuardarJuego() {
	if (file_exists("save.sav")) file_delete("save.sav");

	ini_open("save.sav");
	ini_write_real("Jugador", "x_actual", obJugador.x);
	ini_write_real("Jugador", "y_actual", obJugador.y);
	ini_close();
}
