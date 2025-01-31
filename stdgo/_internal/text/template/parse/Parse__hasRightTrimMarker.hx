package stdgo._internal.text.template.parse;
import stdgo._internal.strings.Strings;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strconv.Strconv;
function _hasRightTrimMarker(_s:stdgo.GoString):Bool {
        return ((((_s.length) >= (2 : stdgo.GoInt) : Bool) && stdgo._internal.text.template.parse.Parse__isSpace._isSpace((_s[(0 : stdgo.GoInt)] : stdgo.GoInt32)) : Bool) && (_s[(1 : stdgo.GoInt)] == (45 : stdgo.GoUInt8)) : Bool);
    }
