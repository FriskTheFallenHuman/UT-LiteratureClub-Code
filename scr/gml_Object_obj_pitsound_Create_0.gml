siner = 0
global.flag[15] = 0
event_user(0)
if (global.flag[7] == 1)
    return;
if (caster_is_playing(global.currentsong) != 1)
{
    global.currentsong = mus_coretransition
    caster_loop(global.currentsong, 1, 1)
}
