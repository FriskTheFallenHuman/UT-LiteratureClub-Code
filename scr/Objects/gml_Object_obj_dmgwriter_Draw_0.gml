thisnum = dmg
if (thisnum >= 0)
{
    place = 0
    numadd = 10
    if (thisnum >= numadd)
    {
        while (thisnum >= numadd)
        {
            place += 1
            numadd *= 10
        }
    }
}
else
{
    thisnum = 0
    place = 0
}
thisnum2 = thisnum
for (i = place; i >= 0; i -= 1)
{
    numnum[i] = floor((thisnum2 / power(10, i)))
    thisnum2 -= (numnum[i] * power(10, i))
}
if (thisnum > 0)
{
    if (drawbar == 1)
    {
        draw_set_color(c_black)
        ossafe_fill_rectangle((x - 1), (ystart + 7), (x + round(((global.monstermaxhp[global.mytarget] * stretchfactor) + 1))), (ystart + 21))
        draw_set_color(0x3E3546)
        ossafe_fill_rectangle(x, (ystart + 8), (x + round((global.monstermaxhp[global.mytarget] * stretchfactor))), (ystart + 20))
        draw_set_color(0x1EBC76)
        if (apparenthp > 0)
            ossafe_fill_rectangle(x, (ystart + 8), round((x + (apparenthp * stretchfactor))), (ystart + 20))
    }
    for (i = place; i >= 0; i -= 1)
    {
        scr_setfont(fnt_dmg)
        draw_set_color(c_red)
        draw_text((((x + 30) - (i * 32)) + (place * 16)), (y - 28), string_hash_to_newline(string(numnum[i])))
    }
}
if (thisnum == 0)
{
    draw_set_color(c_white)
    scr_setfont(fnt_dmg)
    if (special == false)
        draw_text((x - 10), (y - 16), string_hash_to_newline(scr_gettext("damage_miss")))
    if (special == true)
    {
        draw_set_color(c_red)
        scr_setfont(fnt_main)
        ex = choose(0, 1, 2, 3, 4, 5)
        draw_text((x - 10), (y - 10), string_hash_to_newline(scr_gettext(("damage_special_" + string(ex)))))
    }
}
if (y > ystart)
{
    y = ystart
    vspeed = 0
    gravity = 0
}
