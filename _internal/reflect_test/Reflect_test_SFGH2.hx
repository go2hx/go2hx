package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
@:structInit @:using(_internal.reflect_test.Reflect_test_SFGH2_static_extension.SFGH2_static_extension) class SFGH2 {
    @:embedded
    public var sfgh1 : _internal.reflect_test.Reflect_test_SFGH1.SFGH1 = ({} : _internal.reflect_test.Reflect_test_SFGH1.SFGH1);
    public function new(?sfgh1:_internal.reflect_test.Reflect_test_SFGH1.SFGH1) {
        if (sfgh1 != null) this.sfgh1 = sfgh1;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new SFGH2(sfgh1);
    }
}
