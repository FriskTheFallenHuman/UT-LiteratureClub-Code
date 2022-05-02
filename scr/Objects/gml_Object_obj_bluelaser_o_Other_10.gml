check = 1
if (blue == 1)
{
    if (obj_mainchara.x == obj_mainchara.xprevious && obj_mainchara.y == obj_mainchara.yprevious)
        check = 0
}
if (blue == 2)
{
    if (obj_mainchara.x != obj_mainchara.xprevious || obj_mainchara.y != obj_mainchara.yprevious)
        check = 0
}
if (check == 1 && global.interact == 0)
{
    global.border = 20
    global.flag[15] = 1
    global.flag[16] = 1
    global.flag[370] = 2
    if (room == room_fire_core4 || room == room_fire_core5)
        global.flag[370] = 3
    SCR_BORDERSETUP()
    instance_create(0, 0, obj_battlerquick)
    obj_bluelaser_o.active = false
    obj_bluelaser_o.alarm[0] = 60
}
