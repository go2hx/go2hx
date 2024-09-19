package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
@:structInit @:using(_internal.reflect_test.Reflect_test_R17_static_extension.R17_static_extension) class R17 {
    @:embedded
    public var r21 : stdgo.Ref<_internal.reflect_test.Reflect_test_R21.R21> = (null : stdgo.Ref<_internal.reflect_test.Reflect_test_R21.R21>);
    @:embedded
    public var r22 : stdgo.Ref<_internal.reflect_test.Reflect_test_R22.R22> = (null : stdgo.Ref<_internal.reflect_test.Reflect_test_R22.R22>);
    @:embedded
    public var r23 : stdgo.Ref<_internal.reflect_test.Reflect_test_R23.R23> = (null : stdgo.Ref<_internal.reflect_test.Reflect_test_R23.R23>);
    @:embedded
    public var r24 : stdgo.Ref<_internal.reflect_test.Reflect_test_R24.R24> = (null : stdgo.Ref<_internal.reflect_test.Reflect_test_R24.R24>);
    public function new(?r21:stdgo.Ref<_internal.reflect_test.Reflect_test_R21.R21>, ?r22:stdgo.Ref<_internal.reflect_test.Reflect_test_R22.R22>, ?r23:stdgo.Ref<_internal.reflect_test.Reflect_test_R23.R23>, ?r24:stdgo.Ref<_internal.reflect_test.Reflect_test_R24.R24>) {
        if (r21 != null) this.r21 = r21;
        if (r22 != null) this.r22 = r22;
        if (r23 != null) this.r23 = r23;
        if (r24 != null) this.r24 = r24;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new R17(r21, r22, r23, r24);
    }
}
