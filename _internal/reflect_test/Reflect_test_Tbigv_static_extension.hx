package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
@:keep @:allow(_internal.reflect_test.Reflect_test.Tbigv_asInterface) class Tbigv_static_extension {
    @:keep
    static public function m( _v:_internal.reflect_test.Reflect_test_Tbigv.Tbigv, _x:stdgo.GoInt, _b:stdgo.GoUInt8):{ var _0 : stdgo.GoUInt8; var _1 : stdgo.GoInt; } {
        @:recv var _v:_internal.reflect_test.Reflect_test_Tbigv.Tbigv = _v?.__copy__();
        return { _0 : _b, _1 : ((_x + (_v[(0 : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) + (_v[(1 : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) };
    }
}
