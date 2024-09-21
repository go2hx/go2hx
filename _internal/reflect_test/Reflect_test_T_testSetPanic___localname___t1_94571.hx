package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
@:structInit @:using(_internal.reflect_test.Reflect_test_T_testSetPanic___localname___t1_94571_static_extension.T_testSetPanic___localname___t1_94571_static_extension) class T_testSetPanic___localname___t1_94571 {
    public var y : stdgo.GoInt = 0;
    @:embedded
    public var _t0 : _internal.reflect_test.Reflect_test_T_testSetPanic___localname___t0_94541.T_testSetPanic___localname___t0_94541 = ({} : _internal.reflect_test.Reflect_test_T_testSetPanic___localname___t0_94541.T_testSetPanic___localname___t0_94541);
    public function new(?y:stdgo.GoInt, ?_t0:_internal.reflect_test.Reflect_test_T_testSetPanic___localname___t0_94541.T_testSetPanic___localname___t0_94541) {
        if (y != null) this.y = y;
        if (_t0 != null) this._t0 = _t0;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testSetPanic___localname___t1_94571(y, _t0);
    }
}
