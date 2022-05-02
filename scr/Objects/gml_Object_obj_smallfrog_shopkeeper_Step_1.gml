if (dooract == 1)
{
    if collision_rectangle(bbox_left, bbox_top, bbox_right, (bbox_bottom + 30), obj_char, 0, 0)
        event_user(2)
}
