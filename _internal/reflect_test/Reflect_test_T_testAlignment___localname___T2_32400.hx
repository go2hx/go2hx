package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
@:structInit @:using(_internal.reflect_test.Reflect_test_T_testAlignment___localname___T2_32400_static_extension.T_testAlignment___localname___T2_32400_static_extension) class T_testAlignment___localname___T2_32400 {
    @:embedded
    public var t2inner : _internal.reflect_test.Reflect_test_T_testAlignment___localname___T2inner_32363.T_testAlignment___localname___T2inner_32363 = ({} : _internal.reflect_test.Reflect_test_T_testAlignment___localname___T2inner_32363.T_testAlignment___localname___T2inner_32363);
    public var _f : stdgo.GoInt = 0;
    public function new(?t2inner:_internal.reflect_test.Reflect_test_T_testAlignment___localname___T2inner_32363.T_testAlignment___localname___T2inner_32363, ?_f:stdgo.GoInt) {
        if (t2inner != null) this.t2inner = t2inner;
        if (_f != null) this._f = _f;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testAlignment___localname___T2_32400(t2inner, _f);
    }
}
