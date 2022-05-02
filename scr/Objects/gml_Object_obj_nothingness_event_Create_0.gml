skip = false
con = 0
alarm[0] = (18000 / (scr_debug() * 360))
wind = caster_load("music/f_wind2.ogg")
caster_loop(wind, 0.8, 0.7)
obj_time.canquit = 0
scr_windowcaption(scr_gettext("windowcaption_none"))
scr_enable_screen_border(false)
