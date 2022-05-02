if (menu == 1 || menu == 2)
{
    var soldout = 0
    if (menuc[1] == 3)
        soldout = global.flag[445] != 0
    if (menuc[1] >= 0 && menuc[1] <= 3)
    {
        if soldout
            scr_shop_draw_infobox(minimenuy, scr_gettext("shop4_itemdesc_soldout"))
        else
            scr_shop_draw_infobox(minimenuy, scr_gettext(("shop6_itemdesc_" + string(item[menuc[1]]))))
    }
}
scr_shop_draw_window(menu < 4)
draw_set_color(c_white)
if (menu == 0)
{
    sell = 0
    selling = 0
    sidemessage = 0
    menuc[1] = 0
    menuc[2] = 0
    menuc[3] = 0
    menuc[4] = 0
    if (instance_exists(OBJ_WRITER) == 0)
    {
        if (global.flag[1] < 2)
        {
            global.msg[0] = scr_gettext("obj_shop6_244")
            if (mainmessage == 0)
                global.msg[0] = scr_gettext("obj_shop6_245")
        }
        else
        {
            global.msg[0] = scr_gettext("obj_shop6_249")
            if (mainmessage == 0)
                global.msg[0] = scr_gettext("obj_shop6_250")
        }
        mainmessage = 1
        instance_create(0, 110, OBJ_WRITER)
    }
    else if control_check_pressed(1)
    {
        with (OBJ_WRITER)
        {
            if (halt == false)
                stringpos = string_length(originalstring)
            control_clear(1)
        }
    }
    menumax = 3
    scr_shop_draw_topmenu(0)
    if control_check_pressed(0)
    {
        OBJ_WRITER.dfy = 1
        control_clear(0)
        if (menuc[0] == 0)
            menu = 1
        if (menuc[0] == 1)
        {
            sell = 1
            menu = 4
        }
        if (menuc[0] == 2)
        {
            menu = 3
            if (global.flag[1] == 0)
            {
                menu = 4
                sell = 20
            }
            if (global.flag[1] == 1)
            {
                menu = 4
                sell = 21
            }
        }
        if (menuc[0] == 3)
        {
            sell = 2
            menu = 4
        }
    }
}
if (menu == 1 || menu == 2)
{
    for (var i = 0; i < 3; i++)
    {
        var pad = "  "
        if (global.language == "ja")
            pad = " "
        if (itemcost[i] < 100)
            var cost = (pad + string(itemcost[i]))
        else
            cost = string(itemcost[i])
        draw_text(30, (130 + (20 * i)), string_hash_to_newline(scr_gettext("shop_buy_list", cost, scr_gettext(("item_name_" + string(item[i]))))))
    }
    if (global.flag[19] == 0)
    {
        var str = scr_gettext("shop_buy_list", "500", "")
        draw_text(30, 190, string_hash_to_newline(str))
        var namepos = (30 + string_width(string_hash_to_newline(str)))
        var namestr = scr_gettext("shop6_item_61_longname")
        var xscale = (((scr_shop_divider_pos() - 15) - namepos) / string_width(string_hash_to_newline(namestr)))
        draw_text_transformed(namepos, 190, string_hash_to_newline(namestr), xscale, 1, 0)
    }
    else
    {
        draw_set_color(c_gray)
        draw_text(30, 190, string_hash_to_newline(scr_gettext("shop_buy_soldout")))
        draw_set_color(c_white)
    }
    draw_text(30, 210, string_hash_to_newline(scr_gettext("shop_exit_submenu")))
    if (menu == 1)
    {
        menumax = 4
        if (instance_exists(OBJ_WRITER) == 0)
        {
            if (global.flag[1] < 2)
            {
                if (sidemessage == 0)
                    global.msg[0] = scr_gettext("obj_shop6_329")
                if (sidemessage == 1)
                    global.msg[0] = scr_gettext("obj_shop6_330")
                if (sidemessage == 2)
                    global.msg[0] = scr_gettext("obj_shop6_331")
                if (sidemessage == 3)
                    global.msg[0] = scr_gettext("obj_shop6_332")
                if (sidemessage == 4)
                    global.msg[0] = scr_gettext("obj_shop6_333")
                if (sidemessage == 5)
                    global.msg[0] = scr_gettext("obj_shop6_334")
            }
            if (global.flag[1] == 2)
            {
                if (sidemessage == 0)
                    global.msg[0] = scr_gettext("obj_shop6_338")
                if (sidemessage == 1)
                    global.msg[0] = scr_gettext("obj_shop6_339")
                if (sidemessage == 2)
                    global.msg[0] = scr_gettext("obj_shop6_340")
                if (sidemessage == 3)
                    global.msg[0] = scr_gettext("obj_shop6_341")
                if (sidemessage == 4)
                    global.msg[0] = scr_gettext("obj_shop6_342")
                if (sidemessage == 5)
                    global.msg[0] = scr_gettext("obj_shop6_343")
            }
            instance_create(210, 110, OBJ_WRITER)
        }
        var hearty = 134
        if (global.language == "ja")
            hearty -= 2
        draw_sprite(spr_heartsmall, 0, 15, (hearty + (menuc[1] * 20)))
        if control_check_pressed(0)
        {
            soldout = 0
            if (menuc[1] == 3 && global.flag[19] == 1)
                soldout = 1
            if (soldout == 0)
                menu = 2
            else
                sidemessage = 5
            OBJ_WRITER.dfy = 1
            if (menuc[1] == menumax)
                menu = 0
        }
        else if control_check_pressed(1)
        {
            menu = 0
            OBJ_WRITER.dfy = 1
        }
        if (menu == 2)
            control_clear(0)
        menuc[2] = 0
    }
    if (menu == 2)
    {
        var heartx = (scr_shop_divider_pos() + 15)
        var textx = (heartx + 5)
        if (global.language == "ja")
            textx -= 8
        menumax = 1
        draw_text(textx, 130, string_hash_to_newline(scr_gettext("shop_buy_prompt1", string(itemcost[menuc[1]]))))
        draw_text(textx, 145, string_hash_to_newline(scr_gettext("shop_buy_prompt2", string(itemcost[menuc[1]]))))
        draw_text((heartx + 15), 170, string_hash_to_newline(scr_gettext("yes")))
        draw_text((heartx + 15), 185, string_hash_to_newline(scr_gettext("no")))
        hearty = 174
        if (global.language == "ja")
            hearty -= 2
        draw_sprite(spr_heartsmall, 0, heartx, (hearty + (menuc[2] * 15)))
        if control_check_pressed(1)
        {
            menu = 1
            control_clear(1)
            sidemessage = 2
        }
        else if control_check_pressed(0)
        {
            control_clear(0)
            if (menuc[2] == 0)
            {
                scr_cost(itemcost[menuc[1]])
                if (afford == 1)
                {
                    script_execute(scr_itemget, item[menuc[1]])
                    if (noroom == 0)
                    {
                        global.gold -= itemcost[menuc[1]]
                        snd_play(snd_buyitem)
                        sidemessage = 1
                        if (global.flag[1] < 1)
                            global.flag[1] = 1
                        if (menuc[1] == 3)
                            global.flag[19] = 1
                    }
                    if (noroom == 1)
                        sidemessage = 4
                }
                else
                    sidemessage = 3
            }
            if (menuc[2] == 1)
                sidemessage = 2
            menu = 1
        }
    }
    if (menuc[1] != 4)
    {
        if (minimenuy > (120 - scr_shop_infobox_height()))
            minimenuy -= 3
        if (minimenuy > 55)
            minimenuy -= 2
        if (minimenuy > 80)
            minimenuy -= 4
        if (minimenuy > 100)
            minimenuy -= 5
    }
    else if (minimenuy < 120)
        minimenuy += 20
}
if (menu == 3)
{
    menumax = 4
    if (global.flag[7] == 0)
    {
        scr_shop_draw_talktitle(0, 0, scr_gettext("shop6_talk1_title"))
        if (global.flag[2] == 0)
            scr_shop_draw_talktitle(1, 0, scr_gettext("shop6_talk2a_title"))
        if (global.flag[2] == 1)
            scr_shop_draw_talktitle(1, 1, scr_gettext("shop6_talk2b_title"))
        if (global.flag[2] == 2)
            scr_shop_draw_talktitle(1, 0, scr_gettext("shop6_talk2c_title"))
        if (global.flag[2] == 4)
            scr_shop_draw_talktitle(1, 0, scr_gettext("shop6_talk2d_title"))
        if (global.flag[2] == 5)
            scr_shop_draw_talktitle(1, 1, scr_gettext("shop6_talk2e_title"))
        if (global.flag[2] == 6)
            scr_shop_draw_talktitle(1, 0, scr_gettext("shop6_talk2f_title"))
        if (global.flag[2] == 7)
            scr_shop_draw_talktitle(1, 0, scr_gettext("shop6_talk2g_title"))
        if (global.flag[2] == 8)
            scr_shop_draw_talktitle(1, 1, scr_gettext("shop6_talk2h_title"))
        if (global.flag[2] == 9)
            scr_shop_draw_talktitle(1, 0, scr_gettext("shop6_talk2i_title"))
        if (global.flag[3] == 0)
            scr_shop_draw_talktitle(2, 0, scr_gettext("shop6_talk3a_title"))
        if (global.flag[3] == 1)
            scr_shop_draw_talktitle(2, 1, scr_gettext("shop6_talk3b_title"))
        if (global.flag[3] == 2)
            scr_shop_draw_talktitle(2, 1, scr_gettext("shop6_talk3c_title"))
        if (global.flag[3] == 3)
            scr_shop_draw_talktitle(2, 0, scr_gettext("shop6_talk3d_title"))
        scr_shop_draw_talktitle(3, 0, scr_gettext("shop6_talk4_title"))
    }
    if (global.flag[7] == 1)
    {
        scr_shop_draw_talktitle(0, 0, scr_gettext("shop6_talk5_title"))
        scr_shop_draw_talktitle(1, 0, scr_gettext("shop6_talk6_title"))
        scr_shop_draw_talktitle(2, 0, scr_gettext("shop6_talk7_title"))
        scr_shop_draw_talktitle(3, 0, scr_gettext("shop6_talk8_title"))
    }
    scr_shop_draw_talkmenu()
    if (instance_exists(OBJ_WRITER) == 0)
    {
        global.msg[0] = scr_gettext("obj_shop6_472")
        var writerx = 210
        if (global.language == "ja")
            writerx += 2
        instance_create(writerx, 110, OBJ_WRITER)
    }
    if control_check_pressed(0)
    {
        OBJ_WRITER.dfy = 1
        if (menuc[3] < menumax)
        {
            sell = (menuc[3] + 3)
            control_clear(0)
            menu = 4
        }
        else
            menu = 0
    }
    else if control_check_pressed(1)
    {
        control_clear(1)
        menu = 0
        OBJ_WRITER.dfy = 1
    }
}
if (menu < 4)
    scr_shop_draw_status()
