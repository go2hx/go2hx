package _internal.sync.atomic_test;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.sync.atomic_.Atomic_;
function testSwapInt32(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _x:_internal.sync.atomic_test.Atomic_test_T__struct_0.T__struct_0 = ({ _before : (0 : stdgo.GoInt32), _i : (0 : stdgo.GoInt32), _after : (0 : stdgo.GoInt32) } : _internal.sync.atomic_test.Atomic_test_T__struct_0.T__struct_0);
        _x._before = (233684719 : stdgo.GoInt32);
        _x._after = (233684719 : stdgo.GoInt32);
        var _j:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        {
            var _delta = ((1 : stdgo.GoInt32) : stdgo.GoInt32);
            stdgo.Go.cfor(((_delta + _delta : stdgo.GoInt32) > _delta : Bool), _delta = (_delta + (_delta) : stdgo.GoInt32), {
                var _k = (stdgo._internal.sync.atomic_.Atomic__swapInt32.swapInt32(stdgo.Go.pointer(_x._i), _delta) : stdgo.GoInt32);
                if (((_x._i != _delta) || (_k != _j) : Bool)) {
                    _t.fatalf(("delta=%d i=%d j=%d k=%d" : stdgo.GoString), stdgo.Go.toInterface(_delta), stdgo.Go.toInterface(_x._i), stdgo.Go.toInterface(_j), stdgo.Go.toInterface(_k));
                };
                _j = _delta;
            });
        };
        if (((_x._before != (233684719 : stdgo.GoInt32)) || (_x._after != (233684719 : stdgo.GoInt32)) : Bool)) {
            _t.fatalf(("wrong magic: %#x _ %#x != %#x _ %#x" : stdgo.GoString), stdgo.Go.toInterface(_x._before), stdgo.Go.toInterface(_x._after), stdgo.Go.toInterface((233684719 : stdgo.GoInt)), stdgo.Go.toInterface((233684719 : stdgo.GoInt)));
        };
    }
