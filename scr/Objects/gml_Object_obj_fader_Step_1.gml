var cam = view_camera[view_current]
image_xscale = (camera_get_view_width(cam) * 3)
image_yscale = (camera_get_view_height(cam) * 2)
action_move_to(camera_get_view_x(cam), camera_get_view_y(cam))
image_alpha += tspeed
if (image_alpha < 0.02)
    instance_destroy()
