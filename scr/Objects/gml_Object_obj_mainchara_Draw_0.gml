if (inwater == 0)
{
    if (!global.phasing)
    {
        var yy = 40
        if (global.facing == 2)
            yy = 38
        draw_sprite_ext(spr_centeredhole, 0, (x + 10), (y + yy), 0.9, 0.9, image_angle, image_blend, 0.3)
    }
    draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, image_angle, image_blend, image_alpha)
}
if (inwater == 1)
{
    draw_sprite_part_ext(sprite_index, image_index, 0, 0, sprite_width, (sprite_height - 5), x, (y + 5), 1, 1, c_white, image_alpha)
    if (obj_mainchara.image_index == 1 || obj_mainchara.image_index == 3)
    {
        snd_play(snd_splash)
        mp = 0
    }
    draw_sprite(spr_waterripple, 0, x, y)
}
if (room == room_water_waterfall3)
    draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, image_angle, c_black, image_alpha)
if (global.debug == true)
{
    draw_set_color(c_lime)
    draw_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, true)
    draw_set_color(c_white)
}
var step = floor(image_index)
if (image_index == 0)
    step_type = 0
if (step != old_step)
{
    if ((room >= room_area1 && room <= room_area1_2) || (room >= room_basement1 && room <= room_basement5) || room == room_ruinsexit || room == room_sanscorridor)
    {
        if (step == 1 || step == 3)
        {
            switch step_type
            {
                case 0:
                    snd_play(snd_step1)
                    break
                case 1:
                    snd_play(snd_step2)
                    break
            }

        }
    }
}
old_step = step
