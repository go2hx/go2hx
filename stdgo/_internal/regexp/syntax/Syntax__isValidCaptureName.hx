package stdgo._internal.regexp.syntax;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.strings.Strings;
import stdgo._internal.sort.Sort;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strconv.Strconv;
function _isValidCaptureName(_name:stdgo.GoString):Bool {
        if (_name == (stdgo.Go.str())) {
            return false;
        };
        for (__1 => _c in _name) {
            if (((_c != (95 : stdgo.GoInt32)) && !stdgo._internal.regexp.syntax.Syntax__isalnum._isalnum(_c) : Bool)) {
                return false;
            };
        };
        return true;
    }
