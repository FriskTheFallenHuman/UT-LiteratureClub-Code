if firstrun
    draw_sprite(sprite_index, image_index, x, y)
else
{
    UTLC_comment = "didn't have to use lerp for this effect"
    if (logoy < logoydest)
        logoy += ((logoydest - logoy) * 0.2)
    UTLC_comment = "force the y to be right"
    if ((round((logoy * 10)) / 10) >= logoydest)
        logoy = logoydest
    if d
    {
        text_alpha += (fadeSpeed * fadesign)
        text_alpha = min(1, max(text_alpha, 0))
        if (text_alpha >= 1 || text_alpha <= 0)
            fadesign = (-fadesign)
    }
    else
    {
        text_alpha = 0
        fadesiner = 0
    }

    var curalpha = 1
    UTLC_comment = "Funny fadeout effect"
    if (alarm[0] <= 15)
        curalpha = (alarm[0] / 15)
    draw_set_alpha(curalpha)
    draw_sprite(spr_undertaletitle, 0, (room_width - 160), logoy)
    if (drawpw == 1)
    {
        alarm[0] = -1
        draw_set_color(c_white)
        scr_setfont(fnt_maintext)
        var hasinfo = 0
        if (pw1 == 1)
        {
            draw_text(20, 170, string_hash_to_newline(scr_gettext("obj_titleimage_activity_a")))
            hasinfo = 1
        }
        if (pw2 == 1)
        {
            draw_text(20, 190, string_hash_to_newline(scr_gettext("obj_titleimage_activity_b")))
            hasinfo = 1
        }
        if (pw3 == 1)
        {
            draw_text(20, 210, string_hash_to_newline(scr_gettext("obj_titleimage_activity_c")))
            hasinfo = 1
        }
        if (!hasinfo)
            draw_text(20, 180, string_hash_to_newline(scr_gettext("obj_titleimage_activity_0")))
    }
    else if (d == 1)
    {
        var scale = 1
        if (os_type == os_psvita)
            scale = 2
        draw_set_alpha((text_alpha * curalpha))
        draw_set_color(c_gray)
        scr_setfont(fnt_small)
        var text = scr_gettext("title_press_button_pc")
        if (global.osflavor >= 4)
            text = scr_gettext("title_press_button_console")
        scr_drawtext_centered_scaled(160, 180, text, scale, scale)
    }
    draw_set_alpha(1)
}
