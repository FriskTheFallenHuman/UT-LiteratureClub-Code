alldead = 0
global.encounter = 0
script_execute(scr_steps, 120, 30, 16, 203)
if (room == room_tundra_snowpuzz && global.flag[64] != 0)
    script_execute(scr_steps, 220, 30, 16, 203)
if (global.flag[203] == 0 && global.plot > 100)
    instance_destroy()
if (room == room_tundra_dangerbridge)
{
    if (global.plot < 67)
        instance_destroy()
}
