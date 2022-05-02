if (global.firstrun == 1 || (!steam_is_cloud_enabled_for_app()))
{
    if steam_file_exists("system_information_962")
        steam_file_delete("system_information_962")
    if steam_file_exists("system_information_963")
        steam_file_delete("system_information_963")
}
else
{
    if steam_file_exists("system_information_962")
    {
        exd = file_text_open_write("system_information_962")
        file_text_write_string(exd, "a")
        file_text_close(exd)
    }
    if steam_file_exists("system_information_963")
    {
        exd = file_text_open_write("system_information_963")
        file_text_write_string(exd, "b")
        file_text_close(exd)
        if file_exists("system_information_962")
            file_delete("system_information_962")
        if steam_file_exists("system_information_962")
            steam_file_delete("system_information_962")
    }
}
