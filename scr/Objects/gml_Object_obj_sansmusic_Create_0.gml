event_user(0)
if (global.flag[67] != 1)
{
    if (caster_is_playing(global.currentsong) != 1)
    {
        if (room != room_tundra_sansbasement)
        {
            global.currentsong = caster_load("music/muscle.ogg")
            caster_loop(global.currentsong, 1, 1)
        }
        else
        {
            global.currentsong = caster_load("music/sansdate.ogg")
            caster_loop(global.currentsong, 0.9, 0.8)
        }
    }
}
