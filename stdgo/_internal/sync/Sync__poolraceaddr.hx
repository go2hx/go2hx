package stdgo._internal.sync;
function _poolRaceAddr(_x:stdgo.AnyInterface):stdgo._internal.unsafe.Unsafe.UnsafePointer {
        var _ptr = ((new stdgo.GoUIntptr(((((stdgo.Go.setRef(_x) : stdgo.Ref<stdgo.AnyInterface>).__underlying__().value : Dynamic) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(unsafepointer_kind) }, 2) })) : stdgo.Ref<stdgo.GoArray<stdgo._internal.unsafe.Unsafe.UnsafePointer>>)[(1 : stdgo.GoInt)]) : stdgo.GoUIntptr) : stdgo.GoUIntptr);
        var _h = ((((((_ptr : stdgo.GoUInt32) : stdgo.GoUInt64) * (2246822507i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) >> (16i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt32);
        return (stdgo.Go.toInterface(stdgo.Go.pointer(stdgo._internal.sync.Sync__poolracehash._poolRaceHash[((_h % (stdgo._internal.sync.Sync__poolracehash._poolRaceHash.length : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)])) : stdgo._internal.unsafe.Unsafe.UnsafePointer);
    }
