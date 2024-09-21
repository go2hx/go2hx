package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
@:structInit @:using(_internal.reflect_test.Reflect_test_T1_static_extension.T1_static_extension) class T1 {
    public var _a : stdgo.GoString = "";
    @:embedded
    public var _int : stdgo.GoInt = 0;
    public function new(?_a:stdgo.GoString, ?_int:stdgo.GoInt) {
        if (_a != null) this._a = _a;
        if (_int != null) this._int = _int;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T1(_a, _int);
    }
}
