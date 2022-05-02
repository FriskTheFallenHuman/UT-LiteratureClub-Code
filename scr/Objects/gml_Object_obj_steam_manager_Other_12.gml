if (global.steam_int == 1)
{
    if steam_is_cloud_enabled_for_app()
    {
        if steam_is_screenshot_requested()
            steam_send_screenshot(screenshot_file, window_get_width(), window_get_height())
    }
}
