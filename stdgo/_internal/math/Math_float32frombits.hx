package stdgo._internal.math;
function float32frombits(_b:stdgo.GoUInt32):stdgo.GoFloat32 {
        final bits = haxe.io.Bytes.alloc(4);
        final v = _b.toBasic();
        bits.set(0, v & 0xff);
        bits.set(1, (v >> 8) & 0xff);
        bits.set(2, (v >> 16) & 0xff);
        bits.set(3, (v >> 24) & 0xff);
        return bits.getFloat(0);
    }
