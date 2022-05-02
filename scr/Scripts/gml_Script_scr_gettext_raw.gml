var text_id = argument[0]
var ignore_notfound = (variable_instance_exists(id, "__roomname_script") && __roomname_script)
if (argument_count > 1)
    ignore_notfound = argument[1]
var text = ds_map_find_value(global.text_data_en, text_id)
var found = 1
if is_undefined(text)
{
    text = ""
    found = 0
}
if (global.language == "ja")
{
    var loc_text = ds_map_find_value(global.text_data_ja, text_id)
    if (!is_undefined(loc_text))
        text = loc_text
}
if ((!found) && (!ignore_notfound) && scr_debug())
    scr_debug_print(("Could not find string: " + string(text_id)), 0)
return text;
