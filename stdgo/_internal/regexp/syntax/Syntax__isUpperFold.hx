package stdgo._internal.regexp.syntax;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.strings.Strings;
import stdgo._internal.sort.Sort;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strconv.Strconv;
function _isUpperFold(_r:stdgo.GoInt32):Bool {
        if (stdgo._internal.unicode.Unicode_isUpper.isUpper(_r)) {
            return true;
        };
        var _c = (stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r) : stdgo.GoInt32);
        while (_c != (_r)) {
            if (stdgo._internal.unicode.Unicode_isUpper.isUpper(_c)) {
                return true;
            };
            _c = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_c);
        };
        return false;
    }
