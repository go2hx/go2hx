package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
@:structInit class T_exampleStructTag___localname___S_1989 {
    @:tag("`species:\"gopher\" color:\"blue\"`")
    public var f : stdgo.GoString = "";
    public function new(?f:stdgo.GoString) {
        if (f != null) this.f = f;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_exampleStructTag___localname___S_1989(f);
    }
}
