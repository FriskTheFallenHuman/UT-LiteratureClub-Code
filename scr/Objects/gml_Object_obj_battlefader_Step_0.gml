var cam = view_camera[0]
image_xscale = (camera_get_view_width(cam) * 3)
image_yscale = (camera_get_view_height(cam) * 2)
action_move_to(camera_get_view_x(cam), camera_get_view_y(cam))
image_alpha -= 0.2
if (image_alpha < 0.1)
{
    heart.depth = 0
    instance_destroy()
}
