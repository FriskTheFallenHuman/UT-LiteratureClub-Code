if (!firstrun)
{
    if (ballamount < string_length(ball))
    {
        if keyboard_check_pressed(ord(string_char_at(ball, (ballamount + 1))))
        {
            ballamount += 1
            if (ballamount >= string_length(ball))
                snd_play(snd_ballchime)
        }
    }
    if (control_check_pressed(1) && special_x < 5)
    {
        special_x += 1
        if (special_x >= 5)
        {
            alarm[0] = 1800
            alarm[1] = -1
            d = 0
            drawpw = 1
        }
    }
}
if (control_check_pressed(0) || gamepad_button_check_any((obj_time.j_ch - 1)))
{
    if global.firstrun
        game_end()
    else
    {
        snd_stop(snd_splash)
        snd_stop(snd_fall2)
        room_goto_next()
        return;
    }
}
