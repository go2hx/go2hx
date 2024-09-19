package _internal.sync.atomic_test;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.sync.atomic_.Atomic_;
function testLoadInt32Method(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _x:_internal.sync.atomic_test.Atomic_test_T__struct_1.T__struct_1 = ({ _before : (0 : stdgo.GoInt32), _i : ({} : stdgo._internal.sync.atomic_.Atomic__Int32.Int32), _after : (0 : stdgo.GoInt32) } : _internal.sync.atomic_test.Atomic_test_T__struct_1.T__struct_1);
        _x._before = (233684719 : stdgo.GoInt32);
        _x._after = (233684719 : stdgo.GoInt32);
        var _want = ((0 : stdgo.GoInt32) : stdgo.GoInt32);
        {
            var _delta = ((1 : stdgo.GoInt32) : stdgo.GoInt32);
            stdgo.Go.cfor(((_delta + _delta : stdgo.GoInt32) > _delta : Bool), _delta = (_delta + (_delta) : stdgo.GoInt32), {
                var _k = (_x._i.load() : stdgo.GoInt32);
                if (_k != (_want)) {
                    _t.fatalf(("delta=%d i=%d k=%d want=%d" : stdgo.GoString), stdgo.Go.toInterface(_delta), stdgo.Go.toInterface(_x._i.load()), stdgo.Go.toInterface(_k), stdgo.Go.toInterface(_want));
                };
                _x._i.store((_k + _delta : stdgo.GoInt32));
                _want = (_k + _delta : stdgo.GoInt32);
            });
        };
        if (((_x._before != (233684719 : stdgo.GoInt32)) || (_x._after != (233684719 : stdgo.GoInt32)) : Bool)) {
            _t.fatalf(("wrong magic: %#x _ %#x != %#x _ %#x" : stdgo.GoString), stdgo.Go.toInterface(_x._before), stdgo.Go.toInterface(_x._after), stdgo.Go.toInterface((233684719 : stdgo.GoInt)), stdgo.Go.toInterface((233684719 : stdgo.GoInt)));
        };
    }