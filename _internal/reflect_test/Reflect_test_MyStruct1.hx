package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
@:structInit class MyStruct1 {
    public var _x : { var _int : stdgo.GoInt; } = { _int : (0 : stdgo.GoInt) };
    public function new(?_x:{ var _int : stdgo.GoInt; }) {
        if (_x != null) this._x = _x;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new MyStruct1(_x);
    }
}
