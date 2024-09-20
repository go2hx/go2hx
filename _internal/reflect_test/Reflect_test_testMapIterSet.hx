package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testMapIterSet(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _m = ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.AnyInterface>();
            x.__defaultValue__ = () -> (null : stdgo.AnyInterface);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>);
        for (__6 => _tt in _internal.reflect_test.Reflect_test__valueTests._valueTests) {
            _m[_tt._s] = _tt._i;
        };
        var _v = (stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_m))?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        var _k = (stdgo._internal.reflect.Reflect_new_.new_(_v.type().key()).elem()?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        var _e = (stdgo._internal.reflect.Reflect_new_.new_(_v.type().elem()).elem()?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        var _iter = _v.mapRange();
        while (_iter.next()) {
            _k.setIterKey(_iter);
            _e.setIterValue(_iter);
            var _want = (_m[(_k.string() : stdgo.GoString)] ?? (null : stdgo.AnyInterface) : stdgo.AnyInterface);
            var _got = (_e.interface_() : stdgo.AnyInterface);
            if (_got != (_want)) {
                _t.errorf(("%q: want (%T) %v, got (%T) %v" : stdgo.GoString), stdgo.Go.toInterface((_k.string() : stdgo.GoString)), _want, _want, _got, _got);
            };
            {
                var __0 = (_internal.reflect_test.Reflect_test__valueToString._valueToString(_k?.__copy__())?.__copy__() : stdgo.GoString), __1 = (_internal.reflect_test.Reflect_test__valueToString._valueToString(_iter.key()?.__copy__())?.__copy__() : stdgo.GoString);
var _key = __1, _setkey = __0;
                if (_setkey != (_key)) {
                    _t.errorf(("MapIter.Key() = %q, MapIter.SetKey() = %q" : stdgo.GoString), stdgo.Go.toInterface(_key), stdgo.Go.toInterface(_setkey));
                };
            };
            {
                var __0 = (_internal.reflect_test.Reflect_test__valueToString._valueToString(_e?.__copy__())?.__copy__() : stdgo.GoString), __1 = (_internal.reflect_test.Reflect_test__valueToString._valueToString(_iter.value()?.__copy__())?.__copy__() : stdgo.GoString);
var _val = __1, _setval = __0;
                if (_setval != (_val)) {
                    _t.errorf(("MapIter.Value() = %q, MapIter.SetValue() = %q" : stdgo.GoString), stdgo.Go.toInterface(_val), stdgo.Go.toInterface(_setval));
                };
            };
        };
        if (stdgo._internal.internal.testenv.Testenv_optimizationOff.optimizationOff()) {
            return;
        };
        var _got = (stdgo._internal.testing.Testing_allocsPerRun.allocsPerRun((10 : stdgo.GoInt), function():Void {
            var _iter = _v.mapRange();
            while (_iter.next()) {
                _k.setIterKey(_iter);
                _e.setIterValue(_iter);
            };
        }) : stdgo.GoInt);
        var _want = (0 : stdgo.GoInt);
        if (_got != (_want)) {
            _t.errorf(("wanted %d alloc, got %d" : stdgo.GoString), stdgo.Go.toInterface(_want), stdgo.Go.toInterface(_got));
        };
    }
