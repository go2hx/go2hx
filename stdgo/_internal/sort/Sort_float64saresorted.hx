package stdgo._internal.sort;
function float64sAreSorted(_x:stdgo.Slice<stdgo.GoFloat64>):Bool {
        return stdgo._internal.sort.Sort_issorted.isSorted(stdgo.Go.asInterface((_x : stdgo._internal.sort.Sort_float64slice.Float64Slice)));
    }
