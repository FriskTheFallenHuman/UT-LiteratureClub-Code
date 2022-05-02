script_execute(scr_depth, 0, 0, 0, 0, 0)
if (talkedto == 1 && global.choice == 0 && instance_exists(obj_dialoguer) == 0)
{
    global.battlegroup = 20
    global.flag[200] = 0
    global.mercy = 1
    instance_create(0, 0, obj_battler)
    talkedto = 0
}
if (global.plot == 10.3)
{
    alarm[4] = 2
    global.plot = 10.35
}
if (global.plot == 10.4 && instance_exists(obj_dialoguer) == 0)
{
    image_alpha -= 0.05
    if (image_alpha < 0.1)
    {
        with (obj_char)
            uncan = 0
        global.plot = 11
        global.interact = 0
        instance_destroy()
    }
}
if (global.plot == 11)
{
    with (obj_char)
        uncan = 0
    global.border = 0
    global.mercy = 0
    instance_destroy()
}
