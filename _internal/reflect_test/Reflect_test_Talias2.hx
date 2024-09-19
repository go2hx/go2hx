package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
@:structInit @:using(_internal.reflect_test.Reflect_test_Talias2_static_extension.Talias2_static_extension) class Talias2 {
    @:embedded
    public var tint : _internal.reflect_test.Reflect_test_Tint.Tint = ((0 : stdgo.GoInt) : _internal.reflect_test.Reflect_test_Tint.Tint);
    @:embedded
    public var tint2 : _internal.reflect_test.Reflect_test_Tint.Tint = ((0 : stdgo.GoInt) : _internal.reflect_test.Reflect_test_Tint.Tint);
    public function new(?tint:_internal.reflect_test.Reflect_test_Tint.Tint, ?tint2:_internal.reflect_test.Reflect_test_Tint.Tint) {
        if (tint != null) this.tint = tint;
        if (tint2 != null) this.tint2 = tint2;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Talias2(tint, tint2);
    }
}
