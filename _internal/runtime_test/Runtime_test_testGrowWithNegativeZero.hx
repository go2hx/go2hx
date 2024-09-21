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
function testGrowWithNegativeZero(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _negzero = (stdgo._internal.math.Math_copysign.copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64)) : stdgo.GoFloat64);
        var _m = ({
            final x = new stdgo.GoMap.GoObjectMap<_internal.runtime_test.Runtime_test_FloatInt.FloatInt, stdgo.GoInt>();
            x.t = new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.Reflect.GoType.named("_internal.runtime_test.Runtime_test_FloatInt.FloatInt", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "_x", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(float64_kind) }, optional : false }, { name : "_y", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int_kind) }, optional : false }]), false, { get : () -> null }));
            x.__defaultValue__ = () -> (0 : stdgo.GoInt);
            {};
            cast x;
        } : stdgo.GoMap<_internal.runtime_test.Runtime_test_FloatInt.FloatInt, stdgo.GoInt>);
        _m[(new _internal.runtime_test.Runtime_test_FloatInt.FloatInt((0 : stdgo.GoFloat64), (0 : stdgo.GoInt)) : _internal.runtime_test.Runtime_test_FloatInt.FloatInt)] = (1 : stdgo.GoInt);
        _m[(new _internal.runtime_test.Runtime_test_FloatInt.FloatInt((0 : stdgo.GoFloat64), (1 : stdgo.GoInt)) : _internal.runtime_test.Runtime_test_FloatInt.FloatInt)] = ((_m[(new _internal.runtime_test.Runtime_test_FloatInt.FloatInt((0 : stdgo.GoFloat64), (1 : stdgo.GoInt)) : _internal.runtime_test.Runtime_test_FloatInt.FloatInt)] ?? (0 : stdgo.GoInt)) + ((2 : stdgo.GoInt)) : stdgo.GoInt);
        _m[(new _internal.runtime_test.Runtime_test_FloatInt.FloatInt((0 : stdgo.GoFloat64), (2 : stdgo.GoInt)) : _internal.runtime_test.Runtime_test_FloatInt.FloatInt)] = ((_m[(new _internal.runtime_test.Runtime_test_FloatInt.FloatInt((0 : stdgo.GoFloat64), (2 : stdgo.GoInt)) : _internal.runtime_test.Runtime_test_FloatInt.FloatInt)] ?? (0 : stdgo.GoInt)) + ((4 : stdgo.GoInt)) : stdgo.GoInt);
        _m[(new _internal.runtime_test.Runtime_test_FloatInt.FloatInt((0 : stdgo.GoFloat64), (3 : stdgo.GoInt)) : _internal.runtime_test.Runtime_test_FloatInt.FloatInt)] = (8 : stdgo.GoInt);
        var _growflag = (true : Bool);
        var _s = (0 : stdgo.GoInt);
        var _cnt = (0 : stdgo.GoInt);
        var _negcnt = (0 : stdgo.GoInt);
        for (_k => _v in _m) {
            if (_v == ((0 : stdgo.GoInt))) {
                continue;
            };
            _cnt++;
            if ((stdgo._internal.math.Math_copysign.copysign((1 : stdgo.GoFloat64), _k._x) < (0 : stdgo.GoFloat64) : Bool)) {
                if ((_v & (16 : stdgo.GoInt) : stdgo.GoInt) == ((0 : stdgo.GoInt))) {
                    _t.error(stdgo.Go.toInterface(("key/value not updated together 1" : stdgo.GoString)));
                };
                _negcnt++;
                _s = (_s | ((_v & (15 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
            } else {
                if ((_v & (16 : stdgo.GoInt) : stdgo.GoInt) == ((16 : stdgo.GoInt))) {
                    _t.error(stdgo.Go.toInterface(("key/value not updated together 2" : stdgo.GoString)), stdgo.Go.toInterface(_k), stdgo.Go.toInterface(_v));
                };
                _s = (_s | (_v) : stdgo.GoInt);
            };
            if (_growflag) {
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < (100 : stdgo.GoInt) : Bool), _i++, {
                        _m[(new _internal.runtime_test.Runtime_test_FloatInt.FloatInt((3 : stdgo.GoFloat64), _i) : _internal.runtime_test.Runtime_test_FloatInt.FloatInt)] = (0 : stdgo.GoInt);
                    });
                };
                _m[(new _internal.runtime_test.Runtime_test_FloatInt.FloatInt(_negzero, (0 : stdgo.GoInt)) : _internal.runtime_test.Runtime_test_FloatInt.FloatInt)] = (17 : stdgo.GoInt);
                _m[(new _internal.runtime_test.Runtime_test_FloatInt.FloatInt(_negzero, (1 : stdgo.GoInt)) : _internal.runtime_test.Runtime_test_FloatInt.FloatInt)] = (18 : stdgo.GoInt);
                _m[(new _internal.runtime_test.Runtime_test_FloatInt.FloatInt(_negzero, (2 : stdgo.GoInt)) : _internal.runtime_test.Runtime_test_FloatInt.FloatInt)] = (20 : stdgo.GoInt);
                _m[(new _internal.runtime_test.Runtime_test_FloatInt.FloatInt(_negzero, (3 : stdgo.GoInt)) : _internal.runtime_test.Runtime_test_FloatInt.FloatInt)] = (24 : stdgo.GoInt);
                _growflag = false;
            };
        };
        if (_s != ((15 : stdgo.GoInt))) {
            _t.error(stdgo.Go.toInterface(("entry missing" : stdgo.GoString)), stdgo.Go.toInterface(_s));
        };
        if (_cnt != ((4 : stdgo.GoInt))) {
            _t.error(stdgo.Go.toInterface(("wrong number of entries returned by iterator" : stdgo.GoString)), stdgo.Go.toInterface(_cnt));
        };
        if (_negcnt != ((3 : stdgo.GoInt))) {
            _t.error(stdgo.Go.toInterface(("update to negzero missed by iteration" : stdgo.GoString)), stdgo.Go.toInterface(_negcnt));
        };
    }
