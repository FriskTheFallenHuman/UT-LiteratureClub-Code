var lines;
draw_set_color(global.COL_B)
scr_setfont(fnt_maintext)
if (naming == 4)
{
    if (string_lower(charname) == "monika" || string_to_hiragana(charname) == "モニカ")
    {
        global.charswap = 1
        global.charswappedname = "Monika"
        global.charsoulcolor = "Green"
        global.charvessel = "obj_monika"
        global.charvesselreflection = "obj_monika_actor"
        global.charvesselvoid = "obj_monika_fake"
    }
    else if (string_lower(charname) == "sayori" || string_to_hiragana(charname) == "サヨリ")
    {
        global.charswap = 1
        global.charswappedname = "Sayori"
        global.charsoulcolor = "Blue"
        global.charvessel = "obj_sayori"
        global.charvesselreflection = "obj_sayori_actor"
        global.charvesselvoid = "obj_sayori_fake"
    }
    else if (string_lower(charname) == "yuri" || string_to_hiragana(charname) == "ユリ")
    {
        global.charswap = 1
        global.charswappedname = "Yuri"
        global.charsoulcolor = "Purple"
        global.charvessel = "obj_yuri"
        global.charvesselreflection = "obj_yuri_actor"
        global.charvesselvoid = "obj_yuri_fake"
    }
    else if (string_lower(charname) == "natsuki" || string_to_hiragana(charname) == "ナツキ")
    {
        global.charswap = 1
        global.charswappedname = "Natsuki"
        global.charsoulcolor = "Pink"
        global.charvessel = "obj_natsuki"
        global.charvesselreflection = "obj_natsuki_actor"
        global.charvesselvoid = "obj_natsuki_fake"
    }
    global.charname = charname
    instance_create(0, 0, obj_whitefader)
    caster_free(-3)
    alerm = 0
    naming = 5
    cy = caster_load("music/cymbal.ogg")
    caster_play(cy, 0.8, 0.95)
    scr_setup_char_file(global.charswappedname, global.charsoulcolor, global.charvessel, global.charvesselreflection, global.charvesselvoid)
}
if (naming == 5)
{
    alerm += 1
    if (q < 120)
        q += 1
    var xx = (name_x - (q / 3))
    if (global.language == "ja")
    {
        var kana_count = 0
        for (var i = 0; i < strlen(charname); i++)
        {
            if (ord(string_char_at(charname, i)) >= 12288)
                kana_count++
        }
        if (kana_count > 1)
            xx -= ((kana_count - 1) * (q / 10))
    }
    var menu_charname0 = string_hash_to_newline(string_upper(charname))
    if (global.TYPE == 1)
        menu_charname0 = string_hash_to_newline(charname)
    draw_text_transformed(xx, ((q / 2) + name_y), menu_charname0, (1 + (q / 50)), (1 + (q / 50)), random_ranger((((-r) * q) / 60), ((r * q) / 60)))
    if (alerm > 179)
    {
        instance_create(0, 0, obj_persistentfader)
        if (truereset > 0)
        {
            ossafe_ini_open("undertale.ini")
            sk = ini_read_real("reset", "s_key", 0)
            var Won = ini_read_real(("General" + string(global.filechoice)), "Won", 0)
            var CP = ini_read_real(("General" + string(global.filechoice)), "CP", 0)
            var CH = ini_read_real(("General" + string(global.filechoice)), "CH", 0)
            ossafe_ini_close()
            if ossafe_file_exists("undertale.ini")
                ossafe_file_delete("undertale.ini")
            ossafe_ini_open("undertale.ini")
            ini_write_real("reset", "reset", 1)
            if (sk != 0)
                ini_write_real("reset", "s_key", sk)
            if (Won != 0)
                ini_write_real(("General" + string(global.filechoice)), "BW", Won)
            if (CP != 0)
                ini_write_real(("General" + string(global.filechoice)), "BP", CP)
            if (CH != 0)
                ini_write_real(("General" + string(global.filechoice)), "BH", CH)
            ossafe_ini_close()
        }
        caster_free(cy)
        global.flag[5] = (floor(random(100)) + 1)
        ossafe_ini_open("undertale.ini")
        ini_write_real(("General" + string(global.filechoice)), "fun", global.flag[5])
        ossafe_ini_close()
        ossafe_savedata_save()
        with (obj_time)
            time = 0
        if scr_check_hardmode()
            global.flag[6] = 1
        room_goto_next()
    }
}
var astring = -4
if (naming == 2)
{
    if (charname == "")
    {
        astring = scr_gettext("name_entry_missing")
        if (global.TYPE == 1)
            astring = scr_gettext("name_entry_missing_real")
        spec_m = astring
        allow = 0
    }
    else if (hasname == 1 && truereset == 0)
    {
        astring = scr_gettext("name_entry_already")
        if (global.TYPE == 1)
            astring = scr_gettext("name_entry_already_real")
        spec_m = astring
        allow = 1
    }
    else
        event_user(1)
    var confirm = (control_check_pressed(0) && selected2 >= false)
    if confirm
    {
        if allow
        {
            if (selected2 == 1 && string_length(charname) > 0)
                naming = 4
        }
        if (selected2 == 0)
        {
            if (hasname == 1 && truereset == 0)
                instance_destroy()
            else
                naming = 1
        }
        return;
    }
    draw_set_color(global.COL_B)
    if (q < 120)
        q += 1
    xx = (name_x - (q / 3))
    if (global.language == "ja")
    {
        kana_count = 0
        for (i = 0; i < strlen(charname); i++)
        {
            if (ord(string_char_at(charname, i)) >= 12288)
                kana_count++
        }
        if (kana_count > 1)
            xx -= ((kana_count - 1) * (q / 10))
    }
    var menu_charname1 = string_hash_to_newline(string_upper(charname))
    if (global.TYPE == 1)
        menu_charname1 = string_hash_to_newline(charname)
    draw_text_transformed(xx, ((q / 2) + name_y), menu_charname1, (1 + (q / 50)), (1 + (q / 50)), random_ranger((((-r) * q) / 60), ((r * q) / 60)))
    draw_text(90, 30, string_hash_to_newline(spec_m))
    draw_set_color(global.COL_A)
    if allow
    {
        if (selected2 == 0)
            draw_set_color(global.COL_A)
        astring = string_upper(scr_gettext("no"))
        if (global.TYPE == 1)
            astring = scr_gettext("no")
        scr_drawtext_centered(80, 200, astring)
        draw_set_color(global.COL_B)
        if (selected2 == 1)
            draw_set_color(global.COL_A)
        astring = string_upper(scr_gettext("yes"))
        if (global.TYPE == 1)
            astring = scr_gettext("yes")
        scr_drawtext_centered(240, 200, astring)
    }
    else
    {
        astring = string_upper(scr_gettext("name_entry_goback"))
        if (global.TYPE == 1)
            astring = scr_gettext("name_entry_goback")
        draw_set_color(global.COL_A)
        scr_drawtext_centered(80, 200, astring)
        draw_set_color(global.COL_B)
    }
    if allow
    {
        if (keyboard_check_pressed(vk_right) || keyboard_check_pressed(vk_left))
        {
            if (selected2 == 1)
                selected2 = 0
            else
                selected2 = 1
        }
    }
}
if (naming == 1)
{
    q = 0
    r = 0.5
    for (var row = 0; row < rows; row++)
    {
        var yy = ymap[row]
        for (var col = 0; col < cols; col++)
        {
            xx = xmap[col]
            if (selected_row == row && selected_col == col)
                draw_set_color(global.COL_A)
            else
                draw_set_color(global.COL_B)
            draw_text(xx, yy, string_hash_to_newline(charmap[row, col]))
        }
    }
    draw_set_color(global.COL_B)
    if (selected_row == -1 && selected_col == 0)
        draw_set_color(global.COL_A)
    var menu_text0 = string_upper(scr_gettext("name_entry_goback"))
    if (global.TYPE == 1)
        menu_text0 = scr_gettext("name_entry_quit")
    draw_text(menu_x0, menu_y, string_hash_to_newline(menu_text0))
    draw_set_color(global.COL_B)
    if (selected_row == -1 && selected_col == 1)
        draw_set_color(global.COL_A)
    var menu_text1 = string_upper(scr_gettext("name_entry_backspace"))
    if (global.TYPE == 1)
        menu_text1 = scr_gettext("name_entry_backspace")
    draw_text(menu_x1, menu_y, string_hash_to_newline(menu_text1))
    draw_set_color(global.COL_B)
    if (selected_row == -1 && selected_col == 2)
        draw_set_color(global.COL_A)
    var menu_text2 = string_upper(scr_gettext("name_entry_done"))
    if (global.TYPE == 1)
        menu_text2 = scr_gettext("name_entry_done")
    draw_text(menu_x2, menu_y, string_hash_to_newline(menu_text2))
    if (global.language == "ja")
    {
        draw_set_color(global.COL_B)
        if (selected_row == -2 && selected_col == 0)
            draw_set_color(global.COL_A)
        var charset_text0 = string_upper("ひらがな")
        if (global.TYPE == 1)
            charset_text0 = "ひらがな"
        draw_text(charset_x0, charset_y, string_hash_to_newline(charset_text0))
        draw_set_color(global.COL_B)
        if (selected_row == -2 && selected_col == 1)
            draw_set_color(global.COL_A)
        var charset_text1 = string_upper("カタカナ")
        if (global.TYPE == 1)
            charset_text1 = "カタカナ"
        draw_text(charset_x1, charset_y, string_hash_to_newline(charset_text1))
        draw_set_color(global.COL_B)
        if (selected_row == -2 && selected_col == 2)
            draw_set_color(global.COL_A)
        var charset_text2 = string_upper("アルファベット")
        if (global.TYPE == 1)
            charset_text2 = "アルファベット"
        draw_text(charset_x2, charset_y, string_hash_to_newline(charset_text2))
    }
    var old_col = selected_col
    while 1
    {
        if keyboard_check_pressed(vk_right)
        {
            selected_col++
            if (selected_row == -1)
            {
                if (selected_col > 2)
                    selected_col = 0
                if keyboard_check_pressed(vk_left)
                {
                    selected_col--
                    if (selected_col < 0)
                    {
                        if (selected_row == 0)
                            selected_col = 0
                        else if (selected_row > 0)
                        {
                            selected_col = (cols - 1)
                            selected_row--
                        }
                        else
                            selected_col = 2
                    }
                }
                if keyboard_check_pressed(vk_down)
                {
                    if (selected_row == -1)
                    {
                        selected_row = 0
                        xx = menu_x0
                        if (selected_col == 1)
                            xx = menu_x1
                        if (selected_col == 2)
                            xx = menu_x2
                        var best = 0
                        var bestdiff = abs((xmap[0] - xx))
                        for (i = 1; i < cols; i++)
                        {
                            var diff = abs((xmap[i] - xx))
                            if (diff < bestdiff)
                            {
                                best = i
                                bestdiff = diff
                            }
                        }
                        selected_col = best
                    }
                    else
                    {
                        selected_row++
                        if (selected_row >= rows)
                        {
                            if (global.language == "ja")
                            {
                                selected_row = -2
                                xx = xmap[selected_col]
                                if (xx >= (charset_x2 - 10))
                                    selected_col = 2
                                else if (xx >= (charset_x1 - 10))
                                    selected_col = 1
                                else
                                    selected_col = 0
                            }
                            else
                            {
                                selected_row = -1
                                xx = xmap[selected_col]
                                if (xx >= (menu_x2 - 10))
                                    selected_col = 2
                                else if (xx >= (menu_x1 - 10))
                                    selected_col = 1
                                else
                                    selected_col = 0
                            }
                        }
                    }
                }
                if keyboard_check_pressed(vk_up)
                {
                    if (selected_row == -2)
                    {
                        selected_row = (rows - 1)
                        if (selected_col > 0)
                        {
                            xx = charset_x1
                            if (selected_col == 2)
                                xx = charset_x2
                            best = 0
                            bestdiff = abs((xmap[0] - xx))
                            for (i = 1; i < cols; i++)
                            {
                                diff = abs((xmap[i] - xx))
                                if (diff < bestdiff)
                                {
                                    best = i
                                    bestdiff = diff
                                }
                            }
                            selected_col = best
                        }
                    }
                    else if (global.language != "ja" && selected_row == -1)
                    {
                        selected_row = (rows - 1)
                        if (selected_col > 0)
                        {
                            xx = menu_x1
                            if (selected_col == 2)
                                xx = menu_x2
                            best = 0
                            bestdiff = abs((xmap[0] - xx))
                            for (i = 1; i < cols; i++)
                            {
                                diff = abs((xmap[i] - xx))
                                if (diff < bestdiff)
                                {
                                    best = i
                                    bestdiff = diff
                                }
                            }
                            selected_col = best
                        }
                    }
                    else
                    {
                        selected_row--
                        if (selected_row == -1)
                        {
                            xx = xmap[selected_col]
                            if (xx >= (menu_x2 - 10))
                                selected_col = 2
                            else if (xx >= (menu_x1 - 10))
                                selected_col = 1
                            else
                                selected_col = 0
                        }
                    }
                }
                if (selected_col < 0 || selected_row < 0 || string_length(charmap[selected_row, selected_col]) > 0)
                {
                }
            }
            else if (selected_col >= cols)
            {
                if (selected_row == (rows - 1))
                    selected_col = old_col
                else
                {
                    selected_col = 0
                    selected_row++
                    if keyboard_check_pressed(vk_left)
                    {
                        selected_col--
                        if (selected_col < 0)
                        {
                            if (selected_row == 0)
                                selected_col = 0
                            else if (selected_row > 0)
                            {
                                selected_col = (cols - 1)
                                selected_row--
                            }
                            else
                                selected_col = 2
                        }
                    }
                    if keyboard_check_pressed(vk_down)
                    {
                        if (selected_row == -1)
                        {
                            selected_row = 0
                            xx = menu_x0
                            if (selected_col == 1)
                                xx = menu_x1
                            if (selected_col == 2)
                                xx = menu_x2
                            best = 0
                            bestdiff = abs((xmap[0] - xx))
                            for (i = 1; i < cols; i++)
                            {
                                diff = abs((xmap[i] - xx))
                                if (diff < bestdiff)
                                {
                                    best = i
                                    bestdiff = diff
                                }
                            }
                            selected_col = best
                        }
                        else
                        {
                            selected_row++
                            if (selected_row >= rows)
                            {
                                if (global.language == "ja")
                                {
                                    selected_row = -2
                                    xx = xmap[selected_col]
                                    if (xx >= (charset_x2 - 10))
                                        selected_col = 2
                                    else if (xx >= (charset_x1 - 10))
                                        selected_col = 1
                                    else
                                        selected_col = 0
                                }
                                else
                                {
                                    selected_row = -1
                                    xx = xmap[selected_col]
                                    if (xx >= (menu_x2 - 10))
                                        selected_col = 2
                                    else if (xx >= (menu_x1 - 10))
                                        selected_col = 1
                                    else
                                        selected_col = 0
                                }
                            }
                        }
                    }
                    if keyboard_check_pressed(vk_up)
                    {
                        if (selected_row == -2)
                        {
                            selected_row = (rows - 1)
                            if (selected_col > 0)
                            {
                                xx = charset_x1
                                if (selected_col == 2)
                                    xx = charset_x2
                                best = 0
                                bestdiff = abs((xmap[0] - xx))
                                for (i = 1; i < cols; i++)
                                {
                                    diff = abs((xmap[i] - xx))
                                    if (diff < bestdiff)
                                    {
                                        best = i
                                        bestdiff = diff
                                    }
                                }
                                selected_col = best
                            }
                        }
                        else if (global.language != "ja" && selected_row == -1)
                        {
                            selected_row = (rows - 1)
                            if (selected_col > 0)
                            {
                                xx = menu_x1
                                if (selected_col == 2)
                                    xx = menu_x2
                                best = 0
                                bestdiff = abs((xmap[0] - xx))
                                for (i = 1; i < cols; i++)
                                {
                                    diff = abs((xmap[i] - xx))
                                    if (diff < bestdiff)
                                    {
                                        best = i
                                        bestdiff = diff
                                    }
                                }
                                selected_col = best
                            }
                        }
                        else
                        {
                            selected_row--
                            if (selected_row == -1)
                            {
                                xx = xmap[selected_col]
                                if (xx >= (menu_x2 - 10))
                                    selected_col = 2
                                else if (xx >= (menu_x1 - 10))
                                    selected_col = 1
                                else
                                    selected_col = 0
                            }
                        }
                    }
                    if (selected_col < 0 || selected_row < 0 || string_length(charmap[selected_row, selected_col]) > 0)
                    {
                    }
                }
            }
            else
            {
                if keyboard_check_pressed(vk_left)
                {
                    selected_col--
                    if (selected_col < 0)
                    {
                        if (selected_row == 0)
                            selected_col = 0
                        else if (selected_row > 0)
                        {
                            selected_col = (cols - 1)
                            selected_row--
                        }
                        else
                            selected_col = 2
                    }
                }
                if keyboard_check_pressed(vk_down)
                {
                    if (selected_row == -1)
                    {
                        selected_row = 0
                        xx = menu_x0
                        if (selected_col == 1)
                            xx = menu_x1
                        if (selected_col == 2)
                            xx = menu_x2
                        best = 0
                        bestdiff = abs((xmap[0] - xx))
                        for (i = 1; i < cols; i++)
                        {
                            diff = abs((xmap[i] - xx))
                            if (diff < bestdiff)
                            {
                                best = i
                                bestdiff = diff
                            }
                        }
                        selected_col = best
                    }
                    else
                    {
                        selected_row++
                        if (selected_row >= rows)
                        {
                            if (global.language == "ja")
                            {
                                selected_row = -2
                                xx = xmap[selected_col]
                                if (xx >= (charset_x2 - 10))
                                    selected_col = 2
                                else if (xx >= (charset_x1 - 10))
                                    selected_col = 1
                                else
                                    selected_col = 0
                            }
                            else
                            {
                                selected_row = -1
                                xx = xmap[selected_col]
                                if (xx >= (menu_x2 - 10))
                                    selected_col = 2
                                else if (xx >= (menu_x1 - 10))
                                    selected_col = 1
                                else
                                    selected_col = 0
                            }
                        }
                    }
                }
                if keyboard_check_pressed(vk_up)
                {
                    if (selected_row == -2)
                    {
                        selected_row = (rows - 1)
                        if (selected_col > 0)
                        {
                            xx = charset_x1
                            if (selected_col == 2)
                                xx = charset_x2
                            best = 0
                            bestdiff = abs((xmap[0] - xx))
                            for (i = 1; i < cols; i++)
                            {
                                diff = abs((xmap[i] - xx))
                                if (diff < bestdiff)
                                {
                                    best = i
                                    bestdiff = diff
                                }
                            }
                            selected_col = best
                        }
                    }
                    else if (global.language != "ja" && selected_row == -1)
                    {
                        selected_row = (rows - 1)
                        if (selected_col > 0)
                        {
                            xx = menu_x1
                            if (selected_col == 2)
                                xx = menu_x2
                            best = 0
                            bestdiff = abs((xmap[0] - xx))
                            for (i = 1; i < cols; i++)
                            {
                                diff = abs((xmap[i] - xx))
                                if (diff < bestdiff)
                                {
                                    best = i
                                    bestdiff = diff
                                }
                            }
                            selected_col = best
                        }
                    }
                    else
                    {
                        selected_row--
                        if (selected_row == -1)
                        {
                            xx = xmap[selected_col]
                            if (xx >= (menu_x2 - 10))
                                selected_col = 2
                            else if (xx >= (menu_x1 - 10))
                                selected_col = 1
                            else
                                selected_col = 0
                        }
                    }
                }
                if (selected_col < 0 || selected_row < 0 || string_length(charmap[selected_row, selected_col]) > 0)
                {
                }
            }
        }
        else
        {
            if keyboard_check_pressed(vk_left)
            {
                selected_col--
                if (selected_col < 0)
                {
                    if (selected_row == 0)
                        selected_col = 0
                    else if (selected_row > 0)
                    {
                        selected_col = (cols - 1)
                        selected_row--
                    }
                    else
                        selected_col = 2
                }
            }
            if keyboard_check_pressed(vk_down)
            {
                if (selected_row == -1)
                {
                    selected_row = 0
                    xx = menu_x0
                    if (selected_col == 1)
                        xx = menu_x1
                    if (selected_col == 2)
                        xx = menu_x2
                    best = 0
                    bestdiff = abs((xmap[0] - xx))
                    for (i = 1; i < cols; i++)
                    {
                        diff = abs((xmap[i] - xx))
                        if (diff < bestdiff)
                        {
                            best = i
                            bestdiff = diff
                        }
                    }
                    selected_col = best
                }
                else
                {
                    selected_row++
                    if (selected_row >= rows)
                    {
                        if (global.language == "ja")
                        {
                            selected_row = -2
                            xx = xmap[selected_col]
                            if (xx >= (charset_x2 - 10))
                                selected_col = 2
                            else if (xx >= (charset_x1 - 10))
                                selected_col = 1
                            else
                                selected_col = 0
                        }
                        else
                        {
                            selected_row = -1
                            xx = xmap[selected_col]
                            if (xx >= (menu_x2 - 10))
                                selected_col = 2
                            else if (xx >= (menu_x1 - 10))
                                selected_col = 1
                            else
                                selected_col = 0
                        }
                    }
                }
            }
            if keyboard_check_pressed(vk_up)
            {
                if (selected_row == -2)
                {
                    selected_row = (rows - 1)
                    if (selected_col > 0)
                    {
                        xx = charset_x1
                        if (selected_col == 2)
                            xx = charset_x2
                        best = 0
                        bestdiff = abs((xmap[0] - xx))
                        for (i = 1; i < cols; i++)
                        {
                            diff = abs((xmap[i] - xx))
                            if (diff < bestdiff)
                            {
                                best = i
                                bestdiff = diff
                            }
                        }
                        selected_col = best
                    }
                }
                else if (global.language != "ja" && selected_row == -1)
                {
                    selected_row = (rows - 1)
                    if (selected_col > 0)
                    {
                        xx = menu_x1
                        if (selected_col == 2)
                            xx = menu_x2
                        best = 0
                        bestdiff = abs((xmap[0] - xx))
                        for (i = 1; i < cols; i++)
                        {
                            diff = abs((xmap[i] - xx))
                            if (diff < bestdiff)
                            {
                                best = i
                                bestdiff = diff
                            }
                        }
                        selected_col = best
                    }
                }
                else
                {
                    selected_row--
                    if (selected_row == -1)
                    {
                        xx = xmap[selected_col]
                        if (xx >= (menu_x2 - 10))
                            selected_col = 2
                        else if (xx >= (menu_x1 - 10))
                            selected_col = 1
                        else
                            selected_col = 0
                    }
                }
            }
            if (selected_col < 0 || selected_row < 0 || string_length(charmap[selected_row, selected_col]) > 0)
            {
            }
        }
    }
    bks_f = 0
    confirm = control_check_pressed(0)
    if confirm
    {
        if (selected_row == -1)
        {
            if (selected_col == 0)
                instance_destroy()
            if (selected_col == 1)
                bks_f = 1
            if (selected_col == 2)
            {
                if (string_length(charname) > 0)
                {
                    naming = 2
                    selected2 = 0
                }
            }
            control_clear(0)
        }
        else if (selected_row == -2)
        {
            selected_charmap = (1 + selected_col)
            if (selected_charmap == 1)
            {
                rows = hiragana_rows
                cols = hiragana_cols
                xmap = hiragana_x
                ymap = hiragana_y
                charmap = hiragana_charmap
            }
            else if (selected_charmap == 2)
            {
                rows = katakana_rows
                cols = katakana_cols
                xmap = katakana_x
                ymap = katakana_y
                charmap = katakana_charmap
            }
            else
            {
                rows = ja_ascii_rows
                cols = ja_ascii_cols
                xmap = ja_ascii_x
                ymap = ja_ascii_y
                charmap = ja_ascii_charmap
            }
        }
        else
        {
            if (string_length(charname) == 7)
                charname = string_delete(charname, 7, 1)
            charname += charmap[selected_row, selected_col]
        }
    }
    if (control_check_pressed(1) || bks_f == 1)
    {
        s = string_length(charname)
        if (s > 0)
            charname = string_delete(charname, s, 1)
        control_clear(1)
    }
    var menu_charname = string_hash_to_newline(string_upper(charname))
    if (global.TYPE == 1)
        menu_charname = string_hash_to_newline(charname)
    astring = string_upper(scr_gettext("name_entry_title"))
    if (global.TYPE == 1)
        astring = scr_gettext("name_entry_title")
    draw_set_color(global.COL_B)
    draw_text(name_x, name_y, menu_charname)
    scr_drawtext_centered(160, title_y, astring)
}
