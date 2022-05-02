if (global.debug == true)
{
    gx = ossafe_file_text_open_write("system_information_962")
    ossafe_file_text_write_string(gx, "a")
    ossafe_file_text_close(gx)
    if instance_exists(obj_steam_manager)
    {
        with (obj_steam_manager)
            event_user(1)
    }
}
