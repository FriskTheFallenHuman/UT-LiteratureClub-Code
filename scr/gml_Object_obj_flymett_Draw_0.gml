draw_sprite(sprite_index, image_index, x, y)
if (mode == 1 || mode == 3)
    ang = point_direction((x + 11), (y + 15), (obj_jetpackchara.x + 10), (obj_jetpackchara.y + 10))
if (mode == 3)
    ang += (random(60) - 30)
draw_sprite_ext(spr_flymettarm, 0, (x + 11), (y + 15), 1, 1, ang, c_white, 1)