package stdgo._internal.sync;
@:keep @:allow(stdgo._internal.sync.Sync.T_copyChecker_asInterface) class T_copyChecker_static_extension {
    @:keep
    @:pointer
    @:tdfield
    static public function _check( _c:stdgo.Pointer<stdgo._internal.sync.Sync_t_copychecker.T_copyChecker>):Void {
        if ((((new stdgo.GoUIntptr(_c.value) : stdgo.GoUIntptr) != ((new stdgo.GoUIntptr((stdgo.Go.toInterface(_c) : stdgo._internal.unsafe.Unsafe.UnsafePointer)) : stdgo.GoUIntptr)) && !stdgo._internal.sync.atomic_.Atomic__compareandswapuintptr.compareAndSwapUintptr(new stdgo.Pointer<stdgo.GoUIntptr>(() -> (new stdgo.GoUIntptr(_c.value) : stdgo.GoUIntptr), v -> (new stdgo.GoUIntptr((_c.value = ((new stdgo.GoUIntptr(v) : stdgo._internal.sync.Sync_t_copychecker.T_copyChecker) : stdgo._internal.sync.Sync_t_copychecker.T_copyChecker))) : stdgo.GoUIntptr)), (new stdgo.GoUIntptr(0) : stdgo.GoUIntptr), (new stdgo.GoUIntptr((stdgo.Go.toInterface(_c) : stdgo._internal.unsafe.Unsafe.UnsafePointer)) : stdgo.GoUIntptr)) : Bool) && (((new stdgo.GoUIntptr(_c.value) : stdgo.GoUIntptr) : stdgo.GoUIntptr) != (new stdgo.GoUIntptr((stdgo.Go.toInterface(_c) : stdgo._internal.unsafe.Unsafe.UnsafePointer)) : stdgo.GoUIntptr)) : Bool)) {
            throw stdgo.Go.toInterface(("sync.Cond is copied" : stdgo.GoString));
        };
    }
}
