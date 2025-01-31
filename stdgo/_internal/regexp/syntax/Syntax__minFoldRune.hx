package stdgo._internal.regexp.syntax;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.strings.Strings;
import stdgo._internal.sort.Sort;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strconv.Strconv;
function _minFoldRune(_r:stdgo.GoInt32):stdgo.GoInt32 {
        if (((_r < (65 : stdgo.GoInt32) : Bool) || (_r > (125251 : stdgo.GoInt32) : Bool) : Bool)) {
            return _r;
        };
        var _min = (_r : stdgo.GoInt32);
        var _r0 = (_r : stdgo.GoInt32);
        {
            _r = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r);
            while (_r != (_r0)) {
                if ((_min > _r : Bool)) {
                    _min = _r;
                };
                _r = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r);
            };
        };
        return _min;
    }
