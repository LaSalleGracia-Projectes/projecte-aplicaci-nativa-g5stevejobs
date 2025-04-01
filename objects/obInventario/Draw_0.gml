draw_sprite_stretched
(
	Fondo_Inventario,
	0,
	x-6,
	y-6,
	12 + (row_length*36),
	12+(((INVENTORY_SLOTS-1) div row_length)+1)*36
);

for (var i = 0; i < INVENTORY_SLOTS; i += 1)
{
	var xx = x + (i mod row_length) * 36 + 2;
	var yy = y + (i div row_length) * 36 + 2;
	draw_sprite(Slot_Inventario,0,xx,yy)
}