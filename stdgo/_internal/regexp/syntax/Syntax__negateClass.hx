package stdgo._internal.regexp.syntax;
function _negateClass(_r:stdgo.Slice<stdgo.GoInt32>):stdgo.Slice<stdgo.GoInt32> {
        var _nextLo = (0 : stdgo.GoInt32);
        var _w = (0 : stdgo.GoInt);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_r.length) : Bool)) {
                var __0 = (_r[(_i : stdgo.GoInt)] : stdgo.GoInt32), __1 = (_r[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt32);
var _hi = __1, _lo = __0;
if ((_nextLo <= (_lo - (1 : stdgo.GoInt32) : stdgo.GoInt32) : Bool)) {
                    _r[(_w : stdgo.GoInt)] = _nextLo;
                    _r[(_w + (1 : stdgo.GoInt) : stdgo.GoInt)] = (_lo - (1 : stdgo.GoInt32) : stdgo.GoInt32);
                    _w = (_w + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                };
_nextLo = (_hi + (1 : stdgo.GoInt32) : stdgo.GoInt32);
                _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
            };
        };
        _r = (_r.__slice__(0, _w) : stdgo.Slice<stdgo.GoInt32>);
        if ((_nextLo <= (1114111 : stdgo.GoInt32) : Bool)) {
            _r = (_r.__append__(_nextLo, (1114111 : stdgo.GoInt32)));
        };
        return _r;
    }
