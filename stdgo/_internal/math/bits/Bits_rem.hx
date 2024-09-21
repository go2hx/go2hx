package stdgo._internal.math.bits;
function rem(_hi:stdgo.GoUInt, _lo:stdgo.GoUInt, _y:stdgo.GoUInt):stdgo.GoUInt {
        if (true) {
            return (stdgo._internal.math.bits.Bits_rem32.rem32((_hi : stdgo.GoUInt32), (_lo : stdgo.GoUInt32), (_y : stdgo.GoUInt32)) : stdgo.GoUInt);
        };
        return (stdgo._internal.math.bits.Bits_rem64.rem64((_hi : stdgo.GoUInt64), (_lo : stdgo.GoUInt64), (_y : stdgo.GoUInt64)) : stdgo.GoUInt);
    }
