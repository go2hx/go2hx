package _internal.runtime_test;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.unsafe.Unsafe;
function testMapHugeZero(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {};
        var _m = ({
            final x = new stdgo.GoMap.GoIntMap<_internal.runtime_test.Runtime_test_T_testMapHugeZero___localname___T_8190.T_testMapHugeZero___localname___T_8190>();
            x.__defaultValue__ = () -> new _internal.runtime_test.Runtime_test_T_testMapHugeZero___localname___T_8190.T_testMapHugeZero___localname___T_8190(4000, 4000, ...[for (i in 0 ... 4000) (0 : stdgo.GoUInt8)]);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoInt, _internal.runtime_test.Runtime_test_T_testMapHugeZero___localname___T_8190.T_testMapHugeZero___localname___T_8190>);
        var _x = ((_m[(0 : stdgo.GoInt)] ?? new _internal.runtime_test.Runtime_test_T_testMapHugeZero___localname___T_8190.T_testMapHugeZero___localname___T_8190(4000, 4000, ...[for (i in 0 ... 4000) (0 : stdgo.GoUInt8)]))?.__copy__() : _internal.runtime_test.Runtime_test_T_testMapHugeZero___localname___T_8190.T_testMapHugeZero___localname___T_8190);
        if (stdgo.Go.toInterface(_x) != stdgo.Go.toInterface(((new stdgo.GoArray<stdgo.GoUInt8>(4000, 4000, ...[]).__setNumber32__() : _internal.runtime_test.Runtime_test_T_testMapHugeZero___localname___T_8190.T_testMapHugeZero___localname___T_8190)))) {
            _t.errorf(("map value not zero" : stdgo.GoString));
        };
        var __tmp__ = (_m != null && _m.exists((0 : stdgo.GoInt)) ? { _0 : _m[(0 : stdgo.GoInt)], _1 : true } : { _0 : new _internal.runtime_test.Runtime_test_T_testMapHugeZero___localname___T_8190.T_testMapHugeZero___localname___T_8190(4000, 4000, ...[for (i in 0 ... 4000) (0 : stdgo.GoUInt8)]), _1 : false }), _y:_internal.runtime_test.Runtime_test_T_testMapHugeZero___localname___T_8190.T_testMapHugeZero___localname___T_8190 = __tmp__._0, _ok:Bool = __tmp__._1;
        if (_ok) {
            _t.errorf(("map value should be missing" : stdgo.GoString));
        };
        if (stdgo.Go.toInterface(_y) != stdgo.Go.toInterface(((new stdgo.GoArray<stdgo.GoUInt8>(4000, 4000, ...[]).__setNumber32__() : _internal.runtime_test.Runtime_test_T_testMapHugeZero___localname___T_8190.T_testMapHugeZero___localname___T_8190)))) {
            _t.errorf(("map value not zero" : stdgo.GoString));
        };
    }
