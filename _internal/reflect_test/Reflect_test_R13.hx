package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
@:structInit @:using(_internal.reflect_test.Reflect_test_R13_static_extension.R13_static_extension) class R13 {
    @:embedded
    public var r17 : stdgo.Ref<_internal.reflect_test.Reflect_test_R17.R17> = (null : stdgo.Ref<_internal.reflect_test.Reflect_test_R17.R17>);
    @:embedded
    public var r18 : stdgo.Ref<_internal.reflect_test.Reflect_test_R18.R18> = (null : stdgo.Ref<_internal.reflect_test.Reflect_test_R18.R18>);
    @:embedded
    public var r19 : stdgo.Ref<_internal.reflect_test.Reflect_test_R19.R19> = (null : stdgo.Ref<_internal.reflect_test.Reflect_test_R19.R19>);
    @:embedded
    public var r20 : stdgo.Ref<_internal.reflect_test.Reflect_test_R20.R20> = (null : stdgo.Ref<_internal.reflect_test.Reflect_test_R20.R20>);
    public function new(?r17:stdgo.Ref<_internal.reflect_test.Reflect_test_R17.R17>, ?r18:stdgo.Ref<_internal.reflect_test.Reflect_test_R18.R18>, ?r19:stdgo.Ref<_internal.reflect_test.Reflect_test_R19.R19>, ?r20:stdgo.Ref<_internal.reflect_test.Reflect_test_R20.R20>) {
        if (r17 != null) this.r17 = r17;
        if (r18 != null) this.r18 = r18;
        if (r19 != null) this.r19 = r19;
        if (r20 != null) this.r20 = r20;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new R13(r17, r18, r19, r20);
    }
}
