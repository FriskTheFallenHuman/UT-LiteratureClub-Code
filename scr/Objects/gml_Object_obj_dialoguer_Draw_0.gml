if (zurasu == 1 && zurasucon > 0)
{
    if (zurasucon == 1)
    {
        if i_ex(writer)
        {
            remwriterx = (writer.writingx - camerax())
            remwritery = (writer.writingy - cameray())
        }
        if (global.facechoice != 0)
        {
            with (obj_face)
            {
                remfacex = (x - camerax())
                remfacey = (y - cameray())
            }
        }
        zurasucon = 2
    }
    if (zurasucon == 2)
    {
        if i_ex(writer)
        {
            var twidth = (writer.writingxend - writer.writingx)
            writer.writingx = (remwriterx + camerax())
            writer.writingy = (remwritery + cameray())
            writer.writingxend = ((remwriterx + camerax()) + twidth)
            if (global.facechoice != 0)
            {
                with (obj_face)
                {
                    x = (remfacex + camerax())
                    y = (remfacey + cameray())
                }
                writer.writingx += 58
            }
        }
    }
}
xx = __view_get(0, view_current)
yy = __view_get(1, view_current)
var cur_offs = round((min(((obj_time.time % 30) / 30), 0.5) * 6))
if (side == 0)
{
    if instance_exists(writer)
    {
        if (writer.writingy > (yy + 80))
            writer.writingy -= 155
    }
    if instance_exists(obj_face)
    {
        if (obj_face.y > (yy + 80))
            obj_face.y -= 155
    }
    draw_9slice((xx + 10), (yy + 5), 301, 77, 2896, 0)
    if instance_exists(writer)
    {
        if (writer.halt == true)
            draw_sprite_ext(cur_arrow, 0, ((xx - cur_offs) + 295), ((yy + 5) + 63), 0.5, 0.5, 0, c_white, 1)
    }
}
else
{
    if instance_exists(writer)
    {
        if (writer.writingy < (yy + 80))
            writer.writingy += 155
    }
    if instance_exists(obj_face)
    {
        if (obj_face.y < (yy + 80))
            obj_face.y += 155
    }
    draw_9slice((xx + 10), (yy + 160), 301, 77, 2896, 0)
    if instance_exists(writer)
    {
        if (writer.halt == true)
            draw_sprite_ext(cur_arrow, 0, ((xx - cur_offs) + 295), ((yy + 5) + 217), 0.5, 0.5, 0, c_white, 1)
    }
}
count = 1
