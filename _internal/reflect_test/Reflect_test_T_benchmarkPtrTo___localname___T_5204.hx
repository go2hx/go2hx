package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
@:structInit @:using(_internal.reflect_test.Reflect_test_T_benchmarkPtrTo___localname___T_5204_static_extension.T_benchmarkPtrTo___localname___T_5204_static_extension) class T_benchmarkPtrTo___localname___T_5204 {
    @:embedded
    public var _int : stdgo.GoInt = 0;
    public function new(?_int:stdgo.GoInt) {
        if (_int != null) this._int = _int;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_benchmarkPtrTo___localname___T_5204(_int);
    }
}
