package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
@:structInit @:using(_internal.reflect_test.Reflect_test_R0_static_extension.R0_static_extension) class R0 {
    @:embedded
    public var r1 : stdgo.Ref<_internal.reflect_test.Reflect_test_R1.R1> = (null : stdgo.Ref<_internal.reflect_test.Reflect_test_R1.R1>);
    @:embedded
    public var r2 : stdgo.Ref<_internal.reflect_test.Reflect_test_R2.R2> = (null : stdgo.Ref<_internal.reflect_test.Reflect_test_R2.R2>);
    @:embedded
    public var r3 : stdgo.Ref<_internal.reflect_test.Reflect_test_R3.R3> = (null : stdgo.Ref<_internal.reflect_test.Reflect_test_R3.R3>);
    @:embedded
    public var r4 : stdgo.Ref<_internal.reflect_test.Reflect_test_R4.R4> = (null : stdgo.Ref<_internal.reflect_test.Reflect_test_R4.R4>);
    public function new(?r1:stdgo.Ref<_internal.reflect_test.Reflect_test_R1.R1>, ?r2:stdgo.Ref<_internal.reflect_test.Reflect_test_R2.R2>, ?r3:stdgo.Ref<_internal.reflect_test.Reflect_test_R3.R3>, ?r4:stdgo.Ref<_internal.reflect_test.Reflect_test_R4.R4>) {
        if (r1 != null) this.r1 = r1;
        if (r2 != null) this.r2 = r2;
        if (r3 != null) this.r3 = r3;
        if (r4 != null) this.r4 = r4;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new R0(r1, r2, r3, r4);
    }
}
