if (global.interact == 5)
{
    currentmenu = global.menuno
    if (global.menuno < 6)
        currentspot = global.menucoord[global.menuno]
    xx = __view_get(0, view_current)
    yy = (__view_get(1, view_current) + 10)
    moveyy = yy
    if (obj_mainchara.y > (yy + 120))
        moveyy += 135
    if (global.menuno != 4)
    {
        var hack_drawing = 1
        if instance_exists(obj_dialoguer)
            hack_drawing = 0
        if hack_drawing
            draw_sprite_ext(spr_phone, 0, (15 + xx), (50 + yy), 1, 1, 0, c_white, 1)
        if (global.menuno == 1 || global.menuno == 5 || global.menuno == 6)
        {
            draw_9slice((30 + xx), (16 + yy), 266, 196, 2896, 1)
            draw_sprite_ext(spr_stats_menu, 0, (40 + xx), (17 + yy), 0.5, 0.5, 0, c_white, 1)
        }
        if (global.menuno == 2)
        {
            draw_9slice((30 + xx), (16 + yy), 280, 200, 2896, 1)
            draw_sprite_ext(spr_stats_menu, 0, (40 + xx), (17 + yy), 0.5, 0.5, 0, c_white, 1)
        }
        if (global.menuno == 3)
        {
            draw_9slice((30 + xx), (16 + yy), 266, 170, 2896, 1)
            draw_sprite_ext(spr_stats_menu, 0, (40 + xx), (17 + yy), 0.5, 0.5, 0, c_white, 1)
        }
        if (global.menuno == 7)
            ossafe_fill_rectangle((94 + xx), (16 + yy), (266 + xx), (216 + yy))
        if (global.menuno == 7)
            ossafe_fill_rectangle((97 + xx), (19 + yy), (263 + xx), (213 + yy))
        if (global.menuno == 2 || global.menuno == 1 || global.menuno == 5 || global.menuno == 3 || global.menuno == 7 || global.menuno == 6)
            hack_drawing = 0
        if hack_drawing
        {
            scr_setfont(fnt_maintext)
            draw_set_color(c_white)
            var xx0 = xx
            var irl_time = date_time_string(date_current_datetime())
            draw_text((30 + xx0), (80 + yy), string_hash_to_newline(irl_time))
            scr_setfont(fnt_small)
            var irl_date = date_date_string(date_current_datetime())
            draw_text((43 + xx0), (100 + yy), string_hash_to_newline(irl_date))
            if (global.item[0] == 0)
                draw_sprite_ext(spr_phone_stats, 1, (30 + xx0), (173 + yy), 1, 1, 0, c_white, 1)
            if (global.menuchoice[0] == 1)
                draw_sprite_ext(spr_phone_stats, 0, (30 + xx0), (173 + yy), 1, 1, 0, c_white, 1)
            if (global.menuchoice[1] == 1)
                draw_sprite_ext(spr_phone_items, 0, (55 + xx0), (173 + yy), 1, 1, 0, c_white, 1)
            if (global.menuchoice[2] == 1)
                draw_sprite_ext(spr_phone_cell, 0, (80 + xx0), (173 + yy), 1, 1, 0, c_white, 1)
        }
        draw_set_color(c_white)
        scr_setfont(fnt_maintext)
        if (global.menuno == 1 || global.menuno == 5)
        {
            draw_set_color(c_black)
            for (i = 0; i < 8; i += 1)
                draw_text((116 + xx), ((50 + yy) + (i * 16)), string_hash_to_newline(global.itemname[i]))
            draw_text((116 + xx), (190 + yy), string_hash_to_newline(scr_gettext("item_menu_use")))
            draw_text(((116 + xx) + 48), (190 + yy), string_hash_to_newline(scr_gettext("item_menu_info")))
            draw_text(((116 + xx) + 105), (190 + yy), string_hash_to_newline(scr_gettext("item_menu_drop")))
        }
    }
    if (global.menuno == 3)
    {
        draw_set_color(c_black)
        for (i = 0; i < 7; i += 1)
            draw_text((116 + xx), ((50 + yy) + (i * 16)), string_hash_to_newline(global.phonename[i]))
    }
    if (global.menuno == 6)
    {
        draw_set_color(c_black)
        scr_itemname()
        for (i = 0; i < 8; i += 1)
            draw_text((116 + xx), ((30 + yy) + (i * 16)), string_hash_to_newline(global.itemname[i]))
    }
    if (global.menuno == 7)
    {
        scr_storagename(300)
        for (i = 0; i < 10; i += 1)
            draw_text((116 + xx), ((30 + yy) + (i * 16)), string_hash_to_newline(global.itemname[i]))
    }
    if (global.menuno == 2)
    {
        var stat_x = (108 + xx)
        if (global.language == "ja")
            stat_x -= 3
        var exp_x = (stat_x + 84)
        var kills_x = exp_x
        var lv_y = (42 + yy)
        var hp_y = (58 + yy)
        var at_y = (90 + yy)
        var df_y = (106 + yy)
        var weapon_y = (136 + yy)
        var armor_y = (152 + yy)
        var gold_y = (172 + yy)
        var kills_y = (172 + yy)
        if (global.language == "ja")
        {
            weapon_y -= 2
            gold_y += 2
            kills_y += 2
        }
        draw_set_color(c_white)
        draw_text_transformed((50 + xx), (165 + yy), string_hash_to_newline(scr_gettext("stat_menu_name")), 2, 2, 90)
        draw_set_color(c_black)
        draw_text(stat_x, lv_y, string_hash_to_newline(scr_gettext("stat_menu_lv", string(global.lv))))
        draw_text(stat_x, hp_y, string_hash_to_newline(scr_gettext("stat_menu_hp", string(global.hp), string(global.maxhp))))
        draw_text(stat_x, at_y, string_hash_to_newline(scr_gettext("stat_menu_at", string((global.at - 10)), string(global.wstrength))))
        draw_text(stat_x, df_y, string_hash_to_newline(scr_gettext("stat_menu_df", string((global.df - 10)), string(global.adef))))
        draw_text(stat_x, weapon_y, string_hash_to_newline(scr_gettext("stat_menu_weapon", scr_gettext(("item_name_" + string(global.weapon))))))
        var armorname = scr_gettext(("item_name_" + string(global.armor)))
        if (global.armor == 64)
            armorname = scr_gettext("stat_armor_temmie")
        draw_text(stat_x, armor_y, string_hash_to_newline(scr_gettext("stat_menu_armor", armorname)))
        draw_text(stat_x, gold_y, string_hash_to_newline(scr_gettext("stat_menu_gold")))
        if (global.kills > 20)
            draw_text(kills_x, kills_y, string_hash_to_newline(scr_gettext("stat_menu_kills", string(global.kills))))
        draw_text(exp_x, at_y, string_hash_to_newline(scr_gettext("stat_menu_exp", string(global.xp))))
        if (global.lv == 1)
            nextlevel = (10 - global.xp)
        if (global.lv == 2)
            nextlevel = (30 - global.xp)
        if (global.lv == 3)
            nextlevel = (70 - global.xp)
        if (global.lv == 4)
            nextlevel = (120 - global.xp)
        if (global.lv == 5)
            nextlevel = (200 - global.xp)
        if (global.lv == 6)
            nextlevel = (300 - global.xp)
        if (global.lv == 7)
            nextlevel = (500 - global.xp)
        if (global.lv == 8)
            nextlevel = (800 - global.xp)
        if (global.lv == 9)
            nextlevel = (1200 - global.xp)
        if (global.lv == 10)
            nextlevel = (1700 - global.xp)
        if (global.lv == 11)
            nextlevel = (2500 - global.xp)
        if (global.lv == 12)
            nextlevel = (3500 - global.xp)
        if (global.lv == 13)
            nextlevel = (5000 - global.xp)
        if (global.lv == 14)
            nextlevel = (7000 - global.xp)
        if (global.lv == 15)
            nextlevel = (10000 - global.xp)
        if (global.lv == 16)
            nextlevel = (15000 - global.xp)
        if (global.lv == 17)
            nextlevel = (25000 - global.xp)
        if (global.lv == 18)
            nextlevel = (50000 - global.xp)
        if (global.lv == 19)
            nextlevel = (99999 - global.xp)
        if (global.lv >= 20)
            nextlevel = 0
        draw_text(exp_x, df_y, string_hash_to_newline(scr_gettext("stat_menu_next", string(nextlevel))))
    }
    if (global.menuno == 4)
    {
        iniread = ossafe_ini_open("undertale.ini")
        name = ini_read_string(("General" + string(global.filechoice)), "Name", scr_gettext("save_menu_empty"))
        love = ini_read_real(("General" + string(global.filechoice)), "Love", 0)
        time = ini_read_real(("General" + string(global.filechoice)), "Time", 1)
        kills = ini_read_real(("General" + string(global.filechoice)), "Kills", 0)
        roome = ini_read_real(("General" + string(global.filechoice)), "Room", 0)
        ossafe_ini_close()
        draw_set_color(c_black)
        scr_setfont(global.fnt_m1)
        draw_sprite(spr_menu_save, 0, (35 + xx), (40 + yy))
        if (global.menucoord[4] == 2)
            draw_set_color(c_blue)
        minutes = floor((time / 1800))
        seconds = round((((time / 1800) - minutes) * 60))
        if (seconds == 60)
            seconds = 59
        if (seconds < 10)
            seconds = ("0" + string(seconds))
        var roomname = scr_roomname(roome)
        var lvtext = scr_gettext("save_menu_lv", string(love))
        var timetext = scr_gettext("save_menu_time", string(minutes), string(seconds))
        var namesize = string_width(string_hash_to_newline(substr(name, 1, 6)))
        var lvsize = string_width(string_hash_to_newline(lvtext))
        var timesize = string_width(string_hash_to_newline(timetext))
        var x_center = (xx + 160)
        var lvpos = round((((x_center + (namesize / 2)) - (timesize / 2)) - (lvsize / 2)))
        var namepos = (50 + xx)
        var roomnamepos = (100 + xx)
        var timepos = (250 + xx)
        if (global.language == "ja")
        {
            namepos -= 6
            timepos += 6
        }
        draw_text(namepos, (50 + yy), string_hash_to_newline(name))
        draw_text(lvpos, (50 + yy), string_hash_to_newline(lvtext))
        draw_text((timepos - timesize), (50 + yy), string_hash_to_newline(timetext))
        if (global.language == "ja")
            scr_drawtext_centered(x_center, (80 + yy), roomname)
        else
            draw_text(roomnamepos, (100 + yy), string_hash_to_newline(roomname))
        var savepos = (xx + 71)
        var returnpos = (xx + 161)
        if (global.language == "ja")
        {
            savepos = (xx + 78)
            returnpos = (xx + 173)
        }
        if (global.menucoord[4] == 0)
            draw_sprite_ext(spr_heartsmall, 0, savepos, (yy + 145), image_xscale, image_yscale, image_angle, scr_char_files_soulindex(string(global.charsoulcolor)), image_alpha)
        if (global.menucoord[4] == 1)
            draw_sprite_ext(spr_heartsmall, 0, returnpos, (yy + 145), image_xscale, image_yscale, image_angle, scr_char_files_soulindex(string(global.charsoulcolor)), image_alpha)
        if (global.menucoord[4] < 2)
        {
            draw_text((savepos + 14), (yy + 140), string_hash_to_newline(scr_gettext("save_menu_save")))
            draw_text((returnpos + 14), (yy + 140), string_hash_to_newline(scr_gettext("save_menu_return")))
        }
        else
            draw_text((xx + 85), (yy + 145), string_hash_to_newline(scr_gettext("save_menu_saved")))
    }
    if (global.menuno == 0)
        draw_sprite_ext(spr_phone_selection, 0, ((30 + xx) + (25 * global.menucoord[0])), (173 + yy), 1, 1, 0, c_yellow, 1)
    if (global.menuno == 1)
    {
        heart_y = 54
        if (global.language == "ja")
            heart_y -= 1
        draw_sprite_ext(spr_heartsmall, 0, (104 + xx), ((heart_y + yy) + (16 * global.menucoord[1])), image_xscale, image_yscale, image_angle, scr_char_files_soulindex(string(global.charsoulcolor)), image_alpha)
    }
    if (global.menuno == 3)
    {
        heart_y = 54
        if (global.language == "ja")
            heart_y -= 1
        draw_sprite_ext(spr_heartsmall, 0, (104 + xx), ((heart_y + yy) + (16 * global.menucoord[3])), image_xscale, image_yscale, image_angle, scr_char_files_soulindex(string(global.charsoulcolor)), image_alpha)
    }
    if (global.menuno == 6)
    {
        heart_y = 34
        if (global.language == "ja")
            heart_y -= 1
        draw_sprite_ext(spr_heartsmall, 0, (104 + xx), ((heart_y + yy) + (16 * global.menucoord[6])), image_xscale, image_yscale, image_angle, scr_char_files_soulindex(string(global.charsoulcolor)), image_alpha)
    }
    if (global.menuno == 7)
    {
        heart_y = 34
        if (global.language == "ja")
            heart_y -= 1
        draw_sprite_ext(spr_heartsmall, 0, (104 + xx), ((heart_y + yy) + (16 * global.menucoord[7])), image_xscale, image_yscale, image_angle, scr_char_files_soulindex(string(global.charsoulcolor)), image_alpha)
    }
    if (global.menuno == 5)
    {
        heart_y = 194
        if (global.language == "ja")
            heart_y -= 1
        if (global.menucoord[5] == 0)
            draw_sprite_ext(spr_heartsmall, 0, ((104 + xx) + (45 * global.menucoord[5])), (heart_y + yy), image_xscale, image_yscale, image_angle, scr_char_files_soulindex(string(global.charsoulcolor)), image_alpha)
        if (global.menucoord[5] == 1)
            draw_sprite_ext(spr_heartsmall, 0, ((104 + xx) + ((45 * global.menucoord[5]) + 3)), (heart_y + yy), image_xscale, image_yscale, image_angle, scr_char_files_soulindex(string(global.charsoulcolor)), image_alpha)
        if (global.menucoord[5] == 2)
            draw_sprite_ext(spr_heartsmall, 0, ((104 + xx) + ((45 * global.menucoord[5]) + 15)), (heart_y + yy), image_xscale, image_yscale, image_angle, scr_char_files_soulindex(string(global.charsoulcolor)), image_alpha)
    }
}
