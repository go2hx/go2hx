package _internal.sync.atomic_test;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.sync.atomic_.Atomic_;
function testStorePointer(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _x:_internal.sync.atomic_test.Atomic_test_T__struct_10.T__struct_10 = ({ _before : (0 : stdgo.GoUIntptr), _i : @:default_value null, _after : (0 : stdgo.GoUIntptr) } : _internal.sync.atomic_test.Atomic_test_T__struct_10.T__struct_10);
        var _m:stdgo.GoUInt64 = (1003703129787580143i64 : stdgo.GoUInt64);
        var _magicptr = (_m : stdgo.GoUIntptr);
        _x._before = _magicptr;
        _x._after = _magicptr;
        for (__34 => _p in _internal.sync.atomic_test.Atomic_test__testPointers._testPointers()) {
            stdgo._internal.sync.atomic_.Atomic__storePointer.storePointer(stdgo.Go.pointer(_x._i), _p);
            if (_x._i != (_p)) {
                _t.fatalf(("x.i=%p p=%p" : stdgo.GoString), stdgo.Go.toInterface(_x._i), stdgo.Go.toInterface(_p));
            };
        };
        if (((_x._before != _magicptr) || (_x._after != _magicptr) : Bool)) {
            _t.fatalf(("wrong magic: %#x _ %#x != %#x _ %#x" : stdgo.GoString), stdgo.Go.toInterface(_x._before), stdgo.Go.toInterface(_x._after), stdgo.Go.toInterface(_magicptr), stdgo.Go.toInterface(_magicptr));
        };
    }