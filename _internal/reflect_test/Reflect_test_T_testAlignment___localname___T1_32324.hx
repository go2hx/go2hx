package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
@:structInit @:using(_internal.reflect_test.Reflect_test_T_testAlignment___localname___T1_32324_static_extension.T_testAlignment___localname___T1_32324_static_extension) class T_testAlignment___localname___T1_32324 {
    @:embedded
    public var t1inner : _internal.reflect_test.Reflect_test_T_testAlignment___localname___T1inner_32290.T_testAlignment___localname___T1inner_32290 = ({} : _internal.reflect_test.Reflect_test_T_testAlignment___localname___T1inner_32290.T_testAlignment___localname___T1inner_32290);
    public var _f : stdgo.GoInt = 0;
    public function new(?t1inner:_internal.reflect_test.Reflect_test_T_testAlignment___localname___T1inner_32290.T_testAlignment___localname___T1inner_32290, ?_f:stdgo.GoInt) {
        if (t1inner != null) this.t1inner = t1inner;
        if (_f != null) this._f = _f;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testAlignment___localname___T1_32324(t1inner, _f);
    }
}
