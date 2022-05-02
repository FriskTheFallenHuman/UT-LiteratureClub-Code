var ov = os_version
var os = scr_osname()
if (os_type == os_android)
    os += ("-API" + string(ov))
else if (os_type == os_ios || os_type == os_macosx)
{
    var mj = ((ov - (ov % 16777216)) / 16777216)
    var mi = (((ov - (mj * 16777216)) - (ov % 4096)) / 4096)
    var bn = ((ov - (mj * 16777216)) - (mi * 4096))
    os += ((((("-" + string(mj)) + ".") + string(mi)) + ".") + string(bn))
}
else if (os_type == os_windows)
{
    mj = ((ov - (ov % 65536)) / 65536)
    mi = (ov - (mj * 65536))
    os += ((("-" + string(mj)) + ".") + string(mi))
}
return os;
