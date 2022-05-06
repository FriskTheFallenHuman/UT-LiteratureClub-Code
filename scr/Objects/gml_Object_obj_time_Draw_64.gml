var r, g, b, col_str;
var draw_color = c_white
var quitsprite = -4

if (quit >= 1)
{
    quitsprite = spr_quittingmessage
    if (global.language == "ja")
        quitsprite = spr_quittingmessage_ja

    draw_sprite_ext(quitsprite, (quit / 7), 4, 4, 1, 1, 0, c_white, (quit / 15))
}
