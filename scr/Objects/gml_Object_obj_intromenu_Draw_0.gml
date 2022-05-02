scr_setfont(fnt_maintext)
if (NAMING == 3)
{
    for (i = 0; i < 3; i += 1)
    {
        CONT_THIS = 0
        PREV_MENU = MENU_NO
        if (MENU_NO == 1)
            PREV_MENU = 0
        if (MENU_NO == 4)
            PREV_MENU = 3
        if (MENU_NO == 6)
            PREV_MENU = 5
        if (MENU_NO == 7)
            PREV_MENU = 5
        if (MENU_NO == 8)
            PREV_MENU = 10
        if (MENU_NO == 9)
            PREV_MENU = 10
        if (MENUCOORD[0] == i && MENU_NO == 1)
            CONT_THIS = 1
        if (MENUCOORD[3] == i && MENU_NO == 4)
            CONT_THIS = 4
        if (MENUCOORD[5] == i && MENU_NO == 6)
            CONT_THIS = 6
        if (MENUCOORD[5] == i && MENU_NO == 7)
            CONT_THIS = 7
        if (MENUCOORD[10] == i && MENU_NO == 8)
            CONT_THIS = 8
        if (MENUCOORD[10] == i && MENU_NO == 9)
            CONT_THIS = 9
        BOX_X1 = 55
        BOX_Y1 = (55 + ((YL + YS) * i))
        BOX_X2 = (55 + XL)
        BOX_Y2 = ((55 + ((YL + YS) * i)) + YL)
        draw_set_alpha(0.5)
        draw_set_color(c_black)
        draw_rectangle(BOX_X1, BOX_Y1, BOX_X2, BOX_Y2, false)
        draw_set_alpha(1)
        draw_set_color(global.COL_A)
        if (MENUCOORD[PREV_MENU] == i)
            draw_set_color(global.COL_B)
        if (MENU_NO == 3 || MENU_NO == 4)
        {
            if (MENUCOORD[2] == i)
                draw_set_color(global.COL_PLUS)
        }
        if (MENU_NO == 7 && MENUCOORD[5] == i)
            draw_set_color(c_red)
        if (MENU_NO == 9 && MENUCOORD[10] == i)
            draw_set_color(c_red)
        draw_rectangle(BOX_X1, BOX_Y1, BOX_X2, BOX_Y2, true)
        if (global.TYPE == 1)
        {
            for (j = 0; j < 4; j += 1)
                draw_rectangle((BOX_X1 - (0.5 * j)), (BOX_Y1 - (0.5 * j)), (BOX_X2 + (0.5 * j)), (BOX_Y2 + (0.5 * j)), true)
        }
        if (CONT_THIS < 4)
        {
            if (FILE[i] == 0)
                scr_setfont(fnt_maintext)
            draw_text_shadow((BOX_X1 + 25), (BOX_Y1 + 5), NAME[i])
            scr_setfont(fnt_maintext)
            draw_set_halign(fa_center)
            draw_text_shadow((BOX_X1 + 115), (BOX_Y1 + 5), scr_gettext("save_menu_lv", string(LEVEL[i])))
            draw_set_halign(fa_right)
            draw_text_shadow((BOX_X1 + 180), (BOX_Y1 + 5), TIME_STRING[i])
            draw_set_halign(fa_left)
        }
        if (CONT_THIS >= 1)
        {
            if (global.TYPE == 0)
            {
                if (MENU_NO == 1)
                {
                    SELTEXT_A = scr_gettext("mainmenu_continue")
                    SELTEXT_B = scr_gettext("mainmenu_back")
                    SELTEXT_C = " "
                    if (FILE[MENUCOORD[0]] == 0)
                    {
                        SELTEXT_A = scr_gettext("mainmenu_begin")
                        SELTEXT_B = scr_gettext("mainmenu_back")
                    }
                }
                if (MENU_NO == 4)
                {
                    SELTEXT_A = scr_gettext("mainmenu_confirmation_overwrite_yes")
                    SELTEXT_B = scr_gettext("mainmenu_confirmation_overwrite_no")
                    SELTEXT_C = scr_gettext("mainmenu_confirmation_overwrite")
                }
                if (MENU_NO == 6)
                {
                    SELTEXT_A = scr_gettext("mainmenu_confirmation_erase_yes")
                    SELTEXT_B = scr_gettext("mainmenu_confirmation_erase_no")
                    SELTEXT_C = scr_gettext("mainmenu_confirmation_erase")
                }
                if (MENU_NO == 7)
                {
                    SELTEXT_A = scr_gettext("mainmenu_confirmation_final_erase_yes")
                    SELTEXT_B = scr_gettext("mainmenu_confirmation_final_erase_no")
                    SELTEXT_C = scr_gettext("mainmenu_confirmation_final_erase")
                }
                if (MENU_NO == 8)
                {
                    SELTEXT_A = scr_gettext("mainmenu_confirmation_erase_yes")
                    SELTEXT_B = scr_gettext("mainmenu_confirmation_erase_no")
                    SELTEXT_C = scr_gettext("mainmenu_confirmation_reset")
                }
                if (MENU_NO == 9)
                {
                    SELTEXT_A = scr_gettext("mainmenu_confirmation_final_reset_yes")
                    SELTEXT_B = scr_gettext("mainmenu_confirmation_final_erase_no")
                    SELTEXT_C = scr_gettext("mainmenu_confirmation_final_reset")
                }
            }
            else
            {
                if (MENU_NO == 1)
                {
                    SELTEXT_A = scr_gettext("mainmenu_continue_real")
                    SELTEXT_B = scr_gettext("mainmenu_back_real")
                    if (FILE[MENUCOORD[0]] == 0)
                    {
                        SELTEXT_A = scr_gettext("mainmenu_begin_real")
                        SELTEXT_B = scr_gettext("mainmenu_back_real")
                    }
                }
                if (MENU_NO == 4)
                {
                    SELTEXT_A = scr_gettext("mainmenu_confirmation_overwrite_yes_real")
                    SELTEXT_B = scr_gettext("mainmenu_confirmation_overwrite_no_real")
                    SELTEXT_C = scr_gettext("mainmenu_confirmation_overwrite_real")
                }
                if (MENU_NO == 6)
                {
                    SELTEXT_A = scr_gettext("mainmenu_confirmation_erase_yes_real")
                    SELTEXT_B = scr_gettext("mainmenu_confirmation_erase_no_real")
                    SELTEXT_C = scr_gettext("mainmenu_confirmation_erase_real")
                }
                if (MENU_NO == 7)
                {
                    SELTEXT_A = scr_gettext("mainmenu_confirmation_final_erase_yes_real")
                    SELTEXT_B = scr_gettext("mainmenu_confirmation_final_erase_no_real")
                    SELTEXT_C = scr_gettext("mainmenu_confirmation_final_erase_real")
                }
                if (MENU_NO == 8)
                {
                    SELTEXT_A = scr_gettext("mainmenu_confirmation_erase_yes_real")
                    SELTEXT_B = scr_gettext("mainmenu_confirmation_erase_no_real")
                    SELTEXT_C = scr_gettext("mainmenu_confirmation_reset_real")
                }
                if (MENU_NO == 9)
                {
                    SELTEXT_A = scr_gettext("mainmenu_confirmation_final_erase_yes_real")
                    SELTEXT_B = scr_gettext("mainmenu_confirmation_final_erase_no_real")
                    SELTEXT_C = scr_gettext("mainmenu_confirmation_final_reset_real")
                }
            }
            draw_set_color(global.COL_B)
            if (MENU_NO == 7 || MENU_NO == 9)
                draw_set_color(c_red)
            draw_text_shadow((BOX_X1 + 25), (BOX_Y1 + 5), SELTEXT_C)
            draw_set_color(global.COL_A)
            if (MENUCOORD[MENU_NO] == 0)
            {
                draw_set_color(global.COL_B)
                HEARTX = 75
                HEARTY = (81 + ((YL + YS) * MENUCOORD[PREV_MENU]))
            }
            draw_text_shadow((BOX_X1 + 35), (BOX_Y1 + 22), SELTEXT_A)
            draw_set_color(global.COL_A)
            if (MENUCOORD[MENU_NO] == 1)
            {
                draw_set_color(global.COL_B)
                HEARTX = 165
                HEARTY = (81 + ((YL + YS) * MENUCOORD[PREV_MENU]))
            }
            draw_text_shadow((BOX_X1 + 125), (BOX_Y1 + 22), SELTEXT_B)
        }
        else
            draw_text_shadow((BOX_X1 + 25), (BOX_Y1 + 22), PLACE[i])
    }
    if (MENU_NO >= 0)
    {
        if (MENU_NO == 0 || MENU_NO == 2 || MENU_NO == 3 || MENU_NO == 5 || MENU_NO == 10)
        {
            if (MENUCOORD[MENU_NO] >= 0 && MENUCOORD[MENU_NO] <= 2)
            {
                HEARTX = 65
                HEARTY = (72 + ((YL + YS) * MENUCOORD[MENU_NO]))
            }
            if (MENUCOORD[MENU_NO] == 3)
            {
                HEARTX = 65
                HEARTY = 195
            }
            if (MENUCOORD[MENU_NO] == 4)
            {
                HEARTX = 115
                HEARTY = 195
            }
            if (MENUCOORD[MENU_NO] == 5)
            {
                HEARTX = 175
                HEARTY = 195
            }
            if (MENUCOORD[MENU_NO] == 6)
            {
                HEARTX = 110
                HEARTY = 210
            }
        }
        if (MENU_NO >= 2)
        {
            CANCELTEXT = scr_gettext("mainmenu_cancel")
            if (global.TYPE == 1)
                CANCELTEXT = scr_gettext("mainmenu_cancel_real")
            draw_set_color(global.COL_A)
            if (MENUCOORD[PREV_MENU] == 3)
                draw_set_color(global.COL_B)
            draw_text_shadow(80, 190, CANCELTEXT)
        }
        if (MENU_NO == 0 || MENU_NO == 1)
        {
            COPYTEXT = scr_gettext("mainmenu_copy2")
            ERASETEXT = scr_gettext("mainmenu_erase2")
            RESETTEXT = scr_gettext("mainmenu_reset2")
            SETTINGSTEXT = scr_gettext("settings_title")
            if (global.TYPE == 1)
            {
                COPYTEXT = scr_gettext("mainmenu_copy2_real")
                ERASETEXT = scr_gettext("mainmenu_erase2_real")
                RESETTEXT = scr_gettext("mainmenu_reset2_real")
                SETTINGSTEXT = scr_gettext("settings_title_real")
            }
            draw_set_color(global.COL_A)
            if (MENUCOORD[0] == 3)
                draw_set_color(global.COL_B)
            draw_text_shadow(80, 190, COPYTEXT)
            draw_set_color(global.COL_A)
            if (MENUCOORD[0] == 4)
                draw_set_color(global.COL_B)
            draw_text_shadow(130, 190, ERASETEXT)
            draw_set_color(global.COL_A)
            if (MENUCOORD[0] == 5)
                draw_set_color(global.COL_B)
            draw_text_shadow(190, 190, RESETTEXT)
            draw_set_color(global.COL_A)
            if (MENUCOORD[0] == 6)
                draw_set_color(global.COL_B)
            draw_text_shadow(125, 205, SETTINGSTEXT)
        }
        if (MESSAGETIMER <= 0)
        {
            if (global.TYPE == 0)
            {
                if (MENU_NO == 0 || MENU_NO == 1)
                    TEMPCOMMENT = " "
                if (MENU_NO == 2)
                    TEMPCOMMENT = scr_gettext("mainmenu_copy_target_01")
                if (MENU_NO == 3)
                    TEMPCOMMENT = scr_gettext("mainmenu_copy_target_02")
                if (MENU_NO == 4)
                    TEMPCOMMENT = scr_gettext("mainmenu_copy_target_done")
                if (MENU_NO == 5 || MENU_NO == 6 || MENU_NO == 7)
                    TEMPCOMMENT = scr_gettext("mainmenu_erase_target")
                if (MENU_NO == 8 || MENU_NO == 9 || MENU_NO == 10)
                    TEMPCOMMENT = scr_gettext("mainmenu_reset_target")
            }
            if (global.TYPE == 1)
            {
                if (MENU_NO == 0 || MENU_NO == 1)
                    TEMPCOMMENT = scr_gettext("mainmenu_copy_target_file_real")
                if (MENU_NO == 2)
                    TEMPCOMMENT = scr_gettext("mainmenu_copy_target_01_real")
                if (MENU_NO == 3)
                    TEMPCOMMENT = scr_gettext("mainmenu_copy_target_02_real")
                if (MENU_NO == 4)
                    TEMPCOMMENT = scr_gettext("mainmenu_copy_target_done_real")
                if (MENU_NO == 5 || MENU_NO == 6 || MENU_NO == 7)
                    TEMPCOMMENT = scr_gettext("mainmenu_erase_target_real")
                if (MENU_NO == 8 || MENU_NO == 9 || MENU_NO == 10)
                    TEMPCOMMENT = scr_gettext("mainmenu_reset_target_real")
            }
        }
        draw_set_color(global.COL_B)
        draw_text_shadow(40, 30, TEMPCOMMENT)
        MESSAGETIMER -= 1
    }
    if (abs((HEARTX - HEARTXCUR)) <= 2)
        HEARTXCUR = HEARTX
    if (abs((HEARTY - HEARTYCUR)) <= 2)
        HEARTYCUR = HEARTY
    HEARTXCUR += ((HEARTX - HEARTXCUR) / 2)
    HEARTYCUR += ((HEARTY - HEARTYCUR) / 2)
    draw_sprite_ext(spr_heartsmall, 0, HEARTXCUR, HEARTYCUR, image_xscale, image_yscale, image_angle, scr_char_files_soulindex(string(global.charsoulcolor)), image_alpha)
    scr_setfont(fnt_small)
    scr_drawtext_centered(160, 225, (("UNDERTALE v" + global.version_undertale) + " (C) Toby Fox 2015-2018"))
    scr_drawtext_centered(160, 232, (("UNDERTALE: Literature Club v" + global.version) + " UTLC TEAM 2021-2022"))
    scr_setfont(fnt_maintext)
}
