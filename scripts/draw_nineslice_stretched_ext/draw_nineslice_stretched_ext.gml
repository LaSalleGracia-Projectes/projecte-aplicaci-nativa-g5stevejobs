/// @desc Draws a sprite with nineslice turned on, but with custom size and the pivot point is considered.
/// @param {asset.GMSprite} sprite The sprite to draw.
/// @param {real} subimg The sprite frame.
/// @param {real} x The x position to draw.
/// @param {real} y The y position to draw.
/// @param {real} width The width. The nine slice will be stretched to this exact amount.
/// @param {real} height The height. The nine slice will be stretched to this exact amount.
/// @param {real} xscale Relative nineslice xscale.
/// @param {real} yscale Relative nineslice yscale.
/// @param {real} rot Sprite angle.
/// @param {real} col Blend color.
/// @param {real} alpha Sprite alpha.
function draw_nineslice_stretched_ext(_sprite, _subimg, _x, _y, _width, _height, _xscale, _yscale, _rot, _col, _alpha) {
	draw_sprite_ext(_sprite, _subimg, _x, _y, (_width / sprite_get_width(_sprite)) * _xscale, (_height / sprite_get_height(_sprite)) * _yscale, _rot, _col, _alpha);
}