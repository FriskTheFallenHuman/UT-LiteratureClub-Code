if (messed == 1)
    scr_windowcaption(scr_gettext("windowcaption_floweytale"))
if (messed == 2)
    scr_windowcaption(scr_gettext("windowcaption_none"))
if (messed == 3)
{
    str_r = ""
    repeat floor((2 + random(15)))
    {
        ir = choose(0, 1)
        if (ir == 0)
            str_piece = choose("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", " ", " ")
        if (ir == 1)
            str_piece = choose("m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", " ", " ")
        str_r += str_piece
    }
    scr_windowcaption(str_r)
}
