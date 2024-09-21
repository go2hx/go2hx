package _internal.sync.atomic_test;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.sync.atomic_.Atomic_;
function _hammerSwapUint32(_addr:stdgo.Pointer<stdgo.GoUInt32>, _count:stdgo.GoInt):Void {
        var _seed = (((stdgo.Go.toInterface(stdgo.Go.pointer(_count)) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind)) : stdgo.GoUIntptr) : stdgo.GoInt);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _count : Bool), _i++, {
                var _new = ((((_seed + _i : stdgo.GoInt) : stdgo.GoUInt32) << (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) | ((((_seed + _i : stdgo.GoInt) : stdgo.GoUInt32) << (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) >> (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32);
                var _old = (stdgo._internal.sync.atomic_.Atomic__swapUint32.swapUint32(_addr, _new) : stdgo.GoUInt32);
                if ((_old >> (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) != (((_old << (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) >> (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32))) {
                    throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("SwapUint32 is not atomic: %v" : stdgo.GoString), stdgo.Go.toInterface(_old)));
                };
            });
        };
    }
