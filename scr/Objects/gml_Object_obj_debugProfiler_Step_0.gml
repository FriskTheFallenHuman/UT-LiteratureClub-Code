if (keyboard_check_pressed(vk_tab))
{
    global.debuginfos = (!global.debuginfos)
    scr_debug_print(("global.debuginfos = " + string(global.debuginfos)))
}

if (keyboard_check_pressed(vk_home) && global.interact == 0 && (!i_ex(obj_battler)))
{
    snd_play(snd_bell)
    
    if (!i_ex(obj_battlegroup_input))
    {
        global.interact = 1
        keyboard_clear(vk_home)
        instance_create(0, 0, obj_battlegroup_input)
    }
    else
    {
        safe_delete(obj_battlegroup_input)
    }
}

if (keyboard_check(vk_escape) && keyboard_check_pressed(ord("R")))
{
    if (i_ex(obj_time) && !i_ex(obj_essaystuff))
    {
        with (obj_time)
        {
            if (canquit == 1)
            {
                debug_r += 1
                if (debug_r > 5)
                    game_restart()
                spec_rtimer = 1
            }
        }
    }
}

if (keyboard_check_pressed(ord("Q")))
{
    if (i_ex(obj_mainchara))
    {
        snd_play(snd_spooky)

        with(obj_mainchara)
        {
            scr_makecaterpillar(x, ((y - 16) + 2), 1, 0)
            scr_makecaterpillar(x, ((y - 12) - 2), 2, 2)
            scr_makecaterpillar((x + 4), ((y - 20) + 2), 3, 3)
        }
    }
}

if (keyboard_check_pressed(ord("Q")) && global.inbattle == true)
{
    if (i_ex(obj_battlecontroller))
    {
        with(obj_battlecontroller)
            global.turntimer -= 10

        scr_debug_print(("global.turntimer = " + string(global.turntimer)))
    }
}

if (keyboard_check_pressed(ord("W")) && global.interact == 0)
{
    if (i_ex(obj_mainchara))
    {
        snd_play(snd_dimbox)

        with(obj_mainchara)
        {
            global.interact = 5
            global.menuno = 7
        }
    }
}

if (keyboard_check_pressed(ord("W")) && global.inbattle == true)
{
    if (i_ex(obj_battlecontroller))
    {
        with(obj_monsterparent)
        {
            obj_monsterparent.mercymod = 999999
            global.mercy = 0
        }

        scr_debug_print(("obj_monsterparent.mercymod = " + string(obj_monsterparent.mercymod)))
    }
}

if (keyboard_check_pressed(ord("E")) && global.interact == 0)
{
    if (i_ex(obj_mainchara))
    {
        snd_play(snd_dimbox)

        with(obj_mainchara)
        {
            global.interact = 5
            global.menuno = 6
        }
    }
}

if (keyboard_check_pressed(ord("A")) && global.interact == 0)
{
    if (i_ex(obj_mainchara))
    {
        snd_play(snd_levelup)

        with(obj_mainchara)
        {
            m_override += 1
            if (m_override >= 5)
                global.flag[26] = 50
        }
		
		scr_debug_print(("obj_mainchara.m_override = " + string(obj_mainchara.m_override)))
    }
}

if (keyboard_check_pressed(ord("S")) && global.interact == 0)
{
    if (i_ex(obj_mainchara))
    {
        snd_play(snd_dimbox)

        with(obj_mainchara)
        {
            if (!i_ex(obj_itemswapper))
                instance_create(0, 0, obj_itemswapper)
        }
    }
}

if (keyboard_check_pressed(ord("D")) && global.interact == 0)
{
    if (i_ex(obj_mainchara))
    {
        snd_play(snd_save)

        with(obj_mainchara)
        {
            global.interact = 5
            global.menuno = 4
        }
    }
}

if (keyboard_check_pressed(ord("P")) && global.interact == 0)
{
    if (i_ex(obj_mainchara))
    {
        snd_play(snd_save)

        with(obj_mainchara)
            scr_load()
			
		scr_debug_print(("Loading save file slot " + string(global.filechoice)))
    }
}

if (keyboard_check_pressed(ord("X")) && global.interact == 0)
{
    if (i_ex(obj_encountererparent))
    {
        snd_play(snd_vaporized)

        with (obj_encountererparent)
            steps += 100

        scr_debug_print(("obj_encountererparent.steps = " + string(obj_encountererparent.steps)))
    }
}

if (keyboard_check_pressed(ord("C")) && global.interact == 0)
{
    if (i_ex(obj_mainchara))
    {
        snd_play(snd_bell)

        with(obj_mainchara)
            global.gold += 500

        scr_debug_print(("global.gold = " + string(global.gold)))
    }
}

