package stdgo._internal.testing.quick;
import stdgo._internal.flag.Flag;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strings.Strings;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.time.Time;
@:structInit @:using(stdgo._internal.testing.quick.Quick_A_static_extension.A_static_extension) class A {
    public var b : stdgo.Ref<stdgo._internal.testing.quick.Quick_B.B> = (null : stdgo.Ref<stdgo._internal.testing.quick.Quick_B.B>);
    public function new(?b:stdgo.Ref<stdgo._internal.testing.quick.Quick_B.B>) {
        if (b != null) this.b = b;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new A(b);
    }
}
