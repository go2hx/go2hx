package stdgo._internal.math.big;
function _max(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.GoInt {
        //"file:///home/runner/.go/go1.21.3/src/math/big/nat.go#L393"
        if ((_x > _y : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/nat.go#L394"
            return _x;
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/nat.go#L396"
        return _y;
    }
