if (argument0 == "music/story.ogg")
    song_index = mus_story
if (argument0 == "music/bad.ogg")
    song_index = mus_bad
if (argument0 == "music/toriel.ogg")
    song_index = mus_toriel
if (argument0 == "music/flowey.ogg")
    song_index = mus_flowey
if (argument0 == "music/prebattle1.ogg")
    song_index = mus_prebattle1
if (argument0 == "music/tension.ogg")
    song_index = mus_tension
if (argument0 == "music/ghostbattle.ogg")
    song_index = mus_ghostbattle
if (argument0 == "music/menu1.ogg")
    song_index = mus_menu1
if (argument0 == "music/menu2.ogg")
    song_index = mus_menu2
if (argument0 == "music/menu3.ogg")
    song_index = mus_menu3
if (argument0 == "music/menu4.ogg")
    song_index = mus_menu4
if (argument0 == "music/house1.ogg")
    song_index = mus_house1
if (argument0 == "music/intronoise.ogg")
    song_index = mus_intronoise
if (argument0 == "music/cymbal.ogg")
    song_index = mus_cymbal
if (argument0 == "music/silence.ogg")
    song_index = mus_silence
if (argument0 == "music/in_my_way.ogg")
    song_index = mus_in_my_way
if (argument0 == "music/piano.ogg")
    song_index = mus_piano
if (argument0 == "music/battle1.ogg")
{
    if (scr_murderlv() >= 1 && global.flag[27] == 0)
        song_index = mus_battle3
    else
        song_index = mus_battle1
}
if (argument0 == "music/boss1.ogg")
    song_index = mus_boss1
if (argument0 == "music/house2.ogg")
    song_index = mus_house2
if (argument0 == "music/ruins.ogg")
{
    if (obj_time_manager.time_evening || obj_time_manager.time_night)
        song_index = mus_ruins2
    else
        song_index = mus_ruins
}
if (argument0 == "music/gameover.ogg")
    song_index = mus_gameover
if (argument0 == "music/papyrus.ogg")
    song_index = mus_papyrus
if (argument0 == "music/snowy.ogg")
{
    if (scr_murderlv() >= 2 && global.flag[27] == 0)
        song_index = mus_snowy_geno
    else
        song_index = mus_snowy
}
if (argument0 == "music/wind.ogg")
    song_index = mus_wind
if (argument0 == "music/snowwalk.ogg")
    song_index = mus_snowwalk
if (argument0 == "music/whoopee.ogg")
    song_index = mus_whoopee
if (argument0 == "music/muscle.ogg")
    song_index = mus_muscle
if (argument0 == "music/rimshot.ogg")
    song_index = mus_rimshot
if (argument0 == "music/tone2.ogg")
    song_index = mus_tone2
if (argument0 == "music/tone3.ogg")
    song_index = mus_tone3
if (argument0 == "music/sticksnap.ogg")
    song_index = mus_sticksnap
if (argument0 == "music/dogmeander.ogg")
    song_index = mus_dogmeander
if (argument0 == "music/waterfall.ogg")
    song_index = mus_waterfall
if (argument0 == "music/waterquiet.ogg")
    song_index = mus_waterquiet
if (argument0 == "music/ambientwater.ogg")
    song_index = mus_ambientwater
if (argument0 == "music/undynefast.ogg")
    song_index = mus_undynefast
if (argument0 == "music/fearsting.ogg")
    song_index = mus_fearsting
if (argument0 == "music/musicbox.ogg")
    song_index = mus_musicbox
if (argument0 == "music/rain.ogg")
    song_index = mus_rain
if (argument0 == "music/rain_deep.ogg")
    song_index = mus_rain_deep
if (argument0 == "music/napstahouse.ogg")
    song_index = mus_napstahouse
if (argument0 == "music/spoopy.ogg")
    song_index = mus_spoopy
if (argument0 == "music/spoopy_wave.ogg")
    song_index = mus_spoopy_wave
if (argument0 == "music/spoopy_holiday.ogg")
    song_index = mus_spoopy_holiday
if (argument0 == "music/dununnn.ogg")
    song_index = mus_dununnn
if (argument0 == "music/predummy.ogg")
    song_index = mus_predummy
