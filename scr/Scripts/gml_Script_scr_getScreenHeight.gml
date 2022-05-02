if (global.osflavor == 1 || global.osflavor == 2)
{
    if (!window_has_focus())
        return 480;
    return window_get_height();
}
return display_get_height();
