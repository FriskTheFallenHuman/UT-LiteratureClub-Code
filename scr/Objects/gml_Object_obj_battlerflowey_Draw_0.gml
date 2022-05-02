if (clap < 3)
{
    obj_mainchara.depth = depp
    if instance_exists(obj_fader)
    {
        with (obj_fader)
            instance_destroy()
    }
}
if (heartdraw == 1)
{
    sprite_index = spr_heartsmall
    draw_sprite_ext(sprite_index, 0, (obj_mainchara.x + 5), (obj_mainchara.y + 17), image_xscale, image_yscale, image_angle, scr_char_files_soulindex(string(global.charsoulcolor)), image_alpha)
}
