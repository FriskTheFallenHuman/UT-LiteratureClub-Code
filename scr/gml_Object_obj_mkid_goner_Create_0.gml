dsprite = spr_mkid_goner_d
usprite = spr_mkid_goner_u
lsprite = spr_mkid_goner_lt
rsprite = spr_mkid_goner_rt
dtsprite = spr_mkid_goner_d
utsprite = spr_mkid_goner_u
ltsprite = spr_mkid_goner_lt
rtsprite = spr_mkid_goner_rt
myinteract = 0
facing = 3
direction = 180
talkedto = 0
image_speed = 0
con = 0
fun = false
if (room == room_water7 && global.plot < 110)
    instance_destroy()
type = 0
gox = 0
if (global.flag[5] >= 90)
{
    if ossafe_file_exists("undertale.ini")
    {
        ossafe_ini_open("undertale.ini")
        fsx = ini_read_real(("General" + string(global.filechoice)), "fun", 0)
        if (fsx >= 90 && global.flag[5] >= 90)
        {
            gox = 1
            type = 1
        }
        ossafe_ini_close()
    }
}
if (global.debug == true)
    gox = 1
if (gox == 0)
    instance_destroy()
if (global.flag[7] == 1)
    instance_destroy()
