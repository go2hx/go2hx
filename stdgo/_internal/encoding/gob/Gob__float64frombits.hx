package stdgo._internal.encoding.gob;
function _float64FromBits(_u:stdgo.GoUInt64):stdgo.GoFloat64 {
        var _v = (stdgo._internal.math.bits.Bits_reversebytes64.reverseBytes64(_u) : stdgo.GoUInt64);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/decode.go#L314"
        return stdgo._internal.math.Math_float64frombits.float64frombits(_v);
    }
