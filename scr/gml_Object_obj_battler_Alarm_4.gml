if (on == 0)
{
    if (heartdraw == 1)
    {
        heartdraw = 0
        on = 1
        clap += 1
    }
}
if (on == 0)
{
    if (heartdraw == 0)
    {
        snd_play(snd_noise)
        on = 1
        heartdraw = 1
    }
}
on = 0
if (clap > 2)
{
    if (global.battlegroup == 200)
    {
        with (tb)
            instance_destroy()
        instance_destroy()
    }
    else
    {
        instance_create((obj_char.x + 5), (obj_char.y + 17), obj_transheart)
        heartdraw = 0
        obj_char.depth = 100
    }
}
else
    alarm[4] = claptimer
