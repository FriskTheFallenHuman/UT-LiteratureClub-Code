if (argument0 != 0)
    global.typer = argument0

if (global.typer == 1)
    SCR_TEXTSETUP(fnt_main, c_white, (x + 20), (y + 20), (x + (global.idealborder[1] - 55)), 1, 1, SND_TXT2, 16, 32)

if (global.typer == 2)
    SCR_TEXTSETUP(fnt_plain, c_black, x, y, (x + 190), 43, 2, SND_TXT1, 9, 20)

if (global.typer == 3)
    SCR_TEXTSETUP(fnt_curs, c_teal, x, y, (x + 100), 39, 3, SND_TXT1, 10, 10)

if (global.typer == 4)
    SCR_TEXTSETUP(fnt_maintext, c_white, (x + 20), (y + 20), (__view_get(0, view_current) + 290), 0, 1, snd_txttor, 8, 18)

if (global.typer == 5)
    SCR_TEXTSETUP(fnt_maintext, c_white, (x + 20), (y + 20), (__view_get(0, view_current) + 290), 0, 1, SND_TXT1, 8, 18)

if (global.typer == 6)
    SCR_TEXTSETUP(fnt_plain, c_black, x, y, (x + 200), 0, 1, snd_floweytalk1, 9, 20)

if (global.typer == 7)
    SCR_TEXTSETUP(fnt_plain, c_black, x, y, (x + 200), 2, 2, snd_floweytalk2, 9, 20)

if (global.typer == 8)
    SCR_TEXTSETUP(fnt_plain, c_black, x, y, (x + 200), 0, 1, snd_txttor, 9, 20)

if (global.typer == 9)
    SCR_TEXTSETUP(fnt_maintext, c_white, (x + 20), (y + 20), (__view_get(0, view_current) + 290), 0, 1, snd_floweytalk1, 8, 18)

if (global.typer == 10)
    SCR_TEXTSETUP(fnt_maintext, c_white, (x + 20), (y + 20), (__view_get(0, view_current) + 290), 0, 1, snd_nosound, 8, 18)

if (global.typer == 11)
    SCR_TEXTSETUP(fnt_maintext, c_white, (x + 20), (y + 20), (__view_get(0, view_current) + 290), 0, 2, SND_TXT2, 9, 18)

if (global.typer == 12)
    SCR_TEXTSETUP(fnt_plain, c_black, x, y, (x + 200), 1, 3, snd_txttor2, 10, 20)

if (global.typer == 13)
    SCR_TEXTSETUP(fnt_plain, c_black, x, y, (x + 200), 2, 4, snd_txttor2, 11, 20)

if (global.typer == 14)
    SCR_TEXTSETUP(fnt_plain, c_black, x, y, (x + 200), 3, 5, snd_txttor2, 14, 20)

if (global.typer == 15)
    SCR_TEXTSETUP(fnt_plain, c_black, x, y, (x + 200), 0, 10, snd_txttor2, 18, 20)

if (global.typer == 16)
    SCR_TEXTSETUP(fnt_maintext, c_white, (x + 20), (y + 20), (__view_get(0, view_current) + 290), 1.2, 2, snd_floweytalk2, 8, 18)

if (global.typer == 17)
    SCR_TEXTSETUP(fnt_comicsans, c_white, (x + 20), (y + 20), (__view_get(0, view_current) + 290), 0, 1, snd_txtsans, 8, 18)

if (global.typer == 19)
    global.typer = 18

if (global.typer == 18)
    SCR_TEXTSETUP(fnt_papyrus, c_white, (x + 20), (y + 20), (__view_get(0, view_current) + 290), 0, 1, snd_txtpap, 11, 18)

if (global.typer == 20)
    SCR_TEXTSETUP(fnt_plainbig, c_black, x, y, (x + 200), 0, 2, snd_floweytalk2, 25, 20)

if (global.typer == 21)
    SCR_TEXTSETUP(fnt_maintext, c_white, (x + 20), (y + 20), (__view_get(0, view_current) + 290), 0, 4, snd_nosound, 10, 18)

