if cxychecker
    return;
if (con == 0)
{
    cutscene_master = scr_cutscene_make()
    scr_maincharacters_actors()
    moni_actor.x = 120
    moni_actor.y = -320
    moni_actor.sprite_index = spr_monika_fall_air
    moni_actor.depth = 100
    c_sel(moni)
    c_autowalk(false)
    c_pannable(true)
    blacken = 1
    con = 1
}
if (con == 1)
{
    c_wait(seconds_n(0.5))
    c_var_instance(ev, "blacken", 0)
    c_fadein(seconds_n(2))
    c_wait((seconds_n(2) + seconds_n(0.5)))
    c_sel(moni)
    c_sprite(spr_monika_fall_air)
    c_soundplay(snd_dramaticfall)
    c_walkdirect_wait(129, 128, seconds_n(1.5))
    c_addxy(0, -1)
    c_sprite(spr_monika_fall_ground)
    c_mus("free_all")
    c_soundplay(snd_hurt1_c)
    c_soundplay(snd_splash_c)
    c_wait(seconds_n(5))
    c_addxy(10, -10)
    c_sprite(spr_monika_fall_getup)
    c_imagespeed(1)
    c_shakeobj()
    c_wait(seconds_n(3))
    c_imagespeed(0)
    c_addxy(0, -10)
    c_facing("d")
    c_wait(seconds_n(2))
    c_facing("r")
    c_autowalk(true)
    c_walkdirect_wait(244, 120, seconds_n(4))
    c_autowalk(false)
    c_imageindex(0)
    c_imagespeed(0)
    c_wait(seconds_n(0.5))
    c_pan_wait(94, 10, seconds_n(1))
    c_wait(seconds_n(2))
    c_actortomainchara()
    c_pannable(false)
    c_terminatekillactors()
    con = 2
}
if (con == 2 && (!i_ex(cutscene_master)))
{
    con = 3
    global.interact = 0
    global.facing = 0
    global.plot = 0.1
    global.currentsong = caster_load("music/first_room.ogg")
    caster_loop(global.currentsong, 1, 1)
    if (!global.debug)
        instance_destroy()
}
if (control_check_pressed(1) && allowskip && i_ex(cutscene_master))
{
    caster_free(-1)
    instance_create(0, 0, obj_persistentfader)
    global.interact = 0
    global.facing = 0
    global.plot = 0.1
    room_restart()
    instance_destroy()
    instance_destroy(cutscene_master)
}
if i_ex(moni_actor)
    moni_actor.depth = 0
