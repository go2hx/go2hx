package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
@:structInit @:using(_internal.reflect_test.Reflect_test_T_testFieldByIndexNil___localname___T_170039_static_extension.T_testFieldByIndexNil___localname___T_170039_static_extension) class T_testFieldByIndexNil___localname___T_170039 {
    @:embedded
    public var p : stdgo.Ref<_internal.reflect_test.Reflect_test_T_testFieldByIndexNil___localname___P_170011.T_testFieldByIndexNil___localname___P_170011> = (null : stdgo.Ref<_internal.reflect_test.Reflect_test_T_testFieldByIndexNil___localname___P_170011.T_testFieldByIndexNil___localname___P_170011>);
    public function new(?p:stdgo.Ref<_internal.reflect_test.Reflect_test_T_testFieldByIndexNil___localname___P_170011.T_testFieldByIndexNil___localname___P_170011>) {
        if (p != null) this.p = p;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testFieldByIndexNil___localname___T_170039(p);
    }
}
