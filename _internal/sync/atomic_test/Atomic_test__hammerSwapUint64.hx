package _internal.sync.atomic_test;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.sync.atomic_.Atomic_;
function _hammerSwapUint64(_addr:stdgo.Pointer<stdgo.GoUInt64>, _count:stdgo.GoInt):Void {
        var _seed = (((stdgo.Go.toInterface(stdgo.Go.pointer(_count)) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind)) : stdgo.GoUIntptr) : stdgo.GoInt);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _count : Bool), _i++, {
                var _new = ((((_seed + _i : stdgo.GoInt) : stdgo.GoUInt64) << (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64) | ((((_seed + _i : stdgo.GoInt) : stdgo.GoUInt64) << (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64) >> (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64);
                var _old = (stdgo._internal.sync.atomic_.Atomic__swapUint64.swapUint64(_addr, _new) : stdgo.GoUInt64);
                if ((_old >> (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64) != (((_old << (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64) >> (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64))) {
                    throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("SwapUint64 is not atomic: %v" : stdgo.GoString), stdgo.Go.toInterface(_old)));
                };
            });
        };
    }
