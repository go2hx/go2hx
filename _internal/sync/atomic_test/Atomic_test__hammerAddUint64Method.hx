package _internal.sync.atomic_test;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.sync.atomic_.Atomic_;
function _hammerAddUint64Method(_uaddr:stdgo.Pointer<stdgo.GoUInt64>, _count:stdgo.GoInt):Void {
        var _addr = ((stdgo.Go.toInterface(_uaddr) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.sync.atomic_.Atomic__Uint64.Uint64", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "__38", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.sync.atomic_.Atomic__T_noCopy.T_noCopy", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([]), false, { get : () -> null }) }, optional : false }, { name : "__39", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.sync.atomic_.Atomic__T_align64.T_align64", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([]), false, { get : () -> null }) }, optional : false }, { name : "_v", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint64_kind) }, optional : false }]), false, { get : () -> null }) })) : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__Uint64.Uint64>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _count : Bool), _i++, {
                _addr.add((1i64 : stdgo.GoUInt64));
            });
        };
    }