if (argument0 == "music/napstachords.ogg")
    song_index = mus_napstachords
if (argument0 == "music/undyneboss.ogg")
    song_index = mus_undyneboss
if (argument0 == "music/endingexcerpt1.ogg")
    song_index = mus_endingexcerpt1
if (argument0 == "music/endingexcerpt2.ogg")
    song_index = mus_endingexcerpt2
if (argument0 == "music/paino/piano1.ogg")
    song_index = mus_piano1
if (argument0 == "music/paino/piano2.ogg")
    song_index = mus_piano2
if (argument0 == "music/paino/piano3.ogg")
    song_index = mus_piano3
if (argument0 == "music/paino/piano4.ogg")
    song_index = mus_piano4
if (argument0 == "music/paino/piano5.ogg")
    song_index = mus_piano5
if (argument0 == "music/paino/piano6.ogg")
    song_index = mus_piano6
if (argument0 == "music/paino/piano7.ogg")
    song_index = mus_piano7
if (argument0 == "music/paino/piano8.ogg")
    song_index = mus_piano8
if (argument0 == "music/paino/piano9.ogg")
    song_index = mus_piano9
if (argument0 == "music/paino/pianoA.ogg")
    song_index = mus_pianoA
if (argument0 == "music/shyren/badnote1.ogg")
    song_index = mus_badnote1
if (argument0 == "music/shyren/badnote2.ogg")
    song_index = mus_badnote2
if (argument0 == "music/shyren/badnote3.ogg")
    song_index = mus_badnote3
if (argument0 == "music/shyren/note1.ogg")
    song_index = mus_note1
if (argument0 == "music/shyren/note2.ogg")
    song_index = mus_note2
if (argument0 == "music/shyren/note3.ogg")
    song_index = mus_note3
if (argument0 == "music/shyren/note4.ogg")
    song_index = mus_note4
if (argument0 == "music/shyren/note5.ogg")
    song_index = mus_note5
if (argument0 == "music/shyren/note6.ogg")
    song_index = mus_note6
if (argument0 == "music/shyren/singF.ogg")
    song_index = mus_singF
if (argument0 == "music/shyren/singG.ogg")
    song_index = mus_singG
if (argument0 == "music/shyren/singvoice.ogg")
    song_index = mus_singvoice
if (argument0 == "music/dialup/dialup_0.ogg")
    song_index = mus_dialup_0
if (argument0 == "music/dialup/dialup_1.ogg")
    song_index = mus_dialup_1
if (argument0 == "music/dialup/dialup_2.ogg")
    song_index = mus_dialup_2
if (argument0 == "music/dialup/dialup_3.ogg")
    song_index = mus_dialup_3
if (argument0 == "music/dialup/dialup_4.ogg")
    song_index = mus_dialup_4
if (argument0 == "music/dialup/dialup_5.ogg")
    song_index = mus_dialup_5
if (argument0 == "music/drum/cuica.ogg")
    song_index = mus_drumcuica
if (argument0 == "music/drum/cuica2.ogg")
    song_index = mus_drumcuica2
if (argument0 == "music/drum/cymbal.ogg")
    song_index = mus_drumcymbal
if (argument0 == "music/drum/kick.ogg")
    song_index = mus_drumkick
if (argument0 == "music/drum/snare.ogg")
    song_index = mus_drumsnare
if (argument0 == "music/oogloop.ogg")
    song_index = mus_oogloop
if (argument0 == "music/anothermedium.ogg")
    song_index = mus_anothermedium
if (argument0 == "music/drone.ogg")
    song_index = mus_drone
if (argument0 == "music/mettsmash.ogg")
    song_index = mus_mettsmash
if (argument0 == "music/mett_cheer.ogg")
    song_index = mus_mett_cheer
if (argument0 == "music/mett_applause.ogg")
    song_index = mus_mett_applause
if (argument0 == "music/alphysfix.ogg")
    song_index = mus_alphysfix
if (argument0 == "music/confession.ogg")
    song_index = mus_confession
if (argument0 == "music/chime.ogg")
    song_index = mus_chime
if (argument0 == "music/rotate.ogg")
    song_index = mus_rotate
