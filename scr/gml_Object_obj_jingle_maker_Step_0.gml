if jingle_play
{
    if (!snd_isplaying(snd_creepyjingle))
    {
        snd_play(snd_creepyjingle)
        jingle_play = 0
    }
}
else
    instance_destroy()
