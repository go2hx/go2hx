package stdgo._internal.math.big;
function _isEven32(_f:stdgo.GoFloat32):Bool {
        //"file:///home/runner/.go/go1.21.3/src/math/big/rat_test.go#L617"
        return (stdgo._internal.math.Math_float32bits.float32bits(_f) & (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32) == ((0u32 : stdgo.GoUInt32));
    }
