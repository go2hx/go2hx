package _internal.slices_test;
function exampleBinarySearch():Void {
        var _names = (new stdgo.Slice<stdgo.GoString>(3, 3, ...[("Alice" : stdgo.GoString), ("Bob" : stdgo.GoString), ("Vera" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        var __tmp__ = stdgo._internal.slices.Slices_binarySearch.binarySearch(_names, ("Vera" : stdgo.GoString)), _n:stdgo.GoInt = __tmp__._0, _found:Bool = __tmp__._1;
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(("Vera:" : stdgo.GoString)), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_found));
        {
            var __tmp__ = stdgo._internal.slices.Slices_binarySearch.binarySearch(_names, ("Bill" : stdgo.GoString));
            _n = __tmp__._0;
            _found = __tmp__._1;
        };
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(("Bill:" : stdgo.GoString)), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_found));
    }
