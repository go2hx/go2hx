package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function benchmarkInterfaceSmall(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _v = (stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((0i64 : stdgo.GoInt64)))?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing_PB.PB>):Void {
            while (_pb.next()) {
                _v.interface_();
            };
        });
    }
