if (global.debug && global.debuginfos)
{
    draw_set_font(fnt_maintext)
    draw_set_halign(fa_right)
    draw_text(0, 30, con)
    draw_text(0, 60, camerax())
    draw_text(0, 70, cameray())
    draw_set_halign(fa_left)
}
