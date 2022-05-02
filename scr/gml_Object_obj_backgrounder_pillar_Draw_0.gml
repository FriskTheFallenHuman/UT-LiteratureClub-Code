for (i = 0; i < 9; i += 1)
{
    draw_sprite(sprite_index, image_index, (x + (230 * i)), y)
    if (i == 5)
        draw_sprite(sprite_index, image_index, ((x + (230 * i)) + 110), y)
}
