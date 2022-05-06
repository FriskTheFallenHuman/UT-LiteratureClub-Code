if visible
{
    if (control_check_pressed(0) && (!skip))
    {
        skip = true
        with (obj_introfader)
            instance_destroy()
        with (storywriter)
            instance_destroy()
        fader = instance_create(0, 0, obj_unfader)
        fader.tspeed = 0.05
        fader.depth = (obj_introframe.depth - 1)
        alarm[1] = 30
    }
}
