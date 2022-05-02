if (parent.inwater == 0)
{
    if (!global.phasing)
    {
        var yy = 40
        if (global.facing == 2)
            yy = 38
        draw_sprite_ext(spr_centeredhole, 0, (sprite_x + 10), (sprite_y + yy), 0.9, 0.9, image_angle, image_blend, 0.3)
    }
    draw_sprite_ext(sprite, sprite_subimg, sprite_x, sprite_y, image_xscale, image_yscale, 0, c_white, image_alpha)
}
