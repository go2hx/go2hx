package stdgo._internal.image.png;
function _abs(_x:stdgo.GoInt):stdgo.GoInt {
        var _m = (_x >> (31i64 : stdgo.GoUInt64) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/image/png/paeth.go#L19"
        return (((_x ^ _m : stdgo.GoInt)) - _m : stdgo.GoInt);
    }
