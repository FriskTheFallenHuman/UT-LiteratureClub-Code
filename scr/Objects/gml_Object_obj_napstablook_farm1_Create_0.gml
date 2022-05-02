dsprite = spr_napstablook_d_headphone
usprite = spr_napstablook_u_headphone
lsprite = spr_napstablook_l_headphone
rsprite = spr_napstablook_r_headphone
dtsprite = spr_napstablook_d_headphone
utsprite = spr_napstablook_u_headphone
ltsprite = spr_napstablook_l_headphone
rtsprite = spr_napstablook_r_headphone
myinteract = 0
facing = 0
direction = 270
talkedto = 0
image_speed = 0
fun = false
if (global.flag[7] == 1)
    instance_destroy()
if (scr_murderlv() >= 10)
    instance_destroy()
