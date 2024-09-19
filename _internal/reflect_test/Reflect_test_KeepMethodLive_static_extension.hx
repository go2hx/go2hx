package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
@:keep @:allow(_internal.reflect_test.Reflect_test.KeepMethodLive_asInterface) class KeepMethodLive_static_extension {
    @:keep
    static public function method2( _k:_internal.reflect_test.Reflect_test_KeepMethodLive.KeepMethodLive, _i:stdgo.GoInt):Void {
        @:recv var _k:_internal.reflect_test.Reflect_test_KeepMethodLive.KeepMethodLive = _k?.__copy__();
        _internal.reflect_test.Reflect_test__clobber._clobber();
        (stdgo.Go.typeAssert((stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface(_k))).methodByName(("Method1" : stdgo.GoString)).interface_() : stdgo.GoInt -> Void)) : stdgo.GoInt -> Void)(_i);
    }
    @:keep
    static public function method1( _k:_internal.reflect_test.Reflect_test_KeepMethodLive.KeepMethodLive, _i:stdgo.GoInt):Void {
        @:recv var _k:_internal.reflect_test.Reflect_test_KeepMethodLive.KeepMethodLive = _k?.__copy__();
        _internal.reflect_test.Reflect_test__clobber._clobber();
        if ((_i > (0 : stdgo.GoInt) : Bool)) {
            (stdgo.Go.typeAssert((stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface(_k))).methodByName(("Method2" : stdgo.GoString)).interface_() : stdgo.GoInt -> Void)) : stdgo.GoInt -> Void)((_i - (1 : stdgo.GoInt) : stdgo.GoInt));
        };
    }
}
