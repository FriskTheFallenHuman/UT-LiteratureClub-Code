obj_char = obj_mainchara
obj_char_actor = 1365
position_hack = 0
if global.charswap
{
    position_hack = 1
    switch global.charswappedname
    {
        case "Monika":
            obj_char = obj_monika
            obj_char_actor = 1722
            break
    }

}
dsprite = spr_sans_d
usprite = spr_sans_u
lsprite = spr_sans_l
rsprite = spr_sans_r
dtsprite = spr_sans_d
utsprite = spr_sans_u
ltsprite = spr_sans_l
rtsprite = spr_sans_r
scr_depth()
lafftrax = 0
conversation = 0
hspeed = 0.75
global.interact = 1
image_speed = 0.1
image_blend = c_black
hh = instance_create(0, 0, obj_musfadeout)
hh.fadespeed = 0.5
uuu = instance_create(0, 0, obj_walknoise)
y = (position_hack ? ((obj_char.y + 10) - 1) : (obj_char.y - 1))
shakehand = 0
murder = 0
if (scr_murderlv() >= 2)
    murder = 1
