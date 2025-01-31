package stdgo._internal.text.template.parse;
import stdgo._internal.strings.Strings;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strconv.Strconv;
function _isSpace(_r:stdgo.GoInt32):Bool {
        return (((_r == ((32 : stdgo.GoInt32)) || _r == ((9 : stdgo.GoInt32)) : Bool) || _r == ((13 : stdgo.GoInt32)) : Bool) || (_r == (10 : stdgo.GoInt32)) : Bool);
    }
