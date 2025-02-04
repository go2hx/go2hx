package stdgo._internal.text.template.parse;
function _rightTrimLength(_s:stdgo.GoString):stdgo._internal.text.template.parse.Parse_pos.Pos {
        return (((_s.length) - (stdgo._internal.strings.Strings_trimright.trimRight(_s?.__copy__(), (" \t\r\n" : stdgo.GoString)).length) : stdgo.GoInt) : stdgo._internal.text.template.parse.Parse_pos.Pos);
    }
