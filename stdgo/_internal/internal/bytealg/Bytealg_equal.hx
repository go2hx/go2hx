package stdgo._internal.internal.bytealg;
import stdgo._internal.unsafe.Unsafe;
function equal(_a:stdgo.Slice<stdgo.GoUInt8>, _b:stdgo.Slice<stdgo.GoUInt8>):Bool {
        return (_a : stdgo.GoString) == ((_b : stdgo.GoString));
    }
