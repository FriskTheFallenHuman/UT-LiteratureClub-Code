if (fun == true)
    event_user(0)
draw_set_color(global.COL_A)
scr_setfont(fnt_maintext)
if (weather != 3)
{
    draw_set_halign(fa_right)
    draw_text_transformed(250, 10, string_hash_to_newline(scr_gettext("joyconfig_title")), 2, 2, 0)
    draw_set_halign(fa_left)
}
else
    draw_text_transformed(10, 10, string_hash_to_newline(scr_gettext("joyconfig_title")), 2, 2, 0)
if (menu != 0)
    draw_set_color(global.COL_A)
else
    draw_set_color(global.COL_B)
draw_text(20, 40, string_hash_to_newline(scr_gettext("joyconfig_exit")))
var vspacing = 15
if (global.language == "ja")
    vspacing = 16
var button_x = 0
for (i = 1; i < 4; i += 1)
{
    if (menu != i)
        draw_set_color(global.COL_A)
    else
        draw_set_color(global.COL_B)
    if (i == 1)
        itext = scr_gettext("joyconfig_button_confirm")
    if (i == 2)
        itext = scr_gettext("joyconfig_button_cancel")
    if (i == 3)
        itext = scr_gettext("joyconfig_button_menu")
    draw_text(20, (75 + ((i - 1) * vspacing)), string_hash_to_newline(itext))
    var xx = ((20 + string_width(string_hash_to_newline(itext))) + 10)
    if (xx > button_x)
        button_x = xx
    draw_set_color(global.COL_A)
}
var stext = scr_gettext("settings_button_separator")
for (i = 1; i < 4; i += 1)
{
    if (menu != i)
        draw_set_color(global.COL_A)
    else
        draw_set_color(global.COL_B)
    draw_text(button_x, (75 + ((i - 1) * vspacing)), string_hash_to_newline(stext))
    draw_set_color(global.COL_A)
}
button_x += string_width(string_hash_to_newline(stext))
if (menu == 1 && menu_engage == 1)
{
    draw_set_color(c_blue)
    ossafe_fill_rectangle(button_x, 75, (button_x + string_width(string_hash_to_newline(scr_gettext("joyconfig_prompt_button")))), 90)
    draw_set_color(global.COL_A)
    o_o += 1
    if (o_o >= 16)
        o_o = 0
    if (o_o <= 8)
        draw_text(button_x, 75, string_hash_to_newline(scr_gettext("joyconfig_prompt_button")))
}
else
{
    draw_set_color(c_aqua)
    draw_text((button_x + 10), 75, string_hash_to_newline(global.button0))
}
if (menu == 2 && menu_engage == 1)
{
    draw_set_color(c_blue)
    ossafe_fill_rectangle(button_x, (75 + (1 * vspacing)), (button_x + string_width(string_hash_to_newline(scr_gettext("joyconfig_prompt_button")))), (90 + (1 * vspacing)))
    draw_set_color(global.COL_A)
    o_o += 1
    if (o_o >= 16)
        o_o = 0
    if (o_o <= 8)
        draw_text(button_x, (75 + (1 * vspacing)), string_hash_to_newline(scr_gettext("joyconfig_prompt_button")))
}
else
{
    draw_set_color(c_aqua)
    draw_text((button_x + 10), (75 + (1 * vspacing)), string_hash_to_newline(global.button1))
}
if (menu == 3 && menu_engage == 1)
{
    draw_set_color(c_blue)
    ossafe_fill_rectangle(button_x, (75 + (2 * vspacing)), (button_x + string_width(string_hash_to_newline(scr_gettext("joyconfig_prompt_button")))), (90 + (2 * vspacing)))
    draw_set_color(global.COL_A)
    o_o += 1
    if (o_o >= 16)
        o_o = 0
    if (o_o <= 8)
        draw_text(button_x, (75 + (2 * vspacing)), string_hash_to_newline(scr_gettext("joyconfig_prompt_button")))
}
else
{
    draw_set_color(c_aqua)
    draw_text((button_x + 10), (75 + (2 * vspacing)), string_hash_to_newline(global.button2))
}
if (menu == 5)
    draw_set_color(global.COL_A)
