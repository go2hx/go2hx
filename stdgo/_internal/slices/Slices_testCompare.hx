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
function testCompare(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _intWant = (function(_want:Bool):stdgo.GoString {
            if (_want) {
                return ("0" : stdgo.GoString);
            };
            return ("!= 0" : stdgo.GoString);
        } : Bool -> stdgo.GoString);
        for (__0 => _test in stdgo._internal.slices.Slices__equalIntTests._equalIntTests) {
            {
                var _got = (stdgo._internal.slices.Slices_compare.compare(_test._s1, _test._s2) : stdgo.GoInt);
                if ((_got == (0 : stdgo.GoInt)) != (_test._want)) {
                    @:check2r _t.errorf(("Compare(%v, %v) = %d, want %s" : stdgo.GoString), stdgo.Go.toInterface(_test._s1), stdgo.Go.toInterface(_test._s2), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_intWant(_test._want)));
                };
            };
        };
        for (__1 => _test in stdgo._internal.slices.Slices__equalFloatTests._equalFloatTests) {
            {
                var _got = (stdgo._internal.slices.Slices_compare.compare(_test._s1, _test._s2) : stdgo.GoInt);
                if ((_got == (0 : stdgo.GoInt)) != (_test._wantEqualNaN)) {
                    @:check2r _t.errorf(("Compare(%v, %v) = %d, want %s" : stdgo.GoString), stdgo.Go.toInterface(_test._s1), stdgo.Go.toInterface(_test._s2), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_intWant(_test._wantEqualNaN)));
                };
            };
        };
        for (__2 => _test in stdgo._internal.slices.Slices__compareIntTests._compareIntTests) {
            {
                var _got = (stdgo._internal.slices.Slices_compare.compare(_test._s1, _test._s2) : stdgo.GoInt);
                if (_got != (_test._want)) {
                    @:check2r _t.errorf(("Compare(%v, %v) = %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_test._s1), stdgo.Go.toInterface(_test._s2), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._want));
                };
            };
        };
        for (__3 => _test in stdgo._internal.slices.Slices__compareFloatTests._compareFloatTests) {
            {
                var _got = (stdgo._internal.slices.Slices_compare.compare(_test._s1, _test._s2) : stdgo.GoInt);
                if (_got != (_test._want)) {
                    @:check2r _t.errorf(("Compare(%v, %v) = %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_test._s1), stdgo.Go.toInterface(_test._s2), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._want));
                };
            };
        };
    }
