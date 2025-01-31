package stdgo._internal.testing.quick;
import stdgo._internal.flag.Flag;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strings.Strings;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.time.Time;
@:structInit @:using(stdgo._internal.testing.quick.Quick_T_testNonZeroSliceAndMap___localname___Q_8763_static_extension.T_testNonZeroSliceAndMap___localname___Q_8763_static_extension) class T_testNonZeroSliceAndMap___localname___Q_8763 {
    public var m : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt> = (null : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>);
    public var s : stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
    public function new(?m:stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>, ?s:stdgo.Slice<stdgo.GoInt>) {
        if (m != null) this.m = m;
        if (s != null) this.s = s;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testNonZeroSliceAndMap___localname___Q_8763(m, s);
    }
}
