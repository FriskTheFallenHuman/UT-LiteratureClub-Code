_speaker = argument0
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
if (_speaker == "silent")
    global.typer = 10
if (_speaker == "balloon" || _speaker == "enemy")
    global.typer = 2
if (_speaker == "sans" || _speaker == "san")
{
    global.typer = 17
    global.facechoice = 3
}
if (_speaker == "sans_toriel" || _speaker == "santor")
{
    global.typer = 48
    global.facechoice = 3
}
if (_speaker == "undyne" || _speaker == "und")
{
    global.typer = 37
    global.facechoice = 5
}
if (_speaker == "toriel" || _speaker == "tor")
{
    global.facechoice = 1
    global.typer = 4
}
if (_speaker == "asgore" || _speaker == "asg")
{
    global.facechoice = 7
    global.typer = 60
}
if (_speaker == "alphys" || _speaker == "alp")
{
    global.facechoice = 6
    global.typer = 47
}
if (_speaker == "papyrus" || _speaker == "pap")
{
    global.facechoice = 4
    global.typer = 18
}
if (_speaker == "flowey" || _speaker == "flo")
{
    global.facechoice = 2
    global.typer = 9
}
if (_speaker == "flowey_mad" || _speaker == "floweymad" || _speaker == "flom")
{
    global.facechoice = 2
    global.typer = 16
}
if (_speaker == "asriel" || _speaker == "asr")
{
    global.facechoice = 9
    global.typer = 76
}
if (_speaker == "mettaton" || _speaker == "mett" || _speaker == "mtt")
{
    global.facechoice = 8
    global.typer = 27
}
if (_speaker == "monika")
    global.typer = 122
return;
