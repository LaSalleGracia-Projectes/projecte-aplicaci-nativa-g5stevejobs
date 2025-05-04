var margin = 16;

draw_set_font(MenuTitleFont);
draw_set_color(c_white);
draw_set_halign(fa_right);
draw_set_valign(fa_bottom);

var x_pos = display_get_gui_width() - margin;
var y_pos = display_get_gui_height() - margin;

draw_text(x_pos, y_pos, localize.basic.any);