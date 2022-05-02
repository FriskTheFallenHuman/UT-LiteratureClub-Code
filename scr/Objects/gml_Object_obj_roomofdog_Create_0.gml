if global.broken
    scr_windowcaption(scr_gettext("windowcaption_broken"))
osversion = scr_osversion()
error = ""
errorinfo = ""
heartcoord = 0
buttonx = 20
buttonxr = (camera_get_view_width(view_camera[0]) - 20)
buttony = ((camera_get_view_height(view_camera[0]) - 25) - 24)
buttonspacing = 24
buttoncaptiony = (buttony - 24)
allow_quit = global.osflavor <= 2
hide_options = 0
scr_setfont(fnt_main)
if global.broken
{
    if allow_quit
    {
        options[0] = "Quit"
        optionsx[0] = (buttonxr - string_width(options[0]))
        optionscaption[0] = "Quits the game."
    }
    else
        hide_options = 1
}
else
{
    options[0] = "Ignore"
    options[1] = "Reload"
    optionsx[0] = buttonx
    optionsx[1] = (buttonx + (string_width(options[0]) + buttonspacing))
    optionscaption[0] = "Ignores the exception, allowing you to continue. This often leads to additional errors."
    optionscaption[1] = "Reloads the game."
    if allow_quit
    {
        options[2] = "Quit"
        optionsx[2] = (buttonxr - string_width(options[2]))
        optionscaption[2] = "Quits the game."
    }
}
image_xscale = 4
image_yscale = 4
alarm[0] = 5
