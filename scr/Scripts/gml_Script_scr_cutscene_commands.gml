if (_c == "delaycmd")
{
    delaycmd = instance_create(0, 0, obj_cutscene_delaycmd)
    delaycmd.master_object = master_object
    delaycmd.command_actor[0] = command_actor[i]
    delaycmd.alarm[0] = command_arg1[i]
    delaycmd._c = command_arg2[i]
    delaycmd.command_arg1[0] = command_arg3[i]
    delaycmd.command_arg2[0] = command_arg4[i]
    delaycmd.command_arg3[0] = command_arg5[i]
    delaycmd.command_arg4[0] = command_arg6[i]
    if instant
    {
        delaycmd.alarm[0] = 0
        delaycmd.instant = 1
        with (delaycmd)
            event_user(0)
    }
}
if (_c == "walk")
{
    if (!instant)
    {
        actor_move = instance_create(0, 0, obj_move_actor)
        actor_move.target = command_actor[i]
        actor_move.direction_word = command_arg1[i]
        actor_move.speed = command_arg2[i]
        actor_move.time = command_arg3[i]
        with (actor_move)
            event_user(8)
    }
    else
    {
        command_actor[i].x += lengthdir_x((command_arg2[i] * command_arg3[i]), ((scr_facing_letter_to_number(command_arg1[i]) * 90) - 90))
        command_actor[i].y += lengthdir_y((command_arg2[i] * command_arg3[i]), ((scr_facing_letter_to_number(command_arg1[i]) * 90) - 90))
    }
}
if (_c == "walkdirect")
{
    if (!instant)
    {
        actor_move = instance_create(0, 0, obj_move_to_point)
        actor_move.target = command_actor[i]
        actor_move.movex = command_arg1[i]
        actor_move.movey = command_arg2[i]
        actor_move.movemax = command_arg3[i]
        if (command_arg1[i] == obj_backgrounder_parent)
            actor_move.movex = command_actor[i].x
        if (command_arg2[i] == 0)
            actor_move.movey = command_actor[i].y
    }
    else
    {
        command_actor[i].x = command_arg1[i]
        command_actor[i].y = command_arg2[i]
    }
}
if (_c == "msgset")
    msgset(command_arg1[i], command_arg2[i])
if (_c == "msgnext")
    msgnext(command_arg1[i])
if (_c == "talk")
{
    if (!instant)
    {
        mydialoguer = instance_create(0, 0, obj_dialoguer)
        if (msgside >= 0)
            mydialoguer.side = msgside
        mydialoguer.zurasu = zurasu
    }
}
if (_c == "msgface")
    scr_anyface(command_arg1[i], command_arg2[i], command_arg3[i])
if (_c == "msgfacenext")
    scr_anyface_next(command_arg1[i], command_arg2[i])
if (_c == "msgside")
{
    if (command_arg1[i] == "any")
        msgside = -1
    if (command_arg1[i] == "top")
        msgside = 0
    if (command_arg1[i] == "bottom")
        msgside = 1
    if (command_arg1[i] == "zurasuon")
        zurasu = 1
    if (command_arg1[i] == "zurasuoff")
        zurasu = 0
}
if (_c == "emote")
{
    if (!instant)
    {
        command_actor[i].__arg0 = command_arg1[i]
        command_actor[i].__arg1 = command_arg2[i]
        command_actor[i].__arg2 = command_arg3[i]
        if (command_arg3[i] == obj_backgrounder_parent)
        {
            with (command_actor[i])
                scr_emote(__arg0, __arg1)
        }
        else
        {
            with (command_actor[i])
                scr_emote(__arg0, __arg1, __arg2)
        }
    }
}
if (_c == "speaker")
    scr_speaker(command_arg1[i])
