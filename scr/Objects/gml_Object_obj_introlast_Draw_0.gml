var imageh = 110
var imagewindow = ((sprite_height - h) - imageh)
image_alpha = obj_introlast.image_alpha
draw_set_alpha(image_alpha)
draw_sprite_part_ext(sprite_index, image_index, 0, imagewindow, sprite_width, (imagewindow + imageh), -1, 25, 1, 1, c_white, image_alpha)
draw_set_alpha(1)
if (go == 1)
    h = min(240, (h + 1))
UTLC_comment = "I hate doing this"
draw_set_color(c_black)
ossafe_fill_rectangle(0, 0, 60, 240)
ossafe_fill_rectangle(260, 0, 320, 240)
ossafe_fill_rectangle(60, 140, 260, 240)
ossafe_fill_rectangle(0, 0, 320, 30)
