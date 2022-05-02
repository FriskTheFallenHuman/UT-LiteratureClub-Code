global.TYPE = 0
if (global.charsunlocked > 0)
    global.TYPE = 1
var UTLC_comment = "asset resolver moment"
if (global.TYPE == 0)
{
    scr_windowcaption(scr_gettext("windowcaption_metting"))
    MENUSONG = mus_st_drone
    audio_is_playing(MENUSONG)
    event_user(5)
}
if (global.TYPE == 1)
{
    MENUSONG = mus_menu0
    audio_is_playing(MENUSONG)
    event_user(5)
}
global.to_joyconfig = 0
global.COL_A = c_green
global.COL_B = c_lime
global.COL_PLUS = merge_color(c_lime, c_white, 0.5)
if (global.TYPE == 1)
{
    global.COL_A = merge_color(c_silver, c_navy, 0.2)
    global.COL_B = c_white
    global.COL_PLUS = merge_color(c_yellow, c_white, 0.5)
}
MENU_NO = 0
for (i = 0; i < 11; i += 1)
    MENUCOORD[i] = 0
XL = 210
YL = 40
YS = 5
HEARTX = 75
HEARTY = 110
HEARTXCUR = 75
HEARTYCUR = 75
MOVENOISE = 0
SELNOISE = false
BACKNOISE = 0
DEATHNOISE = 0
ONEBUFFER = 2
TWOBUFFER = 0
THREAT = 0
TEMPMESSAGE = " "
MESSAGETIMER = 0
NS = -4
scr_load_ini()
