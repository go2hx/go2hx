package stdgo._internal.sort;
function float64sAreSorted(_x:stdgo.Slice<stdgo.GoFloat64>):Bool {
        //"file:///home/runner/.go/go1.21.3/src/sort/sort.go#L187"
        return stdgo._internal.sort.Sort_issorted.isSorted(stdgo.Go.asInterface((_x : stdgo._internal.sort.Sort_float64slice.Float64Slice)));
    }
