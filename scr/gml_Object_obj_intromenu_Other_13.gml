FILE[MENUCOORD[5]] = 0
NAME[MENUCOORD[5]] = string(global.charname)
ossafe_file_delete("file9")
ossafe_file_delete(("file" + string(MENUCOORD[5])))
iniwrite = ossafe_ini_open("undertale.ini")
ini_write_string(("General" + string(MENUCOORD[5])), "Name", string(global.charname))
ini_write_real(("General" + string(MENUCOORD[5])), "Love", 0)
ini_write_real(("General" + string(MENUCOORD[5])), "Time", 0)
ini_write_real(("General" + string(MENUCOORD[5])), "Room", 0)
if ini_key_exists(("General" + string(MENUCOORD[5])), "CP")
    ini_key_delete(("General" + string(MENUCOORD[5])), "CP")
if ini_key_exists(("General" + string(MENUCOORD[5])), "CH")
    ini_key_delete(("General" + string(MENUCOORD[5])), "CH")
if ini_key_exists(("General" + string(MENUCOORD[5])), "BW")
    ini_key_delete(("General" + string(MENUCOORD[5])), "BW")
if ini_key_exists(("General" + string(MENUCOORD[5])), "BP")
    ini_key_delete(("General" + string(MENUCOORD[5])), "BP")
if ini_key_exists(("General" + string(MENUCOORD[5])), "BH")
    ini_key_delete(("General" + string(MENUCOORD[5])), "BH")
if ini_key_exists(("General" + string(MENUCOORD[5])), "Tale")
    ini_key_delete(("General" + string(MENUCOORD[5])), "Tale")
if ini_key_exists(("General" + string(MENUCOORD[5])), "Won")
    ini_key_delete(("General" + string(MENUCOORD[5])), "Won")
if ini_key_exists(("General" + string(MENUCOORD[5])), "fun")
    ini_key_delete(("General" + string(MENUCOORD[5])), "fun")
if ini_section_exists(("EndF" + string(MENUCOORD[5])))
    ini_section_delete(("EndF" + string(MENUCOORD[5])))
if ini_section_exists(("reset" + string(MENUCOORD[5])))
    ini_section_delete(("reset" + string(MENUCOORD[5])))
if ini_section_exists(("Mettaton" + string(MENUCOORD[5])))
    ini_section_delete(("Mettaton" + string(MENUCOORD[5])))
if ini_section_exists(("Undyne" + string(MENUCOORD[5])))
    ini_section_delete(("Undyne" + string(MENUCOORD[5])))
if ini_section_exists(("Flowey" + string(MENUCOORD[5])))
    ini_section_delete(("Flowey" + string(MENUCOORD[5])))
if ini_section_exists(("Toriel" + string(MENUCOORD[5])))
    ini_section_delete(("Toriel" + string(MENUCOORD[5])))
if ini_section_exists(("Sans" + string(MENUCOORD[5])))
    ini_section_delete(("Sans" + string(MENUCOORD[5])))
if ini_section_exists(("Papyrus" + string(MENUCOORD[5])))
    ini_section_delete(("Papyrus" + string(MENUCOORD[5])))
if ini_section_exists(("Mett" + string(MENUCOORD[5])))
    ini_section_delete(("Mett" + string(MENUCOORD[5])))
if ini_section_exists(("MTT" + string(MENUCOORD[5])))
    ini_section_delete(("MTT" + string(MENUCOORD[5])))
if ini_section_exists(("FFFFF" + string(MENUCOORD[5])))
    ini_section_delete(("FFFFF" + string(MENUCOORD[5])))
if ini_section_exists(("Alphys" + string(MENUCOORD[5])))
    ini_section_delete(("Alphys" + string(MENUCOORD[5])))
if ini_section_exists(("F7" + string(MENUCOORD[5])))
    ini_section_delete(("F7" + string(MENUCOORD[5])))
ossafe_ini_close()
