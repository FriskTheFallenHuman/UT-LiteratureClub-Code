if global.charswap
    var char_name = ("_" + string(global.charswappedname))
else
    char_name = ""
if (global.mnfight == 3)
    attacked = 0
scr_blconmatch()
if (global.mnfight == 1)
{
    if (talked == false)
    {
        alarm[5] = 60
        alarm[6] = 1
        talked = true
        global.heard = 0
    }
}
if control_check_pressed(0)
{
    if (alarm[5] > 5 && obj_lborder.x == global.idealborder[0] && alarm[6] < 0)
        alarm[5] = 2
}
if (global.hurtanim[myself] == 1)
{
    shudder = 16
    alarm[3] = global.damagetimer
    global.hurtanim[myself] = 3
}
if (global.hurtanim[myself] == 2)
{
    global.monsterhp[myself] -= takedamage
    with (dmgwriter)
        alarm[2] = 15
    if (global.monsterhp[myself] >= 1)
    {
        global.hurtanim[myself] = 0
        sprite_index = spr_whimsun
        path_start(path_whimsun, 0.5, path_action_restart, 0)
        image_index = 0
        global.myfight = 0
        global.mnfight = 1
    }
    else
    {
        global.myfight = 0
        global.mnfight = 1
        killed = 1
        instance_destroy()
    }
}
if (global.hurtanim[myself] == 5)
{
    global.damage = 0
    instance_create(((x + (sprite_width / 2)) - 48), (y - 24), obj_dmgwriter)
    with (obj_dmgwriter)
        alarm[2] = 30
    global.myfight = 0
    global.mnfight = 1
    global.hurtanim[myself] = 0
}
if (global.mnfight == 2)
{
    if (attacked == 0)
    {
        global.turntimer = 100
        if (mycommand >= 0 && mycommand <= 50)
            script_execute(scr_rotategen, 10, 20, 634, obj_heart.x, (obj_heart.y + 42))
        else
            gen = instance_create(0, 0, obj_butterfly2gen)
        gen.myself = myself
        if (mycommand >= 0)
            global.msg[0] = scr_gettext("obj_whimsun_383")
        if (mycommand >= 30)
            global.msg[0] = scr_gettext("obj_whimsun_384")
        if (mycommand >= 70)
            global.msg[0] = scr_gettext("obj_whimsun_385")
        if (mycommand >= 90)
            global.msg[0] = scr_gettext("obj_whimsun_386")
        if (mercymod > 100)
            global.msg[0] = scr_gettext("obj_whimsun_387")
        if (global.monsterhp[myself] < global.monstermaxhp[myself])
            global.msg[0] = scr_gettext("obj_whimsun_388")
        attacked = 1
    }
}
if (whatiheard == 3 && instance_exists(OBJ_WRITER) == 0)
{
    script_execute(scr_mercystandard)
    if (mercy < 0)
        instance_destroy()
}
if (global.myfight == 2)
{
    if (whatiheard != -1)
    {
        if (global.heard == 0)
        {
            if (whatiheard == 0)
            {
                global.msc = 0
                global.msg[0] = scr_gettext("obj_whimsun_410")
                OBJ_WRITER.halt = 3
                iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
                with (iii)
                    halt = false
            }
            if (whatiheard == 3)
            {
                global.flag[131] = 1
                global.msc = 0
                global.msg[0] = scr_gettext(("obj_whimsun_419" + string(char_name)))
                OBJ_WRITER.halt = 3
                iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
                with (iii)
                    halt = false
            }
            if (whatiheard == 1)
            {
                global.msc = 0
                global.msg[0] = scr_gettext(("obj_whimsun_429" + string(char_name)))
                OBJ_WRITER.halt = 3
                iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
                with (iii)
                    halt = false
                mercymod = 101
            }
            global.heard = 1
        }
    }
}
if (global.myfight == 4)
{
    if (global.mercyuse == 0)
    {
        script_execute(scr_mercystandard)
        if (mercy < 0)
            instance_destroy()
    }
}