package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
@:structInit @:using(_internal.reflect_test.Reflect_test_SF1_static_extension.SF1_static_extension) class SF1 {
    @:embedded
    public var sf : _internal.reflect_test.Reflect_test_SF.SF = ({} : _internal.reflect_test.Reflect_test_SF.SF);
    public function new(?sf:_internal.reflect_test.Reflect_test_SF.SF) {
        if (sf != null) this.sf = sf;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new SF1(sf);
    }
}
