package stdgo._internal.math;
function float32bits(_f:stdgo.GoFloat32):stdgo.GoUInt32 {
        final bits = haxe.io.Bytes.alloc(4);
        bits.setFloat(0, _f.toBasic());
        return (bits.get(0)) | (bits.get(1) << 8) | (bits.get(2) << 16) | (bits.get(3) << 24);
    }
