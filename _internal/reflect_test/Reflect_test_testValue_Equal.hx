package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testValue_Equal(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__6 => _test in _internal.reflect_test.Reflect_test__valueEqualTests._valueEqualTests) {
            var __0:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value), __1:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
var _u = __1, _v = __0;
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((_test._v : stdgo._internal.reflect.Reflect_Value.Value)) : stdgo._internal.reflect.Reflect_Value.Value), _1 : true };
                } catch(_) {
                    { _0 : ({} : stdgo._internal.reflect.Reflect_Value.Value), _1 : false };
                }, _vv = __tmp__._0, _ok = __tmp__._1;
                if (_ok) {
                    _v = _vv?.__copy__();
                } else {
                    _v = stdgo._internal.reflect.Reflect_valueOf.valueOf(_test._v)?.__copy__();
                };
            };
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((_test._u : stdgo._internal.reflect.Reflect_Value.Value)) : stdgo._internal.reflect.Reflect_Value.Value), _1 : true };
                } catch(_) {
                    { _0 : ({} : stdgo._internal.reflect.Reflect_Value.Value), _1 : false };
                }, _uu = __tmp__._0, _ok = __tmp__._1;
                if (_ok) {
                    _u = _uu?.__copy__();
                } else {
                    _u = stdgo._internal.reflect.Reflect_valueOf.valueOf(_test._u)?.__copy__();
                };
            };
            if (_test._vDeref) {
                _v = _v.elem()?.__copy__();
            };
            if (_test._uDeref) {
                _u = _u.elem()?.__copy__();
            };
            {
                var _r = (_v._typ_.equal(_u?.__copy__()) : Bool);
                if (_r != (_test._eq)) {
                    _t.errorf(("%s == %s got %t, want %t" : stdgo.GoString), stdgo.Go.toInterface(_v.type()), stdgo.Go.toInterface(_u.type()), stdgo.Go.toInterface(_r), stdgo.Go.toInterface(_test._eq));
                };
            };
        };
    }
