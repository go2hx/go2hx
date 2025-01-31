package stdgo._internal.testing.quick;
import stdgo._internal.flag.Flag;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strings.Strings;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.time.Time;
@:structInit @:using(stdgo._internal.testing.quick.Quick_B_static_extension.B_static_extension) class B {
    public var a : stdgo.Ref<stdgo._internal.testing.quick.Quick_A.A> = (null : stdgo.Ref<stdgo._internal.testing.quick.Quick_A.A>);
    public function new(?a:stdgo.Ref<stdgo._internal.testing.quick.Quick_A.A>) {
        if (a != null) this.a = a;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new B(a);
    }
}
