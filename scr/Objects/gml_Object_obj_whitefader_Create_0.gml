sprite_index = spr_whitepixel
image_alpha = 0
tspeed = 0.006
over = 0
var cam = view_camera[view_current]
image_xscale = (camera_get_view_width(cam) * 3)
image_yscale = (camera_get_view_height(cam) * 2)
action_move_to(camera_get_view_x(cam), camera_get_view_y(cam))
