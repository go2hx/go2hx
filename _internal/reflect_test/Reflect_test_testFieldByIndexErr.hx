package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testFieldByIndexErr(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {};
        {};
        var _v = (stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((new _internal.reflect_test.Reflect_test_T_testFieldByIndexErr___localname___B_5184.T_testFieldByIndexErr___localname___B_5184() : _internal.reflect_test.Reflect_test_T_testFieldByIndexErr___localname___B_5184.T_testFieldByIndexErr___localname___B_5184)))?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        var __tmp__ = _v.fieldByIndexErr((new stdgo.Slice<stdgo.GoInt>(2, 2, ...[(0 : stdgo.GoInt), (0 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>)), __7:stdgo._internal.reflect.Reflect_Value.Value = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err == null) {
            _t.fatal(stdgo.Go.toInterface(("expected error" : stdgo.GoString)));
        };
        if (!stdgo._internal.strings.Strings_contains.contains(_err.error()?.__copy__(), ("embedded struct field A" : stdgo.GoString))) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
    }
