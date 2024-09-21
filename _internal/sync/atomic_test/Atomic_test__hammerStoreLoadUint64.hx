package _internal.sync.atomic_test;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.sync.atomic_.Atomic_;
function _hammerStoreLoadUint64(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _paddr:stdgo._internal.unsafe.Unsafe.UnsafePointer):Void {
        var _addr = (_paddr.__convert__(stdgo._internal.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint64_kind) })) : stdgo.Pointer<stdgo.GoUInt64>);
        var _v = (stdgo._internal.sync.atomic_.Atomic__loadUint64.loadUint64(_addr) : stdgo.GoUInt64);
        var _vlo = (_v & (4294967295i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _vhi = (_v >> (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        if (_vlo != (_vhi)) {
            _t.fatalf(("Uint64: %#x != %#x" : stdgo.GoString), stdgo.Go.toInterface(_vlo), stdgo.Go.toInterface(_vhi));
        };
        var _new = ((_v + (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) + (4294967296i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        stdgo._internal.sync.atomic_.Atomic__storeUint64.storeUint64(_addr, _new);
    }
