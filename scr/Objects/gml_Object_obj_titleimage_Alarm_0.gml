if (!firstrun)
{
    snd_stop(snd_splash)
    snd_stop(snd_fall2)
    global.to_introstory = 1
    var fader = instance_create(0, 0, obj_persistentfader)
    fader.depth = -1000000
    room_goto(PLACE_LEGEND)
}
