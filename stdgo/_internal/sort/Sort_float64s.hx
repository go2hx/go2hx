package stdgo._internal.sort;
import stdgo._internal.internal.reflectlite.Reflectlite;
import stdgo._internal.math.bits.Bits;
function float64s(_x:stdgo.Slice<stdgo.GoFloat64>):Void {
        stdgo._internal.sort.Sort_sort.sort(stdgo.Go.asInterface((_x : stdgo._internal.sort.Sort_Float64Slice.Float64Slice)));
    }
