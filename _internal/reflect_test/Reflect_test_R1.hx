package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
@:structInit @:using(_internal.reflect_test.Reflect_test_R1_static_extension.R1_static_extension) class R1 {
    @:embedded
    public var r5 : stdgo.Ref<_internal.reflect_test.Reflect_test_R5.R5> = (null : stdgo.Ref<_internal.reflect_test.Reflect_test_R5.R5>);
    @:embedded
    public var r6 : stdgo.Ref<_internal.reflect_test.Reflect_test_R6.R6> = (null : stdgo.Ref<_internal.reflect_test.Reflect_test_R6.R6>);
    @:embedded
    public var r7 : stdgo.Ref<_internal.reflect_test.Reflect_test_R7.R7> = (null : stdgo.Ref<_internal.reflect_test.Reflect_test_R7.R7>);
    @:embedded
    public var r8 : stdgo.Ref<_internal.reflect_test.Reflect_test_R8.R8> = (null : stdgo.Ref<_internal.reflect_test.Reflect_test_R8.R8>);
    public function new(?r5:stdgo.Ref<_internal.reflect_test.Reflect_test_R5.R5>, ?r6:stdgo.Ref<_internal.reflect_test.Reflect_test_R6.R6>, ?r7:stdgo.Ref<_internal.reflect_test.Reflect_test_R7.R7>, ?r8:stdgo.Ref<_internal.reflect_test.Reflect_test_R8.R8>) {
        if (r5 != null) this.r5 = r5;
        if (r6 != null) this.r6 = r6;
        if (r7 != null) this.r7 = r7;
        if (r8 != null) this.r8 = r8;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new R1(r5, r6, r7, r8);
    }
}
