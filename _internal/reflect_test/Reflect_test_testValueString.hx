package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testValueString(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _rv = (stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface((new _internal.reflect_test.Reflect_test_Impl.Impl() : _internal.reflect_test.Reflect_test_Impl.Impl))))?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        if ((_rv.string() : stdgo.GoString) != (("<reflect_test.Impl Value>" : stdgo.GoString))) {
            _t.errorf(("ValueOf(Impl{}).String() = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface((_rv.string() : stdgo.GoString)), stdgo.Go.toInterface(("<reflect_test.Impl Value>" : stdgo.GoString)));
        };
        var _method = (_rv.method((0 : stdgo.GoInt))?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        if ((_method.string() : stdgo.GoString) != (("<func() Value>" : stdgo.GoString))) {
            _t.errorf(("ValueOf(Impl{}).Method(0).String() = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface((_method.string() : stdgo.GoString)), stdgo.Go.toInterface(("<func() Value>" : stdgo.GoString)));
        };
    }
