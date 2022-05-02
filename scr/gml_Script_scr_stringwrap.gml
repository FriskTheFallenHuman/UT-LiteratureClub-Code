var _text = argument0
var _width = argument1
var _text_wrapped = ""
var _space = -1
for (var _char_pos = 1; string_length(_text) >= _char_pos; _char_pos += 1)
{
    if (string_width(string_copy(_text, 1, _char_pos)) > _width)
    {
        var _cur_char = string_char_at(_text, _char_pos)
        if (_cur_char == "," || _cur_char == "?" || _cur_char == "!" || _cur_char == ".")
        {
            _text_wrapped += (string_copy(_text, 1, _char_pos) + "\n")
            _text = string_copy(_text, (_char_pos + 1), (string_length(_text) - _char_pos))
            _char_pos = 1
            _space = -1
        }
        else if (_space != -1)
        {
            _text_wrapped += (string_copy(_text, 1, _space) + "\n")
            _text = string_copy(_text, (_space + 1), (string_length(_text) - _space))
            _char_pos = 1
            _space = -1
        }
        else if (_cur_char == string_lettersdigits(_cur_char))
        {
            _text_wrapped += (string_copy(_text, 1, _char_pos) + "-\n")
            _text = string_copy(_text, (_char_pos + 1), (string_length(_text) - _char_pos))
            _char_pos = 1
            _space = -1
        }
    }
    if (string_char_at(_text, _char_pos) == " ")
        _space = _char_pos
    if (string_char_at(_text, _char_pos) == "\n" || string_char_at(_text, _char_pos) == "\r")
        _space = -1
}
if (string_length(_text) > 0)
    _text_wrapped += _text
return _text_wrapped;
