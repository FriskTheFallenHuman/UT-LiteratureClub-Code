randomize()
if (conversation == 1)
{
    global.interact = 1
    cutscene_master = scr_cutscene_make()
    scr_maincharacters_actors()
    tor = 2
    tor_actor = instance_create(150, 240, obj_actor)
    scr_actor_setup(tor, tor_actor, "toriel")
    tor_actor.phone = 0
    c_sel(tor)
    c_autowalk(false)
    c_pannable(true)
    conversation = 2
    origcamx = camerax()
    origcamy = cameray()
    side = choose(1, 0)
}
if (conversation == 2)
{
    c_facing("d")
    c_sprite(spr_toriel_dt)
    c_var_instance(ev, "fademusicout", 1)
    c_msgzurasu(1)
    c_var_instance(ev, "pantor", 2)
    c_speaker("toriel")
    c_fe(1)
    c_msgsetloc(0, "obj_torieltrigger5_260")
    c_talk_wait()
    c_var_instance(ev, "pantor", 1)
    c_sprite(spr_toriel_d)
    c_var_instance(ev, "customconv", 1)
    c_waitcustom()
    c_wait(seconds_n(1))
    c_sel(tor)
    c_emote("!")
    c_wait(seconds_n(1))
    c_sprite(spr_toriel_d)
    c_var_instance(tor_actor, "phone", 0)
    c_var_instance(ev, "customconv", 9)
    c_waitcustom()
    c_var_instance(ev, "pantor", 0)
    c_var_instance(ev, "customconv", 19)
    c_sprite(spr_toriel_dt)
    c_msgsetloc(0, "obj_torieltrigger5_185")
    if (global.hp < global.maxhp)
    {
        c_soundplay(snd_power)
        if (global.hp < 4)
            c_msgnextloc("obj_torieltrigger5_189")
        else
            c_msgnextloc("obj_torieltrigger5_187")
    }
    else
        c_msgnextloc("obj_torieltrigger5_186")
    c_msgnextloc("obj_torieltrigger5_190")
    c_msgnextloc("obj_torieltrigger5_191")
    c_msgnextloc("obj_torieltrigger5_192")
    c_msgnextloc("obj_torieltrigger5_193")
    c_msgnextloc("obj_torieltrigger5_194")
    c_talk_wait()
    c_facing("u")
    c_var_instance(ev, "customconv", 6)
    c_waitcustom()
    c_pannable(false)
    c_actortomainchara()
    c_cmd("terminate", 0, 0, 0, 0)
    conversation = 3
}
if (conversation == 3 && (!i_ex(cutscene_master)))
{
    conversation = 4
    global.interact = 0
    global.plot = 17
    global.hp = global.maxhp
    instance_destroy(moni_actor)
}
if instance_exists(tor_actor)
{
    with (tor_actor)
    {
        if instance_exists(obj_torface)
        {
            myinteract = 1
            if instance_exists(obj_face_torieltalk)
                image_index = obj_face_torieltalk.image_index
            else
                image_index = 0
        }
        else
        {
            myinteract = 0
            if (path_position == 1)
            {
                image_index = 0
                image_speed = 0
                if (other.customconv == 7)
                    instance_destroy()
            }
            else if (path_speed != 0)
                image_speed = 0.2
            if (speed > 0)
                image_speed = 0.2
        }
        if (phone == 1)
            sprite_index = spr_toriel_d_phone
    }
}
if (customconv == 1)
{
    with (tor_actor)
        path_start((other.side ? path_torielwalk19_4_alt : path_torielwalk19a_4), 3, path_action_stop, 1)
    customconv = 2
}
if (customconv == 2 && tor_actor.path_position == 1)
{
    with (tor_actor)
    {
        sprite_index = spr_toriel_d_phone
        phone = 1
        path_end()
    }
    snd_play(snd_phone)
    c_waitcustom_end()
    customconv = 3
}
if (customconv == 4)
{
    with (tor_actor)
        path_end()
    caster_pause(global.currentsong)
    torielsong = caster_load("music/toriel.ogg")
    caster_loop(torielsong, 0.7, 0.86)
    c_waitcustom_end()
    customconv = 5
}
if (customconv == 6)
{
    customconv = 7
    with (tor_actor)
        path_start((other.side ? path_torielwalk19b_4 : path_torielwalk19b_4_alt), 6, path_action_stop, 0)
    caster_resume(global.currentsong)
    fademusicout = 3
    torvolume = 0.8
}
if (customconv == 9)
{
    with (tor_actor)
        path_start(path_torieldown, 5, path_action_stop, 0)
    customconv = 10
}
if (customconv == 10 && tor_actor.path_position == 1)
    customconv = 4
if (customconv == 19)
{
    camerax_set(origcamx)
    cameray_set(origcamy)
    customconv = 20
}
if (fademusicout == 1)
{
    if (volume > 0)
        volume -= 0.05
    caster_set_volume(global.currentsong, volume)
    if (volume < 0.05)
        fademusicout = 2
}
if (fademusicout == 3)
{
    torvolume -= 0.04
    if (volume < 0.9)
        volume += 0.06
    caster_set_volume(torielsong, torvolume)
    caster_set_volume(global.currentsong, volume)
    if (torvolume < 0.1)
    {
        caster_free(torielsong)
        c_waitcustom_end()
    }
}
if (pantor == 1)
{
    cameray_set((cameray() + 4))
    __view_set(9, 0, noone)
    if (cameray() >= origcamy)
        pantor = 0
    with (obj_dialoguer)
        zurasu = 1
}
if (pantor == 2)
{
    cameray_set((cameray() - 4))
    __view_set(9, 0, noone)
    if (cameray() <= 114)
        pantor = 3
    with (obj_dialoguer)
        zurasu = 1
}
if (pantor == 0)
    __view_set(9, 0, obj_mainchara)
if instance_exists(obj_area1_fallevent)
    obj_area1_fallevent.con = ((pantor * 10) + obj_mainchara.cutscene)
