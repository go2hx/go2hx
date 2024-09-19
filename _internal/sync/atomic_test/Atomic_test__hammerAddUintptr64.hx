package _internal.sync.atomic_test;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.sync.atomic_.Atomic_;
function _hammerAddUintptr64(_uaddr:stdgo.Pointer<stdgo.GoUInt64>, _count:stdgo.GoInt):Void {
        var _addr = ((stdgo.Go.toInterface(_uaddr) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) })) : stdgo.Pointer<stdgo.GoUIntptr>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _count : Bool), _i++, {
                stdgo._internal.sync.atomic_.Atomic__addUintptr.addUintptr(_addr, (1 : stdgo.GoUIntptr));
            });
        };
    }
