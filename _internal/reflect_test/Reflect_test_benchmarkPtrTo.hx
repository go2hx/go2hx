package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function benchmarkPtrTo(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        {};
        var _t = (stdgo._internal.reflect.Reflect_sliceOf.sliceOf(stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface((new _internal.reflect_test.Reflect_test_T_benchmarkPtrTo___localname___T_5204.T_benchmarkPtrTo___localname___T_5204() : _internal.reflect_test.Reflect_test_T_benchmarkPtrTo___localname___T_5204.T_benchmarkPtrTo___localname___T_5204)))) : stdgo._internal.reflect.Reflect_Type_.Type_);
        var _ptrToThis = (stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_t)).elem().fieldByName(("PtrToThis" : stdgo.GoString))?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        if (!_ptrToThis.isValid()) {
            _b.skipf(("%v has no ptrToThis field; was it removed from rtype?" : stdgo.GoString), stdgo.Go.toInterface(_t));
        };
        if (_ptrToThis.int_() != ((0i64 : stdgo.GoInt64))) {
            _b.fatalf(("%v.ptrToThis unexpectedly nonzero" : stdgo.GoString), stdgo.Go.toInterface(_t));
        };
        _b.resetTimer();
        _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing_PB.PB>):Void {
            while (_pb.next()) {
                stdgo._internal.reflect.Reflect_pointerTo.pointerTo(_t);
            };
        });
    }
