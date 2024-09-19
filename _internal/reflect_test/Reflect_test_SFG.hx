package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
@:structInit class SFG {
    public var f : stdgo.GoInt = 0;
    public var g : stdgo.GoInt = 0;
    public function new(?f:stdgo.GoInt, ?g:stdgo.GoInt) {
        if (f != null) this.f = f;
        if (g != null) this.g = g;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new SFG(f, g);
    }
}
