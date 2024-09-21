package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
@:structInit @:using(_internal.reflect_test.Reflect_test_T_testCallPanic___localname___T2_98376_static_extension.T_testCallPanic___localname___T2_98376_static_extension) class T_testCallPanic___localname___T2_98376 {
    @:embedded
    public var t1 : _internal.reflect_test.Reflect_test_T_testCallPanic___localname___T1_98340.T_testCallPanic___localname___T1_98340 = (null : _internal.reflect_test.Reflect_test_T_testCallPanic___localname___T1_98340.T_testCallPanic___localname___T1_98340);
    @:embedded
    public var _t0 : _internal.reflect_test.Reflect_test_T_testCallPanic___localname___t0_98304.T_testCallPanic___localname___t0_98304 = (null : _internal.reflect_test.Reflect_test_T_testCallPanic___localname___t0_98304.T_testCallPanic___localname___t0_98304);
    public function new(?t1:_internal.reflect_test.Reflect_test_T_testCallPanic___localname___T1_98340.T_testCallPanic___localname___T1_98340, ?_t0:_internal.reflect_test.Reflect_test_T_testCallPanic___localname___t0_98304.T_testCallPanic___localname___t0_98304) {
        if (t1 != null) this.t1 = t1;
        if (_t0 != null) this._t0 = _t0;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function w() this._t0.w();
    @:embedded
    public function y() this.t1.y();
    @:embedded
    public function _w() this._t0._w();
    @:embedded
    public function _y() this.t1._y();
    public function __copy__() {
        return new T_testCallPanic___localname___T2_98376(t1, _t0);
    }
}
