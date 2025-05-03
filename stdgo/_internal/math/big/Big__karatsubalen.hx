package stdgo._internal.math.big;
function _karatsubaLen(_n:stdgo.GoInt, _threshold:stdgo.GoInt):stdgo.GoInt {
        var _i = ((0u32 : stdgo.GoUInt) : stdgo.GoUInt);
        //"file:///home/runner/.go/go1.21.3/src/math/big/nat.go#L405"
        while ((_n > _threshold : Bool)) {
            _n = (_n >> ((1i64 : stdgo.GoUInt64)) : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/math/big/nat.go#L407"
            _i++;
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/nat.go#L409"
        return (_n << _i : stdgo.GoInt);
    }
