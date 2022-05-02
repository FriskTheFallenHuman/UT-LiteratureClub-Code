siner += 1
if (pause == 1)
{
    siner = 0
    if instance_exists(parent)
        x = parent.x
}
if (!instance_exists(parent))
    fall = 1
if (pause == 2)
    siner = 0
if (fall == 1)
    fall = 2
if (fall == 2)
{
    instance_create(0, 0, obj_flasher)
    if (!snd_isplaying(mus_explosion))
        snd_play(mus_explosion)
    fall = 3
}
if (fall == 3)
{
    rot -= 1
    g = random(0.3)
    draw_sprite_ext(spr_planeexplosion, 0, (x + 242), (y + 150), ((3.5 - (alpha * 1.8)) + g), ((3.8 - (alpha * 2)) + g), 0, c_white, alpha)
    alpha -= 0.03
    if (alpha < 0.05)
        instance_destroy()
}
if (fall == 0 && instance_exists(parent))
{
    draw_sprite_ext(spr_mr_cowblird_hands, 0, (x + 85), ((y - 32) + (cos((siner / 6)) * 2)), 1, 1, 0, c_white, 1)
    draw_sprite_ext(sprite_index, image_index, (x + 142), (y + 28), image_xscale, image_yscale, image_angle, image_blend, image_alpha)
    draw_sprite_ext(spr_mr_cowblird_upperbody, 0, (x + 142), ((y - 50) + (cos((siner / 6)) * 2)), 1, 1, 0, c_white, 1)
    draw_sprite_ext(spr_mr_cowblird_heads, 0, (x + 95), ((y - 150) + (cos((siner / 6)) * 2)), 1, 1, 0, c_white, 1)
}
