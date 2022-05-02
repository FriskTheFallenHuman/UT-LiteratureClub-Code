ossafe_ini_close()
ossafe_ini_open("undertale.ini")
truereset = ini_read_real(("EndF" + string(global.filechoice)), "EndF", 0)
ossafe_ini_close()
ascii_rows = 8
ascii_cols = 7
ascii_x[(ascii_cols - 1)] = 0
ascii_y[(ascii_rows - 1)] = 0
ascii_charmap[(ascii_rows - 1), (ascii_cols - 1)] = 0
for (var i = 0; i < ascii_cols; i++)
    ascii_x[i] = (60 + (i * 32))
for (i = 0; i < (ascii_rows / 2); i++)
{
    ascii_y[i] = (75 + (i * 14))
    ascii_y[(i + (ascii_rows / 2))] = (135 + (i * 14))
    for (var j = 0; j < 7; j++)
    {
        var index = ((i * 7) + j)
        if (index < 26)
        {
            ascii_charmap[i, j] = chr((65 + index))
            ascii_charmap[(i + (ascii_rows / 2)), j] = chr((97 + index))
        }
        else
        {
            ascii_charmap[i, j] = ""
            ascii_charmap[(i + (ascii_rows / 2)), j] = ""
        }
    }
}
hiragana_chstr[0] = "あいうえおまみむめもぁぃぅぇぉ"
hiragana_chstr[1] = "かきくけこや　ゆ　よがぎぐげご"
hiragana_chstr[2] = "さしすせそらりるれろざじずぜぞ"
hiragana_chstr[3] = "たちつてとわをんー　だぢづでど"
hiragana_chstr[4] = "なにぬねのゃゅょっゎばびぶべぼ"
hiragana_chstr[5] = "はひふへほ　　　　　ぱぴぷぺぽ"
katakana_chstr[0] = "アイウエオマミムメモァィゥェォ"
katakana_chstr[1] = "カキクケコヤ　ユ　ヨガギグゲゴ"
katakana_chstr[2] = "サシスセソラリルレロザジズゼゾ"
katakana_chstr[3] = "タチツテトワヲンー　ダヂヅデド"
katakana_chstr[4] = "ナニヌネノャュョッヮバビブベボ"
katakana_chstr[5] = "ハヒフヘホヵヶヴ　　パピプペポ"
hiragana_rows = 6
hiragana_cols = 15
hiragana_x[(hiragana_cols - 1)] = 0
hiragana_y[(hiragana_rows - 1)] = 0
hiragana_charmap[(hiragana_rows - 1), (hiragana_cols - 1)] = 0
for (i = 0; i < hiragana_cols; i++)
    hiragana_x[i] = ((32 + (i * 16)) + (floor((i / 5)) * 8))
for (i = 0; i < hiragana_rows; i++)
{
    hiragana_y[i] = (68 + (i * 16))
    for (j = 0; j < hiragana_cols; j++)
    {
        var ch = string_char_at(hiragana_chstr[i], (j + 1))
        if (ch == "　")
            ch = ""
        hiragana_charmap[i, j] = ch
    }
}
katakana_rows = hiragana_rows
katakana_cols = hiragana_cols
katakana_x[(katakana_cols - 1)] = 0
katakana_y[(katakana_rows - 1)] = 0
katakana_charmap[(katakana_rows - 1), (katakana_cols - 1)] = 0
for (i = 0; i < katakana_cols; i++)
    katakana_x[i] = hiragana_x[i]
for (i = 0; i < katakana_rows; i++)
{
    katakana_y[i] = hiragana_y[i]
    for (j = 0; j < katakana_cols; j++)
    {
        ch = string_char_at(katakana_chstr[i], (j + 1))
        if (ch == "　")
            ch = ""
        katakana_charmap[i, j] = ch
    }
}
ja_ascii_rows = 6
ja_ascii_cols = 9
ja_ascii_x[(ja_ascii_cols - 1)] = 0
ja_ascii_y[(ja_ascii_rows - 1)] = 0
ja_ascii_charmap[(ja_ascii_rows - 1), (ja_ascii_cols - 1)] = 0
for (i = 0; i < ja_ascii_cols; i++)
    ja_ascii_x[i] = (60 + (i * 23))
for (i = 0; i < ja_ascii_rows; i++)
{
    ja_ascii_y[i] = (68 + (i * 16))
    if (i >= 3)
        var ch_base = 97
    else
        ch_base = 65
    for (j = 0; j < ja_ascii_cols; j++)
    {
        ch = ((ch_base + ((i % 3) * 9)) + j)
        if ((ch - ch_base) < 26)
            ja_ascii_charmap[i, j] = chr(ch)
        else
            ja_ascii_charmap[i, j] = ""
    }
}
if (global.language == "ja")
{
    selected_charmap = 1
    rows = hiragana_rows
    cols = hiragana_cols
    xmap = hiragana_x
    ymap = hiragana_y
    charmap = hiragana_charmap
}
else
{
    selected_charmap = 0
    rows = ascii_rows
    cols = ascii_cols
    xmap = ascii_x
    ymap = ascii_y
    charmap = ascii_charmap
}
selected_row = 0
selected_col = 0
selected3 = 0
if (global.language == "ja")
{
    title_y = 20
    name_y = 40
    charset_y = 172
    menu_y = 206
    name_x = 118
    charset_x0 = 32
    charset_x1 = 118
    charset_x2 = 202
    menu_x0 = 55
    menu_x1 = 125
    menu_x2 = 205
}
else
{
    title_y = 25
    name_y = 50
    charset_y = 999
    menu_y = 205
    name_x = 135
    menu_x0 = 60
    menu_x1 = 128
    menu_x2 = 230
    continue_x = 85
}
naming = 1
charname = ""
name = ""
test = 0
hasname = 0
selected2 = 0
namelistok = 0
namelisten = array_create(0)
namelistjp = array_create(0)
namelistenm = array_create(0)
namelistjpm = array_create(0)
namelistallow = array_create(0)
namelistfile = (working_directory + "data\\names.txt")
if file_exists(namelistfile)
{
    var file = file_text_open_read(namelistfile)
    var curline = file_text_read_string(file)
    file_text_readln(file)
    var progress = 0
    while (!file_text_eof(file))
    {
        namelisten[progress] = file_text_read_string(file)
        file_text_readln(file)
        namelistjp[progress] = file_text_read_string(file)
        file_text_readln(file)
        namelistenm[progress] = file_text_read_string(file)
        file_text_readln(file)
        namelistjpm[progress] = file_text_read_string(file)
        file_text_readln(file)
        namelistallow[progress] = file_text_read_real(file)
        if (namelisten[progress] == "gaster")
            namelistallow[progress] = -666
        file_text_readln(file)
        progress++
    }
    file_text_close(file)
    namelistok = 1
}
if ((!namelistok) && global.debug)
    show_error(("Could not read " + namelistfile), 0)
