package stdgo._internal.math;
function float64frombits(_b:stdgo.GoUInt64):stdgo.GoFloat64 {
        final bits = haxe.io.Bytes.alloc(8);
        final low = _b.toBasic().low;
        final high = _b.toBasic().high;
        bits.set(0, low & 0xff);
        bits.set(1, (low >> 8) & 0xff);
        bits.set(2, (low >> 16) & 0xff);
        bits.set(3, (low >> 24) & 0xff);
        bits.set(4, high & 0xff);
        bits.set(5, (high >> 8) & 0xff);
        bits.set(6, (high >> 16) & 0xff);
        bits.set(7, (high >> 24) & 0xff);
        return bits.getDouble(0);
    }
