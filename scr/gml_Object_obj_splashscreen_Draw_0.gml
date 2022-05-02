scr_setfont(fnt_maintext)
draw_set_valign(fa_middle)
draw_set_halign(fa_center)
if (!continue_without_data)
{
    draw_set_color(c_white)
    draw_text_color((xx + (room_width * 0.5)), (yy + 50), string_hash_to_newline(notice), c_white, c_white, c_white, c_white, text_alpha_a)
    draw_text_color((xx + (room_width * 0.5)), (yy + 150), string_hash_to_newline(warning), c_white, c_white, c_red, c_red, text_alpha_b)
    if loaded
        draw_sprite(spr_heart_gui_green, 0, heart_pos_x, ((yy + 205) - 2))
    for (var i = 0; i < array_length_1d(choices); i++)
    {
        draw_set_color(c_white)
        var _xPos = (heart_pos_x_default + (i * heart_pos_x_h_padding))
        if (!loaded)
            draw_set_color(c_gray)
        else if (heart_pos_x == _xPos)
            draw_set_color(c_yellow)
        draw_text(((xx + 90) + (i * 150)), (yy + 210), choices[i])
    }
}
else
{
    draw_set_color(c_white)
    draw_text_color((xx + (room_width * 0.5)), (yy + 50), string_hash_to_newline(information_1), c_white, c_white, c_white, c_white, text_alpha_a)
    draw_text_color((xx + (room_width * 0.5)), (yy + 90), string_hash_to_newline(information_2), c_white, c_white, c_white, c_white, text_alpha_b)
    draw_set_valign(fa_top)
    draw_set_halign(fa_left)
    draw_sprite_ext(spr_heart_gui_green, 0, (xx + 100), (heart_pos_y + 1), 1, 1, 0, c_white, text_alpha_b)
    var _colorA = c_white
    if (heart_pos_y == (yy + 140))
        _colorA = (selected ? 255 : 65535)
    draw_set_color(_colorA)
    draw_text_color((xx + 128), (yy + 140), play_game, _colorA, _colorA, _colorA, _colorA, text_alpha_b)
    var _colorB = c_white
    if (heart_pos_y == ((yy + 140) + line_height))
        _colorB = (selected ? 255 : 65535)
    draw_set_color(_colorB)
    draw_text_color((xx + 128), ((yy + 140) + line_height), exit_game, _colorB, _colorB, _colorB, _colorB, text_alpha_b)
}
draw_set_valign(fa_top)
draw_set_halign(fa_left)
