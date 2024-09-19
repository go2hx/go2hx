package stdgo._internal.internal.bytealg;
import stdgo._internal.unsafe.Unsafe;
function indexByteString(_s:stdgo.GoString, _c:stdgo.GoUInt8):stdgo.GoInt {
        for (i in 0 ... _s.length.toBasic()) {
            if (_s[i] == _c) return i;
        };
        return -1;
    }