if (argument0 == "music/mettmusical1.ogg")
    song_index = mus_mettmusical1
if (argument0 == "music/mettmusical2.ogg")
    song_index = mus_mettmusical2
if (argument0 == "music/mettmusical3.ogg")
    song_index = mus_mettmusical3
if (argument0 == "music/mettmusical4.ogg")
    song_index = mus_mettmusical4
if (argument0 == "music/create.ogg")
    song_index = mus_create
if (argument0 == "music/bgflameA.ogg")
    song_index = mus_bgflameA
if (argument0 == "music/deeploop2.ogg")
    song_index = mus_deeploop2
if (argument0 == "music/elevator.ogg")
    song_index = mus_elevator
if (argument0 == "music/elevator_last.ogg")
    song_index = mus_elevator_last
if (argument0 == "music/operatile.ogg")
    song_index = mus_operatile
if (argument0 == "music/mettafly.ogg")
    song_index = mus_mettafly
if (argument0 == "music/myemeow.ogg")
    song_index = mus_myemeow
if (argument0 == "music/core_ambience.ogg")
    song_index = mus_core_ambience
if (argument0 == "music/ohyes.ogg")
    song_index = mus_ohyes
if (argument0 == "music/mt_yeah.ogg")
    song_index = mus_mt_yeah
if (argument0 == "music/bergentruckung.ogg")
    song_index = mus_bergentruckung
if (argument0 == "music/sfx_cinematiccut.ogg")
    song_index = mus_sfx_cinematiccut
if (argument0 == "music/sfx_swipe.ogg")
    song_index = mus_sfx_swipe
if (argument0 == "music/explosion.ogg")
    song_index = mus_explosion
if (argument0 == "music/sfx_eyeflash.ogg")
    song_index = mus_sfx_eyeflash
if (argument0 == "music/sfx_chainsaw.ogg")
    song_index = mus_sfx_chainsaw
if (argument0 == "music/sfx_gunshot.ogg")
    song_index = mus_sfx_gunshot
if (argument0 == "music/sfx_frypan.ogg")
    song_index = mus_sfx_frypan
if (argument0 == "music/sfx_bookspin.ogg")
    song_index = mus_sfx_bookspin
if (argument0 == "music/toomuch.ogg")
    song_index = mus_toomuch
if (argument0 == "music/sfx_oh.ogg")
    song_index = mus_sfx_oh
if (argument0 == "music/sfx_generate.ogg")
    song_index = mus_sfx_generate
if (argument0 == "music/sfx_yowl.ogg")
    song_index = mus_sfx_yowl
if (argument0 == "music/sfx_ahh.ogg")
    song_index = mus_sfx_ahh
if (argument0 == "music/sfx_voice_triple.ogg")
    song_index = mus_sfx_voice_triple
if (argument0 == "music/sfx_voice_jafe.ogg")
    song_index = mus_sfx_voice_jafe
if (argument0 == "music/sfx_ted.ogg")
    song_index = mus_sfx_ted
if (argument0 == "music/sfx_voice_ted.ogg")
    song_index = mus_sfx_voice_ted
if (argument0 == "music/yourbestfriend_3.ogg")
    song_index = mus_yourbestfriend_3
if (argument0 == "music/repeat_1.ogg")
    song_index = mus_repeat_1
if (argument0 == "music/repeat_2.ogg")
    song_index = mus_repeat_2
if (argument0 == "music/f_intro.ogg")
    song_index = mus_f_intro
if (argument0 == "music/f_laugh.ogg")
    song_index = mus_f_laugh
if (argument0 == "music/f_alarm.ogg")
    song_index = mus_f_alarm
if (argument0 == "music/f_noise.ogg")
    song_index = mus_f_noise
if (argument0 == "music/f_part1.ogg")
    song_index = mus_f_part1
if (argument0 == "music/f_6s_1.ogg")
    song_index = mus_f_6s_1
if (argument0 == "music/f_6s_2.ogg")
    song_index = mus_f_6s_2
if (argument0 == "music/f_6s_3.ogg")
    song_index = mus_f_6s_3
if (argument0 == "music/f_6s_4.ogg")
    song_index = mus_f_6s_4
