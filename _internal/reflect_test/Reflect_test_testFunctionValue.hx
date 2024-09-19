package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testFunctionValue(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _x:stdgo.AnyInterface = stdgo.Go.toInterface(function():Void {});
        var _v = (stdgo._internal.reflect.Reflect_valueOf.valueOf(_x)?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        if (stdgo._internal.fmt.Fmt_sprint.sprint(_v.interface_()) != (stdgo._internal.fmt.Fmt_sprint.sprint(_x))) {
            _t.fatalf(("TestFunction returned wrong pointer" : stdgo.GoString));
        };
        _internal.reflect_test.Reflect_test__assert._assert(_t, (_v.type().string() : stdgo.GoString)?.__copy__(), ("func()" : stdgo.GoString));
    }
