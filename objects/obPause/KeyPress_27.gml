global.pausaGlobal = !global.pausaGlobal;
	
if (global.pausaGlobal) {
    global.previous_room = room;
    room_goto(Pause);
}