if (argument0 == "music/f_6s_5.ogg")
    song_index = mus_f_6s_5
if (argument0 == "music/f_6s_6.ogg")
    song_index = mus_f_6s_6
if (argument0 == "music/f_part2.ogg")
    song_index = mus_f_part2
if (argument0 == "music/f_part3.ogg")
    song_index = mus_f_part3
if (argument0 == "music/f_endnote.ogg")
    song_index = mus_f_endnote
if (argument0 == "music/f_finale_1.ogg")
    song_index = mus_f_finale_1
if (argument0 == "music/f_finale_1_l.ogg")
    song_index = mus_f_finale_1_l
if (argument0 == "music/f_finale_2.ogg")
    song_index = mus_f_finale_2
if (argument0 == "music/f_finale_3.ogg")
    song_index = mus_f_finale_3
if (argument0 == "music/f_saved.ogg")
    song_index = mus_f_saved
if (argument0 == "music/f_destroyed.ogg")
    song_index = mus_f_destroyed
if (argument0 == "music/f_destroyed2.ogg")
    song_index = mus_f_destroyed2
if (argument0 == "music/f_destroyed3.ogg")
    song_index = mus_f_destroyed3
if (argument0 == "music/f_glock.ogg")
    song_index = mus_f_glock
if (argument0 == "music/f_orchhit.ogg")
    song_index = mus_f_orchhit
if (argument0 == "music/f_orchhit_l.ogg")
    song_index = mus_f_orchhit_l
if (argument0 == "music/f_wind1.ogg")
    song_index = mus_f_wind1
if (argument0 == "music/f_wind2.ogg")
    song_index = mus_f_wind2
if (argument0 == "music/f_newlaugh.ogg")
    song_index = mus_f_newlaugh
if (argument0 == "music/f_newlaugh_low.ogg")
    song_index = mus_f_newlaugh_low
if (argument0 == "music/sfx_gigapunch.ogg")
    song_index = mus_sfx_gigapunch
if (argument0 == "music/story_stuck.ogg")
    song_index = mus_story_stuck
if (argument0 == "music/z_ending.ogg")
    song_index = mus_z_ending
if (argument0 == "music/amalgam.ogg")
    song_index = mus_amalgam
if (argument0 == "music/creepy_ambience.ogg")
    song_index = mus_creepy_ambience
if (argument0 == "music/hereweare.ogg")
    song_index = mus_hereweare
if (argument0 == "music/fallendown2.ogg")
    song_index = mus_fallendown2
if (argument0 == "music/dontgiveup.ogg")
    song_index = mus_dontgiveup
if (argument0 == "music/xpart_a.ogg")
    song_index = mus_xpart_a
if (argument0 == "music/xpart_b.ogg")
    song_index = mus_xpart_b
if (argument0 == "music/xpart.ogg")
    song_index = mus_xpart
if (argument0 == "music/xpart_2.ogg")
    song_index = mus_xpart_2
if (argument0 == "music/xpart_back.ogg")
    song_index = mus_xpart_back
if (argument0 == "music/reunited.ogg")
    song_index = mus_reunited
if (argument0 == "music/leave.ogg")
    song_index = mus_leave
if (argument0 == "music/a2.ogg")
    song_index = mus_a2
if (argument0 == "music/sfx/sfx_abreak2.ogg")
    song_index = mus_sfx_abreak2
if (argument0 == "music/sfx/sfx_abreak.ogg")
    song_index = mus_sfx_abreak
if (argument0 == "music/sfx/sfx_a_target.ogg")
    song_index = mus_sfx_a_target
if (argument0 == "music/sfx/sfx_a_bullet.ogg")
    song_index = mus_sfx_a_bullet
if (argument0 == "music/sfx/sfx_a_swordappear.ogg")
    song_index = mus_sfx_a_swordappear
if (argument0 == "music/sfx/sfx_a_pullback.ogg")
    song_index = mus_sfx_a_pullback
if (argument0 == "music/sfx/sfx_a_lithit.ogg")
    song_index = mus_sfx_a_lithit
if (argument0 == "music/sfx/sfx_a_gigatalk.ogg")
    song_index = mus_sfx_a_gigatalk
