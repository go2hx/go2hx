package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
@:structInit @:using(_internal.reflect_test.Reflect_test_OuterInt_static_extension.OuterInt_static_extension) class OuterInt {
    public var y : stdgo.GoInt = 0;
    @:embedded
    public var innerInt : _internal.reflect_test.Reflect_test_InnerInt.InnerInt = ({} : _internal.reflect_test.Reflect_test_InnerInt.InnerInt);
    public function new(?y:stdgo.GoInt, ?innerInt:_internal.reflect_test.Reflect_test_InnerInt.InnerInt) {
        if (y != null) this.y = y;
        if (innerInt != null) this.innerInt = innerInt;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function m():stdgo.GoInt return this.innerInt.m();
    public function __copy__() {
        return new OuterInt(y, innerInt);
    }
}
