package stdgo._internal.crypto.internal.bigmod;
function _bitLen(_n:stdgo.GoUInt):stdgo.GoInt {
        var _len:stdgo.GoInt = (0 : stdgo.GoInt);
        while (_n != ((0u32 : stdgo.GoUInt))) {
            _len++;
            _n = (_n >> ((1i64 : stdgo.GoUInt64)) : stdgo.GoUInt);
        };
        return _len;
    }
