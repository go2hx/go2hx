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
function testDelete(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__0 => _test in stdgo._internal.slices.Slices__deleteTests._deleteTests) {
            var _copy = stdgo._internal.slices.Slices_clone.clone(_test._s);
            {
                var _got = stdgo._internal.slices.Slices_delete.delete(_copy, _test._i, _test._j);
                if (!stdgo._internal.slices.Slices_equal.equal(_got, _test._want)) {
                    @:check2r _t.errorf(("Delete(%v, %d, %d) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_test._s), stdgo.Go.toInterface(_test._i), stdgo.Go.toInterface(_test._j), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._want));
                };
            };
        };
    }
