myinteract = 3
global.msc = 0
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
if (global.flag[29] == 0)
{
    global.msg[0] = scr_gettext("obj_smallfrog_shopkeeper_0")
    global.msg[1] = scr_gettext("obj_smallfrog_shopkeeper_1")
    global.msg[2] = scr_gettext("obj_smallfrog_shopkeeper_2")
    global.msg[3] = scr_gettext("obj_smallfrog_shopkeeper_3")
    global.msg[4] = scr_gettext("obj_smallfrog_shopkeeper_4")
    global.msg[5] = scr_gettext("obj_smallfrog_shopkeeper_5")
    global.msg[6] = scr_gettext("obj_smallfrog_shopkeeper_6")
    global.msg[7] = scr_gettext("obj_smallfrog_shopkeeper_7")
    global.msg[8] = scr_gettext("obj_smallfrog_shopkeeper_8")
}
if (global.flag[29] == 1)
    global.msg[0] = scr_gettext("obj_smallfrog_shopkeeper_9")
mydialoguer = instance_create(0, 0, obj_dialoguer)
