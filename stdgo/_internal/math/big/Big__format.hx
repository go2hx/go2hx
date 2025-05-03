package stdgo._internal.math.big;
function _format(_base:stdgo.GoInt):stdgo.GoString {
        //"file:///home/runner/.go/go1.21.3/src/math/big/intconv_test.go#L141"
        {
            final __value__ = _base;
            if (__value__ == ((2 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/intconv_test.go#L143"
                return ("%b" : stdgo.GoString);
            } else if (__value__ == ((8 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/intconv_test.go#L145"
                return ("%o" : stdgo.GoString);
            } else if (__value__ == ((16 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/intconv_test.go#L147"
                return ("%x" : stdgo.GoString);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/intconv_test.go#L149"
        return ("%d" : stdgo.GoString);
    }
