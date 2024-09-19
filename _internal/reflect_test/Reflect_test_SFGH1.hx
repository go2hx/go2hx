package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
@:structInit @:using(_internal.reflect_test.Reflect_test_SFGH1_static_extension.SFGH1_static_extension) class SFGH1 {
    @:embedded
    public var sfgh : _internal.reflect_test.Reflect_test_SFGH.SFGH = ({} : _internal.reflect_test.Reflect_test_SFGH.SFGH);
    public function new(?sfgh:_internal.reflect_test.Reflect_test_SFGH.SFGH) {
        if (sfgh != null) this.sfgh = sfgh;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new SFGH1(sfgh);
    }
}
