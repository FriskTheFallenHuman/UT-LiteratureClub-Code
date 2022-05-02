if (room_persistent && NAMING == 3 && (!caster_is_playing(MENUSONG)))
    event_user(5)
if (room_persistent == true)
    room_persistent = false
if (NAMING == 3)
{
    if (MENU_NO == 1 || MENU_NO == 4 || MENU_NO == 6 || MENU_NO == 7 || MENU_NO == 8 || MENU_NO == 9)
    {
        if keyboard_check_pressed(vk_left)
        {
            if (MENUCOORD[MENU_NO] == 1)
            {
                MENUCOORD[MENU_NO] = 0
                MOVENOISE = 1
            }
        }
        if keyboard_check_pressed(vk_right)
        {
            if (MENUCOORD[MENU_NO] == 0)
            {
                MENUCOORD[MENU_NO] = 1
                MOVENOISE = 1
            }
        }
        if (control_check_pressed(0) && ONEBUFFER < 0)
        {
            ONEBUFFER = 2
            TWOBUFFER = 2
            SELNOISE = true
            if (MENUCOORD[MENU_NO] == 0)
            {
                if (MENU_NO == 1)
                {
                    if (FILE[MENUCOORD[0]] == 1)
                    {
                        global.filechoice = MENUCOORD[0]
                        scr_windowcaption(scr_gettext("windowcaption_arrival"))
                        audio_stop_all()
                        f = instance_create(0, 0, obj_persistentfader)
                        scr_load()
                    }
                    if (FILE[MENUCOORD[0]] == 0)
                    {
                        global.filechoice = MENUCOORD[0]
                        if (HASNAME == 0 || TRUERESET[0] > 0 || TRUERESET[1] > 0 || TRUERESET[1] > 0 || TRUERESET[2] > 0)
                        {
                            NS = instance_create(0, 0, obj_namingscreen)
                            with (NS)
                                naming = 1
                            NAMING = 1
                        }
                        else
                        {
                            NS = instance_create(0, 0, obj_namingscreen)
                            with (NS)
                            {
                                iniread = ossafe_ini_open("undertale.ini")
                                if ini_section_exists(("General" + string(global.filechoice)))
                                    name = ini_read_string(("General" + string(global.filechoice)), "Name", "")
                                if (name != "")
                                    hasname = 1
                                if (hasname == 1)
                                {
                                    global.charname = name
                                    charname = global.charname
                                    naming = 2
                                    alerm = 0
                                    r = 0.5
                                    q = 0
                                }
                                ossafe_ini_close()
                            }
                            NAMING = 1
                        }
                        control_clear(0)
                    }
                }
                if (MENU_NO == 4)
                {
                    if (global.TYPE == 0)
                    {
                        TEMPCOMMENT = scr_gettext("mainmenu_comment_01")
                        if (NAME[0] == NAME[1] && NAME[1] == NAME[2])
                        {
                            if (TIME[0] == TIME[1] && TIME[1] == TIME[2])
                            {
                                if (PLACE[0] == PLACE[1] && PLACE[1] == PLACE[2])
                                    TEMPCOMMENT = scr_gettext("mainmenu_comment_02")
                            }
                        }
                    }
                    event_user(6)
                    if (global.TYPE == 0)
                    {
                        if (NAME[0] == NAME[1] && NAME[1] == NAME[2])
                        {
                            if (TIME[0] == TIME[1] && TIME[1] == TIME[2])
                            {
                                if (PLACE[0] == PLACE[1] && PLACE[1] == PLACE[2] && TEMPCOMMENT != scr_gettext("mainmenu_comment_02"))
                                    TEMPCOMMENT = scr_gettext("mainmenu_copy")
                            }
                        }
                    }
                    if (global.TYPE == 1)
                        TEMPCOMMENT = scr_gettext("mainmenu_copy_real")
                    MESSAGETIMER = 90
                    SELNOISE = false
                    DEATHNOISE = 1
                    MENU_NO = 0
                }
                if (MENU_NO == 7)
                {
                    event_user(4)
                    TEMPCOMMENT = scr_gettext("mainmenu_erase")
                    if (global.TYPE == 1)
                        TEMPCOMMENT = scr_gettext("mainmenu_erase_real")
                    MESSAGETIMER = 90
                    SELNOISE = false
                    DEATHNOISE = 1
                    MENU_NO = 0
                }
                UTLC_comment = "reset"
                if (MENU_NO == 9)
                {
                    event_user(3)
                    TEMPCOMMENT = scr_gettext("mainmenu_reset")
                    if (global.TYPE == 1)
                        TEMPCOMMENT = scr_gettext("mainmenu_reset_real")
                    MESSAGETIMER = 90
                    SELNOISE = false
                    DEATHNOISE = 1
                    MENU_NO = 0
                }
                if (MENU_NO == 6 || MENU_NO == 8)
                {
                    THREAT += 1
                    if (MENU_NO == 8)
                        MENU_NO = 9
                    else
                        MENU_NO = 7
                    MENUCOORD[7] = 0
                    MENUCOORD[9] = 0
                }
            }
            if (MENUCOORD[MENU_NO] == 1)
            {
                if (MENU_NO == 4 && global.TYPE == 0)
                {
                    TEMPCOMMENT = scr_gettext("mainmenu_comment_03")
                    MESSAGETIMER = 90
                }
                if (MENU_NO == 6 || MENU_NO == 7 || MENU_NO == 8 || MENU_NO == 9)
                {
                    if (global.TYPE == 0)
                    {
                        TEMPCOMMENT = scr_gettext("mainmenu_comment_04")
                        if (THREAT >= 10)
                        {
                            TEMPCOMMENT = scr_gettext("mainmenu_comment_05")
                            THREAT = 0
                        }
                        MESSAGETIMER = 90
                    }
                }
                MENU_NO = 0
            }
        }
        if (control_check_pressed(1) && TWOBUFFER < 0)
        {
            ONEBUFFER = 1
            TWOBUFFER = 1
            BACKNOISE = 1
            if (MENU_NO == 1)
                MENU_NO = 0
            if (MENU_NO == 4)
                MENU_NO = 2
            if (MENU_NO == 6)
                MENU_NO = 5
            if (MENU_NO == 7)
                MENU_NO = 5
            if (MENU_NO == 8)
                MENU_NO = 10
            if (MENU_NO == 9)
                MENU_NO = 10
        }
    }
    if (MENU_NO == 2 || MENU_NO == 3 || MENU_NO == 5 || MENU_NO == 10)
    {
        if keyboard_check_pressed(vk_down)
        {
            if (MENUCOORD[MENU_NO] < 3)
            {
                MENUCOORD[MENU_NO] += 1
                MOVENOISE = 1
            }
        }
        if keyboard_check_pressed(vk_up)
        {
            if (MENUCOORD[MENU_NO] > 0)
            {
                MENUCOORD[MENU_NO] -= 1
                MOVENOISE = 1
            }
        }
        if (control_check_pressed(0) && ONEBUFFER < 0)
        {
            if (MENUCOORD[MENU_NO] < 3)
            {
                if (MENU_NO == 3)
                {
                    if (MENUCOORD[2] != MENUCOORD[3])
                    {
                        if (FILE[MENUCOORD[MENU_NO]] == 1)
                        {
                            TWOBUFFER = 2
                            ONEBUFFER = 2
                            SELNOISE = true
                            MENUCOORD[4] = 0
                            MENU_NO = 4
                        }
                        else
                        {
                            TEMPCOMMENT = scr_gettext("mainmenu_copy_to_slot")
                            MESSAGETIMER = 90
                            if (global.TYPE == 1)
                                TEMPCOMMENT = scr_gettext("mainmenu_copy_to_slot_real")
                            DEATHNOISE = 1
                            MENU_NO = 0
                            ONEBUFFER = 2
                            TWOBUFFER = 2
                            event_user(6)
                        }
                    }
                    else
                    {
                        TEMPCOMMENT = scr_gettext("mainmenu_copy_failed")
                        if (global.TYPE == 1)
                            TEMPCOMMENT = scr_gettext("mainmenu_copy_failed_real")
                        MESSAGETIMER = 90
                        TWOBUFFER = 2
                        ONEBUFFER = 2
                        BACKNOISE = 1
                    }
                }
                if (MENU_NO == 2)
                {
                    if (FILE[MENUCOORD[MENU_NO]] == 1)
                    {
                        TWOBUFFER = 2
                        ONEBUFFER = 2
                        SELNOISE = true
                        MENUCOORD[3] = 0
                        MENU_NO = 3
                    }
                    else
                    {
                        TEMPCOMMENT = scr_gettext("mainmenu_copy_denied_01")
                        if (FILE[0] == 0 && FILE[1] == 0 && FILE[2] == 0)
                            TEMPCOMMENT = scr_gettext("mainmenu_copy_denied_02")
                        if (global.TYPE == 1)
                            TEMPCOMMENT = scr_gettext("mainmenu_copy_denied_real")
                        MESSAGETIMER = 90
                        BACKNOISE = 1
                        TWOBUFFER = 2
                        ONEBUFFER = 2
                    }
                }
                if (MENU_NO == 5 || MENU_NO == 10)
                {
                    if (FILE[MENUCOORD[MENU_NO]] == 1)
                    {
                        TWOBUFFER = 2
                        ONEBUFFER = 2
                        SELNOISE = true
                        MENUCOORD[6] = 0
                        MENUCOORD[8] = 0
                        if (MENU_NO == 10)
                            MENU_NO = 8
                        else
                            MENU_NO = 6
                    }
                    else
                    {
                        TEMPCOMMENT = scr_gettext("mainmenu_erase_nothing_01")
                        if (FILE[0] == 0 && FILE[1] == 0 && FILE[2] == 0)
                            TEMPCOMMENT = (MENU_NO == 10 ? scr_gettext("mainmenu_reset_nothing") : scr_gettext("mainmenu_erase_nothing_02"))
                        if (global.TYPE == 1)
                            TEMPCOMMENT = (MENU_NO == 10 ? scr_gettext("mainmenu_reset_nothing_real") : scr_gettext("mainmenu_erase_nothing_real"))
                        MESSAGETIMER = 90
                        TWOBUFFER = 2
                        ONEBUFFER = 2
                        BACKNOISE = 1
                    }
                }
            }
            if (MENUCOORD[MENU_NO] == 3)
            {
                TWOBUFFER = 2
                ONEBUFFER = 2
                SELNOISE = true
                MENU_NO = 0
            }
        }
        if (control_check_pressed(1) && TWOBUFFER < 0)
        {
            TWOBUFFER = 2
            ONEBUFFER = 2
            BACKNOISE = 1
            if (MENU_NO == 2 || MENU_NO == 5)
                MENU_NO = 0
            if (MENU_NO == 3)
                MENU_NO = 2
        }
    }
    if (MENU_NO == 0)
    {
        if keyboard_check_pressed(vk_down)
        {
            if (MENUCOORD[0] < 3)
            {
                MENUCOORD[0] += 1
                MOVENOISE = 1
            }
            else if (MENUCOORD[0] >= 3 && MENUCOORD[0] < 6)
            {
                MENUCOORD[0] = 6
                MOVENOISE = 1
            }
            else if (MENUCOORD[0] == 6)
            {
                MENUCOORD[0] = 0
                MOVENOISE = 1
            }
        }
        if keyboard_check_pressed(vk_up)
        {
            if (MENUCOORD[0] == 6)
                MENUCOORD[0] = 4
            else if (MENUCOORD[0] > 2)
                MENUCOORD[0] = 2
            else
                MENUCOORD[0] -= 1
            if (MENUCOORD[0] < 0)
                MENUCOORD[0] = 6
            MOVENOISE = 1
        }
        if keyboard_check_pressed(vk_right)
        {
            MENUCOORD[0] += 1
            if (MENUCOORD[0] > 6)
                MENUCOORD[0] = 0
            else
                MOVENOISE = 1
        }
        if keyboard_check_pressed(vk_left)
        {
            MENUCOORD[0] -= 1
            if (MENUCOORD[0] < 0)
                MENUCOORD[0] = 6
            MOVENOISE = 1
        }
        if (control_check_pressed(0) && ONEBUFFER < 0)
        {
            MESSAGETIMER = -1
            if (MENUCOORD[0] <= 2)
            {
                MENUCOORD[1] = 0
                ONEBUFFER = 1
                TWOBUFFER = 1
                MENU_NO = 1
                SELNOISE = true
            }
            if (MENUCOORD[0] == 3)
            {
                MENUCOORD[2] = 0
                ONEBUFFER = 1
                TWOBUFFER = 1
                MENU_NO = 2
                SELNOISE = true
            }
            if (MENUCOORD[0] == 4)
            {
                MENUCOORD[5] = 0
                ONEBUFFER = 1
                TWOBUFFER = 1
                MENU_NO = 5
                SELNOISE = true
            }
            if (MENUCOORD[0] == 5)
            {
                MENUCOORD[10] = 0
                ONEBUFFER = 1
                TWOBUFFER = 1
                MENU_NO = 10
                SELNOISE = true
            }
            if (MENUCOORD[0] == 6)
            {
                caster_free(-3)
                room_persistent = true
                room_goto(room_settings)
                ONEBUFFER = 2
                TWOBUFFER = 2
                SELNOISE = true
            }
        }
    }
    if (MOVENOISE == 1)
    {
        snd_play(snd_menumove)
        MOVENOISE = 0
    }
    if (SELNOISE == true)
    {
        snd_play(snd_select)
        SELNOISE = false
    }
    if (BACKNOISE == 1)
    {
        snd_play(snd_swing)
        BACKNOISE = 0
    }
    if (DEATHNOISE == 1)
    {
        snd_play(AUDIO_APPEARANCE)
        DEATHNOISE = 0
    }
}
if (NAMING == 1)
{
    if (!instance_exists(NS))
        NAMING = 3
}
ONEBUFFER -= 1
TWOBUFFER -= 1
