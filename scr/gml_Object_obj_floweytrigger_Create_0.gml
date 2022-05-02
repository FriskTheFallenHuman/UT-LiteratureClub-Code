image_xscale = 50
conversation = 0
if (global.plot > 0.1)
    instance_destroy()
faketor = 0
alter = 0
ossafe_ini_open("undertale.ini")
a = ini_read_real(("Flowey" + string(global.filechoice)), "Alter", 0)
b = ini_read_real(("Flowey" + string(global.filechoice)), "K", 0)
c = ini_read_real(("Flowey" + string(global.filechoice)), "SPECIALK", 0)
ossafe_ini_close()
if (a > 0 || b > 0 || c > 0)
    alter = 1
if (alter == 1)
{
    with (obj_floweytalker1)
        visible = false
}
