package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
@:structInit @:using(_internal.reflect_test.Reflect_test_S3_static_extension.S3_static_extension) class S3 {
    @:embedded
    public var s1x : _internal.reflect_test.Reflect_test_S1x.S1x = ({} : _internal.reflect_test.Reflect_test_S1x.S1x);
    @:embedded
    public var s2 : _internal.reflect_test.Reflect_test_S2.S2 = ({} : _internal.reflect_test.Reflect_test_S2.S2);
    public var d : stdgo.GoInt = 0;
    public var e : stdgo.GoInt = 0;
    @:embedded
    public var s1y : stdgo.Ref<_internal.reflect_test.Reflect_test_S1y.S1y> = (null : stdgo.Ref<_internal.reflect_test.Reflect_test_S1y.S1y>);
    public function new(?s1x:_internal.reflect_test.Reflect_test_S1x.S1x, ?s2:_internal.reflect_test.Reflect_test_S2.S2, ?d:stdgo.GoInt, ?e:stdgo.GoInt, ?s1y:stdgo.Ref<_internal.reflect_test.Reflect_test_S1y.S1y>) {
        if (s1x != null) this.s1x = s1x;
        if (s2 != null) this.s2 = s2;
        if (d != null) this.d = d;
        if (e != null) this.e = e;
        if (s1y != null) this.s1y = s1y;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new S3(s1x, s2, d, e, s1y);
    }
}
