package stdgo._internal.strconv;
function _isPowerOfTwo(_x:stdgo.GoInt):Bool {
        //"file:///home/runner/.go/go1.21.3/src/strconv/itoa.go#L204"
        return (_x & ((_x - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt) == ((0 : stdgo.GoInt));
    }
