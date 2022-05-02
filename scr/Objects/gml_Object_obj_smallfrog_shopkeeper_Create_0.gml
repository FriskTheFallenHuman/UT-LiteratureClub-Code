script_execute(scr_depth, 0, 0, 0, 0, 0)
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
if (global.kills > 16)
    instance_destroy()
myinteract = 0
read = 0
image_xscale = 1
image_yscale = 1
image_speed = 0.1
dooract = 0
touched = false
