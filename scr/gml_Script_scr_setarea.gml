global.area = -1
if (global.currentroom >= room_area1 && global.currentroom < room_tundra1)
    global.area = 0
if (global.currentroom >= room_tundra1 && global.currentroom <= room_fogroom)
    global.area = 1
if (global.currentroom >= room_water1 && global.currentroom <= room_water_undynefinal3)
    global.area = 2
if (global.currentroom >= room_fire1 && global.currentroom <= room_fire_elevator_r3)
    global.area = 3
if (global.currentroom >= room_fire_precore && global.currentroom <= room_fire_finalelevator)
    global.area = 3.5
if (global.currentroom > room_fire_labelevator && global.currentroom <= room_truelab_power)
    global.area = 3.75
if (global.currentroom >= room_castle_elevatorout && global.currentroom <= room_castle_trueexit)
    global.area = 4
if (global.currentroom == room_icecave1 || global.currentroom == room_ice_dog || global.currentroom == room_water_fakehallway || (global.currentroom >= room_dogshrine && global.currentroom <= room_dogshrine_mewmew))
    global.area = 2
if (global.currentroom == room_undertale_end || global.currentroom == room_outsideworld || (global.currentroom >= room_end_castroll && global.currentroom <= room_end_theend))
    global.area = 999
if ((global.currentroom >= room_f_start && global.currentroom <= room_f_phrase) || global.currentroom == room_gaster || global.currentroom == room_mysteryman || global.currentroom == room_soundtest || global.currentroom == room_water_redacted || global.currentroom == room_overworld || global.currentroom == room_overworld3)
    global.area = -999
if (global.currentroom == room_school_literature || global.currentroom == room_school_hall)
    global.area = -7
return global.area;
