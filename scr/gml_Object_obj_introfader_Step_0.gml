if (phase == 0)
{
    if (alpha > 0)
        alpha -= tspeed
    if (alpha <= 0)
    {
        alpha = 0
        phase = 1
        obj_introimage.image_index += 1
        alarm[3] = 5
    }
}
else if (phase == 2)
{
    alpha += (tspeed / 2)
    if (alpha >= 1)
    {
        alpha = 1
        instance_destroy()
    }
}
obj_introimage.image_alpha = alpha
if instance_exists(obj_introlast)
    obj_introlast.image_alpha = alpha
if start
    obj_introframe.image_alpha = alpha
