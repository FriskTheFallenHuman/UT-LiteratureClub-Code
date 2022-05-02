if (writedisplay == true)
{
    debug_printline(("instance_count=" + string(instance_count)), 1)

    if (instance_count > 150)
        debug_printline("THAT'S A LOT OF INSTANCES", 2)
}

lastval[0] = 0

if (interactshower == true)
{
    draw_set_color(c_yellow)
    draw_set_font(fnt_main)
    draw_text_outline(20, 20, ("global.interact=" + string(global.interact)), c_black)
    draw_set_color(c_white)
}

if (caterpillarshower == true && global.debuginfos == false)
{
    if (i_ex(obj_caterpillar_parent))
    {
        with(obj_caterpillar_parent)
        {
            var hh = 10
            var ww = 600
            draw_set_font(fnt_small)
            draw_set_halign(fa_right)
            draw_set_color(c_black)
            draw_text_transformed((ww - 2), (hh + 2), ("follow: " + string(follow)), 1.5, 1.5, 0)
            draw_text_transformed((ww - 2), (hh + 12), ((("real coords: " + string(x)) + ", ") + string(y)), 1.5, 1.5, 0)
            draw_text_transformed((ww - 2), (hh + 22), ((("fake coords: " + string(sprite_x)) + ", ") + string(sprite_y)), 1.5, 1.5, 0)
            draw_text_transformed((ww - 2), (hh + 32), ((("prev coords: " + string(prevx)) + ", ") + string(prevy)), 1.5, 1.5, 0)
            draw_text_transformed((ww - 2), (hh + 42), ("sprite_index: " + string(sprite_index)), 1.5, 1.5, 0)
            draw_text_transformed((ww - 2), (hh + 52), ("fake sprite: " + string(sprite)), 1.5, 1.5, 0)
            draw_text_transformed((ww - 2), (hh + 62), ("image_index: " + string(image_index)), 1.5, 1.5, 0)
            draw_text_transformed((ww - 2), (hh + 72), ("fake subimg: " + string(sprite_subimg)), 1.5, 1.5, 0)
            draw_text_transformed((ww - 2), (hh + 82), ("talk_enabled: " + string(talk_enabled)), 1.5, 1.5, 0)
            draw_text_transformed((ww - 2), (hh + 92), ("obj_dialoguer exists: " + string(i_ex(obj_dialoguer))), 1.5, 1.5, 0)
            draw_text_transformed((ww - 2), (hh + 102), ("global.facechoice: " + string(global.facechoice)), 1.5, 1.5, 0)
            draw_text_transformed((ww - 2), (hh + 112), ("local facechoice: " + string(facechoice)), 1.5, 1.5, 0)
            draw_text_transformed((ww - 2), (hh + 122), ("global.typer: " + string(global.typer)), 1.5, 1.5, 0)
            draw_text_transformed((ww - 2), (hh + 132), ("local typer: " + string(typer)), 1.5, 1.5, 0)
            draw_text_transformed((ww - 2), (hh + 142), ("f is for friends that do stuff together: " + string(fun)), 1.5, 1.5, 0)
            draw_text_transformed((ww - 2), (hh + 152), ("image_speed: " + string(image_speed)), 1.5, 1.5, 0)
            if (i_ex(obj_dialoguer) && i_ex(obj_dialoguer.writer))
            {
                draw_text_transformed((ww - 2), (hh + 162), ("writer stringpos: " + string(obj_dialoguer.writer.stringpos)), 1.5, 1.5, 0)
                draw_text_transformed((ww - 2), (hh + 172), ("writer originalstring: " + string(obj_dialoguer.writer.originalstring)), 1.5, 1.5, 0)
                draw_text_transformed((ww - 2), (hh + 182), ("writer originalstring len: " + string(string_length(obj_dialoguer.writer.originalstring))), 1.5, 1.5, 0)
            }
            draw_set_color(c_white)
            draw_text_transformed(ww, hh, ("follow: " + string(follow)), 1.5, 1.5, 0)
            draw_text_transformed(ww, (hh + 10), ((("real coords: " + string(x)) + ", ") + string(y)), 1.5, 1.5, 0)
            draw_text_transformed(ww, (hh + 20), ((("fake coords: " + string(sprite_x)) + ", ") + string(sprite_y)), 1.5, 1.5, 0)
            draw_text_transformed(ww, (hh + 30), ((("prev coords: " + string(prevx)) + ", ") + string(prevy)), 1.5, 1.5, 0)
            draw_text_transformed(ww, (hh + 40), ("sprite_index: " + string(sprite_index)), 1.5, 1.5, 0)
            draw_text_transformed(ww, (hh + 50), ("fake sprite: " + string(sprite)), 1.5, 1.5, 0)
            draw_text_transformed(ww, (hh + 60), ("image_index: " + string(image_index)), 1.5, 1.5, 0)
            draw_text_transformed(ww, (hh + 70), ("fake subimg: " + string(sprite_subimg)), 1.5, 1.5, 0)
            draw_text_transformed(ww, (hh + 80), ("talk_enabled: " + string(talk_enabled)), 1.5, 1.5, 0)
            draw_text_transformed(ww, (hh + 90), ("obj_dialoguer exists: " + string(i_ex(obj_dialoguer))), 1.5, 1.5, 0)
            draw_text_transformed(ww, (hh + 100), ("global.facechoice: " + string(global.facechoice)), 1.5, 1.5, 0)
            draw_text_transformed(ww, (hh + 110), ("local facechoice: " + string(facechoice)), 1.5, 1.5, 0)
            draw_text_transformed(ww, (hh + 120), ("global.typer: " + string(global.typer)), 1.5, 1.5, 0)
            draw_text_transformed(ww, (hh + 130), ("local typer: " + string(typer)), 1.5, 1.5, 0)
            draw_text_transformed(ww, (hh + 140), ("f is for friends that do stuff together: " + string(fun)), 1.5, 1.5, 0)
            draw_text_transformed(ww, (hh + 150), ("image_speed: " + string(image_speed)), 1.5, 1.5, 0)
            if (i_ex(obj_dialoguer) && i_ex(obj_dialoguer.writer))
            {
                draw_text_transformed(ww, (hh + 160), ("writer stringpos: " + string(obj_dialoguer.writer.stringpos)), 1.5, 1.5, 0)
                draw_text_transformed(ww, (hh + 170), ("writer originalstring: " + string(obj_dialoguer.writer.originalstring)), 1.5, 1.5, 0)
                draw_text_transformed(ww, (hh + 180), ("writer originalstring len: " + string(string_length(obj_dialoguer.writer.originalstring))), 1.5, 1.5, 0)
            }
            draw_set_halign(fa_left)
        }
    }
}

if (conshower == true && global.debuginfos == false)
{
    if (i_ex(obj_area1_fallevent))
    {
        with(obj_area1_fallevent)
        {
            draw_set_font(fnt_maintext)
            draw_set_halign(fa_right)
            draw_text(0, 30, con)
            draw_text(0, 60, camerax())
            draw_text(0, 70, cameray())
            draw_set_halign(fa_left)
        }
    }
}