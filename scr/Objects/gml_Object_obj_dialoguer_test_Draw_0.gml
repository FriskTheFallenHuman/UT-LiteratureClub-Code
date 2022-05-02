msgno += (keyboard_check_pressed(vk_pagedown) - keyboard_check_pressed(vk_pageup))
if (msgno < 0)
    msgno = 0
bgx -= 1
bgy -= 1
draw_sprite_tiled(sprite_index, 0, bgx, bgy)
draw_set_color(c_black)
draw_set_alpha(0.5)
draw_rectangle(__view_get(0, view_current), __view_get(1, view_current), (__view_get(0, view_current) + __view_get(2, view_current)), (__view_get(1, view_current) + __view_get(3, view_current)), false)
draw_set_alpha(1)
var sx = 9
var sy = 50
draw_set_color(c_white)
draw_rectangle((sx - 4), (sy - 4), (sx + 305), (sy + 81), false)
draw_set_color(c_black)
draw_rectangle(sx, sy, (sx + 301), (sy + 77), false)
draw_set_color(c_white)
scr_setfont(fnt_maintext)
draw_text((sx + 300), (sy - 24), string(msgno))
var wrapmsg = scr_stringwrap(global.msg[msgno], 269)
if editing
{
    var lastline = wrapmsg
    var pos = 0
    while (string_pos("\n", lastline) != 0)
    {
        pos = string_pos("\n", lastline)
        lastline = string_copy(lastline, (pos + 1), (string_length(lastline) - pos))
    }
    var lw = string_width(lastline)
    if (lw < 0)
        lw = 1
    var caretx = (lw - 1)
    var carety = (string_height(wrapmsg) - string_height(lastline))
    draw_set_alpha(sin((caretsiner / 8)))
    draw_line(((sx + 10) + caretx), ((sy + 7) + carety), ((sx + 10) + caretx), (((sy + 7) + carety) + 12))
    draw_set_alpha(1)
    caretsiner++
}
else
    caretsiner = 0
draw_text((sx + 10), (sy + 6), wrapmsg)
var texty = ((sy + 77) + 16)
draw_text(sx, texty, (editing ? "[End] quit editing mode" : "[E] editing mode"))
texty += 14
draw_text(sx, texty, "[PgUp/PgDn] +/- msgno")
if (!editing)
{
    texty += 14
    draw_text(sx, texty, "[P] play dialogue")
    texty += 14
    draw_text(sx, texty, "[B] clear messages")
    texty += 14
    draw_text(sx, texty, "[T/F] set typer/face")
}
if editing
{
    if keyboard_check_pressed(vk_end)
        editing = 0
    else if (keyboard_check(vk_backspace) || keyboard_check(vk_delete))
    {
        global.msg[msgno] = string_delete(global.msg[msgno], string_length(global.msg[msgno]), 1)
        keyboard_key_release(keyboard_lastkey)
    }
    else if keyboard_check(vk_anykey)
    {
        if (keyboard_lastchar != "")
            global.msg[msgno] += keyboard_lastchar
        keyboard_clear(keyboard_lastkey)
        keyboard_lastchar = ""
    }
}
else
{
    var comment = "balls"
    if keyboard_check_pressed(ord("E"))
    {
        editing = 1
        keyboard_key_release(keyboard_lastkey)
        keyboard_lastchar = ""
    }
    else if keyboard_check_pressed(ord("P"))
    {
        global.msc = 0
        global.typer = typer
        global.facechoice = facechoice
        global.facechange = 0
        var o = instance_create(sx, sy, obj_dialoguer)
        o.depth -= 1
    }
    else if keyboard_check_pressed(ord("B"))
    {
        global.msg[0] = "%%%"
        for (var i = 0; i < 999; i++)
            global.msg[i] = "%%%"
    }
    else if keyboard_check_pressed(ord("T"))
        typer = get_integer("typer", typer)
    else if keyboard_check_pressed(ord("F"))
        facechoice = get_integer("facechoice", facechoice)
}
