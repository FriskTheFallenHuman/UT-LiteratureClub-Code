global.interact = 3
if (touched == false)
{
    var fader = instance_create(0, 0, obj_unfader)
    fader.tspeed = 0.15
    if (room == room_torhouse3)
        snd_play(mus_dooropen)
    alarm[2] = 8
    touched = true
}
