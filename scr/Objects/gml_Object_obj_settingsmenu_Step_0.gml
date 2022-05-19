buffer -= 1

if (!ossafe_file_exists("undertale.ini"))
    canchange = true

if (menu_engage == false)
{
    if (keyboard_check_pressed(vk_down))
        menu += 1

    if (keyboard_check_pressed(vk_up))
        menu -= 1

    if (menu <= 0)
        menu = 1

    if (menu >= menu_max)
        menu = menu_max

    if (buffer < 0 && control_check_pressed(0))
    {
        if (!((menu >= 2 && menu <= menu_max)))
        {
            menu_engage = true
            js_buffer = 1
            buffer = 4
        }
    }

    if (menu == 1)
    {
        if (menu_engage == true || keyboard_check_pressed(vk_left) || keyboard_check_pressed(vk_right))
        {
            if (global.language == "en")
                global.language = "ja"
            else
                global.language = "en"
        }

        menu_engage = false
    }

    if (menu == 2)
    {
        if (menu_engage == true || keyboard_check_pressed(vk_right))
        {
            do
            {
                global.screen_border_id++
                if (global.screen_border_id > num_borders)
                    global.screen_border_id = 0
            } until (global.screen_border_id < 0 || border_enabled[global.screen_border_id]);
            global.screen_border_state = 0
            global.screen_border_dynamic_fade_id = 0
            global.screen_border_dynamic_fade_level = 0
            scr_enable_screen_border(true)
        }
        else if keyboard_check_pressed(vk_left)
        {
            do
            {
                global.screen_border_id--
                if (global.screen_border_id < 0)
                    global.screen_border_id = num_borders
            } until (global.screen_border_id < 0 || border_enabled[global.screen_border_id]);
            global.screen_border_state = 0
            global.screen_border_dynamic_fade_id = 0
            global.screen_border_dynamic_fade_level = 0
            scr_enable_screen_border(true)
        }

        menu_engage = false
    }

    if (menu == 3)
    {
        if ((canchange == 1 && menu_engage == true) || keyboard_check_pressed(vk_left) || keyboard_check_pressed(vk_right))
        {
            if (global.hardmode == 0)
                global.hardmode = 1
            else
                global.hardmode = 0
        }

        menu_engage = false
    }

    if (menu == 4)
    {
        if ((obj_time.j_ch == 1 && menu_engage == true) || control_check_pressed(0))
        {
            var jc = instance_create(0, 0, obj_joypadmenu)
            with (jc)
            {
                menu_engage = false
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
            return;
        }
 
        menu_engage = false
    }

    if (menu == 5)
    {
        if (menu_engage == true || keyboard_check_pressed(vk_left) || keyboard_check_pressed(vk_right))
        {
            if (global.toggle_widescreen == true)
                global.toggle_widescreen = false
            else
                global.toggle_widescreen = true
            scr_enable_screen_border((!global.toggle_widescreen))
        }

        menu_engage = false
    }

    if (menu == 6)
    {
        if (menu_engage == true || control_check_pressed(0))
            finish = true

        menu_engage = false
    }
}

if (finish)
{
    ossafe_ini_open("config.ini")
    ini_write_string("General", "lang", global.language)
    ini_write_real("General", "sb", global.screen_border_id)
    ini_write_real("General", "hardmode", global.hardmode)
    ini_write_real("General", "widescreen", obj_screen.dynRatio)
    ossafe_ini_close()
    ossafe_savedata_save()
    caster_free(all)
    room_goto(PLACE_MENU)
}