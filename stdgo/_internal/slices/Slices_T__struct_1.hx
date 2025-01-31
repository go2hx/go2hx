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
@:local @:using(stdgo._internal.slices.Slices_T__struct_1_static_extension.T__struct_1_static_extension) @:using(stdgo._internal.slices.Slices_T__struct_1_static_extension.T__struct_1_static_extension) typedef T__struct_1 = {
    public var _s1 : stdgo.Slice<stdgo.GoFloat64>;
    public var _s2 : stdgo.Slice<stdgo.GoFloat64>;
    public var _wantEqual : Bool;
    public var _wantEqualNaN : Bool;
};
