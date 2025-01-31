package stdgo._internal.sort;
import stdgo._internal.internal.reflectlite.Reflectlite;
import stdgo._internal.math.bits.Bits;
function float64sAreSorted(_x:stdgo.Slice<stdgo.GoFloat64>):Bool {
        return stdgo._internal.sort.Sort_isSorted.isSorted(stdgo.Go.asInterface((_x : stdgo._internal.sort.Sort_Float64Slice.Float64Slice)));
    }
