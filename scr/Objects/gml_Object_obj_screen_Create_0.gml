messed = 0
centered = 0
window_center()
roomMainView = 0
if (ossafe_file_exists("config.ini"))
{
    ossafe_ini_open("config.ini")
        dynRatio = ini_read_real("General", "widescreen", 0)
    ossafe_ini_close()
}
else
    dynRatio = 0
dynRatio = 0
trueSize = []
viewXDiff = 0
viewYDiff = 0