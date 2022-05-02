if (image_blend == make_color_rgb(0, 0, 0))
    instance_destroy()
if (delay > 0)
    delay -= 1
else
{
    image_speed = 1
    gravity_direction = 90
    gravity = (random(0.5) + 0.2)
    hspeed = (random(4) - 2)
    delay = 9999
}