if (argument0 == "music/sfx/sfx_a_grab.ogg")
    song_index = mus_sfx_a_grab
if (argument0 == "music/sfx/sfx_a_swipe.ogg")
    song_index = mus_sfx_a_swipe
if (argument0 == "music/sfx/sfx_sparkles.ogg")
    song_index = mus_sfx_sparkles
if (argument0 == "music/sfx/sfx_rainbowbeam_hold.ogg")
    song_index = mus_sfx_rainbowbeam_hold
if (argument0 == "music/sfx/sfx_hypergoner_charge.ogg")
    song_index = mus_sfx_hypergoner_charge
if (argument0 == "music/sfx/sfx_spellcast.ogg")
    song_index = mus_sfx_spellcast
if (argument0 == "music/sfx/sfx_star.ogg")
    song_index = mus_sfx_star
if (argument0 == "music/sfx/sfx_segapower.ogg")
    song_index = mus_sfx_segapower
if (argument0 == "music/sfx/sfx_segapower2.ogg")
    song_index = mus_sfx_segapower2
if (argument0 == "music/sfx/sfx_rainbowbeam_1.ogg")
    song_index = mus_sfx_rainbowbeam_1
if (argument0 == "music/sfx/sfx_hypergoner_laugh.ogg")
    song_index = mus_sfx_hypergoner_laugh
if (argument0 == "music/end/cast_1.ogg")
    song_index = mus_cast_1
if (argument0 == "music/end/cast_2.ogg")
    song_index = mus_cast_2
if (argument0 == "music/end/cast_3.ogg")
    song_index = mus_cast_3
if (argument0 == "music/end/cast_4.ogg")
    song_index = mus_cast_4
if (argument0 == "music/end/cast_5.ogg")
    song_index = mus_cast_5
if (argument0 == "music/end/cast_6.ogg")
    song_index = mus_cast_6
if (argument0 == "music/end/cast_7.ogg")
    song_index = mus_cast_7
if (argument0 == "music/end/crickets.ogg")
    song_index = mus_crickets
if (argument0 == "music/end/doorclose.ogg")
    song_index = mus_doorclose
if (argument0 == "music/end/dooropen.ogg")
    song_index = mus_dooropen
if (argument0 == "music/end/express_myself.ogg")
    song_index = mus_express_myself
if (argument0 == "music/x_undyne.ogg")
    song_index = mus_x_undyne
if (argument0 == "music/x_undyne_pre.ogg")
    song_index = mus_x_undyne_pre
if (argument0 == "music/mettaton_neo.ogg")
    song_index = mus_mettaton_neo
if (argument0 == "music/zz_megalovania.ogg")
    song_index = mus_zz_megalovania
if (argument0 == "music/zzz_c2.ogg")
    song_index = mus_zzz_c2
if (argument0 == "music/zzz_c.ogg")
    song_index = mus_zzz_c
if (argument0 == "music/dance_of_dog.ogg")
    song_index = mus_dance_of_dog
if (argument0 == "music/sigh_of_dog.ogg")
    song_index = mus_sigh_of_dog
if (argument0 == "music/dogroom.ogg")
    song_index = mus_dogroom
if (argument0 == "music/coolbeat.ogg")
    song_index = mus_coolbeat
if (argument0 == "music/options_winter.ogg")
    song_index = mus_options_winter
if (argument0 == "music/options_fall.ogg")
    song_index = mus_options_fall
if (argument0 == "music/options_summer.ogg")
    song_index = mus_options_summer
if (argument0 == "music/harpnoise.ogg")
    song_index = mus_harpnoise
if (argument0 == "music/battle2.ogg")
    song_index = mus_battle2
if (argument0 == "music/mode.ogg")
    song_index = mus_mode
if (argument0 == "music/dogsong.ogg")
    song_index = mus_dogsong
if (argument0 == "music/papyrusboss.ogg")
    song_index = mus_papyrusboss
if (argument0 == "music/shop.ogg")
    song_index = mus_shop
if (argument0 == "music/town.ogg")
    song_index = mus_town
if (argument0 == "music/computer.ogg")
    song_index = mus_computer
if (argument0 == "music/mystery.ogg")
    song_index = mus_mystery
