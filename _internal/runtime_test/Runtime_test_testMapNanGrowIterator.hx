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
function testMapNanGrowIterator(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _m = ({
            final x = new stdgo.GoMap.GoFloat64Map<stdgo.GoInt>();
            x.__defaultValue__ = () -> (0 : stdgo.GoInt);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoFloat64, stdgo.GoInt>);
        var _nan = (stdgo._internal.math.Math_naN.naN() : stdgo.GoFloat64);
        {};
        var _nKeys = ((96 : stdgo.GoFloat64) : stdgo.GoInt);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _nKeys : Bool), _i++, {
                _m[_nan] = _i;
            });
        };
        _m[(1 : stdgo.GoFloat64)] = (1 : stdgo.GoInt);
        if (_m != null) _m.remove((1 : stdgo.GoFloat64));
        var _found = ({
            final x = new stdgo.GoMap.GoIntMap<_internal.runtime_test.Runtime_test_T_struct0.T_struct0>();
            x.__defaultValue__ = () -> ({} : _internal.runtime_test.Runtime_test_T_struct0.T_struct0);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoInt, _internal.runtime_test.Runtime_test_T_struct0.T_struct0>);
        for (__6 => _v in _m) {
            if (_v != ((-1 : stdgo.GoInt))) {
                {
                    var __tmp__ = (_found != null && _found.exists(_v) ? { _0 : _found[_v], _1 : true } : { _0 : ({} : _internal.runtime_test.Runtime_test_T_struct0.T_struct0), _1 : false }), __7:_internal.runtime_test.Runtime_test_T_struct0.T_struct0 = __tmp__._0, _repeat:Bool = __tmp__._1;
                    if (_repeat) {
                        _t.fatalf(("repeat of value %d" : stdgo.GoString), stdgo.Go.toInterface(_v));
                    };
                };
                _found[_v] = (new _internal.runtime_test.Runtime_test_T_struct0.T_struct0() : _internal.runtime_test.Runtime_test_T_struct0.T_struct0);
            };
            if ((_found.length) == ((_nKeys / (2 : stdgo.GoInt) : stdgo.GoInt))) {
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < (16 : stdgo.GoInt) : Bool), _i++, {
                        if (_m != null) _m.remove((1 : stdgo.GoFloat64));
                    });
                };
            };
        };
        if ((_found.length) != (_nKeys)) {
            _t.fatalf(("missing value" : stdgo.GoString));
        };
    }
