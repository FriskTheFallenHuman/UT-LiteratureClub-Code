num_borders = 12
border_enabled[0] = 1
border_enabled[1] = 1
border_enabled[2] = 1
border_enabled[3] = 1
for (var i = 4; i <= num_borders; i++)
    border_enabled[i] = 0
border_11 = 0
fun = false

if ossafe_file_exists("undertale.ini")
{
    ossafe_ini_open("undertale.ini")
    if ossafe_file_exists(("file" + string(global.filechoice)))
    {
        if (global.TYPE == 1)
            fun = true
        var Won = ini_read_real(("General" + string(global.filechoice)), "Won", 0)
        var CP = ini_read_real(("General" + string(global.filechoice)), "CP", 0)
        var CH = ini_read_real(("General" + string(global.filechoice)), "CH", 0)
        var BW = ini_read_real(("General" + string(global.filechoice)), "BW", 0)
        var BP = ini_read_real(("General" + string(global.filechoice)), "BP", 0)
        var BH = ini_read_real(("General" + string(global.filechoice)), "BH", 0)
        var DB = ini_read_real(("General" + string(global.filechoice)), "DB", 0)
        var EndF = ini_read_real(("EndF" + string(global.filechoice)), "EndF", 0)
        var M = ini_read_real(("Alphys" + string(global.filechoice)), "M", 0)
        var R = ini_read_real(("Alphys" + string(global.filechoice)), "R", 0)
        if (Won || BW || CP || BP)
        {
            for (i = 4; i <= 8; i++)
                border_enabled[i] = 1
        }
        if (CP || BP)
            border_enabled[9] = 1
        if (CH || BH)
            border_enabled[10] = 1
        if M
        {
            border_enabled[11] = 1
            border_11 = R
        }
        if DB
            border_enabled[12] = 1
        if (EndF >= 2)
            fun = false
    }
    ossafe_ini_close()
}

menu = 1
menu_max = 6
menu_engage = false
canchange = false
buffer = 5
intro = 0
weather = 0
rectile = 0
extreme = 0
extreme2 = 0
harp = 0
weathermusic = 0

if (fun == true)
{
    intro = 1
    menu_engage = -1
    weather = 1
    month = current_month
    if (month == 12 || month == 1 || month == 2)
        weather = 1
    if (month == 3 || month == 4 || month == 5)
        weather = 2
    if (month == 6 || month == 7 || month == 8)
        weather = 3
    if (month == 9 || month == 10 || month == 11)
        weather = 4
}

finish = false

if (global.to_joyconfig)
{
    global.to_joyconfig = 0
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
