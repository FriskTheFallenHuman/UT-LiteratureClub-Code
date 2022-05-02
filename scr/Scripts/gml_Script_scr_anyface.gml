_speakerC = argument0
_msgno = argument1
_emotion = argument2
if is_real(argument2)
{
    if (argument2 >= 10)
    {
        if (argument2 < 36)
            _emotion = chr((55 + argument2))
        else
            emotion = chr((61 + argument2))
    }
}
_speaker = string_lower(_speakerC)
if (_speaker == "sans" || _speaker == "san")
    scr_sansface(_msgno, _emotion)
if (_speaker == "toriel" || _speaker == "tor")
    scr_torface(_msgno, _emotion)
if (_speaker == "flowey" || _speaker == "flo")
    msgset(_msgno, (("\\TS \\F0 \\E" + string(_emotion)) + " \\F2 \\Tf %"))
if (_speaker == "asgore" || _speaker == "asg")
    scr_asgface(_msgno, _emotion)
if (_speaker == "none" || _speaker == "x" || _speaker == "no name" || _speaker == "no_name")
    scr_noface(_msgno)
if (_speaker == "papyrus" || _speaker == "pap")
    scr_papface(_msgno, _emotion)
if (_speaker == "undyne" || _speaker == "und")
    scr_undface(_msgno, _emotion)
if (_speaker == "alphys" || _speaker == "alp")
    scr_alface(_msgno, _emotion)
if (_speaker == "mettaton" || _speaker == "mett" || _speaker == "mtt")
    msgset(_msgno, (("\\TS \\F0 \\E" + string(_emotion)) + " \\F8 \\TM %"))
if (_speaker == "asriel" || _speaker == "asr")
    msgset(_msgno, (("\\TS \\F0 \\E" + string(_emotion)) + " \\F9 \\TR %"))
return;
