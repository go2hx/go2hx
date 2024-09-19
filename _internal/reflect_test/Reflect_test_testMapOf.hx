package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testMapOf(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {};
        {};
        var _v = (stdgo._internal.reflect.Reflect_makeMap.makeMap(stdgo._internal.reflect.Reflect_mapOf.mapOf(stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface((stdgo.Go.str() : _internal.reflect_test.Reflect_test_T_testMapOf___localname___K_161187.T_testMapOf___localname___K_161187))), stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface(((0 : stdgo.GoFloat64) : _internal.reflect_test.Reflect_test_T_testMapOf___localname___V_161202.T_testMapOf___localname___V_161202)))))?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        stdgo._internal.runtime.Runtime_gc.gc();
        _v.setMapIndex(stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((("a" : stdgo.GoString) : _internal.reflect_test.Reflect_test_T_testMapOf___localname___K_161187.T_testMapOf___localname___K_161187)))?.__copy__(), stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(((1 : stdgo.GoFloat64) : _internal.reflect_test.Reflect_test_T_testMapOf___localname___V_161202.T_testMapOf___localname___V_161202)))?.__copy__());
        stdgo._internal.runtime.Runtime_gc.gc();
        var _s = (stdgo._internal.fmt.Fmt_sprint.sprint(_v.interface_())?.__copy__() : stdgo.GoString);
        var _want = ("map[a:1]" : stdgo.GoString);
        if (_s != (_want)) {
            _t.errorf(("constructed map = %s, want %s" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_want));
        };
        _internal.reflect_test.Reflect_test__checkSameType._checkSameType(_t, stdgo._internal.reflect.Reflect_mapOf.mapOf(stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface(((0 : stdgo.GoFloat64) : _internal.reflect_test.Reflect_test_T_testMapOf___localname___V_161202.T_testMapOf___localname___V_161202))), stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface((stdgo.Go.str() : _internal.reflect_test.Reflect_test_T_testMapOf___localname___K_161187.T_testMapOf___localname___K_161187)))), stdgo.Go.toInterface((null : stdgo.GoMap<_internal.reflect_test.Reflect_test_T_testMapOf___localname___V_161202.T_testMapOf___localname___V_161202, _internal.reflect_test.Reflect_test_T_testMapOf___localname___K_161187.T_testMapOf___localname___K_161187>)));
        _internal.reflect_test.Reflect_test__shouldPanic._shouldPanic(("invalid key type" : stdgo.GoString), function():Void {
            stdgo._internal.reflect.Reflect_mapOf.mapOf(stdgo._internal.reflect.Reflect_typeOf.typeOf((null : () -> Void)), stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface(false)));
        });
    }
