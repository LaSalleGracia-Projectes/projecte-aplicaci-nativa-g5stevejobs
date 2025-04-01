function scrCargarJuego() {		
	if (file_exists("save.sav")) { 
	    ini_open("save.sav"); 
	    obJugador.x = ini_read_real("Jugador", "x_actual", 0); // Se añade un valor por defecto (0)
	    obJugador.y = ini_read_real("Jugador", "y_actual", 0);
	    ini_close();
	}
}
