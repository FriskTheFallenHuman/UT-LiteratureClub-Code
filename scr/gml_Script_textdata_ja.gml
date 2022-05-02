if variable_global_exists("text_data_ja")
    ds_map_destroy(global.text_data_ja)
global.text_data_ja = scr_84_load_map_json(((program_directory + "data\\lang\\") + "lang_ja.json"))
