if (!demoend)
{
    con += 1
    alarm[4] = 150
    if (con < 3)
        caster_play(ii, 1, 1)
}
else
{
    if (global.kills > 0)
    {
        caster_free(ii)
        if (global.flag[202] > 18 && global.flag[45] == 4)
        {
            caster_free(ii)
            iii = caster_load("music/in_my_way.ogg")
            caster_loop(iii, 1, 0.2)
            jok = 1
        }
        else
        {
            caster_free(ii)
            iii = caster_load("music/piano.ogg")
            caster_loop(iii, 1, 0.8)
        }
    }
    else
    {
        hidde_logo = 1
        var g = instance_create(140, 150, obj_mainchara)
        g.visible = false
        global.interact = 1
        caster_free(ii)
        iii = caster_load("music/papyrus.ogg")
        caster_loop(iii, 0.75, 1)
        global.typer = 18
        global.facechoice = 4
        global.msc = 0
        global.msg[0] = scr_gettext("room_undertale_demo_0")
        global.msg[1] = scr_gettext("room_undertale_demo_1")
        global.msg[2] = scr_gettext("room_undertale_demo_2")
        global.msg[3] = scr_gettext("room_undertale_demo_3")
        global.msg[4] = scr_gettext("room_undertale_demo_4")
        global.msg[5] = scr_gettext("room_undertale_demo_5")
        global.msg[6] = scr_gettext("room_undertale_demo_6")
        global.msg[7] = scr_gettext("room_undertale_demo_7")
        global.msg[8] = scr_gettext("room_undertale_demo_8")
        global.msg[9] = scr_gettext("room_undertale_demo_9")
        global.msg[10] = scr_gettext("room_undertale_demo_10")
        global.msg[11] = scr_gettext("room_undertale_demo_11")
        global.msg[12] = scr_gettext("room_undertale_demo_12")
        global.msg[13] = scr_gettext("room_undertale_demo_13")
        global.msg[14] = scr_gettext("room_undertale_demo_14")
        global.msg[15] = scr_gettext("room_undertale_demo_15")
        global.msg[16] = scr_gettext("room_undertale_demo_16")
        global.msg[17] = scr_gettext("room_undertale_demo_17")
        global.msg[18] = scr_gettext("room_undertale_demo_18")
        global.msg[19] = scr_gettext("room_undertale_demo_19")
        global.msg[20] = scr_gettext("room_undertale_demo_20")
        global.msg[21] = scr_gettext("room_undertale_demo_21")
        global.faceemotion = 0
        instance_create(0, 0, obj_dialoguer)
    }
    ok = 1
}
