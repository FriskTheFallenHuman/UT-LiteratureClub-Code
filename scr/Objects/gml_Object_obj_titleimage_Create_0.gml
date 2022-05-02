if global.firstrun
{
    sprite_index = spr_undertaletitle_glitched
    image_speed = 0.05
}
alarm[0] = 600
alarm[1] = 60
alarm[3] = 4
d = 0
ballamount = 0
special_x = 0
drawpw = 0
logoy = -50
text_alpha = 0
fadeSpeed = 0.05
fadesiner = 0
logoydest = 110
fadesign = 1
pw1 = 0
pw2 = 0
pw3 = 0
pw4 = 0
if ossafe_file_exists("undertale.ini")
{
    ossafe_ini_open("undertale.ini")
    if (ini_read_real(("General" + string(global.filechoice)), "Won", 0) > 0)
        pw1 = 1
    if (ini_read_real(("General" + string(global.filechoice)), "Truth", 0) > 0)
    {
        pw1 = 1
        pw2 = 1
    }
    if (ini_read_real(("EndF" + string(global.filechoice)), "EndF", 0) >= 2)
    {
        pw1 = 1
        pw2 = 1
    }
    if (ini_read_real("reset", "reset", 0) > 0)
    {
        pw1 = 1
        pw2 = 1
    }
    if (ini_read_real(("Sans" + string(global.filechoice)), "Intro", 0) > 0)
        pw3 = 1
    if (ini_read_real(("Sans" + string(global.filechoice)), "F", 0) > 0)
        pw3 = 1
    if (ini_read_real(("Sans" + string(global.filechoice)), "SK", 0) > 0)
        pw3 = 1
    if ossafe_file_exists("system_information_963")
        pw3 = 1
    ossafe_ini_close()
}
proceed = 0
ball = "BALL"
firstrun = 0
if global.firstrun
{
    firstrun = 1
    global.firstrun = 0
    firstrun = file_text_open_write("firstrun")
    file_text_write_real(firstrun, 1)
    file_text_close(firstrun)
    alarm[0] = -1
    alarm[1] = -1
    alarm[3] = -1
}
