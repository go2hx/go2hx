package _internal.sync.atomic_test;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.sync.atomic_.Atomic_;
function testCompareAndSwapUint32Method(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _x:_internal.sync.atomic_test.Atomic_test_T__struct_3.T__struct_3 = ({ _before : (0 : stdgo.GoUInt32), _i : ({} : stdgo._internal.sync.atomic_.Atomic__Uint32.Uint32), _after : (0 : stdgo.GoUInt32) } : _internal.sync.atomic_test.Atomic_test_T__struct_3.T__struct_3);
        _x._before = (233684719u32 : stdgo.GoUInt32);
        _x._after = (233684719u32 : stdgo.GoUInt32);
        {
            var _val = ((1u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
            stdgo.Go.cfor(((_val + _val : stdgo.GoUInt32) > _val : Bool), _val = (_val + (_val) : stdgo.GoUInt32), {
                _x._i.store(_val);
                if (!_x._i.compareAndSwap(_val, (_val + (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32))) {
                    _t.fatalf(("should have swapped %#x %#x" : stdgo.GoString), stdgo.Go.toInterface(_val), stdgo.Go.toInterface((_val + (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32)));
                };
                if (_x._i.load() != ((_val + (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32))) {
                    _t.fatalf(("wrong x.i after swap: x.i=%#x val+1=%#x" : stdgo.GoString), stdgo.Go.toInterface(_x._i.load()), stdgo.Go.toInterface((_val + (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32)));
                };
                _x._i.store((_val + (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32));
                if (_x._i.compareAndSwap(_val, (_val + (2u32 : stdgo.GoUInt32) : stdgo.GoUInt32))) {
                    _t.fatalf(("should not have swapped %#x %#x" : stdgo.GoString), stdgo.Go.toInterface(_val), stdgo.Go.toInterface((_val + (2u32 : stdgo.GoUInt32) : stdgo.GoUInt32)));
                };
                if (_x._i.load() != ((_val + (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32))) {
                    _t.fatalf(("wrong x.i after swap: x.i=%#x val+1=%#x" : stdgo.GoString), stdgo.Go.toInterface(_x._i.load()), stdgo.Go.toInterface((_val + (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32)));
                };
            });
        };
        if (((_x._before != (233684719u32 : stdgo.GoUInt32)) || (_x._after != (233684719u32 : stdgo.GoUInt32)) : Bool)) {
            _t.fatalf(("wrong magic: %#x _ %#x != %#x _ %#x" : stdgo.GoString), stdgo.Go.toInterface(_x._before), stdgo.Go.toInterface(_x._after), stdgo.Go.toInterface((233684719 : stdgo.GoInt)), stdgo.Go.toInterface((233684719 : stdgo.GoInt)));
        };
    }
