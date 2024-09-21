package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
@:structInit @:using(_internal.reflect_test.Reflect_test_SG1_static_extension.SG1_static_extension) class SG1 {
    @:embedded
    public var sg : _internal.reflect_test.Reflect_test_SG.SG = ({} : _internal.reflect_test.Reflect_test_SG.SG);
    public function new(?sg:_internal.reflect_test.Reflect_test_SG.SG) {
        if (sg != null) this.sg = sg;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new SG1(sg);
    }
}
