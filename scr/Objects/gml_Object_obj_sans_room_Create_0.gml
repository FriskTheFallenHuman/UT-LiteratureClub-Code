dsprite = spr_sans_d
usprite = spr_sans_u
lsprite = spr_sans_l
rsprite = spr_sans_r
dtsprite = spr_sans_d
utsprite = spr_sans_u
ltsprite = spr_sans_l
rtsprite = spr_sans_r
myinteract = 0
facing = 0
direction = 270
talkedto = 0
image_speed = 0
if (room == room_tundra6 && global.plot >= 43)
    instance_destroy()
if (room == room_tundra8 && global.plot >= 46)
    instance_destroy()
if (room == room_tundra_iceexit_new && global.plot > 64)
    instance_destroy()
gone = 0
if (global.flag[413] > 0)
    gone = 1
if (global.flag[67] == 1)
    gone = 1
if (global.plot > 200)
    instance_destroy()
murder = 0
if (scr_murderlv() >= 2 && global.flag[27] == 0)
    murder = 1
if (global.flag[203] >= 16)
    murder = 1
if (room == room_tundra6 && murder == 1)
    gone = 1
if (room == room_tundra8 && murder == 1)
    gone = 1
if (gone == 1)
    instance_destroy()
s_click = 0
