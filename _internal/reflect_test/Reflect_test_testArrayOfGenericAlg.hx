package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testArrayOfGenericAlg(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _at1 = (stdgo._internal.reflect.Reflect_arrayOf.arrayOf((5 : stdgo.GoInt), stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface((stdgo.Go.str() : stdgo.GoString)))) : stdgo._internal.reflect.Reflect_Type_.Type_);
        var _at = (stdgo._internal.reflect.Reflect_arrayOf.arrayOf((6 : stdgo.GoInt), _at1) : stdgo._internal.reflect.Reflect_Type_.Type_);
        var _v1 = (stdgo._internal.reflect.Reflect_new_.new_(_at).elem()?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        var _v2 = (stdgo._internal.reflect.Reflect_new_.new_(_at).elem()?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        if (_v1.interface_() != (_v1.interface_())) {
            _t.errorf(("constructed array %v not equal to itself" : stdgo.GoString), _v1.interface_());
        };
        _v1.index((0 : stdgo.GoInt)).index((0 : stdgo.GoInt)).set(stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(("abc" : stdgo.GoString)))?.__copy__());
        _v2.index((0 : stdgo.GoInt)).index((0 : stdgo.GoInt)).set(stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(("efg" : stdgo.GoString)))?.__copy__());
        {
            var __0 = (_v1.interface_() : stdgo.AnyInterface), __1 = (_v2.interface_() : stdgo.AnyInterface);
var _i2 = __1, _i1 = __0;
            if (_i1 == (_i2)) {
                _t.errorf(("constructed arrays %v and %v should not be equal" : stdgo.GoString), _i1, _i2);
            };
        };
        _v1.index((0 : stdgo.GoInt)).index((0 : stdgo.GoInt)).set(stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(("abc" : stdgo.GoString)))?.__copy__());
        _v2.index((0 : stdgo.GoInt)).index((0 : stdgo.GoInt)).set(stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(((((_v1.index((0 : stdgo.GoInt)).index((0 : stdgo.GoInt)).string() : stdgo.GoString) + (" " : stdgo.GoString)?.__copy__() : stdgo.GoString)).__slice__(0, (3 : stdgo.GoInt)) : stdgo.GoString)))?.__copy__());
        {
            var __0 = (_v1.interface_() : stdgo.AnyInterface), __1 = (_v2.interface_() : stdgo.AnyInterface);
var _i2 = __1, _i1 = __0;
            if (_i1 != (_i2)) {
                _t.errorf(("constructed arrays %v and %v should be equal" : stdgo.GoString), _i1, _i2);
            };
        };
        var _m = (stdgo._internal.reflect.Reflect_makeMap.makeMap(stdgo._internal.reflect.Reflect_mapOf.mapOf(_at, stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface((0 : stdgo.GoInt)))))?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        _m.setMapIndex(_v1?.__copy__(), stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((1 : stdgo.GoInt)))?.__copy__());
        {
            var __0 = (_v1.interface_() : stdgo.AnyInterface), __1 = (_v2.interface_() : stdgo.AnyInterface);
var _i2 = __1, _i1 = __0;
            if (!_m.mapIndex(_v2?.__copy__()).isValid()) {
                _t.errorf(("constructed arrays %v and %v have different hashes" : stdgo.GoString), _i1, _i2);
            };
        };
    }
