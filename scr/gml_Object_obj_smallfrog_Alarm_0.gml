myinteract = 3
global.msc = 0
global.msg[0] = scr_gettext("obj_smallfrog_61")
global.msg[1] = scr_gettext("obj_smallfrog_62")
global.msg[2] = scr_gettext("obj_smallfrog_63")
global.msg[3] = scr_gettext("obj_smallfrog_64")
global.msg[4] = scr_gettext("obj_smallfrog_65")
global.msg[5] = scr_gettext("obj_smallfrog_66")
if (global.flag[6] == 1)
{
    global.msg[0] = scr_gettext("obj_smallfrog_70")
    global.msg[1] = scr_gettext("obj_smallfrog_71")
    global.msg[2] = scr_gettext("obj_smallfrog_72")
    global.msg[3] = scr_gettext("obj_smallfrog_73")
    global.msg[4] = scr_gettext("obj_smallfrog_74")
}
if (global.flag[7] == 1)
{
    global.msg[0] = scr_gettext("obj_smallfrog_79")
    global.msg[1] = scr_gettext("obj_smallfrog_80")
    global.msg[2] = scr_gettext("obj_smallfrog_81")
    global.msg[3] = scr_gettext("obj_smallfrog_82")
}
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
if (room == room_ruins17)
{
    global.msg[0] = scr_gettext("obj_smallfrog_90")
    global.msg[1] = scr_gettext("obj_smallfrog_91")
    global.msg[2] = scr_gettext("obj_smallfrog_92")
    global.msg[3] = scr_gettext("obj_smallfrog_93")
    global.msg[4] = scr_gettext("obj_smallfrog_94")
    if (global.flag[7] == 1)
    {
        global.msg[0] = scr_gettext("obj_smallfrog_97")
        global.msg[1] = scr_gettext("obj_smallfrog_98")
        global.msg[2] = scr_gettext("obj_smallfrog_99")
        global.msg[3] = scr_gettext("obj_smallfrog_100")
    }
    if (global.flag[6] == 1)
    {
        global.msg[0] = scr_gettext("obj_smallfrog_105")
        global.msg[1] = scr_gettext("obj_smallfrog_106")
        global.msg[2] = scr_gettext("obj_smallfrog_107")
        global.msg[3] = scr_gettext("obj_smallfrog_108")
        global.msg[4] = scr_gettext("obj_smallfrog_109")
    }
}
if (room == room_ruins13 && x > 300 && x < 400)
{
    global.msc = 0
    if window_get_fullscreen()
    {
        global.msg[0] = scr_gettext("obj_smallfrog_117")
        global.msg[1] = scr_gettext("obj_smallfrog_118")
        global.msg[2] = scr_gettext("obj_smallfrog_119")
        global.msg[3] = scr_gettext("obj_smallfrog_120")
    }
    else
    {
        global.msg[0] = scr_gettext("obj_smallfrog_117_console")
        global.msg[1] = scr_gettext("obj_smallfrog_118_console")
        global.msg[2] = scr_gettext("obj_smallfrog_119_console")
        global.msg[3] = scr_gettext("obj_smallfrog_120_console")
    }
    if (global.flag[7] == 1)
        global.msg[0] = scr_gettext("obj_smallfrog_124")
}
if (room == room_ruins13 && x > 400)
{
    if (global.flag[22] == 0)
        global.msc = 748
    if (global.flag[22] == 1)
        global.msc = 751
    if (global.flag[22] == 2)
        global.msc = 753
    if (global.flag[7] == 1)
    {
        global.msc = 0
        if (global.flag[22] == 0)
        {
            global.msg[0] = scr_gettext("obj_smallfrog_140")
            global.msg[1] = scr_gettext("obj_smallfrog_141")
        }
        if (global.flag[22] == 1)
        {
            global.msg[0] = scr_gettext("obj_smallfrog_145")
            global.msg[1] = scr_gettext("obj_smallfrog_146")
        }
        if (global.flag[22] == 2)
        {
            global.msg[0] = scr_gettext("obj_smallfrog_150")
            global.msg[1] = scr_gettext("obj_smallfrog_151")
        }
    }
}
if (room == room_ruins16)
{
    global.msc = 0
    global.msg[0] = scr_gettext("obj_smallfrog_symetric_01")
    global.msg[1] = scr_gettext("obj_smallfrog_symetric_02")
    global.msg[2] = scr_gettext("obj_smallfrog_symetric_03")
    global.msg[3] = scr_gettext("obj_smallfrog_symetric_04")
}
if (instance_exists(OBJ_WRITER) == 0)
{
    global.interact = 1
    mydialoguer = instance_create(0, 0, obj_dialoguer)
}
