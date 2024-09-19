package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
@:structInit @:using(_internal.reflect_test.Reflect_test_RS3_static_extension.RS3_static_extension) class RS3 {
    @:embedded
    public var rs2 : _internal.reflect_test.Reflect_test_RS2.RS2 = ({} : _internal.reflect_test.Reflect_test_RS2.RS2);
    @:embedded
    public var rs1 : _internal.reflect_test.Reflect_test_RS1.RS1 = ({} : _internal.reflect_test.Reflect_test_RS1.RS1);
    public function new(?rs2:_internal.reflect_test.Reflect_test_RS2.RS2, ?rs1:_internal.reflect_test.Reflect_test_RS1.RS1) {
        if (rs2 != null) this.rs2 = rs2;
        if (rs1 != null) this.rs1 = rs1;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new RS3(rs2, rs1);
    }
}
