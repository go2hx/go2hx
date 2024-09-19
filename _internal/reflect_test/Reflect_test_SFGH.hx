package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
@:structInit class SFGH {
    public var f : stdgo.GoInt = 0;
    public var g : stdgo.GoInt = 0;
    public var h : stdgo.GoInt = 0;
    public function new(?f:stdgo.GoInt, ?g:stdgo.GoInt, ?h:stdgo.GoInt) {
        if (f != null) this.f = f;
        if (g != null) this.g = g;
        if (h != null) this.h = h;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new SFGH(f, g, h);
    }
}
