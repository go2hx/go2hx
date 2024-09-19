package _internal.sort_test;
import stdgo._internal.sort.Sort;
import stdgo._internal.sort.Sort;
function exampleSearch_descendingOrder():Void {
        var _a = (new stdgo.Slice<stdgo.GoInt>(10, 10, ...[(55 : stdgo.GoInt), (45 : stdgo.GoInt), (36 : stdgo.GoInt), (28 : stdgo.GoInt), (21 : stdgo.GoInt), (15 : stdgo.GoInt), (10 : stdgo.GoInt), (6 : stdgo.GoInt), (3 : stdgo.GoInt), (1 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _x = (6 : stdgo.GoInt);
        var _i = (stdgo._internal.sort.Sort_search.search((_a.length), function(_i:stdgo.GoInt):Bool {
            return (_a[(_i : stdgo.GoInt)] <= _x : Bool);
        }) : stdgo.GoInt);
        if (((_i < (_a.length) : Bool) && (_a[(_i : stdgo.GoInt)] == _x) : Bool)) {
            stdgo._internal.fmt.Fmt_printf.printf(("found %d at index %d in %v\n" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_a));
        } else {
            stdgo._internal.fmt.Fmt_printf.printf(("%d not found in %v\n" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_a));
        };
    }
