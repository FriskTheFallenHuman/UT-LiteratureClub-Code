draw_sprite(spr_papcar_back, image_index, (x - 20), ((y + 8) + cary))
draw_sprite(spr_papcar_shadow, floor((siner / 2)), (x - 20), (y + 8))
draw_sprite_part(sprite_index, floor(image_index), 0, 0, sprite_width, 34, x, y)
draw_sprite(spr_papcar_tires, floor((siner / 2)), (x - 20), (y + 8))
draw_sprite(spr_papcar_chassis, image_index, (x - 20), ((y + 8) + cary))
