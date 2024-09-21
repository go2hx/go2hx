package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
@:structInit class T_testStructArg___localname___padded_90290 {
    public var b : stdgo.GoString = "";
    public var c : stdgo.GoInt32 = 0;
    public function new(?b:stdgo.GoString, ?c:stdgo.GoInt32) {
        if (b != null) this.b = b;
        if (c != null) this.c = c;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testStructArg___localname___padded_90290(b, c);
    }
}
