myinteract = 3
global.msc = 0
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
global.msg[0] = scr_gettext("obj_grillbynpc_mandog_75")
global.msg[1] = scr_gettext("obj_grillbynpc_mandog_76")
if (global.flag[67] == 1)
    global.msg[0] = scr_gettext("obj_grillbynpc_mandog_80")
if (global.plot >= 122)
{
    global.msg[0] = scr_gettext("obj_grillbynpc_mandog_85")
    global.msg[1] = scr_gettext("obj_grillbynpc_mandog_86")
}
if (sansmode == 1)
{
    global.msg[0] = scr_gettext("obj_grillbynpc_mandog_91")
    global.msg[1] = scr_gettext("obj_grillbynpc_mandog_92")
}
if (global.flag[54] == 1)
    global.msg[0] = scr_gettext("obj_grillbynpc_mandog_96")
if (global.flag[52] == 1 && global.flag[54] == 1)
    global.msg[0] = scr_gettext("obj_grillbynpc_mandog_98")
if (global.flag[7] == 1)
{
    global.msg[0] = scr_gettext("obj_grillbynpc_mandog_103")
    global.msg[1] = scr_gettext("obj_grillbynpc_mandog_104")
    global.msg[2] = scr_gettext("obj_grillbynpc_mandog_105")
    global.msg[3] = scr_gettext("obj_grillbynpc_mandog_106")
}
mydialoguer = instance_create(0, 0, obj_dialoguer)
talkedto += 1
