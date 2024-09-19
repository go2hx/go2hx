package stdgo._internal.encoding.gob;
function _toInt(_x:stdgo.GoUInt64):stdgo.GoInt64 {
        var _i = ((_x >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt64);
        if ((_x & (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) != ((0i64 : stdgo.GoUInt64))) {
            _i = (-1 ^ _i);
        };
        return _i;
    }