else
    draw_set_color(global.COL_B)
draw_text(20, 135, string_hash_to_newline(scr_gettext("joyconfig_analog_sens")))
var analog_text_width = string_width(string_hash_to_newline(scr_gettext("joyconfig_analog_sens")))
var sensebar_x = ((20 + analog_text_width) + 10)
if (menu == 5 && menu_engage == 1)
{
    draw_sprite_ext(spr_sensing_slider, 0, sensebar_x, 135, 1, 1, 0, c_red, 1)
    draw_sprite_ext(spr_sensebar, 0, ((sensebar_x + 40) - (global.analog_sense * 100)), 138, 1, 1, 0, c_yellow, 1)
}
else
{
    draw_sprite_ext(spr_sensing_slider, 0, sensebar_x, 135, 1, 1, 0, c_red, 0.6)
    draw_sprite_ext(spr_sensebar, 0, ((sensebar_x + 40) - (global.analog_sense * 100)), 138, 1, 1, 0, c_yellow, 0.6)
}
if (fun == true)
{
    if (menu == 6)
        draw_set_color(global.COL_A)
    else
        draw_set_color(global.COL_B)
    scale = (analog_text_width / string_width(string_hash_to_newline(scr_gettext("joyconfig_analog_sens_sq"))))
    draw_text_transformed(20, (135 + vspacing), string_hash_to_newline(scr_gettext("joyconfig_analog_sens_sq")), scale, 1, 0)
    if (menu == 6 && menu_engage == 1)
    {
        draw_sprite_ext(spr_sensing_slider, 0, sensebar_x, (135 + vspacing), 1, 1, 0, c_green, 1)
        draw_sprite_ext(spr_sensebar, 0, ((sensebar_x + 40) - (global.analog_sense_sense * 200)), (138 + vspacing), 1, 1, 0, c_yellow, 1)
    }
    else
    {
        draw_sprite_ext(spr_sensing_slider, 0, sensebar_x, (135 + vspacing), 1, 1, 0, c_green, 0.6)
        draw_sprite_ext(spr_sensebar, 0, ((sensebar_x + 40) - (global.analog_sense_sense * 200)), (138 + vspacing), 1, 1, 0, c_yellow, 0.6)
    }
}
if (menu == 7)
    draw_set_color(global.COL_A)
else
    draw_set_color(global.COL_B)
draw_text(20, 170, string_hash_to_newline(scr_gettext("joyconfig_dir_choice")))
if (global.joy_dir == 0)
    draw_text(100, 170, string_hash_to_newline(scr_gettext("joyconfig_dir_normal")))
if (global.joy_dir == 1)
    draw_text(100, 170, string_hash_to_newline(scr_gettext("joyconfig_dir_analog")))
if (global.joy_dir == 2)
    draw_text(100, 170, string_hash_to_newline(scr_gettext("joyconfig_dir_pov")))
if (r_buffer > 0)
{
    draw_set_color(c_red)
    draw_text_transformed_color(20, (170 + vspacing), string_hash_to_newline(r_line), 1, 1, 0, c_red, c_red, c_red, c_red, (1 - ((10 - r_buffer) / 10)))
}
else
{
    if (menu == 8)
        draw_set_color(global.COL_A)
    else
        draw_set_color(global.COL_B)
    draw_text(20, (170 + vspacing), string_hash_to_newline(scr_gettext("joyconfig_reset")))
}
if (menu == 9)
    draw_set_color(global.COL_A)
else
    draw_set_color(global.COL_B)
draw_text(20, (170 + (2 * vspacing)), string_hash_to_newline(scr_gettext("joyconfig_test")))
