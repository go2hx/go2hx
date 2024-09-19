package _internal.sync.atomic_test;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.sync.atomic_.Atomic_;
function _hammerSwapUintptr64(_uaddr:stdgo.Pointer<stdgo.GoUInt64>, _count:stdgo.GoInt):Void {
        if (false) {
            var _addr = ((stdgo.Go.toInterface(_uaddr) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) })) : stdgo.Pointer<stdgo.GoUIntptr>);
            var _seed = (((stdgo.Go.toInterface(stdgo.Go.pointer(_count)) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind)) : stdgo.GoUIntptr) : stdgo.GoInt);
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _count : Bool), _i++, {
                    var _new = ((((_seed + _i : stdgo.GoInt) : stdgo.GoUIntptr) << (32i64 : stdgo.GoUInt64) : stdgo.GoUIntptr) | ((((_seed + _i : stdgo.GoInt) : stdgo.GoUIntptr) << (32i64 : stdgo.GoUInt64) : stdgo.GoUIntptr) >> (32i64 : stdgo.GoUInt64) : stdgo.GoUIntptr) : stdgo.GoUIntptr);
                    var _old = (stdgo._internal.sync.atomic_.Atomic__swapUintptr.swapUintptr(_addr, _new) : stdgo.GoUIntptr);
                    if ((_old >> (32i64 : stdgo.GoUInt64) : stdgo.GoUIntptr) != (((_old << (32i64 : stdgo.GoUInt64) : stdgo.GoUIntptr) >> (32i64 : stdgo.GoUInt64) : stdgo.GoUIntptr))) {
                        throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("SwapUintptr is not atomic: %v" : stdgo.GoString), stdgo.Go.toInterface(_old)));
                    };
                });
            };
        };
    }
