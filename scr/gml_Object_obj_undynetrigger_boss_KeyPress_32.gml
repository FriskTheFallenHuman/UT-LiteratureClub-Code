if (global.debug == true)
{
    if (playthesong == 0)
    {
        undyne = caster_load("music/undynetruetheme.ogg")
        caster_loop(undyne, 1, 1)
        playthesong = 1
    }
    global.flag[18] = 1
    fakedrawer = 1
    instance_create(0, 0, obj_flasher)
    scr_shake(3, 3, 2)
    __view_set(9, 0, object_index)
    __view_set(5, 0, 160)
    __view_set(6, 0, 100)
    __view_set(2, 0, 160)
    __view_set(3, 0, 120)
    snd_play(snd_damage)
    global.typer = 5
    global.msc = 0
    global.msg[0] = scr_gettext("obj_undynetrigger_boss_638")
    instance_create((10 + xx), (150 + yy), OBJ_WRITER)
    if (__view_get(4, 0) <= 0)
        __view_set(4, 0, (10 + random(40)))
    else
        __view_set(4, 0, (-1 - random(40)))
}