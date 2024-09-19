package _internal.sync.atomic_test;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.sync.atomic_.Atomic_;
function _hammerStoreLoadUint32Method(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _paddr:stdgo._internal.unsafe.Unsafe.UnsafePointer):Void {
        var _addr = (_paddr.__convert__(stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.sync.atomic_.Atomic__Uint32.Uint32", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "__36", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.sync.atomic_.Atomic__T_noCopy.T_noCopy", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([]), false, { get : () -> null }) }, optional : false }, { name : "_v", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false }]), false, { get : () -> null }) })) : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__Uint32.Uint32>);
        var _v = (_addr.load() : stdgo.GoUInt32);
        var _vlo = (_v & (65535u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
        var _vhi = (_v >> (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32);
        if (_vlo != (_vhi)) {
            _t.fatalf(("Uint32: %#x != %#x" : stdgo.GoString), stdgo.Go.toInterface(_vlo), stdgo.Go.toInterface(_vhi));
        };
        var _new = ((_v + (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32) + (65536u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
        if (_vlo == ((10000u32 : stdgo.GoUInt32))) {
            _new = (0u32 : stdgo.GoUInt32);
        };
        _addr.store(_new);
    }
