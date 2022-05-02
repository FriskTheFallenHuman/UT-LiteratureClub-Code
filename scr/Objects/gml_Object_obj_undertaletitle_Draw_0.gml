if (!demoend)
{
    if (con == 0)
        draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, rot, c_white, 1)
    if (con == 1)
    {
        draw_set_color(c_white)
        draw_set_font(fnt_main)
        draw_text_transformed(90, 90, string_hash_to_newline(scr_gettext("title_by")), 1, 1, 0)
    }
}
else
{
    var show = 1
    if (hidde_logo == 1)
        show = 0
    draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, rot, c_white, show)
    if (ok == 1)
    {
        draw_set_color(c_gray)
        draw_set_font(fnt_small)
        if (jok == 0)
            draw_text_transformed(30, 50, string_hash_to_newline(scr_gettext("title_credits_demo")), 1, 1, 0)
        else
        {
            draw_set_font(fnt_maintext)
            draw_set_color(c_lime)
            draw_text_transformed(30, 150, string_hash_to_newline(scr_gettext("title_credits_genocide")), 1, 1, 0)
        }
    }
}
