package _internal.sort_test;
import stdgo._internal.sort.Sort;
import stdgo._internal.sort.Sort;
function exampleSearchInts():Void {
        var _a = (new stdgo.Slice<stdgo.GoInt>(7, 7, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt), (4 : stdgo.GoInt), (6 : stdgo.GoInt), (7 : stdgo.GoInt), (8 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _x = (2 : stdgo.GoInt);
        var _i = (stdgo._internal.sort.Sort_searchInts.searchInts(_a, _x) : stdgo.GoInt);
        stdgo._internal.fmt.Fmt_printf.printf(("found %d at index %d in %v\n" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_a));
        _x = (5 : stdgo.GoInt);
        _i = stdgo._internal.sort.Sort_searchInts.searchInts(_a, _x);
        stdgo._internal.fmt.Fmt_printf.printf(("%d not found, can be inserted at index %d in %v\n" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_a));
    }