if (_c == "fe")
{
    global.faceemotion = command_arg1[i]
    if (command_arg2[i] != -2)
        global.facechoice = command_arg2[i]
}
if (_c == "msc")
{
    global.msc = command_arg1[i]
    SCR_TEXT(global.msc)
}
if (_c == "instancecreate")
{
    _instance = instance_create(command_arg1[i], command_arg2[i], command_arg3[i])
    if i_ex(master_object)
        master_object.cutscene_instance = _instance
}
if (_c == "var")
{
    if instant
    {
        if (command_arg5[i] != 0)
        {
            command_arg3[i] = command_arg4[i]
            command_arg5[i] = 0
        }
    }
    __chosenid = 0
    if (command_arg1[i] == obj_backgrounder_parent)
        __chosenid = command_actor[i]
    else
        __chosenid = command_arg1[i]
    if (command_arg5[i] == 0)
        variable_instance_set(__chosenid, command_arg2[i], command_arg3[i])
    else if (command_arg6[i] == 0)
        scr_lerpvar_instance(__chosenid, command_arg2[i], command_arg3[i], command_arg4[i], command_arg5[i])
    else if (!is_string(command_arg6[i]))
        scr_lerpvar_instance(__chosenid, command_arg2[i], command_arg3[i], command_arg4[i], command_arg5[i], command_arg6[i], "in")
    else
    {
        var __easetype = real(string_digits(command_arg6[i]))
        if (string_char_at(command_arg6[i], 1) == "-")
        {
            __easetype *= -1
            command_arg6[i] = string_delete(command_arg6[i], 1, 1)
        }
        command_arg6[i] = string_delete(command_arg6[i], 1, 1)
        scr_lerpvar_instance(__chosenid, command_arg2[i], command_arg3[i], command_arg4[i], command_arg5[i], __easetype, command_arg6[i])
    }
}
if (_c == "script")
{
    if (command_arg3[i] != -10)
    {
        var __sarg1 = command_arg2[i]
        var __sarg2 = command_arg3[i]
        var __sarg3 = command_arg4[i]
        var __sarg4 = command_arg5[i]
        var __sarg5 = command_arg6[i]
        var __sarg_counted = 3
        if (command_arg4[i] == -3.14)
            __sarg_counted--
        if (command_arg5[i] == -3.14)
            __sarg_counted--
        if (command_arg6[i] == -3.14)
            __sarg_counted--
        if (command_arg3[i] == 0)
        {
            if (__sarg_counted == 0)
            {
                with (command_arg1[i])
                    script_execute(__sarg1)
            }
            if (__sarg_counted == 1)
            {
                with (command_arg1[i])
                    script_execute(__sarg1, __sarg3)
            }
            if (__sarg_counted == 2)
            {
                with (command_arg1[i])
                    script_execute(__sarg1, __sarg3, __sarg4)
            }
            if (__sarg_counted == 3)
            {
                with (command_arg1[i])
                    script_execute(__sarg1, __sarg3, __sarg4, __sarg5)
            }
        }
        else
        {
            if (__sarg_counted == 0)
            {
                with (command_arg1[i])
                    scr_script_repeat(__sarg1, -1, __sarg2)
            }
            if (__sarg_counted == 1)
            {
                with (command_arg1[i])
                    scr_script_repeat(__sarg1, -1, __sarg2, __sarg3)
            }
            if (__sarg_counted == 2)
            {
                with (command_arg1[i])
                    scr_script_repeat(__sarg1, -1, __sarg2, __sarg3, __sarg4)
            }
            if (__sarg_counted == 3)
            {
                with (command_arg1[i])
                    scr_script_repeat(__sarg1, -1, __sarg2, __sarg3, __sarg4, __sarg5)
            }
        }
    }
    else
    {
        var __commandtarget = command_arg1[i]
        var __commandscript = command_arg2[i]
        with (obj_script_delayed)
        {
            if (script == __commandscript && target == __commandtarget)
            {
                instance_destroy()
                alarm[0] = -5
                max_time = -300
            }
        }
    }
}
if (_c == "globalvar")
    variable_global_set(command_arg1[i], command_arg2[i])
if (_c == "autowalk")
{
    command_actor[i].auto_facing = command_arg1[i]
    command_actor[i].auto_walk = command_arg1[i]
}
if (_c == "autofacing")
    command_actor[i].auto_facing = command_arg1[i]
