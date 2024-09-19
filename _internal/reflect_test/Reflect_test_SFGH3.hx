package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
@:structInit @:using(_internal.reflect_test.Reflect_test_SFGH3_static_extension.SFGH3_static_extension) class SFGH3 {
    @:embedded
    public var sfgh2 : _internal.reflect_test.Reflect_test_SFGH2.SFGH2 = ({} : _internal.reflect_test.Reflect_test_SFGH2.SFGH2);
    public function new(?sfgh2:_internal.reflect_test.Reflect_test_SFGH2.SFGH2) {
        if (sfgh2 != null) this.sfgh2 = sfgh2;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new SFGH3(sfgh2);
    }
}
