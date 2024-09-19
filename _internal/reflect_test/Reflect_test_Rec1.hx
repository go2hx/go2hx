package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
@:structInit @:using(_internal.reflect_test.Reflect_test_Rec1_static_extension.Rec1_static_extension) class Rec1 {
    @:embedded
    public var rec2 : stdgo.Ref<_internal.reflect_test.Reflect_test_Rec2.Rec2> = (null : stdgo.Ref<_internal.reflect_test.Reflect_test_Rec2.Rec2>);
    public function new(?rec2:stdgo.Ref<_internal.reflect_test.Reflect_test_Rec2.Rec2>) {
        if (rec2 != null) this.rec2 = rec2;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Rec1(rec2);
    }
}
