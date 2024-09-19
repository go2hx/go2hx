package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
@:structInit @:using(_internal.reflect_test.Reflect_test_S10_static_extension.S10_static_extension) class S10 {
    @:embedded
    public var s11 : _internal.reflect_test.Reflect_test_S11.S11 = ({} : _internal.reflect_test.Reflect_test_S11.S11);
    @:embedded
    public var s12 : _internal.reflect_test.Reflect_test_S12.S12 = ({} : _internal.reflect_test.Reflect_test_S12.S12);
    @:embedded
    public var s13 : _internal.reflect_test.Reflect_test_S13.S13 = ({} : _internal.reflect_test.Reflect_test_S13.S13);
    public function new(?s11:_internal.reflect_test.Reflect_test_S11.S11, ?s12:_internal.reflect_test.Reflect_test_S12.S12, ?s13:_internal.reflect_test.Reflect_test_S13.S13) {
        if (s11 != null) this.s11 = s11;
        if (s12 != null) this.s12 = s12;
        if (s13 != null) this.s13 = s13;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new S10(s11, s12, s13);
    }
}
