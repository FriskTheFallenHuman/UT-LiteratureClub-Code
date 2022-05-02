if global.charswap
    var char_name = ("_" + string(global.charswappedname))
else
    char_name = ""
global.monstertype[0] = 47
global.monstertype[1] = 0
global.monstertype[2] = 0
global.batmusic = caster_load("music/battle1.ogg")
global.actfirst = 0
global.extraintro = 0
global.battlelv = 0
global.msc = 0
global.monster[0] = false
global.monster[1] = false
global.monster[2] = false
global.monster[3] = false
global.turn = 0
switch global.battlegroup
{
    case 1:
        global.monstertype[0] = 4
        global.monstertype[1] = 4
        global.monstertype[2] = 4
        caster_loop(global.batmusic, 0.5, 1)
        global.msc = (global.battlegroup + 3000)
        global.msg[0] = scr_gettext("scr_battlegroup_117")
        global.monsterinstance[0] = instance_create(216, 136, obj_froggit)
        global.monsterinstance[1] = instance_create(418, 136, obj_froggit)
        global.monsterinstance[2] = instance_create(14, 136, obj_froggit)
        break
    case 2:
        global.monstertype[0] = 2
        global.batmusic = caster_load("music/prebattle1.ogg")
        caster_loop(global.batmusic, 0.5, 1)
        global.msc = (global.battlegroup + 3000)
        global.monsterinstance[0] = instance_create(216, 136, obj_dummymonster)
        break
    case 3:
        global.monstertype[0] = 3
        global.batmusic = caster_load("music/prebattle1.ogg")
        caster_loop(global.batmusic, 0.5, 1)
        global.msc = (global.battlegroup + 3000)
        global.monsterinstance[0] = instance_create(216, 136, obj_fakefroggit)
        break
    case 4:
        global.monstertype[0] = 4
        caster_loop(global.batmusic, 0.5, 1)
        global.msc = (global.battlegroup + 3000)
        global.monsterinstance[0] = instance_create(216, 136, obj_froggit)
        break
    case 5:
        global.monstertype[0] = 5
        caster_loop(global.batmusic, 0.5, 1)
        global.msc = (global.battlegroup + 3000)
        global.monsterinstance[0] = instance_create(214, 16, obj_whimsun)
        break
    case 6:
        global.monstertype[0] = 4
        global.monstertype[1] = 5
        caster_loop(global.batmusic, 0.5, 1)
        global.msc = (global.battlegroup + 3000)
        global.monsterinstance[0] = instance_create(216, 136, obj_froggit)
        global.monsterinstance[1] = instance_create(317, 16, obj_whimsun)
        break
    case 7:
        global.monstertype[0] = 6
        caster_loop(global.batmusic, 0.5, 1)
        global.msc = (global.battlegroup + 3000)
        global.monsterinstance[0] = instance_create(216, 156, obj_moldsmal)
        break
    case 8:
        global.monstertype[0] = 6
        global.monstertype[1] = 6
        global.monstertype[2] = 6
        caster_loop(global.batmusic, 0.5, 1)
        global.msc = (global.battlegroup + 3000)
        global.msg[0] = scr_gettext("scr_battlegroup_116")
        global.monsterinstance[0] = instance_create(15, 156, obj_moldsmal)
        global.monsterinstance[1] = instance_create(217, 156, obj_moldsmal)
        global.monsterinstance[2] = instance_create(421, 156, obj_moldsmal)
        break
    case 9:
        global.monstertype[0] = 4
        global.monstertype[1] = 4
        caster_loop(global.batmusic, 0.5, 1)
        global.msg[0] = scr_gettext("scr_battlegroup_133")
        global.monsterinstance[0] = instance_create(116, 136, obj_froggit)
        global.monsterinstance[1] = instance_create(320, 136, obj_froggit)
        break
    case 10:
        global.monstertype[0] = 6
        global.monstertype[1] = 6
        caster_loop(global.batmusic, 0.5, 1)
        global.msg[0] = scr_gettext("scr_battlegroup_148")
        global.monsterinstance[0] = instance_create(116, 156, obj_moldsmal)
        global.monsterinstance[1] = instance_create(320, 156, obj_moldsmal)
        break
    case 11:
        global.monstertype[0] = 6
        global.monstertype[1] = 7
        caster_loop(global.batmusic, 0.5, 1)
        global.msg[0] = scr_gettext("scr_battlegroup_163")
        global.monsterinstance[0] = instance_create(116, 156, obj_moldsmal)
        global.monsterinstance[1] = instance_create(320, 136, obj_migosp)
        break
    case 12:
        global.monstertype[0] = 7
        global.monstertype[1] = 8
        caster_loop(global.batmusic, 0.5, 1)
        global.msg[0] = scr_gettext("scr_battlegroup_178")
        global.monsterinstance[0] = instance_create(116, 136, obj_migosp)
        global.monsterinstance[1] = instance_create(320, 136, obj_vegetoid)
        break
    case 13:
        global.monstertype[0] = 9
        caster_loop(global.batmusic, 0.5, 1)
        global.msg[0] = scr_gettext("scr_battlegroup_193")
        global.monsterinstance[0] = instance_create(218, 124, obj_loox)
        break
    case 14:
        global.monstertype[0] = 9
        global.monstertype[1] = 8
        caster_loop(global.batmusic, 0.5, 1)
        global.msg[0] = scr_gettext("scr_battlegroup_207")
        global.monsterinstance[0] = instance_create(116, 124, obj_loox)
        global.monsterinstance[1] = instance_create(320, 136, obj_vegetoid)
        break
    case 15:
        global.monstertype[0] = 9
        global.monstertype[1] = 8
        global.monstertype[2] = 7
        caster_loop(global.batmusic, 0.5, 1)
        global.msg[0] = scr_gettext("scr_battlegroup_222")
        global.monsterinstance[0] = instance_create(14, 124, obj_loox)
        global.monsterinstance[1] = instance_create(218, 136, obj_vegetoid)
        global.monsterinstance[2] = instance_create(422, 136, obj_migosp)
        break
    case 16:
        global.monstertype[0] = 8
        global.monstertype[1] = 8
        caster_loop(global.batmusic, 0.5, 1)
        global.msg[0] = scr_gettext("scr_battlegroup_238")
        global.monsterinstance[0] = instance_create(116, 136, obj_vegetoid)
        global.monsterinstance[1] = instance_create(320, 136, obj_vegetoid)
        break
    case 17:
        global.monstertype[0] = 9
        global.monstertype[1] = 9
        caster_loop(global.batmusic, 0.5, 1)
        global.msg[0] = scr_gettext("scr_battlegroup_253")
        global.monsterinstance[0] = instance_create(116, 124, obj_loox)
        global.monsterinstance[1] = instance_create(320, 124, obj_loox)
        break
    case 18:
        global.monstertype[0] = 8
        caster_loop(global.batmusic, 0.5, 1)
        global.msg[0] = scr_gettext("scr_battlegroup_268")
        global.monsterinstance[0] = instance_create(218, 136, obj_vegetoid)
        break
    case 19:
        global.monstertype[0] = 0
        caster_loop(global.batmusic, 0.3, 0.5)
        global.extraintro = 2
        global.msg[2] = scr_gettext(("scr_battlegroup_282" + string(char_name)))
        break
    case 20:
        global.monstertype[0] = 11
        global.batmusic = caster_load("music/ghostbattle.ogg")
        caster_loop(global.batmusic, 1, 1)
        global.msg[0] = scr_gettext("scr_battlegroup_297")
        if (global.flag[6] == 1)
            global.msg[0] = scr_gettext("scr_battlegroup_299")
        global.monsterinstance[0] = instance_create(266, 106, obj_napstablook)
        break
    case 21:
        global.monstertype[0] = 9
        caster_loop(global.batmusic, 0.5, 1)
        global.msg[0] = scr_gettext("scr_battlegroup_193")
        global.monsterinstance[0] = instance_create(218, 124, obj_loox)
        break
    case 22:
        global.monstertype[0] = 10
        global.batmusic = caster_load("music/boss1.ogg")
        caster_loop(global.batmusic, 1, 1)
        global.msg[0] = scr_gettext("scr_battlegroup_327")
        global.monsterinstance[0] = instance_create(250, 42, obj_torielboss)
        break
    case 23:
        global.monstertype[0] = 13
        caster_loop(global.batmusic, 0.5, 1)
        global.msg[0] = scr_gettext("scr_battlegroup_342")
        global.monsterinstance[0] = instance_create(196, 28, obj_movedoge)
        break
    case 24:
        global.monstertype[0] = 14
        caster_loop(global.batmusic, 0.5, 1)
        global.msg[0] = scr_gettext("scr_battlegroup_357")
        global.monsterinstance[0] = instance_create(216, 38, obj_lesserdoge)
        break
    case 25:
        global.monstertype[0] = 15
        global.monstertype[1] = 16
        caster_loop(global.batmusic, 0.5, 1)
        global.msg[0] = scr_gettext("scr_battlegroup_371")
        global.monsterinstance[0] = instance_create(208, 38, obj_mandog)
        global.monsterinstance[1] = instance_create(208, 38, obj_womandog)
        break
    case 26:
        global.monstertype[0] = 17
        global.batmusic = caster_load("music/dogsong.ogg")
        caster_loop(global.batmusic, 0.7, 0.95)
        global.msg[0] = scr_gettext("scr_battlegroup_386")
        global.monsterinstance[0] = instance_create(208, 38, obj_greatdog)
        break
    case 27:
        global.monstertype[0] = 25
        if (global.flag[67] < 0)
            global.batmusic = caster_load("music/papyrusboss.ogg")
        else
            global.batmusic = caster_load("music/papyrus.ogg")
        if (scr_murderlv() < 7)
        {
            if (global.flag[67] < 0)
                caster_loop(global.batmusic, 0.9, 1)
            else
                caster_loop(global.batmusic, 0.5, 1)
        }
        else
            caster_loop(global.batmusic, 0, 1)
        global.msg[0] = scr_gettext("scr_battlegroup_411")
        if (scr_murderlv() >= 7)
            global.msg[0] = scr_gettext("scr_battlegroup_413")
        global.monsterinstance[0] = instance_create(250, 42, obj_papyrusboss)
        break
    case 28:
        global.monstertype[0] = 22
        caster_loop(global.batmusic, 0.5, 1)
        global.msg[0] = scr_gettext("scr_battlegroup_429")
        global.monsterinstance[0] = instance_create(208, 38, obj_gyftrot)
        break
    case 30:
        global.monstertype[0] = 18
        caster_loop(global.batmusic, 0.5, 1)
        if (global.flag[57] == 2)
        {
            global.msg[0] = scr_gettext("scr_battlegroup_445")
            global.monsterinstance[0] = instance_create(216, 38, obj_chilldrake)
        }
        else
        {
            global.msg[0] = scr_gettext("scr_battlegroup_450")
            global.monsterinstance[0] = instance_create(216, 38, obj_snowdrake)
        }
        break
    case 31:
        global.monstertype[0] = 18
        global.monstertype[1] = 18
        caster_loop(global.batmusic, 0.5, 1)
        global.msg[0] = scr_gettext("scr_battlegroup_465")
        global.monsterinstance[0] = instance_create(114, 38, obj_chilldrake)
        global.monsterinstance[1] = instance_create(318, 38, obj_chilldrake)
        break
    case 32:
        global.monstertype[0] = 19
        caster_loop(global.batmusic, 0.5, 1)
        global.msg[0] = scr_gettext("scr_battlegroup_480")
        global.monsterinstance[0] = instance_create(216, 38, obj_icecap)
        break
    case 33:
        global.monstertype[0] = 19
        global.monstertype[1] = 18
        caster_loop(global.batmusic, 0.5, 1)
        if (global.flag[57] == 2)
        {
            global.msg[0] = scr_gettext("scr_battlegroup_497")
            global.monsterinstance[0] = instance_create(114, 38, obj_icecap)
            global.monsterinstance[1] = instance_create(318, 38, obj_chilldrake)
        }
        else
        {
            global.msg[0] = scr_gettext("scr_battlegroup_503")
            global.monsterinstance[0] = instance_create(114, 38, obj_icecap)
            global.monsterinstance[1] = instance_create(318, 38, obj_snowdrake)
        }
        break
    case 34:
        global.monstertype[0] = 21
        caster_loop(global.batmusic, 0.5, 1)
        global.msg[0] = scr_gettext("scr_battlegroup_519")
        global.monsterinstance[0] = instance_create(216, 127, obj_jerry)
        break
    case 35:
        global.monstertype[0] = 19
        global.monstertype[1] = 21
        caster_loop(global.batmusic, 0.5, 1)
        global.msg[0] = scr_gettext("scr_battlegroup_533")
        global.monsterinstance[0] = instance_create(15, 38, obj_icecap)
        global.monsterinstance[1] = instance_create(216, 127, obj_jerry)
        break
    case 36:
        global.monstertype[0] = 19
        global.monstertype[1] = 21
        global.monstertype[2] = 18
        caster_loop(global.batmusic, 0.5, 1)
        if (global.flag[57] == 2)
            global.msg[0] = scr_gettext("scr_battlegroup_549")
        else
            global.msg[0] = scr_gettext("scr_battlegroup_548")
        global.monsterinstance[0] = instance_create(15, 38, obj_icecap)
        global.monsterinstance[1] = instance_create(216, 127, obj_jerry)
        if (global.flag[57] == 2)
            global.monsterinstance[2] = instance_create(388, 38, obj_chilldrake)
        else
            global.monsterinstance[2] = instance_create(388, 38, obj_snowdrake)
        break
    case 40:
        global.monstertype[0] = 23
        caster_loop(global.batmusic, 0.5, 1)
        global.msg[0] = scr_gettext("scr_battlegroup_566")
        global.monsterinstance[0] = instance_create(216, 38, obj_aaron)
        break
    case 41:
        global.monstertype[0] = 24
        caster_loop(global.batmusic, 0.5, 1)
        global.msg[0] = scr_gettext("scr_battlegroup_581")
        global.monsterinstance[0] = instance_create(216, 38, obj_tembattle)
        break
    case 42:
        global.monstertype[0] = 12
        global.monstertype[1] = 26
        caster_loop(global.batmusic, 0.5, 1)
        global.msg[0] = scr_gettext("scr_battlegroup_596")
        global.monsterinstance[0] = instance_create(114, 156, obj_moldsmal)
        global.monsterinstance[1] = instance_create(316, 156, obj_moldsmalx)
        break
    case 43:
        global.monstertype[0] = 28
        caster_loop(global.batmusic, 0.5, 1)
        global.msg[0] = scr_gettext("scr_battlegroup_612")
        global.monsterinstance[0] = instance_create(114, 136, obj_woshua)
        break
    case 44:
        global.monstertype[0] = 29
        caster_loop(global.batmusic, 0.5, 1)
        global.msg[0] = scr_gettext("scr_battlegroup_626")
        global.monsterinstance[0] = instance_create(218, 36, obj_shyren)
        break
    case 45:
        global.monstertype[0] = 31
        global.batmusic = caster_load("music/dummybattle.ogg")
        caster_loop(global.batmusic, 0.9, 1)
        global.msg[0] = scr_gettext("scr_battlegroup_640")
        global.monsterinstance[0] = instance_create(270, 80, obj_maddummy)
        break
    case 46:
        global.monstertype[0] = 23
        global.monstertype[1] = 28
        global.msg[0] = scr_gettext("scr_battlegroup_640")
        global.monsterinstance[0] = instance_create(114, 38, obj_aaron)
        global.monsterinstance[1] = instance_create(318, 136, obj_woshua)
        obj_woshbody.con = 1
        obj_woshbody.alarm[4] = 80
        break
    case 47:
        global.monstertype[0] = 32
        global.batmusic = caster_load("music/undyneboss.ogg")
        global.msg[0] = " %%"
        global.monsterinstance[0] = instance_create(210, 20, obj_undyneboss)
        break
    case 48:
        global.monstertype[0] = 33
        global.batmusic = caster_load("music/mettatonbattle.ogg")
        caster_loop(global.batmusic, 0.9, 1)
        global.msg[0] = scr_gettext("scr_battlegroup_687")
        global.monsterinstance[0] = instance_create(316, 190, obj_mettatonb_quiz)
        instance_create(412, 126, obj_questionasker)
        break
    case 49:
        global.monstertype[0] = 34
        global.monstertype[1] = 35
        caster_loop(global.batmusic, 0.5, 1)
        global.msg[0] = scr_gettext("scr_battlegroup_704")
        global.monsterinstance[0] = instance_create(18, 34, obj_bara01)
        global.monsterinstance[1] = instance_create(432, 34, obj_bara02)
        break
    case 50:
        global.monstertype[0] = 36
        caster_loop(global.batmusic, 0.5, 1)
        global.msg[0] = scr_gettext("scr_battlegroup_719")
        global.monsterinstance[0] = instance_create(46, 36, obj_tsunderplane)
        break
    case 51:
        global.monstertype[0] = 37
        caster_loop(global.batmusic, 0.5, 1)
        global.msg[0] = scr_gettext("scr_battlegroup_733")
        global.monsterinstance[0] = instance_create(106, 125, obj_vulkin)
        break
    case 52:
        global.monstertype[0] = 38
        caster_loop(global.batmusic, 0.5, 1)
        global.msg[0] = scr_gettext("scr_battlegroup_747")
        global.monsterinstance[0] = instance_create(108, 7, obj_pyrope)
        break
    case 53:
        global.monstertype[0] = 12
        global.monstertype[1] = 12
        caster_loop(global.batmusic, 0.5, 1)
        global.msg[0] = scr_gettext("scr_battlegroup_596")
        global.monsterinstance[0] = instance_create(214, 156, obj_moldsmal)
        global.monsterinstance[1] = instance_create(418, 156, obj_moldsmal)
        break
    case 54:
        global.monstertype[0] = 28
        global.monstertype[1] = 23
        caster_loop(global.batmusic, 0.5, 1)
        global.msg[0] = scr_gettext("scr_battlegroup_778")
        global.monsterinstance[0] = instance_create(116, 136, obj_woshua)
        global.monsterinstance[1] = instance_create(318, 38, obj_aaron)
        break
    case 55:
        global.monstertype[0] = 28
        global.monstertype[1] = 26
        caster_loop(global.batmusic, 0.5, 1)
        global.msg[0] = scr_gettext("scr_battlegroup_795")
        global.monsterinstance[0] = instance_create(116, 136, obj_woshua)
        global.monsterinstance[1] = instance_create(318, 156, obj_moldsmalx)
        with (obj_moldsmalx)
        {
            with (mypart1)
                instance_destroy()
            visible = false
            stage = 1
            global.monstername[myself] = scr_gettext("monstername_26b")
            mypart1 = instance_create(x, y, part1)
            mypart1.stage = 1
            global.hurtanim[myself] = 0
            image_index = 0
            scalevalue = 0.01
        }
        break
    case 56:
        global.monstertype[0] = 39
        global.batmusic = caster_load("music/spider.ogg")
        caster_loop(global.batmusic, 0.5, 1)
        global.msg[0] = scr_gettext("scr_battlegroup_826")
        global.monsterinstance[0] = instance_create(214, 37, obj_spiderb)
        break
    case 57:
        global.monstertype[0] = 40
        global.batmusic = caster_load("music/mettatonbattle.ogg")
        caster_loop(global.batmusic, 0.9, 1)
        global.msg[0] = scr_gettext("scr_battlegroup_687")
        global.monsterinstance[0] = instance_create(316, 190, obj_mettatonb_second)
        break
    case 58:
        global.monstertype[0] = 41
        global.batmusic = caster_load("music/undyneboss.ogg")
        caster_loop(global.batmusic, 0.9, 1.2)
        global.msg[0] = " %%"
        global.monsterinstance[0] = instance_create(250, 75, obj_undynebattle2)
        break
    case 59:
        global.monstertype[0] = 42
        global.msg[0] = scr_gettext("scr_battlegroup_868")
        global.monsterinstance[0] = instance_create(244, 50, obj_wizard)
        break
    case 60:
        global.monstertype[0] = 43
        global.msg[0] = scr_gettext("scr_battlegroup_882")
        global.monsterinstance[0] = instance_create(56, 40, obj_finalknight)
        break
    case 61:
        global.monstertype[0] = 44
        global.msg[0] = scr_gettext("scr_battlegroup_896")
        global.monsterinstance[0] = instance_create(218, 110, obj_finalfroggit)
        break
    case 62:
        global.monstertype[0] = 45
        global.msg[0] = scr_gettext("scr_battlegroup_910")
        global.monsterinstance[0] = instance_create(218, 110, obj_astigmatism)
        break
    case 63:
        global.monstertype[0] = 46
        global.msg[0] = scr_gettext("scr_battlegroup_924")
        global.monsterinstance[0] = instance_create(218, 110, obj_whimsalot)
        break
    case 64:
        global.monstertype[0] = 46
        global.monstertype[1] = 44
        global.msg[0] = scr_gettext("scr_battlegroup_938")
        global.monsterinstance[0] = instance_create(106, 110, obj_whimsalot)
        global.monsterinstance[1] = instance_create(416, 110, obj_finalfroggit)
        break
    case 65:
        global.monstertype[0] = 46
        global.monstertype[1] = 45
        global.msg[0] = scr_gettext("scr_battlegroup_953")
        global.monsterinstance[0] = instance_create(106, 110, obj_whimsalot)
        global.monsterinstance[1] = instance_create(416, 110, obj_astigmatism)
        break
    case 66:
        global.monstertype[0] = 44
        global.monstertype[1] = 45
        global.msg[0] = scr_gettext("scr_battlegroup_968")
        global.monsterinstance[0] = instance_create(106, 110, obj_finalfroggit)
        global.monsterinstance[1] = instance_create(416, 110, obj_astigmatism)
        break
    case 67:
        global.monstertype[0] = 44
        global.monstertype[1] = 45
        global.monstertype[2] = 46
        global.msg[0] = scr_gettext("scr_battlegroup_983")
        global.monsterinstance[0] = instance_create(16, 110, obj_finalfroggit)
        global.monsterinstance[1] = instance_create(218, 110, obj_astigmatism)
        global.monsterinstance[2] = instance_create(420, 110, obj_whimsalot)
        break
    case 68:
        global.monstertype[0] = 43
        global.monstertype[1] = 42
        global.msg[0] = scr_gettext("scr_battlegroup_999")
        global.monsterinstance[0] = instance_create(16, 50, obj_finalknight)
        global.monsterinstance[1] = instance_create(366, 50, obj_wizard)
        break
    case 69:
        global.msg[0] = scr_gettext("scr_battlegroup_1015")
        global.monsterinstance[0] = instance_create(256, 120, obj_battlebomb)
        break
    case 70:
        global.msg[0] = scr_gettext("scr_battlegroup_1029")
        global.monsterinstance[0] = instance_create(256, 180, obj_battlebomb)
        global.monstername[0] = scr_gettext("monstername_47a")
        global.monsterinstance[0].bombtype = 1
        global.monsterinstance[0].mypart1.type = 1
        global.monsterinstance[0].mypart1.bombtype = 1
        global.monsterinstance[0].mypart1.sprite_index = spr_tobdog_sleep_firebattle
        break
    case 71:
        global.msg[0] = scr_gettext("scr_battlegroup_1049")
        global.monsterinstance[0] = instance_create(256, 180, obj_battlebomb)
        global.monstername[0] = scr_gettext("monstername_47b")
        global.monsterinstance[0].bombtype = 2
        global.monsterinstance[0].mypart1.type = 2
        global.monsterinstance[0].mypart1.bombtype = 2
        global.monsterinstance[0].mypart1.sprite_index = spr_waterglass_battle
        break
    case 72:
        global.msg[0] = scr_gettext("scr_battlegroup_1068")
        global.monsterinstance[0] = instance_create(256, 100, obj_battlebomb)
        global.monstername[0] = scr_gettext("monstername_47c")
        global.monsterinstance[0].bombtype = 3
        global.monsterinstance[0].mypart1.type = 3
        global.monsterinstance[0].mypart1.bombtype = 3
        break
    case 73:
        global.msg[0] = scr_gettext("scr_battlegroup_1088")
        global.monsterinstance[0] = instance_create(256, 80, obj_battlebomb)
        global.monstername[0] = scr_gettext("monstername_47d")
        global.monsterinstance[0].bombtype = 4
        global.monsterinstance[0].mypart1.type = 4
        global.monsterinstance[0].mypart1.bombtype = 4
        break
    case 74:
        global.msg[0] = scr_gettext("scr_battlegroup_1107")
        global.monsterinstance[0] = instance_create(250, 100, obj_battlebomb)
        global.monstername[0] = scr_gettext("monstername_47e")
        global.monsterinstance[0].bombtype = 5
        global.monsterinstance[0].mypart1.type = 5
        global.monsterinstance[0].mypart1.bombtype = 5
        break
    case 75:
        global.msg[0] = scr_gettext("scr_battlegroup_1126")
        global.monsterinstance[0] = instance_create(256, 100, obj_battlebomb)
        global.monstername[0] = scr_gettext("monstername_47f")
        global.monsterinstance[0].bombtype = 6
        global.monsterinstance[0].mypart1.type = 6
        global.monsterinstance[0].mypart1.bombtype = 6
        break
    case 76:
        global.monstertype[0] = 49
        global.monstertype[1] = 48
        caster_loop(global.batmusic, 0.5, 1)
        global.msg[0] = scr_gettext("scr_battlegroup_704")
        global.monsterinstance[0] = instance_create(46, 66, obj_bara04)
        global.monsterinstance[1] = instance_create(460, 66, obj_bara03)
        break
    case 77:
        global.monstertype[0] = 36
        global.monstertype[1] = 37
        caster_loop(global.batmusic, 0.5, 1)
        global.msg[0] = scr_gettext("scr_battlegroup_1160")
        global.monsterinstance[0] = instance_create(46, 36, obj_tsunderplane)
        global.monsterinstance[1] = instance_create(306, 125, obj_vulkin)
        break
    case 78:
        global.monstertype[0] = 38
        global.monstertype[1] = 38
        caster_loop(global.batmusic, 0.5, 1)
        global.msg[0] = scr_gettext("scr_battlegroup_1176")
        global.monsterinstance[0] = instance_create(106, 10, obj_pyrope)
        global.monsterinstance[1] = instance_create(306, 10, obj_pyrope)
        break
    case 79:
        global.monstertype[0] = 37
        global.monstertype[1] = 37
        caster_loop(global.batmusic, 0.5, 1)
        global.msg[0] = scr_gettext("scr_battlegroup_1191")
        global.monsterinstance[0] = instance_create(106, 125, obj_vulkin)
        global.monsterinstance[1] = instance_create(306, 125, obj_vulkin)
        break
    case 80:
        global.monstertype[0] = 50
        global.batmusic = caster_load("music/mettatonbattle.ogg")
        caster_loop(global.batmusic, 0.9, 1)
        global.msg[0] = scr_gettext("scr_battlegroup_687")
        global.monsterinstance[0] = instance_create(300, 190, obj_mettatonb_third)
        break
    case 81:
        global.monstertype[0] = 51
        global.batmusic = caster_load("music/mettaton_ex.ogg")
        caster_loop(global.batmusic, 1, 0.97)
        global.msg[0] = scr_gettext("scr_battlegroup_1221")
        global.monsterinstance[0] = instance_create(210, 60, obj_mettatonex)
        break
    case 82:
        global.monstertype[0] = 53
        global.batmusic = caster_load("music/amalgam.ogg")
        caster_loop(global.batmusic, 0.8, 1)
        global.msg[0] = scr_gettext("scr_battlegroup_1236")
        global.monsterinstance[0] = instance_create(280, 20, obj_lemonbread)
        break
    case 83:
        global.monstertype[0] = 54
        global.batmusic = caster_load("music/amalgam.ogg")
        caster_loop(global.batmusic, 0.8, 1)
        global.msg[0] = scr_gettext("scr_battlegroup_1250")
        global.monsterinstance[0] = instance_create(240, 20, obj_reaperbird)
        break
    case 84:
        global.monstertype[0] = 55
        global.batmusic = caster_load("music/snowy.ogg")
        caster_loop(global.batmusic, 0.9, 0.5)
        global.msg[0] = scr_gettext("scr_battlegroup_1264")
        global.monsterinstance[0] = instance_create(240, 20, obj_snowdrakemom)
        break
    case 85:
        global.monstertype[0] = 56
        global.monstertype[1] = 56
        global.monstertype[2] = 56
        global.batmusic = caster_load("music/amalgam.ogg")
        caster_loop(global.batmusic, 0.8, 1)
        global.msg[0] = scr_gettext("scr_battlegroup_1278")
        global.monsterinstance[0] = instance_create(15, 146, obj_memoryhead)
        global.monsterinstance[1] = instance_create(217, 146, obj_memoryhead)
        global.monsterinstance[2] = instance_create(421, 146, obj_memoryhead)
        break
    case 86:
        global.monstertype[0] = 57
        global.batmusic = caster_load("music/sfx_woofenstein_loop.ogg")
        caster_loop(global.batmusic, 0.8, 0.85)
        global.msg[0] = scr_gettext("scr_battlegroup_1294")
        global.monsterinstance[0] = instance_create(180, 90, obj_endogeny)
        break
    case 87:
        global.monstertype[0] = 58
        if (!caster_is_playing(global.batmusic))
        {
            if (global.flag[501] == 0)
                global.batmusic = caster_load("music/xpart.ogg")
            else
                global.batmusic = caster_load("music/xpart_2.ogg")
            caster_loop(global.batmusic, 0.8, 0.95)
        }
        global.msg[0] = scr_gettext("scr_battlegroup_1314")
        global.monsterinstance[0] = instance_create(296, 70, obj_ripoff_undyne)
        break
    case 88:
        global.monstertype[0] = 60
        global.monstertype[1] = 61
        if (!caster_is_playing(global.batmusic))
        {
            if (global.flag[501] == 0)
                global.batmusic = caster_load("music/xpart.ogg")
            else
                global.batmusic = caster_load("music/xpart_2.ogg")
            caster_loop(global.batmusic, 0.8, 0.95)
        }
        global.msg[0] = scr_gettext("scr_battlegroup_1334")
        global.monsterinstance[0] = instance_create(76, 35, obj_ripoff_papyrus)
        global.monsterinstance[1] = instance_create(456, 148, obj_ripoff_sans)
        break
    case 89:
        global.monstertype[0] = 59
        if (!caster_is_playing(global.batmusic))
        {
            if (global.flag[501] == 0)
                global.batmusic = caster_load("music/xpart.ogg")
            else
                global.batmusic = caster_load("music/xpart_2.ogg")
            caster_loop(global.batmusic, 0.8, 0.95)
        }
        global.msg[0] = scr_gettext("scr_battlegroup_1314")
        global.monsterinstance[0] = instance_create(266, 100, obj_ripoff_alphys)
        break
    case 90:
        global.monstertype[0] = 62
        global.monstertype[1] = 63
        if (!caster_is_playing(global.batmusic))
        {
            if (global.flag[501] == 0)
                global.batmusic = caster_load("music/xpart.ogg")
            else
                global.batmusic = caster_load("music/xpart_2.ogg")
            caster_loop(global.batmusic, 0.8, 0.95)
        }
        global.msg[0] = scr_gettext("scr_battlegroup_1334")
        global.monsterinstance[0] = instance_create(26, 94, obj_ripoff_toriel)
        global.monsterinstance[1] = instance_create(356, 62, obj_ripoff_asgore)
        break
    case 91:
        global.monstertype[0] = 64
        global.batmusic = caster_load("music/prebattle1.ogg")
        caster_loop(global.batmusic, 1, 0.25)
        global.msg[0] = scr_gettext("scr_battlegroup_1395")
        global.monsterinstance[0] = instance_create(260, 110, obj_mkid_battle)
        break
    case 92:
        global.monstertype[0] = 65
        global.batmusic = caster_load("music/x_undyne.ogg")
        caster_loop(global.batmusic, 1, 1)
        global.msg[0] = scr_gettext("scr_battlegroup_1410")
        global.monsterinstance[0] = instance_create(210, 20, obj_undyne_ex)
        break
    case 93:
        global.monstertype[0] = 66
        global.batmusic = caster_load("music/prebattle1.ogg")
        caster_loop(global.batmusic, 0.5, 1)
        global.msg[0] = scr_gettext("scr_battlegroup_1422")
        global.monsterinstance[0] = instance_create(216, 136, obj_gladdummy)
        break
    case 94:
        global.monstertype[0] = 67
        global.batmusic = caster_load("music/mettaton_neo.ogg")
        caster_loop(global.batmusic, 0.7, 1)
        global.msg[0] = scr_gettext("scr_battlegroup_1439")
        global.monsterinstance[0] = instance_create(210, 0, obj_mettaton_neo)
        break
    case 95:
        with (obj_battlebg)
            instance_destroy()
        global.monstertype[0] = 68
        global.batmusic = caster_load("music/zz_megalovania.ogg")
        global.msg[0] = ""
        global.monsterinstance[0] = instance_create(270, 110, obj_sansb)
        instance_create(0, 0, obj_purplegradienter)
        with (obj_purplegradienter)
        {
            visible = false
            sanshack = 1
        }
        instance_create(0, 0, obj_orangeparticlegen)
        with (obj_orangeparticlegen)
            turnoff = 1
        break
    case 100:
        global.monstertype[0] = 52
        global.msg[0] = ""
        global.monster[0] = true
        global.monsterinstance[0] = instance_create(116, 16, obj_asgore_finalintro)
        global.mnfight = -999
        break
    case 101:
        global.monstertype[0] = 52
        global.batmusic = caster_load("music/vsasgore.ogg")
        caster_loop(global.batmusic, 1, 1)
        global.msg[0] = scr_gettext("scr_battlegroup_1484")
        global.monsterinstance[0] = instance_create(208, 8, obj_asgoreb)
        instance_create(0, 0, obj_purplegradienter)
        instance_create(0, 0, obj_orangeparticlegen)
        break
    case 120:
        global.monstertype[0] = 70
        global.monstertype[1] = 71
        global.batmusic = caster_load("music/battle2.ogg")
        caster_loop(global.batmusic, 0.75, 1)
        global.msg[0] = scr_gettext("scr_battlegroup_1501")
        global.monsterinstance[0] = instance_create(106, 110, obj_finalfroggit)
        global.monsterinstance[1] = instance_create(416, 110, obj_astigmatism)
        break
    case 121:
        global.monstertype[0] = 70
        global.monstertype[1] = 73
        global.batmusic = caster_load("music/battle2.ogg")
        caster_loop(global.batmusic, 0.75, 1)
        global.msg[0] = scr_gettext("scr_battlegroup_1517")
        global.monsterinstance[0] = instance_create(106, 110, obj_finalfroggit)
        global.monsterinstance[1] = instance_create(426, 130, obj_migospel)
        break
    case 122:
        global.monstertype[0] = 75
        global.batmusic = caster_load("music/battle2.ogg")
        caster_loop(global.batmusic, 0.75, 1)
        global.msg[0] = scr_gettext("scr_battlegroup_1532")
        global.monsterinstance[0] = instance_create(111, 120, obj_parsnik)
        break
    case 123:
        global.monstertype[0] = 74
        global.monstertype[1] = 74
        global.batmusic = caster_load("music/battle2.ogg")
        caster_loop(global.batmusic, 0.75, 1)
        global.msg[0] = scr_gettext("scr_battlegroup_1547")
        global.monsterinstance[0] = instance_create(118, 127, obj_moldessa)
        global.monsterinstance[1] = instance_create(318, 127, obj_moldessa)
        break
    case 124:
        global.monstertype[0] = 74
        global.monstertype[1] = 74
        global.monstertype[2] = 74
        global.batmusic = caster_load("music/battle2.ogg")
        caster_loop(global.batmusic, 0.75, 1)
        global.msg[0] = scr_gettext("scr_battlegroup_1563")
        global.monsterinstance[0] = instance_create(18, 127, obj_moldessa)
        global.monsterinstance[1] = instance_create(218, 127, obj_moldessa)
        global.monsterinstance[2] = instance_create(418, 127, obj_moldessa)
        break
    case 125:
        global.monstertype[0] = 70
        global.monstertype[1] = 72
        global.batmusic = caster_load("music/battle2.ogg")
        caster_loop(global.batmusic, 0.75, 1)
        global.msg[0] = scr_gettext("scr_battlegroup_1580")
        global.monsterinstance[0] = instance_create(106, 110, obj_finalfroggit)
        global.monsterinstance[1] = instance_create(416, 120, obj_whimsalot)
        break
    case 126:
        global.monstertype[0] = 70
        global.batmusic = caster_load("music/battle2.ogg")
        caster_loop(global.batmusic, 0.75, 1)
        global.msg[0] = scr_gettext("scr_battlegroup_1595")
        global.monsterinstance[0] = instance_create(208, 110, obj_finalfroggit)
        break
    case 127:
        global.monstertype[0] = 72
        global.monstertype[1] = 75
        global.batmusic = caster_load("music/battle2.ogg")
        caster_loop(global.batmusic, 0.75, 1)
        global.msg[0] = scr_gettext("scr_battlegroup_1609")
        global.monsterinstance[0] = instance_create(110, 120, obj_whimsalot)
        global.monsterinstance[1] = instance_create(316, 120, obj_parsnik)
        break
    case 128:
        global.monstertype[0] = 74
        global.monstertype[1] = 73
        global.batmusic = caster_load("music/battle2.ogg")
        caster_loop(global.batmusic, 0.75, 1)
        global.msg[0] = scr_gettext("scr_battlegroup_1624")
        global.monsterinstance[0] = instance_create(116, 127, obj_moldessa)
        global.monsterinstance[1] = instance_create(324, 130, obj_migospel)
        break
    case 129:
        global.monstertype[0] = 75
        global.monstertype[1] = 73
        global.batmusic = caster_load("music/battle2.ogg")
        caster_loop(global.batmusic, 0.75, 1)
        global.msg[0] = scr_gettext("scr_battlegroup_1639")
        global.monsterinstance[0] = instance_create(111, 120, obj_parsnik)
        global.monsterinstance[1] = instance_create(324, 130, obj_migospel)
        break
    case 130:
        global.monstertype[0] = 75
        global.monstertype[1] = 75
        global.batmusic = caster_load("music/battle2.ogg")
        caster_loop(global.batmusic, 0.75, 1)
        global.msg[0] = scr_gettext("scr_battlegroup_1654")
        global.monsterinstance[0] = instance_create(111, 120, obj_parsnik)
        global.monsterinstance[1] = instance_create(318, 120, obj_parsnik)
        break
    case 131:
        global.monstertype[0] = 75
        global.monstertype[1] = 71
        global.batmusic = caster_load("music/battle2.ogg")
        caster_loop(global.batmusic, 0.75, 1)
        global.msg[0] = scr_gettext("scr_battlegroup_1669")
        global.monsterinstance[0] = instance_create(111, 120, obj_parsnik)
        global.monsterinstance[1] = instance_create(314, 110, obj_astigmatism)
        break
    case 132:
        global.monstertype[0] = 71
        global.monstertype[1] = 71
        global.batmusic = caster_load("music/battle2.ogg")
        caster_loop(global.batmusic, 0.75, 1)
        global.msg[0] = scr_gettext("scr_battlegroup_1684")
        global.monsterinstance[0] = instance_create(108, 110, obj_astigmatism)
        global.monsterinstance[1] = instance_create(312, 110, obj_astigmatism)
        break
    case 133:
        global.monstertype[0] = 71
        global.monstertype[1] = 73
        global.monstertype[2] = 74
        global.batmusic = caster_load("music/battle2.ogg")
        caster_loop(global.batmusic, 0.75, 1)
        global.msg[0] = scr_gettext("scr_battlegroup_1699")
        global.monsterinstance[0] = instance_create(8, 110, obj_astigmatism)
        global.monsterinstance[1] = instance_create(213, 130, obj_migospel)
        global.monsterinstance[2] = instance_create(418, 127, obj_moldessa)
        break
    case 134:
        global.monstertype[0] = 71
        global.monstertype[1] = 75
        global.monstertype[2] = 74
        global.batmusic = caster_load("music/battle2.ogg")
        caster_loop(global.batmusic, 0.75, 1)
        global.msg[0] = scr_gettext("scr_battlegroup_1716")
        global.monsterinstance[0] = instance_create(18, 120, obj_whimsalot)
        global.monsterinstance[1] = instance_create(218, 120, obj_parsnik)
        global.monsterinstance[2] = instance_create(418, 127, obj_moldessa)
        break
    case 135:
        global.monstertype[0] = 76
        caster_loop(global.batmusic, 0.5, 1)
        global.msg[0] = scr_gettext("scr_battlegroup_1733")
        global.monsterinstance[0] = instance_create(188, 16, obj_glydeb)
        break
    case 140:
        global.monstertype[0] = 80
        global.batmusic = mus_wrongworld
        caster_loop(global.batmusic, 0.8, 1)
        global.msg[0] = scr_gettext("scr_battlegroup_1747")
        global.monsterinstance[0] = instance_create(216, 78, obj_sosorry)
        break
    case 141:
        global.monstertype[0] = 77
        global.msg[0] = scr_gettext("scr_battlegroup_mewmew_1")
        if (global.tempvalue[14] == 1)
            scr_gettext("scr_battlegroup_mewmew_2")
        global.monsterinstance[0] = instance_create(216, 40, obj_mewmew_boss)
        break
    case 142:
        global.monstertype[0] = 78
        global.batmusic = mus_entity15_battle
        caster_loop(global.batmusic, 0.8, 1)
        global.msg[0] = scr_gettext("scr_battlegroup_733")
        global.monsterinstance[0] = instance_create(106, 125, obj_mrcowblird)
        break
    case 255:
        global.monstertype[0] = 99
        caster_free(-3)
        global.batmusic = caster_load("music/xpart.ogg")
        caster_loop(global.batmusic, 0.8, 0.95)
        global.msg[0] = scr_gettext("scr_battlegroup_1762")
        global.monsterinstance[0] = instance_create(258, 8, obj_asrielb)
        break
    case 256:
        global.monstertype[0] = 100
        global.flag[15] = 1
        global.flag[500] = 1
        if (!caster_is_playing(global.batmusic))
        {
            if (global.flag[501] == 0)
                global.batmusic = caster_load("music/a2.ogg")
            else
                global.batmusic = caster_load("music/xpart_2.ogg")
            caster_loop(global.batmusic, 0.8, 0.95)
        }
        global.msg[0] = scr_gettext("scr_battlegroup_1787")
        if (global.flag[501] == 2)
            global.msg[0] = scr_gettext("scr_battlegroup_1789")
        if (global.flag[501] == 3)
            global.msg[0] = scr_gettext("scr_battlegroup_1791")
        global.border = 0
        SCR_BORDERSETUP()
        global.monsterinstance[0] = instance_create(320, 48, obj_asrielfinal)
        break
}