if (_c == "autodepth")
    command_actor[i].auto_depth = command_arg1[i]
if (_c == "depth")
    command_actor[i].depth = command_arg1[i]
if (_c == "depthobject")
    command_actor[i].depth = (command_arg1[i].depth + command_arg2[i])
if (_c == "flip")
{
    command_actor[i].__flipvalue = command_arg1[i]
    with (command_actor[i])
        scr_flip(__flipvalue)
}
if (_c == "facing")
{
    if (command_arg1[i] == "l" || command_arg1[i] == "d" || command_arg1[i] == "r" || command_arg1[i] == "u")
        scr_actor_facing(command_actor[i], command_arg1[i])
    else
    {
        command_actor[i]._setfacing = command_arg1[i]
        with (command_actor[i])
            scr_set_facing_sprites(_setfacing)
    }
}
if (_c == "halt")
{
    with (command_actor[i])
        scr_halt()
}
if (_c == "spin")
{
    if i_ex(command_actor[i])
        command_actor[i].spinspeed = command_arg1[i]
}
if (_c == "stick")
{
    if (command_arg1[i] == "on")
    {
        var _stickobj = command_arg2[i]
        var _stickdepth = command_arg3[i]
        with (command_actor[i])
            scr_stickto(_stickobj, _stickdepth)
    }
    else
    {
        with (command_actor[i])
            scr_stickto_stop()
    }
}
if (_c == "sprite")
    command_actor[i].sprite_index = command_arg1[i]
if (_c == "specialsprite")
{
    command_actor[i].sprite_index = command_actor[i].specialsprite[command_arg1[i]]
    command_actor[i].specialspriteno = command_arg1[i]
}
if (_c == "visible")
    command_actor[i].visible = command_arg1[i]
if (_c == "imagespeed")
    command_actor[i].image_speed = command_arg1[i]
if (_c == "imageindex")
    command_actor[i].image_index = command_arg1[i]