if (global.typer == 22)
    SCR_TEXTSETUP(fnt_papyrus, c_black, (x + 10), y, (x + 200), 1, 1, snd_txtpap, 11, 20)

if (global.typer == 23)
    SCR_TEXTSETUP(fnt_maintext, c_white, (x + 20), (y + 20), (__view_get(0, view_current) + 310), 0, 1, SND_TXT1, 8, 18)

if (global.typer == 24)
    SCR_TEXTSETUP(fnt_maintext, c_white, (x + 20), (y + 20), (__view_get(0, view_current) + 310), 0, 1, snd_tem, 8, 18)

if (global.typer == 25)
{
    if (global.language == "ja")
        SCR_TEXTSETUP(fnt_ja_plainsmall, c_white, (x + 20), (y + 20), (__view_get(0, view_current) + 290), 0, 1, SND_TXT1, 10, 15)
    else
        SCR_TEXTSETUP(fnt_maintext, c_white, (x + 20), (y + 20), (__view_get(0, view_current) + 290), 0, 1, SND_TXT1, 8, 18)
}

if (global.typer == 27)
    SCR_TEXTSETUP(fnt_maintext, c_white, (x + 20), (y + 20), (__view_get(0, view_current) + 290), 0, 3, snd_mtt1, 8, 18)

if (global.typer == 28)
    SCR_TEXTSETUP(fnt_maintext, c_white, (x + 20), (y + 20), (__view_get(0, view_current) + 290), 0, 2, snd_tem, 8, 18)

if (global.typer == 30)
    SCR_TEXTSETUP(fnt_main, c_white, (x + 20), (y + 20), 9999, 0, 2, snd_txtasg, 20, 36)

if (global.typer == 31)
    SCR_TEXTSETUP(fnt_maintext, c_white, (x + 20), (y + 20), 9999, 0, 2, snd_txtasg, 12, 18)

if (global.typer == 32)
    SCR_TEXTSETUP(fnt_main, c_white, (x + 20), (y + 20), 9999, 0, 2, snd_txtasr, 20, 36)

if (global.typer == 33)
    SCR_TEXTSETUP(fnt_plain, c_black, x, y, (x + 190), 43, 1, SND_TXT1, 9, 20)

if (global.typer == 34)
    SCR_TEXTSETUP(fnt_wingdings, c_white, (x + 20), (y + 20), (__view_get(0, view_current) + 290), 1, 2, snd_wngdng1, 9, 18)

if (global.typer == 35)
    SCR_TEXTSETUP(fnt_maintext, c_white, (x + 20), (y + 20), (__view_get(0, view_current) + 290), 0, 2, snd_txtasr, 10, 18)

if (global.typer == 36)
    SCR_TEXTSETUP(fnt_maintext, c_white, (x + 20), (y + 20), (__view_get(0, view_current) + 290), 0, 8, snd_txtasr2, 10, 18)

if (global.typer == 37)
    SCR_TEXTSETUP(fnt_maintext, c_white, (x + 20), (y + 20), (__view_get(0, view_current) + 290), 0, 1, snd_txtund, 8, 18)

if (global.typer == 38)
    SCR_TEXTSETUP(fnt_maintext, c_white, (x + 20), (y + 20), (__view_get(0, view_current) + 290), 0, 6, snd_txtund, 8, 18)

if (global.typer == 39)
    SCR_TEXTSETUP(fnt_plain, c_black, (x + 16), y, (x + 190), 0, 1, snd_txtund, 9, 20)

if (global.typer == 40)
    SCR_TEXTSETUP(fnt_plain, c_black, (x + 16), y, (x + 190), 1, 2, snd_txtund, 9, 20)

if (global.typer == 41)
    SCR_TEXTSETUP(fnt_plain, c_black, (x + 16), y, (x + 190), 0, 1, snd_txtund, 9, 20)

if (global.typer == 42)
    SCR_TEXTSETUP(fnt_plain, c_black, (x + 16), y, (x + 190), 2, 4, snd_txtund, 9, 20)

if (global.typer == 43)
    SCR_TEXTSETUP(fnt_plain, c_black, (x + 16), y, (x + 190), 2, 4, snd_txtund2, 9, 20)

