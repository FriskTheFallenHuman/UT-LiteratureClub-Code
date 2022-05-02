if (global.plot > 9.3)
    instance_destroy()
else if (global.interact == 1 && instance_exists(obj_dialoguer) == 0)
{
    global.plot = 9.4
    global.interact = 0
    instance_destroy()
}
