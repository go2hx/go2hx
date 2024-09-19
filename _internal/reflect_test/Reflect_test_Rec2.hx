package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
@:structInit @:using(_internal.reflect_test.Reflect_test_Rec2_static_extension.Rec2_static_extension) class Rec2 {
    public var f : stdgo.GoString = "";
    @:embedded
    public var rec1 : stdgo.Ref<_internal.reflect_test.Reflect_test_Rec1.Rec1> = (null : stdgo.Ref<_internal.reflect_test.Reflect_test_Rec1.Rec1>);
    public function new(?f:stdgo.GoString, ?rec1:stdgo.Ref<_internal.reflect_test.Reflect_test_Rec1.Rec1>) {
        if (f != null) this.f = f;
        if (rec1 != null) this.rec1 = rec1;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Rec2(f, rec1);
    }
}
