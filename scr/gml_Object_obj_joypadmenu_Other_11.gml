if (rectile == 16)
    caster_play(harp, 1, 1)
rectile += 4
draw_set_color(c_black)
ossafe_fill_rectangle((168 - rectile), -10, -1, 250)
draw_set_color(c_black)
ossafe_fill_rectangle((152 + rectile), -10, 330, 250)
if (rectile >= 170)
{
    caster_loop(weathermusic, 0.8, 1)
    menu_engage = 0
    buffer = 5
    intro = -1
}
