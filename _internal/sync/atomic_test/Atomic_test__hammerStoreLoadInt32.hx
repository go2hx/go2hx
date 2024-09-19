package _internal.sync.atomic_test;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.sync.atomic_.Atomic_;
function _hammerStoreLoadInt32(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _paddr:stdgo._internal.unsafe.Unsafe.UnsafePointer):Void {
        var _addr = (_paddr.__convert__(stdgo._internal.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind) })) : stdgo.Pointer<stdgo.GoInt32>);
        var _v = (stdgo._internal.sync.atomic_.Atomic__loadInt32.loadInt32(_addr) : stdgo.GoInt32);
        var _vlo = (_v & (65535 : stdgo.GoInt32) : stdgo.GoInt32);
        var _vhi = (_v >> (16i64 : stdgo.GoUInt64) : stdgo.GoInt32);
        if (_vlo != (_vhi)) {
            _t.fatalf(("Int32: %#x != %#x" : stdgo.GoString), stdgo.Go.toInterface(_vlo), stdgo.Go.toInterface(_vhi));
        };
        var _new = ((_v + (1 : stdgo.GoInt32) : stdgo.GoInt32) + (65536 : stdgo.GoInt32) : stdgo.GoInt32);
        if (_vlo == ((10000 : stdgo.GoInt32))) {
            _new = (0 : stdgo.GoInt32);
        };
        stdgo._internal.sync.atomic_.Atomic__storeInt32.storeInt32(_addr, _new);
    }
