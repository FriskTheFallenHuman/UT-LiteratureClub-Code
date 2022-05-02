if (global.hp <= 0)
{
    script_execute(scr_gameoverb)
    return;
}
buffer += 1
if (global.interact == 5)
{
    currentmenu = global.menuno
    if (global.menuno < 6)
        currentspot = global.menucoord[global.menuno]
    if (global.menuno == 4)
    {
        if (global.menucoord[4] >= 2)
        {
            if control_check_pressed(0)
            {
                global.menuno = -1
                global.interact = 0
                global.menucoord[4] = 0
                control_clear(0)
            }
        }
        if (keyboard_check_pressed(vk_left) || keyboard_check_pressed(vk_right))
        {
            if (global.menucoord[4] < 2)
            {
                if (global.menucoord[4] == 1)
                    global.menucoord[4] = 0
                else
                    global.menucoord[4] = 1
                keyboard_clear(vk_left)
                keyboard_clear(vk_right)
            }
        }
        if (control_check_pressed(0) && global.menucoord[4] == 0)
        {
            snd_play(snd_save)
            script_execute(scr_save)
            global.menucoord[4] = 2
            control_clear(0)
        }
        if (control_check_pressed(0) && global.menucoord[4] == 1)
        {
            global.menuno = -1
            global.interact = 0
            global.menucoord[4] = 0
            control_clear(0)
        }
        if control_check_pressed(1)
        {
            global.menuno = -1
            global.interact = 0
            global.menucoord[4] = 0
            control_clear(1)
        }
    }
    if control_check_pressed(0)
    {
        if (global.menuno == 5)
        {
            if (global.menucoord[5] == 0)
            {
                global.menuno = 9
                script_execute(scr_itemuseb, global.menucoord[1], global.item[global.menucoord[1]])
            }
            if (global.menucoord[5] == 1)
            {
                global.menuno = 9
                script_execute(scr_itemdesc, global.item[global.menucoord[1]])
                script_execute(scr_writetext, 0, "x", 0, 0)
            }
            if (global.menucoord[5] == 2)
            {
                global.menuno = 9
                dontthrow = 0
                if (global.item[global.menucoord[1]] != 23 && global.item[global.menucoord[1]] != 27 && global.item[global.menucoord[1]] != 54 && global.item[global.menucoord[1]] != 56 && global.item[global.menucoord[1]] != 57)
                    script_execute(scr_writetext, 12, "x", 0, 0)
                else
                {
                    if (global.item[global.menucoord[1]] == 23)
                        script_execute(scr_writetext, 23, "x", 0, 0)
                    if (global.item[global.menucoord[1]] == 27)
                    {
                        script_execute(scr_writetext, 0, scr_gettext("item_drop_27"), 0, 0)
                        if instance_exists(obj_rarependant)
                        {
                            with (obj_rarependant)
                                con = 1
                        }
                    }
                    if (global.item[global.menucoord[1]] == 54)
                    {
                        script_execute(scr_writetext, 0, scr_gettext("item_drop_54"), 0, 0)
                        dontthrow = 1
                    }
                    if (global.item[global.menucoord[1]] == 56)
                    {
                        if (!instance_exists(obj_undyne_friendc))
                        {
                            script_execute(scr_writetext, 0, scr_gettext("item_drop_56"), 0, 0)
                            global.flag[494] = 1
                        }
                        else
                        {
                            global.faceemotion = 1
                            script_execute(scr_writetext, 0, scr_gettext("item_drop_56_undyne"), 5, 37)
                            dontthrow = 1
                        }
                    }
                    if (global.item[global.menucoord[1]] == 57)
                    {
                        script_execute(scr_writetext, 0, scr_gettext("item_drop_57"), 0, 0)
                        dontthrow = 1
                    }
                }
                if (dontthrow == 0)
                    script_execute(scr_itemshift, global.menucoord[1], 0)
            }
        }
        if (global.menuno == 3)
        {
            global.menuno = 9
            script_execute(scr_itemuseb, global.menucoord[3], global.phone[global.menucoord[3]])
        }
        if (global.menuno == 6)
        {
            global.menuno = 9
            script_execute(scr_storageget, global.item[global.menucoord[6]], 300)
            if (noroom == 0)
            {
                script_execute(scr_writetext, 16, "x", 0, 0)
                script_execute(scr_itemshift, global.menucoord[6], 0)
            }
            else
                script_execute(scr_writetext, 19, "x", 0, 0)
        }
        if (global.menuno == 7)
        {
            global.menuno = 9
            script_execute(scr_itemget, global.flag[(global.menucoord[7] + 300)])
            if (noroom == 0)
            {
                script_execute(scr_writetext, 17, "x", 0, 0)
                scr_storageshift(global.menucoord[7], 0, 300)
            }
            else
                script_execute(scr_writetext, 18, "x", 0, 0)
        }
        if (global.menuno == 1)
        {
            global.menuno = 5
            global.menucoord[5] = 0
        }
        if (global.menuno == 0)
            global.menuno += (global.menucoord[0] + 1)
        if (global.menuno == 3)
        {
            script_execute(scr_phonename)
            global.menucoord[3] = 0
        }
        if (global.menuno == 1)
        {
            if (global.item[0] != 0)
            {
                global.menucoord[1] = 0
                script_execute(scr_itemname)
            }
            else
                global.menuno = 0
        }
    }
    if keyboard_check_pressed(vk_up)
    {
        if (global.menuno == 1)
        {
            if (global.menucoord[1] != 0)
                global.menucoord[1] -= 1
        }
        if (global.menuno == 3)
        {
            if (global.menucoord[3] != 0)
                global.menucoord[3] -= 1
        }
        if (global.menuno == 6)
        {
            if (global.menucoord[6] != 0)
                global.menucoord[6] -= 1
        }
        if (global.menuno == 7)
        {
            if (global.menucoord[7] != 0)
                global.menucoord[7] -= 1
        }
    }
    if keyboard_check_pressed(vk_down)
    {
        if (global.menuno == 1)
        {
            if (global.menucoord[1] != 7)
            {
                if (global.item[(global.menucoord[1] + 1)] != 0)
                    global.menucoord[1] += 1
            }
        }
        if (global.menuno == 3)
        {
            if (global.menucoord[3] != 7)
            {
                if (global.phone[(global.menucoord[3] + 1)] != 0)
                    global.menucoord[3] += 1
            }
        }
        if (global.menuno == 6)
        {
            if (global.menucoord[6] != 7)
            {
                if (global.item[(global.menucoord[6] + 1)] != 0)
                    global.menucoord[6] += 1
            }
        }
        if (global.menuno == 7)
        {
            if (global.menucoord[7] != 9)
            {
                if (global.flag[(global.menucoord[7] + 301)] != 0)
                    global.menucoord[7] += 1
            }
        }
    }
    if (control_check_pressed(1) && buffer >= 0)
    {
        if (global.menuno == 0)
        {
            global.menuno = -1
            global.interact = 0
        }
        else if (global.menuno <= 3)
            global.menuno = 0
        if (global.menuno == 5)
            global.menuno = 1
    }
    if keyboard_check_pressed(vk_right)
    {
        if (global.menuno == 0)
        {
            if (global.menucoord[0] != 2)
            {
                if (global.menuchoice[(global.menucoord[0] + 1)] != 0)
                    global.menucoord[0] += 1
            }
        }
        if (global.menuno == 5)
        {
            if (global.menucoord[5] != 2)
                global.menucoord[5] += 1
        }
    }
    if keyboard_check_pressed(vk_left)
    {
        if (global.menuno == 0)
        {
            if (global.menucoord[0] != 0)
                global.menucoord[0] -= 1
        }
        if (global.menuno == 5)
        {
            if (global.menucoord[5] != 0)
                global.menucoord[5] -= 1
        }
    }
    if control_check_pressed(2)
    {
        if (global.menuno == 0)
        {
            global.menuno = -1
            global.interact = 0
        }
    }
    if (currentmenu < global.menuno && global.menuno != 9)
        snd_play(snd_select)
    else if (global.menuno >= 0 && global.menuno < 6)
    {
        if (currentspot != global.menucoord[global.menuno])
            snd_play(snd_squeak)
    }
}
if (global.menuno == 9 && instance_exists(obj_dialoguer) == 0)
{
    global.menuno = -1
    global.interact = 0
}
