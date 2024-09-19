package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
@:structInit class T_exampleStructTag_Lookup___localname___S_2238 {
    @:tag("`alias:\"field_0\"`")
    public var f0 : stdgo.GoString = "";
    @:tag("`alias:\"\"`")
    public var f1 : stdgo.GoString = "";
    public var f2 : stdgo.GoString = "";
    public function new(?f0:stdgo.GoString, ?f1:stdgo.GoString, ?f2:stdgo.GoString) {
        if (f0 != null) this.f0 = f0;
        if (f1 != null) this.f1 = f1;
        if (f2 != null) this.f2 = f2;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_exampleStructTag_Lookup___localname___S_2238(f0, f1, f2);
    }
}
