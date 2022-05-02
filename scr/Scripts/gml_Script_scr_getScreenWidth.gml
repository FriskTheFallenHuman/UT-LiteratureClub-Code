if (global.osflavor == 1 || global.osflavor == 2)
{
    if (!window_has_focus())
        return 640;
    return window_get_width();
}
return display_get_width();
