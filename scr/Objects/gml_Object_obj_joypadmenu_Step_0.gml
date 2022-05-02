buffer -= 1
if (menu_engage == 0)
{
    if keyboard_check_pressed(vk_down)
        menu += 1
    if (menu == 4)
        menu = 5
    if (fun == false)
    {
        if (menu == 6)
            menu = 7
    }
    if keyboard_check_pressed(vk_up)
        menu -= 1
    if (menu == 4)
        menu = 3
    if (fun == false)
    {
        if (menu == 6)
            menu = 5
    }
    if (menu <= 0)
        menu = 0
    if (menu >= 9)
        menu = 9
    if (buffer < 0)
    {
        if control_check_pressed(0)
        {
            menu_engage = 1
            js_buffer = 1
            buffer = 4
        }
    }
    if (menu == 0)
    {
        if (menu_engage == 1 || control_check_pressed(0))
            finish = 1
        menu_engage = 0
    }
}
if (menu == 1 && menu_engage == 1)
{
    if (obj_time.j_ch > 0 && js_buffer == 0)
    {
        i = 0
        while (i < joystick_buttons(obj_time.j_ch))
        {
            if joystick_check_button(obj_time.j_ch, i)
            {
                global.button0 = i
                menu_engage = 0
                buffer = 4
                break
            }
            else
            {
                i += 1
                continue
            }
        }
    }
    if (js_buffer == 1)
    {
        bt = 0
        for (i = 0; i < joystick_buttons(obj_time.j_ch); i += 1)
        {
            if (!(joystick_check_button(obj_time.j_ch, i)))
                bt += 1
        }
        if (bt >= joystick_buttons(obj_time.j_ch))
            js_buffer = 0
    }
    if (buffer < 0)
    {
        if (control_check_pressed(0) || control_check_pressed(1))
            menu_engage = 0
    }
}
if (menu == 2 && menu_engage == 1)
{
    if (js_buffer == 0)
    {
        if (obj_time.j_ch > 0)
        {
            i = 0
            while (i < joystick_buttons(obj_time.j_ch))
            {
                if joystick_check_button(obj_time.j_ch, i)
                {
                    global.button1 = i
                    menu_engage = 0
                    break
                }
                else
                {
                    i += 1
                    continue
                }
            }
        }
    }
    if (js_buffer == 1)
    {
        bt = 0
        for (i = 0; i < joystick_buttons(obj_time.j_ch); i += 1)
        {
            if (!(joystick_check_button(obj_time.j_ch, i)))
                bt += 1
        }
        if (bt >= joystick_buttons(obj_time.j_ch))
            js_buffer = 0
    }
    if (buffer < 0)
    {
        if (control_check_pressed(0) || control_check_pressed(1))
            menu_engage = 0
    }
}
if (menu == 3 && menu_engage == 1)
{
    if (obj_time.j_ch > 0 && js_buffer == 0)
    {
        i = 0
        while (i < joystick_buttons(obj_time.j_ch))
        {
            if joystick_check_button(obj_time.j_ch, i)
            {
                global.button2 = i
                menu_engage = 0
                break
            }
            else
            {
                i += 1
                continue
            }
        }
    }
    if (js_buffer == 1)
    {
        bt = 0
        for (i = 0; i < joystick_buttons(obj_time.j_ch); i += 1)
        {
            if (!(joystick_check_button(obj_time.j_ch, i)))
                bt += 1
        }
        if (bt >= joystick_buttons(obj_time.j_ch))
            js_buffer = 0
    }
    if (buffer < 0)
    {
        if (control_check_pressed(0) || control_check_pressed(1))
            menu_engage = 0
    }
}
if (menu == 5 && menu_engage == 1)
{
    if (buffer < 0)
    {
        if obj_time.right
            global.analog_sense -= global.analog_sense_sense
        if obj_time.left
            global.analog_sense += global.analog_sense_sense
        if (global.analog_sense >= 0.4)
            global.analog_sense = 0.4
        if (global.analog_sense <= 0.02)
            global.analog_sense = 0.02
        if (control_check_pressed(0) || control_check_pressed(1))
            menu_engage = 0
    }
}
if (fun == true)
{
    if (menu == 6 && menu_engage == 1)
    {
        if (buffer < 0)
        {
            if obj_time.right
                global.analog_sense_sense -= 0.01
            if obj_time.left
                global.analog_sense_sense += 0.01
            if (global.analog_sense_sense >= 0.2)
                global.analog_sense_sense = 0.2
            if (global.analog_sense_sense <= 0.01)
                global.analog_sense_sense = 0.01
            if (control_check_pressed(0) || control_check_pressed(1))
                menu_engage = 0
        }
    }
}
if (menu == 7 && menu_engage == 1)
{
    global.joy_dir += 1
    if (global.joy_dir >= 3)
        global.joy_dir = 0
    menu_engage = 0
}
if (r_buffer > 0)
    r_buffer -= 1
if (menu == 8 && menu_engage == 1)
{
    r_buffer = 15
    rrr = floor(random(50))
    if (fun == true)
    {
        if (rrr == 1)
            r_line = scr_gettext("joyconfig_spaghetted")
        else
            r_line = scr_gettext("joyconfig_resetted")
    }
    global.button0 = 2
    global.button1 = 1
    global.button2 = 4
    global.analog_sense = 0.2
    global.analog_sense_sense = 0.01
    global.joy_dir = 0
    if (obj_time.j_ch > 0)
    {
        if (!joystick_has_pov(obj_time.j_ch))
            global.joypad_dir = 1
    }
    menu_engage = 0
}
if (menu == 9 && menu_engage == 1)
{
    caster_free(-3)
    room_goto(room_controltest)
}
if (intro == 1)
    event_user(1)
if finish
{
    ossafe_ini_open("config.ini")
    ini_write_real("joypad1", "b0", global.button0)
    ini_write_real("joypad1", "b1", global.button1)
    ini_write_real("joypad1", "b2", global.button2)
    ini_write_real("joypad1", "as", global.analog_sense)
    ini_write_real("joypad1", "jd", global.joy_dir)
    ossafe_ini_close()
    var sm = instance_create(0, 0, obj_settingsmenu)
    with (sm)
    {
        menu_engage = 0
        buffer = other.buffer
        intro = other.intro
        rectile = other.rectile
        buffer = other.buffer
        weather = other.weather
        extreme = other.extreme
        extreme2 = other.extreme2
        harp = other.harp
        weathermusic = other.weathermusic
    }
    instance_destroy()
}
