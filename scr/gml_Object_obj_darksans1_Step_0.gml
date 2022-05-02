if (conversation == 0)
{
    if (x >= (obj_char.x - 23))
    {
        x = (obj_char.x - 23)
        hspeed = 0
        image_speed = 0
        conversation = 1
        global.typer = 21
        global.facechoice = 0
        global.faceemotion = 0
        global.msc = 0
        image_index = 0
        if instance_exists(obj_walknoise)
        {
            with (obj_walknoise)
                instance_destroy()
        }
        global.msg[0] = scr_gettext("obj_darksans1_345")
        global.msg[1] = scr_gettext("obj_darksans1_346")
        global.msg[2] = scr_gettext("obj_darksans1_347")
        ossafe_ini_open("undertale.ini")
        M1 = ini_read_real(("Sans" + string(global.filechoice)), "M1", 0)
        ini_write_real(("Sans" + string(global.filechoice)), "M1", (M1 + 1))
        ossafe_ini_close()
        ossafe_savedata_save()
        if (M1 > 0)
        {
            global.msg[0] = scr_gettext("obj_darksans1_354")
            global.msg[1] = scr_gettext("obj_darksans1_355")
            global.msg[2] = scr_gettext("obj_darksans1_356")
        }
        instance_create(0, 0, obj_dialoguer)
    }
}
if (conversation == 1 && instance_exists(OBJ_WRITER) == 0)
{
    global.interact = 1
    obj_char.sprite_index = obj_char.dsprite
    obj_char.facing = 0
    global.facing = 0
    alarm[2] = 50
    conversation = 2
}
if (sprite_index == obj_char.sansprankpsrite && conversation == 4 && image_index == 2)
{
    caster_play(fsound, 1, 1)
    alarm[4] = 180
    image_speed = 0
    conversation = 5
}
if (conversation == 6 && instance_exists(OBJ_WRITER) == 0)
{
    obj_char.visible = false
    mainact = instance_create(obj_char.x, obj_char.y, obj_char_actor)
    mainact.hspeed = 4
    obj_char.hspeed = 4
    hspeed = 4
    image_speed = 0.25
    conversation = 7
}
if (conversation == 7 && x >= 2440)
{
    hspeed = 0
    image_index = 0
    image_speed = 0
    obj_char_actor.hspeed = 0
    obj_char_actor.image_speed = 0
    obj_char_actor.image_index = 0
    obj_char.hspeed = 0
    global.msg[0] = scr_gettext("obj_darksans1_399")
    instance_create(0, 0, obj_dialoguer)
    with (obj_dialoguer)
        side = 0
    conversation = 8
    if (murder == 1)
        conversation = 50
}
if (conversation == 8 && instance_exists(OBJ_WRITER) == 0)
{
    obj_char_actor.vspeed = -1
    obj_char.vspeed = -1
    conversation = 9
}
if (conversation == 9)
{
    if (obj_char.y <= obj_convenientlamp.y)
    {
        obj_char_actor.vspeed = 0
        obj_char.vspeed = 0
        obj_char.y = obj_convenientlamp.y
        obj_char_actor.y = obj_convenientlamp.y
        obj_char.hspeed = 1
        obj_char_actor.hspeed = 1
        hh = instance_create(0, 0, obj_musfadeout)
        hh.fadespeed = 0.01
        conversation = 10
    }
}
if (conversation == 10)
{
    if (obj_char.x >= obj_convenientlamp.x)
    {
        obj_char.hspeed = 0
        obj_char_actor.hspeed = 0
        obj_char_actor.image_speed = 0
        obj_char_actor.image_index = 0
        obj_char.x = obj_convenientlamp.x
        obj_char_actor.x = obj_convenientlamp.x
        obj_char.y += 60
        pap = instance_create(room_width, (y - 12), obj_papyrus_actor_mad)
        pap.sprite_index = spr_papyrus_l_mad
        pap.direction = 180
        pap.speed = 4
        conversation = 11
    }
}
if (conversation == 11)
{
    if (obj_papyrus_actor_mad.x <= (obj_papyrus_actor_mad.xstart - 140))
    {
        global.currentsong = global.currentsong2
        caster_loop(global.currentsong, 0.5, 1)
        obj_papyrus_actor_mad.speed = 0
        obj_papyrus_actor_mad.image_speed = 0
        obj_papyrus_actor_mad.sprite_index = spr_papyrus_lt_mad
        global.msg[0] = scr_gettext("obj_darksans1_457")
        scr_papface(1, 1)
        global.msg[2] = scr_gettext("obj_darksans1_459")
        global.msg[3] = scr_gettext("obj_darksans1_460")
        global.msg[4] = scr_gettext("obj_darksans1_461")
        global.msg[5] = scr_gettext("obj_darksans1_462")
        global.msg[6] = scr_gettext("obj_darksans1_463")
        scr_sansface(7, 0)
        global.msg[8] = scr_gettext("obj_darksans1_465")
        instance_create(0, 0, obj_dialoguer)
        with (obj_dialoguer)
            side = 0
        conversation = 12
    }
}
if (conversation == 12 && instance_exists(OBJ_WRITER) == 0)
{
    obj_papyrus_actor_mad.fun = true
    obj_papyrus_actor_mad.sprite_index = spr_papyrus_mad1
    obj_papyrus_actor_mad.image_speed = 0.2
    conversation = 13
    global.typer = 18
    global.faceemotion = 1
    global.facechoice = 4
    global.msg[0] = scr_gettext("obj_darksans1_480")
    global.msg[1] = scr_gettext("obj_darksans1_481")
    global.msg[2] = scr_gettext("obj_darksans1_482")
    global.msg[3] = scr_gettext("obj_darksans1_483")
    global.msg[4] = scr_gettext("obj_darksans1_484")
    instance_create(0, 0, obj_dialoguer)
    with (obj_dialoguer)
        side = 0
}
if (conversation == 13 && instance_exists(OBJ_WRITER) == 0)
{
    obj_papyrus_actor_mad.fun = true
    obj_papyrus_actor_mad.sprite_index = spr_papyrus_cape
    obj_papyrus_actor_mad.image_speed = 0.25
    conversation = 14
    global.faceemotion = 0
    global.facechoice = 4
    global.msg[0] = scr_gettext("obj_darksans1_496")
    global.msg[1] = scr_gettext("obj_darksans1_497")
    global.msg[2] = scr_gettext("obj_darksans1_498")
    global.msg[3] = scr_gettext("obj_darksans1_499")
    global.msg[4] = scr_gettext("obj_darksans1_500")
    global.msg[5] = scr_gettext("obj_darksans1_501")
    instance_create(0, 0, obj_dialoguer)
    with (obj_dialoguer)
        side = 0
}
if (conversation == 14 && instance_exists(OBJ_WRITER) == 0)
{
    obj_papyrus_actor_mad.fun = false
    obj_papyrus_actor_mad.sprite_index = spr_papyrus_lt
    obj_papyrus_actor_mad.image_speed = 0
    conversation = 15
    global.faceemotion = 0
    global.facechoice = 3
    global.typer = 17
    global.msg[0] = scr_gettext("obj_darksans1_514")
    global.msg[1] = scr_gettext("obj_darksans1_515")
    instance_create(0, 0, obj_dialoguer)
    with (obj_dialoguer)
        side = 0
}
if (conversation == 15 && instance_exists(OBJ_WRITER) == 0)
{
    obj_papyrus_actor_mad.fun = true
    obj_papyrus_actor_mad.sprite_index = spr_papyrus_mad2
    obj_papyrus_actor_mad.image_speed = 0.4
    conversation = 16
    global.faceemotion = 1
    global.facechoice = 4
    global.typer = 18
    global.msg[0] = scr_gettext("obj_darksans1_528")
    global.msg[1] = scr_gettext("obj_darksans1_529")
    global.msg[2] = scr_gettext("obj_darksans1_530")
    scr_sansface(3, 0)
    global.msg[4] = scr_gettext("obj_darksans1_532")
    global.msg[5] = scr_gettext("obj_darksans1_533")
    instance_create(0, 0, obj_dialoguer)
    with (obj_dialoguer)
        side = 0
}
if (conversation == 16 && instance_exists(OBJ_WRITER) == 0)
{
    conversation = 18
    alarm[6] = 10
    rememberxview = __view_get(0, view_current)
    rememberyview = __view_get(1, view_current)
    __view_set(9, view_current, noone)
    obj_char.cutscene = true
}
if (conversation == 17)
{
}
if (conversation == 18)
{
    if ((x + (sprite_width / 2)) > (__view_get(0, view_current) + (__view_get(2, view_current) / 2)))
        __view_set(0, view_current, (__view_get(0, view_current) + 3))
    if ((y + (sprite_height / 2)) > (__view_get(1, view_current) + (__view_get(3, view_current) / 2)))
        __view_set(1, view_current, (__view_get(1, view_current) + 9))
    __view_set(3, view_current, (__view_get(3, view_current) - 12))
    __view_set(2, view_current, (__view_get(2, view_current) - 16))
    alarm[7] = 30
}
if (conversation == 20)
{
    if (__view_get(0, view_current) > rememberxview)
        __view_set(0, view_current, (__view_get(0, view_current) - 3))
    if (__view_get(1, view_current) > rememberyview)
        __view_set(1, view_current, (__view_get(1, view_current) - 9))
    __view_set(3, view_current, (__view_get(3, view_current) + 12))
    __view_set(2, view_current, (__view_get(2, view_current) + 16))
}
if (conversation == 21)
{
    obj_papyrus_actor_mad.fun = false
    obj_papyrus_actor_mad.sprite_index = spr_papyrus_lt_mad
    conversation = 16
    sprite_index = spr_sans_r
    global.faceemotion = 1
    global.facechoice = 4
    global.typer = 18
    global.msg[0] = scr_gettext("obj_darksans1_582")
    scr_sansface(1, 1)
    global.msg[2] = scr_gettext("obj_darksans1_584")
    scr_papface(3, 4)
    global.msg[4] = scr_gettext("obj_darksans1_586")
    global.msg[5] = scr_gettext("obj_darksans1_587")
    global.msg[6] = scr_gettext("obj_darksans1_588")
    global.msg[7] = scr_gettext("obj_darksans1_589")
    scr_sansface(8, 1)
    global.msg[9] = scr_gettext("obj_darksans1_591")
    global.msg[10] = scr_gettext("obj_darksans1_592")
    instance_create(0, 0, obj_dialoguer)
    with (obj_dialoguer)
        side = 0
}
if (conversation == 23)
{
    sprite_index = spr_sans_r
    obj_papyrus_actor_mad.fun = false
    obj_papyrus_actor_mad.sprite_index = spr_papyrus_lt_mad
    global.faceemotion = 1
    global.facechoice = 4
    global.typer = 18
    global.msg[0] = scr_gettext("obj_darksans1_604")
    global.msg[1] = scr_gettext("obj_darksans1_605")
    global.msg[2] = scr_gettext("obj_darksans1_606")
    global.msg[3] = scr_gettext("obj_darksans1_607")
    global.msg[4] = scr_gettext("obj_darksans1_608")
    global.msg[5] = scr_gettext("obj_darksans1_609")
    conversation = 24
    instance_create(0, 0, obj_dialoguer)
    with (obj_dialoguer)
        side = 0
}
if (conversation == 24 && instance_exists(OBJ_WRITER) == 0)
{
    obj_papyrus_actor_mad.image_speed = 0.5
    obj_papyrus_actor_mad.sprite_index = obj_papyrus_actor_mad.rsprite
    obj_papyrus_actor_mad.hspeed = 4
    conversation = 25
}
if (conversation == 25)
{
    if (obj_papyrus_actor_mad.x > (obj_papyrus_actor_mad.xstart + 5))
    {
        obj_papyrus_actor_mad.sprite_index = spr_papyrus_l
        obj_papyrus_actor_mad.hspeed = -1
        obj_papyrus_actor_mad.image_speed = 0
        conversation = 26
    }
}
if (conversation == 26)
{
    if (obj_papyrus_actor_mad.x < (obj_papyrus_actor_mad.xstart - 50))
    {
        obj_papyrus_actor_mad.hspeed = 0
        obj_papyrus_actor_mad.sprite_index = spr_papyrus_lt
        obj_papyrus_actor_mad.image_index = 0
        global.faceemotion = 2
        global.facechoice = 4
        global.typer = 18
        global.msg[0] = scr_gettext("obj_darksans1_644")
        instance_create(0, 0, obj_dialoguer)
        conversation = 27
    }
}
if (conversation == 27 && instance_exists(OBJ_WRITER) == 0)
{
    obj_papyrus_actor_mad.hspeed = 1
    obj_papyrus_actor_mad.sprite_index = spr_papyrus_r
    conversation = 28
    hh = instance_create(0, 0, obj_musfadeout)
    hh.fadespeed = 0.01
}
if (conversation == 28)
{
    if (obj_papyrus_actor_mad.x > obj_papyrus_actor_mad.xstart)
    {
        global.faceemotion = 0
        global.facechoice = 3
        global.typer = 17
        global.msg[0] = scr_gettext("obj_darksans1_666")
        __view_set(9, view_current, obj_char)
        obj_char.cutscene = false
        instance_create(0, 0, obj_dialoguer)
        conversation = 29
    }
}
if (conversation == 29 && instance_exists(OBJ_WRITER) == 0)
{
    obj_char.solid = 0
    obj_char.y -= 60
    rememberx = obj_char.x
    obj_char.hspeed = -2
    obj_char_actor.hspeed = -2
    conversation = 30
}
if (conversation == 30 && instance_exists(obj_char))
{
    if (obj_char.x < (rememberx - 19))
    {
        obj_char.solid = 1
        obj_char.facing = 0
        global.facing = 0
        obj_char.hspeed = 0
        with (obj_char_actor)
            instance_destroy()
        obj_char.visible = true
        global.plot = 36
        global.interact = 0
        instance_create(80, 160, obj_stalkerflowey)
        instance_create(x, y, obj_sans_interactable1)
        instance_create(2380, 0, obj_sansbyetrigger)
        instance_create(2680, 0, obj_sansbyetrigger)
        conversation = 32
        trophy_unlock("tundra")
        instance_destroy()
    }
}
if (conversation == 50 && instance_exists(OBJ_WRITER) == 0)
{
    hh = instance_create(0, 0, obj_musfadeout)
    hh.fadespeed = 0.01
    global.interact = 1
    conversation = 51
    alarm[9] = 90
}
if (conversation == 52)
{
    sprite_index = spr_sans_r
    global.faceemotion = 0
    global.facechoice = 3
    global.typer = 17
    global.msc = 0
    global.msg[0] = scr_gettext("obj_darksans1_720")
    global.msg[1] = scr_gettext("obj_darksans1_721")
    instance_create(0, 0, obj_dialoguer)
    with (obj_dialoguer)
        side = 0
    conversation = 53
}
if (conversation == 53 && instance_exists(OBJ_WRITER) == 0)
{
    sprite_index = spr_sans_r
    pap = instance_create(room_width, (y - 12), obj_papyrus_actor_mad)
    pap.sprite_index = spr_papyrus_l_mad
    pap.direction = 180
    pap.speed = 4
    conversation = 54
}
if (conversation == 54)
{
    if (obj_papyrus_actor_mad.x <= (obj_papyrus_actor_mad.xstart - 180))
    {
        global.currentsong = global.currentsong2
        caster_loop(global.currentsong, 0.5, 1)
        obj_papyrus_actor_mad.speed = 0
        obj_papyrus_actor_mad.image_speed = 0
        obj_papyrus_actor_mad.sprite_index = spr_papyrus_lt_mad
        global.facechoice = 0
        global.faceemotion = 0
        global.typer = 5
        global.msc = 0
        scr_papface(0, 1)
        global.msg[1] = scr_gettext("obj_darksans1_750")
        scr_sansface(2, 2)
        global.msg[3] = scr_gettext("obj_darksans1_752")
        scr_papface(4, 0)
        global.msg[5] = scr_gettext("obj_darksans1_754")
        global.msg[6] = scr_gettext("obj_darksans1_755")
        instance_create(0, 0, obj_dialoguer)
        with (obj_dialoguer)
            side = 0
        conversation = 55
    }
}
if (conversation == 55 && instance_exists(OBJ_WRITER) == 0)
{
    obj_papyrus_actor_mad.image_speed = 0.5
    obj_papyrus_actor_mad.sprite_index = spr_papyrus_r
    obj_papyrus_actor_mad.hspeed = 4
    hh = instance_create(0, 0, obj_musfadeout)
    hh.fadespeed = 0.02
    conversation = 56
}
if (conversation == 56)
{
    if (obj_papyrus_actor_mad.x > obj_papyrus_actor_mad.xstart)
    {
        global.faceemotion = 0
        global.facechoice = 3
        global.typer = 17
        global.msg[0] = scr_gettext("obj_darksans1_780")
        __view_set(9, view_current, obj_char)
        obj_char.cutscene = false
        instance_create(0, 0, obj_dialoguer)
        with (obj_dialoguer)
            side = 0
        conversation = 58
    }
}
if (conversation == 58 && instance_exists(OBJ_WRITER) == 0)
{
    obj_char.facing = 0
    global.facing = 0
    obj_char.hspeed = 0
    with (obj_char_actor)
        instance_destroy()
    obj_char.visible = true
    global.plot = 36
    global.interact = 0
    instance_create(80, 160, obj_stalkerflowey)
    instance_create(x, y, obj_sans_interactable1)
    instance_create(2380, 0, obj_sansbyetrigger)
    instance_create(2680, 0, obj_sansbyetrigger)
    conversation = 59
    trophy_unlock("tundra")
    instance_destroy()
}
