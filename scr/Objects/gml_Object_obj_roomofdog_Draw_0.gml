if (type == 9)
    image_angle += 5
draw_self()
scr_setfont(fnt_main)
draw_set_color(c_white)
draw_text(20, 20, "An exception has occurred.")
draw_text(30, 60, errorinfo)
scr_setfont(fnt_maintext)
draw_set_halign(fa_right)
draw_text(buttonxr, 20, global.version)
draw_text(buttonxr, 35, osversion)
draw_set_halign(fa_left)
draw_text(30, 105, error)
if (!hide_options)
{
    var optionsnum = array_length_1d(options)
    var movement = ((-keyboard_check_pressed(vk_left)) + keyboard_check_pressed(vk_right))
    movement += ((keyboard_check_pressed(vk_down) * (optionsnum - 1)) - (keyboard_check_pressed(vk_up) * optionsnum))
    var origheartcoord = heartcoord
    heartcoord += movement
    if (heartcoord < 0)
        heartcoord = (optionsnum - 1)
    else if (heartcoord >= optionsnum)
        heartcoord = 0
    if (origheartcoord != heartcoord)
        snd_play(snd_squeak)
    for (var i = 0; i < optionsnum; i++)
    {
        scr_setfont(fnt_main)
        if (i == heartcoord)
            draw_set_color(c_yellow)
        else
            draw_set_color(c_white)
        draw_text(optionsx[i], buttony, options[i])
    }
    draw_set_color(c_white)
    scr_setfont(fnt_maintext)
    draw_text(buttonx, buttoncaptiony, optionscaption[heartcoord])
    scr_setfont(fnt_main)
    draw_set_alpha(0.6)
    draw_sprite(spr_heart_gui_green, 0, ((optionsx[heartcoord] + (string_width(options[heartcoord]) / 2)) - 8), (buttony + 11))
    draw_set_alpha(1)
    if control_check_pressed(0)
    {
        if (heartcoord == 0 && (!global.broken))
            snd_play(snd_dogsalad)
        else
        {
            snd_play(snd_select)
            visible = false
            alarm[1] = 1
        }
    }
}
