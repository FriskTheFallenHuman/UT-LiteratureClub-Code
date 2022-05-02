alarm[0] = 20
image_blend = scr_char_files_soulindex(string(global.charsoulcolor))
image_speed = 0
if (global.flag[500] == 0)
{
    if (global.charsunlocked == 0)
    {
        gameoversong = caster_load("music/st_drone.ogg")
        scr_enable_screen_border(false)
    }
    else
    {
        if (global.flag[272] == 0)
            gameoversong = caster_load("music/gameover.ogg")
        if (global.flag[272] == 1)
            gameoversong = caster_load("music/dogsong.ogg")
    }
}
msgnum = -1
dingus = 0
currentvol = 1
heartcon = 0
hearttimer = 0
if (global.flag[500] == 1)
{
    global.flag[502] += 1
    global.border = 0
    dingus = 0
}
