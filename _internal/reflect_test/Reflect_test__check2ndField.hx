package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function _check2ndField(_x:stdgo.AnyInterface, _offs:stdgo.GoUIntptr, _t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _s = (stdgo._internal.reflect.Reflect_valueOf.valueOf(_x)?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        var _f = (_s.type().field((1 : stdgo.GoInt))?.__copy__() : stdgo._internal.reflect.Reflect_StructField.StructField);
        if (_f.offset != (_offs)) {
            _t.error(stdgo.Go.toInterface(("mismatched offsets in structure alignment:" : stdgo.GoString)), stdgo.Go.toInterface(_f.offset), stdgo.Go.toInterface(_offs));
        };
    }
