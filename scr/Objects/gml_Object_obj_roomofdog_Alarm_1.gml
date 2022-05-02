if (!global.broken)
{
    switch heartcoord
    {
        case 1:
            game_restart()
            break
        case 2:
            ossafe_game_end()
            break
        default:
            scr_debug_print("Invaild action.")
            game_restart()
            break
    }

}
else
    ossafe_game_end()
instance_destroy()
