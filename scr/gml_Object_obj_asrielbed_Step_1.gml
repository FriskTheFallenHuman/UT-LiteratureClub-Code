if (jump == 1)
{
    if (obj_mainchara.path_position == 1)
    {
        instance_create(0, 0, obj_unfader)
        alarm[2] = 60
        jump = 2
    }
}
if (jump == 3)
{
    if (obj_mainchara.path_position == 1)
    {
        global.interact = 0
        myinteract = 0
        jump = 0
        __background_set(0, 2, c_black)
        obj_solidsmall.solid = 1
        global.phasing = 0
    }
}
