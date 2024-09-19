package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function benchmarkFieldByName1(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _t = (stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface((new _internal.reflect_test.Reflect_test_B1.B1() : _internal.reflect_test.Reflect_test_B1.B1))) : stdgo._internal.reflect.Reflect_Type_.Type_);
        _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing_PB.PB>):Void {
            while (_pb.next()) {
                _t.fieldByName(("Z" : stdgo.GoString));
            };
        });
    }
