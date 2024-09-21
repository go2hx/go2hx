package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
@:structInit class B1 {
    public var x : stdgo.GoInt = 0;
    public var y : stdgo.GoInt = 0;
    public var z : stdgo.GoInt = 0;
    public function new(?x:stdgo.GoInt, ?y:stdgo.GoInt, ?z:stdgo.GoInt) {
        if (x != null) this.x = x;
        if (y != null) this.y = y;
        if (z != null) this.z = z;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new B1(x, y, z);
    }
}
