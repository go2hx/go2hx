package stdgo._internal.text.template.parse;
function _rightTrimLength(_s:stdgo.GoString):stdgo._internal.text.template.parse.Parse_Pos.Pos {
        return (((_s.length) - (stdgo._internal.strings.Strings_trimRight.trimRight(_s?.__copy__(), (" \t\r\n" : stdgo.GoString)).length) : stdgo.GoInt) : stdgo._internal.text.template.parse.Parse_Pos.Pos);
    }
