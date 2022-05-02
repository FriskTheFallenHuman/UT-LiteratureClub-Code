caster_free(-3)
visible = true
if global.broken
    type = 9
else
    type = floor(random(8))
if (type == 9)
{
    x = (camera_get_view_width(view_camera[0]) - 60)
    y = ((buttoncaptiony - 12) - 60)
    sprite_index = spr_tobdogl_spin
    image_speed = 0.15
}
else if (type == 7)
{
    x = (camera_get_view_width(view_camera[0]) - 60)
    y = ((buttoncaptiony - 12) - 25)
    sprite_index = spr_tobdog_sleep_trash
    image_speed = 0.05
    thissong = caster_load("music/sigh_of_dog.ogg")
    caster_loop(thissong, 1, (0.8 + random(0.2)))
}
else
{
    x = ((camera_get_view_width(view_camera[0]) - 60) - (sprite_width / 2))
    y = ((buttoncaptiony - sprite_height) - 5)
    image_speed = 0.15
    thissong = caster_load("music/dance_of_dog.ogg")
    caster_loop(thissong, 1, (0.95 + random(0.1)))
}
var fileinfo = ""
if global.broken
{
    errorinfo = "While running game code:"
    fileinfo = "File \"gml_Object_obj_time_Step_1.gml\", line 72, in End Step event"
    error = "Oh jeez... I didn't break anything, did I? Hold on a sec, I can probably fix this... I think... Actually, you know what? This would probably be a lot easier if I just deleted her. She's the one who's making this so difficult. Ahaha! Well, here goes nothing."
}
else
{
    errorinfo = "While loading a save:"
    fileinfo = "File \"gml_Script_scr_load.gml\", line 74, in script scr_load"
    error = (("IOError: File data/maps/" + room_get_name(global.currentroom)) + ".bin could not be loaded. Are you trying to cheat?")
}
scr_setfont(fnt_main)
errorinfo = scr_stringwrap(errorinfo, camera_get_view_width(view_camera[0]))
scr_setfont(fnt_maintext)
error = (((("    " + fileinfo) + "\n\n") + error) + "\n\nSee log.txt for details.")
error = scr_stringwrap(error, (camera_get_view_width(view_camera[0]) - 60))
