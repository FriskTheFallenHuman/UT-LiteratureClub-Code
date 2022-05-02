global.steam_int = 0
global.steam_appid = -4
if steam_initialised()
{
    if (steam_stats_ready() && steam_is_overlay_enabled())
    {
        global.steam_int = 1
        event_user(0)
    }
}
else
    instance_destroy()
screenshot_file = 0
mode = 0
