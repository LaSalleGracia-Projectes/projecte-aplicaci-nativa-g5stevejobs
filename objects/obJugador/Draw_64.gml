var hp_bar_width = 150;
var hp_bar_height = 15;
var hp_border = 2;

var gui_width = display_get_gui_width();
var gui_height = display_get_gui_height();

var hp_x = (gui_width - hp_bar_width) / 2 - 1;
var hp_y = gui_height - hp_bar_height - 120;  

var bg_alpha = 0.2;
var bar_alpha = 0.6;

var current_alpha = draw_get_alpha();

draw_set_alpha(bar_alpha);
draw_set_color(c_black);
draw_rectangle(hp_x - hp_border, hp_y - hp_border, 
               hp_x + hp_bar_width + hp_border, hp_y + hp_bar_height + hp_border, 
               false);

draw_set_alpha(bg_alpha);
draw_set_color(c_gray);
draw_rectangle(hp_x, hp_y, hp_x + hp_bar_width, hp_y + hp_bar_height, false);

draw_set_alpha(bar_alpha);
var hp_current_width = (vidaTotal / vida) * hp_bar_width;
draw_set_color(c_green);
draw_rectangle(hp_x, hp_y, hp_x + hp_current_width, hp_y + hp_bar_height, false);

draw_set_alpha(current_alpha);