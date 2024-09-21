package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testMap(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _m = ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.GoInt>();
            x.__defaultValue__ = () -> (0 : stdgo.GoInt);
            x.set(("a" : stdgo.GoString), (1 : stdgo.GoInt));
x.set(("b" : stdgo.GoString), (2 : stdgo.GoInt));
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>);
        var _mv = (stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_m))?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        {
            var _n = (_mv.len() : stdgo.GoInt);
            if (_n != ((_m.length))) {
                _t.errorf(("Len = %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface((_m.length)));
            };
        };
        var _keys = _mv.mapKeys();
        var _newmap = (stdgo._internal.reflect.Reflect_makeMap.makeMap(_mv.type())?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        for (_k => _v in _m) {
            var _seen = (false : Bool);
            for (__6 => _kv in _keys) {
                if ((_kv.string() : stdgo.GoString) == (_k)) {
                    _seen = true;
                    break;
                };
            };
            if (!_seen) {
                _t.errorf(("Missing key %q" : stdgo.GoString), stdgo.Go.toInterface(_k));
            };
            var _vv = (_mv.mapIndex(stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_k))?.__copy__())?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
            {
                var _vi = (_vv.int_() : stdgo.GoInt64);
                if (_vi != ((_v : stdgo.GoInt64))) {
                    _t.errorf(("Key %q: have value %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_k), stdgo.Go.toInterface(_vi), stdgo.Go.toInterface(_v));
                };
            };
            _newmap.setMapIndex(stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_k))?.__copy__(), stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_v))?.__copy__());
        };
        var _vv = (_mv.mapIndex(stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(("not-present" : stdgo.GoString)))?.__copy__())?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        if (_vv.isValid()) {
            _t.errorf(("Invalid key: got non-nil value %s" : stdgo.GoString), stdgo.Go.toInterface(_internal.reflect_test.Reflect_test__valueToString._valueToString(_vv?.__copy__())));
        };
        var _newm = (stdgo.Go.typeAssert((_newmap.interface_() : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>)) : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>);
        if ((_newm.length) != ((_m.length))) {
            _t.errorf(("length after copy: newm=%d, m=%d" : stdgo.GoString), stdgo.Go.toInterface((_newm.length)), stdgo.Go.toInterface((_m.length)));
        };
        for (_k => _v in _newm) {
            var __tmp__ = (_m != null && _m.exists(_k?.__copy__()) ? { _0 : _m[_k?.__copy__()], _1 : true } : { _0 : (0 : stdgo.GoInt), _1 : false }), _mv:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_mv != (_v)) {
                _t.errorf(("newm[%q] = %d, but m[%q] = %d, %v" : stdgo.GoString), stdgo.Go.toInterface(_k), stdgo.Go.toInterface(_v), stdgo.Go.toInterface(_k), stdgo.Go.toInterface(_mv), stdgo.Go.toInterface(_ok));
            };
        };
        _newmap.setMapIndex(stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(("a" : stdgo.GoString)))?.__copy__(), (new stdgo._internal.reflect.Reflect_Value.Value() : stdgo._internal.reflect.Reflect_Value.Value));
        var __tmp__ = (_newm != null && _newm.exists(("a" : stdgo.GoString)) ? { _0 : _newm[("a" : stdgo.GoString)], _1 : true } : { _0 : (0 : stdgo.GoInt), _1 : false }), _v:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
        if (_ok) {
            _t.errorf(("newm[\"a\"] = %d after delete" : stdgo.GoString), stdgo.Go.toInterface(_v));
        };
        _mv = stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((stdgo.Go.setRef(_m) : stdgo.Ref<stdgo.GoMap<stdgo.GoString, stdgo.GoInt>>))).elem()?.__copy__();
        _mv.set(stdgo._internal.reflect.Reflect_zero.zero(_mv.type())?.__copy__());
        if (_m != null) {
            _t.errorf(("mv.Set(nil) failed" : stdgo.GoString));
        };
        {};
        _internal.reflect_test.Reflect_test__shouldPanic._shouldPanic(("not assignable" : stdgo.GoString), function():Void {
            _mv.mapIndex(stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((("key" : stdgo.GoString) : _internal.reflect_test.Reflect_test_T_testMap___localname___S_39002.T_testMap___localname___S_39002)))?.__copy__());
        });
        _internal.reflect_test.Reflect_test__shouldPanic._shouldPanic(("not assignable" : stdgo.GoString), function():Void {
            _mv.setMapIndex(stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((("key" : stdgo.GoString) : _internal.reflect_test.Reflect_test_T_testMap___localname___S_39002.T_testMap___localname___S_39002)))?.__copy__(), stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((0 : stdgo.GoInt)))?.__copy__());
        });
    }