if (argument0 == "music/snoresymphony.ogg")
    song_index = mus_snoresymphony
if (argument0 == "music/dogappear.ogg")
    song_index = mus_dogappear
if (argument0 == "music/wawa.ogg")
    song_index = mus_wawa
if (argument0 == "music/tv.ogg")
    song_index = mus_tv
if (argument0 == "music/date.ogg")
    song_index = mus_date
if (argument0 == "music/date_tense.ogg")
    song_index = mus_date_tense
if (argument0 == "music/date_fight.ogg")
    song_index = mus_date_fight
if (argument0 == "music/mysteriousroom2.ogg")
    song_index = mus_mysteriousroom2
if (argument0 == "music/undynescary.ogg")
    song_index = mus_undynescary
if (argument0 == "music/undynetheme.ogg")
    song_index = mus_undynetheme
if (argument0 == "music/birdsong.ogg")
    song_index = mus_birdsong
if (argument0 == "music/chokedup.ogg")
    song_index = mus_chokedup
if (argument0 == "music/dummybattle.ogg")
    song_index = mus_dummybattle
if (argument0 == "music/ruinspiano.ogg")
    song_index = mus_ruinspiano
if (argument0 == "music/kingdescription.ogg")
    song_index = mus_kingdescription
if (argument0 == "music/race.ogg")
    song_index = mus_race
if (argument0 == "music/undynetruetheme.ogg")
    song_index = mus_undynetruetheme
if (argument0 == "music/undynepiano.ogg")
    song_index = mus_undynepiano
if (argument0 == "music/lab.ogg")
    song_index = mus_lab
if (argument0 == "music/mtgameshow.ogg")
    song_index = mus_mtgameshow
if (argument0 == "music/mettatonbattle.ogg")
    song_index = mus_mettatonbattle
if (argument0 == "music/hotel.ogg")
    song_index = mus_hotel
if (argument0 == "music/mettsad.ogg")
    song_index = mus_mettsad
if (argument0 == "music/spider.ogg")
    song_index = mus_spider
if (argument0 == "music/sansdate.ogg")
    song_index = mus_sansdate
if (argument0 == "music/star.ogg")
    song_index = mus_star
if (argument0 == "music/first_room.ogg")
    song_index = mus_room_start
if (argument0 == "music/news.ogg")
    song_index = mus_news
if (argument0 == "music/news_battle.ogg")
    song_index = mus_news_battle
if (argument0 == "music/hotel_battle.ogg")
    song_index = mus_hotel_battle
if (argument0 == "music/core.ogg")
{
    if (scr_murderlv() >= 12 && global.flag[27] == 0)
        song_index = mus_core_geno
    else
        song_index = mus_core
}
if (argument0 == "music/mettaton_ex.ogg")
    song_index = mus_mettaton_ex
if (argument0 == "music/mettaton_pretransform.ogg")
    song_index = mus_mettaton_pretransform
if (argument0 == "music/endarea_partb.ogg")
    song_index = mus_endarea_partb
if (argument0 == "music/birdnoise.ogg")
    song_index = mus_birdnoise
if (argument0 == "music/smallshock.ogg")
    song_index = mus_smallshock
if (argument0 == "music/churchbell.ogg")
    song_index = mus_churchbell
if (argument0 == "music/barrier.ogg")
    song_index = mus_barrier
if (argument0 == "music/vsasgore.ogg")
    song_index = mus_vsasgore
if (argument0 == "music/endarea_parta.ogg")
    song_index = mus_endarea_parta
if (argument0 == "music/sfx_woofenstein.ogg")
    song_index = mus_woofenstein
if (argument0 == "music/sfx_disturbing.ogg")
    song_index = mus_disturbing
if (argument0 == "music/sfx_woofenstein_loop.ogg")
    song_index = mus_woofenstein_loop
if (argument0 == "music/temvillage.ogg")
    song_index = mus_temvillage
if (argument0 == "music/temshop.ogg")
    song_index = mus_temshop
if (argument0 == "music/st_drone.ogg")
    song_index = mus_st_drone
if (argument0 == "music/frogger_shop.ogg")
    song_index = mus_frogger_shop
priority = 80
return song_index;