if (menu == 4)
{
    if (sell == 0)
        menu = 0
    if (instance_exists(OBJ_WRITER) == 0 && selling == 0)
    {
        if (sell == 1)
        {
            if (global.flag[1] < 2)
            {
                global.msg[0] = scr_gettext("obj_shop6_519")
                soldo += 1
                if (soldo > 1)
                    global.msg[0] = scr_gettext("obj_shop6_521")
            }
            else
                global.msg[0] = scr_gettext("obj_shop6_525")
        }
        if (sell == 2)
        {
            global.msg[0] = scr_gettext("obj_shop6_535")
            if (global.flag[1] > 1)
                global.msg[0] = scr_gettext("obj_shop6_538")
        }
        if (sell == 3)
        {
            global.msg[0] = scr_gettext("obj_shop6_545")
            if (global.flag[7] == 1)
                global.msg[0] = scr_gettext("obj_shop6_551")
        }
        if (sell == 4)
        {
            global.msg[0] = scr_gettext("obj_shop4_566")
            if (global.flag[2] == 9)
                global.msg[0] = scr_gettext("obj_shop6_570")
            if (global.flag[2] == 8)
            {
                global.msg[0] = scr_gettext("obj_shop6_575")
                global.msg[1] = scr_gettext("obj_shop6_576")
                global.msg[2] = scr_gettext("obj_shop6_577")
                global.msg[3] = scr_gettext("obj_shop6_578")
                global.msg[4] = scr_gettext("obj_shop6_579")
                global.msg[5] = scr_gettext("obj_shop6_580")
                global.msg[6] = scr_gettext("obj_shop6_581")
                global.msg[7] = scr_gettext("obj_shop6_582")
                global.msg[8] = scr_gettext("obj_shop6_583")
            }
            if (global.flag[2] == 7)
            {
                global.msg[0] = scr_gettext("obj_shop6_588")
                global.msg[1] = scr_gettext("obj_shop6_589")
                global.msg[2] = scr_gettext("obj_shop6_590")
                global.msg[3] = scr_gettext("obj_shop6_591")
                global.msg[4] = scr_gettext("obj_shop6_592")
                global.msg[5] = scr_gettext("obj_shop6_593")
                global.msg[6] = scr_gettext("obj_shop6_594")
                global.msg[7] = scr_gettext("obj_shop6_595")
                global.msg[8] = scr_gettext("obj_shop6_596")
                global.msg[9] = scr_gettext("obj_shop6_597")
            }
            if (global.flag[2] == 6)
                global.msg[0] = scr_gettext("obj_shop6_603")
            if (global.flag[2] == 5)
            {
                global.msg[0] = scr_gettext("obj_shop6_608")
                global.msg[1] = scr_gettext("obj_shop6_609")
                global.msg[2] = scr_gettext("obj_shop6_610")
                global.msg[3] = scr_gettext("obj_shop6_611")
                global.msg[4] = scr_gettext("obj_shop6_612")
                global.msg[5] = scr_gettext("obj_shop6_613")
                global.msg[6] = scr_gettext("obj_shop6_614")
                global.msg[7] = scr_gettext("obj_shop6_615")
            }
            if (global.flag[2] == 4)
            {
                global.msg[0] = scr_gettext("obj_shop6_620")
                global.msg[1] = scr_gettext("obj_shop6_621")
                global.msg[2] = scr_gettext("obj_shop6_622")
                global.msg[3] = scr_gettext("obj_shop6_623")
                global.msg[4] = scr_gettext("obj_shop6_624")
                global.msg[5] = scr_gettext("obj_shop6_625")
                global.msg[6] = scr_gettext("obj_shop6_626")
            }
            if (global.flag[2] == 2)
            {
                global.msg[0] = scr_gettext("obj_shop6_631")
                global.msg[1] = scr_gettext("obj_shop6_632")
            }
            if (global.flag[2] == 1)
            {
                global.msg[0] = scr_gettext("obj_shop6_638")
                global.msg[1] = scr_gettext("obj_shop6_639")
            }
            if (global.flag[2] == 0)
            {
                global.msg[0] = scr_gettext("obj_shop6_651")
                global.msg[1] = scr_gettext("obj_shop6_652")
            }
            if (global.flag[7] == 1)
            {
                global.msg[0] = scr_gettext("obj_shop6_662")
                global.msg[1] = scr_gettext("obj_shop6_663")
                if (global.flag[2] >= 9)
                {
                    global.msg[0] = scr_gettext("obj_shop6_667")
                    global.msg[1] = scr_gettext("obj_shop6_668")
                    global.msg[2] = scr_gettext("obj_shop6_669")
                    global.msg[3] = scr_gettext("obj_shop6_670")
                    global.msg[4] = scr_gettext("obj_shop6_671")
                }
            }
            if (global.flag[2] == 8)
                global.flag[2] = 9
            if (global.flag[2] == 5)
                global.flag[2] = 6
            if (global.flag[2] == 1)
                global.flag[2] = 2
            if (global.flag[2] == 0)
                global.flag[2] = 1
        }
        if (sell == 5)
        {
            if (global.flag[3] == 3)
                global.msg[0] = scr_gettext("obj_shop6_698")
            if (global.flag[3] == 2)
            {
                global.msg[0] = scr_gettext("obj_shop6_704")
                global.msg[1] = scr_gettext("obj_shop6_705")
                global.msg[2] = scr_gettext("obj_shop6_706")
                global.msg[3] = scr_gettext("obj_shop6_707")
                global.msg[4] = scr_gettext("obj_shop6_708")
                global.msg[5] = scr_gettext("obj_shop6_709")
                global.msg[6] = scr_gettext("obj_shop6_710")
            }
            if (global.flag[3] == 1)
            {
                global.msg[0] = scr_gettext("obj_shop6_716")
                global.msg[1] = scr_gettext("obj_shop6_717")
                global.msg[2] = scr_gettext("obj_shop6_718")
                global.msg[3] = scr_gettext("obj_shop6_719")
            }
            if (global.flag[3] == 0)
            {
                global.msg[0] = scr_gettext("obj_shop6_724")
                global.msg[1] = scr_gettext("obj_shop6_725")
                global.msg[2] = scr_gettext("obj_shop6_726")
            }
            if (global.flag[3] == 2)
                global.flag[3] = 3
            if (global.flag[3] == 1)
                global.flag[3] = 2
            if (global.flag[3] == 0)
                global.flag[3] = 1
            if (global.flag[7] == 1)
            {
                global.msg[0] = scr_gettext("obj_shop6_734")
                global.msg[1] = scr_gettext("obj_shop6_735")
                global.msg[2] = scr_gettext("obj_shop6_736")
                global.msg[3] = scr_gettext("obj_shop6_737")
                global.msg[4] = scr_gettext("obj_shop6_738")
                global.msg[5] = scr_gettext("obj_shop6_739")
            }
        }
        if (sell == 6)
        {
            global.msg[0] = scr_gettext("obj_shop6_756")
            global.msg[1] = scr_gettext("obj_shop6_757")
            global.msg[2] = scr_gettext("obj_shop6_758")
            global.msg[3] = scr_gettext("obj_shop6_759")
            global.msg[4] = scr_gettext("obj_shop6_760")
            global.msg[5] = scr_gettext("obj_shop6_761")
            global.msg[6] = scr_gettext("obj_shop6_762")
            if (global.flag[7] == 1)
            {
                global.msg[0] = scr_gettext("obj_shop6_767")
                global.msg[1] = scr_gettext("obj_shop6_768")
                global.msg[2] = scr_gettext("obj_shop6_769")
                global.msg[3] = scr_gettext("obj_shop6_770")
            }
        }
        if (sell == 20)
            global.msg[0] = scr_gettext("obj_shop6_785")
        if (sell == 21)
        {
            global.msg[0] = scr_gettext("obj_shop6_786")
            global.flag[1] = 2
        }
        instance_create(10, 110, OBJ_WRITER)
        selling = 1
    }
    if instance_exists(OBJ_WRITER)
    {
        if control_check_pressed(1)
        {
            with (OBJ_WRITER)
            {
                if (halt == false)
                    stringpos = string_length(originalstring)
                control_clear(1)
            }
        }
    }
    if (selling == 1 && instance_exists(OBJ_WRITER) == 0)
    {
        if (sell == 2)
        {
            selling = 2
            event_user(1)
        }
        else
        {
            if (sell == 1 || sell == 20)
                menu = 0
            else
                menu = 3
            sell = 0
            selling = 0
        }
    }
}
if keyboard_check_pressed(vk_down)
{
    menuc[menu] += 1
    if (menuc[menu] > menumax)
        menuc[menu] = 0
}
if keyboard_check_pressed(vk_up)
{
    menuc[menu] -= 1
    if (menuc[menu] < 0)
        menuc[menu] = menumax
}
if (global.debug == true)
{
    if keyboard_check_pressed(ord("G"))
        global.gold = 5000
    if keyboard_check_pressed(ord("B"))
        global.flag[2] += 1
    if keyboard_check_pressed(ord("L"))
    {
        caster_free(-3)
        room_goto(room_shop3)
    }
}
