package _internal.sync.atomic_test;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.sync.atomic_.Atomic_;
function testAddInt64(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _x:_internal.sync.atomic_test.Atomic_test_T__struct_4.T__struct_4 = ({ _before : (0 : stdgo.GoInt64), _i : (0 : stdgo.GoInt64), _after : (0 : stdgo.GoInt64) } : _internal.sync.atomic_test.Atomic_test_T__struct_4.T__struct_4);
        var _magic64 = ((1003703129787580143i64 : stdgo.GoInt64) : stdgo.GoInt64);
        _x._before = _magic64;
        _x._after = _magic64;
        var _j:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        {
            var _delta = ((1i64 : stdgo.GoInt64) : stdgo.GoInt64);
            stdgo.Go.cfor(((_delta + _delta : stdgo.GoInt64) > _delta : Bool), _delta = (_delta + (_delta) : stdgo.GoInt64), {
                var _k = (stdgo._internal.sync.atomic_.Atomic__addInt64.addInt64(stdgo.Go.pointer(_x._i), _delta) : stdgo.GoInt64);
                _j = (_j + (_delta) : stdgo.GoInt64);
                if (((_x._i != _j) || (_k != _j) : Bool)) {
                    _t.fatalf(("delta=%d i=%d j=%d k=%d" : stdgo.GoString), stdgo.Go.toInterface(_delta), stdgo.Go.toInterface(_x._i), stdgo.Go.toInterface(_j), stdgo.Go.toInterface(_k));
                };
            });
        };
        if (((_x._before != _magic64) || (_x._after != _magic64) : Bool)) {
            _t.fatalf(("wrong magic: %#x _ %#x != %#x _ %#x" : stdgo.GoString), stdgo.Go.toInterface(_x._before), stdgo.Go.toInterface(_x._after), stdgo.Go.toInterface(_magic64), stdgo.Go.toInterface(_magic64));
        };
    }
