if variable_global_exists("text_data_en")
    ds_map_destroy(global.text_data_en)
global.text_data_en = scr_84_load_map_json(((program_directory + "data\\lang\\") + "lang_en.json"))
