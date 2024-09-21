package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testEmbed(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _typ = (stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface((new _internal.reflect_test.Reflect_test_R0.R0() : _internal.reflect_test.Reflect_test_R0.R0))) : stdgo._internal.reflect.Reflect_Type_.Type_);
        var __tmp__ = _typ.fieldByName(("X" : stdgo.GoString)), _f:stdgo._internal.reflect.Reflect_StructField.StructField = __tmp__._0, _ok:Bool = __tmp__._1;
        if (_ok) {
            _t.fatalf(("FieldByName(\"X\") should fail, returned %v" : stdgo.GoString), stdgo.Go.toInterface(_f.index));
        };
    }
