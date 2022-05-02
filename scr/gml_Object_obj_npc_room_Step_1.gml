script_execute(scr_depth, 0, 0, 0, 0, 0)
scr_npc_anim()
if (room == room_water3A && instance_exists(OBJ_WRITER) == 0)
{
    if (global.flag[105] == 1)
    {
        global.interact = 0
        instance_destroy()
    }
}
if (room == room_water_shoe && instance_exists(OBJ_WRITER) == 0)
{
    if (global.flag[106] == 1)
    {
        global.interact = 0
        instance_destroy()
    }
}
if (room == room_fire6A && instance_exists(OBJ_WRITER) == 0)
{
    if (global.flag[110] == 1)
    {
        global.interact = 0
        instance_destroy()
    }
}
if (room == room_fire_apron && instance_exists(OBJ_WRITER) == 0)
{
    if (global.flag[111] == 1)
    {
        global.interact = 0
        instance_destroy()
    }
}
if (room == room_asrielroom_final)
{
    if (x < (-10 + (room_width / 2)))
    {
        if (global.flag[114] == 1)
            image_index = 1
        else
            image_index = 0
    }
    if (x >= (-10 + (room_width / 2)))
    {
        if (global.flag[115] == 1)
            image_index = 1
        else
            image_index = 0
    }
}
if (sprite_index == spr_fukufire)
    image_speed = 0.2
if (sprite_index == spr_hotdog_harpy)
    image_speed = 0.2
