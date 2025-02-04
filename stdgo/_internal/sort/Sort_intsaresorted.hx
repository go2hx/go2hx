package stdgo._internal.sort;
function intsAreSorted(_x:stdgo.Slice<stdgo.GoInt>):Bool {
        return stdgo._internal.sort.Sort_issorted.isSorted(stdgo.Go.asInterface((_x : stdgo._internal.sort.Sort_intslice.IntSlice)));
    }
