package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
@:structInit @:using(_internal.reflect_test.Reflect_test_XM_static_extension.XM_static_extension) class XM {
    @:optional
    public var __2 : Bool = false;
    public function new(?__2:Bool) {
        if (__2 != null) this.__2 = __2;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new XM(__2);
    }
}
