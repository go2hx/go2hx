package stdgo._internal.crypto.subtle;
function _aligned(_dst:stdgo.Pointer<stdgo.GoUInt8>, _x:stdgo.Pointer<stdgo.GoUInt8>, _y:stdgo.Pointer<stdgo.GoUInt8>):Bool {
        return (((((new stdgo.GoUIntptr((stdgo.Go.toInterface(_dst) : stdgo._internal.unsafe.Unsafe.UnsafePointer)) : stdgo.GoUIntptr) | (new stdgo.GoUIntptr((stdgo.Go.toInterface(_x) : stdgo._internal.unsafe.Unsafe.UnsafePointer)) : stdgo.GoUIntptr) : stdgo.GoUIntptr) | (new stdgo.GoUIntptr((stdgo.Go.toInterface(_y) : stdgo._internal.unsafe.Unsafe.UnsafePointer)) : stdgo.GoUIntptr) : stdgo.GoUIntptr)) & (new stdgo.GoUIntptr(3) : stdgo.GoUIntptr) : stdgo.GoUIntptr) == ((new stdgo.GoUIntptr(0) : stdgo.GoUIntptr));
    }
