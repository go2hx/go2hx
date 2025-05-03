package stdgo._internal.math.rand;
function _seedrand(_x:stdgo.GoInt32):stdgo.GoInt32 {
        {};
        var _hi = (_x / (44488 : stdgo.GoInt32) : stdgo.GoInt32);
        var _lo = (_x % (44488 : stdgo.GoInt32) : stdgo.GoInt32);
        _x = (((48271 : stdgo.GoInt32) * _lo : stdgo.GoInt32) - ((3399 : stdgo.GoInt32) * _hi : stdgo.GoInt32) : stdgo.GoInt32);
        //"file:///home/runner/.go/go1.21.3/src/math/rand/rng.go#L197"
        if ((_x < (0 : stdgo.GoInt32) : Bool)) {
            _x = (_x + ((2147483647 : stdgo.GoInt32)) : stdgo.GoInt32);
        };
        //"file:///home/runner/.go/go1.21.3/src/math/rand/rng.go#L200"
        return _x;
    }
