function scrCargarJuego() {		
	// Versión INI desactivada por ahora
	/*
	if (file_exists("save.sav")) { 
	    ini_open("save.sav"); 
	    obJugador.x = ini_read_real("Jugador", "x_actual", 0);
	    obJugador.y = ini_read_real("Jugador", "y_actual", 0);
	    ini_close();
	}
	*/

	if (file_exists("savegame.save"))
	{
		var _buffer = buffer_load("savegame.save");
		var _string = buffer_read(_buffer, buffer_string);
		buffer_delete(_buffer);

		var _loadData = json_parse(_string);

		while (array_length(_loadData) > 0) {
			var _loadEntity = array_pop(_loadData);

			var _objIndex = asset_get_index(_loadEntity.obj);
			var _x = _loadEntity.x;
			var _y = _loadEntity.y;
			var _room = asset_get_index(_loadEntity.currentLevel);

			global.spawn_obj = _objIndex;
			global.spawn_x = _x;
			global.spawn_y = _y;
			room_goto(_room);
			}
		}
}
