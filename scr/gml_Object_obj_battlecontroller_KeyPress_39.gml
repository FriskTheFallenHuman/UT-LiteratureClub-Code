if (global.mnfight == 0)
{
    if (global.bmenuno == 0)
    {
        var oldcoord = global.bmenucoord[0]
        global.bmenucoord[0] += 1
        if (global.bmenucoord[0] > 3)
            global.bmenucoord[0] = 0
        if (global.mercy == 2 && global.bmenucoord[0] == 3)
            global.bmenucoord[0] = 0
        if (global.mercy == 3)
            global.bmenucoord[0] = 1
        if (global.bmenucoord[0] != oldcoord)
            snd_play(snd_squeak)
    }
    if (global.bmenuno == 10)
    {
        oldcoord = global.bmenucoord[2]
        if (global.bmenucoord[2] <= 2)
            global.bmenucoord[2] += 3
        else
            global.bmenucoord[2] -= 3
        if (global.choices[global.bmenucoord[2]] == 0)
            global.bmenucoord[2] -= 1
        if (global.choices[0] == 1 && global.choices[1] == 0 && global.choices[2] == 0 && global.choices[3] == 0 && global.choices[4] == 0 && global.choices[5] == 0)
            global.bmenucoord[2] = 0
        if (global.bmenucoord[2] != oldcoord)
            snd_play(snd_squeak)
    }
    if (global.bmenuno == 6)
    {
        if (global.bmenucoord[6] == 0)
            global.bmenucoord[6] += 1
        else
            global.bmenucoord[6] -= 1
        snd_play(snd_squeak)
    }
}
