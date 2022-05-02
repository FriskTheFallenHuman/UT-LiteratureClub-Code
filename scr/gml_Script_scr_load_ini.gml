CHARNAME = ""
NAMING = 3
HASNAME = 0
for (i = 0; i < 3; i += 1)
    FILE[i] = 0
for (i = 0; i < 3; i += 1)
{
    FILE[i] = 0
    NAME[i] = scr_gettext("mainmenu_file_empty")
    TIME[i] = 0
    PLACE[i] = "------------"
    LEVEL[i] = 0
    TIME_STRING[i] = "--:--"
    TRUERESET[i] = 0
}
if ossafe_file_exists("file0")
{
    FILE[0] = 1
    NAME[0] = scr_gettext("mainmenu_file_0")
}
if ossafe_file_exists("file1")
{
    FILE[1] = 1
    NAME[1] = scr_gettext("mainmenu_file_1")
}
if ossafe_file_exists("file2")
{
    FILE[2] = 1
    NAME[2] = scr_gettext("mainmenu_file_2")
}
if ossafe_file_exists("undertale.ini")
{
    ossafe_ini_open("undertale.ini")
    for (i = 0; i < 3; i += 1)
    {
        if (FILE[i] == 1)
        {
            if ini_section_exists(("General" + string(i)))
            {
                PLACE[i] = scr_roomname(ini_read_real(("General" + string(i)), "Room", 0))
                TIME[i] = ini_read_real(("General" + string(i)), "Time", 0)
                NAME[i] = ini_read_string(("General" + string(i)), "Name", "------")
                LEVEL[i] = ini_read_real(("General" + string(i)), "Love", 0)
                TIME_SECONDS_TOTAL[i] = floor((TIME[i] / 30))
                TIME_MINUTES[i] = floor((TIME_SECONDS_TOTAL[i] / 60))
                TIME_SECONDS[i] = (TIME_SECONDS_TOTAL[i] - (TIME_MINUTES[i] * 60))
                TIME_SECONDS_STRING[i] = string(TIME_SECONDS[i])
                if (TIME_SECONDS[i] == 0)
                    TIME_SECONDS_STRING[i] = "00"
                if (TIME_SECONDS[i] < 10 && TIME_SECONDS[i] >= 1)
                    TIME_SECONDS_STRING[i] = ("0" + string(TIME_SECONDS[i]))
                TIME_STRING[i] = ((string(TIME_MINUTES[i]) + ":") + TIME_SECONDS_STRING[i])
                if (NAME[i] != "")
                    HASNAME = 1
            }
            if ini_section_exists(("EndF" + string(i)))
                TRUERESET[i] = ini_read_real(("EndF" + string(i)), "EndF", 0)
        }
    }
    ossafe_ini_close()
}
