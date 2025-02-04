package stdgo._internal.regexp.syntax;
function _appendNegatedClass(_r:stdgo.Slice<stdgo.GoInt32>, _x:stdgo.Slice<stdgo.GoInt32>):stdgo.Slice<stdgo.GoInt32> {
        var _nextLo = (0 : stdgo.GoInt32);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_x.length) : Bool)) {
                var __0 = (_x[(_i : stdgo.GoInt)] : stdgo.GoInt32), __1 = (_x[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt32);
var _hi = __1, _lo = __0;
if ((_nextLo <= (_lo - (1 : stdgo.GoInt32) : stdgo.GoInt32) : Bool)) {
                    _r = stdgo._internal.regexp.syntax.Syntax__appendrange._appendRange(_r, _nextLo, (_lo - (1 : stdgo.GoInt32) : stdgo.GoInt32));
                };
_nextLo = (_hi + (1 : stdgo.GoInt32) : stdgo.GoInt32);
                _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
            };
        };
        if ((_nextLo <= (1114111 : stdgo.GoInt32) : Bool)) {
            _r = stdgo._internal.regexp.syntax.Syntax__appendrange._appendRange(_r, _nextLo, (1114111 : stdgo.GoInt32));
        };
        return _r;
    }
