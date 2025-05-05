package stdgo._internal.sort;
function stringsAreSorted(_x:stdgo.Slice<stdgo.GoString>):Bool {
        //"file:///home/runner/.go/go1.21.3/src/sort/sort.go#L192"
        return stdgo._internal.sort.Sort_issorted.isSorted(stdgo.Go.asInterface((_x : stdgo._internal.sort.Sort_stringslice.StringSlice)));
    }
