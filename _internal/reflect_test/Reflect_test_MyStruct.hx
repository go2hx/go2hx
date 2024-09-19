package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
@:structInit class MyStruct {
    @:tag("`some:\"tag\"`")
    public var _x : stdgo.GoInt = 0;
    public function new(?_x:stdgo.GoInt) {
        if (_x != null) this._x = _x;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new MyStruct(_x);
    }
}
