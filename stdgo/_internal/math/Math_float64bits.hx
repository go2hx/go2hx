package stdgo._internal.math;
function float64bits(_f:stdgo.GoFloat64):stdgo.GoUInt64 {
        final bits = haxe.io.Bytes.alloc(8);
        bits.setDouble(0, _f.toBasic());
        return haxe.Int64.make(bits.get(4) | (bits.get(5) << 8) | (bits.get(6) << 16) | (bits.get(7) << 24), bits.get(0) | (bits.get(1) << 8) | (bits.get(2) << 16) | (bits.get(3) << 24));
    }
