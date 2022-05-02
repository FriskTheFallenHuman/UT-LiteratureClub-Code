x = camerax()
y = cameray()
if (fadeframe < fadetime)
    fadeframe += 1
image_alpha = lerp(fadein, (fadein ? 0 : 1), (fadeframe / fadetime))
draw_sprite_ext(sprite_index, image_index, x, y, length, height, 0, image_blend, image_alpha)
if (fadein == 1 && fadeframe >= fadetime)
    instance_destroy()