if (keyboard_check_pressed(ord("1")))
{
    snd_play(snd_bell)

    if (i_ex(obj_solidparent))
    {
        with(obj_solidparent)
        {
            if (visible == false)
                visible = true
            else
                visible = false
        }
    }
    
    if (i_ex(obj_solidtall))
    {
        with(obj_solidtall)
        {
            if (visible == false)
                visible = true
            else
                visible = false
        }
    }

    if (i_ex(obj_solidthin))
    {
        with(obj_solidthin)
        {
            if (visible == false)
                visible = true
            else
                visible = false
        }
    }

    if (i_ex(obj_solidsmall))
    {
        with(obj_solidsmall)
        {
            if (visible == false)
                visible = true
            else
                visible = false
        }
    }
    
    if (i_ex(obj_solidwide))
    {
        with(obj_solidwide)
        {
            if (visible == false)
                visible = true
            else
                visible = false
        }
    }
    
    if (i_ex(obj_solidlong))
    {
        with(obj_solidlong)
        {
            if (visible == false)
                visible = true
            else
                visible = false
        }
    }
	
    if (i_ex(obj_solidtall_2))
    {
        with(obj_solidtall_2)
        {
            if (visible == false)
                visible = true
            else
                visible = false
        }
    }
	
    if (i_ex(obj_solidextall_2))
    {
        with(obj_solidextall_2)
        {
            if (visible == false)
                visible = true
            else
                visible = false
        }
    }
	
    if (i_ex(obj_solidexwide))
    {
        with(obj_solidexwide)
        {
            if (visible == false)
                visible = true
            else
                visible = false
        }
    }

    if (i_ex(obj_solidline))
    {
        with(obj_solidline)
        {
            if (visible == false)
                visible = true
            else
                visible = false
        }
    }
	
    if (i_ex(obj_solidlongleft))
    {
        with(obj_solidlongleft)
        {
            if (visible == false)
                visible = true
            else
                visible = false
        }
    }
    
    if (i_ex(obj_sdl))
    {
        with (obj_sdl)
        {
            if (visible == false)
                visible = true
            else
                visible = false
        }
    }

    if (i_ex(obj_sdr))
    {
        with (obj_sdr)
        {
            if (visible == false)
                visible = true
            else
                visible = false
        }
    }
    
    if (i_ex(obj_sul))
    {
        with (obj_sul)
        {
            if (visible == false)
                visible = true
            else
                visible = false
        }
    }

    if (i_ex(obj_sur))
    {
        with (obj_sur)
        {
            if (visible == false)
                visible = true
            else
                visible = false
        }
    }
}

if (keyboard_check_pressed(ord("2")))
{
    snd_play(snd_bell)

    if (i_ex(obj_doorparent))
    {
        with(obj_doorparent)
        {
            if (visible == false)
                visible = true
            else
                visible = false
        }
    }
}

if (keyboard_check_pressed(ord("3")))
{
    snd_play(snd_bell)

    if (i_ex(obj_markerA))
    {
        with(obj_markerA)
        {
            if (visible == false)
                visible = true
            else
                visible = false
        }
    }

    if (i_ex(obj_markerB))
    {
        with(obj_markerB)
        {
            if (visible == false)
                visible = true
            else
                visible = false
        }
    }

    if (i_ex(obj_markerC))
    {
        with(obj_markerC)
        {
            if (visible == false)
                visible = true
            else
                visible = false
        }
    }

    if (i_ex(obj_markerD))
    {
        with(obj_markerD)
        {
            if (visible == false)
                visible = true
            else
                visible = false
        }
    }    

    if (i_ex(obj_markerX))
    {
        with(obj_markerX)
        {
            if (visible == false)
                visible = true
            else
                visible = false
        }
    }

    if (i_ex(obj_markerw))
    {
        with (obj_markerw)
        {
            if (visible == false)
                visible = true
            else
                visible = false
        }
    }

    if (i_ex(obj_markerv))
    {
        with (obj_markerv)
        {
            if (visible == false)
                visible = true
            else
                visible = false
        }
    }

    if (i_ex(obj_markeru))
    {
        with (obj_markeru)
        {
            if (visible == false)
                visible = true
            else
                visible = false
        }
    }

    if (i_ex(obj_markert))
    {
        with (obj_markert)
        {
            if (visible == false)
                visible = true
            else
                visible = false
        }
    }

    if (i_ex(obj_markers))
    {
        with (obj_markers)
        {
            if (visible == false)
                visible = true
            else
                visible = false
        }
    }

    if (i_ex(obj_markerr))
    {
        with (obj_markerr)
        {
            if (visible == false)
                visible = true
            else
                visible = false
        }
    }
}

if (keyboard_check_pressed(ord("4")))
{
    snd_play(snd_txtsans)

    if (collshower == false)
        collshower = true
    else
        collshower = false

    scr_debug_print(("collshower = " + string(collshower)))
}

if (keyboard_check_pressed(ord("5")))
{
    snd_play(snd_txtsans)

    if (maskshower == false)
        maskshower = true
    else
        maskshower = false

    scr_debug_print(("maskshower = " + string(maskshower)))
}

