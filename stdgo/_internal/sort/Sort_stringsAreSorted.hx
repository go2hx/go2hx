package stdgo._internal.sort;
function stringsAreSorted(_x:stdgo.Slice<stdgo.GoString>):Bool {
        return stdgo._internal.sort.Sort_isSorted.isSorted(stdgo.Go.asInterface((_x : stdgo._internal.sort.Sort_StringSlice.StringSlice)));
    }
