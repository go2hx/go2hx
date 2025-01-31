package stdgo._internal.sync;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.internal.race.Race;
import stdgo._internal.runtime.Runtime;
@:keep @:allow(stdgo._internal.sync.Sync.T_copyChecker_asInterface) class T_copyChecker_static_extension {
    @:keep
    @:pointer
    @:tdfield
    static public function _check( _c:stdgo.Pointer<stdgo._internal.sync.Sync_T_copyChecker.T_copyChecker>):Void {
        if ((((_c.value : stdgo.GoUIntptr) != (((stdgo.Go.toInterface(_c) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind)) : stdgo.GoUIntptr)) && !stdgo._internal.sync.atomic_.Atomic__compareAndSwapUintptr.compareAndSwapUintptr(new stdgo.Pointer<stdgo.GoUIntptr>(() -> (_c.value : stdgo.GoUIntptr), v -> (_c.value = (v : stdgo._internal.sync.Sync_T_copyChecker.T_copyChecker) : stdgo.GoUIntptr)), (0 : stdgo.GoUIntptr), ((stdgo.Go.toInterface(_c) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind)) : stdgo.GoUIntptr)) : Bool) && ((_c.value : stdgo.GoUIntptr) != ((stdgo.Go.toInterface(_c) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind)) : stdgo.GoUIntptr)) : Bool)) {
            throw stdgo.Go.toInterface(("sync.Cond is copied" : stdgo.GoString));
        };
    }
}
