obj_char = 1584
position_hack = 0
if global.charswap
{
    position_hack = 1
    switch global.charswappedname
    {
        case "Monika":
            obj_char = 1720
            break
    }

}
if (global.plot >= 35)
    instance_destroy()
if (global.flag[275] >= 2)
    instance_destroy()
conversation = 0
image_yscale = 999
if (global.flag[47] > 2)
    instance_destroy()
