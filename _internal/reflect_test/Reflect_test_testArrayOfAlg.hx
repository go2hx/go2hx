package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testArrayOfAlg(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _at = (stdgo._internal.reflect.Reflect_arrayOf.arrayOf((6 : stdgo.GoInt), stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface((0 : stdgo.GoUInt8)))) : stdgo._internal.reflect.Reflect_Type_.Type_);
        var _v1 = (stdgo._internal.reflect.Reflect_new_.new_(_at).elem()?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        var _v2 = (stdgo._internal.reflect.Reflect_new_.new_(_at).elem()?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        if (_v1.interface_() != (_v1.interface_())) {
            _t.errorf(("constructed array %v not equal to itself" : stdgo.GoString), _v1.interface_());
        };
        _v1.index((5 : stdgo.GoInt)).set(stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((1 : stdgo.GoUInt8)))?.__copy__());
        {
            var __0 = (_v1.interface_() : stdgo.AnyInterface), __1 = (_v2.interface_() : stdgo.AnyInterface);
var _i2 = __1, _i1 = __0;
            if (_i1 == (_i2)) {
                _t.errorf(("constructed arrays %v and %v should not be equal" : stdgo.GoString), _i1, _i2);
            };
        };
        _at = stdgo._internal.reflect.Reflect_arrayOf.arrayOf((6 : stdgo.GoInt), stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface((null : stdgo.Slice<stdgo.GoInt>))));
        _v1 = stdgo._internal.reflect.Reflect_new_.new_(_at).elem()?.__copy__();
        _internal.reflect_test.Reflect_test__shouldPanic._shouldPanic(stdgo.Go.str()?.__copy__(), function():Void {
            var __blank__ = _v1.interface_() == (_v1.interface_());
        });
    }
