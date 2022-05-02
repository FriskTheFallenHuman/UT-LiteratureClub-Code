var file = argument0
var color = argument1
var vessel = argument2
var actor = argument3
var void = argument4
if (!(ossafe_file_exists(("data\\" + string((string_lower(file) + ".ini"))))))
{
    ossafe_ini_open((("data\\" + string(string_lower(file))) + ".ini"))
    ini_write_string(string(file), "Name", string(file))
    ini_write_string(string(file), "Soul", string(color))
    ini_write_string("Vessel", "Poit", string(vessel))
    ini_write_string("Vessel", "Reflection", string(actor))
    ini_write_string("Vessel", "Void", string(void))
    ossafe_ini_close()
}
