package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testInterfaceValue(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _inter:_internal.reflect_test.Reflect_test_T__struct_43.T__struct_43 = ({ e : (null : stdgo.AnyInterface) } : _internal.reflect_test.Reflect_test_T__struct_43.T__struct_43);
        _inter.e = stdgo.Go.toInterface((123.456 : stdgo.GoFloat64));
        var _v1 = (stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_inter) : stdgo.Ref<_internal.reflect_test.Reflect_test_T__struct_43.T__struct_43>))))?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        var _v2 = (_v1.elem().field((0 : stdgo.GoInt))?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        _internal.reflect_test.Reflect_test__assert._assert(_t, (_v2.type().string() : stdgo.GoString)?.__copy__(), ("interface {}" : stdgo.GoString));
        var _v3 = (_v2.elem()?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        _internal.reflect_test.Reflect_test__assert._assert(_t, (_v3.type().string() : stdgo.GoString)?.__copy__(), ("float64" : stdgo.GoString));
        var _i3 = (_v2.interface_() : stdgo.AnyInterface);
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((_i3 : stdgo.GoFloat64)) : stdgo.GoFloat64), _1 : true };
            } catch(_) {
                { _0 : (0 : stdgo.GoFloat64), _1 : false };
            }, __6 = __tmp__._0, _ok = __tmp__._1;
            if (!_ok) {
                _t.error(stdgo.Go.toInterface(("v2.Interface() did not return float64, got " : stdgo.GoString)), stdgo.Go.toInterface(stdgo._internal.reflect.Reflect_typeOf.typeOf(_i3)));
            };
        };
    }
