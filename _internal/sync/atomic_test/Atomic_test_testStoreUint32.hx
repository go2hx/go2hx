package _internal.sync.atomic_test;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.sync.atomic_.Atomic_;
function testStoreUint32(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _x:_internal.sync.atomic_test.Atomic_test_T__struct_2.T__struct_2 = ({ _before : (0 : stdgo.GoUInt32), _i : (0 : stdgo.GoUInt32), _after : (0 : stdgo.GoUInt32) } : _internal.sync.atomic_test.Atomic_test_T__struct_2.T__struct_2);
        _x._before = (233684719u32 : stdgo.GoUInt32);
        _x._after = (233684719u32 : stdgo.GoUInt32);
        var _v = ((0u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
        {
            var _delta = ((1u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
            stdgo.Go.cfor(((_delta + _delta : stdgo.GoUInt32) > _delta : Bool), _delta = (_delta + (_delta) : stdgo.GoUInt32), {
                stdgo._internal.sync.atomic_.Atomic__storeUint32.storeUint32(stdgo.Go.pointer(_x._i), _v);
                if (_x._i != (_v)) {
                    _t.fatalf(("delta=%d i=%d v=%d" : stdgo.GoString), stdgo.Go.toInterface(_delta), stdgo.Go.toInterface(_x._i), stdgo.Go.toInterface(_v));
                };
                _v = (_v + (_delta) : stdgo.GoUInt32);
            });
        };
        if (((_x._before != (233684719u32 : stdgo.GoUInt32)) || (_x._after != (233684719u32 : stdgo.GoUInt32)) : Bool)) {
            _t.fatalf(("wrong magic: %#x _ %#x != %#x _ %#x" : stdgo.GoString), stdgo.Go.toInterface(_x._before), stdgo.Go.toInterface(_x._after), stdgo.Go.toInterface((233684719 : stdgo.GoInt)), stdgo.Go.toInterface((233684719 : stdgo.GoInt)));
        };
    }