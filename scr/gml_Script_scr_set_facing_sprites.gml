_actorname = argument0
name = argument0
if is_string(_actorname)
{
    if (_actorname == "mainchara")
        name = "mainchara"
    if (_actorname == "monika")
        name = "monika"
    if (_actorname == "toriel")
        name = "toriel"
    switch name
    {
        case "mainchara":
            usprite = spr_maincharau
            rsprite = spr_maincharar
            dsprite = spr_maincharad
            lsprite = spr_maincharal
            break
        case "monika":
            usprite = spr_monikau
            rsprite = spr_monikar
            dsprite = spr_monikad
            lsprite = spr_monikal
            break
        case "toriel":
            dsprite = spr_toriel_d
            usprite = spr_toriel_u
            lsprite = spr_toriel_l
            rsprite = spr_toriel_r
            dtsprite = spr_toriel_dt
            utsprite = spr_toriel_ut
            ltsprite = spr_toriel_lt
            rtsprite = spr_toriel_rt
            break
    }

}
else
{
    usprite = _actorname
    dsprite = _actorname
    rsprite = _actorname
    lsprite = _actorname
    sprite_index = _actorname
}
specialsprite[0] = dsprite
specialsprite[1] = rsprite
specialsprite[2] = usprite
specialsprite[3] = lsprite
dtsprite = dsprite
rtsprite = rsprite
utsprite = usprite
ltsprite = lsprite
return;
