script_execute(scr_depth, 0, 0, 0, 0, 0)
myinteract = 0
image_xscale = 1
image_yscale = 1
if (global.flag[60] > 0 && room == room_tundra8)
    sprite_index = spr_icecreamguy_happy
if (global.flag[79] > 0 && room == room_water_nicecream)
    sprite_index = spr_icecreamguy_happy
if (global.plot >= 101 && room == room_tundra8)
    instance_destroy()
if (global.plot >= 121 && room == room_water_nicecream)
    instance_destroy()
if (room == room_fire_hotelfront_1)
{
    if (global.flag[402] == 0)
        sprite_index = spr_icecreamguy_happy
}
conversation = 0
j = 0
mouth = 0
murder = 0
if (scr_murderlv() >= 3)
    murder = 1
if (global.flag[27] == 1)
    murder = 0
if (global.flag[203] >= 16)
    murder = 1
if (murder == 1)
    instance_destroy()
