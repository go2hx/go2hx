package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testImplements(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__7 => _tt in _internal.reflect_test.Reflect_test__implementsTests._implementsTests) {
            var _xv = (stdgo._internal.reflect.Reflect_typeOf.typeOf(_tt._x).elem() : stdgo._internal.reflect.Reflect_Type_.Type_);
            var _xt = (stdgo._internal.reflect.Reflect_typeOf.typeOf(_tt._t).elem() : stdgo._internal.reflect.Reflect_Type_.Type_);
            {
                var _b = (_xv.implements_(_xt) : Bool);
                if (_b != (_tt._b)) {
                    _t.errorf(("(%s).Implements(%s) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface((_xv.string() : stdgo.GoString)), stdgo.Go.toInterface((_xt.string() : stdgo.GoString)), stdgo.Go.toInterface(_b), stdgo.Go.toInterface(_tt._b));
                };
            };
        };
    }