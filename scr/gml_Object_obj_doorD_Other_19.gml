global.interact = 3
if (touched == false)
{
    var fader = instance_create(0, 0, obj_unfader)
    fader.tspeed = 0.15
    if (room == room_asrielroom)
        snd_play(mus_doorclose)
    alarm[2] = 8
    touched = true
}
