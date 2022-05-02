obj_char = 1584
if global.charswap
{
    switch global.charswappedname
    {
        case "Monika":
            obj_char = 1720
            break
    }

}
if (global.plot > 10.5)
    instance_destroy()
myinteract = 0
image_xscale = 1
image_yscale = 1
talkedto = 0
if (murdererlv1() == 1 && global.plot < 10.4)
    global.plot = 10.4
