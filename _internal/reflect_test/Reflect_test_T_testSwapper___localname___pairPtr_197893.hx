package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
@:structInit class T_testSwapper___localname___pairPtr_197893 {
    public var _x : stdgo.GoInt = 0;
    public var _y : stdgo.GoInt = 0;
    public var _p : stdgo.Pointer<_internal.reflect_test.Reflect_test_T_testSwapper___localname___I_197832.T_testSwapper___localname___I_197832> = (null : stdgo.Pointer<_internal.reflect_test.Reflect_test_T_testSwapper___localname___I_197832.T_testSwapper___localname___I_197832>);
    public function new(?_x:stdgo.GoInt, ?_y:stdgo.GoInt, ?_p:stdgo.Pointer<_internal.reflect_test.Reflect_test_T_testSwapper___localname___I_197832.T_testSwapper___localname___I_197832>) {
        if (_x != null) this._x = _x;
        if (_y != null) this._y = _y;
        if (_p != null) this._p = _p;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testSwapper___localname___pairPtr_197893(_x, _y, _p);
    }
}
