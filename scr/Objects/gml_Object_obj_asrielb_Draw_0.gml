if (trcon >= 3)
{
    if instance_exists(obj_screenwhiter)
        depth = (obj_screenwhiter.depth + 2)
    draw_set_color(c_black)
    ossafe_fill_rectangle(-100, -100, 800, 800)
}
