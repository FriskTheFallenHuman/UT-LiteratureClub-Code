global.interact = 3
instance_create(0, 0, obj_unfader)
ok = 1
if (room == room_fire1 && instance_exists(obj_undynea_chaser) == 1)
    ok = 0
if (global.flag[7] == 0)
{
    if (ok == 1)
        instance_create(0, 0, obj_musfadeout)
}
if (touched == false)
{
    alarm[2] = 13
    touched = true
}
if (global.flag[7] == 0)
{
    if (room == room_torhouse1)
        caster_free(global.currentsong2)
}
