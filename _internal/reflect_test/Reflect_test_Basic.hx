package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
@:structInit class Basic {
    public var _x : stdgo.GoInt = 0;
    public var _y : stdgo.GoFloat32 = 0;
    public function new(?_x:stdgo.GoInt, ?_y:stdgo.GoFloat32) {
        if (_x != null) this._x = _x;
        if (_y != null) this._y = _y;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Basic(_x, _y);
    }
}
