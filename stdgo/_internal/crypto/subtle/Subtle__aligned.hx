package stdgo._internal.crypto.subtle;
import stdgo._internal.unsafe.Unsafe;
function _aligned(_dst:stdgo.Pointer<stdgo.GoUInt8>, _x:stdgo.Pointer<stdgo.GoUInt8>, _y:stdgo.Pointer<stdgo.GoUInt8>):Bool {
        return ((((((stdgo.Go.toInterface(_dst) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind)) : stdgo.GoUIntptr) | ((stdgo.Go.toInterface(_x) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind)) : stdgo.GoUIntptr) : stdgo.GoUIntptr) | ((stdgo.Go.toInterface(_y) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind)) : stdgo.GoUIntptr) : stdgo.GoUIntptr)) & (3 : stdgo.GoUIntptr) : stdgo.GoUIntptr) == ((0 : stdgo.GoUIntptr));
    }
