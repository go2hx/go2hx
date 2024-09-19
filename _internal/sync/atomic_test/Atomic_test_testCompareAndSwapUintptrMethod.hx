package _internal.sync.atomic_test;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.sync.atomic_.Atomic_;
function testCompareAndSwapUintptrMethod(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _x:_internal.sync.atomic_test.Atomic_test_T__struct_9.T__struct_9 = ({ _before : (0 : stdgo.GoUIntptr), _i : ({} : stdgo._internal.sync.atomic_.Atomic__Uintptr.Uintptr), _after : (0 : stdgo.GoUIntptr) } : _internal.sync.atomic_test.Atomic_test_T__struct_9.T__struct_9);
        var _m:stdgo.GoUInt64 = (1003703129787580143i64 : stdgo.GoUInt64);
        var _magicptr = (_m : stdgo.GoUIntptr);
        _x._before = _magicptr;
        _x._after = _magicptr;
        {
            var _val = ((1 : stdgo.GoUIntptr) : stdgo.GoUIntptr);
            stdgo.Go.cfor(((_val + _val : stdgo.GoUIntptr) > _val : Bool), _val = (_val + (_val) : stdgo.GoUIntptr), {
                _x._i.store(_val);
                if (!_x._i.compareAndSwap(_val, (_val + (1 : stdgo.GoUIntptr) : stdgo.GoUIntptr))) {
                    _t.fatalf(("should have swapped %#x %#x" : stdgo.GoString), stdgo.Go.toInterface(_val), stdgo.Go.toInterface((_val + (1 : stdgo.GoUIntptr) : stdgo.GoUIntptr)));
                };
                if (_x._i.load() != ((_val + (1 : stdgo.GoUIntptr) : stdgo.GoUIntptr))) {
                    _t.fatalf(("wrong x.i after swap: x.i=%#x val+1=%#x" : stdgo.GoString), stdgo.Go.toInterface(_x._i.load()), stdgo.Go.toInterface((_val + (1 : stdgo.GoUIntptr) : stdgo.GoUIntptr)));
                };
                _x._i.store((_val + (1 : stdgo.GoUIntptr) : stdgo.GoUIntptr));
                if (_x._i.compareAndSwap(_val, (_val + (2 : stdgo.GoUIntptr) : stdgo.GoUIntptr))) {
                    _t.fatalf(("should not have swapped %#x %#x" : stdgo.GoString), stdgo.Go.toInterface(_val), stdgo.Go.toInterface((_val + (2 : stdgo.GoUIntptr) : stdgo.GoUIntptr)));
                };
                if (_x._i.load() != ((_val + (1 : stdgo.GoUIntptr) : stdgo.GoUIntptr))) {
                    _t.fatalf(("wrong x.i after swap: x.i=%#x val+1=%#x" : stdgo.GoString), stdgo.Go.toInterface(_x._i.load()), stdgo.Go.toInterface((_val + (1 : stdgo.GoUIntptr) : stdgo.GoUIntptr)));
                };
            });
        };
        if (((_x._before != _magicptr) || (_x._after != _magicptr) : Bool)) {
            _t.fatalf(("wrong magic: %#x _ %#x != %#x _ %#x" : stdgo.GoString), stdgo.Go.toInterface(_x._before), stdgo.Go.toInterface(_x._after), stdgo.Go.toInterface((_magicptr : stdgo.GoUIntptr)), stdgo.Go.toInterface((_magicptr : stdgo.GoUIntptr)));
        };
    }
