package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
@:structInit @:using(_internal.reflect_test.Reflect_test_R5_static_extension.R5_static_extension) class R5 {
    @:embedded
    public var r9 : stdgo.Ref<_internal.reflect_test.Reflect_test_R9.R9> = (null : stdgo.Ref<_internal.reflect_test.Reflect_test_R9.R9>);
    @:embedded
    public var r10 : stdgo.Ref<_internal.reflect_test.Reflect_test_R10.R10> = (null : stdgo.Ref<_internal.reflect_test.Reflect_test_R10.R10>);
    @:embedded
    public var r11 : stdgo.Ref<_internal.reflect_test.Reflect_test_R11.R11> = (null : stdgo.Ref<_internal.reflect_test.Reflect_test_R11.R11>);
    @:embedded
    public var r12 : stdgo.Ref<_internal.reflect_test.Reflect_test_R12.R12> = (null : stdgo.Ref<_internal.reflect_test.Reflect_test_R12.R12>);
    public function new(?r9:stdgo.Ref<_internal.reflect_test.Reflect_test_R9.R9>, ?r10:stdgo.Ref<_internal.reflect_test.Reflect_test_R10.R10>, ?r11:stdgo.Ref<_internal.reflect_test.Reflect_test_R11.R11>, ?r12:stdgo.Ref<_internal.reflect_test.Reflect_test_R12.R12>) {
        if (r9 != null) this.r9 = r9;
        if (r10 != null) this.r10 = r10;
        if (r11 != null) this.r11 = r11;
        if (r12 != null) this.r12 = r12;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new R5(r9, r10, r11, r12);
    }
}
