package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
@:structInit class T_structWithSelfPtr {
    public var _p : stdgo.Ref<_internal.reflect_test.Reflect_test_T_structWithSelfPtr.T_structWithSelfPtr> = (null : stdgo.Ref<_internal.reflect_test.Reflect_test_T_structWithSelfPtr.T_structWithSelfPtr>);
    public var _s : stdgo.GoString = "";
    public function new(?_p:stdgo.Ref<_internal.reflect_test.Reflect_test_T_structWithSelfPtr.T_structWithSelfPtr>, ?_s:stdgo.GoString) {
        if (_p != null) this._p = _p;
        if (_s != null) this._s = _s;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_structWithSelfPtr(_p, _s);
    }
}
