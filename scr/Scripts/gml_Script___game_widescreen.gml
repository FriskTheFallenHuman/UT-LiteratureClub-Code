if (file_exists("config.ini"))
{
    ini_open("config.ini")
    global.toggle_widescreen = ini_read_real("General", "widescreen", true)
    ini_close()
}
else
    global.toggle_widescreen = false