if (global.typer == 44)
    SCR_TEXTSETUP(fnt_plain, c_black, (x + 16), y, (x + 190), 2, 5, snd_txtund3, 9, 20)

if (global.typer == 45)
    SCR_TEXTSETUP(fnt_plain, c_black, (x + 16), y, (x + 190), 2, 7, snd_txtund4, 9, 20)

if (global.typer == 47)
    SCR_TEXTSETUP(fnt_maintext, c_white, (x + 20), (y + 20), (__view_get(0, view_current) + 290), 0, 1, snd_txtal, 8, 18)

if (global.typer == 48)
    SCR_TEXTSETUP(fnt_comicsans, c_white, (x + 20), (y + 20), (__view_get(0, view_current) + 290), 0, 1, snd_txtsans2, 8, 18)

if (global.typer == 49)
    SCR_TEXTSETUP(fnt_plain, c_white, x, y, (x + 190), 43, 1, snd_txtal, 9, 20)

if (global.typer == 50)
    SCR_TEXTSETUP(fnt_main, c_white, (x + 20), (y + 10), 999, 0, 3, snd_mtt1, 8, 18)

if (global.typer == 51)
    SCR_TEXTSETUP(fnt_plain, c_black, (x + 20), (y + 16), 999, 0, 3, snd_mtt1, 8, 18)

if (global.typer == 52)
    SCR_TEXTSETUP(fnt_plain, c_black, (x + 20), (y + 20), 999, 0, 1, snd_txtal, 8, 18)

if (global.typer == 53)
    SCR_TEXTSETUP(fnt_plain, c_black, (x + 20), (y + 10), 999, 1.5, 4, snd_mtt1, 8, 18)

if (global.typer == 54)
    SCR_TEXTSETUP(fnt_plain, c_black, (x + 20), (y + 10), 999, 0, 7, snd_mtt1, 8, 18)

if (global.typer == 55)
    SCR_TEXTSETUP(fnt_plain, c_black, x, y, (x + 999), 0, 2, snd_nosound, 9, 20)

if (global.typer == 60)
    SCR_TEXTSETUP(fnt_maintext, c_white, (x + 20), (y + 20), (__view_get(0, view_current) + 290), 0, 2, snd_txtasg, 8, 18)

if (global.typer == 61)
    SCR_TEXTSETUP(fnt_main, c_white, (x + 20), (y + 20), (x + 99999), 0, 2, snd_nosound, 16, 32)

if (global.typer == 62)
    SCR_TEXTSETUP(fnt_plain, c_black, x, y, (x + 200), 0, 3, snd_txtasg, 9, 20)

if (global.typer == 63)
    SCR_TEXTSETUP(fnt_plain, c_black, x, y, (x + 200), 0, 2, snd_txtasg, 9, 20)

if (global.typer == 64)
    SCR_TEXTSETUP(fnt_plain, c_black, x, y, (x + 200), 2, 3, snd_txtasg, 9, 20)

if (global.typer == 66)
    SCR_TEXTSETUP(fnt_plain, c_black, x, y, (x + 200), 0, 2, snd_floweytalk1, 9, 20)

if (global.typer == 67)
    SCR_TEXTSETUP(fnt_main, c_white, (x + 20), (y + 20), (x + 999), 2, 5, snd_floweytalk2, 16, 32)

if (global.typer == 68)
    SCR_TEXTSETUP(fnt_plain, c_white, x, y, (x + 500), 0, 1, snd_floweytalk1, 9, 20)

if (global.typer == 69)
    SCR_TEXTSETUP(fnt_plain, c_white, x, y, (x + 500), 2, 2, snd_floweytalk2, 9, 20)

if (global.typer == 70)
    SCR_TEXTSETUP(fnt_plain, c_white, x, y, (x + 500), 1, 3, snd_floweytalk1, 9, 20)

if (global.typer == 71)
    SCR_TEXTSETUP(fnt_plain, c_white, x, y, (x + 500), 2, 5, snd_floweytalk2, 9, 20)

