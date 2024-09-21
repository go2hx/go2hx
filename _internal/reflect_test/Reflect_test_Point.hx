package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
@:structInit @:using(_internal.reflect_test.Reflect_test_Point_static_extension.Point_static_extension) class Point {
    public var _x : stdgo.GoInt = 0;
    public var _y : stdgo.GoInt = 0;
    public function new(?_x:stdgo.GoInt, ?_y:stdgo.GoInt) {
        if (_x != null) this._x = _x;
        if (_y != null) this._y = _y;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Point(_x, _y);
    }
}
