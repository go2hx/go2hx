package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
@:structInit @:using(_internal.reflect_test.Reflect_test_T_testIssue22031___localname___t1_200365_static_extension.T_testIssue22031___localname___t1_200365_static_extension) class T_testIssue22031___localname___t1_200365 {
    @:embedded
    public var _s : _internal.reflect_test.Reflect_test_T_testIssue22031___localname___s_200338.T_testIssue22031___localname___s_200338 = new _internal.reflect_test.Reflect_test_T_testIssue22031___localname___s_200338.T_testIssue22031___localname___s_200338(0, 0);
    public function new(?_s:_internal.reflect_test.Reflect_test_T_testIssue22031___localname___s_200338.T_testIssue22031___localname___s_200338) {
        if (_s != null) this._s = _s;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testIssue22031___localname___t1_200365(_s);
    }
}
