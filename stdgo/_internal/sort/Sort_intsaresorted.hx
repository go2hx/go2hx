package stdgo._internal.sort;
function intsAreSorted(_x:stdgo.Slice<stdgo.GoInt>):Bool {
        //"file:///home/runner/.go/go1.21.3/src/sort/sort.go#L181"
        return stdgo._internal.sort.Sort_issorted.isSorted(stdgo.Go.asInterface((_x : stdgo._internal.sort.Sort_intslice.IntSlice)));
    }
