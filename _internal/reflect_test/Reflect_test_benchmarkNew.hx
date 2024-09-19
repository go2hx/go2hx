package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function benchmarkNew(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _v = (stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface(stdgo.Go.asInterface((new _internal.reflect_test.Reflect_test_XM.XM() : _internal.reflect_test.Reflect_test_XM.XM)))) : stdgo._internal.reflect.Reflect_Type_.Type_);
        _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing_PB.PB>):Void {
            while (_pb.next()) {
                stdgo._internal.reflect.Reflect_new_.new_(_v);
            };
        });
    }
