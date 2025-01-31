package stdgo._internal.regexp.syntax;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.strings.Strings;
import stdgo._internal.sort.Sort;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strconv.Strconv;
function _isalnum(_c:stdgo.GoInt32):Bool {
        return (((((48 : stdgo.GoInt32) <= _c : Bool) && (_c <= (57 : stdgo.GoInt32) : Bool) : Bool) || (((65 : stdgo.GoInt32) <= _c : Bool) && (_c <= (90 : stdgo.GoInt32) : Bool) : Bool) : Bool) || (((97 : stdgo.GoInt32) <= _c : Bool) && (_c <= (122 : stdgo.GoInt32) : Bool) : Bool) : Bool);
    }
