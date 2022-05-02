buffer -= 1
restart -= 1
if (active == true && win == 0)
{
    if (buffer <= 0)
    {
        blt = 0
        if instance_exists(obj_shotguy)
            blt = 1
        if (control_check_pressed(0) && ammo > 0 && buffer <= 0)
        {
            ammo -= 1
            buffer = 4
            instance_create(x, y, obj_shotguy)
        }
        if (keyboard_check_pressed(vk_right) && blt == 0 && buffer <= 0)
        {
            buffer = 4
            event_user(0)
        }
        if (keyboard_check_pressed(vk_left) && blt == 0 && buffer <= 0)
        {
            buffer = 4
            event_user(1)
        }
        if (keyboard_check_pressed(vk_up) && blt == 0 && buffer <= 0)
        {
            buffer = 4
            event_user(2)
        }
        if (keyboard_check_pressed(vk_down) && blt == 0 && buffer <= 0)
        {
            buffer = 4
            event_user(3)
        }
        if (control_check_pressed(1) && buffer <= 0 && instance_exists(obj_shotguy) == 0)
        {
            active = false
            alarm[2] = 2
            alarm[1] = 12
            buffer = 15
            alarm[3] = 1
        }
        if (ammo == 0 && instance_exists(obj_shotguy) == 0 && buffer <= 0 && active == true)
        {
            if instance_exists(obj_targetguy)
            {
                if (obj_targetguy.defeat == 0)
                {
                    restart = 20
                    rstype = random(100)
                    buffer = 20
                    alarm[2] = 2
                    alarm[1] = 12
                }
            }
        }
    }
}
if (myinteract == 1 && win == 0)
{
    ammo = 0
    buffer = 10
    alarm[5] = 1
    global.interact = 1
    myinteract = 2
    global.facing = 2
    active = true
}
snd = 0
if (win == 1 && active == true)
{
    wintimer += 1
    if (wintimer == 50)
        snd_play(snd_dumbvictory)
    if (wintimer > 100)
    {
        if (room == room_fire_shootguy_1)
            global.flag[375] = 1
        if (room == room_fire_shootguy_2)
            global.flag[374] = 1
        if (room == room_fire_shootguy_3)
            global.flag[399] = 1
        if (room == room_fire_shootguy_4)
            global.flag[400] = 1
        if (room == room_fire_shootguy_5)
            global.flag[418] = 1
        global.interact = 0
        wintimer = 0
        win = 2
        myinteract = 0
        global.facing = 0
        active = false
        scr_tempsave()
    }
}
