package stdgo._internal.math.big;
function _cutSpace(_r:stdgo.GoInt32):stdgo.GoInt32 {
        //"file:///home/runner/.go/go1.21.3/src/math/big/prime_test.go#L119"
        if (stdgo._internal.unicode.Unicode_isspace.isSpace(_r)) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/prime_test.go#L120"
            return (-1 : stdgo.GoInt32);
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/prime_test.go#L122"
        return _r;
    }
