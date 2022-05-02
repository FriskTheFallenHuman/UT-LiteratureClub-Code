image_xscale = 640
image_yscale = 320
heart = obj_heart
if instance_exists(obj_fakeheart)
    heart = obj_fakeheart
heart.depth = -1001
var cam = view_camera[0]
image_xscale = (camera_get_view_width(cam) * 3)
image_yscale = (camera_get_view_height(cam) * 2)
action_move_to(camera_get_view_x(cam), camera_get_view_y(cam))
