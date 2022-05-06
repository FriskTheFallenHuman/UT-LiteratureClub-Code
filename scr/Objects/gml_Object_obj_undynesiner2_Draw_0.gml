if instance_exists(obj_undyneb_body)
{
    xx = (obj_undyneb_body.x - 20)
    yy = (obj_undyneb_body.y - 20)
}
if (drawngr == 1)
    sprite_delete(gr)
gr = sprite_create_from_screen_x(xx, yy, 240, (obj_uborder.y - yy), false, false, 0, 0)
sprite_index = gr
scr_waver_height(qq, ww)
drawngr = 1
idealww2 = (idealww + random(6))
if (ww > idealww2)
    ww -= 1
if (ww < idealww2)
    ww += 1
if (idealww == 0.1 && ww < 2)
    instance_destroy()
