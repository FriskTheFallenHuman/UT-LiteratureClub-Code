event_user(0)
if (caster_is_playing(global.currentsong) != 1)
{
    if (room == room_area1)
    {
        if (global.plot > 0)
        {
            global.currentsong = caster_load("music/first_room.ogg")
            caster_loop(global.currentsong, 1, 1)
            if (scr_murderlv() >= 1 && global.flag[27] == 0)
                caster_set_pitch(global.currentsong, 0.4)
        }
    }
    else if (global.flag[221] == 0)
    {
        global.currentsong = caster_load("music/ruins.ogg")
        caster_loop(global.currentsong, 1, 1)
        if (scr_murderlv() >= 1 && global.flag[27] == 0)
            caster_set_pitch(global.currentsong, 0.4)
    }
    else
    {
        global.currentsong = caster_load("music/toomuch.ogg")
        caster_loop(global.currentsong, 1, 1)
    }
}
