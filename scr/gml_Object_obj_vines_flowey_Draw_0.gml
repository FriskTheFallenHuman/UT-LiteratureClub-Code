if (frozen == false)
    siner += 1
growth = (1 + (sin((siner / 6)) * 0.05))
growth2 = (1 + (cos((siner / 6)) * 0.05))
growth3 = (1 - (sin((siner / 7)) * 0.05))
ssx = ((sin((siner / 4)) * 2) * image_xscale)
ssx2 = ((sin((siner / 5)) * 1) * image_xscale)
ssx3 = ((cos((siner / 6)) * 0.5) * image_xscale)
draw_sprite_ext(spr_vines_flowey_3, image_index, ((x - ssx3) + 20), y, image_xscale, growth3, 0, image_blend, 1)
draw_sprite_ext(spr_vines_flowey_2, image_index, ((x - ssx2) - 20), y, image_xscale, growth2, 0, image_blend, 1)
draw_sprite_ext(spr_vines_flowey, image_index, (x - ssx), y, image_xscale, growth, 0, image_blend, 1)
