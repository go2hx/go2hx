package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testSmallNegativeInt(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _i = ((-1 : stdgo.GoInt16) : stdgo.GoInt16);
        var _v = (stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_i))?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        if (_v.int_() != ((-1i64 : stdgo.GoInt64))) {
            _t.errorf(("int16(-1).Int() returned %v" : stdgo.GoString), stdgo.Go.toInterface(_v.int_()));
        };
    }