if (keyboard_check_pressed(ord("6")))
{
    snd_play(snd_txtsans)

    if (nameshower == false)
        nameshower = true
    else
        nameshower = false

    scr_debug_print(("nameshower = " + string(nameshower)))
}

if (keyboard_check_pressed(vk_numpad0))
{
    snd_play(snd_hero)

    /*if (!i_ex(obj_debug_drawInput))
        instance_create(x, y, obj_debug_drawInput)
    else
        safe_delete(obj_debug_drawInput)*/
}

if (keyboard_check_pressed(vk_numpad1))
{
    snd_play(snd_txtsans)

    if (showdebug == false)
        showdebug = true
    else
        showdebug = false

    show_debug_overlay(showdebug)

    scr_debug_print(("showdebug = " + string(showdebug)))
}

if (keyboard_check_pressed(vk_numpad2))
{
    if (writedisplay == false)
        writedisplay = true
    else
        writedisplay = false

    for (var i = (array_length_1d(global.flag) - 1); i > -1; i--)
        lastval[i] = global.flag[i]

    snd_play(snd_yeah)
}

if (writedisplay == true)
{
    for (i = (array_length_1d(global.flag) - 1); i > -1; i--)
    {
        if (lastval[i] != global.flag[i])
            scr_debug_print(((((("global.flag[" + string(i)) + "] has been changed from ") + string(lastval[i])) + " to ") + string(global.flag[i])))
    }

    for (i = (array_length_1d(global.flag) - 1); i > -1; i--)
        lastval[i] = global.flag[i]
}

if (keyboard_check_pressed(vk_numpad3))
{
    var dump_date = ((((((((((string(date_get_year(date_current_datetime())) + "_") + string(date_get_month(date_current_datetime()))) + "_") + string(date_get_day(date_current_datetime()))) + "_") + string(date_get_hour(date_current_datetime()))) + "_") + string(date_get_minute(date_current_datetime()))) + "_") + string(date_get_second(date_current_datetime())))

    ossafe_ini_open((("activeObjectList_" + dump_date) + ".txt"))
    ini_write_string("objects", "total number of objects at call", string(instance_count))
    with (all)
    {
        var sid = (("[" + string(id)) + "]")
        var writestring = object_get_name(object_index)
        if (persistent == true)
            writestring += " [persistent object]"
        if (visible == false)
            writestring += " [not visible]"
        ini_write_string("objects", sid, writestring)
    }
    ossafe_ini_close()

    snd_play(snd_wrongvictory)

    ossafe_file_text_open_read((("activeObjectList_" + dump_date) + ".txt"))
}

if (keyboard_check_pressed(vk_numpad4))
{
    snd_play(snd_bell)

    if (cutsceneshow == true)
        cutsceneshow = false
    else
        cutsceneshow = true

    scr_debug_print(("cutsceneshow = " + string(cutsceneshow)))
}

if (keyboard_check_pressed(vk_numpad5))
{
    snd_play(snd_bell)

    if (caterpillarshower == true)
        caterpillarshower = false
    else
        caterpillarshower = true

    scr_debug_print(("caterpillarshower = " + string(caterpillarshower)))
}

if (keyboard_check_pressed(vk_numpad6))
{
    global.debug_god_mode = (1 - global.debug_god_mode)

    if (global.debug_god_mode == true)
        snd_play(snd_swing)

    if (global.debug_god_mode == false)
        snd_play(snd_swing)
}

if (global.debug_god_mode == true)
{
    //for (i = 0; i < 6; i++)
    //{
    if (global.hp < global.maxhp)
        global.hp = (global.hp + 1)
    //}
}

if (keyboard_check_pressed(vk_numpad7))
{
    //with (obj_solidblock)
    //    visible = true

    snd_play(snd_tem)
}

if (keyboard_check_pressed(vk_numpad8))
{
    snd_play(snd_hero)
    interactshower = (true - interactshower)
}

if (keyboard_check_pressed(vk_numpad9))
{
    snd_play(snd_floweylaugh)

    var gx = ossafe_file_text_open_write("system_information_962")
    ossafe_file_text_write_string(gx, "a")
    ossafe_file_text_close(gx)
    if (i_ex(obj_steam_manager))
    {
        with (obj_steam_manager)
            event_user(1)
    }
    
    scr_debug_print("Created file system_information_962")
}

if (keyboard_check_pressed(vk_divide))
{

}

if (keyboard_check_pressed(vk_multiply))
{
    snd_play(snd_switchpull_n)

    scr_change_language()

    scr_debug_print(("global.language = " + string(global.language)))
}

if (keyboard_check_pressed(vk_subtract))
{
    snd_play(snd_switchpull_n)

    if (global.language == "en")
        textdata_en()
    else
        textdata_ja()

    scr_debug_print(("global.language = " + string(global.language)))
}