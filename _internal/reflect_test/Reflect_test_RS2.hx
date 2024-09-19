package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
@:structInit @:using(_internal.reflect_test.Reflect_test_RS2_static_extension.RS2_static_extension) class RS2 {
    @:embedded
    public var rs1 : _internal.reflect_test.Reflect_test_RS1.RS1 = ({} : _internal.reflect_test.Reflect_test_RS1.RS1);
    public function new(?rs1:_internal.reflect_test.Reflect_test_RS1.RS1) {
        if (rs1 != null) this.rs1 = rs1;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new RS2(rs1);
    }
}
