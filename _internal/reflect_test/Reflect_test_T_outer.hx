package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
@:structInit @:using(_internal.reflect_test.Reflect_test_T_outer_static_extension.T_outer_static_extension) class T_outer {
    public var _y : stdgo.GoInt = 0;
    @:embedded
    public var _inner : _internal.reflect_test.Reflect_test_T_inner.T_inner = ({} : _internal.reflect_test.Reflect_test_T_inner.T_inner);
    public function new(?_y:stdgo.GoInt, ?_inner:_internal.reflect_test.Reflect_test_T_inner.T_inner) {
        if (_y != null) this._y = _y;
        if (_inner != null) this._inner = _inner;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_outer(_y, _inner);
    }
}
