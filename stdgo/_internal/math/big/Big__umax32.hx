package stdgo._internal.math.big;
function _umax32(_x:stdgo.GoUInt32, _y:stdgo.GoUInt32):stdgo.GoUInt32 {
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1732"
        if ((_x > _y : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1733"
            return _x;
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1735"
        return _y;
    }