if (global.typer == 72)
    SCR_TEXTSETUP(fnt_plain, c_white, x, y, (x + 500), 1, 2, snd_floweytalk1, 9, 20)

if (global.typer == 73)
    SCR_TEXTSETUP(fnt_main, c_white, (x + 20), (y + 20), (x + 99999), 0, 5, snd_nosound, 16, 32)

if (global.typer == 74)
    SCR_TEXTSETUP(fnt_plain, c_black, x, y, (x + 490), 0, 1, snd_txtal, 9, 20)

if (global.typer == 75)
    SCR_TEXTSETUP(fnt_plain, c_black, x, y, (x + 490), 2, 1, snd_txtal, 9, 20)

if (global.typer == 76)
    SCR_TEXTSETUP(fnt_maintext, c_white, (x + 20), (y + 20), (__view_get(0, view_current) + 290), 0, 1, snd_txtasr, 8, 18)

if (global.typer == 77)
    SCR_TEXTSETUP(fnt_plain, c_black, x, y, (x + 200), 0, 4, snd_floweytalk2, 9, 20)

if (global.typer == 78)
    SCR_TEXTSETUP(fnt_plain, c_black, x, y, (x + 200), 2, 3, snd_floweytalk2, 9, 20)

if (global.typer == 79)
    SCR_TEXTSETUP(fnt_maintext, c_white, (x + 20), (y + 20), (__view_get(0, view_current) + 290), 0, 2, snd_txtasr2, 8, 18)

if (global.typer == 80)
    SCR_TEXTSETUP(fnt_comicsans, c_black, x, y, (x + 200), 0, 1, snd_txtsans, 10, 20)

if (global.typer == 81)
    SCR_TEXTSETUP(fnt_plain, c_black, x, y, (x + 190), 0, 1, snd_txtund, 9, 20)

if (global.typer == 82)
    SCR_TEXTSETUP(fnt_plain, c_black, x, y, (x + 490), 2, 3, snd_txtal, 9, 20)

if (global.typer == 83)
    SCR_TEXTSETUP(fnt_papyrus, c_black, (x + 2), y, (x + 200), 1, 3, snd_txtpap, 11, 20)

if (global.typer == 84)
    SCR_TEXTSETUP(fnt_plain, c_black, x, y, (x + 200), 1, 2, snd_txttor2, 10, 20)

if (global.typer == 85)
    SCR_TEXTSETUP(fnt_plain, c_black, x, y, (x + 200), 0, 2, snd_txtasr, 9, 20)

if (global.typer == 86)
    SCR_TEXTSETUP(fnt_plain, c_black, (x + 10), y, (x + 200), 0, 1, snd_txtasr2, 9, 20)

if (global.typer == 87)
    SCR_TEXTSETUP(fnt_plain, c_black, (x + 10), y, (x + 200), 0, 3, snd_txtasr2, 9, 20)

if (global.typer == 88)
    SCR_TEXTSETUP(fnt_plain, c_black, (x + 10), y, (x + 200), 2, 3, snd_txtasr2, 9, 20)

if (global.typer == 89)
    SCR_TEXTSETUP(fnt_maintext, c_white, (x + 20), (y + 20), (__view_get(0, view_current) + 290), 0, 1, snd_txtasr, 8, 18)

if (global.typer == 90)
    SCR_TEXTSETUP(fnt_maintext, c_white, (x + 20), (y + 20), (__view_get(0, view_current) + 290), 0, 3, snd_txtasr, 8, 18)

if (global.typer == 91)
    SCR_TEXTSETUP(fnt_maintext, c_white, (x + 20), (y + 20), 9999, 0, 3, snd_txttor, 10, 18)

if (global.typer == 92)
    SCR_TEXTSETUP(fnt_plain, c_white, x, y, (x + 190), 43, 1, SND_TXT1, 9, 20)

if (global.typer == 93)
    SCR_TEXTSETUP(fnt_plain, c_black, (x + 16), y, (x + 190), 0, 1, snd_txtund_hyper, 9, 20)

if (global.typer == 94)
    SCR_TEXTSETUP(fnt_plain, c_black, (x + 16), y, (x + 190), 1, 2, snd_txtund_hyper, 9, 20)

