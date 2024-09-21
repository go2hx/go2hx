package _internal.sync.atomic_test;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.sync.atomic_.Atomic_;
function _hammerSwapInt64Method(_uaddr:stdgo.Pointer<stdgo.GoUInt64>, _count:stdgo.GoInt):Void {
        var _addr = ((stdgo.Go.toInterface(_uaddr) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.sync.atomic_.Atomic__Int64_.Int64_", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "__38", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.sync.atomic_.Atomic__T_noCopy.T_noCopy", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([]), false, { get : () -> null }) }, optional : false }, { name : "__39", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.sync.atomic_.Atomic__T_align64.T_align64", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([]), false, { get : () -> null }) }, optional : false }, { name : "_v", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int64_kind) }, optional : false }]), false, { get : () -> null }) })) : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__Int64_.Int64_>);
        var _seed = (((stdgo.Go.toInterface(stdgo.Go.pointer(_count)) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind)) : stdgo.GoUIntptr) : stdgo.GoInt);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _count : Bool), _i++, {
                var _new = ((((_seed + _i : stdgo.GoInt) : stdgo.GoUInt64) << (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64) | ((((_seed + _i : stdgo.GoInt) : stdgo.GoUInt64) << (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64) >> (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64);
                var _old = (_addr.swap((_new : stdgo.GoInt64)) : stdgo.GoUInt64);
                if ((_old >> (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64) != (((_old << (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64) >> (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64))) {
                    throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("SwapInt64 is not atomic: %v" : stdgo.GoString), stdgo.Go.toInterface(_old)));
                };
            });
        };
    }
