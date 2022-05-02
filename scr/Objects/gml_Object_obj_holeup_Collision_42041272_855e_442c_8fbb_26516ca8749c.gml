if (global.phasing == 0 && global.interact == 0)
{
    global.interact = 4
    global.phasing = 1
    snd_play(snd_escaped)
    alarm[0] = 10
}
