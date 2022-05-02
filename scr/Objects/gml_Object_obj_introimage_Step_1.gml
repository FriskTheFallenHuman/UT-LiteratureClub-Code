if visible
{
    if ((!instance_exists(storywriter)) && (!skip))
    {
        skip = true
        fader = instance_create(0, 0, obj_unfader)
        fader.tspeed = 0.05
        fader.depth = (obj_introframe.depth - 1)
        alarm[1] = 60
    }
    if skip
    {
        vol -= 0.05
        caster_set_volume(intromusic, vol)
    }
    if (image_index == 10 && (!instance_exists(obj_introlast)))
        instance_create(x, y, obj_introlast)
}
