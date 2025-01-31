package stdgo._internal.text.template.parse;
import stdgo._internal.strings.Strings;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strconv.Strconv;
function _leftTrimLength(_s:stdgo.GoString):stdgo._internal.text.template.parse.Parse_Pos.Pos {
        return (((_s.length) - (stdgo._internal.strings.Strings_trimLeft.trimLeft(_s?.__copy__(), (" \t\r\n" : stdgo.GoString)).length) : stdgo.GoInt) : stdgo._internal.text.template.parse.Parse_Pos.Pos);
    }
