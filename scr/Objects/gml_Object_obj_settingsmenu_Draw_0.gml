if (fun == true)
    event_user(0)
draw_set_color(global.COL_A)
scr_setfont(fnt_maintext)
scr_drawtext_centered_scaled(160, 10, scr_gettext("settings_title"), 2, 2)
if (menu != 1)
    draw_set_color(global.COL_A)
else
    draw_set_color(global.COL_B)
scr_drawtext_centered_scaled(50, 50, scr_gettext("settings_language"), 1, 1)
scr_drawtext_centered_scaled(110, 50, scr_gettext(("settings_language_" + global.language)), 1, 1)
if (menu != 2)
    draw_set_color(global.COL_A)
else
    draw_set_color(global.COL_B)
scr_drawtext_centered_scaled(43, 70, scr_gettext("settings_border"), 1, 1)
if (global.screen_border_id == 0)
    var border_sel = scr_gettext("settings_border_none")
else if (global.screen_border_id == 11)
    border_sel = scr_gettext(((("settings_border_" + string(global.screen_border_id)) + "_") + string(border_11)))
else
    border_sel = scr_gettext(("settings_border_" + string(global.screen_border_id)))
scr_drawtext_centered_scaled(110, 70, border_sel, 1, 1)
if (canchange == 0)
    draw_set_color(global.COL_PLUS)
else if (menu != 3)
    draw_set_color(global.COL_A)
else
    draw_set_color(global.COL_B)
scr_drawtext_centered_scaled(50, 90, scr_gettext("settings_hardmode"), 1, 1)
if (canchange == 0)
    draw_set_color(global.COL_PLUS)
else if (global.hardmode == 0)
    draw_set_color(global.COL_A)
else
    draw_set_color(global.COL_PLUS)
if (global.hardmode == 0)
    var hardmode_sel = scr_gettext("settings_hardmode_off")
else
    hardmode_sel = scr_gettext("settings_hardmode_on")
scr_drawtext_centered_scaled(100, 90, hardmode_sel, 1, 1)
if (menu != 4)
    draw_set_color(global.COL_A)
else
    draw_set_color(global.COL_B)
draw_text(21, 110, string_hash_to_newline(scr_gettext("settings_joyconfig")))
if (menu != 5)
    draw_set_color(global.COL_A)
else
    draw_set_color(global.COL_B)
scr_drawtext_centered_scaled(35, 140, scr_gettext("joyconfig_exit"), 1, 1)
if (intro == 1)
{
    if (rectile == 16)
        caster_play(harp, 1, 1)
    rectile += 4
    draw_set_color(c_black)
    ossafe_fill_rectangle((168 - rectile), -10, -1, 250)
    draw_set_color(c_black)
    ossafe_fill_rectangle((152 + rectile), -10, 330, 250)
    if (rectile >= 170)
    {
        caster_loop(weathermusic, 0.8, 1)
        menu_engage = 0
        buffer = 5
        intro = -1
    }
}
