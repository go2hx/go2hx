package stdgo._internal.internal.abi;
function _addChecked(_p:stdgo._internal.unsafe.Unsafe.UnsafePointer, _x:stdgo.GoUIntptr, _whySafe:stdgo.GoString):stdgo._internal.unsafe.Unsafe.UnsafePointer {
        return (stdgo.Go.toInterface(((_p.__convert__(stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind)) : stdgo.GoUIntptr) + _x : stdgo.GoUIntptr)) : stdgo._internal.unsafe.Unsafe.UnsafePointer);
    }
