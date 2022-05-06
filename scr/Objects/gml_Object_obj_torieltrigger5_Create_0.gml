global.msc = 0
if (global.plot > 16)
{
    instance_destroy()
    return;
}
event_inherited()
ev = id
actor_count = 0
image_xscale = 50
conversation = 0
volume = 1
fademusicout = 0
tobycode = 0
customconv = 0
tor_actor = -4
pantor = 0
if (scr_debug())
    instance_create(-114, -514, obj_area1_fallevent)
