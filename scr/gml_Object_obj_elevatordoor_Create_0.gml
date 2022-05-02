if (room == room_castle_elevatorout && x < (room_width / 2) && global.flag[493] >= 12 && global.flag[7] == 0)
{
    instance_create(x, (y + 30), obj_solidsmall)
    instance_create((x + 20), (y + 30), obj_solidsmall)
    with (obj_door_s_musfade)
        instance_destroy()
    myvine = scr_marker(x, y, spr_elevatordoor_vines)
    myvine.depth = depth
    instance_create(90, 120, obj_readable_room1)
    if (global.entrance == 24 && instance_exists(obj_mainchara))
    {
        obj_mainchara.x = 90
        obj_mainchara.y = 130
    }
    instance_destroy()
    return;
}
s1 = instance_create(x, (y + 30), obj_solidsmall)
s2 = instance_create((x + 20), (y + 30), obj_solidsmall)
myinteract = 0
con = 0
side = 0
if (global.entrance == 19)
    alarm[0] = 1
if (room == room_fire_core1)
{
    depth = 790000
    global.flag[200] = 205
    con = 40
    ok = 0
    if (global.flag[414] == 1)
        ok = 1
    if (global.flag[367] > 0)
        ok = 1
    if (ok == 1)
        con = 43
    if (global.flag[418] == 1 || global.flag[419] == 1 || global.flag[420] == 1)
        con = 0
}
if (room == room_fire_core_premett)
    global.flag[200] = 205
if (room == room_castle_precastle)
{
    con = 50
    ok = 0
    if (global.flag[450] >= 17)
        ok = 1
    if (ok == 1)
        con = 0
}
if (room == room_fire_hotellobby)
{
    con = 50
    ok = 0
}
if (room == room_fire_elevator_l2)
{
    if (scr_murderlv() >= 12)
    {
        ff = instance_create(200, 140, obj_kitchenforcefield)
        ff.image_yscale = 3
    }
}
if (room == room_fire_elevator_r3)
{
    if (scr_murderlv() >= 12)
    {
        ff = instance_create(80, 100, obj_kitchenforcefield)
        with (ff)
            image_yscale = 3
    }
}
if (room == room_fire_elevator_r2)
{
    if (scr_murderlv() >= 12)
    {
        ff = instance_create(80, 100, obj_kitchenforcefield)
        with (ff)
            image_yscale = 3
    }
}
if (room == room_fire_core_final)
{
    global.border = 0
    SCR_BORDERSETUP()
}
buffer = 0
