xx = __view_get(0, view_current)
yy = (__view_get(1, view_current) + 10)
f = 188
yf = 8
draw_9slice(((10 + xx) + f), ((74 + yy) + yf), (114 + xx), ((47 + yy) + yf), 2896, 0)
scr_setfont(fnt_maintext)
draw_set_color(c_white)
draw_text(((30 + xx) + f), (90 + yy), string_hash_to_newline(scr_gettext("obj_golddisplay_42")))
scr_itemroom()
draw_text(((30 + xx) + f), (110 + yy), string_hash_to_newline(scr_gettext("obj_golddisplay_44", string(itemhold))))
if (instance_exists(OBJ_WRITER) == 0)
    instance_destroy()
