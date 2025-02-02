package stdgo._internal.math.big;
function _isEven32(_f:stdgo.GoFloat32):Bool {
        return (stdgo._internal.math.Math_float32bits.float32bits(_f) & (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32) == ((0u32 : stdgo.GoUInt32));
    }
