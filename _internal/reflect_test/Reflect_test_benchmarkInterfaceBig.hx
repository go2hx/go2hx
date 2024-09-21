package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function benchmarkInterfaceBig(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _v = (stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((new _internal.reflect_test.Reflect_test_S.S() : _internal.reflect_test.Reflect_test_S.S)))?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing_PB.PB>):Void {
            while (_pb.next()) {
                _v.interface_();
            };
        });
        _b.stopTimer();
    }
