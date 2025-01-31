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
function testEqual(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__0 => _test in stdgo._internal.slices.Slices__equalIntTests._equalIntTests) {
            {
                var _got = (stdgo._internal.slices.Slices_equal.equal(_test._s1, _test._s2) : Bool);
                if (_got != (_test._want)) {
                    @:check2r _t.errorf(("Equal(%v, %v) = %t, want %t" : stdgo.GoString), stdgo.Go.toInterface(_test._s1), stdgo.Go.toInterface(_test._s2), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._want));
                };
            };
        };
        for (__1 => _test in stdgo._internal.slices.Slices__equalFloatTests._equalFloatTests) {
            {
                var _got = (stdgo._internal.slices.Slices_equal.equal(_test._s1, _test._s2) : Bool);
                if (_got != (_test._wantEqual)) {
                    @:check2r _t.errorf(("Equal(%v, %v) = %t, want %t" : stdgo.GoString), stdgo.Go.toInterface(_test._s1), stdgo.Go.toInterface(_test._s2), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._wantEqual));
                };
            };
        };
    }
