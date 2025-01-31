package stdgo._internal.testing.quick;
import stdgo._internal.flag.Flag;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strings.Strings;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.time.Time;
@:structInit @:using(stdgo._internal.testing.quick.Quick_TestStruct_static_extension.TestStruct_static_extension) class TestStruct {
    public var a : stdgo.GoInt = 0;
    public var b : stdgo.GoString = "";
    public function new(?a:stdgo.GoInt, ?b:stdgo.GoString) {
        if (a != null) this.a = a;
        if (b != null) this.b = b;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new TestStruct(a, b);
    }
}
