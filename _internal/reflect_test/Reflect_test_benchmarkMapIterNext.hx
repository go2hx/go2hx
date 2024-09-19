package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function benchmarkMapIterNext(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _m = (stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(({
            final x = new stdgo.GoMap.GoStringMap<stdgo.GoInt>();
            x.__defaultValue__ = () -> (0 : stdgo.GoInt);
            x.set(("a" : stdgo.GoString), (0 : stdgo.GoInt));
x.set(("b" : stdgo.GoString), (1 : stdgo.GoInt));
x.set(("c" : stdgo.GoString), (2 : stdgo.GoInt));
x.set(("d" : stdgo.GoString), (3 : stdgo.GoInt));
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>)))?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        var _it = _m.mapRange();
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                while (_it.next()) {};
                _it.reset(_m?.__copy__());
            });
        };
    }
