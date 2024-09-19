package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function benchmarkCall(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _fv = (stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(function(_a:stdgo.GoString, _b:stdgo.GoString):Void {}))?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        _b.reportAllocs();
        _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing_PB.PB>):Void {
            var _args = (new stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>(2, 2, ...[stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(("a" : stdgo.GoString)))?.__copy__(), stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(("b" : stdgo.GoString)))?.__copy__()].concat([for (i in 2 ... (2 > 2 ? 2 : 2 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_Value.Value)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>);
            while (_pb.next()) {
                _fv.call(_args);
            };
        });
    }
