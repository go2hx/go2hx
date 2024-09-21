package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testNumMethodOnDDD(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _rv = (stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface((null : _internal.reflect_test.Reflect_test_FuncDDD.FuncDDD))))?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        {
            var _n = (_rv.numMethod() : stdgo.GoInt);
            if (_n != ((1 : stdgo.GoInt))) {
                _t.fatalf(("NumMethod()=%d, want 1" : stdgo.GoString), stdgo.Go.toInterface(_n));
            };
        };
    }
