package stdgo._internal.math.bits;
function rem(_hi:stdgo.GoUInt, _lo:stdgo.GoUInt, _y:stdgo.GoUInt):stdgo.GoUInt {
        //"file:///home/runner/.go/go1.21.3/src/math/bits/bits.go#L574"
        if (true) {
            //"file:///home/runner/.go/go1.21.3/src/math/bits/bits.go#L575"
            return (stdgo._internal.math.bits.Bits_rem32.rem32((_hi : stdgo.GoUInt32), (_lo : stdgo.GoUInt32), (_y : stdgo.GoUInt32)) : stdgo.GoUInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/math/bits/bits.go#L577"
        return (stdgo._internal.math.bits.Bits_rem64.rem64((_hi : stdgo.GoUInt64), (_lo : stdgo.GoUInt64), (_y : stdgo.GoUInt64)) : stdgo.GoUInt);
    }
