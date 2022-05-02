if (sprite_index != -4 && visible == true)
{
    var yy = 0
    var xx = 0
    var yyscale = 1
    var xxscale = 1
    switch object_index
    {
        case obj_torinteractable1:
        case 880:
        case 881:
        case 882:
        case 883:
        case 884:
        case 878:
            xx = 13
            yy = 53
            yyscale = 1.3
            xxscale = 1.3
            break
        case 853:
        case 854:
        case 1362:
            xx = 9
            yy = 18
            yyscale = 0.9
            xxscale = 0.9
            break
        case 844:
        case 845:
            xx = 10
            yy = 23
            break
        case 863:
            xx = 10
            yy = 25
            break
        case 924:
            xx = 10
            yy = 15
            yyscale = 1.1
            xxscale = 1.1
            break
        case 859:
            xx = 15
            yy = 15
            yyscale = 1.3
            xxscale = 1.3
            break
        case 865:
            xx = 10
            yy = 15
            yyscale = 1
            xxscale = 1
            break
        case 866:
            xx = 18
            yy = 33
            yyscale = 1.2
            xxscale = 1.2
            break
        case 833:
        case 832:
        case 831:
            xx = 10
            yy = 17
            yyscale = 0.8
            xxscale = 0.8
            break
        default:
            break
    }

    var excluded_obj = (object_index != obj_savepoint || object_index != obj_cactus || object_index != obj_smallchair)
    if excluded_obj
        draw_sprite_ext(spr_centeredhole, 0, (x + xx), (y + yy), xxscale, yyscale, image_angle, image_blend, 0.3)
    draw_self()
}
