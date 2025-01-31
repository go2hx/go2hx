package stdgo._internal.slices;
import stdgo._internal.math.Math;
import stdgo._internal.cmp.Cmp;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.strings.Strings;
import stdgo._internal.internal.testenv.Testenv;
import stdgo._internal.testing.Testing;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.sort.Sort;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
@:structInit @:using(stdgo._internal.slices.Slices_S_static_extension.S_static_extension) class S {
    public var _a : stdgo.GoInt = 0;
    public var _b : stdgo.GoString = "";
    public function new(?_a:stdgo.GoInt, ?_b:stdgo.GoString) {
        if (_a != null) this._a = _a;
        if (_b != null) this._b = _b;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new S(_a, _b);
    }
}
