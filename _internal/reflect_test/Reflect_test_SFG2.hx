package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
@:structInit @:using(_internal.reflect_test.Reflect_test_SFG2_static_extension.SFG2_static_extension) class SFG2 {
    @:embedded
    public var sfg1 : _internal.reflect_test.Reflect_test_SFG1.SFG1 = ({} : _internal.reflect_test.Reflect_test_SFG1.SFG1);
    public function new(?sfg1:_internal.reflect_test.Reflect_test_SFG1.SFG1) {
        if (sfg1 != null) this.sfg1 = sfg1;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new SFG2(sfg1);
    }
}
