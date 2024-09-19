package _internal.sync.atomic_test;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.sync.atomic_.Atomic_;
function testCompareAndSwapInt32(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _x:_internal.sync.atomic_test.Atomic_test_T__struct_0.T__struct_0 = ({ _before : (0 : stdgo.GoInt32), _i : (0 : stdgo.GoInt32), _after : (0 : stdgo.GoInt32) } : _internal.sync.atomic_test.Atomic_test_T__struct_0.T__struct_0);
        _x._before = (233684719 : stdgo.GoInt32);
        _x._after = (233684719 : stdgo.GoInt32);
        {
            var _val = ((1 : stdgo.GoInt32) : stdgo.GoInt32);
            stdgo.Go.cfor(((_val + _val : stdgo.GoInt32) > _val : Bool), _val = (_val + (_val) : stdgo.GoInt32), {
                _x._i = _val;
                if (!stdgo._internal.sync.atomic_.Atomic__compareAndSwapInt32.compareAndSwapInt32(stdgo.Go.pointer(_x._i), _val, (_val + (1 : stdgo.GoInt32) : stdgo.GoInt32))) {
                    _t.fatalf(("should have swapped %#x %#x" : stdgo.GoString), stdgo.Go.toInterface(_val), stdgo.Go.toInterface((_val + (1 : stdgo.GoInt32) : stdgo.GoInt32)));
                };
                if (_x._i != ((_val + (1 : stdgo.GoInt32) : stdgo.GoInt32))) {
                    _t.fatalf(("wrong x.i after swap: x.i=%#x val+1=%#x" : stdgo.GoString), stdgo.Go.toInterface(_x._i), stdgo.Go.toInterface((_val + (1 : stdgo.GoInt32) : stdgo.GoInt32)));
                };
                _x._i = (_val + (1 : stdgo.GoInt32) : stdgo.GoInt32);
                if (stdgo._internal.sync.atomic_.Atomic__compareAndSwapInt32.compareAndSwapInt32(stdgo.Go.pointer(_x._i), _val, (_val + (2 : stdgo.GoInt32) : stdgo.GoInt32))) {
                    _t.fatalf(("should not have swapped %#x %#x" : stdgo.GoString), stdgo.Go.toInterface(_val), stdgo.Go.toInterface((_val + (2 : stdgo.GoInt32) : stdgo.GoInt32)));
                };
                if (_x._i != ((_val + (1 : stdgo.GoInt32) : stdgo.GoInt32))) {
                    _t.fatalf(("wrong x.i after swap: x.i=%#x val+1=%#x" : stdgo.GoString), stdgo.Go.toInterface(_x._i), stdgo.Go.toInterface((_val + (1 : stdgo.GoInt32) : stdgo.GoInt32)));
                };
            });
        };
        if (((_x._before != (233684719 : stdgo.GoInt32)) || (_x._after != (233684719 : stdgo.GoInt32)) : Bool)) {
            _t.fatalf(("wrong magic: %#x _ %#x != %#x _ %#x" : stdgo.GoString), stdgo.Go.toInterface(_x._before), stdgo.Go.toInterface(_x._after), stdgo.Go.toInterface((233684719 : stdgo.GoInt)), stdgo.Go.toInterface((233684719 : stdgo.GoInt)));
        };
    }