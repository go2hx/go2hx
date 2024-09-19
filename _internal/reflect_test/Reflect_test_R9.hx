package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
@:structInit @:using(_internal.reflect_test.Reflect_test_R9_static_extension.R9_static_extension) class R9 {
    @:embedded
    public var r13 : stdgo.Ref<_internal.reflect_test.Reflect_test_R13.R13> = (null : stdgo.Ref<_internal.reflect_test.Reflect_test_R13.R13>);
    @:embedded
    public var r14 : stdgo.Ref<_internal.reflect_test.Reflect_test_R14.R14> = (null : stdgo.Ref<_internal.reflect_test.Reflect_test_R14.R14>);
    @:embedded
    public var r15 : stdgo.Ref<_internal.reflect_test.Reflect_test_R15.R15> = (null : stdgo.Ref<_internal.reflect_test.Reflect_test_R15.R15>);
    @:embedded
    public var r16 : stdgo.Ref<_internal.reflect_test.Reflect_test_R16.R16> = (null : stdgo.Ref<_internal.reflect_test.Reflect_test_R16.R16>);
    public function new(?r13:stdgo.Ref<_internal.reflect_test.Reflect_test_R13.R13>, ?r14:stdgo.Ref<_internal.reflect_test.Reflect_test_R14.R14>, ?r15:stdgo.Ref<_internal.reflect_test.Reflect_test_R15.R15>, ?r16:stdgo.Ref<_internal.reflect_test.Reflect_test_R16.R16>) {
        if (r13 != null) this.r13 = r13;
        if (r14 != null) this.r14 = r14;
        if (r15 != null) this.r15 = r15;
        if (r16 != null) this.r16 = r16;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new R9(r13, r14, r15, r16);
    }
}