if (global.typer == 95)
    SCR_TEXTSETUP(fnt_plain, c_black, (x + 16), y, (x + 190), 2, 3, snd_txtund_hyper, 9, 20)

if (global.typer == 96)
    SCR_TEXTSETUP(fnt_plain, c_black, (x + 16), y, (x + 190), 3, 4, snd_txtund_hyper, 9, 20)

if (global.typer == 97)
    SCR_TEXTSETUP(fnt_plain, c_black, (x + 16), y, 999, 1, 3, snd_mtt1, 8, 18)

if (global.typer == 98)
    SCR_TEXTSETUP(fnt_plain, c_black, (x + 8), y, (x + 200), 0, 1, snd_floweytalk1, 9, 20)

if (global.typer == 99)
    SCR_TEXTSETUP(fnt_plain, c_black, (x + 8), y, (x + 200), 1, 1, snd_floweytalk1, 9, 20)

if (global.typer == 100)
    SCR_TEXTSETUP(fnt_maintext, c_white, (x + 20), (y + 20), (__view_get(0, view_current) + 290), 0, 1, snd_nosound, 8, 18)

if (global.typer == 101)
    SCR_TEXTSETUP(fnt_plain, c_black, (x + 8), y, (x + 200), 1, 2, snd_floweytalk1, 9, 20)

if (global.typer == 102)
    SCR_TEXTSETUP(fnt_plain, c_black, (x + 8), y, (x + 200), 2, 3, snd_floweytalk1, 9, 20)

if (global.typer == 103)
    SCR_TEXTSETUP(fnt_plain, c_black, (x + 8), y, (x + 200), 2, 5, snd_txtasr, 9, 20)

if (global.typer == 104)
    SCR_TEXTSETUP(fnt_main, c_white, (x + 20), (y + 20), 999, 0, 4, snd_nosound, 16, 34)

if (global.typer == 105)
    SCR_TEXTSETUP(fnt_main, c_white, (x + 20), (y + 20), 999, 0, 3, snd_nosound, 16, 34)

if (global.typer == 106)
    SCR_TEXTSETUP(fnt_maintext, c_white, (x + 20), (y + 20), 999, 0, 3, snd_nosound, 8, 18)

if (global.typer == 107)
    SCR_TEXTSETUP(fnt_comicsans, c_black, (x + 5), y, (x + 200), 0, 2, snd_txtsans, 10, 20)

if (global.typer == 108)
    SCR_TEXTSETUP(fnt_plain, c_black, x, y, (x + 200), 0, 4, snd_nosound, 9, 20)

if (global.typer == 109)
    SCR_TEXTSETUP(fnt_comicsans, c_black, (x + 5), y, (x + 200), 0, 1, snd_txtsans, 10, 20)

if (global.typer == 110)
    SCR_TEXTSETUP(fnt_main, c_white, (x + 20), (y + 20), 9999, 0, 2, snd_txtsans, 20, 36)

if (global.typer == 111)
    SCR_TEXTSETUP(fnt_plain, c_black, x, y, (x + 190), 43, 1, SND_TXT1, 9, 20)

if (global.typer == 112)
    SCR_TEXTSETUP(fnt_maintext, c_white, (x + 20), (y + 20), (__view_get(0, view_current) + 290), 0, 2, snd_nosound, 9, 18)

if (global.typer == 113)
    SCR_TEXTSETUP(fnt_main, c_white, (x + 20), (y + 20), 9999, 0, 1, snd_nosound, 16, 32)

if (global.typer == 114)
    SCR_TEXTSETUP(fnt_main, c_white, (x + 20), (y + 20), 9999, 0, 3, snd_txtasg, 20, 36)

if (global.typer == 115)
    SCR_TEXTSETUP(fnt_main, c_white, (x + 20), (y + 20), (__view_get(0, view_current) + 999), 1.4, 4, snd_floweytalk2, 20, 36)

if (global.typer == 116)
    SCR_TEXTSETUP(fnt_main, c_white, (x + 20), (y + 20), (__view_get(0, view_current) + 999), 2, 2, snd_floweytalk2, 20, 32)

