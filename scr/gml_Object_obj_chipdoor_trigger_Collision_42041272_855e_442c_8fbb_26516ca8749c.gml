if (room == room_fire7 && global.flag[374] == 1 && global.flag[375] == 1 && global.plot < 133 && global.interact == 0 && con == 0)
{
    global.interact = 1
    caster_pause(global.currentsong)
    con = 1
    alarm[4] = 30
}
if (room == room_fire_walkandbranch2 && global.flag[399] == 1 && global.flag[400] == 1 && global.plot < 164 && global.interact == 0 && con == 0)
{
    global.interact = 1
    caster_pause(global.currentsong)
    con = 1
    alarm[4] = 30
}
