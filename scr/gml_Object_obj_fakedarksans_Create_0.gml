obj_char = obj_mainchara
position_hack = 0
if global.charswap
{
    position_hack = 1
    switch global.charswappedname
    {
        case "Monika":
            obj_char = obj_monika
            break
    }

}
if (global.plot >= 35)
    instance_destroy()
broken = 0
image_speed = 0.2
image_blend = c_black
hspeed = 1
global.flag[47] = 3
iii = instance_create(0, 0, obj_walknoise)
gert = obj_char.x
