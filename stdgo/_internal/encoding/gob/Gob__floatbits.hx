package stdgo._internal.encoding.gob;
function _floatBits(_f:stdgo.GoFloat64):stdgo.GoUInt64 {
        var _u = (stdgo._internal.math.Math_float64bits.float64bits(_f) : stdgo.GoUInt64);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encode.go#L212"
        return stdgo._internal.math.bits.Bits_reversebytes64.reverseBytes64(_u);
    }
