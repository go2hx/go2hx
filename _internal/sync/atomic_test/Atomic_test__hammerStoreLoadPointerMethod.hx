package _internal.sync.atomic_test;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.sync.atomic_.Atomic_;
function _hammerStoreLoadPointerMethod(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _paddr:stdgo._internal.unsafe.Unsafe.UnsafePointer):Void {
        var _addr = (_paddr.__convert__(stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.sync.atomic_.Atomic__Pointer_.Pointer_", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "__38", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, 0) }, optional : false }, { name : "__39", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.sync.atomic_.Atomic__T_noCopy.T_noCopy", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([]), false, { get : () -> null }) }, optional : false }, { name : "_v", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(unsafepointer_kind) }, optional : false }]), false, { get : () -> null }) })) : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__Pointer_.Pointer_<stdgo.GoUInt8>>);
        var _v = ((stdgo.Go.toInterface(_addr.load()) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind)) : stdgo.GoUIntptr);
        var _new = (_v : stdgo.GoUIntptr);
        if (true) {
            var _vlo = (_v & (65535 : stdgo.GoUIntptr) : stdgo.GoUIntptr);
            var _vhi = (_v >> (16i64 : stdgo.GoUInt64) : stdgo.GoUIntptr);
            if (_vlo != (_vhi)) {
                _t.fatalf(("Pointer: %#x != %#x" : stdgo.GoString), stdgo.Go.toInterface(_vlo), stdgo.Go.toInterface(_vhi));
            };
            _new = ((_v + (1 : stdgo.GoUIntptr) : stdgo.GoUIntptr) + (65536 : stdgo.GoUIntptr) : stdgo.GoUIntptr);
            if (_vlo == ((10000 : stdgo.GoUIntptr))) {
                _new = (0 : stdgo.GoUIntptr);
            };
        } else {
            var _vlo = (_v & (4294967295 : stdgo.GoUIntptr) : stdgo.GoUIntptr);
            var _vhi = (_v >> (32i64 : stdgo.GoUInt64) : stdgo.GoUIntptr);
            if (_vlo != (_vhi)) {
                _t.fatalf(("Pointer: %#x != %#x" : stdgo.GoString), stdgo.Go.toInterface(_vlo), stdgo.Go.toInterface(_vhi));
            };
            var _inc = ((4294967297i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
            _new = (_v + (_inc : stdgo.GoUIntptr) : stdgo.GoUIntptr);
        };
        _addr.store(((stdgo.Go.toInterface(_new) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) })) : stdgo.Pointer<stdgo.GoUInt8>));
    }
