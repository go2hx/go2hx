package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
@:structInit @:using(_internal.reflect_test.Reflect_test_SF2_static_extension.SF2_static_extension) class SF2 {
    @:embedded
    public var sf1 : _internal.reflect_test.Reflect_test_SF1.SF1 = ({} : _internal.reflect_test.Reflect_test_SF1.SF1);
    public function new(?sf1:_internal.reflect_test.Reflect_test_SF1.SF1) {
        if (sf1 != null) this.sf1 = sf1;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new SF2(sf1);
    }
}
