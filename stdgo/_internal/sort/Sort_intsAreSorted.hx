package stdgo._internal.sort;
function intsAreSorted(_x:stdgo.Slice<stdgo.GoInt>):Bool {
        return stdgo._internal.sort.Sort_isSorted.isSorted(stdgo.Go.asInterface((_x : stdgo._internal.sort.Sort_IntSlice.IntSlice)));
    }
