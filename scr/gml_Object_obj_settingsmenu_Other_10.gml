if (harp == 0)
{
    harp = caster_load("music/harpnoise.ogg")
    if (weather == 1)
        weathermusic = caster_load("music/options_winter.ogg")
    if (weather == 2 || weather == 4)
        weathermusic = caster_load("music/options_fall.ogg")
    if (weather == 3)
        weathermusic = caster_load("music/options_summer.ogg")
}
if (weather == 1)
{
    c = instance_create(0, 0, obj_ct_fallobj)
    c.sprite_index = spr_christmasflake
    siner += 1
    draw_sprite_ext(spr_tobdog_winter, 0, 250, 218, 1, 1, 0, c_white, 1)
    draw_set_color(c_gray)
    draw_text_transformed((220 + sin((siner / 12))), (120 + cos((siner / 12))), string_hash_to_newline(scr_gettext("joyconfig_fun_winter")), 1, 1, -20)
}
if (weather == 2)
{
    c = instance_create(0, 0, obj_ct_fallobj)
    c.sprite_index = spr_fallleaf
    c.image_blend = choose(merge_color(c_red, c_white, 0.5))
    siner += 1
    draw_sprite_ext(spr_tobdog_spring, floor((siner / 15)), 250, 218, 1, 1, 0, c_white, 1)
    draw_set_color(c_gray)
    draw_text_transformed((220 + sin((siner / 12))), (120 + cos((siner / 12))), string_hash_to_newline(scr_gettext("joyconfig_fun_spring")), 1, 1, -20)
}
if (weather == 3)
{
    extreme2 += 1
    if (extreme2 >= 240)
    {
        extreme += 1
        if (extreme >= 1100 && abs(sin((siner / 15))) < 0.1)
        {
            extreme = 0
            extreme2 = 0
        }
    }
    siner += 1
    draw_sprite_ext(spr_tobdog_summer, floor((siner / 15)), 250, 225, (2 + (sin((siner / 15)) * (0.2 + (extreme / 900)))), (2 - (sin((siner / 15)) * (0.2 + (extreme / 900)))), 0, c_white, 1)
    draw_set_color(c_yellow)
    draw_circle((258 + (cos((siner / 18)) * 6)), (40 + (sin((siner / 18)) * 6)), (28 + (sin((siner / 6)) * 4)), 0)
    draw_set_color(c_gray)
    draw_text_transformed((220 + sin((siner / 12))), (120 + cos((siner / 12))), string_hash_to_newline(scr_gettext("joyconfig_fun_summer")), 1, 1, -20)
}
if (weather == 4)
{
    c = instance_create(0, 0, obj_ct_fallobj)
    c.sprite_index = spr_fallleaf
    c.image_blend = choose(65535, 4235519, 255)
    siner += 1
    draw_sprite_ext(spr_tobdog_autumn, 0, 250, 218, 1, 1, 0, c_white, 1)
    draw_set_color(c_gray)
    draw_text_transformed((220 + sin((siner / 12))), (120 + cos((siner / 12))), string_hash_to_newline(scr_gettext("joyconfig_fun_fall")), 1, 1, -20)
}
