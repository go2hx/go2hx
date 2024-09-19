package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function _checkSameType(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _x:stdgo._internal.reflect.Reflect_Type_.Type_, _y:stdgo.AnyInterface):Void {
        if ((!((_x.string() : String) == (stdgo._internal.reflect.Reflect_typeOf.typeOf(_y).string() : String)) || !((stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo._internal.reflect.Reflect_zero.zero(_x).interface_()).string() : String) == (stdgo._internal.reflect.Reflect_typeOf.typeOf(_y).string() : String)) : Bool)) {
            _t.errorf(("did not find preexisting type for %s (vs %s)" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface(_x))), stdgo.Go.toInterface(stdgo._internal.reflect.Reflect_typeOf.typeOf(_y)));
        };
    }
