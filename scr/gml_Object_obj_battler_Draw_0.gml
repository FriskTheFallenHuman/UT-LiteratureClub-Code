var hearx = 5
var heary = 17
if position_hack
{
    hearx = 7.5
    heary = 20
}
if (clap < 3)
    obj_char.depth = depp
if (heartdraw == 1)
{
    sprite_index = spr_heartsmall
    draw_sprite_ext(sprite_index, 0, (obj_char.x + hearx), (obj_char.y + heary), image_xscale, image_yscale, image_angle, scr_char_files_soulindex(string(global.charsoulcolor)), image_alpha)
}
