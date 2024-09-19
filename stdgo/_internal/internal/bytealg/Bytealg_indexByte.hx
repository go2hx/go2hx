package stdgo._internal.internal.bytealg;
import stdgo._internal.unsafe.Unsafe;
function indexByte(_b:stdgo.Slice<stdgo.GoUInt8>, _c:stdgo.GoUInt8):stdgo.GoInt {
        for (i in 0 ... _b.length.toBasic()) {
            if (_b[i] == _c) return i;
        };
        return -1;
    }
