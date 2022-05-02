var screenshot_number = 0
var screen_name = (((((((program_directory + "/screenshots/") + string(obj_time.time)) + "_") + string(screenshot_number)) + "_") + room_get_name(room)) + "_shot.png")
screen_save(screen_name)
if instance_exists(obj_steam_manager)
{
    with (obj_steam_manager)
    {
        screenshot_file = other.screen_name
        event_user(2)
    }
}
screenshot_number += 1
