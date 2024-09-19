package _internal.sync.atomic_test;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.sync.atomic_.Atomic_;
function _hammerCompareAndSwapUint32Method(_uaddr:stdgo.Pointer<stdgo.GoUInt32>, _count:stdgo.GoInt):Void {
        var _addr = ((stdgo.Go.toInterface(_uaddr) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.sync.atomic_.Atomic__Uint32.Uint32", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "__36", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.sync.atomic_.Atomic__T_noCopy.T_noCopy", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([]), false, { get : () -> null }) }, optional : false }, { name : "_v", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false }]), false, { get : () -> null }) })) : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__Uint32.Uint32>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _count : Bool), _i++, {
                while (true) {
                    var _v = (_addr.load() : stdgo.GoUInt32);
                    if (_addr.compareAndSwap(_v, (_v + (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32))) {
                        break;
                    };
                };
            });
        };
    }
