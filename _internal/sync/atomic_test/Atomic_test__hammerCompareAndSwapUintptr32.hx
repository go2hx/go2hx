package _internal.sync.atomic_test;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.sync.atomic_.Atomic_;
function _hammerCompareAndSwapUintptr32(_uaddr:stdgo.Pointer<stdgo.GoUInt32>, _count:stdgo.GoInt):Void {
        var _addr = ((stdgo.Go.toInterface(_uaddr) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) })) : stdgo.Pointer<stdgo.GoUIntptr>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _count : Bool), _i++, {
                while (true) {
                    var _v = (stdgo._internal.sync.atomic_.Atomic__loadUintptr.loadUintptr(_addr) : stdgo.GoUIntptr);
                    if (stdgo._internal.sync.atomic_.Atomic__compareAndSwapUintptr.compareAndSwapUintptr(_addr, _v, (_v + (1 : stdgo.GoUIntptr) : stdgo.GoUIntptr))) {
                        break;
                    };
                };
            });
        };
    }
