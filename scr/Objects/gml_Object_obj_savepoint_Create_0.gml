myinteract = 0
image_xscale = 1
image_yscale = 1
image_speed = 0.2
if (global.flag[493] >= 12 && global.flag[7] == 0)
{
    if (room == room_castle_front)
        instance_destroy()
    if (room == room_castle_finalshoehorn)
        instance_destroy()
    if (room == room_sanscorridor)
        instance_destroy()
    if (room == room_castle_elevatorout)
        instance_destroy()
    if (room == room_castle_throneroom)
        instance_destroy()
}
if (room == room_water19)
{
    if (scr_murderlv() < 11 || global.flag[27] == 1 || global.plot > 119)
        instance_destroy()
}
