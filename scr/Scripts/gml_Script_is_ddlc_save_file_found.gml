var firstrun_x64 = -4
var found = 0
if (os_type == os_windows)
{
    var file_persistent = file_exists_ue((environment_get_variable_ue("APPDATA") + "/RenPy/DDLC-1454445547/persistent"))
    var firstrun = file_exists_ue((environment_get_variable_ue("PROGRAMFILES") + "/Steam/steamapps/common/Doki Doki Literature Club/game/firstrun"))
    firstrun_x64 = file_exists_ue((environment_get_variable_ue("PROGRAMFILES(X86)") + "/Steam/steamapps/common/Doki Doki Literature Club/game/firstrun"))
    if ((file_persistent | firstrun_x64) && firstrun)
        found = 1
}
if (os_type == os_linux || os_type == os_macosx)
{
    file_persistent = file_exists_ue((environment_get_variable_ue("HOME") + "/.renpy/DDLC-1454445547/persistent"))
    firstrun = file_exists_ue((environment_get_variable_ue("HOME") + "~/.steam/steam/SteamApps/common/Doki Doki Literature Club/game/firstrun"))
    if (os_type == os_macosx)
    {
        file_persistent = file_exists_ue((environment_get_variable_ue("HOME") + "/Library/RenPy/DDLC-1454445547/persistent"))
        firstrun = file_exists_ue((environment_get_variable_ue("HOME") + "~/Library/Application Support/Steam/steamapps/common/Doki Doki Literature Club/game/firstrun"))
    }
    if (file_persistent && firstrun)
        found = 1
}
return found;
