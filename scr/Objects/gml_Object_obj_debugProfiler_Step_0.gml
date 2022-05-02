if (keyboard_check(vk_shift) && keyboard_check(vk_control) && keyboard_check_pressed(ord("C")))
{
    snd_play(snd_hero)

    if (keyboard_check_pressed(ord("1")))
    {
        if (!i_ex(obj_roomselector))
        {
            var _roomselect = instance_create(x, y, obj_roomselector)
            with(_roomselect)
            {
                if (!selector_active)
                    event_user(0)
            }
        }
        /*else
            safe_delete(obj_debug_drawInput)*/
    }
    else if (keyboard_check_pressed(ord("2")))
    {
        /*if (!i_ex(obj_debug_drawInput))
            instance_create(x, y, obj_debug_drawInput)
        else
            safe_delete(obj_debug_drawInput)*/
    }

}

if (keyboard_check(vk_shift) && keyboard_check(vk_control) && keyboard_check_pressed(vk_up))
{
    snd_play(snd_txtsans)

    if (showdebug == false)
        showdebug = true
    else
        showdebug = false

    show_debug_overlay(showdebug)

    scr_debug_print(("showdebug = " + string(showdebug)))
}

if (keyboard_check(vk_shift) && keyboard_check(vk_control) && keyboard_check_pressed(ord("D")))
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
            debug_message(((((("global.flag[" + string(i)) + "] has been changed from ") + string(lastval[i])) + " to ") + string(global.flag[i])))
    }

    for (i = (array_length_1d(global.flag) - 1); i > -1; i--)
        lastval[i] = global.flag[i]
}

if (keyboard_check(vk_shift) && keyboard_check(vk_control) && keyboard_check_pressed(ord("P")))
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

if (keyboard_check(vk_shift) && keyboard_check(vk_control) && keyboard_check_pressed(ord("T")))
{
    snd_play(snd_bell)

    if (cutsceneshow == true)
        cutsceneshow = false
    else
        cutsceneshow = true

    scr_debug_print(("cutsceneshow = " + string(cutsceneshow)))
}

if (keyboard_check(vk_shift) && keyboard_check(vk_control) && keyboard_check_pressed(ord("P")))
{
    snd_play(snd_bell)

    if (caterpillarshower == true)
        caterpillarshower = false
    else
        caterpillarshower = true

    scr_debug_print(("caterpillarshower = " + string(caterpillarshower)))
}

if (keyboard_check(vk_shift) && keyboard_check(vk_control) && keyboard_check_pressed(ord("G")))
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

if (keyboard_check(vk_shift) && keyboard_check(vk_control) && keyboard_check_pressed(ord("B")))
{
    //with (obj_solidblock)
    //    visible = true

    snd_play(snd_tem)
}

if (keyboard_check(vk_shift) && keyboard_check(vk_control) && keyboard_check_pressed(ord("W")))
{
    if (room == room_shop6 ||
        room == room_shop5 ||
        room == room_shop4 || 
        room == room_shop3 || 
        room == room_shop2 || 
        room == room_shop1)
    {
        if (keyboard_check_pressed(ord("1")))
        {
            if (room == room_shop6)
            {
                snd_play(snd_bell)
                global.flag[2] += 1
            }
            else if (room == room_shop4)
            {
                snd_play(snd_bell)
                global.flag[437] += 1
            }
            else
                snd_play(snd_hurt1)
        }
    }
}

if (keyboard_check(vk_shift) && keyboard_check(vk_control) && keyboard_check_pressed(ord("I")))
{
    snd_play(snd_hero)
    interactshower = (true - interactshower)
}

if (keyboard_check(vk_shift) && keyboard_check(vk_control) && keyboard_check_pressed(ord("M")))
{
    scr_change_language()
    room_restart()
}