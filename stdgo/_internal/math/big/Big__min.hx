package stdgo._internal.math.big;
function _min(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.GoInt {
        //"file:///home/runner/.go/go1.21.3/src/math/big/ftoa.go#L448"
        if ((_x < _y : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/ftoa.go#L449"
            return _x;
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/ftoa.go#L451"
        return _y;
    }
