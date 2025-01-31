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
function testSortFloat64Slice(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _data = stdgo._internal.slices.Slices_clone.clone((stdgo._internal.slices.Slices__float64s._float64s.__slice__(0) : stdgo.Slice<stdgo.GoFloat64>));
        stdgo._internal.slices.Slices_sort.sort(_data);
        if (!stdgo._internal.slices.Slices_isSorted.isSorted(_data)) {
            @:check2r _t.errorf(("sorted %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.slices.Slices__float64s._float64s));
            @:check2r _t.errorf(("   got %v" : stdgo.GoString), stdgo.Go.toInterface(_data));
        };
    }
