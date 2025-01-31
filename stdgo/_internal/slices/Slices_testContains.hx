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
function testContains(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__0 => _test in stdgo._internal.slices.Slices__indexTests._indexTests) {
            {
                var _got = (stdgo._internal.slices.Slices_contains.contains(_test._s, _test._v) : Bool);
                if (_got != ((_test._want != (-1 : stdgo.GoInt)))) {
                    @:check2r _t.errorf(("Contains(%v, %v) = %t, want %t" : stdgo.GoString), stdgo.Go.toInterface(_test._s), stdgo.Go.toInterface(_test._v), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._want != ((-1 : stdgo.GoInt))));
                };
            };
        };
    }