if (_c == "animate")
{
    if (i_ex(command_actor[i]) && (!instant))
    {
        command_actor[i].__arg0 = command_arg1[i]
        command_actor[i].__arg1 = command_arg2[i]
        command_actor[i].__arg2 = command_arg3[i]
        with (command_actor[i])
            scr_animate(__arg0, __arg1, __arg2)
    }
}
if (_c == "soundplay")
{
    if (!instant)
    {
        var _snd = snd_play(command_arg1[i], 0.85, 1)
        if (command_arg2[i] != 0)
            audio_sound_gain(_snd, command_arg2[i], 0)
        if (command_arg2[i] != 0)
            audio_sound_pitch(_snd, command_arg3[i])
    }
}
if (_c == "mus" || _c == "music")
{
    if (command_arg1[i] == "loop")
        caster_loop(global.currentsong, 0.75, 1)
    if (command_arg1[i] == "play")
        caster_play(global.currentsong, 0.85, 1)
    if (command_arg1[i] == "stop")
        caster_stop(global.currentsong)
    if (command_arg1[i] == "free_all")
        caster_free(-3)
    if (command_arg1[i] == "free")
        caster_free(global.currentsong)
    if (command_arg1[i] == "pause")
        caster_pause(global.currentsong)
    if (command_arg1[i] == "resume")
        caster_resume(global.currentsong)
    if (command_arg1[i] == "init")
        global.currentsong = caster_load(command_arg2[i])
    if (command_arg1[i] == "initplay")
    {
        global.currentsong = caster_load(command_arg2[i])
        caster_play(global.currentsong, 0.85, 1)
    }
    if (command_arg1[i] == "initloop")
    {
        global.currentsong = caster_load(command_arg2[i])
        caster_loop(global.currentsong, 0.75, 1)
    }
    if (command_arg1[i] == "volume")
        audio_sound_gain(global.currentsong, (command_arg2[i] * 0.75), ((command_arg3[i] * 1000) / fps))
    if (command_arg1[i] == "pitch")
        caster_set_pitch(global.currentsong, command_arg2[i])
    if (command_arg1[i] == "pitchtime")
        snd_pitch_time(global.currentsong, command_arg2[i], command_arg3[i])
    if (command_arg1[i] == "loopsfx")
        mysound = caster_loop(global.currentsong, 0.85, 1)
    if (command_arg1[i] == "loopsfxpitch")
        caster_set_pitch(mysound, command_arg2[i])
    if (command_arg1[i] == "loopsfxpitchtime")
        snd_pitch_time(mysound, command_arg2[i], command_arg3[i])
    if (command_arg1[i] == "loopsfxstop")
        caster_stop(mysound)
    if (command_arg1[i] == "loopsfxvolume")
        audio_sound_gain(mysound, (command_arg2[i] * 0.75), ((command_arg3[i] * 1000) / fps))
}
if (_c == "fadeout")
{
    if (command_arg1[i] > obj_backgrounder_parent)
    {
        __fadeouter = scr_fadeout(command_arg1[i])
        if (command_arg2[i] != 0)
            __fadeouter.image_blend = command_arg2[i]
    }
    else if (command_arg1[i] < obj_backgrounder_parent)
    {
        __fadeouter = scr_fadeout((-command_arg1[i]))
        if (command_arg2[i] != 0)
            __fadeouter.image_blend = command_arg2[i]
        __fadeouter.image_alpha = 1
        __fadeouter.fadetime = (-command_arg1[i])
        __fadeouter.fadeframe = 0
        __fadeouter.fadein = 1
    }
}
if (_c == "panspeed")
{
    if (!instant)
        scr_pan(command_arg1[i], command_arg2[i], command_arg3[i])
    else
    {
        camerax_set((camerax() + (command_arg1[i] * command_arg3[i])))
        cameray_set((cameray() + (command_arg2[i] * command_arg3[i])))
    }
}
if (_c == "pan")
{
    if (!instant)
        scr_pan_lerp(command_arg1[i], command_arg2[i], command_arg3[i])
    else
    {
        camerax_set(command_arg1[i])
        cameray_set(command_arg2[i])
    }
}
if (_c == "panobj")
{
    scr_pan_to_obj(command_arg1[i], command_arg2[i])
    if instant
    {
        with (obj_panner)
        {
            camerax_set(finalx)
            cameray_set(finaly)
            instance_destroy()
        }
    }
}
if (_c == "pannable")
{
    if instance_exists(obj_mainchara)
        obj_mainchara.cutscene = command_arg1[i]
    if instance_exists(obj_monika)
        obj_monika.cutscene = command_arg1[i]
}
if (_c == "shake")
{
    if (!instant)
        instance_create(0, 0, obj_shake)
}
if (_c == "shakex")
{
    if (!instant)
    {
        myshake = instance_create(0, 0, obj_shake)
        myshake.shakex = command_arg1[i]
        myshake.shakey = command_arg2[i]
        myshake.shakespeed = command_arg3[i]
    }
}
if (_c == "shakeobj")
{
    if (!instant)
    {
        with (command_actor[i])
            scr_shakeobj()
    }
}
if (_c == "jump")
{
    if i_ex(command_actor[i])
    {
        command_actor[i].__arg0 = command_arg1[i]
        command_actor[i].__arg1 = command_arg2[i]
        command_actor[i].__arg2 = command_arg3[i]
        command_actor[i].__arg3 = command_arg4[i]
        if (!instant)
        {
            with (command_actor[i])
                scr_jump_to_point(__arg0, __arg1, __arg2, __arg3)
        }
        else
        {
            command_actor[i].x = command_arg1[i]
            command_actor[i].y = command_arg2[i]
        }
    }
}
if (_c == "jumpinplace")
{
    if i_ex(command_actor[i])
    {
        command_actor[i].__arg0 = command_arg1[i]
        command_actor[i].__arg1 = command_arg2[i]
        if (!instant)
        {
            with (command_actor[i])
                scr_jump_in_place(__arg0, __arg1)
        }
    }
}
if (_c == "jumpsprite")
{
    if i_ex(command_actor[i])
    {
        command_actor[i].__arg0 = command_arg1[i]
        command_actor[i].__arg1 = command_arg2[i]
        command_actor[i].__arg2 = command_arg3[i]
        command_actor[i].__arg3 = command_arg4[i]
        command_actor[i].__arg4 = command_arg5[i]
        command_actor[i].__arg5 = command_arg6[i]
        if (!instant)
        {
            with (command_actor[i])
                scr_jump_to_point_sprite(__arg0, __arg1, __arg2, __arg3, __arg4, __arg5)
        }
        else
        {
            command_actor[i].x = command_arg1[i]
            command_actor[i].y = command_arg2[i]
        }
    }
}
if (_c == "addxy")
{
    command_actor[i].x += command_arg1[i]
    command_actor[i].y += command_arg2[i]
}
if (_c == "setxy")
{
    command_actor[i].x = command_arg1[i]
    command_actor[i].y = command_arg2[i]
}
if (_c == "arg_objectxy")
{
    command_arg1[(i + 1)] = (command_arg1[i].x + command_arg2[i])
    command_arg2[(i + 1)] = (command_arg1[i].y + command_arg3[i])
}
if (_c == "actortoobject")
{
    instance_create(command_actor[i].x, command_actor[i].y, command_arg1[i])
    command_actor[i].visible = false
}
if (_c == "actortomainchara")
{
    for (jjj = 0; jjj < 20; jjj++)
    {
        if global.charswap
        {
            if (actor_name[jjj] == "monika" && i_ex(actor_id[jjj]))
            {
                obj_monika.x = actor_id[jjj].x
                obj_monika.y = actor_id[jjj].y
                obj_monika.visible = true
                actor_id[jjj].visible = false
                if (actor_id[jjj].facing == "d")
                    global.facing = 0
                if (actor_id[jjj].facing == "r")
                    global.facing = 1
                if (actor_id[jjj].facing == "u")
                    global.facing = 2
                if (actor_id[jjj].facing == "l")
                    global.facing = 3
            }
        }
        else if (actor_name[jjj] == "mainchara" && i_ex(actor_id[jjj]))
        {
            obj_mainchara.x = actor_id[jjj].x
            obj_mainchara.y = actor_id[jjj].y
            obj_mainchara.visible = true
            actor_id[jjj].visible = false
            if (actor_id[jjj].facing == "d")
                global.facing = 0
            if (actor_id[jjj].facing == "r")
                global.facing = 1
            if (actor_id[jjj].facing == "u")
                global.facing = 2
            if (actor_id[jjj].facing == "l")
                global.facing = 3
        }
    }
}
if (_c == "saveload")
{
    if (command_arg1[i] == "save")
        scr_cutscene_savestate()
    if (command_arg1[i] == "load")
        scr_cutscene_loadstate()
}
if (_c == "select")
{
    actor_selected = actor_name[command_arg1[i]]
    actor_selected_id = actor_id[command_arg1[i]]
}
if (_c == "waitcustom")
{
    with (master_object)
        customcon = 1
    cs_wait_custom = 1
    waiting = 1
    breakme = 1
}
if (_c == "waitdialoguer")
{
    if (!instant)
    {
        waiting = 1
        cs_wait_dialogue = 1
        breakme = 1
    }
}
if (_c == "waitbox")
{
    if (!instant)
    {
        waiting = 1
        cs_wait_box = command_arg1[i]
        breakme = 1
    }
}
if (_c == "wait")
{
    cs_wait_amount = command_arg1[i]
    if instant
        cs_wait_amount = 1
    cs_wait_timer = 0
    waiting = 1
    breakme = 1
}
if (_c == "terminate")
{
    terminate_this_frame = 1
    breakme = 1
}
if (_c == "terminatekillactors")
{
    kill_actors = 1
    terminate_this_frame = 1
    breakme = 1
}
return;
