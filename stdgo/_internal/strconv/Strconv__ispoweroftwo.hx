package stdgo._internal.strconv;
function _isPowerOfTwo(_x:stdgo.GoInt):Bool {
        return (_x & ((_x - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt) == ((0 : stdgo.GoInt));
    }
