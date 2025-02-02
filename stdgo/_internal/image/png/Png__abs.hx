package stdgo._internal.image.png;
function _abs(_x:stdgo.GoInt):stdgo.GoInt {
        var _m = (_x >> (31i64 : stdgo.GoUInt64) : stdgo.GoInt);
        return (((_x ^ _m : stdgo.GoInt)) - _m : stdgo.GoInt);
    }
