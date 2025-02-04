package stdgo._internal.regexp.syntax;
function _appendFoldedRange(_r:stdgo.Slice<stdgo.GoInt32>, _lo:stdgo.GoInt32, _hi:stdgo.GoInt32):stdgo.Slice<stdgo.GoInt32> {
        if (((_lo <= (65 : stdgo.GoInt32) : Bool) && (_hi >= (125251 : stdgo.GoInt32) : Bool) : Bool)) {
            return stdgo._internal.regexp.syntax.Syntax__appendrange._appendRange(_r, _lo, _hi);
        };
        if (((_hi < (65 : stdgo.GoInt32) : Bool) || (_lo > (125251 : stdgo.GoInt32) : Bool) : Bool)) {
            return stdgo._internal.regexp.syntax.Syntax__appendrange._appendRange(_r, _lo, _hi);
        };
        if ((_lo < (65 : stdgo.GoInt32) : Bool)) {
            _r = stdgo._internal.regexp.syntax.Syntax__appendrange._appendRange(_r, _lo, (64 : stdgo.GoInt32));
            _lo = (65 : stdgo.GoInt32);
        };
        if ((_hi > (125251 : stdgo.GoInt32) : Bool)) {
            _r = stdgo._internal.regexp.syntax.Syntax__appendrange._appendRange(_r, (125252 : stdgo.GoInt32), _hi);
            _hi = (125251 : stdgo.GoInt32);
        };
        {
            var _c = (_lo : stdgo.GoInt32);
            while ((_c <= _hi : Bool)) {
                _r = stdgo._internal.regexp.syntax.Syntax__appendrange._appendRange(_r, _c, _c);
var _f = (stdgo._internal.unicode.Unicode_simplefold.simpleFold(_c) : stdgo.GoInt32);
while (_f != (_c)) {
                    _r = stdgo._internal.regexp.syntax.Syntax__appendrange._appendRange(_r, _f, _f);
                    _f = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_f);
                };
                _c++;
            };
        };
        return _r;
    }
