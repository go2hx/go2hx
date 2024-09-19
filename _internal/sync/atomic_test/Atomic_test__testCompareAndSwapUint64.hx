package _internal.sync.atomic_test;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.sync.atomic_.Atomic_;
function _testCompareAndSwapUint64(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _cas:(stdgo.Pointer<stdgo.GoUInt64>, stdgo.GoUInt64, stdgo.GoUInt64) -> Bool):Void {
        var _x:_internal.sync.atomic_test.Atomic_test_T__struct_6.T__struct_6 = ({ _before : (0 : stdgo.GoUInt64), _i : (0 : stdgo.GoUInt64), _after : (0 : stdgo.GoUInt64) } : _internal.sync.atomic_test.Atomic_test_T__struct_6.T__struct_6);
        var _magic64 = ((1003703129787580143i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        _x._before = _magic64;
        _x._after = _magic64;
        {
            var _val = ((1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
            stdgo.Go.cfor(((_val + _val : stdgo.GoUInt64) > _val : Bool), _val = (_val + (_val) : stdgo.GoUInt64), {
                _x._i = _val;
                if (!_cas(stdgo.Go.pointer(_x._i), _val, (_val + (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64))) {
                    _t.fatalf(("should have swapped %#x %#x" : stdgo.GoString), stdgo.Go.toInterface(_val), stdgo.Go.toInterface((_val + (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64)));
                };
                if (_x._i != ((_val + (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64))) {
                    _t.fatalf(("wrong x.i after swap: x.i=%#x val+1=%#x" : stdgo.GoString), stdgo.Go.toInterface(_x._i), stdgo.Go.toInterface((_val + (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64)));
                };
                _x._i = (_val + (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                if (_cas(stdgo.Go.pointer(_x._i), _val, (_val + (2i64 : stdgo.GoUInt64) : stdgo.GoUInt64))) {
                    _t.fatalf(("should not have swapped %#x %#x" : stdgo.GoString), stdgo.Go.toInterface(_val), stdgo.Go.toInterface((_val + (2i64 : stdgo.GoUInt64) : stdgo.GoUInt64)));
                };
                if (_x._i != ((_val + (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64))) {
                    _t.fatalf(("wrong x.i after swap: x.i=%#x val+1=%#x" : stdgo.GoString), stdgo.Go.toInterface(_x._i), stdgo.Go.toInterface((_val + (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64)));
                };
            });
        };
        if (((_x._before != _magic64) || (_x._after != _magic64) : Bool)) {
            _t.fatalf(("wrong magic: %#x _ %#x != %#x _ %#x" : stdgo.GoString), stdgo.Go.toInterface(_x._before), stdgo.Go.toInterface(_x._after), stdgo.Go.toInterface(_magic64), stdgo.Go.toInterface(_magic64));
        };
    }