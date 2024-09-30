package stdgo._internal.time.tzdata;
function _get2s(_s:stdgo.GoString):stdgo.GoInt {
        if (((_s.length) < (2 : stdgo.GoInt) : Bool)) {
            return (0 : stdgo.GoInt);
        };
        return ((_s[(0 : stdgo.GoInt)] : stdgo.GoInt) | ((_s[(1 : stdgo.GoInt)] : stdgo.GoInt) << (8i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoInt);
    }
