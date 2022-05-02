event_perform(ev_step, ev_step_begin)
var post_x = -4
var no_weather = 0
var enable_sunset = false
var sunset = noone
var sunset_color = -4
if (h >= 5 && h <= 12)
{
    time_morning = 1
    time_afternoon = 0
    time_evening = 0
    time_night = 0
}
else if (h >= 12 && h <= 17)
{
    time_morning = 0
    time_afternoon = 1
    time_evening = 0
    time_night = 0
}
else if (h >= 17 && h <= 21)
{
    time_morning = 0
    time_afternoon = 0
    time_evening = 1
    time_night = 0
}
else if (h >= 21 && h <= 4)
{
    time_morning = 0
    time_afternoon = 0
    time_evening = 0
    time_night = 1
}
var settingsroom = (room == room_settings || room == room_undertale || room == room_controltest || room == PLACE_DISCLAIMER)
var specilroom = ((room >= PLACE_INITIALIZE && room <= PLACE_MENU) || (room >= room_torhouse1 && room <= room_basement5) || (room >= room_battle && room <= PLACE_FAILURE) || room == PLACE_DOG || room == room_gaster || settingsroom)
var fx = noone
if specilroom
{
    with (obj_tm_weatherfxparent)
    {
        if (variable_instance_exists(id, "weather_overlay") && weather_overlay)
            instance_destroy()
    }
    with (obj_npc_marker)
    {
        if (variable_instance_exists(id, "weather_overlay") && weather_overlay)
            instance_destroy()
    }
}
else if (time_evening || time_night)
{
    if (irandom(5) == 3 && (!no_weather))
    {
        if (room == room_area1 || room == room_area1_2)
        {
            if (!instance_exists(obj_rain))
            {
                fx = instance_create(0, 0, obj_rain)
                with (fx)
                    rain_preset_direction = 0
            }
            if (!instance_exists(obj_foreground_waterfall))
            {
                if (room == room_area1_2)
                {
                    post_x = 30
                    instance_create(post_x, 0, obj_foreground_waterfall)
                    post_x += 170
                    instance_create(post_x, 0, obj_foreground_waterfall)
                }
                else
                {
                    post_x = 40
                    instance_create(post_x, 0, obj_foreground_waterfall)
                    post_x += 150
                    instance_create(post_x, 0, obj_foreground_waterfall)
                    post_x += 190
                    instance_create(post_x, 0, obj_foreground_waterfall)
                    post_x += 230
                    instance_create(post_x, 0, obj_foreground_waterfall)
                }
            }
        }
    }
    else
        no_weather = 1
    if ((room >= room_tundra1 && room <= room_tundra_dock) || room == room_fogroom)
    {
        if (!instance_exists(obj_snow))
        {
            fx = instance_create(0, 0, obj_snow)
            with (fx)
            {
                if (room != room_tundra1)
                    snow_preset_direction = 0
            }
        }
    }
    if (!instance_exists(obj_labfog))
    {
        fx = instance_create(0, 0, obj_labfog)
        with (fx)
            weather_hack = 1
    }
}
else if time_morning
{
    if (!instance_exists(obj_pollener))
    {
        fx = instance_create(0, 0, obj_pollener)
        with (fx)
            weather_hack = 1
    }
}
if instance_exists(fx)
    fx.weather_overlay = 1
if (!settingsroom)
{
    with (obj_npc_marker)
    {
        if (variable_instance_exists(id, "weather_overlay") && weather_overlay && weather_overlay_kind == "sunset")
            instance_destroy()
    }
    switch room
    {
        case room_area1:
            sunset = scr_marker(0, 0, spr_firstroom_sunoverlay)
            break
        case 5:
            sunset = scr_marker(0, 0, spr_floweyglow_sunoverlay)
            break
        case 6:
            sunset = scr_marker(0, 0, spr_ruins1_sunoverlay)
            break
        case 338:
            sunset = scr_marker(0, 0, spr_literature_club_sunoverlay)
            break
        case 231:
            sunset = scr_marker(0, 0, spr_sanscorridor_sunoverlay)
            break
        case 235:
            sunset = scr_marker(0, 0, spr_garden_overlayshadow)
            break
        default:
            break
    }

    if instance_exists(sunset)
    {
        if (time_evening || time_night)
            enable_sunset = true
        if time_night
            sunset_color = make_colour_rgb(25, 25, 112)
        else
            sunset_color = make_colour_rgb(243, 239, 204)
        with (sunset)
        {
            visible = enable_sunset
            image_blend = sunset_color
            image_alpha = 0.4
            depth = 2000
            weather_overlay = 1
            weather_overlay_kind = "sunset"
            weather_overlay_environment = room
        }
    }
}
