package stdgo._internal.sort;
function search(_n:stdgo.GoInt, _f:stdgo.GoInt -> Bool):stdgo.GoInt {
        var __0 = (0 : stdgo.GoInt), __1 = (_n : stdgo.GoInt);
var _j = __1, _i = __0;
        while ((_i < _j : Bool)) {
            var _h = ((((_i + _j : stdgo.GoInt) : stdgo.GoUInt) >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoInt);
            if (!_f(_h)) {
                _i = (_h + (1 : stdgo.GoInt) : stdgo.GoInt);
            } else {
                _j = _h;
            };
        };
        return _i;
    }