if (global.typer == 117)
    SCR_TEXTSETUP(fnt_main, c_white, (x + 20), (y + 20), (__view_get(0, view_current) + 999), 0, 1, snd_floweytalk2, 20, 32)

if (global.typer == 118)
    SCR_TEXTSETUP(fnt_main, c_white, (x + 20), (y + 20), 9999, 0, 2, snd_nosound, 16, 32)

if (global.typer == 119)
    SCR_TEXTSETUP(fnt_maintext, c_white, (x + 20), (y + 20), (__view_get(0, view_current) + 290), 0, 4, snd_floweytalk1, 8, 18)

if (global.typer == 120)
{
    if (global.language == "ja")
        SCR_TEXTSETUP(fnt_maintext, c_white, x, y, (x + 500), 0, 1, snd_floweytalk1, 8, 18)
    else
        SCR_TEXTSETUP(fnt_plain, c_white, x, y, (x + 500), 0, 1, snd_floweytalk1, 9, 20)
}

if (global.typer == 121)
    SCR_TEXTSETUP(fnt_main, c_white, (x + 20), (y + 20), (x + 99999), 0, 3, snd_nosound, 16, 32)

if (global.typer == 122)
{
    if (scr_murderlv() >= 1 && global.flag[27] == 0)
    {
        if (global.inbattle == 0)
            SCR_TEXTSETUP(fnt_maintext, c_white, x, (y + 20), (__view_get(0, view_current) + 290), 0, 1, snd_txtmonika, 12, 18)
        else
            SCR_TEXTSETUP(fnt_main, c_white, (x + 20), (y + 20), (x + (global.idealborder[1] - 55)), 1, 1, snd_txtmonika, 12, 18)
        edited = 1
        editedcolor = 4076870
        editedradius = 5
    }
    else if (global.inbattle == 0)
        SCR_TEXTSETUP(fnt_maintext, c_white, x, (y + 20), (__view_get(0, view_current) + 290), 0, 1, snd_txtmonika, 8, 18)
    else
        SCR_TEXTSETUP(fnt_main, c_white, (x + 20), (y + 20), (x + (global.idealborder[1] - 55)), 1, 1, snd_txtmonika, 16, 32)
}

if (global.typer == 666)
    SCR_TEXTSETUP(fnt_wingdings, c_white, (x + 20), (y + 20), (__view_get(0, view_current) + 290), 1, 4, snd_wngdng1, 16, 18)

if (global.language == "ja")
{
    if (myfont == fnt_main)
    {
        myfont = fnt_ja_main
        spacing = ((spacing * 26) / 16)

        if (vspacing == 32)
            vspacing = 36

        if (global.typer == 30 || global.typer == 32 || global.typer == 114 || global.typer == 115)
            spacing -= 2
    }

    if (myfont == fnt_maintext)
    {
        myfont = fnt_ja_maintext
        spacing = ((spacing * 13) / 8)
        vspacing = 19
    }

    if (myfont == fnt_plain)
    {
        myfont = fnt_ja_plain
        spacing = ((spacing * 13) / 9)
    }

    if (myfont == fnt_plainbig)
    {
        myfont = fnt_ja_plainbig
        spacing = ((spacing * 58) / 25)
    }

    if (myfont == fnt_comicsans)
    {
        if (global.typer < 80)
        {
            myfont = fnt_ja_comicsans_big
            htextscale = 0.5
            vtextscale = 0.5
            spacing = ((spacing * 15) / 8)
        }
        else
        {
            myfont = fnt_ja_comicsans
            spacing = ((spacing * 15) / 10)
        }
    }

    if (myfont == fnt_papyrus)
    {
        if (global.typer == 22 || global.typer == 83)
        {
            myfont = fnt_ja_papyrus_btl
            vspacing = 20
            writingxend += 14
        }
        else
        {
            myfont = fnt_ja_papyrus
            htextscale = 0.5
            vtextscale = 0.5
            vspacing = 18
            writingxend += 20
            writingy -= 1
        }
        vtext = 1
    }

    if (global.typer == 11 || global.typer == 112)
        textspeed += 1
}