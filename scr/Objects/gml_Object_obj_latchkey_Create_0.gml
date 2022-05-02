myinteract = 0
image_xscale = 1
image_yscale = 1
if global.demo
    instance_destroy()
if (room == room_kitchen_final)
{
    if (global.flag[452] == 1)
        instance_destroy()
}
if (room == room_asghouse3)
{
    if (global.flag[453] == 1)
        instance_destroy()
}
if (room == room_torielroom)
{
    if (global.flag[29] == 1)
        instance_destroy()
}
con = 0
