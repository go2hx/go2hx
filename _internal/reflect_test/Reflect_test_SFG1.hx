package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
@:structInit @:using(_internal.reflect_test.Reflect_test_SFG1_static_extension.SFG1_static_extension) class SFG1 {
    @:embedded
    public var sfg : _internal.reflect_test.Reflect_test_SFG.SFG = ({} : _internal.reflect_test.Reflect_test_SFG.SFG);
    public function new(?sfg:_internal.reflect_test.Reflect_test_SFG.SFG) {
        if (sfg != null) this.sfg = sfg;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new SFG1(sfg);
    }
}
