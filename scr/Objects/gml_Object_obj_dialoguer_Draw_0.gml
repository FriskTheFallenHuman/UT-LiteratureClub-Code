if (zurasu == 1 && zurasucon > 0)
{
    if (zurasucon == 1)
    {
        if (i_ex(writer))
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
        if (i_ex(writer))
        {
            var twidth = (writer.writingxend - writer.writingx)
            writer.writingx = (remwriterx + camerax())
            writer.writingy = (remwritery + cameray())
            writer.writingxend = global.toggle_widescreen ? ((remwriterx + camerax()) + (twidth - 50)) : ((remwriterx + camerax()) + twidth)

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

xx = global.toggle_widescreen ? (__view_get(0, view_current) + 75) : __view_get(0, view_current)
yy = __view_get(1, view_current)

if (side == 0)
{
    if (i_ex(writer))
    {
        if (writer.writingy > (yy + 80))
            writer.writingy -= 155
    }

    if (i_ex(obj_face))
    {
        if (obj_face.y > (yy + 80))
            obj_face.y -= 155
    }

    draw_9slice((xx + 25), (yy + 80), 77, 20, spr_textbox, 2)
    
    scr_setfont(fnt_maintext)
    draw_set_color(c_white)
    draw_text((xx + 30), (yy + 82), "Bepis")

    draw_9slice((xx + 10), (yy + 5), 301, 77, spr_textbox, 0)

    if (i_ex(writer))
    {
        if (writer.halt == true)
            draw_sprite_ext(cur_arrow, 0, ((xx - cur_offs) + 295), ((yy + 5) + 63), 0.3, 0.3, 0, c_white, 1)
    }
}
else
{
    if (i_ex(writer))
    {
        if (writer.writingy < (yy + 80))
            writer.writingy += 155
    }

    if (i_ex(obj_face))
    {
        if (obj_face.y < (yy + 80))
            obj_face.y += 155
    }
    
    draw_9slice((xx + 25), (yy + 142), 77, 20, spr_textbox, 2)
    
    scr_setfont(fnt_maintext)
    draw_set_color(c_white)
    draw_text((xx + 30), (yy + 142), "Bepis")

    draw_9slice((xx + 10), (yy + 160), 301, 77, spr_textbox, 0)

    if (i_ex(writer))
    {
        if (writer.halt == true)
            draw_sprite_ext(cur_arrow, 0, ((xx - cur_offs) + 295), ((yy + 5) + 217), 0.3, 0.3, 0, c_white, 1)
    }
}

count = 1