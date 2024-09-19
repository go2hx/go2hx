package _internal.sync.atomic_test;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.sync.atomic_.Atomic_;
function _hammerStoreLoadUint32(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _paddr:stdgo._internal.unsafe.Unsafe.UnsafePointer):Void {
        var _addr = (_paddr.__convert__(stdgo._internal.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint32_kind) })) : stdgo.Pointer<stdgo.GoUInt32>);
        var _v = (stdgo._internal.sync.atomic_.Atomic__loadUint32.loadUint32(_addr) : stdgo.GoUInt32);
        var _vlo = (_v & (65535u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
        var _vhi = (_v >> (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32);
        if (_vlo != (_vhi)) {
            _t.fatalf(("Uint32: %#x != %#x" : stdgo.GoString), stdgo.Go.toInterface(_vlo), stdgo.Go.toInterface(_vhi));
        };
        var _new = ((_v + (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32) + (65536u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
        if (_vlo == ((10000u32 : stdgo.GoUInt32))) {
            _new = (0u32 : stdgo.GoUInt32);
        };
        stdgo._internal.sync.atomic_.Atomic__storeUint32.storeUint32(_addr, _new);
    }
