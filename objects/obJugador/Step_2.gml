/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
/*halfViewWith = camera_get_view_width(view_camera[0]) / 2;
halfViewHeight = camera_get_view_height(view_camera[0]) / 2;

camera_set_view_pos(view_camera[0], x - halfViewWith, y - halfViewHeight);*/

var target_x = x - camW()/2
var target_y = y - 150

var cam_x = lerp(cam_x(), target_x, .2)
var cam_y = lerp(cam_y(), target_y, .2)

cam_x = clamp(cam_x, 0, room_width-camW())