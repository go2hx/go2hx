package stdgo._internal.regexp.syntax;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.strings.Strings;
import stdgo._internal.sort.Sort;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strconv.Strconv;
function _appendFoldedRange(_r:stdgo.Slice<stdgo.GoInt32>, _lo:stdgo.GoInt32, _hi:stdgo.GoInt32):stdgo.Slice<stdgo.GoInt32> {
        if (((_lo <= (65 : stdgo.GoInt32) : Bool) && (_hi >= (125251 : stdgo.GoInt32) : Bool) : Bool)) {
            return stdgo._internal.regexp.syntax.Syntax__appendRange._appendRange(_r, _lo, _hi);
        };
        if (((_hi < (65 : stdgo.GoInt32) : Bool) || (_lo > (125251 : stdgo.GoInt32) : Bool) : Bool)) {
            return stdgo._internal.regexp.syntax.Syntax__appendRange._appendRange(_r, _lo, _hi);
        };
        if ((_lo < (65 : stdgo.GoInt32) : Bool)) {
            _r = stdgo._internal.regexp.syntax.Syntax__appendRange._appendRange(_r, _lo, (64 : stdgo.GoInt32));
            _lo = (65 : stdgo.GoInt32);
        };
        if ((_hi > (125251 : stdgo.GoInt32) : Bool)) {
            _r = stdgo._internal.regexp.syntax.Syntax__appendRange._appendRange(_r, (125252 : stdgo.GoInt32), _hi);
            _hi = (125251 : stdgo.GoInt32);
        };
        {
            var _c = (_lo : stdgo.GoInt32);
            while ((_c <= _hi : Bool)) {
                _r = stdgo._internal.regexp.syntax.Syntax__appendRange._appendRange(_r, _c, _c);
var _f = (stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_c) : stdgo.GoInt32);
while (_f != (_c)) {
                    _r = stdgo._internal.regexp.syntax.Syntax__appendRange._appendRange(_r, _f, _f);
                    _f = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_f);
                };
                _c++;
            };
        };
        return _r;
    }
