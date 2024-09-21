package _internal.sync.atomic_test;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.sync.atomic_.Atomic_;
function _hammerStoreLoadUint64Method(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _paddr:stdgo._internal.unsafe.Unsafe.UnsafePointer):Void {
        var _addr = (_paddr.__convert__(stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.sync.atomic_.Atomic__Uint64.Uint64", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "__38", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.sync.atomic_.Atomic__T_noCopy.T_noCopy", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([]), false, { get : () -> null }) }, optional : false }, { name : "__39", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.sync.atomic_.Atomic__T_align64.T_align64", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([]), false, { get : () -> null }) }, optional : false }, { name : "_v", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint64_kind) }, optional : false }]), false, { get : () -> null }) })) : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__Uint64.Uint64>);
        var _v = (_addr.load() : stdgo.GoUInt64);
        var _vlo = (_v & (4294967295i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _vhi = (_v >> (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        if (_vlo != (_vhi)) {
            _t.fatalf(("Uint64: %#x != %#x" : stdgo.GoString), stdgo.Go.toInterface(_vlo), stdgo.Go.toInterface(_vhi));
        };
        var _new = ((_v + (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) + (4294967296i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        _addr.store(_new);
    }
