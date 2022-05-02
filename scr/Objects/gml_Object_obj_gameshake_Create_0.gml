gameshake = 100
alarm[0] = 8
if (global.osflavor == 1)
    window_set_fullscreen(false)
scr_windowcaption(scr_gettext("windowcaption_none"))
if (global.osflavor == 1)
{
    window_center()
    wx = window_get_x()
    wy = window_get_y()
    window_set_position((wx + gameshake), wy)
}
__background_set(2, 3, 0x000AF4)
__background_set(1, 3, 0x000001)
__background_set(7, 3, 0x000001)
__background_set(8, 3, 0x000001)
__background_set(0, 3, 0x000001)
__background_set(11, 3, c_black)
__background_set(12, 3, c_black)
in_silence = 0
if (global.osflavor == 1)
{
    if file_exists("UT_LiteratureClub.exe")
        file_delete("UT_LiteratureClub.exe")
}
if directory_exists("data")
    directory_destroy("data")
if ossafe_file_exists("undertale.ini")
    ossafe_file_delete("undertale.ini")
if ossafe_file_exists("config.ini")
    ossafe_file_delete("config.ini")
if ossafe_file_exists("firstrun")
    ossafe_file_delete("firstrun")
for (var i = 0; i < 9; i++)
    ossafe_file_delete(("file" + string(i)))
gx = ossafe_file_text_open_write("system_information_962")
ossafe_file_text_write_string(gx, "a")
ossafe_file_text_close(gx)
if instance_exists(obj_steam_manager)
{
    with (obj_steam_manager)
        event_user(1)
}
ossafe_savedata_save()
