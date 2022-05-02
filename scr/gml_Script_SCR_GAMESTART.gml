cursor_sprite = spr_cursor
randomize()
audio_channel_num(128)
global.awfultest = 0
scr_check_debugmode()
global.hp = 20
global.maxhp = 20
global.en = 20
global.maxen = 20
global.at = 10
global.df = 10
global.adef = 0
global.sp = 4
global.asp = 4
global.hb = 5
global.gt = 5
global.km = 0
global.ph = 0
global.gold = 0
global.xp = 0
global.lv = 1
global.area = 0
global.charname = "CHARA"
global.runspeed = 2
global.allowrun = 1
global.broken = 0
global.charsunlocked = 0
global.charswappedname = "Monika"
global.charsoulcolor = "Green"
global.charvessel = "obj_monika"
global.charvesselreflection = "obj_monika_actor"
global.charvesselvoid = "obj_monika_fake"
for (i = 0; i < 3; i += 1)
    global.cinstance[i] = -4
var swapped = 0
if (ossafe_file_exists("data\\monika.ini") || ossafe_file_exists("data\\sayori.ini") || ossafe_file_exists("data\\yuri.ini") || ossafe_file_exists("data\\natsuki.ini"))
    swapped = 1
global.charswap = swapped
var firstrun = 0
if (!ossafe_file_exists("firstrun"))
    firstrun = 1
global.firstrun = firstrun
for (i = 0; i < 8; i += 1)
{
    global.item[i] = 0
    global.spell[i] = 1
    global.bulletvariable[i] = 0
    global.menuno = -1
    global.menucoord[i] = 0
    global.bmenuno = 0
    global.bmenucoord[i] = 0
}
for (i = 0; i < 24; i += 1)
    global.areapop[i] = 0
for (i = 0; i < 99; i += 1)
    global.msg[i] = "%%%"
for (i = 0; i < 512; i += 1)
    global.flag[i] = 0
global.flag[300] = 14
global.flag[301] = 0
global.flag[302] = 0
global.flag[303] = 0
global.flag[304] = 0
global.flag[512] = 0
for (i = 0; i < 4; i += 1)
    global.idealborder[i] = 0
global.plot = 0
global.currentroom = PLACE_INITIALIZE
for (i = 0; i < 3; i += 1)
{
    global.monstername[i] = "Error"
    global.monsterhp[i] = 50
    global.monstermaxhp[i] = 50
    global.monsterdef[i] = 0
    global.xpreward[i] = 0
    global.goldreward[i] = 0
    global.itemrewardid[i] = 0
    global.itemrewardchance[i] = 0
    global.monster[i] = false
    global.attacker[i] = 0
    global.mnpwr[i] = 0
    global.bulletpwr[i] = 0
    global.hurtanim[i] = 0
}
global.xpreward[3] = 0
global.goldreward[3] = 0
global.battlegroup = 3
global.turntimer = 0
global.talked = false
global.inv = 20
global.invc = 0
global.turnmax = 0
global.myfight = 0
global.mnfight = 0
global.incombat = 0
global.firingrate = 14
global.border = 0
global.turn = 0
global.actfirst = 0
global.extraintro = 0
global.mytarget = 0
global.confirm = "ord('z')"
global.damagetimer = 90
global.attacktype = 1
global.wstrength = 0
global.pwr = 0
global.attackspeed = 11
global.attackspeedr = 2
global.wstrength = 0
global.kills = 0
global.specialbattle = 0
global.myview = 0
global.hshake = 0
global.vshake = 0
global.shakespeed = 0
global.encounter = 0
global.facing = 0
global.phasing = 0
global.choices = 0
global.interact = 0
global.viewpan = 0
global.inbattle = 0
global.facechoice = 0
global.faceemotion = 0
global.seriousbattle = 0
global.mercy = 0
for (i = 0; i < 9; i += 1)
    global.item[i] = 0
global.weapon = 3
global.armor = 4
for (i = 0; i < 9; i += 1)
    global.phone[i] = 0
for (i = 0; i < 4; i += 1)
    global.menuchoice[i] = 0
global.menuchoice[0] = 1
global.menuchoice[1] = 1
global.choice = -1
global.lastsavedtime = 0
global.lastsavedkills = 0
global.lastsavedlv = 0
global.filechoice = 0
global.dontfade = 0
global.entrance = 0
global.currentsong = -4
global.currentsong2 = -4
global.batmusic = -4
global.typer = 5
global.msc = 0
global.hardmode = 0
global.demo = 1
global.msgno = 0
global.version_undertale = "1.11"
if (os_type == os_ps4)
    global.version_undertale += "-4"
if (os_type == os_psvita)
    global.version_undertale += "-V"
global.version = "1.0.0"
if global.demo
    global.version += "-DEMO"
if global.debug
    global.version += "-DEV"
global.to_introstory = 0
