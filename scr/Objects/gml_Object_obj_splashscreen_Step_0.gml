if loaded
{
    if continue_without_data
    {
        if keyboard_check_pressed(vk_up)
        {
            snd_play(snd_squeak)
            if (heart_pos_y == ((yy + 140) + line_height))
                heart_pos_y -= line_height
        }
        if keyboard_check_pressed(vk_down)
        {
            snd_play(snd_squeak)
            if (heart_pos_y == (yy + 140))
                heart_pos_y += line_height
        }
        if control_check_pressed(0)
        {
            snd_play(snd_select)
            if (heart_pos_y == (yy + 140))
            {
                heart_pos_x = heart_pos_x_default
                transitioning = 1
                event_user(0)
                room_goto(PLACE_LEGEND)
            }
            else if (heart_pos_y == ((yy + 140) + line_height))
                continue_without_data = 0
        }
    }
    else
    {
        buffer++
        if keyboard_check_pressed(vk_left)
        {
            snd_play(snd_squeak)
            heart_pos_x = heart_pos_x_default
        }
        if keyboard_check_pressed(vk_right)
        {
            snd_play(snd_squeak)
            heart_pos_x = (heart_pos_x_default + heart_pos_x_h_padding)
        }
        if (control_check_pressed(0) && buffer >= 3)
        {
            buffer = 0
            snd_play(snd_select)
            if (heart_pos_x == heart_pos_x_default)
            {
                if is_ddlc_save_file_found()
                {
                    event_user(0)
                    transitioning = 1
                    room_goto(PLACE_LEGEND)
                }
                continue_without_data = 1
            }
            else if (heart_pos_x == (heart_pos_x_default + heart_pos_x_h_padding))
                game_end()
        }
        if control_check_pressed(1)
        {
            snd_play(snd_select)
            continue_without_data = 0
        }
    }
}
else
{
    if (text_alpha_a < 1)
        text_alpha_a += 0.015
    if (text_alpha_a >= 1)
    {
        if (text_alpha_b < 1)
            text_alpha_b += 0.015
    }
    loaded = text_alpha_b >= true
}
