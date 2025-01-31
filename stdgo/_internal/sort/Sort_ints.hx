package stdgo._internal.sort;
import stdgo._internal.internal.reflectlite.Reflectlite;
import stdgo._internal.math.bits.Bits;
function ints(_x:stdgo.Slice<stdgo.GoInt>):Void {
        stdgo._internal.sort.Sort_sort.sort(stdgo.Go.asInterface((_x : stdgo._internal.sort.Sort_IntSlice.IntSlice)));
    }
