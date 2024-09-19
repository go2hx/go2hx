package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
@:structInit @:using(_internal.reflect_test.Reflect_test_Private_static_extension.Private_static_extension) class Private {
    public var _x : stdgo.GoInt = 0;
    public var _y : stdgo.Pointer<stdgo.Pointer<stdgo.GoInt>> = (null : stdgo.Pointer<stdgo.Pointer<stdgo.GoInt>>);
    public var z : stdgo.GoInt = 0;
    public function new(?_x:stdgo.GoInt, ?_y:stdgo.Pointer<stdgo.Pointer<stdgo.GoInt>>, ?z:stdgo.GoInt) {
        if (_x != null) this._x = _x;
        if (_y != null) this._y = _y;
        if (z != null) this.z = z;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Private(_x, _y, z);
    }
}
