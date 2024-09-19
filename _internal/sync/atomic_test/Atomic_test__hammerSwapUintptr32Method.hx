package _internal.sync.atomic_test;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.sync.atomic_.Atomic_;
function _hammerSwapUintptr32Method(_uaddr:stdgo.Pointer<stdgo.GoUInt32>, _count:stdgo.GoInt):Void {
        var _addr = ((stdgo.Go.toInterface(_uaddr) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.sync.atomic_.Atomic__Uintptr.Uintptr", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "__36", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.sync.atomic_.Atomic__T_noCopy.T_noCopy", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([]), false, { get : () -> null }) }, optional : false }, { name : "_v", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false }]), false, { get : () -> null }) })) : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__Uintptr.Uintptr>);
        var _seed = (((stdgo.Go.toInterface(stdgo.Go.pointer(_count)) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind)) : stdgo.GoUIntptr) : stdgo.GoInt);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _count : Bool), _i++, {
                var _new = ((((_seed + _i : stdgo.GoInt) : stdgo.GoUIntptr) << (16i64 : stdgo.GoUInt64) : stdgo.GoUIntptr) | ((((_seed + _i : stdgo.GoInt) : stdgo.GoUIntptr) << (16i64 : stdgo.GoUInt64) : stdgo.GoUIntptr) >> (16i64 : stdgo.GoUInt64) : stdgo.GoUIntptr) : stdgo.GoUIntptr);
                var _old = (_addr.swap(_new) : stdgo.GoUIntptr);
                if ((_old >> (16i64 : stdgo.GoUInt64) : stdgo.GoUIntptr) != (((_old << (16i64 : stdgo.GoUInt64) : stdgo.GoUIntptr) >> (16i64 : stdgo.GoUInt64) : stdgo.GoUIntptr))) {
                    throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("Uintptr.Swap is not atomic: %#08x" : stdgo.GoString), stdgo.Go.toInterface(_old)));
                };
            });
        };
    }