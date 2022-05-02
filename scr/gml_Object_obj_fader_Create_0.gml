var cam = view_camera[view_current]
image_xscale = (camera_get_view_width(cam) * 3)
image_yscale = (camera_get_view_height(cam) * 2)
image_alpha = 1
tspeed = -0.08
over = 1
action_move_to(camera_get_view_x(cam), camera_get_view_y(cam))
