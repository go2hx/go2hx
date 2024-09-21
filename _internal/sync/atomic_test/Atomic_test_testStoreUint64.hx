package _internal.sync.atomic_test;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.sync.atomic_.Atomic_;
function testStoreUint64(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _x:_internal.sync.atomic_test.Atomic_test_T__struct_6.T__struct_6 = ({ _before : (0 : stdgo.GoUInt64), _i : (0 : stdgo.GoUInt64), _after : (0 : stdgo.GoUInt64) } : _internal.sync.atomic_test.Atomic_test_T__struct_6.T__struct_6);
        var _magic64 = ((1003703129787580143i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        _x._before = _magic64;
        _x._after = _magic64;
        var _v = ((0i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        {
            var _delta = ((1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
            stdgo.Go.cfor(((_delta + _delta : stdgo.GoUInt64) > _delta : Bool), _delta = (_delta + (_delta) : stdgo.GoUInt64), {
                stdgo._internal.sync.atomic_.Atomic__storeUint64.storeUint64(stdgo.Go.pointer(_x._i), _v);
                if (_x._i != (_v)) {
                    _t.fatalf(("delta=%d i=%d v=%d" : stdgo.GoString), stdgo.Go.toInterface(_delta), stdgo.Go.toInterface(_x._i), stdgo.Go.toInterface(_v));
                };
                _v = (_v + (_delta) : stdgo.GoUInt64);
            });
        };
        if (((_x._before != _magic64) || (_x._after != _magic64) : Bool)) {
            _t.fatalf(("wrong magic: %#x _ %#x != %#x _ %#x" : stdgo.GoString), stdgo.Go.toInterface(_x._before), stdgo.Go.toInterface(_x._after), stdgo.Go.toInterface(_magic64), stdgo.Go.toInterface(_magic64));
        };
    }
