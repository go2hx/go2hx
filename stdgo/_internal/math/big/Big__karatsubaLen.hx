package stdgo._internal.math.big;
function _karatsubaLen(_n:stdgo.GoInt, _threshold:stdgo.GoInt):stdgo.GoInt {
        var _i = ((0u32 : stdgo.GoUInt) : stdgo.GoUInt);
        while ((_n > _threshold : Bool)) {
            _n = (_n >> ((1i64 : stdgo.GoUInt64)) : stdgo.GoInt);
            _i++;
        };
        return (_n << _i : stdgo.GoInt);
    }
