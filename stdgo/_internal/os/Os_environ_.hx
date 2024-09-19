package stdgo._internal.os;
import stdgo._internal.unsafe.Unsafe;
function environ_():stdgo.Slice<stdgo.GoString> {
        final slice = new stdgo.Slice<stdgo.GoString>(0, 0);
        return slice;
    }
