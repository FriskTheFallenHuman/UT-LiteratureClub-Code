siner += 0.5
draw_sprite_ext(sprite_index, image_index, (x + 10), (y + 80), image_xscale, image_yscale, image_angle, image_blend, image_alpha)
draw_sprite_ext(spr_frogger_shop_head, 0, (x + 10), ((y + 15) + (cos((siner / 6)) * 2)), 1, 1, 0, c_white, 1)
draw_set_color(c_white)
ossafe_fill_rectangle(0, 120, 600, 124)
