package stdgo._internal.math.rand;
function _absInt32(_i:stdgo.GoInt32):stdgo.GoUInt32 {
        //"file:///home/runner/.go/go1.21.3/src/math/rand/normal.go#L24"
        if ((_i < (0 : stdgo.GoInt32) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/math/rand/normal.go#L25"
            return (-_i : stdgo.GoUInt32);
        };
        //"file:///home/runner/.go/go1.21.3/src/math/rand/normal.go#L27"
        return (_i : stdgo.GoUInt32);
    }
