package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
@:structInit class Recursive {
    public var _x : stdgo.GoInt = 0;
    public var _r : stdgo.Ref<_internal.reflect_test.Reflect_test_Recursive.Recursive> = (null : stdgo.Ref<_internal.reflect_test.Reflect_test_Recursive.Recursive>);
    public function new(?_x:stdgo.GoInt, ?_r:stdgo.Ref<_internal.reflect_test.Reflect_test_Recursive.Recursive>) {
        if (_x != null) this._x = _x;
        if (_r != null) this._r = _r;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Recursive(_x, _r);
    }
}
