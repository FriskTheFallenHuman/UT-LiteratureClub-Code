if (global.steam_int == 1)
{
    if (mode == 0)
    {
        if (!steam_file_exists("system_information_962"))
            steam_file_write_file("system_information_962", "system_information_962")
    }
    else if (mode == 1)
    {
        if steam_file_exists("system_information_962")
            steam_file_delete("system_information_962")
        steam_file_write_file("system_information_962", "system_information_962")
    }
    else
        mode = 0
}
