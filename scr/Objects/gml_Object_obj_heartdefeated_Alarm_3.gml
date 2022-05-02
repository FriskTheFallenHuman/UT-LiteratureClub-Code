iniwrite = ossafe_ini_open("undertale.ini")
gs = ini_read_real(("General" + string(global.filechoice)), "Gameover", 0)
ini_write_real(("General" + string(global.filechoice)), "Gameover", (gs + 1))
ossafe_ini_close()
ossafe_savedata_save()
if (global.charsunlocked == 0)
{
    if (gs == 0)
        msgnum = 0
    if (gs > 0 && global.kills == 0)
        msgnum = (100 + floor(random(8)))
    if (gs > 0)
        msgnum = (200 + floor(random(5)))
    if (global.flag[272] == 1)
        msgnum = 300
}
event_user(1)
