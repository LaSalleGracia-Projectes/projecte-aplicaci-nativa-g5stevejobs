function scrGuardarJuego() {
	if (file_exists("save.sav")) file_delete("save.sav");

	ini_open("save.sav");
	ini_write_real("Jugador", "x_actual", obJugador.x);
	ini_write_real("Jugador", "y_actual", obJugador.y);
	ini_close();
	
	var _saveData = array_create(0);

	// Guardamos los datos del jugador en variables
	var _x = obJugador.x;
	var _y = obJugador.y;
	var _objName = object_get_name(obJugador.object_index);
	var _level = obJugador.currenRoom; // corrige esto si es currentRoom

	var _saveGameData =
	{
		obj: _objName,
		currentLevel: _level,
		x: _x,
		y: _y
	};

	array_push(_saveData, _saveGameData);

	// guardar en json
	var _string = json_stringify(_saveData);
	var _buffer = buffer_create(string_byte_length(_string) + 1, buffer_fixed, 1);
	
	buffer_write(_buffer, buffer_string, _string);
	buffer_save(_buffer, "savegame.save");
	
	buffer_delete(_buffer);
	show_debug_message("Juego Guardado: " + _string);
}
