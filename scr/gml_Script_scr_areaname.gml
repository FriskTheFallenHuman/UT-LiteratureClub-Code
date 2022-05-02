scr_setarea()
switch global.area
{
    case -1:
        return "Menu/Unused";
    case 0:
        return "Ruins";
    case 1:
        return "Snowdin";
    case 2:
        return "Waterfall";
    case 3:
        return "Hotland";
    case 3.5:
        return "Hotland (CORE)";
    case 3.75:
        return "Hotland (True Lab)";
    case 4:
        return "New Home";
    case 999:
        return "The End";
    case -999:
        return "Void";
    case -7:
        return "Lost Classroom";
    default:
        return "Unknown";
}

