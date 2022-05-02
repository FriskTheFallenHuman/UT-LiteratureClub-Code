if (myinteract == 1)
{
    if global.demo
    {
        global.interact = 0
        myinteract = 0
        instance_create(x, y, obj_badexplosion)
        with (obj_travelershop)
            instance_destroy()
        instance_destroy()
        return;
    }
    global.interact = 1
    alarm[0] = 1
    myinteract = 2
}
if (myinteract == 3)
{
    if (instance_exists(mydialoguer) == 0 && global.interact != 3)
    {
        global.interact = 0
        myinteract = 0
        if (global.flag[29] == 1)
            dooract = 1
    }
}
