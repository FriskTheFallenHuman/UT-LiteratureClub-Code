draw_set_color(c_black)
var cam = view_camera[view_current]
draw_rectangle(camera_get_view_x(cam), camera_get_view_y(cam), (camera_get_view_x(cam) + camera_get_view_width(cam)), (camera_get_view_y(cam) + camera_get_view_height(cam)), false)
draw_set_color(c_white)
