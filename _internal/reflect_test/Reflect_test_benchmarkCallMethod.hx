package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function benchmarkCallMethod(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        _b.reportAllocs();
        var _z = stdgo.Go.pointer(((0 : stdgo.GoInt64) : _internal.reflect_test.Reflect_test_T_myint.T_myint));
        var _v = (stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_z.value._inc))?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _v.call((null : stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>));
            });
        };
    }
