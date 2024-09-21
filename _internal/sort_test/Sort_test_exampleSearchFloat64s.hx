package _internal.sort_test;
import stdgo._internal.sort.Sort;
import stdgo._internal.sort.Sort;
function exampleSearchFloat64s():Void {
        var _a = (new stdgo.Slice<stdgo.GoFloat64>(7, 7, ...[(1 : stdgo.GoFloat64), (2 : stdgo.GoFloat64), (3.3 : stdgo.GoFloat64), (4.6 : stdgo.GoFloat64), (6.1 : stdgo.GoFloat64), (7.2 : stdgo.GoFloat64), (8 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
        var _x = (2 : stdgo.GoFloat64);
        var _i = (stdgo._internal.sort.Sort_searchFloat64s.searchFloat64s(_a, _x) : stdgo.GoInt);
        stdgo._internal.fmt.Fmt_printf.printf(("found %g at index %d in %v\n" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_a));
        _x = (0.5 : stdgo.GoFloat64);
        _i = stdgo._internal.sort.Sort_searchFloat64s.searchFloat64s(_a, _x);
        stdgo._internal.fmt.Fmt_printf.printf(("%g not found, can be inserted at index %d in %v\n" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_a));
    }
